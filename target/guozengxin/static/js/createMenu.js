$(function() {
	$.ajax({
		url: '/user/check_login.do',
		type: 'post',
		dataType: 'json',
		success: function (data) {
			if (data.data != null) {
				var orinode = document.getElementById("check-login01");
				var personalCenter = document.createElement("a");
				personalCenter.href = "personalCenter.jsp";
				personalCenter.setAttribute('style','color:white');
				var text = document.createTextNode("个人中心");
				personalCenter.appendChild(text);
				document.getElementById("check-login").replaceChild(personalCenter, orinode);


			} else {

			}
		}
	})
})




var isSub = 0;
var prefix = "https://vplay.douguo.com/";
var dragElement = null;
window.isUpload = false;
//移动元素
function movefile(ev,fileId) {
	var oEvent = ev || event;
	var oDiv = document.getElementById(fileId);

	var scrollTop=document.documentElement.scrollTop || window.pageYOffset || document.body.scrollTop;
	var scrollLeft=document.documentElement.scrollLeft || window.pageXOffset || document.body.scrollLeft;

	oDiv.style.left = scrollLeft + oEvent.clientX + 'px';
	oDiv.style.top = scrollTop + oEvent.clientY + 'px';
};
function moveStepFile(ev,fileId,ele) {
	if(window.isUpload){
		return false;
	}
	window.selectEle = $(ele).parent();
	var oEvent = ev || event;
	var oDiv = document.getElementById(fileId);
	//屏幕滚动的距离
	var scrollTop=document.documentElement.scrollTop || window.pageYOffset || document.body.scrollTop;
	var scrollLeft=document.documentElement.scrollLeft || window.pageXOffset || document.body.scrollLeft;

	oDiv.style.left = scrollLeft + oEvent.clientX + 'px';
	oDiv.style.top = scrollTop + oEvent.clientY + 'px';
};
//删除草稿
function del(cookid, obj) {
	var num = "0";
	var token = $('#_token').val();
	if (confirm('确定要删除吗?删除后将不可恢复')) {
		$.ajax({
			type: "post",
			url: "/draft/del",
			data: {draft_id: cookid, type: 'recipe', _token: token},
			dataType: "json",
			success: function (res) {
				if (res.msg === "删除成功") {

					if (($(".shannum").html() - 0) > 1) {
						$(".shannum").html($(".shannum").html() - 1)
					} else {
						$(".caogao").hide()
					}
					obj.parent().remove()
				}
			}
		})
	}
}

//刷新验证码
function refreshcode() {
	$(".codeImg").attr("src", "/captcha?t" + (new Date()).getTime());
}
function changecover(){
	showUp(".upnow");
	uploadCoverImg()
}
$(window).load(function () {
	// var options = {
	//     handle: ['.icross','.loading','.upimgsucc','.buzhou'],
	//     animation: 100
	// }
	//
	// Sortable.create(step, options);
	$(".muti").click(function () {
		if ($('.sydimg').is(':visible')) {
			$('.sydimg').hide()
			$('#jiaotou').html('>>')
		} else {
			$('.sydimg').show()
			$('#jiaotou').html('<<')
		}
	})
	window.selectEle = null
	if ($("#moreImg")[0].files) {
		$(".piliang-btn").css("display","inline-block");
		$(".piliang").show()
	}
	//上传封面图

	/*$("#coverImageUrl").on("change",function () {
        alert("666");
        showUp(".upnow");
        uploadCoverImg()
    });*/
	//上传步骤图片
	/*$("#buzhou-file").change(function () {
        uploadBuZhouImg()
    })*/
	//上传视频
	/*$("#vidoeFile").change(function () {
        uploadVideo()
    })*/
	//点击最后一个添加主料
	$(".zl-list").click(function (e) {
		if ($(e.target).parent()[0] === $(".zl-list .mct")[$(".zl-list .mct").length - 1] && $(e.target).attr("name") === "zhuliao[]") {
			addZhuLiao('')
		}
	})
	//点击最后一个添加辅料
	/*$(".fl-list").click(function (e) {
        if ($(e.target).parent()[0] === $(".fl-list .mct")[$(".fl-list .mct").length - 1] && $(e.target).attr("name") === "fuliao[]") {
            addFuLiao()
        }
    })*/
	//点击最后一个添加步骤
	$(".step-list").click(function (e) {
		if ($(e.target).parent().parent()[0] === $(".nsetp")[$(".nsetp").length - 1]) {
			addBuZhou()
		}
	});

	$("#reup").click(function () {
		$("#vidoeFile").click()
		$(".video-more").hide()
		$(".upload-video").show()
	})
	$("#delup").click(function () {
		$('#video').val('')
		$("#src_url").val('')
		$("#pickv").show()
		$(".video-more").hide()
	})
})
function dragstartNsetp(that){
	dragElement = that;
}
function dragenterNsetp(that){
	if(dragElement != that){
		if(that == that.parentNode.lastElementChild || that == that.parentNode.lastChild){
			that.parentNode.appendChild(dragElement);
		}else{
			that.parentNode.insertBefore(dragElement,that);
		}
	}
}
function dragleaveNsetp(that){

}
document.ondragover = function(e){e.preventDefault();}
document.ondrop = function(e){e.preventDefault();}


