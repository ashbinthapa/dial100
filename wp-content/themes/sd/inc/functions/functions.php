<?php
/*
 *
 * FUNCTION TO GET NEPALI NUMBER FOR ROMAN NUMBERS
 * 
 */
 
 /**
 * Return content of fixed lenth
 *
 * @since Swasthya_Daink 1.0.0
 *
 * @param string $num
 * @return string ie. 1, 2, 3 -> १, २, ३
 *
 */

if ( ! function_exists( 'esn_get_nepali' ) ) :
	function esn_get_nepali($num){
		switch($num){
			case 1:
			return '१';
			break;
			
			case 2:
			return '२';
			break;
			
			case 3:
			return '३';
			break;
			
			case 4:
			return '४';
			break;
			
			case 5:
			return '५';
			break;
			
			case 6:
			return '६';
			break;
			
			case 7:
			return '७';
			break;
			
			case 8:
			return '८';
			break;
			
			case 9:
			return '९';
			break;
			
			case 10:
			return '१०';
			break;
			
			case 11:
			return '११';
			break;
			
			case 12:
			return '१२';
			break;
			
			case 13:
			return '१३';
			break;
			
			case 14:
			return '१४';
			break;
			
			case 15:
			return '१५';
			break;
			
			case 16:
			return '१६';
			break;
			
			case 17:
			return '१७';
			break;
			
			case 18:
			return '१८';
			break;
			
			case 19:
			return '१९';
			break;
			
			case 20:
			return '२०';
			break;
			
			default:
			return 'o';
			
		}
	}
endif;

/**
 * Return content of fixed lenth
 *
 * @since Swasthya_Daink 1.0.0
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
 * Function to Add Custom Image Size for Thumbnails
 *
 *
 */

add_action( 'after_setup_theme', 'esn_theme_setup' );
function esn_theme_setup() {
    add_image_size( 'small-thumb', 100, 100, true ); // (cropped)
}


/**
 * Function to Add Related Posts
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
						ससम्बन्धित शिर्षक
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


/* Post view conuntcer function */
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
		<div id="fb-root"></div>
		<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v4.0"></script>

		<div class="fb-comments" data-href="<?php the_permalink(); ?>" data-width="100%" data-numposts="5"></div>
	<?php 
	}
endif;

add_action( 'show_fb_comment_box', 'fb_comment_post_below');


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