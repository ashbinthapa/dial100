<?php
/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function eservices_nepal_news_portal_sidebars_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Home Page Content Area', 'eservices-nepal-news-portal' ),
		'id'            => 'sidebar-2',
		'description'   => esc_html__( 'Add widgets to display in homepage here.', 'eservices-nepal-news-portal' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
	register_sidebar( array(
		'name'          => esc_html__( 'Footer Area', 'eservices-nepal-news-portal' ),
		'id'            => 'sidebar-3',
		'description'   => esc_html__( 'Add Footer widgets here.', 'eservices-nepal-news-portal' ),
		'before_widget' => '<section id="%1$s" class="fiiter-widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="footer-widget-title">',
		'after_title'   => '</h2>',
	) );
	register_sidebar( array(
		'name'          => esc_html__( 'Ad Above News Thumbnail', 'eservices-nepal-news-portal' ),
		'id'            => 'sidebar-4',
		'description'   => esc_html__( 'Add Ad Images to appear above news thumbnails.', 'eservices-nepal-news-portal' ),
		'before_widget' => '<section id="%1$s" class="post-page-ad-widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="footer-widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'eservices_nepal_news_portal_sidebars_init' );


