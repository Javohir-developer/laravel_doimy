<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
    <head>
    <title>Demo</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Abril+Fatface&display=swap">
    <link rel="stylesheet" type="text/css" href="{{asset('stayle/css/open-iconic-bootstrap.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('stayle/css/animate.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('stayle/css/owl.carousel.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('stayle/css/owl.theme.default.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('stayle/css/magnific-popup.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('stayle/css/aos.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('stayle/css/ionicons.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('stayle/css/bootstrap-datepicker.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('stayle/css/jquery.timepicker.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('stayle/css/flaticon.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('stayle/css/icomoon.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('stayle/css/style.css')}}">
    </head>
        <body>
            @include('layouts.header')
            @yield('content')
            @include('layouts.footer')
        </body>
    <script type="text/javascript" src="{{asset('stayle/js/jquery.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('stayle/js/jquery-migrate-3.0.1.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('stayle/js/popper.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('stayle/js/bootstrap.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('stayle/js/jquery.easing.1.3.js')}}"></script>
    <script type="text/javascript" src="{{asset('stayle/js/jquery.waypoints.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('stayle/js/jquery.stellar.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('stayle/js/owl.carousel.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('stayle/js/jquery.magnific-popup.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('stayle/js/aos.js')}}"></script>
    <script type="text/javascript" src="{{asset('stayle/js/jquery.animateNumber.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('stayle/js/scrollax.min.js')}}"></script>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
    <script type="text/javascript" src="{{asset('stayle/js/google-map.js')}}"></script>
    <script type="text/javascript" src="{{asset('stayle/js/main.js')}}"></script>
</html>
