<?php

if ( ! function_exists( 'victorynox_setup' ) ) :

	function victorynox_setup() {

		load_theme_textdomain( 'victorynox', get_template_directory() . '/languages' );

		add_theme_support( 'automatic-feed-links' );
		add_theme_support( 'title-tag' );
		add_theme_support( 'post-thumbnails' );

		register_nav_menus( array(
      'tag-menu' => esc_html__( 'Tag Menu', 'victorynox' ),
			'account-menu' => esc_html__( 'Account Menu', 'victorynox' ),
			'header-menu' => esc_html__( 'Header Menu', 'victorynox' ),
      'mobile-menu' => esc_html__( 'Mobile Menu', 'victorynox' ),
      'footer-menu1' => esc_html__( 'Footer Menu1', 'victorynox' ),
      'footer-menu2' => esc_html__( 'Footer Menu2', 'victorynox' ),
      'footer-menu3' => esc_html__( 'Footer Menu3', 'victorynox' ),
		) );

		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		) );

		add_theme_support( 'customize-selective-refresh-widgets' );

		add_theme_support( 'custom-logo', array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		) );
	}
endif;
add_action( 'after_setup_theme', 'victorynox_setup' );