//上传封面图
var url = null;
function uploadCoverImg() {


	var fileObj = document.getElementById("coverImageUrl").files[0];
	if (window.createObjcectURL != undefined) {
		url = window.createOjcectURL(fileObj);
	} else if (window.URL != undefined) {
		url = window.URL.createObjectURL(fileObj);
	} else if (window.webkitURL != undefined) {
		url = window.webkitURL.createObjectURL(fileObj);
	}
	console.log(url)

	var image = [];
	image.actual_url = url;
	image.image_url = url;
	hideUP(".upnow")
	$("#coverImageUrl").val("")
	setUrl($("#coverImgUrl"), url);
	$(".upsucc").css({'background':'url('+url+') no-repeat center center','backgroundSize':'cover'});
	showUp(".upsucc");
	draft();


}

//存草稿
function draft() {
	(function () {
		var steptext = $(".steptext");
		steptext.each(function (index, item) {
			if ($(item).val() === '这道菜背后的故事～(选填)') {
				$(item).val("")
			}
		});
		$(".draft-tip").show().find("span").html("已保存到云端");
		/*$.ajax({
			url: "/cgcook/upfoodDataCg",
			data: $("#upfood").serialize(),
			type: "post",
			success: function (res) {
				$("#draft_id").val(res.data.id);
				$(".draft-tip").show().find("span").html("已保存到云端");
			}
		})*/
	}())
}

//存草稿
function draft2() {
	(function () {
		var steptext = $(".steptext");
		steptext.each(function (index, item) {
			if ($(item).val() === '这道菜背后的故事～(选填)') {
				$(item).val("")
			}
		});
		$.ajax({
			url: "/cgcook/upfoodDataCg",
			data: $("#upfood").serialize(),
			type: "post",
			success: function (res) {
				tip({text: "保存成功"})
				// window.location.reload()
				var li = document.createElement("li");
				li.innerHTML = '<a href="/cgcook/cgedit/' + res.data.id + '">' +
					'<h2>' + $("#cook_name").val() + '</h2>' +
					'<p>上传于刚刚</p>' +
					'</a>' +
					'<i onclick="del(' + res.data.id + ',$(this))"></i>' +
					'</li>'
				$(".list ul").append(li)
				$(".shannum").html(($(".shannum").html() - 0) + 1)
				$(".caogao").show()
				/*if (res.errcode === 0) {
					tip({text: "保存成功"})
					// window.location.reload()
					var li = document.createElement("li");
					li.innerHTML = '<a href="/cgcook/cgedit/' + res.data.id + '">' +
						'<h2>' + $("#cook_name").val() + '</h2>' +
						'<p>上传于刚刚</p>' +
						'</a>' +
						'<i onclick="del(' + res.data.id + ',$(this))"></i>' +
						'</li>'
					$(".list ul").append(li)
					$(".shannum").html(($(".shannum").html() - 0) + 1)
					$(".caogao").show()
					$("#draft_id").val(res.data.id);
				}*/
			}
		})
	}())
}

function onfocus(event) {
	if (this.value == '菜谱名称') {
		this.value = '';
		$(this).addClass('fcbm');
	}
}
function onblur(event) {
	if (!this.value) {
		this.value = '菜谱名称';
		$(this).removeClass('fcbm');
	}
	draft();
}


