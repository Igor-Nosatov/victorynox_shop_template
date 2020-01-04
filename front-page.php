<?php
/**
 * Template name:Front page
 *
 */

get_header();
?>

<section class="banner_area pt-3">
  <div class="container">
    <div class="row ">
      <div class="col-sm-12 col-lg-12 m-2" style="background: url('<?php the_field('home_banner1'); ?>');background-size: cover;background-repeat: no-repeat;height:320px;">
        <h4 class="sub-text-title1 p-3 text-right">Discover me</h4>
        <h3 class="text-title1 p-3 text-right">Gift Giving <br> Inspiration</h3>
      </div>
      <div class="col-sm-12 col-lg-8 pr-2">
        <div class="row no-gutters">
          <div class="col-sm-12 col-lg-12  m-2" style="background: url('<?php the_field('home_banner2'); ?>');background-size: cover;background-repeat: no-repeat;height:320px;">
            <h4 class="sub-text-title p-3 text-left">Discover me</h4>
            <h3 class="text-title p-3 text-left">Gift Giving <br> Inspiration</h3>
          </div>
          <div class="col-sm-12 col-lg-12 m-2" style="background: url('<?php the_field('home_banner3'); ?>');background-size:  cover;background-repeat: no-repeat;height:320px;background-position: center;">
            <h4 class="sub-text-title p-3 text-left">Discover me</h4>
            <h3 class="text-title p-3 text-left">Gift Giving <br> Inspiration</h3>
          </div>
        </div>
      </div>
      <div class="col-sm-12 col-lg-4">
        <div class="row no-gutters">
          <div class="col-sm-12 col-lg-12 m-2" style="background: url('<?php the_field('home_banner4'); ?>');background-size:  cover;background-repeat: no-repeat;height:320px;">
            <h4 class="sub-text-title p-3 text-left">Discover me</h4>
            <h3 class="text-title p-3 text-left">Gift Giving <br> Inspiration</h3>
          </div>
          <div class="col-sm-12 col-lg-12 m-2" style="background: url('<?php the_field('home_banner5'); ?>');background-size:  cover;background-repeat: no-repeat;height:320px;">
            <h4 class="sub-text-title p-3 text-left">Discover me</h4>
            <h3 class="text-title p-3 text-left">Gift Giving <br> Inspiration</h3>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<section class="gift_ideas_promotion pt-3 display-sm-none">
  <div class="container">
    <div class="row no-gutters">
      <div class="col-sm-12 col-lg-12">
        <h3 class="title-gift_ideas mt-5 mb-2">Christmas Gift Ideas</h3>
      </div>
    </div>
    <div class="row no-gutters">
      <?php echo do_shortcode('[products limit="3"]'); ?>
    </div>
  </div>
</section>
<section class="info_area pt-3">
  <div class="container">
    <div class="row no-gutters">
      <div class="col-sm-12 col-lg-12">
        <h3 class="text-center title_info_area mb-3">Welcome to Victorinox</h3>
      </div>
      <div class="col-sm-12 col-lg-12">
        <p>In 1884, the Swiss pioneer Karl Elsener founded his cutler’s business. A few years later, he paved the way for an unparalleled company history by developing the legendary «Original Swiss Army Knife».</p>
        <p>Today, Victorinox produces and sells unique, high quality products worldwide which are of practical use in differing areas of life: Swiss Army Knives,Cutlery , Watches, and Fragrances .</p>
        <p>The head office of the company is in Ibach, Schwyz, in the heart of Switzerland.</p>
        <div class="d-flex justify-content-center"><a href="" class="main-button">Read the Welcome Letter</a></div>
      </div>
    </div>
  </div>
</section>
<section class="category_area pt-3">
  <div class="container">
    <div class="row no-gutters">
      <div class="col-sm-12 col-lg-8 p-2">
        <div style="background: url('<?php the_field('home_banner6'); ?>');background-size: cover;background-repeat: no-repeat;height:320px;">
          <div class="d-flex justify-content-center banner-link"><a href="" class="main-button">Swiss Army Knives</a></div>
        </div>
      </div>
      <div class="col-sm-12 col-lg-4 p-2">
        <div style="background: url('<?php the_field('home_banner7'); ?>');background-size: cover;background-repeat: no-repeat;height:320px;">
          <div class="d-flex justify-content-center banner-link"><a href="" class="main-button">Cultery</a></div>
        </div>
      </div>
    </div>
    <div class="row no-gutters p-2">
      <div class="col-sm-12 col-lg-4 p-2">
        <div style="background: url('<?php the_field('home_banner8'); ?>');background-size: cover;background-repeat: no-repeat;height:320px;">
          <div class="d-flex justify-content-center banner-link"><a href="" class="main-button">Watches</a></div>
        </div>
      </div>
      <div class="col-sm-12 col-lg-8 p-2">
        <div style="background: url('<?php the_field('home_banner9'); ?>');background-size: cover;background-repeat: no-repeat;height:320px;">
          <div class="d-flex justify-content-center banner-link"><a href="" class="main-button">Fragrances</a></div>
        </div>
      </div>
    </div>
    <div class="row no-gutters mt-2">
      <div class="col-sm-12 col-lg-12 p-2">
        <div style="background: url('<?php the_field('home_banner10'); ?>');background-size: cover;background-repeat: no-repeat;height:320px;">
          <div class="d-flex justify-content-center banner-link"><a href="" class="main-button">Travel Gear</a></div>
        </div>
      </div>
    </div>
    <div class="row no-gutters mt-2">
      <div class="col-sm-12 col-lg-12">
        <div class="d-flex justify-content-center mt-5 mb-5"><a href="" class="main-button">View All Products</a></div>
      </div>
    </div>
  </div>
  </div>
</section>
<section class="promo_video pt-3 mb-5">
  <div class="container">
    <div class="row no-gutters">
      <div class="col-lg-12">
        <iframe width="100%" height="315" src="https://www.youtube.com/embed/fyOQMHplaDg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </div>
    </div>
  </div>
</section>

<?php
get_footer();
