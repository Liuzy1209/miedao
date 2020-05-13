$(function(){


	$.ajax({
		url: '/user/check_login.do',
		type: 'post',
		dataType: 'json',
		success: function (data) {
			if (data.data != null) {
				var orinode = document.getElementById("check-login01");
				var personalCenter = document.createElement("a");
				personalCenter.href = "personalCenter.jsp";
				var text = document.createTextNode("个人中心");
				personalCenter.appendChild(text);
				document.getElementById("check-login").replaceChild(personalCenter, orinode);


			} else {

			}
		}
	})


	var img_mask_info = $(".img-mask-info")
	// console.log(img_mask_info);
	img_mask_info.each(function(index, el) {
		var h = $(this).css("height")
		$(this).parent().parent().fadeOut('slow/400/fast', function() {});
	});
	var img_mask = $(".img-mask")
	img_mask.parent().mouseover(function(event) {
		$(this).find('.img-mask').stop().fadeIn('slow/400/fast', function() {});
	}).mouseout(function(event) {
		$(this).find('.img-mask').stop().fadeOut('slow/400/fast', function() {});
	});
	$(".wares-box .wares-info .wares .title").click(function(event) {
		/* Act on the event */
		location.href="http://127.0.0.1/deliciousFood/Purchases-Info.html"
	});
})