//添加主料
function addZhuLiao(el) {
	var mct = document.createElement("div");
	mct.setAttribute("class", "mct clearfix");
	/*mct.innerHTML = '<input type="text" class="liaoext zhuliao fcbm" name="zhuliao[]" value="" /><input type="text" class="liangext fcbm" name="zhuliaoValue[]" value="" /><a href="javascript:void(0);" class="wrng" onclick="deleteThisEle(this)"></a>';*/
	mct.innerHTML = '<input type="text" class="liaoext zhuliao fcbm" name="zhuliao[]" value=""/><input type="text" class="liangext fcbm" name="zhuliaoValue[]" value=""/><a href="javascript:void(0);" class="wrng" onclick="deleteThisEle(this)"></a>';
	if(el){
		el.after(mct);
	}else{
		$(".zl-list").append(mct);
	}
}

//添加辅料
/*function addFuLiao() {
    var mct = document.createElement("div");
    mct.setAttribute("class", "mct clearfix");
    mct.innerHTML = '<input type="text" class="liaoext fuliao fcbm" name="fuliao[]" value="" /> <input type="text" class="liangext fcbm" name="fuliaoValue[]" value="" /><a href="javascript:void(0);" class="wrng" onclick="deleteThisEle(this)"></a>';
    $(".fl-list").append(mct)
}*/

//删除这个节点
function deleteThisEle(ele) {
	$(ele).parent().remove()
}

function resetBuzhou(ele) {
	$('#buzhou-file').click();
	window.selectEle = $(ele).parent().parent()
}

//添加步骤
function addBuZhou(url, actual_url,ele) {
	url = url || "";
	actual_url = actual_url || "";

	var buzhou, opreate, deleteEle, icross, loading, upimgsucc, bzmw;
	if (url) {
		buzhou = document.createElement("li");
		buzhou.setAttribute("class", "nsetp clearfix");
		// buzhou.setAttribute("draggable", true);
		// buzhou.setAttribute("ondragstart", "dragstartNsetp(this)");
		// buzhou.setAttribute("ondragenter", "dragenterNsetp(this)");
		// buzhou.setAttribute("ondragleave", "dragleaveNsetp(this)");

		opreate = ' <a href="javascript:void(0);" class="up" onclick="moveUp(this,\'nsetp\')"></a><a href="javascript:void(0);" class="down" onclick="moveDown(this,\'nsetp\')"></a><a href="javascript:void(0);" class="add" onclick="addBuZhou(null,null,$(this).parent())"></a>';
		deleteEle = '<a href="javascript:void(0);" class="wrng" onclick="deleteThisEle(this)"></a>';
		icross = '<div class="icross" onmousemove="moveStepFile(event,\'buzhou-file\',this)" style="display: none;">添加步骤图</div>';
		loading = '<div class="loading" style="display: inline-block;"> 正在上传…</div>';
		upimgsucc = '<div class="upimgsucc" style="display: block"><img src="' + url + '" /><input type="text" name="setpImages[]" class="buzhou" value="' + actual_url + '"><button type="button" onclick="resetBuzhou(this)"></button></div>';
		bzmw = '<div class="bzmw mrs"><textarea name="setpInfos[]"class="steptext" ></textarea>\n</div>';
		buzhou.innerHTML = opreate + deleteEle + icross + loading + upimgsucc + bzmw;

	} else {
		buzhou = document.createElement("li");
		buzhou.setAttribute("class", "nsetp clearfix");
		// buzhou.setAttribute("draggable", true);
		// buzhou.setAttribute("ondragstart", "dragstartNsetp(this)");
		// buzhou.setAttribute("ondragenter", "dragenterNsetp(this)");
		// buzhou.setAttribute("ondragleave", "dragleaveNsetp(this)");
		opreate = ' <a href="javascript:void(0);" class="up" onclick="moveUp(this,\'nsetp\')"></a><a href="javascript:void(0);" class="down" onclick="moveDown(this,\'nsetp\')"></a><a href="javascript:void(0);" class="add" onclick="addBuZhou(null,null,$(this).parent())"></a>';
		deleteEle = '<a href="javascript:void(0);" class="wrng" onclick="deleteThisEle(this)"></a>';
		icross = '<div class="icross" onmousemove="moveStepFile(event,\'buzhou-file\',this)">添加步骤图</div>';
		loading = '<div class="loading"> 正在上传…</div>';
		upimgsucc = '<div class="upimgsucc"><img src="' + url + '"/><input type="text" name="setpImages[]" class="buzhou" value= ""><button type="button" onclick="resetBuzhou(this)"></button></div>';
		bzmw = '<div class="bzmw mrs"><textarea name="setpInfos[]"class="steptext"></textarea>\n</div>';
		buzhou.innerHTML = opreate + deleteEle + icross + loading + upimgsucc + bzmw;
	}
	if(ele){
		ele.after(buzhou)
	}else{
		$(".step-list").append(buzhou)
	}

}

