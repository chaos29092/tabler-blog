@extends('list')
@section('seo_title')
    @if(!$page->seo_title)
        {{$page->name}}
    @else
        {{$page->seo_title}}
    @endif
@endsection
@section('meta_description')
    @if(!$page->meta_description)
        {{$page->excerpt}}
    @else
        {{$page->meta_description}}
    @endif
@endsection
@section('meta_keywords',$page->meta_keywords)

@section('articles')
    @foreach($articles as $article)
        <div>
            <div class="card card-aside">
                <a href="/articles/{{$categories->where('id',$article->category_id)->first()->slug}}/{{$article->slug}}" class="card-aside-column"
                   style="background-image: url({{Voyager::image($article->image)}})"></a>
                <div class="card-body d-flex flex-column">
                    <h3><a href="/articles/{{$categories->where('id',$article->category_id)->first()->slug}}/{{$article->slug}}">{{title_case($article->name)}}</a></h3>
                    <small class="d-block text-muted mb-1">{{$article->published_at->format('Y-m-d')}} - 发布于 <a href="/articles/{{$categories->where('id',$article->category_id)->first()->slug}}">{{$categories->where('id',$article->category_id)->first()->name}}</a></small>
                    <div>{!! str_limit(strip_tags($article->body),140,'...') !!}</div>
                    <div class="tags align-items-center pt-5 mt-auto">
                        @foreach($article->tags as $tag)
                            <a href="/tags/{{$tag->slug}}" class="tag {{$tag->color}}">{{title_case($tag->name)}}</a>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    @endforeach
    {{ $articles->links() }}
@endsection