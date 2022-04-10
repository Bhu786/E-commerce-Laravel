<?php $__env->startSection('content'); ?>
<div class="custom-product">
<div id="myCarousel" class="carousel slide" data-ride="carousel" >
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $items): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <div class="item <?php echo e($items['id']==1?'active':''); ?>">
      <a href="detail/<?php echo e($items['id']); ?>">
        <img src="<?php echo e($items['gallery']); ?>" class="slider-img">
        <div class="carousel-caption slider-text">
        <h3 style="text-align: center;"><?php echo e($items['name']); ?></h3>
        <p style="text-align: center;"><?php echo e($items['description']); ?></p>
        </div>
      </a>
    </div>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" style="opacity: 0.3 ;" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" style="opacity: 0.3 ;" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<div class="trending-wrapper">
  <h3 style="font-family: 'Times New Roman', Times, serif;">Trending Products</h3>  
  <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $items): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
  <div class="trending-item">
    <a href="detail/<?php echo e($items['id']); ?>">
    <img src="<?php echo e($items['gallery']); ?>" class="trending-image">
    <div class="">
    <h4 style="color: black; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-weight: normal;"><?php echo e($items['name']); ?></h4>
    <!-- <h4 style="color: palevioletred; font-weight: bold;">Rs.</h4> -->
    <h4 style="color: palevioletred; font-weight: bold;">Rs. <?php echo e($items['price']); ?></h4>
    
    </div>
    <br> <br> <br> <br>
</a>
  </div>
 
  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

  
</div>

</div>
</div>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\rohit\Downloads\Online-Sweets-Store-main\Online-Sweets-Store-main\resources\views/product.blade.php ENDPATH**/ ?>