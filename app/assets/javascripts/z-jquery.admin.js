$(function() {
		
		var container = document.querySelector(".container");
		var msnry;
		// initialize Masonry after all images have loaded
		imagesLoaded( container, function() {
			msnry = new Masonry( container, {
				// options
				columnWidth: 220,
				itemSelector: ".item",
				isFitWidth: true
			});
		});
		
		/******************
		* +-での文字サイズの変更
		******************/

			$(".plus").click(function(){
				$("body").css("font-size","120%");
				msnry.layout();
			})

			$(".minus").click(function(){
				$("body").css("font-size","13px");
				msnry.layout();
			})

		/*****************
		* 友達になる削除
		*****************/

		$(".friendsBtn").on("click", function(){
			$(this).parent().parent().html("友達になりました").fadeOut("slow");
			location.reload(true);
		})



		$(".next-btn").on("click", function(){
			$("body").css("backbround","#f00");
		})



});