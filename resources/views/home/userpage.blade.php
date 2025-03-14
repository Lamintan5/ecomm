<!DOCTYPE html>
<html>
   <head>
      <!-- Basic -->
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <!-- Mobile Metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
      <!-- Site Metas -->
      <meta name="keywords" content="" />
      <meta name="description" content="" />
      <meta name="author" content="" />
      <link rel="shortcut icon" href="images/favicon.png" type="">
      <title>Vendly</title>
      <!-- bootstrap core css -->
      <link rel="stylesheet" type="text/css" href="home/css/bootstrap.css" />
      <!-- font awesome style -->
      <link href="home/css/font-awesome.min.css" rel="stylesheet" />
      <!-- Custom styles for this template -->
      <link href="home/css/style.css" rel="stylesheet" />
      <!-- responsive style -->
      <link href="home/css/responsive.css" rel="stylesheet" />
   </head>
   <body>
      <div class="hero_area">
        <!-- header section strats -->
        @include('home.header')

        @if (session('success'))
    <div class="alert alert-success">
        {{ session('success') }}
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
                        
    </div>
@endif

        <!-- end header section -->
         <!-- slider section -->
        @include('home.slider')
         <!-- end slider section -->
      </div>
      <!-- why section -->

      @include('home.why')
      
      <!-- end why section -->
      
      <!-- arrival section -->
      <!-- @include('home.new_arrival') -->
      <!-- end arrival section -->
      
      <!-- product section -->
      
      @include('home.product')
      <!-- end product section -->

      <!-- subscribe section -->
      
      <!-- @include('home.subscribe') -->
      <!-- end subscribe section -->
      <!-- client section -->

      <!-- @include('home.client') -->
     
      <!-- end client section -->
      <!-- footer start -->
      
      @include('home.footer')
      <!-- footer end -->
      <div class="cpy_">
         <p class="mx-auto">© 2024 All Rights Reserved By <a href="">Spencer Julias</a><br>
         
           
         
         </p>
      </div>
      <!-- jQery -->
      <script src="home/js/jquery-3.4.1.min.js"></script>
      <!-- popper js -->
      <script src="home/js/popper.min.js"></script>
      <!-- bootstrap js -->
      <script src="home/js/bootstrap.js"></script>
      <!-- custom js -->
      <script src="home/js/custom.js"></script>
   </body>
</html>