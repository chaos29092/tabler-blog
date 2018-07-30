@extends('master')


@section('content')
    <div class="my-3 my-md-5">
        <div class="container">
            @yield('title')

            <div class="row row-cards">
                <div class="col-lg-9">
                   @yield('articles')
                </div>

                <div class="col-lg-3 order-lg-1 mb-4">
                    <div class="card mt-3">
                        <div class="card-status bg-azure"></div>
                        <div class="card-header">
                            <h3 class="card-title">公告 & 福利</h3>
                        </div>
                        <div class="card-list-group">
                            <a href="#" class="list-group-item">关于XX的公告</a>
                            <a href="#" class="list-group-item">福利</a>
                        </div>
                    </div>

                    <div class="card mt-3">
                        <div class="card-status bg-azure"></div>
                        <div class="card-header">
                            <h3 class="card-title">热门文章</h3>
                        </div>
                        <div class="card-list-group">
                            @foreach($featured_articles as $featured_article)
                            <a href="/articles/{{$categories->where('id',$featured_article->category_id)->first()->slug}}/{{$featured_article->slug}}" class="list-group-item"><i class="fe fe-file-text mr-2"></i>{{title_case($featured_article->name)}}</a>
                            @endforeach
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-status bg-azure"></div>
                        <div class="card-header">
                            <h3 class="card-title">热门标签</h3>
                        </div>
                        <div class="card-body">
                            <div class="tags">
                                @foreach($tags as $tag)
                                <a href="/tags/{{$tag->slug}}" class="tag {{$tag->color}}">{{title_case($tag->name)}}</a>
                                @endforeach
                            </div>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-status bg-azure"></div>
                        <a href="#"><img class="card-img-top" src="/demo/qrcode.jpg"
                                         alt="And this isn&#39;t my nose. This is a false one."></a>
                        <div class="card-body d-flex flex-column">
                            <h4><a href="#">欢迎关注公众号</a></h4>
                            <div class="text-muted">学习 - 交流 - 连接</div>
                        </div>
                    </div>
                    {{--<div class="d-none d-lg-block mt-6">--}}
                    {{--<a href="https://github.com/tabler/tabler/edit/dev/src/_docs/index.md" class="text-muted">Edit this page</a>--}}
                    {{--</div>--}}
                </div>
            </div>
        </div>
    </div>
@endsection