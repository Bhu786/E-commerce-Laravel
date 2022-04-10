<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SWEETY</title>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
    <?php echo e(View::make('header')); ?>

    <?php echo $__env->yieldContent('content'); ?>
    <?php echo e(View::make('footer')); ?>

    
</body>
<style>
    .custom-login{
        height: 700px;
        width: 100%;
        margin-bottom: 0;
        padding-top: 200px;
        /* background-color: blueviolet; */
        background-image: url("../img/back_ground.jpg");
        background-repeat: no-repeat;
        background-size: 100% 100%;
    }
    .slider-img{
        height: 400px !important;
    }
    .custom-product{
        height: 650px;
    }
    .slider-text{
        background: #83544358 !important;
    }
    .trending-image{
        height: 150px;
    }
    .trending-item{
        float: left;
        width: 25%;
        padding-left: 25px;
    }
    .trending-wrapper{
        margin: 30px;
    }
    .detail-img{
        height: 300px;
        
    }
    .btn-primary{
        background-color:rgb(241, 65, 168);
        color: white;
        border: none;
        
        
    }
    .btn-primary:link{
        background-color:rgb(241, 65, 168);
    }
    .btn-primary:visited{
        background-color:rgb(241, 65, 168);
    }
    .btn-primary:hover{
        background-color:rgb(241, 65, 168);
    }
    
    .btn-primary:active{
        background-color:rgb(241, 65, 168);
    }
    .cart-list-devider{
        border-bottom: 1px solid pink;
        margin-bottom: 20px;
        padding-bottom: 20px;
    }
    .order{
        background-color:rgb(241, 65, 168);
        color: pink;
        border: none;
        font-size: 18px;
        font-style: normal;
        color: white;
    }
    .order:link{
        background-color:rgb(241, 65, 168);
    }
    .order:visited{
        background-color:rgb(241, 65, 168);
    }
    .order:hover{
        background-color:rgb(241, 65, 168);
    }
    
    .order:active{
        background-color:rgb(241, 65, 168);
    }
    .table-striped{
        background-color: rgb(245, 220, 224);
    }
    /* .navbar{

    } */
    .navbar .navbar-brand{
        font-weight: bolder;
    }
  
</style>
</html><?php /**PATH C:\Users\rohit\Downloads\Online-Sweets-Store-main\Online-Sweets-Store-main\resources\views/master.blade.php ENDPATH**/ ?>