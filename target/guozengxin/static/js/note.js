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