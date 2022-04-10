<?php
use App\Http\Controllers\ProductController;
$total = 0;
if(Session::has('user'))
{
  $total = ProductController::cartItem();
}

?>
<nav class="navbar navbar-default" style="background-color: pink;">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand"  href="/" style="color: rgb(235, 45, 108); font-weight: bold; font-family: cursive;">SWEETY</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav ">
        <li class="active"><a href="#" style="color: white;" class="home">Home</a></li>
        <li class="nav-item"><a href="/myorders" style="color: white;">Orders</a></li>
      </ul>
      <form class="navbar-form navbar-left">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Search</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/cartlist"style="color: white;">Cart(<?php echo e($total); ?>)</a></li>
        <?php if(Session::has('user')): ?>
        <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#" style="color: white;"><?php echo e(Session::get('user')['name']); ?>

        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="/logout" style="color: black;">Logout</a></li>
          
        </ul>
      </li>
      <?php else: ?>
      <li><a href="/login" style="color: white;">Login</a></li>
      <li><a href="/register" style="color: white;">Register</a></li>
      <?php endif; ?>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav><?php /**PATH C:\Users\rohit\Downloads\Online-Sweets-Store-main\Online-Sweets-Store-main\resources\views/header.blade.php ENDPATH**/ ?>