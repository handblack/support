<nav class="main-header navbar navbar-expand-md navbar-light navbar-white">
    <div class="container">

    <a href="{{ url('') }}"" class="navbar-brand">
        <img src="{{ asset('images/package.png') }}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
            style="opacity: .8">
        <span class="brand-text font-weight-light">{{ env('APP_NAME','handblack') }}</span>
    </a>
    
    <button class="navbar-toggler order-1" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse order-3" id="navbarCollapse">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
        <li class="nav-item">
            <a href="{{ url('') }}" class="nav-link"><i class="fas fa-home"></i> Home</a>
        </li>
        <!--
        <li class="nav-item">
            <a href="#" class="nav-link"><i class="far fa-question-circle"></i> Contactanos</a>
        </li>
        -->
        </ul>

 
    </div>

    <!-- Right navbar links -->
    <ul class="order-1 order-md-3 navbar-nav navbar-no-expand ml-auto">
 
        <!-- Notifications Dropdown Menu -->
        <li class="nav-item dropdown">
         
            <a href="{{ route('login') }}" class="nav-link"><i class="fas fa-sign-in-alt"></i> Login</a>
       
        
        </li>
      
    </ul>
    </div>
</nav>