@section('title', 'Dashboard1')
@extends('adminlte::page')
@section('content')
        <div class="row">
            <div class="col-sm-10"></div>
            <div class="col-sm-2">
                <a class="btn btn-success" style="width: 100%" href="{{ route('foodball.create') }}"> Create</a>
            </div>
        </div>
        <br>

        @if ($message = Session::get('success'))
            <div class="alert alert-success">
                <p>{{ $message }}</p>
            </div>
        @endif

        <table class="table table-bordered">
            <tr>
                <th>No</th>
                <th>Title</th>
                <th>About</th>
                <th width="280px">Images</th>
                <th width="280px"></th>
            </tr>
            @foreach ($foodballs as $foodball)
                <tr>
                    <td>{{ ++$i }}</td>
                    <td>{{ $foodball->address }}</td>
                    <td>{{ $foodball->description }}</td>
                    <td><img src="{{url('/images/'.$foodball->image1)}}" alt="Image" style="height: 66px;width: 147px;border-radius: 10px;"/></td>
                    <td>
                        <form action="{{ route('foodball.destroy',$foodball->id) }}" method="POST">
                            <a class="btn btn-info" href="{{ route('foodball.show',$foodball->id) }}">Show</a>
                            <a class="btn btn-success" href="{{ route('foodball.edit',$foodball->id) }}">Edit</a>
                             @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger">Delete</button>
                        </form>
                    </td>
                </tr>
            @endforeach
        </table>

        <p style="text-align: center;">{!! $foodballs->links() !!}</p>
@endsection
