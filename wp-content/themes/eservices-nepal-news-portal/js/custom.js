var $ = jQuery;

/*
 * JS FOR HOVER NEWS SECTION
 */
$(document).ready(function(){
	$('.hover-title a').on('mouseover', function() {
		$('.hover-title').removeClass('hover-active');
		$(this).parent().addClass('hover-active');
		var news_id = $(this).attr('data-href');
		$('.news-hover-section').hide();
		$(news_id).show();
	});

});

/*
* CSS TO DISPLAY NAVIGATION ON MOBILE DEVICES
*/

/*
* JS CODE TO DISPLAY SEARCH BOX ON CLICK
*/


/*
* JS CODE FOR TRENDING & RECENT NEWS TOGGLE
*/
$('.trending-posts-wrapper').addClass('active');
$('#show_trending').addClass('red');

$('#show_trending').on('click',()=>{
	$('#show_trending').addClass('red');
	$('#show_recent').removeClass('red');
	$('.trending-posts-wrapper').addClass('active');
	$('.recent-posts-wrapper').removeClass('active');
});
$('#show_recent').on('click',()=>{
	$('#show_recent').addClass('red');
	$('#show_trending').removeClass('red');
	$('.recent-posts-wrapper').addClass('active');
	$('.trending-posts-wrapper').removeClass('active');
});

/*
* JS FOR STICKY SIDEBAR
*/
$('#primary, #secondary').theiaStickySidebar();