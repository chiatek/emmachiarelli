/*
	Name: main.js
	Date: September 19, 2016
	Description: EmmaChiarelli javascript source.
	Author: Steve Chiarelli
	Author URL: https://www.chiatek.com
*/


$(function () {
    "use strict";

    $(document).ready(function () {
        stickHeader();
		toggleResults();
		nav_menu_height();
        startRevSlider();
		owlCarousel();
		//toggleVideoControls();
		setScrollAnchor();
    });

    $(window).load(function () {
        // Site Preloader
        $('#preloader').fadeOut('slow', function () {
            $(this).remove();
        });

    });
	
	$(window).resize(function () {
        stickHeader();
        nav_menu_height();
    });

    $(window).scroll(function () {
        stickHeader();
    });
	


    // ----------------------------------------------------------------
    // Scroll Sticky Navigation
    // ----------------------------------------------------------------

    function stickHeader() {
        var scrolled = $(window).scrollTop();
        var windHeight = $(window).height();
        if (scrolled > 100) {
            $('.header').addClass('header-prepare');
        } else {
            $('.header').removeClass('header-prepare');
        }

        if (scrolled > 1) {
            $('.header').addClass('header-fixed');
        } else {
            $('.header').removeClass('header-fixed');
        }
    };

    // ----------------------------------------------------------------
    // Navigation Menu panel
    // ----------------------------------------------------------------

    var mobile_menu_icon = $(".nav-menu-icon");
    var mobile_menu = $(".nav-menu");
	
    // Mobile menu max height
    function nav_menu_height() {
        mobile_menu.css("max-height", $(window).height() - 65 + "px");
    };	

    // Mobile menu style toggle
    $(".nav-menu-icon").click(function () {
        mobile_menu_icon.toggleClass('active');
        mobile_menu.toggleClass('active');
        return false;
    });


    // ----------------------------------------------------------------
    // Revolution Slider
    // ----------------------------------------------------------------
	
	function startRevSlider() {
		
			//get window width
			var windowWidth = window.innerWidth;
			
			if(windowWidth > 1024) {
				revSlider();
			}
			else {
				revSliderFull();
			}
		
	};
	
    function revSlider() {

		  $('.intro-tp-banner-kenBurns').revolution({
			  
			 delay:9000,
			 startwidth:960,
			 startheight:650,
			 startWithSlide:0,			  
	 
			 fullScreenAlignForce:"off",
			 autoHeight:"off",
			 minHeight:"off",
	 
			 shuffle:"off",
	 
			 onHoverStop:"off",
	 
			 thumbWidth:100,
			 thumbHeight:50,
			 thumbAmount:3,
	 
			 hideThumbsOnMobile:"off",
			 hideNavDelayOnMobile:1500,
			 hideBulletsOnMobile:"off",
			 hideArrowsOnMobile:"off",
			 hideThumbsUnderResoluition:0,
	 
			 hideThumbs:0,
			 hideTimerBar:"off",
	 
			 keyboardNavigation:"on",
	 
			 navigationType:"off",
			 navigationArrows:"solo",
			 navigationStyle:"round",
	 
			 navigationHAlign:"center",
			 navigationVAlign:"bottom",
			 navigationHOffset:30,
			 navigationVOffset:30,
	 
			 soloArrowLeftHalign:"left",
			 soloArrowLeftValign:"center",
			 soloArrowLeftHOffset:20,
			 soloArrowLeftVOffset:0,
	 
			 soloArrowRightHalign:"right",
			 soloArrowRightValign:"center",
			 soloArrowRightHOffset:20,
			 soloArrowRightVOffset:0,
	 
			 touchenabled:"on",
			 swipe_velocity:"0.7",
			 swipe_max_touches:"1",
			 swipe_min_touches:"1",
			 drag_block_vertical:"false",
	 
			 parallax:"mouse",
			 parallaxBgFreeze:"on",
			 parallaxLevels:[10,7,4,3,2,5,4,3,2,1],
			 parallaxDisableOnMobile:"off",
	 
			 stopAfterLoops:0,
			 stopAtSlide:8,
			 
			 hideCaptionAtLimit:0,
			 hideAllCaptionAtLilmit:0,
			 hideSliderAtLimit:0,
	 
			 dottedOverlay:"none",
	 
			 spinned:"spinner4",
	 
			 fullWidth:"on",
			 forceFullWidth:"on",
			 fullScreen:"off",
			 fullScreenOffsetContainer:"#topheader-to-offset",
			 fullScreenOffset:"0px",
	 
			 panZoomDisableOnMobile:"off",
	 
			 simplifyAll:"off",
	 
			 shadow:0
			 
		  });
    };
	
    function revSliderFull() {

		  $('.intro-tp-banner-kenBurns').revolution({
			  
			 delay:9000,
			 startwidth:960,
			 startheight:500,
			 startWithSlide:0,			  
	 
			 fullScreenAlignForce:"off",
			 autoHeight:"off",
			 minHeight:"off",
	 
			 shuffle:"off",
	 
			 onHoverStop:"off",
	 
			 thumbWidth:100,
			 thumbHeight:50,
			 thumbAmount:3,
	 
			 hideThumbsOnMobile:"off",
			 hideNavDelayOnMobile:1500,
			 hideBulletsOnMobile:"off",
			 hideArrowsOnMobile:"on",
			 hideThumbsUnderResoluition:0,
	 
			 hideThumbs:0,
			 hideTimerBar:"off",
	 
			 keyboardNavigation:"on",
	 
			 navigationType:"off",
			 navigationArrows:"solo",
			 navigationStyle:"round",
	 
			 navigationHAlign:"center",
			 navigationVAlign:"bottom",
			 navigationHOffset:30,
			 navigationVOffset:30,
	 
			 soloArrowLeftHalign:"left",
			 soloArrowLeftValign:"center",
			 soloArrowLeftHOffset:20,
			 soloArrowLeftVOffset:0,
	 
			 soloArrowRightHalign:"right",
			 soloArrowRightValign:"center",
			 soloArrowRightHOffset:20,
			 soloArrowRightVOffset:0,
	 
			 touchenabled:"on",
			 swipe_velocity:"0.7",
			 swipe_max_touches:"1",
			 swipe_min_touches:"1",
			 drag_block_vertical:"true",
	 
			 parallax:"mouse",
			 parallaxBgFreeze:"on",
			 parallaxLevels:[10,7,4,3,2,5,4,3,2,1],
			 parallaxDisableOnMobile:"off",
	 
			 stopAfterLoops:0,
			 stopAtSlide:8,
			 
			 hideCaptionAtLimit:0,
			 hideAllCaptionAtLilmit:0,
			 hideSliderAtLimit:0,
	 
			 dottedOverlay:"none",
	 
			 spinned:"spinner4",
	 
			 fullWidth:"off",
			 forceFullWidth:"off",
			 fullScreen:"on",
			 fullScreenOffsetContainer:"#topheader-to-offset",
			 fullScreenOffset:"0px",
	 
			 panZoomDisableOnMobile:"off",
	 
			 simplifyAll:"off",
	 
			 shadow:0
	 
		  });
    };	
	
    // ----------------------------------------------------------------
    // Owl Carousel
    // ----------------------------------------------------------------	
	
	function owlCarousel() {
		$("#owl-container").owlCarousel({
		 
			navigation : true, // Show next and prev buttons
			slideSpeed : 300,
			paginationSpeed : 400,
			singleItem : true,
			autoPlay : 5000,
			stopOnHover : true,
		 
			// "singleItem:true" is a shortcut for:
			// items : 1, 
			// itemsDesktop : [1199,4],
			// itemsDesktopSmall : [980,3],
			// itemsTablet: [768,2],
			// itemsMobile : [479,1]
		 
		});
	};
	
	// ----------------------------------------------------------------
    // Toggle (Hide/Show) Results Query
    // ----------------------------------------------------------------
	
	function toggleResults() {
		$("#meet").click(function(){
			$("#meet-toggle").toggle();
			$("#meet-hide").toggle();
			$("#meet-show").toggle();
		});
		
		$("#video").click(function(){
			$("#video-toggle").toggle();
			$("#video-hide").toggle();
			$("#video-show").toggle();
		});
		
		$("#pictures").click(function(){
			$("#pictures-toggle").toggle();
			$("#pictures-hide").toggle();
			$("#pictures-show").toggle();
		});
	};
	
    // ----------------------------------------------------------------
    // Toggle Video Player Controls
    // ----------------------------------------------------------------	
	
	function toggleVideoControls() {
		$('#video-1, #video-2, #video-3, #video-4').hover(function toggleControls() {
			if(this.hasAttribute("controls")) {
				this.removeAttribute("controls")
			}
			else {
				this.setAttribute("controls", "controls")
			}
		});
	};
	
	
    // ------------------------------------------------------------------
    // Set Window Scroll Anchor (only for window size greater than 1024px)
    // ------------------------------------------------------------------
	
	function setScrollAnchor() {
		$("#nav ul li a").click(function(e) {

			//get section ID in format "id-section"
			var sectionID = e.currentTarget.id + "-section";
			
			//get window width
			var windowWidth = window.innerWidth;
			
			if(windowWidth > 1024) {
				if((sectionID == "home-section") || (sectionID == "about-section") || (sectionID == "news-section") || (sectionID == "videos-section")) {
					//stop anchor tags from working
					e.preventDefault();
					
					//scroll animation to offset
					$("html,body").animate({ 
						scrollTop: $("#" + sectionID).offset().top
					}, 500);
				}				
			}
		});
	};

	
});


// ------------------------------------------------------------------
// Form Validation
// ------------------------------------------------------------------

function validate_form_js() {
	
    var name = document.forms["commentform"]["name"].value;
	var email = document.forms["commentform"]["email"].value;
	var comment = document.forms["commentform"]["comment"].value;
	
    if (name == null || name == "") {
        alert("Name must be filled out");
        return false;
    }
	if (email == null || email == "") {
        alert("Email must be filled out");
        return false;
    }
	if (comment == null || comment == "") {
        alert("Please add a comment");
        return false;
    }
}