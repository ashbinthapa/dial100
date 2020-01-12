<?php
/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function dial_100_news_sidebars_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Home Page Content Area', 'dial-100-news' ),
		'id'            => 'sidebar-2',
		'description'   => esc_html__( 'Add widgets here.', 'dial-100-news' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
	register_sidebar( array(
		'name'          => esc_html__( 'Footer Area', 'dial-100-news' ),
		'id'            => 'sidebar-3',
		'description'   => esc_html__( 'Add Footer widgets here.', 'dial-100-news' ),
		'before_widget' => '<section id="%1$s" class="fiiter-widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="footer-widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'dial_100_news_sidebars_init' );


