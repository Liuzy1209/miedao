<jsp:include page="path.jsp"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>购好货</title>
	<link rel="stylesheet" href="static/bootstrap/css/bootstrap.css">
	<link rel="stylesheet" href="static/swiper-4.5.0/dist/css/swiper.css">
	<script src="static/swiper-4.5.0/dist/js//swiper.js"></script>
	<script src="static/js/jquery-3.3.1.js"></script>
	<script src="static/bootstrap/js/bootstrap.js"></script>
	<link rel="stylesheet" href="static/css/public.css">
	<script src="static/js/public.js"></script>
	<link rel="stylesheet" href="static/css/menu.css">
	<script src="static/js/menu.js"></script>
</head>
<body>
	<header>
		<div class="container-fluid header_box" style="background-color: #11191b">
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-6">
					<div class="row row-left">
						<div class="pull-left logo">
							  <img src="static/image/public/logo.png" alt="">
						</div>
						<div class="pull-left"><a href="index.jsp">首页</a></div>
						<div class="pull-left"><a href="menu.jsp">菜谱</a></div>
						<div class="pull-left"><a href="note.jsp">笔记</a></div>
						<div class="pull-left">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								发布<b class="caret"></b>
							</a>

							<ul class="dropdown-menu">
								<li><a href="createMenu.jsp">发布菜谱</a></li>
								<li class="divider"></li>
								<li><a href="createNote.jsp">发布笔记</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-6">
					<div class="row">
						<div class="col-md-8 col-md-offset-2">
							<div class="row pull-right">
								<div class="pull-left" id="check-login">
									<a href="login.jsp" id="check-login01">登陆</a>
									|
									<a href="register.jsp">注册</a>
								</div>
								<div class="pull-left"><a href="about.jsp">关于豆果</a></div>
								<div class="pull-left"><a href="contact.jsp">联系豆子</a></div>
								<div class="pull-left">
									<!-- <input type="text" name="" id="search"> -->
									<button class='search'></button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
