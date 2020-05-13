<jsp:include page="path.jsp"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>豆果美食-首页</title>
	<link rel="stylesheet" href="static/bootstrap/css/bootstrap.css">
	<link rel="stylesheet" href="static/swiper-4.5.0/dist/css/swiper.css">
	<script src="static/swiper-4.5.0/dist/js//swiper.js"></script>
	<script src="static/js/jquery-3.3.1.js"></script>
	<script src="static/bootstrap/js/bootstrap.js"></script>
	<script src="static/js/index.js"></script>
	<link rel="stylesheet" href="static/css/login.css">
	<%--<script src="static/js/login.js"></script>--%>
</head>
<body>
	<header>
		<div class="container-fluid header_box">
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-6">
					<div class="row row-left">
						<div class="pull-left logo">
							  <img src="static/image/public/logo.png" alt="">
						</div>
						<div class="pull-left"><a href="index.jsp">首页</a></div>
						<div class="pull-left"><a href="about.jsp">关于豆果</a></div>
						<div class="pull-left"><a href="contact.jsp">联系豆子</a></div>

					</div>
				</div>

				<div class="col-md-6 col-sm-6 col-xs-6">
					<div class="row">
						<div class="col-md-8 col-md-offset-2">
							<div class="row pull-right">
								<div class="pull-left">
									<a href="login.jsp"  class="current-state">登陆</a>
									|
									<a href="register.jsp" >注册</a>
								</div>


							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="login">
			<div class="row">
				<div class="row-left col-md-6 col-xs-6 col-sm-6">
					<form class="form-inline" action="/user/login.do" type="post">
						<div class="text-center"><a href="">登陆</a></div>
						手机号：<input type="tel" id="u_phone" name="u_phone" style="width: 180px" class="form-control" placeholder="手机号"><br/>
						密码：<input type="password" id="u_password" name="u_password" style="width: 180px" class="form-control" minlength="3" placeholder="密码">
						<%--<div class="forgetpwd">
							<div>
								<input  class="next" type="checkbox" checked>
								<span>下次自动登陆</span>
							</div>
							<a href="forgetpwd-login.jsp">忘记密码？</a>
						</div>--%>

						<button type="button" onclick="login()" class="btn  btn-default login-btn">登陆</button>
					</form>

				</div>

				<div class="row-right col-md-6  col-xs-6 col-sm-6 ">
					<div class="text-center"><a href="register.jsp">注册</a></div>
					<div class="text-center"><img src="static/image/login/orc.png"></div>
					<h5 class="text-center">下载手机APP注册</h5>
				</right>
			</div>
		</div>
	</header>
	<footer>
		<div class="footer-box container">
			<p>
				<a href="">关于豆果</a>
				|
				<a href="">联系豆子</a>
				|
				<a href="">意见反馈</a>
				|
				<a href="">友情链接</a>
				|
				<a href="">菜谱大全</a>
			</p>
			<p class='copy'>
				2009-2017 北京豆果信息技术有限公司 京ICP证111032号 京公安网安备11010102001133号 京网文[2014]0774-174号 食品流通许可证SP1101061510252413
			</p>
		</div>
	</footer>

	<script type="text/javascript">
		function login() {
			var u_phone =$("#u_phone").val();
			var u_password =$("#u_password").val();
			if (u_phone == '' || u_phone == null){
				alert("未填写手机号！")
			}else if (u_password == '' || u_password == null){
				alert("未填写密码！")
			}else {
				$.ajax({
					url: '/user/login.do',
					data: {
						'u_phone': u_phone,
						'u_password': u_password
					},
					type : 'post',
					dataType: 'json',
					success: function (data) {
						if (data.data == 1){
							window.location.href = "index.jsp";
						}else if (data.data==2){
							alert("密码错误！");
						}else {
							alert("该手机号尚未被注册！");
						}
					}
				})
			}

		}
	</script>

</body>
</html>
