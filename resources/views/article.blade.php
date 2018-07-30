@extends('master')
@section('seo_title')
    @if(!$article->seo_title)
        {{$article->name}}
    @else
        {{$article->seo_title}}
    @endif
@endsection
@section('meta_description')
    @if(!$article->meta_description)
        {{$article->excerpt}}
    @else
        {{$article->meta_description}}
    @endif
@endsection
@section('meta_keywords',$article->meta_keywords)

@section('content')
    <div class="my-3 my-md-5">
        <div class="container">
            <div class="row row-cards">
                <div class="col-lg-9">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/">Home</a></li>
                        <li class="breadcrumb-item"><a
                                    href="/articles/{{$categories->where('id',$article->category_id)->first()->slug}}">{{title_case($categories->where('id',$article->category_id)->first()->name)}}</a>
                        </li>
                        <li class="breadcrumb-item active">{{title_case($article->name)}}</li>
                    </ol>

                    <div class="card">
                        <div class="card-body">
                            <div class="text-wrap p-lg-1">
                                <h1 class="mt-0 mb-1">{{title_case($article->name)}}</h1>
                                <small class="d-block text-muted">{{$article->published_at->format('Y-m-d')}} - 发布于 <a
                                            href="/articles/{{$categories->where('id',$article->category_id)->first()->slug}}">{{$categories->where('id',$article->category_id)->first()->name}}</a>
                                </small>
                                <hr>
                                {!! $article->body !!}
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="tags">
                                @foreach($article->tags as $tag)
                                    <a href="/tags/{{$tag->slug}}"
                                       class="tag {{$tag->color}}">{{title_case($tag->name)}}</a>
                                @endforeach
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">{{count($comments)}} 条评论</h3>
                        </div>
                        <ul class="list-group card-list-group">
                            @foreach($comments->where('parent_id',null) as $comment_1)
                                <li class="list-group-item py-5">
                                    <div class="media" id="div-comment-{{$comment_1->id}}">
                                        <div class="media-object avatar avatar-placeholder avatar-md mr-4"></div>
                                        <div class="media-body">
                                            <div class="media-heading">
                                                <small class="float-right text-muted">{{$comment_1->created_at->diffForHumans()}}</small>
                                                <h5>{{$comment_1->name}}</h5>
                                            </div>
                                            <div>
                                                {{$comment_1->body}}
                                            </div>

                                            <a class="btn btn-azure btn-sm mt-1" role="button" data-toggle="collapse"
                                               href="#comment_form_{{$comment_1->id}}" aria-expanded="false"
                                               aria-controls="comment_form_{{$comment_1->id}}">
                                                <i class="fe fe-corner-down-left mr-2"></i>回复
                                            </a>
                                            @can('delete', $comment_1)
                                                <a class="btn btn-azure btn-sm mt-1" role="button"
                                                   href="javascript:if(confirm('确实要删除吗?'))location='/delete_comment/{{$comment_1->id}}'">
                                                    <i class="fe fe-trash-2 mr-2"></i>删除
                                                </a>
                                            @endcan


                                            <div class="collapse mt-2" id="comment_form_{{$comment_1->id}}">
                                                <div class="well">
                                                    @if ($errors->any())
                                                        <div class="alert alert-danger">
                                                            <ul>
                                                                @foreach ($errors->all() as $error)
                                                                    <li>{{ $error }}</li>
                                                                @endforeach
                                                            </ul>
                                                        </div>
                                                    @endif
                                                    <form action="/submit_comment" method="post" class="card">
                                                        {{csrf_field()}}
                                                        <input type="hidden" name="url" value="{{url()->current()}}">
                                                        <input type="hidden" name="article_id" value="{{$article->id}}">
                                                        <input type="hidden" name="parent_id"
                                                               value="{{$comment_1->id}}">
                                                        <script>
                                                            document.write('<input type="hidden" name="client_id" value=\"', clientId, '">');
                                                        </script>
                                                        <div class="card-body">
                                                            <h3 class="card-title">发表评论</h3>
                                                            <div class="row">
                                                                <div class="col-sm-6 col-md-6">
                                                                    <div class="form-group">
                                                                        <input name="name" type="text" required
                                                                               class="form-control"
                                                                               placeholder="昵称（必填）">
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6 col-md-6">
                                                                    <div class="form-group">
                                                                        <input name="email" type="email" required
                                                                               class="form-control"
                                                                               placeholder="邮箱（必填）">
                                                                    </div>
                                                                </div>

                                                                <div class="col-md-12">
                                                                    <div class="form-group mb-0">
                                                                        <textarea name="body" required rows="5"
                                                                                  class="form-control"
                                                                                  placeholder="在这里输入评论内容或者进行提问..."></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card-footer text-right">
                                                            <button type="submit" class="btn btn-azure">发表评论</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>

                                            <ul class="media-list">
                                                @foreach($comments->where('parent_id',$comment_1->id) as $comment_2)
                                                    <li class="media mt-4">
                                                        <div class="media-object avatar avatar-placeholder mr-4"></div>
                                                        <div class="media-body">
                                                            <strong>{{$comment_2->name}}: </strong>
                                                            {{$comment_2->body}}
                                                        </div>
                                                        @can('delete', $comment_2)
                                                            <a class="btn btn-azure btn-sm mt-1" role="button"
                                                               href="javascript:if(confirm('确实要删除吗?'))location='/delete_comment/{{$comment_2->id}}'">
                                                                <i class="fe fe-trash-2 mr-2"></i>删除
                                                            </a>
                                                        @endcan
                                                    </li>
                                                @endforeach
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                            @endforeach
                        </ul>
                    </div>

                    <form action="/submit_comment" method="post" class="card">
                        @if ($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                        {{csrf_field()}}
                        <input type="hidden" name="url" value="{{url()->current()}}">
                        <input type="hidden" name="article_id" value="{{$article->id}}">

                        <script>
                            document.write('<input type="hidden" name="client_id" value=\"', clientId, '">');
                        </script>
                        <div class="card-body">
                            <h3 class="card-title">发表评论</h3>
                            <div class="row">
                                <div class="col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <input name="name" type="text" required class="form-control"
                                               placeholder="昵称（必填）">
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <input name="email" type="email" required class="form-control"
                                               placeholder="邮箱（必填）">
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="form-group mb-0">
                                        <textarea name="body" required rows="5" class="form-control"
                                                  placeholder="在这里输入评论内容或者进行提问..."></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer text-right">
                            <button type="submit" class="btn btn-primary">发表评论</button>
                        </div>
                    </form>

                </div>

                <div class="col-lg-3 order-lg-1 mb-4">
                    <div class="card">
                        <div class="card-status bg-azure"></div>
                        <img class="card-img-top" src="/demo/qrcode.jpg" alt="公众号二维码">
                        <div class="card-body d-flex flex-column">
                            <h4>欢迎关注公众号</h4>
                            <div class="text-muted">学习 - 交流 - 连接</div>
                        </div>
                    </div>

                    {{--<div class="row row-cards row-deck">--}}
                    {{--<div class="card">--}}
                    {{--<div class="card-status bg-azure"></div>--}}
                    {{--<div class="card-header">--}}
                    {{--<h3 class="card-title">内容导航</h3>--}}
                    {{--</div>--}}

                    {{--<div class="card-body">--}}
                    {{--<form class="input-icon my-3 my-lg-0">--}}
                    {{--<div class="input-group">--}}
                    {{--<input type="search" class="form-control header-search" placeholder="Search&hellip;"--}}
                    {{--tabindex="1">--}}
                    {{--<span class="input-group-append">--}}
                    {{--<button class="btn btn-azure" type="button"><i class="fe fe-search"></i></button>--}}
                    {{--</span>--}}
                    {{--</div>--}}
                    {{--</form>--}}

                    {{--<ul class="list-unstyled leading-loose mt-1">--}}
                    {{--<li>内容目录</li>--}}
                    {{--<li><i class="fe fe-chevron-right text-azure mr-2" aria-hidden="true"></i> <a href="">Sharing Tools</a></li>--}}
                    {{--<li><i class="fe fe-chevron-right text-azure mr-2" aria-hidden="true"></i> <a href="">Sharing Tools</a></li>--}}
                    {{--<li><i class="fe fe-chevron-right text-azure mr-2" aria-hidden="true"></i> <a href="">Sharing Tools</a></li>--}}
                    {{--<li><i class="fe fe-chevron-right text-azure mr-2" aria-hidden="true"></i> <a href="">Sharing Tools</a></li>--}}
                    {{--</ul>--}}
                    {{--</div>--}}
                    {{--</div>--}}
                    {{--</div>--}}

                    <div class="card">
                        <div class="card-status bg-azure"></div>
                        <div class="card-header">
                            <h3 class="card-title">相关文章</h3>
                        </div>
                        <div class="card-list-group">
                            @foreach($related_articles as $related_article)
                                <a href="/articles/{{$categories->where('id',$related_article->category_id)->first()->slug}}/{{$related_article->slug}}"
                                   class="list-group-item"><i class="fe fe-file-text mr-2"></i>{{title_case($related_article->name)}}</a>
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
                                    <a href="/tags/{{$tag->slug}}"
                                       class="tag {{$tag->color}}">{{title_case($tag->name)}}</a>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
@endsection