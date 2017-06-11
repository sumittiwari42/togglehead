(function($) {

$(document).ready(function(){

	var currentindex = 0;
	var items = $(".slider-top li");
	var length = items.length;

	function cycle(){
		var item = items.eq(currentindex);
		items.hide();
		items.removeClass("open");
		item.css("display","inline-block");
		item.addClass("open");
	}

	/* auto slide*/
	var auto = setInterval(function(){
		currentindex = currentindex+1;
		console.log(currentindex);
		if(currentindex > length-1){
			currentindex = 0;
		}
		cycle();
	}, 3000);
    
    /*tab functionality*/

    $(".tab li").click(function(){
      $(".tab-details .tab-content").css('display','none');
      var ind = $(this).index();
      var current_index = ind+1;
      $(".tab-details .tab-content:nth-child("+current_index+")").css('display','block');
      $("tab li:last-child").addClass('active');
      $(".tab li").removeClass('active');
      $(this).addClass('active');
    });

    // $(".tab li").hover(function(){
    //   $(this).after("<span></span>");
    //   $(".tab li span").remove();
    // });

    var curindex = 0;
	var items1 = $(".quote-slider li");
	var length1 = items1.length;

	function cycle1(){
		var item1 = items1.eq(curindex);
		items1.hide();
		item1.css("display","inline-block");
	}

	/* auto slide*/
	var auto1 = setInterval(function(){
		curindex = curindex+1;
		console.log(curindex);
		if(curindex > length1-1){
			curindex = 0;
		}
		cycle1();
	}, 3000);

	$(".search-btn").click(function(){
	  if($(".search input").hasClass("input-slide")) {
	  	$(".search input").addClass("input-slide-remove");
	  	$(".search input").removeClass("input-slide");
	  } else {
        $(".search input").addClass("input-slide");
        $(".search input").removeClass("input-slide-remove");
	  }
	});
});
})(jQuery);
