<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\ProductCategory;
use App\Models\ProductTag;
use App\Models\Article;
use App\Models\Comment;
use App\Models\Category;
use App\Models\Gallery;
use App\Models\GalleryCategory;
use App\Models\GalleryTag;
use App\Models\Page;
use App\Models\Tag;
use Carbon\Carbon;
use App;
use URL;
use Cache;
use TCG\Voyager\Facades\Voyager;


class HomeController extends Controller
{
    public function index()
    {
        $page = page_cache(1);
        $articles = Article::with('tags')->where('published_at','<',Carbon::now())->orderBy('published_at','desc')->paginate(12);
        return view('index',compact('articles','page'));
    }

    public function article_category($category_slug)
    {
        $category = Category::whereSlug($category_slug)->firstOrFail();
        $articles = Article::with('tags')->where('published_at','<',Carbon::now())->where('category_id',$category->id)->orderBy('published_at','desc')->paginate(12);

        return view('category',compact('category','articles'));
    }

    public function tag($tag_slug)
    {
        $tag = Tag::whereSlug($tag_slug)->firstOrFail();
        $articles = $tag->articles()->where('published_at','<',Carbon::now())->with('tags')->orderBy('published_at','desc')->paginate(12);

        return view('tag',compact('tag','articles'));
    }

    public function article($category_slug,$article_slug)
    {
        $article = Article::with('tags')->whereSlug($article_slug)->firstOrFail();
        $comments = $article->comments()->orderBy('created_at','desc')->get();
        $related_articles = Article::where('published_at','<',Carbon::now())
            ->where('category_id',$article->category_id)
            ->where('id', '<>', $article->id)
            ->orderBy('published_at','desc')
            ->take(5)->get();

        return view('article',compact('article','comments','related_articles'));
    }

    public function submit_comment(Request $request)
    {
//        $this->validate($request, [
//            'body' => 'max:255',
//        ]);
        $comment = new Comment;

        $comment->name = $request->name;
        $comment->body = $request->body;
        $comment->email = $request->email;
        $comment->url = $request->url;
        $comment->article_id = $request->article_id;
        $comment->client_id = $request->client_id;
        $comment->parent_id = $request->parent_id;
        $comment->ip = $request->getClientIp();

        $comment->save();
        return redirect(url()->previous().'#div-comment-'.$request->parent_id);
    }

    public function delete_comment($comment_id)
    {
        Comment::destroy($comment_id);

        return redirect(url()->previous());
    }

    public function cache_clear()
    {
        if (Voyager::can('browse_admin')){
            Cache::flush();
        }

        return redirect(url()->previous());
    }

    public function sitemap()
    {
        $sitemap = App::make('sitemap');
        $sitemap->setCache('laravel.sitemap', 1440);

        if (!$sitemap->isCached()) {
            // add item to the sitemap (url, date, priority, freq)
            $sitemap->add(URL::to('/'), page_cache(1), '1.0', 'daily');
            $sitemap->add(URL::to('company'), page_cache(4)->updated_at, '0.9', 'monthly');
            $sitemap->add(URL::to('contact-service'), page_cache(3)->updated_at, '0.9', 'monthly');
            $sitemap->add(URL::to('news'), page_cache(6)->updated_at, '0.9', 'daily');

            $articles = Article::where('published_at', '<', Carbon::now())->orderBy('published_at', 'desc')->select('name', 'slug', 'published_at', 'updated_at')->get();
            foreach ($articles as $article) {
                $sitemap->add(URL::to('news/detail/' . $article->slug), $article->updated_at, '0.7', 'monthly');
            }

            $products = Product::all();
            $product_categories = ProductCategory::all();
            foreach ($products as $product) {
                $product_category = $product_categories->where('id', $product->product_category_id)->first();
                $product_category_parent = $product_categories->where('id', $product_category->parent_id)->first();
                $sitemap->add(URL::to('products/' . $product_category_parent->slug . '/' . $product_category->slug . '/' . $product->slug), $product->updated_at, '0.9', 'weekly');
            }

            $galleries = Gallery::all();
            $gallery_categories = GalleryCategory::all();
            foreach ($galleries as $gallery) {
                $gallery_category = $gallery_categories->where('id', $gallery->gallery_category_id)->first();
                $sitemap->add(URL::to('applications/' . $gallery_category->slug . '/' . $gallery->slug), $gallery->updated_at, '0.6', 'weekly');
            }
        }
    }

    public function search(Request $request)
    {
        $keyword = $request->input('keyword');
        $articles = Article::search($keyword,null,true)->with('tags')->paginate(12);

        return view('search',compact('keyword','articles'));
    }

}
