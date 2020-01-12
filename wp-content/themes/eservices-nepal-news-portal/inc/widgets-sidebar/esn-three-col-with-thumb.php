<?php


/**
 * Custom columns of category with various options
 */
if ( ! class_exists( 'esn_new_display_three' ) ) {
    /**
     * Class for adding widget
     *
     * @package Eservices_Nepal_News_Portal
     * @since 1.0.0
     */
	class esn_new_display_three extends WP_Widget {
	  /**
	  * To create the example widget all four methods will be 
	  * nested inside this single instance of the WP_Widget class.
	  **/
		public function __construct() {
			$widget_options = array( 
			  'classname' => 'esn_new_display_three',
			  'description' => 'Three Column Widget With Two Thumb News!',
			);
			parent::__construct( 'esn_new_display_three', '7 ESN: Three Column Widget with Two Thumb News!', $widget_options );
		}
		
		/* widget function displays the widget in the front end */
		public function widget( $args, $instance ) {
			$title1 = ! empty( $instance['title1'] ) ? $instance['title1'] : '';
			$title2 = ! empty( $instance['title2'] ) ? $instance['title2'] : '';
			$title3 = ! empty( $instance['title3'] ) ? $instance['title3'] : '';
			$selected_cat1 = esc_attr( $instance['selected_cat1'] );
			$selected_cat2 = esc_attr( $instance['selected_cat2'] );
			$selected_cat3 = esc_attr( $instance['selected_cat3'] );
			echo '<div class="three-col-news-wrapper">';
				/* First Column */
				echo $args['before_widget'] . 
				$args['before_title'] .
				'<a class="hvr-shutter-out-horizontal" href="category/'.get_cat_name($selected_cat1).'">'. $title1.'</a>'.
				$args['after_title'];
				if( -1 != $selected_cat1 ){
					$sticky = get_option( 'sticky_posts' );
					$supermag_cat_post_args = array(
						'posts_per_page'      => 6,
						'cat'				  => $selected_cat1,
						'no_found_rows'       => true,
						'post_status'         => 'publish',
						'ignore_sticky_posts' => true,
						'post__not_in' => $sticky
					);			
				$news_query = new WP_Query($supermag_cat_post_args);
				}
				
				if ($news_query->have_posts()){
					$news_index = 0;
					echo '<div class="main_news_wrapper_three_col">';
					while ($news_query->have_posts()): $news_query->the_post();
						if( $news_index == 0 ):
							if (has_post_thumbnail()) {
								$image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'medium');
							} else {
								$image_url[0] = get_template_directory_uri() . '/assets/img/no-image-660-365.png';
							}
							echo '<div class="three_news_big_wrapper">';
							echo '<div class="three_news_big">';
								the_title('<h4 class="title title-big-thumb"><a href="'.get_permalink().'">','</a></h4>');
								echo '<img src="'.esc_url( $image_url[0] ).'">';
							echo '</div>';//end of three_news_big	
								if( $news_index == 2 ):
							echo '</div>'; // three_news_big_wrapper
							echo '<div class="news_list_small_wrapper">';
								endif;
						else:
							echo '<div class="news_content_small">';
								if (has_post_thumbnail()) {
									$image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'medium');
								} else {
									$image_url[0] = get_template_directory_uri() . '/assets/img/no-image-660-365.png';
								}
								echo '<img src="'.esc_url( $image_url[0] ).'">';
								the_title('<h4 class="title"><a href="'.get_permalink().'">','</a></h4>');
							echo '</div>'; // end of new_content_small
						endif;
						$news_index++;
					endwhile;
							echo '</div>'; // end of news_list_small_wrapper
					echo '</div>'; // end of main_news_wrapper_three_col			
					wp_reset_postdata();
				}
				echo $args['after_widget'];
				
				/* Second Column */
				echo $args['before_widget'] . 
				$args['before_title'] .
				'<a class="hvr-shutter-out-horizontal" href="category/'.get_cat_name($selected_cat2).'">'. $title2.'</a>'.
				$args['after_title'];
				if( -1 != $selected_cat2 ){
					$sticky = get_option( 'sticky_posts' );
					$supermag_cat_post_args = array(
						'posts_per_page'      => 6,
						'cat'				  => $selected_cat2,
						'no_found_rows'       => true,
						'post_status'         => 'publish',
						'ignore_sticky_posts' => true,
						'post__not_in' => $sticky
					);			
				$news_query = new WP_Query($supermag_cat_post_args);
				}
				
				if ($news_query->have_posts()){
					$news_index = 0;
					echo '<div class="main_news_wrapper_three_col">';
					while ($news_query->have_posts()): $news_query->the_post();
						if( $news_index == 0 ):
							if (has_post_thumbnail()) {
								$image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'medium');
							} else {
								$image_url[0] = get_template_directory_uri() . '/assets/img/no-image-660-365.png';
							}
							echo '<div class="three_news_big_wrapper">';
							echo '<div class="three_news_big">';
								the_title('<h4 class="title title-big-thumb"><a href="'.get_permalink().'">','</a></h4>');
								echo '<img src="'.esc_url( $image_url[0] ).'">';
							echo '</div>';//end of three_news_big	
								if( $news_index == 2 ):
							echo '</div>'; // three_news_big_wrapper
							echo '<div class="news_list_small_wrapper">';
								endif;
						else:
							echo '<div class="news_content_small">';
								if (has_post_thumbnail()) {
									$image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'medium');
								} else {
									$image_url[0] = get_template_directory_uri() . '/assets/img/no-image-660-365.png';
								}
								echo '<img src="'.esc_url( $image_url[0] ).'">';
								the_title('<h4 class="title"><a href="'.get_permalink().'">','</a></h4>');
							echo '</div>'; // end of new_content_small
						endif;
						$news_index++;
					endwhile;
							echo '</div>'; // end of news_list_small_wrapper
					echo '</div>'; // end of main_news_wrapper_three_col			
					wp_reset_postdata();
				}
				echo $args['after_widget'];
				
				/* Third Column */
				echo $args['before_widget'] . 
				$args['before_title'] .
				'<a class="hvr-shutter-out-horizontal" href="category/'.get_cat_name($selected_cat2).'">'. $title2.'</a>'.
				$args['after_title'];
				if( -1 != $selected_cat3 ){
					$sticky = get_option( 'sticky_posts' );
					$supermag_cat_post_args = array(
						'posts_per_page'      => 6,
						'cat'				  => $selected_cat3,
						'no_found_rows'       => true,
						'post_status'         => 'publish',
						'ignore_sticky_posts' => true,
						'post__not_in' => $sticky
					);			
				$news_query = new WP_Query($supermag_cat_post_args);
				}
				
				if ($news_query->have_posts()){
					$news_index = 0;
					echo '<div class="main_news_wrapper_three_col">';
					while ($news_query->have_posts()): $news_query->the_post();
						if( $news_index == 0 ):
							if (has_post_thumbnail()) {
								$image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'medium');
							} else {
								$image_url[0] = get_template_directory_uri() . '/assets/img/no-image-660-365.png';
							}
							echo '<div class="three_news_big_wrapper">';
							echo '<div class="three_news_big">';
								the_title('<h4 class="title title-big-thumb"><a href="'.get_permalink().'">','</a></h4>');
								echo '<img src="'.esc_url( $image_url[0] ).'">';
							echo '</div>';//end of three_news_big	
								if( $news_index == 2 ):
							echo '</div>'; // three_news_big_wrapper
							echo '<div class="news_list_small_wrapper">';
								endif;
						else:
							echo '<div class="news_content_small">';
								if (has_post_thumbnail()) {
									$image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'medium');
								} else {
									$image_url[0] = get_template_directory_uri() . '/assets/img/no-image-660-365.png';
								}
								echo '<img src="'.esc_url( $image_url[0] ).'">';
								the_title('<h4 class="title"><a href="'.get_permalink().'">','</a></h4>');
							echo '</div>'; // end of new_content_small
						endif;
						$news_index++;
					endwhile;
							echo '</div>'; // end of news_list_small_wrapper
					echo '</div>'; // end of main_news_wrapper_three_col			
					wp_reset_postdata();
				}
				echo $args['after_widget'];
			echo '</div>';// end three-col-news-wrapper	
		}
		
		/* form function displays the widget in the back end */
		public function form( $instance ) {
			$title1 = ! empty( $instance['title1'] ) ? $instance['title1'] : '';
			$title2 = ! empty( $instance['title2'] ) ? $instance['title2'] : '';
			$title3 = ! empty( $instance['title3'] ) ? $instance['title3'] : '';
			$selected_cat1 = esc_attr( $instance['selected_cat1'] );
			$selected_cat2 = esc_attr( $instance['selected_cat2'] );
			$selected_cat3 = esc_attr( $instance['selected_cat3'] );
			?>
			<!-- First Input Field-->
			<p>
				<label for="<?php echo $this->get_field_id( 'title1' ); ?>">Column 1 Title:</label>
				<input type="text" id="<?php echo $this->get_field_id( 'title1' ); ?>" name="<?php echo $this->get_field_name( 'title1' ); ?>" value="<?php echo esc_attr( $title1 ); ?>" />
			</p>
			<p>
				<label for="<?php echo $this->get_field_id('selected_cat1'); ?>"><?php _e('Select Column 1 Category', 'eservices-nepal-news-portal'); ?></label>
				<?php
				$esn_dropown_cat = array(
					'show_option_none'   => __('From Recent Posts','eservices-nepal-news-portal'),
					'orderby'            => 'name',
					'order'              => 'asc',
					'show_count'         => 1,
					'hide_empty'         => 1,
					'echo'               => 1,
					'selected'           => $selected_cat1,
					'hierarchical'       => 1,
					'name'               => $this->get_field_name('selected_cat1'),
					'id'                 => $this->get_field_name('selected_cat1'),
					'class'              => 'widefat',
					'taxonomy'           => 'category',
					'hide_if_empty'      => false,
				);
				wp_dropdown_categories($esn_dropown_cat);
				?>
			</p>
			<!-- Second Input Field-->
			<p>
				<label for="<?php echo $this->get_field_id( 'title2' ); ?>">Column 2 Title:</label>
				<input type="text" id="<?php echo $this->get_field_id( 'title2' ); ?>" name="<?php echo $this->get_field_name( 'title2' ); ?>" value="<?php echo esc_attr( $title2 ); ?>" />
			</p>
			<p>
				<label for="<?php echo $this->get_field_id('selected_cat2'); ?>"><?php _e('Select Column 2 Category', 'eservices-nepal-news-portal'); ?></label>
				<?php
				$esn_dropown_cat = array(
					'show_option_none'   => __('From Recent Posts','eservices-nepal-news-portal'),
					'orderby'            => 'name',
					'order'              => 'asc',
					'show_count'         => 1,
					'hide_empty'         => 1,
					'echo'               => 1,
					'selected'           => $selected_cat2,
					'hierarchical'       => 1,
					'name'               => $this->get_field_name('selected_cat2'),
					'id'                 => $this->get_field_name('selected_cat2'),
					'class'              => 'widefat',
					'taxonomy'           => 'category',
					'hide_if_empty'      => false,
				);
				wp_dropdown_categories($esn_dropown_cat);
				?>
			</p>
			<!-- Third Input Field-->
			<p>
				<label for="<?php echo $this->get_field_id( 'title3' ); ?>">Column 3 Title:</label>
				<input type="text" id="<?php echo $this->get_field_id( 'title3' ); ?>" name="<?php echo $this->get_field_name( 'title3' ); ?>" value="<?php echo esc_attr( $title3 ); ?>" />
			</p>
			<p>
				<label for="<?php echo $this->get_field_id('selected_cat3'); ?>"><?php _e('Select Column 3 Category', 'eservices-nepal-news-portal'); ?></label>
				<?php
				$esn_dropown_cat = array(
					'show_option_none'   => __('From Recent Posts','eservices-nepal-news-portal'),
					'orderby'            => 'name',
					'order'              => 'asc',
					'show_count'         => 1,
					'hide_empty'         => 1,
					'echo'               => 1,
					'selected'           => $selected_cat3,
					'hierarchical'       => 1,
					'name'               => $this->get_field_name('selected_cat3'),
					'id'                 => $this->get_field_name('selected_cat3'),
					'class'              => 'widefat',
					'taxonomy'           => 'category',
					'hide_if_empty'      => false,
				);
				wp_dropdown_categories($esn_dropown_cat);
				?>
			</p>
			<?php
		}
		
		/*public function update( $new_instance, $old_instance ) {
		  $instance = $old_instance;
		  $instance[ 'title' ] = strip_tags( $new_instance[ 'title' ] );
		  return $instance;
		}*/
		public function update( $new_instance, $old_instance ) {
            $instance = $old_instance;
            $instance['title1'] = ( isset( $new_instance['title1'] ) ) ? sanitize_text_field( $new_instance['title1'] ) : '';
            $instance['title2'] = ( isset( $new_instance['title2'] ) ) ? sanitize_text_field( $new_instance['title2'] ) : '';
            $instance['title3'] = ( isset( $new_instance['title3'] ) ) ? sanitize_text_field( $new_instance['title3'] ) : '';
            $instance['selected_cat1'] = ( isset( $new_instance['selected_cat1'] ) ) ? esc_attr( $new_instance['selected_cat1'] ) : '';
            $instance['selected_cat2'] = ( isset( $new_instance['selected_cat2'] ) ) ? esc_attr( $new_instance['selected_cat2'] ) : '';
            $instance['selected_cat3'] = ( isset( $new_instance['selected_cat3'] ) ) ? esc_attr( $new_instance['selected_cat3'] ) : '';
            return $instance;
        }
	
	  
	} // class esn_new_display_three ends here
}

if ( ! function_exists( 'esn_new_display_three' ) ) :
    /**
     * Function to Register and load the widget
     *
     * @since 1.0.0
     *
     * @param null
     * @return void
     *
     */
    function esn_new_display_three() {
        register_widget( 'esn_new_display_three' );
    }
endif;
add_action( 'widgets_init', 'esn_new_display_three' );

