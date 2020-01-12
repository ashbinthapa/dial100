<?php
/* Replacing the parent theme widget */

/**
 * Custom columns of category with various options
 */
if ( ! class_exists( 'esn_trending_posts_widget' ) ) {
    /**
     * Class for adding widget
     *
     * @package Acme Themes
     * @subpackage supermag_posts_col_new
     * @since 1.0.0
     */
	class esn_trending_posts_widget extends WP_Widget {
	  /**
	  * To create the example widget all four methods will be 
	  * nested inside this single instance of the WP_Widget class.
	  **/
		public function __construct() {
			$widget_options = array( 
			  'classname' => 'esn_trending_posts_widget',
			  'description' => 'This is an Trending Posts Widget',
			);
			parent::__construct( 'esn_trending_posts_widget', 'ESN: Trending Posts Widget', $widget_options );
		}
		
		/* widget function displays the widget in the front end */
		public function widget( $args, $instance ) {
		  $title = ! empty( $instance['title'] ) ? $instance['title'] : '';
		  $num_posts = ! empty( $instance['num_posts'] ) ? $instance['num_posts'] : '';
		  
			echo $args['before_widget'] . 
				$args['before_title'] .
				'<a>'. $title.'</a>'.
				$args['after_title'];?>
			
			<div class="recent-posts-wrapper">
				<?php				
				$popularpost = new WP_Query( array( 
				'posts_per_page' => $num_posts,
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
			echo $args['after_widget'];
		}
		/* form function displays the widget in the back end */
		public function form( $instance ) {
		  $title = ! empty( $instance['title'] ) ? $instance['title'] : '';
		  $num_posts = ! empty( $instance['num_posts'] ) ? $instance['num_posts'] : '';?>
			<p>
				<label for="<?php echo $this->get_field_id( 'title' ); ?>">Title:</label>
				<input type="text" id="<?php echo $this->get_field_id( 'title' ); ?>" name="<?php echo $this->get_field_name( 'title' ); ?>" value="<?php echo esc_attr( $title ); ?>" />
			</p>
			<p>
				<label for="<?php echo $this->get_field_id('num_posts'); ?>"><?php _e('Select No. of Posts to Display:', 'supermag'); ?></label>
				<input type="number" id="<?php echo $this->get_field_id( 'num_posts' ); ?>" name="<?php echo $this->get_field_name( 'num_posts' ); ?>" value="<?php echo esc_attr( $num_posts ); ?>" />
			</p>
			<?php 
		}

		public function update( $new_instance, $old_instance ) {
            $instance = $old_instance;
            $instance['title'] = ( isset( $new_instance['title'] ) ) ? sanitize_text_field( $new_instance['title'] ) : '';
            $instance['num_posts'] = ( isset( $new_instance['num_posts'] ) ) ? esc_attr( $new_instance['num_posts'] ) : '';

            return $instance;
        }
	
	  
	} // class esn_right_sidebar_widget ends here
}

if ( ! function_exists( 'esn_trending_posts_widget' ) ) :
    /**
     * Function to Register and load the widget
     *
     * @since 1.0.0
     *
     * @param null
     * @return void
     *
     */
    function esn_trending_posts_widget() {
        register_widget( 'esn_trending_posts_widget' );
    }
endif;
add_action( 'widgets_init', 'esn_trending_posts_widget' );