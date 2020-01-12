<?php

if ( ! class_exists( 'esn_hover_widget_news' ) ) {
    /**
     * Class for adding widget
     *
     * @package Eservices_Nepal_News_Portal
     * @since 1.0.0
     */
	class esn_hover_widget_news extends WP_Widget {
	  /**
	  * To create the example widget all four methods will be 
	  * nested inside this single instance of the WP_Widget class.
	  **/
		public function __construct() {
			$widget_options = array( 
			  'classname' => 'esn_hover_widget_news',
			  'description' => 'This widget display the news from hover widget section!',
			);
			parent::__construct( 'esn_hover_widget_news', '3 ESN: Hover News Widget', $widget_options );
		}
		
		/* widget function displays the widget in the front end */
		public function widget( $args, $instance ) {
			$title = ! empty( $instance['title'] ) ? $instance['title'] : '';
			$title1 = ! empty( $instance['title1'] ) ? $instance['title1'] : '';
			$selected_cat = esc_attr( $instance['esn_cat'] );
			$selected_cat1 = esc_attr( $instance['esn_cat1'] );
		  
			if( $selected_cat != -1 ){
	            $sticky = get_option( 'sticky_posts' );
				$esn_cat_post_args = array(
					'posts_per_page'      => 5,
					'cat'				  => $selected_cat,
					'no_found_rows'       => true,
					'post_status'         => 'publish',
					'ignore_sticky_posts' => true,
					'post__not_in' => $sticky
				);
			}						
			$news_query = new WP_Query($esn_cat_post_args);

			if( $selected_cat1 != -1 ){
	            $sticky = get_option( 'sticky_posts' );
				$esn_cat_post_args1 = array(
					'posts_per_page'      => 7,
					'no_found_rows'       => true,
					'post_status'         => 'publish',
					'ignore_sticky_posts' => true,
					'post__not_in' => $sticky
				);
			}						
			$news_query1 = new WP_Query($esn_cat_post_args1);

			echo '<div class="main_wrapper_for_hover_widget">';
				echo $args['before_widget'] . 
					$args['before_title'] .
					'<a class="hvr-shutter-out-horizontal" href="category/'.get_cat_name($selected_cat).'">'. $title.'</a>'.
					$args['after_title'];
					if ($news_query->have_posts()){
						echo '<div class="home_hover_widget_news">';
								echo '<div class="main_hover_title_wrapper">'; 	
									$count = 0;
									while ($news_query->have_posts()): $news_query->the_post();						
										the_title('<h4 class="title hover-title"><a data-href="#tab-'.$count.'">','</a></h4>');
									$count++;
									endwhile;
								echo '</div>'; // end of main_title_wrapper 
								echo '<div class="post_main_wrapper">';
									$count = 0;
									while ($news_query->have_posts()): $news_query->the_post();
											if (has_post_thumbnail()) {
												$image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'large');
											} else {
												$image_url[0] = get_template_directory_uri() . '/assets/img/no-image-660-365.png';
											} 	
											echo '<div class="news-hover-section" id="tab-'.$count.'">';
																		
												the_title('<h4 class="title"><a href="'.get_permalink().'">','</a></h4>');					
												echo '<div class="img-wrap">	
														<a href="'.get_permalink().'">
															<img src="'.$image_url[0].'"/>
														</a>			
												</div>';					
												$content = esn_words_count( get_the_excerpt() ,30);
												echo '<div class="breaker-news-summary">
														<a href="'.get_permalink().'">
															<p>'.esc_html( $content ).'</p>
														</a> 
												</div>';
											echo '</div>';//end of news hover section
											$count++;
									endwhile;
								echo '</div>';// end of post_main_wrapper
						echo '</div>'; // end of home_hover_widget_news			
						wp_reset_postdata();
					}
				echo $args['after_widget'];

				echo $args['before_widget'] .
					'<h2 class="widget-title blue">
						<a class="hvr-shutter-out-horizontal" href="category/'.get_cat_name($selected_cat1).'">'. $title1.'</a>
					</h2>';			
					if ($news_query1->have_posts()){
						$count_number = 1;
						echo '<div class="hover_side_recent_post">';					
							while ($news_query1->have_posts()): $news_query1->the_post();
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
					}
				echo $args['after_widget'];
			echo '</div>';//end of main_wrapper_for_hover_widget
			//echo $args['after_widget'];
		}
		
		/* form function displays the widget in the back end */
		public function form( $instance ) {			
			$title = ! empty( $instance['title'] ) ? $instance['title'] : ''; //for title
			$title1 = ! empty( $instance['title1'] ) ? $instance['title1'] : ''; //for title1
			if($instance['esn_cat']){
				$selected_cat = esc_attr( $instance['esn_cat'] ); //for category selection
			}
			?> 
			<p>
				<label for="<?php echo $this->get_field_id( 'title' ); ?>">Title:</label>
				<input type="text" id="<?php echo $this->get_field_id( 'title' ); ?>" name="<?php echo $this->get_field_name( 'title' ); ?>" value="<?php echo esc_attr( $title ); ?>" />
			</p>
			<p>
				<label for="<?php echo $this->get_field_id('esn_cat'); ?>"><?php _e('Select Category', 'eservices-nepal-news-portal'); ?></label>
				<?php
				$esn_dropown_cat = array(
					'show_option_none'   => __('From Recent Posts','eservices-nepal-news-portal'),
					'orderby'            => 'name',
					'order'              => 'asc',
					'show_count'         => 1,
					'hide_empty'         => 1,
					'echo'               => 1,
					'selected'           => $selected_cat,
					'hierarchical'       => 1,
					'name'               => $this->get_field_name('esn_cat'),
					'id'                 => $this->get_field_name('esn_cat'),
					'class'              => 'widefat',
					'taxonomy'           => 'category',
					'hide_if_empty'      => false,
				);
				wp_dropdown_categories($esn_dropown_cat);
				?>
			</p> 
			<p>
				<label for="<?php echo $this->get_field_id( 'title1' ); ?>">Title for recent post:</label>
				<input type="text" id="<?php echo $this->get_field_id( 'title1' ); ?>" name="<?php echo $this->get_field_name( 'title1' ); ?>" value="<?php echo esc_attr( $title1 ); ?>" />
			</p>
			<?php 
		}
		
		public function update( $new_instance, $old_instance ) {
            $instance = $old_instance;
            $instance['title'] = ( isset( $new_instance['title'] ) ) ? sanitize_text_field( $new_instance['title'] ) : '';
			$instance['title1'] = ( isset( $new_instance['title1'] ) ) ? sanitize_text_field( $new_instance['title1'] ) : '';
            $instance['esn_cat'] = ( isset( $new_instance['esn_cat'] ) ) ? esc_attr( $new_instance['esn_cat'] ) : '';

            return $instance;
        }
	
	  
	} // class esn_hover_widget_news ends here
}

if ( ! function_exists( 'esn_hover_widget_news' ) ) :
    /**
     * Function to Register and load the widget
     *
     * @since 1.0.0
     *
     * @param null
     * @return void
     *
     */
    function esn_hover_widget_news() {
        register_widget( 'esn_hover_widget_news' );
    }
endif;
add_action( 'widgets_init', 'esn_hover_widget_news' );