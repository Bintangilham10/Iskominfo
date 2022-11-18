@extends('main')

@section('content')
<section class="wrapper bg-light">
	<div class="container py-14 py-md-16">
		<div class="row text-center">
            <div class="col-md-10 offset-md-1 col-lg-8 offset-lg-2">
              <h3 class="display-4 mb-10 px-xl-10">Dokumen</h3>
            </div>
            <!-- /column -->
          </div>
		<!-- /.row -->
		<div class="row">
			<div class="col-xl-10 mx-auto">
                @foreach ($documents as $document)
                    <div class="job-list mb-10">
                        <a target="_blank" href="{{ $document->url }}" class="card mb-4 lift">
                            <div class="card-body p-5">
                                <span class="row align-items-center justify-content-between">
                                    <span class="col-8 mb-2 mb-md-0 d-flex align-items-center text-body">
                                         {{ $document->name}} </span>
                                    <span class="col-2 text-body d-flex align-items-center" style="text-align: right">
                                        {{ $document->created_at->translatedFormat('d F Y H:i:s') }} </span>
                                </span>
                            </div>
                            <!-- /.card-body -->
                        </a>
                        <!-- /.card -->
                    </div>
                @endforeach
			</div>
			<!-- /column -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
</section>
<!-- /section -->
@endsection