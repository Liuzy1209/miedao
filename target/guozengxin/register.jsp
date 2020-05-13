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
	<script src="static/js/jquery.validate.js"></script>
	<script src="static/js/messages_zh.js"></script>
	<script src="static/bootstrap/js/bootstrap.js"></script>
	<script src="static/js/index.js"></script>
	<link rel="stylesheet" href="static/css/register.css">
	<%--<script src="static/js/register.js"></script>--%>
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
									<a href="login.jsp" >登陆</a>
									|
									<a href="register.jsp" class="current-state">注册</a>
								</div>
								<%--<div class="pull-left"><a href="personalCenter.html">个人中心</a></div>
								<div class="pull-left"><a href="releaseMenu.html">发布</a></div>--%>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="register container-fluid" style="height: 350px">
			<div class="row">
				<div class="row-left col-md-6 col-xs-6 col-sm-6">
					<form class="form-inline" id="f1" action="/user/register.do" method="post">
						<div class="text-center"><a href="">注册</a></div>
						手机号：<input type="tel" style="width: 180px" id="u_phone" name="u_phone" class="form-control" placeholder="手机" required pattern="^1[3-9]\d{9}$"><br/>
						昵  称：<input type="text" style="width: 180px" id="u_name" name="u_name" class="form-control" placeholder="昵称"><br/>
						密  码：<input type="password" style="width: 180px" id="u_password" name="u_password" class="form-control" placeholder="密码" minlength="3"><br/>
						验证码：<input type="text" style="width: 80px" name="check" class="form-control" placeholder="验证码" minlength="4">
						<button class="btn btn-default check-code">获取验证码</button><br/>
						<button type="button" onclick="register()" class="btn  btn-default register-btn">注册</button>
					</form>
				</div>

				<div class="row-right col-md-6  col-xs-6 col-sm-6 ">
					<div class="text-center"><a href="login.jsp">登陆</a></div>
					<div class="text-center"><img src="static/image/login/orc.png"></div>
					<h5 class="text-center">下载手机APP注册</h5>
				</div>
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
		function register() {
			var u_phone =$("#u_phone").val();
			var u_name =$("#u_name").val();
			var u_password =$("#u_password").val();
			//alert(u_phone)
			if (u_phone == '' || u_phone == null){
				alert("未填写手机号！")
			}else if (u_name == '' || u_name == null){
				alert("未填写昵称！")
			}else if (u_password == '' || u_password == null){
				alert("未填写密码！")
			}else {
				$.ajax({
					url: '/user/register.do',
					data: {
						'u_phone': u_phone,
						'u_name': u_name,
						'u_password': u_password
					},
					type : 'post',
					dataType: 'json',
					success: function (data) {
						if (data.data == null){
							alert("注册成功！")
							window.location.href = "login.jsp";
						}else {
							alert("该手机号已被注册！")
						}
					}
				})
			}
		}
	</script>
</body>
</html>
