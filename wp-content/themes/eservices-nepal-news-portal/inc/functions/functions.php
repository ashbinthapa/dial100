<?php
	
/**
 * FUNCTION TO GET NEPALI NUMBER FOR ROMAN NUMBERS
 *
 * @since 1.0.0
 *
 * @param string $num
 * @return string ie. 1, 2, 3 -> १, २, ३
 */
if ( ! function_exists( 'esn_get_nepali' ) ) :
    function esn_get_nepali($num){
		$a = $num;
		if(strpos($a, '0') !== false) {
			$a = str_replace("0","०",$a);
		}
		if(strpos($a, '1') !== false) {
			$a = str_replace("1","१",$a);
		}
		if(strpos($a, '2') !== false) {
			$a = str_replace("2","२",$a);
		}
		if(strpos($a, '3') !== false) {
			$a = str_replace("3","३",$a);
		}
		if(strpos($a, '4') !== false) {
			$a = str_replace("4","४",$a);
		}
		if(strpos($a, '5') !== false) {
			$a = str_replace("5","५",$a);
		}
		if(strpos($a, '6') !== false) {
			$a = str_replace("6","६",$a);
		}
		if(strpos($a, '7') !== false) {
			$a = str_replace("7","७",$a);
		}
		if(strpos($a, '8') !== false) {
			$a = str_replace("8","८",$a);
		}
		if(strpos($a, '9') !== false) {
			$a = str_replace("9","९",$a);
		}
		
		return $a;
    }
endif;

/**
 * FUNCTION TO GET NEPALI TIME AGO
 *
 * @since 1.0.0
 *
 * @param string $eng_time
 * @return string "1 Day Ago"
 */
if ( ! function_exists( 'esn_get_nepali_time_ago' ) ) :
    function esn_get_nepali_time_ago($eng_time){
		$a = $eng_time;
		if(strpos($a, 'years') !== false) {
			$a = str_replace("years","बर्ष",$a);
		}elseif(strpos($a, 'year') !== false) {
			$a = str_replace("year","बर्ष",$a);
		}elseif(strpos($a, 'days') !== false) {
			$a = str_replace("days","दिन",$a);
		}elseif(strpos($a, 'day') !== false) {
			$a = str_replace("day","दिन",$a);
		}elseif(strpos($a, 'weeks') !== false) {
			$a = str_replace("weeks","हफ्ता",$a);
		}elseif(strpos($a, 'week') !== false) {
			$a = str_replace("week","हफ्ता",$a);
		}elseif (strpos($a, 'hours') !== false) {
			$a = str_replace("hours","घण्टा",$a);
		}elseif(strpos($a, 'hour') !== false) {
			$a = str_replace("hour","घण्टा",$a);
		}elseif(strpos($a, 'mins') !== false) {
			$a = str_replace("mins","मिनेट",$a);
		}elseif(strpos($a, 'min') !== false) {
			$a = str_replace("min","मिनेट",$a);
		}else{
			$a = "";
		}
		echo esn_get_nepali($a);
	}
endif;

/**
 * Return content of fixed length
 *
 * @since 1.0.0
 *
 * @param string $esn_content
 * @param int $length
 * @return string
 *
 */
if ( ! function_exists( 'esn_words_count' ) ) :
    function esn_words_count( $esn_content = null, $length = 16 ) {
        $length = absint( $length );
        $source_content = preg_replace( '`\[[^\]]*\]`', '', $esn_content );
        $trimmed_content = wp_trim_words( $source_content, $length, '...' );
        return $trimmed_content;
    }
endif;

/**
 * Function FOR Counting Post
 *
 * @since 1.0.0
 *
 * @param string $postID
 */
function esn_set_post_views($postID) {
    $count_key = 'esn_post_views_count';
    $count = get_post_meta($postID, $count_key, true);
    if($count==''){
        $count = 0;
        delete_post_meta($postID, $count_key);
        add_post_meta($postID, $count_key, '0');
    }else{
        $count++;
        update_post_meta($postID, $count_key, $count);
    }
}
//To keep the count accurate, lets get rid of prefetching
remove_action( 'wp_head', 'adjacent_posts_rel_link_wp_head', 10, 0);

function esn_track_post_views ($post_id) {
    if ( !is_single() ) return;
    if ( empty ( $post_id) ) {
        global $post;
        $post_id = $post->ID;    
    }
    esn_set_post_views($post_id);
}
add_action( 'wp_head', 'esn_track_post_views');


/*
 * FUNCTION FOR FACEBOOK COMMENTS PLUGIN
 *
 */

if ( !function_exists('fb_comment_post_below') ) :
	function fb_comment_post_below () { ?>
		<h2 class="widget-title"><a class="hvr-shutter-out-horizontal">प्रतिक्रिया दिनुहोस्</a></h2>
		<div class="fb-comments" data-href="<?php the_permalink(); ?>" data-width="100%" data-numposts="5"></div>
	<?php 
	}
endif;

add_action( 'show_fb_comment_box', 'fb_comment_post_below');

/*
 * FUNCTION FOR SOCIAL SHARE PLUGIN
 *
 */

if ( !function_exists('social_share_buttons') ) :
	function social_share_buttons () { ?>
		<!-- Go to www.addthis.com/dashboard to customize your tools -->
		<div class="social-share-wrapper">
			<div class="addthis_inline_share_toolbox"></div>
		</div>
	<?php 
	}
endif;

add_action( 'show_social_share_buttons', 'social_share_buttons');

/**
 * Function/Hook to Add Related Posts
 *
 *
 */
