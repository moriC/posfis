$(function() {
		/******************
		* +-での文字サイズの変更
		******************/
		
			$(".plus").click(function(){
				$("body").css("font-size","120%");
				$container.masonry("reload");
			})
			
			$(".minus").click(function(){
				$("body").css("font-size","13px");
				$container.masonry("reload");
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
		
		$(".newFriends p a").click(function(){
			$(this).parent().parent().html("友達になりました").fadeOut("slow");
			location.reload();
		})
		
		$("next-btn").click(function(){
			location.reload();
		})
		
		/******************
		* jQuery.masonry
		******************/	
			var $container = $('.container');
			$container.imagesLoaded(function(){
				$container.masonry({
					itemSelector: '.item',
					isAnimated: true,
					duration: 4000,
					columnWidth: 200,
					isFitWidth: true
				});
			});

});