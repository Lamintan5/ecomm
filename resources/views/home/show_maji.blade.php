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
      <style type="text/css">
        .cartbtn{
        border-radius: 30px;
        background-color: green;
        border:none;
    }

    .kiki{
        font-size: 20px;
       
    }

        
      </style>
   </head>
   <body>
      <div class="hero_area">
      @include('home.header')

      <div class="alert alert-success">
        {{ session('success') }}
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>                     
    </div>



      <section class="product_section layout_padding">
    <div class="container">
        <div class="heading_container heading_center">
            <h2 >Our <span style= "color: green">products</span></h2>
        </div>
        <div class="row">

            @foreach ($products as $products) 
                <div class="col-sm-6 col-md-4 col-lg-4">
                    <div class="box">
                        <div class="option_container">
                            <div class="options">
                                <a href="  {{ url('/ProductDetails/'.$products->id) }} " class="btn btn-danger">Product Details</a>

                              <form action="{{ url('/addCart', $products->id ) }}" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-md-3 mt-4">
                                        <input type="number" class="form-control border-0 font-weight-bold kiki" name="quantity" value="1" min="1">
                                    </div>
                                    <div class="col-md-6 mt-3">
                                        <button type="submit" class="btn btn-danger btn-lg cartbtn">Add to Cart</button>
                                    </div>
                                </div>
                            </form>
                               
                            </div>
                        </div>
                        <div class="img-box">
                            <img src="productimage/{{ $products->image }}" alt="">
                        </div>
                        <div class="detail-box">
                            <h5>{{ $products->title }}</h5>
                            <h6>${{ $products->price }}</h6>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</section>












      </div>



    

                
      
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