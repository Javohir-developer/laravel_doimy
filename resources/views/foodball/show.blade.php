@extends('adminlte::page')

@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2> Show User</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('foodball.index') }}"> Back</a>
            </div>
        </div>
    </div>

    <div class="row">
{{--        <div class="col-xs-12 col-sm-12 col-md-12">--}}
{{--            <div class="form-group">--}}
{{--                <strong>Name:</strong>--}}
{{--                {{ $foodballs->distrocts_id }}--}}
{{--            </div>--}}
{{--        </div>--}}
{{--        <div class="col-xs-12 col-sm-12 col-md-12">--}}
{{--            <div class="form-group">--}}
{{--                <strong>Details:</strong>--}}
{{--                {{ $foodballs->address }}--}}
{{--            </div>--}}
{{--        </div>--}}
{{--        <div class="col-xs-12 col-sm-12 col-md-12">--}}
{{--            <div class="form-group">--}}
{{--                <strong>Details:</strong>--}}
{{--                <img src="{{url('/images/'.$foodballs->image1)}}" alt="Image" style="height: 50%;width: 50%;border-radius: 10px;"/>--}}
{{--            </div>--}}
{{--        </div>--}}
    </div>
@endsection
