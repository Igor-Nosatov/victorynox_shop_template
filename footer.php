<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Victorynox
 */

?>

<footer class="footer pt-3 pb-5">
	<div class="container">
		<div class="row  pt-5">
			<div class="col-sm-12  col-lg-7">
				<div class="row no-gutters">
					<div class=" col-sm-6 col-lg-4">
						<h4 class="footer-title">About Us</h4>
						<?php
						wp_nav_menu( array(
							 'theme_location'    => 'footer-menu1',
							 'depth'             => 0,
							 'container'         => '',
							 'menu_class'        => 'nav flex-column  footer-nav',
						 ) );
						?>
					</div>
					<div class=" col-sm-6 col-lg-4">
						<h4 class="footer-title">Products</h4>
						<?php
						wp_nav_menu( array(
							 'theme_location'    => 'footer-menu2',
							 'depth'             => 0,
							 'container'         => '',
							 'menu_class'        => 'nav flex-column  footer-nav',
						 ) );
						?>
					</div>
					<div class=" col-sm-6 col-lg-4">
						<h4 class="footer-title">Services</h4>
						<?php
						wp_nav_menu( array(
							 'theme_location'    => 'footer-menu3',
							 'depth'             => 0,
							 'container'         => '',
							 'menu_class'        => 'nav flex-column  footer-nav',
						 ) );
						?>
					</div>
				</div>
			</div>
			<div class="col-sm-12  col-lg-5">
				<div class="d-flex flex-row">
					<div class="title-icon">
						<h4 class="footer-title text-left mb-2 mt-4">Follow us:</h4>
					</div>
					<div class="social-icons">
						<nav class="nav">
							<a class="nav-link" href="#"><i class="fab fa-facebook"></i></a>
							<a class="nav-link" href="#"><i class="fab fa-twitter"></i></a>
							<a class="nav-link" href="#"><i class="fab fa-instagram"></i></a>
							<a class="nav-link" href="#"><i class="fab fa-youtube-square"></i></a>
						</nav>
					</div>
				</div>
				<div class="d-flex flex-column">
					<div class="title-newsletter">
						<h4 class="footer-title text-left mb-2">Register for newsletter:</h4>
					</div>
					<div class="newsletter-box mt-3 mb-3">
						<?php echo do_shortcode('[newsletter_form type="minimal"]'); ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
<?php wp_footer(); ?>

</body>
</html>
