<?php
/* Replacing the parent theme widget */

/**
 * Four Thumbs Side List Widget
 */
if ( ! class_exists( 'four_thumbs_side_list_widget' ) ) {
    /**
     * Class for adding widget
     *
     * @package Acme Themes
     * @subpackage supermag_posts_col_new
     * @since 1.0.0
     */
	class four_thumbs_side_list_widget extends WP_Widget {
	  /**
	  * To create the example widget all four methods will be 
	  * nested inside this single instance of the WP_Widget class.
	  **/
		public function __construct() {
			$widget_options = array( 
			  'classname' => 'four_thumbs_side_list_widget',
			  'description' => 'This widget to display Four Thumb News and Side List News!',
			);
			parent::__construct( 'four_thumbs_side_list_widget', 'ESN: Four Thumb and Side List News', $widget_options );
		}
		
		/* widget function displays the widget in the front end */
		public function widget( $args, $instance ) {
			$title = ! empty( $instance['title'] ) ? $instance['title'] : '';
			$title1 = ! empty( $instance['title1'] ) ? $instance['title1'] : '';
			
			if($instance['supermag_cat']) {
				$supermag_selected_cat = esc_attr( $instance['supermag_cat'] );
			}
			
						
			if($instance['supermag_cat1']) {
				$supermag_selected_cat1 = esc_attr( $instance['supermag_cat1'] );
			}
		  
			if( $supermag_selected_cat != -1 ){
	            $sticky = get_option( 'sticky_posts' );
				$supermag_cat_post_args = array(
					'posts_per_page'      => 4,
					'cat'				  => $supermag_selected_cat,
					'no_found_rows'       => true,
					'post_status'         => 'publish',
					'ignore_sticky_posts' => true,
					'post__not_in' => $sticky
				);
			}						
			$news_query = new WP_Query($supermag_cat_post_args);
			
					  
			if( $supermag_selected_cat1 != -1 ){
	            $sticky = get_option( 'sticky_posts' );
				$supermag_cat_post_args = array(
					'posts_per_page'      => 7,
					'cat'				  => $supermag_selected_cat1,
					'no_found_rows'       => true,
					'post_status'         => 'publish',
					'ignore_sticky_posts' => true,
					'post__not_in' => $sticky
				);
			}						
			$news_query1 = new WP_Query($supermag_cat_post_args);
			
			echo '<div class="four-thumb-full-width-wrapper body-wrapper">';
			echo $args['before_widget'] . 
				$args['before_title'] .
				'<a class="hvr-shutter-out-horizontal" href="category/'.get_cat_name($supermag_selected_cat).'">'. $title.'</a>'.
				$args['after_title'];
				if ($news_query->have_posts()){
					echo '<div class="four-thumb-wrapper">';
								while ($news_query->have_posts()): $news_query->the_post();
									if (has_post_thumbnail()) {
										$image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'large');
									} else {
										$image_url[0] = get_template_directory_uri() . '/assets/img/no-image-660-365.png';
									}
									echo '<div class="four-thumb-news">';
										the_title('<h4 class="title"><a href="'.get_permalink().'">','</a></h4>');					
										echo '<div class="img-wrap">	
												<a href="'.get_permalink().'">
													<img src="'.$image_url[0].'"/>
												</a>			
										</div>';
									echo '</div>';//end of side-news
								endwhile;
					echo '</div>'; // end of side-middle-side-wrapper			
					wp_reset_postdata();
				} // end if
			echo $args['after_widget'];
			
			echo $args['before_widget'] . 
				$args['before_title'] .
				'<a class="hvr-shutter-out-horizontal" href="category/'.get_cat_name($supermag_selected_cat).'">'. $title.'</a>'.
				$args['after_title'];
				if ($news_query1->have_posts()){
					echo '<div class="four-thumb-list-wrapper">';
					while ($news_query1->have_posts()): $news_query1->the_post();
						if (has_post_thumbnail()) {
							$image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'small-thumb');
						} else {
							$image_url[0] = get_template_directory_uri() . '/assets/img/no-image-660-365.png';
						}
						echo '<div class="news-list">';			
							echo '<div class="img-wrap">	
									<a href="'.get_permalink().'">
										<img src="'.$image_url[0].'"/>
									</a>			
							</div>';
							the_title('<h4 class="title"><a href="'.get_permalink().'">','</a></h4>');	
						echo '</div>';//end of side-news
					endwhile;						
					echo '</div>'; // end four-thumb-list-wrapper
					wp_reset_postdata();
				}
			echo $args['after_widget'];
			
			echo '</div>'; // end of full-width-wrapper
		}
		
		/* form function displays the widget in the back end */
		public function form( $instance ) {			
			$title = ! empty( $instance['title'] ) ? $instance['title'] : ''; //for title
			if(! empty($instance['supermag_cat'])){
				$supermag_selected_cat = esc_attr( $instance['supermag_cat'] ); //for category selection
			}			
			$title1 = ! empty( $instance['title1'] ) ? $instance['title1'] : ''; //for title
			if(! empty($instance['supermag_cat1'])){
				$supermag_selected_cat1 = esc_attr( $instance['supermag_cat1'] ); //for category selection
			}
			?>
			<p>
				<label for="<?php echo $this->get_field_id( 'title' ); ?>">Title:</label>
				<input type="text" id="<?php echo $this->get_field_id( 'title' ); ?>" name="<?php echo $this->get_field_name( 'title' ); ?>" value="<?php echo esc_attr( $title ); ?>" />
			</p>
			<p>
				<label for="<?php echo $this->get_field_id('supermag_cat'); ?>"><?php _e('Select Category', 'supermag'); ?></label>
				<?php
				$supermag_dropown_cat = array(
					'show_option_none'   => __('From Recent Posts','supermag'),
					'orderby'            => 'name',
					'order'              => 'asc',
					'show_count'         => 1,
					'hide_empty'         => 1,
					'echo'               => 1,
					'selected'           => $supermag_selected_cat,
					'hierarchical'       => 1,
					'name'               => $this->get_field_name('supermag_cat'),
					'id'                 => $this->get_field_name('supermag_cat'),
					'class'              => 'widefat',
					'taxonomy'           => 'category',
					'hide_if_empty'      => false,
				);
				wp_dropdown_categories($supermag_dropown_cat);
				?>
			</p> 
			<p>
				<label for="<?php echo $this->get_field_id( 'title1' ); ?>">Title:</label>
				<input type="text" id="<?php echo $this->get_field_id( 'title1' ); ?>" name="<?php echo $this->get_field_name( 'title1' ); ?>" value="<?php echo esc_attr( $title1 ); ?>" />
			</p>
			<p>
				<label for="<?php echo $this->get_field_id('supermag_cat1'); ?>"><?php _e('Select Category', 'supermag'); ?></label>
				<?php
				$supermag_dropown_cat = array(
					'show_option_none'   => __('From Recent Posts','supermag'),
					'orderby'            => 'name',
					'order'              => 'asc',
					'show_count'         => 1,
					'hide_empty'         => 1,
					'echo'               => 1,
					'selected'           => $supermag_selected_cat1,
					'hierarchical'       => 1,
					'name'               => $this->get_field_name('supermag_cat1'),
					'id'                 => $this->get_field_name('supermag_cat1'),
					'class'              => 'widefat',
					'taxonomy'           => 'category',
					'hide_if_empty'      => false,
				);
				wp_dropdown_categories($supermag_dropown_cat);
				?>
			</p>
			<?php 
		}
		
		public function update( $new_instance, $old_instance ) {
            $instance = $old_instance;
            $instance['title'] = ( isset( $new_instance['title'] ) ) ? sanitize_text_field( $new_instance['title'] ) : '';
            $instance['title1'] = ( isset( $new_instance['title1'] ) ) ? sanitize_text_field( $new_instance['title1'] ) : '';
            $instance['supermag_cat'] = ( isset( $new_instance['supermag_cat'] ) ) ? esc_attr( $new_instance['supermag_cat'] ) : '';
            $instance['supermag_cat1'] = ( isset( $new_instance['supermag_cat1'] ) ) ? esc_attr( $new_instance['supermag_cat1'] ) : '';

            return $instance;
        }
	
	  
	} // class four_thumbs_side_list_widget ends here
}

if ( ! function_exists( 'four_thumbs_side_list_widget' ) ) :
    /**
     * Function to Register and load the widget
     *
     * @since 1.0.0
     *
     * @param null
     * @return void
     *
     */
    function four_thumbs_side_list_widget() {
        register_widget( 'four_thumbs_side_list_widget' );
    }
endif;
add_action( 'widgets_init', 'four_thumbs_side_list_widget' );