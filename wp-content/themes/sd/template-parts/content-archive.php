<?php
/**
 * Template part for displaying page content in page.php
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package Swasthya_Dainik
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<div class="post-thumb">
		<?php swasthya_dainik_post_thumbnail(); ?>
	</div>
	<div class="news-content-wrapper">
		<header class="entry-header">
			<?php the_title( '<h1 class="entry-title">', '</h1>' ); ?>
		</header><!-- .entry-header -->

		<div class="entry-content">
			<?php
			$content = esn_words_count( get_the_excerpt() ,30);
			echo $content;
			wp_link_pages( array(
				'before' => '<div class="page-links">' . esc_html__( 'Pages:', 'swasthya-dainik' ),
				'after'  => '</div>',
			) );
			?>
		</div><!-- .entry-content -->
		<div class="view-news">
			<a href="<?php the_permalink(); ?>">पुरा पढ्नुहोस्</a>
		</div>
	</div><!-- .news-content-wrapper -->
</article><!-- #post-<?php the_ID(); ?> -->