<!-- 我是邪恶的分割线 -->
	<section>
		<div class="recommend">
			<h4>推荐菜谱</h4>
		</div>
		<%--<div class="recom-img-box">
			<div class="img-left-box">
				<div class="img-box">
					<div class="img-mask">
						<div class="img-mask-int">
							<div class="img-mask-info">
								<p>看着可好吃了</p>
								<p>好想吃啊</p>
								<h4>吃不到啊</h4>
								<form action=""><input type="button" value="收藏"></form>
							</div>
						</div>
					</div>
					<img src="static/image/purchases/pur_01.png" alt="">
				</div>
				<div class="img-box">
					<div class="img-mask">
						<div class="img-mask-int">
							<div class="img-mask-info">
								<p>看着可好吃了</p>
								<p>好想吃啊</p>
								<h4>吃不到啊</h4>
								<form action=""><input type="button" value="收藏"></form>
							</div>
						</div>
					</div>
					<img src="static/image/purchases/pur_08.png" alt="">
				</div>
			</div>
			<div class="img-right-box">
				<div class="img-top-box">
					<div class="img-box">
						<div class="img-mask">
							<div class="img-mask-int">
								<div class="img-mask-info">
									<p>看着可好吃了</p>
									<p>好想吃啊</p>
									<h4>吃不到啊</h4>
									<form action=""><input type="button" value="收藏"></form>
								</div>
							</div>
						</div>
						<img src="static/image/purchases/pur_03.png" alt="">
					</div>
					<div class="img-box">
						<div class="img-mask">
							<div class="img-mask-int">
								<div class="img-mask-info">
									<p>看着可好吃了</p>
									<p>好想吃啊</p>
									<h4>吃不到啊</h4>
									<form action=""><input type="button" value="收藏"></form>
								</div>
							</div>
						</div>
						<img src="static/image/purchases/pur_05.png" alt="">
					</div>
				</div>
				<div class="img-bottom-box">
					<div class="img-box">
						<div class="img-mask">
							<div class="img-mask-int">
								<div class="img-mask-info">
									<p>看着可好吃了</p>
									<p>好想吃啊</p>
									<h4>吃不到啊</h4>
									<form action=""><input type="button" value="收藏"></form>
								</div>
							</div>
						</div>
						<img src="static/image/purchases/pur_09.png" alt="">
					</div>
				</div>
			</div>
		</div>--%>
		<div class="wares-box">
			<div class="wares-info">
				<div class="wares">
					<a href="menu-info.jsp?id='1'">
						<img src="static/image/purchases/pur-12.png" alt="">
						<p class="title" style="color: black">鸡蛋干蒜薹炒虾仁</p>
					</a>
					<%--<p class="monney">&yen;50.00</p>--%>
					<div class="chik-info">
						<p><img src="static/image/personalCenter/xiaokeai.jpg" style="width: 30px"> admin</p>
						<p><img src="static/image/other/like2.png" style="width: 12px">0</p>
					</div>
				</div>
				<%--<div class="wares">
					<img src="static/image/purchases/pur-10.png" alt="">
					<p class="title">大韩帝国 参鸡汤 喝了会死人 宇宙第一 世界是韩国的</p>
					<p class="monney">&yen;50.00</p>
					<div class="chik-info">
						<p>月售77件</p>
						<p>包邮</p>
					</div>
				</div>
				<div class="wares">
					<img src="static/image/purchases/pur-10.png" alt="">
					<p class="title">大韩帝国 参鸡汤 喝了会死人 宇宙第一 世界是韩国的</p>
					<p class="monney">&yen;50.00</p>
					<div class="chik-info">
						<p>月售77件</p>
						<p>包邮</p>
					</div>
				</div>
				<div class="wares">
					<img src="static/image/purchases/pur-10.png" alt="">
					<p class="title">大韩帝国 参鸡汤 喝了会死人 宇宙第一 世界是韩国的</p>
					<p class="monney">&yen;50.00</p>
					<div class="chik-info">
						<p>月售77件</p>
						<p>包邮</p>
					</div>
				</div>
			</div>
			<div class="wares-info">
				<div class="wares">
					<img src="static/image/purchases/pur-10.png" alt="">
					<p class="title">大韩帝国 参鸡汤 喝了会死人 宇宙第一 世界是韩国的</p>
					<p class="monney">&yen;50.00</p>
					<div class="chik-info">
						<p>月售77件</p>
						<p>包邮</p>
					</div>
				</div>
				<div class="wares">
					<img src="static/image/purchases/pur-10.png" alt="">
					<p class="title">大韩帝国 参鸡汤 喝了会死人 宇宙第一 世界是韩国的</p>
					<p class="monney">&yen;50.00</p>
					<div class="chik-info">
						<p>月售77件</p>
						<p>包邮</p>
					</div>
				</div>
				<div class="wares">
					<img src="static/image/purchases/pur-10.png" alt="">
					<p class="title">大韩帝国 参鸡汤 喝了会死人 宇宙第一 世界是韩国的</p>
					<p class="monney">&yen;50.00</p>
					<div class="chik-info">
						<p>月售77件</p>
						<p>包邮</p>
					</div>
				</div>
				<div class="wares">
					<img src="static/image/purchases/pur-10.png" alt="">
					<p class="title">大韩帝国 参鸡汤 喝了会死人 宇宙第一 世界是韩国的</p>
					<p class="monney">&yen;50.00</p>
					<div class="chik-info">
						<p>月售77件</p>
						<p>包邮</p>
					</div>
				</div>
			</div>
			<div class="wares-info">
				<div class="wares">
					<img src="static/image/purchases/pur-10.png" alt="">
					<p class="title">大韩帝国 参鸡汤 喝了会死人 宇宙第一 世界是韩国的</p>
					<p class="monney">&yen;50.00</p>
					<div class="chik-info">
						<p>月售77件</p>
						<p>包邮</p>
					</div>
				</div>
				<div class="wares">
					<img src="static/image/purchases/pur-10.png" alt="">
					<p class="title">大韩帝国 参鸡汤 喝了会死人 宇宙第一 世界是韩国的</p>
					<p class="monney">&yen;50.00</p>
					<div class="chik-info">
						<p>月售77件</p>
						<p>包邮</p>
					</div>
				</div>
				<div class="wares">
					<img src="static/image/purchases/pur-10.png" alt="">
					<p class="title">大韩帝国 参鸡汤 喝了会死人 宇宙第一 世界是韩国的</p>
					<p class="monney">&yen;50.00</p>
					<div class="chik-info">
						<p>月售77件</p>
						<p>包邮</p>
					</div>
				</div>
				<div class="wares">
					<img src="static/image/purchases/pur-10.png" alt="">
					<p class="title">大韩帝国 参鸡汤 喝了会死人 宇宙第一 世界是韩国的</p>
					<p class="monney">&yen;50.00</p>
					<div class="chik-info">
						<p>月售77件</p>
						<p>包邮</p>
					</div>
				</div>
			</div>
			<div class="wares-info">
				<div class="wares">
					<img src="static/image/purchases/pur-10.png" alt="">
					<p class="title">大韩帝国 参鸡汤 喝了会死人 宇宙第一 世界是韩国的</p>
					<p class="monney">&yen;50.00</p>
					<div class="chik-info">
						<p>月售77件</p>
						<p>包邮</p>
					</div>
				</div>
				<div class="wares">
					<img src="static/image/purchases/pur-10.png" alt="">
					<p class="title">大韩帝国 参鸡汤 喝了会死人 宇宙第一 世界是韩国的</p>
					<p class="monney">&yen;50.00</p>
					<div class="chik-info">
						<p>月售77件</p>
						<p>包邮</p>
					</div>
				</div>
				<div class="wares">
					<img src="static/image/purchases/pur-10.png" alt="">
					<p class="title">大韩帝国 参鸡汤 喝了会死人 宇宙第一 世界是韩国的</p>
					<p class="monney">&yen;50.00</p>
					<div class="chik-info">
						<p>月售77件</p>
						<p>包邮</p>
					</div>
				</div>
				<div class="wares">
					<img src="static/image/purchases/pur-10.png" alt="">
					<p class="title">大韩帝国 参鸡汤 喝了会死人 宇宙第一 世界是韩国的</p>
					<p class="monney">&yen;50.00</p>
					<div class="chik-info">
						<p>月售77件</p>
						<p>包邮</p>
					</div>
				</div>--%>
			</div>
		</div>
		<div class="page-number">
			<input type="button" value="1" class='page-btn'>
			<input type="button" value="2" class='page-btn'>
			<input type="button" value="3" class='page-btn'>
			<input type="button" value="4" class='page-btn'>
			<input type="button" value="&middot;&middot;&middot;" class='page-btn'>
			<input type="button" value="下一页">
			<input type="button" value="尾页">
		</div>
	</section>
