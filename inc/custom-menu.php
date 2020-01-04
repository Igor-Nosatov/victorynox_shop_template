<?php
function tag_menu_link( $atts, $item, $args ) {
		if($args->theme_location == 'tag-menu') {
			$atts['class'] = 'nav-link';
		}
    return $atts;
}
add_filter( 'nav_menu_link_attributes', 'tag_menu_link', 10, 3 );


function tag_menu_classes($classes, $item, $args) {
  if($args->theme_location == 'tag-menu') {
    $classes[] = 'nav-item';
  }
  return $classes;
}
add_filter('nav_menu_css_class', 'tag_menu_classes', 1, 3);

function account_menu_link( $atts, $item, $args ) {
		if($args->theme_location == 'account-menu') {
			$atts['class'] = 'nav-link';
		}
    return $atts;
}
add_filter( 'nav_menu_link_attributes', 'account_menu_link', 10, 3 );


function account_menu_classes($classes, $item, $args) {
  if($args->theme_location == 'account-menu') {
    $classes[] = 'nav-item';
  }
  return $classes;
}
add_filter('nav_menu_css_class', 'account_menu_classes', 1, 3);


function header_menu_link( $atts, $item, $args ) {
		if($args->theme_location == 'header-menu') {
			$atts['class'] = 'nav-link';
		}
    return $atts;
}
add_filter( 'nav_menu_link_attributes', 'header_menu_link', 10, 3 );


function header_menu_classes($classes, $item, $args) {
  if($args->theme_location == 'header-menu') {
    $classes[] = 'nav-item';
  }
  return $classes;
}
add_filter('nav_menu_css_class', 'header_menu_classes', 1, 3);









function footer_menu1_link( $atts, $item, $args ) {
		if($args->theme_location == 'footer-menu1') {
			$atts['class'] = 'nav-link';
		}
    return $atts;
}
add_filter( 'nav_menu_link_attributes', 'footer_menu1_link', 10, 3 );


function footer_menu1_classes($classes, $item, $args) {
  if($args->theme_location == 'footer-menu1') {
    $classes[] = 'nav-item';
  }
  return $classes;
}
add_filter('nav_menu_css_class', 'footer_menu1_classes', 1, 3);


function footer_menu2_link( $atts, $item, $args ) {
		if($args->theme_location == 'footer-menu2') {
			$atts['class'] = 'nav-link';
		}
    return $atts;
}
add_filter( 'nav_menu_link_attributes', 'footer_menu2_link', 10, 3 );


function footer_menu2_classes($classes, $item, $args) {
  if($args->theme_location == 'footer-menu2') {
    $classes[] = 'nav-item';
  }
  return $classes;
}
add_filter('nav_menu_css_class', 'footer_menu2_classes', 1, 3);


function footer_menu3_link( $atts, $item, $args ) {
		if($args->theme_location == 'footer-menu3') {
			$atts['class'] = 'nav-link';
		}
    return $atts;
}
add_filter( 'nav_menu_link_attributes', 'footer_menu3_link', 10, 3 );


function footer_menu3_classes($classes, $item, $args) {
  if($args->theme_location == 'footer-menu3') {
    $classes[] = 'nav-item';
  }
  return $classes;
}
add_filter('nav_menu_css_class', 'footer_menu3_classes', 1, 3);


 ?>
