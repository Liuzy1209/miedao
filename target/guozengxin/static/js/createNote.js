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



function refreshcode() {
    $(".codeImg").attr("src", "/captcha?t" + (new Date()).getTime());
}
function tijiao() {
    var n_pic = url;
    var n_remark =$("#n_remark").val();
    if (n_pic == '' || n_pic == null){
        alert("请选择封面图")
    }else if (n_remark == ''|| n_remark == null){
        alert("请填写文字")
    }else {
        $.ajax({
            url: '/user/check_login.do',
            type : 'post',
            dataType: 'json',
            success: function (data) {
                console.log(data.data.u_pic)
                if (data.data != null){
                    console.log("=====")
                    $.ajax({
                        url: '/note/save.do',
                        type : 'post',
                        traditional: true,
                        data: {
                            'n_pic': n_pic,
                            'n_likes': 0,
                            'u_id': data.data.u_id,
                            'u_pic': data.data.u_pic,
                            'n_remark': n_remark
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
var url = null;
function showImg() {
    loading();

    var fileObj = document.getElementById("image").files[0];
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
    loaded();
    $(".img-box img").attr("src", image.image_url);
    $(".img-box").show()
    $('input[name="cover"]').val(image.actual_url)
    $('input[name="cover_width"]').val("200px")
    $('input[name="cover"]').val(image.actual_url)
    $('input[name="cover_height"]').val("150px")

}
//显示加载中
function loading() {
    $(".loading").show()
}

//加载完成隐藏
function loaded() {
    $(".loading").hide()
}
// 重新选择图片
function deleteImgBox() {
    $("input[name='img-url']").val("");
    $(".img-box").hide();
    $(".upload-box input").val("")
}


