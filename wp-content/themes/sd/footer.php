<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Swasthya_Dainik
 */

?>

	</div><!-- #content -->
	</div><!-- .body-wrapper -->
	<footer id="colophon" class="site-footer">
		<div class="body-wrapper">
			<div class="footer-info-wrapper">
				<?php dynamic_sidebar('sidebar-3'); ?>
			</div>
		</div>
		<div class="site-info">
			<div class="body-wrapper">
				<p> Copyright 2019 &copy; Swasthya Dainik</p>
				<a href="<?php echo esc_url( __( 'https://wordpress.org/', 'swasthya-dainik' ) ); ?>">
					<?php
					/* translators: %s: CMS name, i.e. WordPress. */
					printf( esc_html__( 'Maintained by %s', 'swasthya-dainik' ), 'Eservices Nepal' );
					?>
				</a>
			</div>
		</div><!-- .site-info -->
	</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