<!-- 我是邪恶的分割线 -->
	<footer>
		<div class="footer-box container">
			<img class='dg-footer' src="static/image/public/dg-footer.png" alt="">
			<div class="footer-img-box">
				<img src="static/image/public/banner-footer.png" alt="" class="banner-footer">
			</div>
			<div class="row">
				<div class="pull-left about-full">
					<span>关于豆果</span>
					<ul>
						<li><a href="">公司简介</a></li>
						<li><a href="">联系我们</a></li>
						<li><a href="">意见反馈</a></li>
					</ul>
				</div>
				<div class="pull-left more-full">
					<span>更多合作,更多精彩</span>
					<div>
						<div class="pull-left">
							<ul>
								<li><a href="">公司简介</a></li>
								<li><a href="">联系我们</a></li>
								<li><a href="">意见反馈</a></li>
							</ul>
						</div>
						<div class="pull-left">
							<ul>
								<li><a href="">公司简介</a></li>
								<li><a href="">联系我们</a></li>
								<li><a href="">意见反馈</a></li>
							</ul>
						</div>
						<div class="pull-left">
							<ul>
								<li><a href="">公司简介</a></li>
								<li><a href="">联系我们</a></li>
								<li><a href="">意见反馈</a></li>
							</ul>
						</div>
						<div class="pull-left">
							<ul>
								<li><a href="">公司简介</a></li>
								<li><a href="">联系我们</a></li>
								<li><a href="">意见反馈</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
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
</body>
</html>
