<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Eservices_Nepal_News_Portal
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

<body <?php body_class(); ?>>
<div id="page" class="site">
	<a class="skip-link screen-reader-text" href="#content"><?php esc_html_e( 'Skip to content', 'eservices-nepal-news-portal' ); ?></a>

	<header id="masthead" class="site-header">
		<div class="body-wrapper site-branding">
			<div class="logo-ad-wrapper">
				<div class="site-logo">
					<?php the_custom_logo(); ?>
				</div>
				<div class="header-right-ad">
					<a href="#" target="_blank">
						<img src="https://swasthyasamachar.com/wp-content/uploads/2019/06/nepallife1.gif">
					</a>
				</div>
				<?php
				/*
				if ( is_front_page() ) :
					?>
					<h1 class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></h1>
					<?php
				else :
					?>
					<p class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></p>
					<?php
				endif;
				$swasthya_dainik_description = get_bloginfo( 'description', 'display' );
				if ( $swasthya_dainik_description || is_customize_preview() ) :
					?>
					<p class="site-description"><?php echo $swasthya_dainik_description;  ?></p>
					?>
				<?php endif; */?>
			</div><!-- logo-ad-wrapper -->
		</div> <!-- .site-branding -->

		<nav id="site-navigation" class="main-navigation">
			<a id="nav-toggle"><i class="fas fa-bars"></i></a>
			<a id="nav-toggle-close"><i class="fas fa-times"></i></a>
			<?php
			wp_nav_menu( array(
				'theme_location' => 'menu-1',
				'menu_id'        => 'primary-menu',
				'menu_class'	=> 'body-wrapper'
			) );
			?>
		</nav><!-- #site-navigation -->
		<div class="trending-wrapper">
			<ul class="body-wrapper">
				<li class="trend-text">TRENDING :</li>
			<?php				
				$popularpost = new WP_Query( array( 
				'posts_per_page' => 10,
				'meta_key' => 'esn_post_views_count',
				'orderby' => 'meta_value_num',
				'order' => 'DESC' 
				) );
				while ( $popularpost->have_posts() ) : $popularpost->the_post();
					the_tags('<li class="trending-tags">#','','</li>');
				endwhile;
			?>
			</ul>
		</div>
	</header><!-- #masthead -->
	<div id="content" class="site-content body-wrapper">