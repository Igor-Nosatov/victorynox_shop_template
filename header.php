<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Victorynox
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">

	<?php wp_head(); ?>
</head>

<body>
	<header class="header">
    <section class="nav-account">
      <div class="container">
        <div class="row ">
          <div class=" col-sm-12 col-lg-12">
            <div class="d-flex flex-row justify-content-between">
              <div class="shop-offers pt-2 pb-2">
								<?php
								wp_nav_menu( array(
									'theme_location'    => 'tag-menu',
									'depth'             => 0,
									'container'         => '',
									'menu_class'        => 'nav',
								 ) );
								?>
              </div>
              <div class="account-links pt-2 pb-2">
								<?php
								wp_nav_menu( array(
									'theme_location'    => 'account-menu',
									'depth'             => 0,
									'container'         => '',
									'menu_class'        => 'nav',
								 ) );
								?>
              </div>
            </div>
          </div>
        </div>
			</div>
		</section>
		<section class="search-box">
        <div class="container">
          <div class="row no-gutters">
            <div class="col-sm-12 col-lg-12">
							<form role="search" method="get"  class="form-inline search-form d-flex justify-content-end" action="<?php echo esc_url( home_url( '/' ) ); ?>">
               <div class="form-group mx-sm-3 mb-2">
								<input type="search" id="woocommerce-product-search-field-<?php echo isset( $index ) ? absint( $index ) : 0; ?>" class="form-control" placeholder="<?php echo esc_attr__( 'Search products&hellip;', 'woocommerce' ); ?>" value="<?php echo get_search_query(); ?>" name="s" />
								<button class="main-button mt-4"  type="submit" value="<?php echo esc_attr_x( 'Search', 'submit button', 'woocommerce' ); ?>"><?php echo esc_html_x( 'Search', 'submit button', 'woocommerce' ); ?></button>
								<input type="hidden" name="post_type" value="product" />
								</div>
							</form>
            </div>
          </div>
        </div>
    </section>
    <section class="nav-header display-sm-none">
      <div class="container">
        <div class="row no-gutters">
          <div class="col-lg-12">
            <nav class="navbar navbar-expand-lg">
              <a class="nav-brand pr-5 pl-4  display-sm-none" href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php the_custom_logo(); ?></a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fas fa-bars fa-2x"></i>
              </button>
              <div class="collapse navbar-collapse" id="navbarNavDropdown">
								<?php
								wp_nav_menu( array(
									'theme_location'    => 'header-menu',
									'depth'             => 0,
									'container'         => '',
									'menu_class'        => 'navbar-nav d-flex justify-content-around',
								 ) );
								?>
            </nav>
          </div>
        </div>
      </div>
    </section>
  </header>
