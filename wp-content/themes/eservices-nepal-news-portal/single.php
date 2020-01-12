<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package Eservices_Nepal_News_Portal
 */

get_header();
?>

	<div id="primary" class="content-area">
		<main id="main" class="site-main">

		<?php
		while ( have_posts() ) :
			the_post();

			get_template_part( 'template-parts/content', get_post_type() );

			the_post_navigation();

			// If comments are open or we have at least one comment, load up the comment template.
			/*if ( comments_open() || get_comments_number() ) :
				comments_template();
			endif;*/

			/** 
			 * esn_related_posts hook
			 * @since eservices_nepal_news_portal 1.0.0
			 *
			 * @hooked esn_related_posts_below -  10
			 */
			do_action( 'esn_related_posts' ,get_the_ID() );
			
			/**
			 * esn_related_posts hook
			 * @since eservices_nepal_news_portal 1.0.0
			 *
			 * @hooked show_fb_comment_box
			 */
			do_action( 'show_fb_comment_box' );
		endwhile; // End of the loop.
		?>

		</main><!-- #main -->
	</div><!-- #primary -->

<?php
get_sidebar();
get_footer();
