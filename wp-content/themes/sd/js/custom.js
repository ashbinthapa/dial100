jQuery(document).ready(function(){
	jQuery('.single_hover_title_wrapper').each((i)=>{
		++i;
		jQuery('.single_hover_title_wrapper:nth-child('+i+')').hover(()=>{
			jQuery('.news-hover-section').hide();
			jQuery('.news-hover-section:nth-child('+i+')').show(500);
		});	
	});
});

/*
* JS CODE FOR TRENDING & RECENT NEWS TOGGLE
*/
jQuery('.trending-posts-wrapper').addClass('active');
jQuery('#show_trending').addClass('red');

jQuery('#show_trending').on('click',()=>{
	jQuery('#show_trending').addClass('red');
	jQuery('#show_recent').removeClass('red');
	jQuery('.trending-posts-wrapper').addClass('active');
	jQuery('.recent-posts-wrapper').removeClass('active');
});
jQuery('#show_recent').on('click',()=>{
	jQuery('#show_recent').addClass('red');
	jQuery('#show_trending').removeClass('red');
	jQuery('.recent-posts-wrapper').addClass('active');
	jQuery('.trending-posts-wrapper').removeClass('active');
});

/*
* JS FOR STICKY SIDEBAR
*/
jQuery('#primary, #secondary').theiaStickySidebar();

/*
* JS FOR NAVIGATION SECTION
*/

jQuery('#nav-toggle').on('click', ()=>{
	jQuery('#primary-menu').slideToggle('slow').css('display','grid');
});

jQuery('#search-icon a').on('click', ()=>{
	jQuery('li.search-box').toggle();
});
search-icon

/*
* JS FOR SITE CLICK EVENTS
*/
jQuery('.single_hover_title a').on('click', (e)=>{
	e.preventDefault();
});