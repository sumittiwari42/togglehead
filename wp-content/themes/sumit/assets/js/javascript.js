(function($){

	$(document).ready(function(){
		/*var currentindex = 0;
		var items = $(".slider li");
		var length = items.length;

		function cycle(){
			var item = items.eq(currentindex);
			items.hide();
			item.css("display","inline-block");
		}

		/* auto slide*/
		/*var auto = setInterval(function(){
			currentindex = currentindex+1;
			if(currentindex > length-1){
				currentindex = 0;
			}
			cycle();
		}, 3000);

		/* next button click slide*/
		/*$(".next").on('click',function(e){
			currentindex = currentindex+1;
			if(currentindex > length-1){
				currentindex = 0;
			}
			cycle();
		});

		/* previous button click slide*/
		/*var previous = $(".button .previuos").click(function(){
			currentindex = currentindex-1;
			if(currentindex > length-1){
				currentindex = 0;
			}
			cycle();
		});*/


		// $( "#pop-up" ).load(function() {
  //          $("#pop-up").css('display','block');
  //      });
     // var popit = true;
     // window.onbeforeunload = function() { 

     //           return "Are you sure you want to leave?"; 
          
     // }
    
      /*
    *  Mixing in your own logic into the warning.
    */
    // $('#my-form').areYouSure( {'silent':true} );
    // $(window).on('beforeunload', function() {
    //     isSunday = (0 == (new Date()).getDay());
    //     if ($('#my-form').hasClass('dirty') && isSunday) {
    //         return "Because it's Sunday, I'll be nice and let you know you forgot to save!";
    //     }
    // }


	   // $( ".close" ).click(function() {
           // $("#pop-up").css('display','none');
           // $.cookie("status", "close");
          var e = jQuery.Event("click");
          e.ctrlKey = true;
          $('.close').trigger(e);
            // var win = window.open(“”,”_self”);  url = “” or “about:blank”; target=”_self” 
            // win.close();
        // });

	    //store all cookie in a variable
        // var allcookies = document.cookie;
        // cookiearray = allcookies.split(';');

        //take cookie value in variable set class for display none
        // for (var i = 0; i < cookiearray.length; i++) {
        //     name = cookiearray[i].split('=')[0];
        //     value = cookiearray[i].split('=')[1];

        //     if(name == "status" && value == "close"){
        //      $("#pop-up").addClass("close-popup");
        //     }           
        // }

	});
}(jQuery));
