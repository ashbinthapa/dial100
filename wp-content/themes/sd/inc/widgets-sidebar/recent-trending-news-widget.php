<?php
/* Replacing the parent theme widget */

/**
 * Custom columns of category with various options
 */
if ( ! class_exists( 'esn_recent_trending_post_widget' ) ) {
    /**
     * Class for adding widget
     *
     * @package Acme Themes
     * @subpackage supermag_posts_col_new
     * @since 1.0.0
     */
	class esn_recent_trending_post_widget extends WP_Widget {
	  /**
	  * To create the example widget all four methods will be 
	  * nested inside this single instance of the WP_Widget class.
	  **/
		public function __construct() {
			$widget_options = array( 
			  'classname' => 'esn_recent_trending_post_widget',
			  'description' => 'This widget display the news from the recent post',
			);
			parent::__construct( 'esn_recent_trending_post_widget', 'ESN:Recent and Trending', $widget_options );
		}
		
		/* widget function displays the widget in the front end */
		public function widget( $args, $instance ) {
			$title = ! empty( $instance['title'] ) ? $instance['title'] : ''; //for title
			$title1 = ! empty( $instance['title1'] ) ? $instance['title1'] : '';
			$num_post = ! empty( $instance['num_post'] ) ? $instance['num_post'] : ''; //for num_post
			$num_post1 = ! empty( $instance['num_post1'] ) ? $instance['num_post1'] : '';
			
			echo $args['before_widget'] . 
				$args['before_title'] .
				'<a class="blue" id="show_trending">'. $title1.'</a>'.
				'<a class="blue" id="show_recent">'. $title.'</a>'.
				$args['after_title'];?>
			<div class="trending-recent-posts-wrapper">
			<div class="trending-posts-wrapper">
				<?php				
				$popularpost = new WP_Query( array( 
				'posts_per_page' => $num_post1,
				'meta_key' => 'esn_post_views_count',
				'orderby' => 'meta_value_num',
				'order' => 'DESC' 
				) );
				
				$count_number = 1;
				echo '<div class="hover_side_recent_post">';	
				while ( $popularpost->have_posts() ) : $popularpost->the_post();?>
					<div class="recent_post_wrapper">
						<div class="number_wrapper">
							<p class="hvr-radial-out">
								<?php echo esn_get_nepali($count_number); ?>
							</p>
						</div>
						<div class="title_wrapper">
							<?php the_title('<h4 class="title"><a href="'.get_permalink().'">','</a></h4>');?>
						</div>
					</div>
				<?php
				$count_number++;
				endwhile; 
				echo '</div>'; // end of hover_side_recent_post	
				wp_reset_query(); ?>
			</div><?php
			
			$sticky = get_option( 'sticky_posts' );
			$supermag_cat_post_args = array(
				'posts_per_page'      => $num_post,
				'no_found_rows'       => true,
				'order' => 'ASC',
				'post_status'         => 'publish',
				'ignore_sticky_posts' => true,
				'post__not_in' => $sticky
			);					
			$news_query = new WP_Query($supermag_cat_post_args);
			if ($news_query->have_posts()){
					$count_number = 1;
			
			echo '<div class="recent-posts-wrapper">';
				echo '<div class="hover_side_recent_post">';					
					while ($news_query->have_posts()): $news_query->the_post();
						echo '<div class="recent_post_wrapper">';
							echo '<div class="number_wrapper">'.'<p class="hvr-radial-out">'.esn_get_nepali($count_number).'</p>';
							echo '</div>';//end of number_wrapper
							echo '<div class="title_wrapper">';							
								the_title('<h4 class="title"><a href="'.get_permalink().'">','</a></h4>');					
							echo '</div>'; // end of title_wrapper
						echo '</div>'; //end of recent_post_wrapper
							$count_number++;
					endwhile;
				echo '</div>'; // end of hover_side_recent_post			
				wp_reset_postdata();
			echo '</div>'; // end of recent-posts-wrapper	
				echo $args['after_widget'];
				echo '</div>'; // end of trending-recent-posts-wrapper					
			}
		}
		
		/* form function displays the widget in the back end */
		public function form( $instance ) {
			$title = ! empty( $instance['title'] ) ? $instance['title'] : ''; //for title
			$title1 = ! empty( $instance['title'] ) ? $instance['title1'] : ''; //for title1
			$num_post = ! empty( $instance['num_post'] ) ? $instance['num_post'] : ''; //for num_post
			$num_post1 = ! empty( $instance['num_post'] ) ? $instance['num_post1'] : ''; //for num_post2
			?>
			<p>
				<label for="<?php echo $this->get_field_id( 'title' ); ?>">Title for recent post:</label>
				<input type="text" id="<?php echo $this->get_field_id( 'title' ); ?>" name="<?php echo $this->get_field_name( 'title' ); ?>" value="<?php echo esc_attr( $title ); ?>" />
			</p>	
				<p>
				<label for="<?php echo $this->get_field_id( 'num_post' ); ?>">Enter the Number of posts :</label>
				<input type="text" id="<?php echo $this->get_field_id( 'num_post' ); ?>" name="<?php echo $this->get_field_name( 'num_post' ); ?>" value="<?php echo esc_attr( $num_post); ?>" />
			</p>	
			<p>
				<label for="<?php echo $this->get_field_id( 'title1' ); ?>">Title for Trending post:</label>
				<input type="text" id="<?php echo $this->get_field_id( 'title1' ); ?>" name="<?php echo $this->get_field_name( 'title1' ); ?>" value="<?php echo esc_attr( $title1 ); ?>" />
			</p>	
				<p>
				<label for="<?php echo $this->get_field_id( 'num_post1' ); ?>">Enter the Number of posts :</label>
				<input type="text" id="<?php echo $this->get_field_id( 'num_post1' ); ?>" name="<?php echo $this->get_field_name( 'num_post1' ); ?>" value="<?php echo esc_attr( $num_post1); ?>" />
			</p>	
			<?php 
		}
		
		public function update( $new_instance, $old_instance ) {
            $instance = $old_instance;
          	$instance['title'] = ( isset( $new_instance['title'] ) ) ? sanitize_text_field( $new_instance['title'] ) : '';
			$instance['title1'] = ( isset( $new_instance['title1'] ) ) ? sanitize_text_field( $new_instance['title1'] ) : '';
            $instance['num_post'] = ( isset( $new_instance['num_post'] ) ) ? esc_attr( $new_instance['num_post'] ) : '';
		    $instance['num_post1'] = ( isset( $new_instance['num_post1'] ) ) ? esc_attr( $new_instance['num_post1'] ) : '';
            return $instance;
        }
	
	  
	} // class esn_recent_trending_post_widget ends here
}

if ( ! function_exists( 'esn_recent_trending_post_widget' ) ) :
    /**
     * Function to Register and load the widget
     *
     * @since 1.0.0
     *
     * @param null
     * @return void
     *
     */
    function esn_recent_trending_post_widget() {
        register_widget( 'esn_recent_trending_post_widget' );
    }
endif;
add_action( 'widgets_init', 'esn_recent_trending_post_widget' );