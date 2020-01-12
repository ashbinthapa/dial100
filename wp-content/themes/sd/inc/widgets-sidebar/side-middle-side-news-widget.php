<?php
/* Replacing the parent theme widget */

/**
 * Side News List Middle Big News & Side News List
 */
if ( ! class_exists( 'esn_side_middle_side_news' ) ) {
    /**
     * Class for adding widget
     *
     * @package Acme Themes
     * @subpackage supermag_posts_col_new
     * @since 1.0.0
     */
	class esn_side_middle_side_news extends WP_Widget {
	  /**
	  * To create the example widget all four methods will be 
	  * nested inside this single instance of the WP_Widget class.
	  **/
		public function __construct() {
			$widget_options = array( 
			  'classname' => 'esn_side_middle_side_news',
			  'description' => 'This widget display the Full Width News Section with Side Middle & Side News!',
			);
			parent::__construct( 'esn_side_middle_side_news', 'ESN: Side Middle Side News Full Width', $widget_options );
		}
		
		/* widget function displays the widget in the front end */
		public function widget( $args, $instance ) {
			$title = ! empty( $instance['title'] ) ? $instance['title'] : '';
			
			if($instance['supermag_cat']) {
				$supermag_selected_cat = esc_attr( $instance['supermag_cat'] );
			}
		  
			if( $supermag_selected_cat != -1 ){
	            $sticky = get_option( 'sticky_posts' );
				$supermag_cat_post_args = array(
					'posts_per_page'      => 5,
					'cat'				  => $supermag_selected_cat,
					'no_found_rows'       => true,
					'post_status'         => 'publish',
					'ignore_sticky_posts' => true,
					'post__not_in' => $sticky
				);
			}						
			$news_query = new WP_Query($supermag_cat_post_args);
			echo '<div class="full-width-wrapper">';
			echo $args['before_widget'] . 
				$args['before_title'] .
				'<a class="hvr-shutter-out-horizontal" href="category/'.get_cat_name($supermag_selected_cat).'">'. $title.'</a>'.
				$args['after_title'];
				$count = 1;
				if ($news_query->have_posts()){
					echo '<div class="side-middle-side-wrapper">';
								while ($news_query->have_posts()): $news_query->the_post();
										if (has_post_thumbnail()) {
											$image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'large');
										} else {
											$image_url[0] = get_template_directory_uri() . '/assets/img/no-image-660-365.png';
										}
										if( $count < 3 ):
											if( $count < 2 ):
											echo '<div class="side-news-wrapper">';
											endif;
												echo '<div class="side-news">';
													the_title('<h4 class="title"><a href="'.get_permalink().'">','</a></h4>');					
													echo '<div class="img-wrap">	
															<a href="'.get_permalink().'">
																<img src="'.$image_url[0].'"/>
															</a>			
													</div>';
												echo '</div>';//end of side-news
											if( $count > 1 ):
											echo '</div>';//end of side-news-wrapper	
											endif;
										endif;
										
										if( $count == 3 ):
											echo '<div class="middle-news-wrapper">';
																		
												the_title('<h4 class="title"><a href="'.get_permalink().'">','</a></h4>');					
												echo '<div class="img-wrap">	
														<a href="'.get_permalink().'">
															<img src="'.$image_url[0].'"/>
														</a>			
												</div>';
											echo '</div>';//end of side-wrapper	
										endif;
										
										if( $count > 3 ):
											if( $count < 5 ):
											echo '<div class="side-news-wrapper">';
											endif;
												echo '<div class="side-news">';
													the_title('<h4 class="title"><a href="'.get_permalink().'">','</a></h4>');					
													echo '<div class="img-wrap">	
															<a href="'.get_permalink().'">
																<img src="'.$image_url[0].'"/>
															</a>			
													</div>';
												echo '</div>';//end of side-news
											if( $count > 4 ):
											echo '</div>';//end of side-news-wrapper	
											endif;
										endif;
								$count++;
								endwhile;
					echo '</div>'; // end of side-middle-side-wrapper			
					wp_reset_postdata();
				} // end if
			echo $args['after_widget'];
			echo '</div>'; // end of full-width-wrapper
		}
		
		/* form function displays the widget in the back end */
		public function form( $instance ) {			
			$title = ! empty( $instance['title'] ) ? $instance['title'] : ''; //for title
			if($instance['supermag_cat']){
				$supermag_selected_cat = esc_attr( $instance['supermag_cat'] ); //for category selection
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
			<?php 
		}
		
		public function update( $new_instance, $old_instance ) {
            $instance = $old_instance;
            $instance['title'] = ( isset( $new_instance['title'] ) ) ? sanitize_text_field( $new_instance['title'] ) : '';
            $instance['supermag_cat'] = ( isset( $new_instance['supermag_cat'] ) ) ? esc_attr( $new_instance['supermag_cat'] ) : '';

            return $instance;
        }
	
	  
	} // class esn_side_middle_side_news ends here
}

if ( ! function_exists( 'esn_side_middle_side_news' ) ) :
    /**
     * Function to Register and load the widget
     *
     * @since 1.0.0
     *
     * @param null
     * @return void
     *
     */
    function esn_side_middle_side_news() {
        register_widget( 'esn_side_middle_side_news' );
    }
endif;
add_action( 'widgets_init', 'esn_side_middle_side_news' );