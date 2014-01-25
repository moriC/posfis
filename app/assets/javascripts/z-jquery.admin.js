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

		/******************
		* ★を押した時の処理
		******************/

			$(".star").toggle(function(){
				$(this).css("color","#FF0");
				$(this).find(".icon-star-empty").removeClass("icon-star-empty").addClass("icon-star");
			},function(){
				$(this).css("color","#858585");
				$(this).find(".icon-star").removeClass("icon-star").addClass("icon-star-empty");
			});



		/******************
		* 公開非公開の処理
		******************/

			$(".status").toggle(function(){
				$(this).html("非公開");
			},function(){
				$(this).html("公開");
			});


			$(".dell").click(function(){
				if(confirm("記事を削除しますか？")){
					$(this).parents(".box1").hide();
				}
			})

		/*****************
		* 友達のなる削除
		*****************/

		$(".friendsBtn").on("click", function(){
			$(this).parent().parent().html("友達になりました").fadeOut("slow");
			location.reload(true);
		})

		$("next-btn").on("click", function(){
			$(this).hdie();
		})



});