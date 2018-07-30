@extends('list')
@section('seo_title',$keyword)
@section('meta_description',$keyword)

@section('title')
    <div class="page-header">
        <h1 class="page-title">
            Search: {{$keyword}}
        </h1>
    </div>
@endsection

@section('articles')
    <div class="card">
        <div class="card-body">
            <form action="/search" method="get" class="input-icon my-lg-0">
                <div class="input-group">
                    <input type="search" class="form-control header-search" name="keyword" placeholder="Search&hellip;"
                           tabindex="1">
                    <span class="input-group-append">
                              <button class="btn btn-azure" type="submit"><i class="fe fe-search"></i></button>
                            </span>
                </div>
            </form>
        </div>
    </div>
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
    {{ $articles->appends(['keyword' => $keyword])->links() }}
@endsection