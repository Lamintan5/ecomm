 <!-- header section strats -->
 <header class="header_section">
            <div class="container">
               <nav class="navbar navbar-expand-lg custom_nav-container ">
               <a class="nav-link" style = "color: green ; font-weight: 800; font-size: 20px; "  href="{{url('/')}}">Vendly </a> 
                  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class=""> </span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                     <ul class="navbar-nav">
                        <li class="nav-item active">
                           <a class="nav-link" href="{{url('/')}}">Home <span class="sr-only">(current)</span></a>
                        </li>
                      
                        <li class="nav-item">
                           <a class="nav-link" href="{{url('/show_maji')}}">Products</a>
                        </li>
                       
                        <li class="nav-item">
                           <a class="nav-link" href="{{url('/show_cart')}}">Cart</a>
                        </li>
                             <form class="form-inline">
                           <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit">
                          
                           </button>
                        </form>
                        @if (Route::has('login'))

                        @auth

                        <li class="nav-item">
                        <a class="btn btn-primary"  href="{{ route('logout') }}">Log out</a>
                        
                        </li>

                        @else

                        <li class="nav-item">
                           <a class="btn btn-primary"  href="{{ route('login') }}">Log in</a>
                        </li>
                        <li class="nav-item">
                           <a class="btn btn-success" id= "logincss" href="{{ route('register') }}"  >Register</a>
                        </li>
                       
                        

                        @endauth  

                        @endif
                    
                     </ul>
                     
                  </div>
               </nav>
            </div>
         </header>
         <!-- end header section -->