//前移
function moveUp(ele,parentclass) {
	var allNsetp = $("."+parentclass);
	if ($(ele).parent()[0] === allNsetp[0]) {
		return false;
	} else {
		var newEle = $(ele).parent().clone(true);
		deleteThisEle(ele);
		allNsetp.each(function (index, item) {
			if ($(ele).parent()[0] == item) {
				$($(allNsetp[index - 1])).before(newEle[0]);
			}
		})
	}

}

//后移
function moveDown(ele,parentclass) {
	var allNsetp = $("."+parentclass);
	if ($(ele).parent()[0] === allNsetp[allNsetp.length - 1]) {
		return false;
	} else {
		var newEle = $(ele).parent().clone(true);
		deleteThisEle(ele);
		allNsetp.each(function (index, item) {
			if ($(ele).parent()[0] == item) {
				$($(allNsetp[index + 1])).after(newEle[0]);
			}
		})
	}
}

//设置获取焦点时textarea内容
function setFoucsText(that) {
	if (that.value === '这道菜背后的故事～(选填)') {
		that.value = '';
		$(that).addClass('fcbm');
	}
}

//设置离开焦点是textarea内容
function setBlurText(that) {
	if (!that.value) {
		that.value = '这道菜背后的故事～(选填)';
		$(that).removeClass('fcbm');
	}
}

//上传图片成功设置input的值为图片地址
function setUrl(ele, url) {
	ele.val(url)
}

// 显示加载状态
function showUp(eleClass) {
	$(eleClass).show()
}

// 隐藏加载状态
function hideUP(eleClass) {
	$(eleClass).hide()
}

//选择步骤图
function upload(ele) {
	window.selectEle = $(ele).parent()
	$('#buzhou-file').click()
}

//上传步骤图
function uploadBuZhouImg() {
	window.isUpload = true;
	window.selectEle.children(".loading").show();
	$.ajaxFileUpload(
		{
			url: '/upload/image',
			// type: "post",
			data: {type: 6,'size':'200', '_token': "7SNOMgQtWfwQ2IGIMzJm70kA1mdIAfE4GUBobuNY"},
			secureuri: false,
			fileElementId: 'buzhou-file',
			dataType: 'json',
			success: function (res) {
				if(res.errcode=="10000"){
					tip({text: res.msg + "请更换图片后重试！",time: 2500})
				}
				var image = res.data.success[0];
				upBuZhouSuccess(image)
			},
			error: function (res) {
				$("#buzhou-file").val("");
				window.isUpload = false;
				window.selectEle.children(".loading").hide();
			}
		});
}

//上传步骤图成功的回调函数
function upBuZhouSuccess(data) {
	window.selectEle.children(".loading").hide();
	$("#buzhou-file").val("");
	if (data['image_url'] === undefined) {
		tip({text: "上传失败！！"})
		window.isUpload = false;
	} else {
		window.selectEle.children(".upimgsucc").children(".buzhou").val(data["actual_url"]);
		window.selectEle.children(".upimgsucc").children("img").attr("src", data["image_url"]);
		window.selectEle.children(".upimgsucc").show();
		window.isUpload = false;
		draft();
	}
}



//显示进度
function showPercent(percent) {
	console.log("走到展示进度了"+percent)
	if(percent<=99){
		$(".upload-video").html("已上传" + percent + "%");
	}
}

// 上传
function release() {
	isSub = 1;
	var cook_id = $('#cook_id').val();
	if (cook_id > 0) {
		$("#upfood").attr("action", "/recipe/upEditFoodData");
	} else {
		$("#upfood").attr("action", "/recipe/upFoodData");
	}
	sessionStorage.removeItem("cook_menu");
	$("#upfood").submit();
	setTimeout(function(){
		$('.submit').html('发布');
		isSub = 0;
	},3000);
}



//验证信息
function checkCover() {
	if ($("#coverImgUrl").val()==null) {
		alert("请选择封面图")
		return false
	}
	return true
}

function checkTitlt() {
	if ($("#cook_name").val() === "菜谱名称") {
		alert("请输入菜谱名称")
		return false
	}
	return true
}

function checkZhuLiao() {
	var zhuliao = [];
	$(".zhuliao").each(function (index, item) {
		if ($(item).val() !== "如:五花肉" && $.trim($(item).val()) !== "") {
			zhuliao.push($(item).val())
		}
	})
	if (zhuliao.length <= 0) {
		tip({text: "请选择主料"})
		return false
	}
	return true
}

