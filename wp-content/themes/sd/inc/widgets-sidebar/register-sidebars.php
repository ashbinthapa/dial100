<?php
/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function swasthya_dainik_sidebars_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Home Page Content Area', 'swasthya-dainik' ),
		'id'            => 'sidebar-2',
		'description'   => esc_html__( 'Add widgets here.', 'swasthya-dainik' ),
		'before_widget' => '<section id="%1$s" class="widget body-wrapper %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
	register_sidebar( array(
		'name'          => esc_html__( 'Footer Area', 'swasthya-dainik' ),
		'id'            => 'sidebar-3',
		'description'   => esc_html__( 'Add Footer widgets here.', 'swasthya-dainik' ),
		'before_widget' => '<section id="%1$s" class="fiiter-widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="footer-widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'swasthya_dainik_sidebars_init' );


