<?php
/* Replacing the parent theme widget */

/**
 * Custom columns of category with various options
 */
if ( ! class_exists( 'esn_recentpost_widget' ) ) {
    /**
     * Class for adding widget
     *
     * @package Acme Themes
     * @subpackage supermag_posts_col_new
     * @since 1.0.0
     */
	class esn_recentpost_widget extends WP_Widget {
	  /**
	  * To create the example widget all four methods will be 
	  * nested inside this single instance of the WP_Widget class.
	  **/
		public function __construct() {
			$widget_options = array( 
			  'classname' => 'esn_recentpost_widget',
			  'description' => 'This widget display the news from the recent post',
			);
			parent::__construct( 'esn_recentpost_widget', 'ESN:Recent News', $widget_options );
		}
		
		/* widget function displays the widget in the front end */
		public function widget( $args, $instance ) {
			$title = ! empty( $instance['title'] ) ? $instance['title'] : ''; //for title
			$num_post = ! empty( $instance['num_post'] ) ? $instance['num_post'] : ''; //for num_post
		  
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
				echo $args['before_widget'] . 
					$args['before_title'] .
					'<a class="hvr-shutter-out-horizontal" href="">'. $title.'</a>'.
					$args['after_title'];
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
				echo $args['after_widget'];
			}
		}
		/* form function displays the widget in the back end */
		public function form( $instance ) {
			$title = ! empty( $instance['title'] ) ? $instance['title'] : ''; //for title
			$num_post = ! empty( $instance['num_post'] ) ? $instance['num_post'] : ''; //for num_post
			?>
			<p>
				<label for="<?php echo $this->get_field_id( 'title' ); ?>">Title for recent post:</label>
				<input type="text" id="<?php echo $this->get_field_id( 'title' ); ?>" name="<?php echo $this->get_field_name( 'title' ); ?>" value="<?php echo esc_attr( $title ); ?>" />
			</p>	
				<p>
				<label for="<?php echo $this->get_field_id( 'num_post' ); ?>">Enter the Number of posts :</label>
				<input type="text" id="<?php echo $this->get_field_id( 'num_post' ); ?>" name="<?php echo $this->get_field_name( 'num_post' ); ?>" value="<?php echo esc_attr( $num_post); ?>" />
			</p>	
			<?php 
		}
		
		public function update( $new_instance, $old_instance ) {
            $instance = $old_instance;
          	$instance['title'] = ( isset( $new_instance['title'] ) ) ? sanitize_text_field( $new_instance['title'] ) : '';
            $instance['num_post'] = ( isset( $new_instance['num_post'] ) ) ? esc_attr( $new_instance['num_post'] ) : '';

            return $instance;
        }
	
	  
	} // class esn_recentpost_widget ends here
}

if ( ! function_exists( 'esn_recentpost_widget' ) ) :
    /**
     * Function to Register and load the widget
     *
     * @since 1.0.0
     *
     * @param null
     * @return void
     *
     */
    function esn_recentpost_widget() {
        register_widget( 'esn_recentpost_widget' );
    }
endif;
add_action( 'widgets_init', 'esn_recentpost_widget' );