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
	$.ajax({
		url: '/menu/find_all.do',
		type: 'post',
		dataType: 'json',
		success: function (data) {
			if (data.data != null) {
				var jsonlist = eval(data.data);
				console.log(jsonlist)
				for (a=0;a<jsonlist.length;a++){

					var jsonobj = jsonlist[a];

					var waresinfodiv = document.createElement("div");
					waresinfodiv.className = "wares-info";
					var waresdiv = document.createElement("div");
					waresdiv.className = "wares";
					var jump = document.createElement("a");
					jump.href = "menu-info.jsp?id="+jsonobj.m_id;
					var m_pic = document.createElement("img");
					m_pic.src = "http://localhost:8080/image/menu/"+jsonobj.m_pic;
					// console.log(jsonobj.m_pic)
					var title = document.createElement("p");
					title.className = "title";
					title.style = "color: black;";
					title.innerText = jsonobj.m_name;
					var chikdiv = document.createElement("div");
					chikdiv.className = "chik-info";
					var chikp = document.createElement("p");
					var i01 = document.createElement("i");
					i01.innerText = jsonobj.m_remark;
					var author = document.createElement("img");
					author.src = jsonobj.u_pic;
					author.style = "width: 30px;";

					var chikp02 = document.createElement("p");
					var i02 = document.createElement("i");
					i02.innerText = jsonobj.m_likes;
					var like = document.createElement("img");
					like.src = "static/image/other/like2.png";
					like.style = "width: 12px;margin-right: 10px;margin-bottom: 2px";

					if (a%4==0){
						waresinfodiv.id = "wares-info"+parseInt(a%4);

						document.getElementById("box").appendChild(waresinfodiv)
						waresinfodiv.appendChild(waresdiv)
						waresdiv.appendChild(jump)
						jump.appendChild(m_pic)
						jump.appendChild(title)
						waresdiv.appendChild(chikdiv)
						chikdiv.appendChild(chikp)
						chikp.appendChild(author)
						chikp.appendChild(i01)

						chikdiv.appendChild(chikp02)
						chikp02.appendChild(like)
						chikp02.appendChild(i02)

					}else {
						document.getElementById("wares-info"+parseInt(a/4)).appendChild(waresdiv)
						waresdiv.appendChild(jump)
						jump.appendChild(m_pic)
						jump.appendChild(title)
						waresdiv.appendChild(chikdiv)
						chikdiv.appendChild(chikp)
						chikp.appendChild(author)
						chikp.appendChild(i01)

						chikdiv.appendChild(chikp02)
						chikp02.appendChild(like)
						chikp02.appendChild(i02)
					}


				}

			} else {

			}
		}
	})



	/*var img_mask_info = $(".img-mask-info")
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
		/!* Act on the event *!/
		location.href="http://127.0.0.1/deliciousFood/Purchases-Info.html"
	});*/
})