/*function checkFuLiao() {
    var fuliao = [];
    $(".fuliao").each(function (index, item) {
        if ($(item).val() !== "如:五花肉" && $.trim($(item).val()) !== "") {
            fuliao.push($(item).val())
        }
    })
    if (fuliao.length <= 0) {
        tip({text: "请选择主料"})
        return false
    }
    return true
}*/

function checkBuZhou() {
	var buzhou = [];
	$(".buzhou").each(function (index, item) {
		if ($(item).val() !== "") {
			buzhou.push($(item).val())
		}
	});
	if (buzhou.length <= 0) {
		tip({text: "请上传步骤图"})
		return false
	}
	return true
}

/*function Check(){
	var m_material01 = document.getElementById("m_material01").value;
	var m_material02 = document.getElementById("m_material02").value;
	if (m_material01 == "" || m_material01.value == null ) {
		alert("请输入食材");
	}else if (m_material02 == "" || m_material02.value == null ){
		alert("请输入用量");
	}
}*/


function checkArtinfo() {
	var m_pic = url;
	console.log(m_pic)
	var m_name =$("#cook_name").val();
	console.log(m_name)
	var m_step =$("#m_step").val();
	console.log(m_step)
	var m_summary =$("#m_summary").val();
	console.log(m_summary)
	var zhuliao = $("div input[name='zhuliao[]']").serialize();
	zhuliao = decodeURIComponent(zhuliao,true);
	var zhuliaoarr = zhuliao.split("&")
	//console.log(zhuliaoarr)
	var zhuliaoValue = $("div input[name='zhuliaoValue[]']").serialize();
	zhuliaoValue = decodeURIComponent(zhuliaoValue,true);
	var zhuliaoValuearr = zhuliaoValue.split("&")
	//console.log(zhuliaoValuearr)
	var m_material = [];
	for (var a=0;a<zhuliaoarr.length;a++){
		m_material.push(zhuliaoarr[a].substring(10))
		m_material.push(zhuliaoValuearr[a].substring(15))
	}
	m_material.join("@");
	console.log(m_material)
	if (m_pic == '' || m_pic == null){
		alert("请选择封面图")
	}else if (m_name == '' || m_name == null || m_name == '菜谱名称'){
		alert("请填写菜谱名称")
	}else if (m_step == '' || m_step == null){
		alert("请填写步骤")
	}else {
		$.ajax({
			url: '/user/check_login.do',
			type : 'post',
			dataType: 'json',
			success: function (data) {
				if (data.data != null){
					console.log("=====")
					$.ajax({
						url: '/menu/save.do',
						type : 'post',
						traditional: true,
						data: {
							'm_pic': m_pic,
							'm_name': m_name,
							'm_step': m_step,
							'm_summary': m_summary,
							'm_material': m_material,
							'm_likes': 0,
							'u_id': data.data.u_id,
							'u_pic': data.data.u_pic,
						},
						dataType: 'json',
						success: function (data) {
							if (data.data == 1){
								alert("上传成功")
							}else {
								alert("上传失败")
							}
						}
					})
				}else {
					alert("请先登录！")
				}
			}
		})
	}

}

document.getElementsByClassName('strtext')[0].addEventListener('paste',function(e){
	if ( !(e.clipboardData && e.clipboardData.items) ) {
		return;
	}

	var item = e.clipboardData.items[0];

	if (item.kind === "string") {
		item.getAsString(function (str) {
			document.getElementsByClassName('strtext')[0].value = document.getElementsByClassName('strtext')[0].value.replace(str,' '+str+' ');
			// console.log(document.getElementsByClassName('strtext')[0].value);
		})
	}
});

$(".mlist").on("blur","input[type='text']",function(){
	draft();
});
$("#step").on("blur",".steptext",function(){
	draft();
})

// var netstatus = 0;
var nettimer=setInterval(function(){
	var imgPath = "https://cp1.douguo.com/upload/photo/9/d/b/u13650692105313.jpeg";
	var timeStamp = Date.parse(new Date());
	$("#img-net").attr("src", imgPath + "?timestamp=" + timeStamp);
}, 5000);

$("#img-net").on("error",function(){
	clearInterval(nettimer);
	$("#netMotai").show();
	$(".draft-tip span").show().html("离线状态无法同步");
})



