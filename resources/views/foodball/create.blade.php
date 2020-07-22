@section('title', 'Dashboard1')
@extends('adminlte::page')

@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('foodball.index') }}"> Back</a>
            </div>
        </div>
    </div>

    @if ($errors->any())
        <div class="alert alert-danger">
            <strong>Whoops!</strong> There were some problems with your input.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form action="{{ route('foodball.store') }}" enctype="multipart/form-data" method="POST">
        @csrf
        @method('POST')
        <div class="col-sm-12">
            <div class="row">
                <div class="col-sm-6">
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Viloyat*:</strong>
                            <select class="form-control"   id="regions_id" data-dependent="area" data-live-search="true"  name="region_id">
                                <option selected>Viloyatni tanlang</option>
                                @foreach($regions as $region)
                                    <option  value="{{$region->id}}">{{$region->name}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Tuman*:</strong>
                            <select class="form-control"  id="branches_id" data-live-search="true" data-dependent="area" name="distrocts_id">
                            </select>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Manzil*:</strong>
                            <input type="text" class="form-control" name="address" required>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Lacation:</strong>
                            <input type="text" class="form-control" name="lacation">
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Telefon1*:</strong>
                            <input type="text" class="form-control" name="phone1" required placeholder="(__) (___) (__) (__)">
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Telefon2:</strong>
                            <input type="text" class="form-control" name="phone2"  placeholder="(__) (___) (__) (__)">
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Telegram Username:</strong>
                            <input type="text" class="form-control" name="messinger_link">
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Polya eni*:</strong>
                            <input type="text" name="eni" class="form-control"  required>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">

                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Polya buyi*:</strong>
                            <input type="text" name="buyi" class="form-control" required>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Ish vati*:</strong>
                            <input type="text" name="working_hours" class="form-control" required>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <label for="exampleInputFile">Rasmi1* (jpeg , jpg , png)</label>
                            <div class="input-group">
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" id="exampleInputFile"  name="image1" required>
                                    <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <label for="exampleInputFile">Rasmi2* (jpeg , jpg , png)</label>
                            <div class="input-group">
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" id="exampleInputFile"  name="image2" required>
                                    <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Qo‘shimcha*:</strong>
                            <textarea  name="description"  rows="7" cols="55" placeholder="Qo‘shimcha" required></textarea>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                        <button style="width: 100%; margin-top: 20px" type="submit" class="btn btn-primary">saqlash</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
@endsection
<script type="text/javascript"  src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" >
    $(document).ready(function(){
        $('#regions_id').change(function() {
            if ($(this).val() != '') {
                var region_id = $(this).val();
                var url = '/onchange_test/' + region_id;
                $.ajax({
                    url: url,
                    method: "GET",
                    data: {
                        id: region_id,
                    },
                    success: function(result) {
                        var branches = JSON.parse(result);
                        var html = '<option style="display:none">Filialni tanlang</option>';
                        $.each(branches, function(key, value) {
                            html = html + '<option value="' + value["id"] + '">' + value['name'] + '</option>';
                        });
                        $('#branches_id').html(html);
                    }
                });
            }
        });
    });



</script>
