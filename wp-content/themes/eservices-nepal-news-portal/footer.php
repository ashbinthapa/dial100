<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Eservices_Nepal_News_Portal
 */

?>

	</div><!-- #content -->
	<footer id="colophon" class="site-footer">
		<div class="site-footer-content-wrapper body-wrapper">
			<?php if( is_active_sidebar( 'sidebar-3' ) ){
				dynamic_sidebar( 'sidebar-3' );
			} ?>
		</div>

		<div class="site-info">
			<div class="body-wrapper">
				<p> <strong>&copy; Copyright : </strong>Swasthyadainik.com 2019.</p>
				<p class="site-link">
					<a href="<?php echo esc_url( __( 'https://eservicesnepal.com/', 'eservices-nepal-news-portal' ) ); ?>">
						<?php
						/* translators: %s: CMS name, i.e. WordPress. */
						printf( esc_html__( 'Maintained by : %s', 'eservices-nepal-news-portal' ), '<strong>Eservices Nepal</strong>' );
						?>
					</a>
				</p>
			</div>
		</div><!-- .site-info -->
	</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