if ( !function_exists('esn_related_post_below') ) :

    function esn_related_post_below( $post_id ) {
        $esn_cat_post_args = array(
            'post__not_in' => array($post_id),
            'post_type' => 'post',
            'posts_per_page'      => 6,
            'post_status'         => 'publish',
            'ignore_sticky_posts' => true
        );
        
        $cats = get_post_meta( $post_id, 'related-posts', true );
        if ( !$cats ) {
            $cats = wp_get_post_categories( $post_id, array('fields'=>'ids' ) );
            $esn_cat_post_args['category__in'] = $cats;
        }
        else {
            $esn_cat_post_args['cat'] = $cats;
        }
        $esn_featured_query = new WP_Query($esn_cat_post_args);
        if( $esn_featured_query->have_posts() ){?>
            <div class="related_post_wrapper">
                <h2 class="widget-title">
                    <a class="hvr-shutter-out-horizontal">
                        सम्बन्धित शिर्षक
                    </a>
                </h2>
            <ul class="related-post-news-list">
                <?php
                while ( $esn_featured_query->have_posts() ) : $esn_featured_query->the_post();
                    $thumb = 'large';
                    ?>
                    <li class="esn-related-post">
                        <figure class="widget-image">
                            <a href="<?php the_permalink(); ?>">
                                <?php
                                if( has_post_thumbnail() ):
                                    the_post_thumbnail( $thumb );
                                else:
                                    ?>
                                    <div class="no-image-widgets">
                                        <?php
                                        the_title( sprintf( '<h2 class="caption-title"><a href="%s" rel="bookmark">', esc_url( get_permalink() ) ), '</a></h2>' );
                                        if( !get_the_title() ){
                                            the_date( '', sprintf( '<h2 class="caption-title"><a href="%s" rel="bookmark">', esc_url( get_permalink() ) ), '</a></h2>' );
                                        }
                                        ?>
                                    </div>
                                    <?php
                                endif;
                                ?>
                            </a>
                        </figure>
                        <div class="featured-desc">
                            <h4 class="title">
                                <a href="<?php the_permalink()?>">
                                    <?php the_title(); ?>
                                </a>
                            </h4>                            
                        </div>
                    </li>
                    <?php
                endwhile;
                wp_reset_postdata();
                ?>
            </ul>
            </div>
            <?php
        }
    }
endif;
add_action( 'esn_related_posts', 'esn_related_post_below', 10, 1 );

/*
 * FUNCTION TO ADD HOME ICON & SEARCH ICON
 *
 */

function add_search_form($items, $args) {
if( $args->theme_location == 'menu-1' ){
    $items = '<li id="home-icon">
                <a href="/">
                    <i class="fas fa-home"></i>
                </a>
            </li>'. $items;
    $items .= '<li id="search-icon">
                <a >
                    <i class="fas fa-search"></i>
                </a>
            </li>';
    $items .= '<li class="search-box">'
          . '<form role="search" method="get" class="search-form" action="'.home_url( '/' ).'">'
          . '<div class="search-wrapper">'
          . '<input type="search" class="search-field" placeholder="' . esc_attr_x( 'खोजि गर्नुहोस....', 'placeholder' ) . '" value="' . get_search_query() . '" name="s" title="' . esc_attr_x( 'Search for:', 'label' ) . '" />'
          .'<button type="submit" class="search-submit"><i class="fas fa-search"></i></button>'
          .'</div>'
          . '</form>'
          . '</li>';
    }
    return $items;
}
add_filter('wp_nav_menu_items', 'add_search_form', 10, 2);

/*
 * FUNCTION TO GET PUBLISHED TIME IN HUMAN TIME DIFF (Few Days/Hours/Min Ago)
 *
 */

if ( !function_exists('get_time_diff_nepali') ) :
	function get_time_diff_nepali () {
		echo '<div class="time-diff-wrapper">';
			echo '<i class="far fa-clock"></i>';
			echo '<p class="human-time-diff-text">';
				esn_get_nepali_time_ago(human_time_diff( get_the_time('U'), current_time('timestamp') ) . ' अगाडी');
			echo '</p>';
		echo '</div>';
	}
endif;

add_action( 'show_time_diff_nepali', 'get_time_diff_nepali');

/*
 *Adding the Open Graph in the Language Attributes
 */
function add_opengraph_doctype( $output ) {
        return $output . ' xmlns:og="http://opengraphprotocol.org/schema/" xmlns:fb="http://www.facebook.com/2008/fbml"';
    }
add_filter('language_attributes', 'add_opengraph_doctype');


/*
 *Adding the Open Graph Meta Info
 */
function insert_fb_in_head() {
    global $post;
    if ( !is_singular()) //if it is not a post or a page
        return;
        echo '<meta property="og:title" content="' . get_the_title() . '"/>';
        echo '<meta property="og:type" content="article"/>';
        echo '<meta property="og:url" content="' . get_permalink() . '"/>';
        echo '<meta property="og:site_name" content="swasthyadainik.com"/>';
    if(!has_post_thumbnail( $post->ID )) { //the post does not have featured image, use a default image
        $default_image="https://artharajniti.com/wp-content/uploads/2019/11/Logo_Final_Artharajniti-NEW.png"; //replace this with a default image on your server or an image in your media library
        echo '<meta property="og:image" content="' . $default_image . '"/>';
    }
    else{
        $thumbnail_src = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'large' );
        echo '<meta property="og:image" content="' . esc_attr( $thumbnail_src[0] ) . '"/>';
    }
    echo "
";
}
add_action( 'wp_head', 'insert_fb_in_head', 5 );