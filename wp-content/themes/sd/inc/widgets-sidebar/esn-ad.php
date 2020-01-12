<?php
/**
 * Custom advertisement
 *
 * @package Swasthya Dainik
 */
if ( ! class_exists( 'esn_ad_widget' ) ) :
    /**
     * Class for adding advertisement widget
     * A new way to add advertisement
     * @package Acme Themes
     * @subpackage esn
     * @since 1.1.0
     */
    class esn_ad_widget extends WP_Widget {
        /*defaults values for fields*/
        private $defaults = array(
            'esn_ad_title' => '',
            'esn_ad_image' => '',
            'esn_ad_link'  => '',
            'esn_ad_new_window' => 1,
            'esn_ad_img_alt'  => ''
        );
        function __construct() {
            parent::__construct(
            /*Base ID of your widget*/
                'esn_ad',
                /*Widget name will appear in UI*/
                __('ESN Advertisement', 'esn'),
                /*Widget description*/
                array( 'description' => __( 'Add advertisement with different options.', 'esn' ), )
            );
        }

        /*Widget Backend*/
        public function form( $instance ) {
            /*merging arrays*/
            $instance = wp_parse_args( (array) $instance, $this->defaults);
            $esn_ad_title  = esc_attr( $instance['esn_ad_title'] );
            $esn_ad_image  = esc_url( $instance['esn_ad_image'] );
            $esn_ad_link   = esc_url( $instance['esn_ad_link'] );
            $esn_ad_new_window = esc_attr( $instance['esn_ad_new_window'] );
            $esn_ad_img_alt = esc_attr( $instance['esn_ad_img_alt'] );
            ?>
            <p class="description">
                <?php
                _e('You can use any size of Advertisement image but recommended to use proper image according to sidebar width.', 'esn' );
                ?>
            </p>
            <p>
                <label for="<?php echo $this->get_field_id( 'esn_ad_title' ); ?>"><?php _e( 'Title:', 'esn' ); ?></label>
                <input class="widefat" id="<?php echo $this->get_field_id( 'esn_ad_title' ); ?>" name="<?php echo $this->get_field_name( 'esn_ad_title' ); ?>" type="text" value="<?php echo esc_attr( $esn_ad_title ); ?>" />
            </p>
            <h4 class="accordion-toggle"><?php _e( 'Advertisement Image', 'esn' ); ?></h4>
            <p>
                <label for="<?php echo $this->get_field_id('esn_ad_image'); ?>">
                    <?php _e( 'Select Advertisement Image', 'esn' ); ?>
                </label>
                <?php
                $esn_display_none = '';
                if ( empty( $esn_ad_image ) ){
                    $esn_display_none = ' style="display:none;" ';
                }
                ?>
                <span class="img-preview-wrap" <?php echo esc_attr( $esn_display_none ); ?>>
                    <img class="widefat" src="<?php echo esc_url( $esn_ad_image ); ?>" alt="<?php _e( 'Image preview', 'esn' ); ?>"  />
                </span><!-- .ad-preview-wrap -->
                <input type="text" class="widefat" name="<?php echo $this->get_field_name('esn_ad_image'); ?>" id="<?php echo $this->get_field_id('esn_ad_image'); ?>" value="<?php echo esc_url( $esn_ad_image ); ?>" />
                <input type="button" value="<?php _e( 'Upload Image', 'esn' ); ?>" class="button media-image-upload" data-title="<?php _e( 'Select Ad Image','esn'); ?>" data-button="<?php _e( 'Select Ad Image','esn'); ?>"/>
                <input type="button" value="<?php _e( 'Remove Image', 'esn' ); ?>" class="button media-image-remove" />
            </p>
            <p>
                <label for="<?php echo $this->get_field_id( 'esn_ad_img_alt' ); ?>"><?php _e( 'Alt Text:', 'esn' ); ?></label>
                <input class="widefat" id="<?php echo $this->get_field_id( 'esn_ad_img_alt' ); ?>" name="<?php echo $this->get_field_name( 'esn_ad_img_alt' ); ?>" type="text" value="<?php echo esc_attr( $esn_ad_img_alt ); ?>" />
            </p>
            <p>
                <label for="<?php echo $this->get_field_id( 'esn_ad_link' ); ?>"><?php _e( 'Link URL:', 'esn' ); ?></label>
                <input class="widefat" id="<?php echo $this->get_field_id( 'esn_ad_link' ); ?>" name="<?php echo $this->get_field_name( 'esn_ad_link' ); ?>" type="text" value="<?php echo esc_attr( $esn_ad_link ); ?>" />
            </p>
            <p>
                <input id="<?php echo $this->get_field_id( 'esn_ad_new_window' ); ?>" name="<?php echo $this->get_field_name( 'esn_ad_new_window' ); ?>" type="checkbox" <?php checked( 1 == $esn_ad_new_window ? $instance['esn_ad_new_window'] : 0); ?> />
                <label for="<?php echo $this->get_field_id( 'esn_ad_new_window' ); ?>"><?php _e( 'Open in new window', 'esn' ); ?></label>
            </p>
            <hr />
            <?php
        }

        /**
         * Function to Updating widget replacing old instances with new
         *
         * @access public
         * @since 1.0
         *
         * @param array $new_instance new arrays value
         * @param array $old_instance old arrays value
         * @return array
         *
         */
        function update( $new_instance, $old_instance ) {
            $instance = $old_instance;
            $instance['esn_ad_title'] = ( isset( $new_instance['esn_ad_title'] ) ) ?  sanitize_text_field( $new_instance['esn_ad_title'] ): '';
            $instance['esn_ad_image'] = ( isset( $new_instance['esn_ad_image'] ) ) ?  esc_url( $new_instance['esn_ad_image'] ): '';
            $instance['esn_ad_link'] = ( isset( $new_instance['esn_ad_link'] ) ) ?  esc_url( $new_instance['esn_ad_link'] ): '';
            $instance['esn_ad_img_alt'] = ( isset( $new_instance['esn_ad_img_alt'] ) ) ?  esc_attr( $new_instance['esn_ad_img_alt'] ): '';
            $instance['esn_ad_new_window'] = isset($new_instance['esn_ad_new_window'])? 1 : 0;

            return $instance;
        }

        /**
         * Function to Creating widget front-end. This is where the action happens
         *
         * @access public
         * @since 1.0
         *
         * @param array $args widget setting
         * @param array $instance saved values
         * @return void
         *
         */
        function widget( $args, $instance ) {
            $instance = wp_parse_args( (array) $instance, $this->defaults);
            $esn_ad_title = apply_filters( 'widget_title', $instance['esn_ad_title'], $instance, $this->id_base );
            $esn_ad_image          = esc_url( $instance['esn_ad_image'] );
            $esn_ad_link           = esc_url( $instance['esn_ad_link'] );
            $esn_ad_new_window = esc_attr( $instance['esn_ad_new_window'] );
            $esn_ad_img_alt           = esc_attr( $instance['esn_ad_img_alt'] );

            echo $args['before_widget'];
			/*
            if ( !empty($esn_ad_title) ) {
                echo $args['before_title'] . $esn_ad_title . $args['after_title'];
            }*/
            $ad_content_image = '';
            if ( ! empty( $esn_ad_image ) ) {
                /*creating add*/
                $img_html = '<img src="' . $esn_ad_image . '" alt="'.$esn_ad_img_alt . '" />';
                $link_open = '';
                $link_close = '';
                if ( ! empty( $esn_ad_link ) ) {
                    $target_text = ( 1 == $esn_ad_new_window ) ? ' target="_blank" ' : '';
                    $link_open = '<a href="' . esc_url( $esn_ad_link ) . '" ' . $target_text . '>';
                    $link_close = '</a>';
                }
                $ad_content_image = $link_open . $img_html .  $link_close;
            }
            if ( !empty( $ad_content_image ) ) {
                echo '<div class="esn-ainfo-widget">';
                echo $ad_content_image;
                echo '</div>';
            }
            echo $args['after_widget'];
        }
    }
endif;

if ( ! function_exists( 'esn_ad_widget' ) ) :
    /**
     * Function to Register and load the widget
     *
     * @since 1.0
     *
     * @param null
     * @return void
     *
     */
    function esn_ad_widget() {
        register_widget( 'esn_ad_widget' );
    }
endif;
add_action( 'widgets_init', 'esn_ad_widget' );