@extends('main') @section('content') <section class="wrapper bg-soft-primary">
    <div class="container pt-10 pb-19 pt-md-14 pb-md-20 text-center">
        <div class="row">
            <div class="col-md-10 col-xl-8 mx-auto">
                <div class="post-header">
                    <div class="post-category text-line">
                        <a href="#" class="hover" rel="category">{{ $news->categories->implode(', ') }}</a>
                    </div>
                    <!-- /.post-category -->
                    <h1 class="display-1 mb-4">{{ $news->title }}</h1>
                    <ul class="post-meta mb-5">
                        <li class="post-date">
                            <i class="uil uil-calendar-alt"></i>
                            <span>{{ $news->created_at->format('d M Y') }}</span>
                        </li>
                        <li class="post-author">
                            <a href="#">
                                <i class="uil uil-user"></i>
                                <span>Admin</span>
                            </a>
                        </li>
                    </ul>
                    <!-- /.post-meta -->
                </div>
                <!-- /.post-header -->
            </div>
            <!-- /column -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
</section>
<section class="wrapper bg-light">
    <div class="container pb-14 pb-md-16">
        <div class="row">
            <div class="col-lg-10 mx-auto">
                <div class="blog single mt-n17">
                    <div class="card">
                        <figure class="card-img-top">
                            <img src="{{ $news->image_url }}" alt="" />
                        </figure>
                        <div class="card-body">
                            <div class="classic-view">
                                <article class="post">
                                    <div class="post-content mb-5">
                                        {{ $news->body }}
                                    </div>
                                    <!-- /.post-content -->
                                    <div class="post-footer d-md-flex flex-md-row justify-content-md-between align-items-center mt-8">
                                        <div>
                                            <ul class="list-unstyled tag-list mb-0">
                                                @foreach ($news->categories as $category)
                                                    <li>
                                                        <a href="#" class="btn btn-soft-ash btn-sm rounded-pill mb-0">{{ $category->name }}</a>
                                                    </li>
                                                @endforeach
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- /.post-footer -->
                                </article>
                                <!-- /.post -->
                            </div>
                            <!-- /.classic-view -->
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
                <!-- /.blog -->
            </div>
            <!-- /column -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
</section>
<!-- /section --> @endsection