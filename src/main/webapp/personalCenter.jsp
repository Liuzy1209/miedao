<jsp:include page="path.jsp"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>豆果美食-首页</title>
    <link rel="stylesheet" href="static/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="static/swiper-4.5.0/dist/css/swiper.css">
    <script src="static/swiper-4.5.0/dist/js//swiper.js"></script>
    <script src="static/js/jquery-3.3.1.js"></script>
    <script src="static/bootstrap/js/bootstrap.js"></script>
    <script src="static/js/public.js"></script>
    <script src="static/js/personalCenter.js" charset="UTF-8"></script>
    <link rel="stylesheet" href="static/css/public.css">
    <link rel="stylesheet" href="static/css/personalCenter.css">


</head>
<body>
<header>
    <%--<div class="swiper-container">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <img src="static/image/public/index-banner.png" alt="">
            </div>
            <div class="swiper-slide">
                <img src="static/image/public/index-banner.png" alt="">
            </div>
            <div class="swiper-slide">
                <img src="static/image/public/index-banner.png" alt="">
            </div>
            <div class="swiper-slide">
                <img src="static/image/public/index-banner.png" alt="">
            </div>
            <div class="swiper-slide">
                <img src="static/image/public/index-banner.png" alt="">
            </div>
        </div>
        <!-- Add Pagination -->
        <div class="swiper-pagination"></div>
    </div>--%>
    <div class="container-fluid header_box" style="background-color: #11191b">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-6">
                <div class="row row-left">
                    <div class="pull-left logo">
                        <img src="static/image/public/logo.png" alt="">
                    </div>
                    <div class="pull-left"><a href="index.jsp" style="color: white">首页</a></div>
                    <div class="pull-left"><a href="menu.jsp" style="color: white">菜谱</a></div>
                    <div class="pull-left"><a href="" style="color: white">笔记</a></div>
                    <div class="pull-left">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white">
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
                            <div class="pull-left">
                                <%--<a href="" style="color: white">登陆</a>--%>

                                <a href="register.jsp" style="color: white">注册</a>
                            </div>
                            <div class="pull-left"><a href="about.jsp" style="color: white">关于豆果</a></div>
                            <div class="pull-left"><a href="contact.jsp" style="color: white">联系豆子</a></div>
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
<div id="content" class="clearfix">
    <div class="person-info clearfix mt30">
        <a href="/u/u88731304396065.html"
           style="background:  no-repeat center center;background-size:cover;"
           id="u-pic"
           class="person-img left">

        </a>
        <div class="info left">
            <a class="nickname" id="nickname"></a>

            <p class="intro">
                <span></span>
            </p>
        </div>
        <div class="right">
            <div class="fav-fans">
                <div class="left">
                    <a href="http://www.douguo.com/u/u88731304396065/friends">
                        <p class="count"> 0 </p>
                        <p class="text">关注</p>
                    </a>
                </div>
                <div class="left">
                    <a href="http://www.douguo.com/u/u88731304396065/fans">
                        <p class="count"> 0 </p>
                        <p class="text">粉丝</p>
                    </a>
                </div>
                <div class="left">
                    <a href="http://www.douguo.com/u/u88731304396065/recipe">
                        <p class="count"> 0 </p>
                        <p class="text">菜谱</p>
                    </a>
                </div>
                <div class="left">
                    <a href="http://www.douguo.com/u/u88731304396065/dish">
                        <p class="count"> 0 </p>
                        <p class="text">笔记</p>
                    </a>
                </div>
            </div>
        </div>
    </div>


    <div class="type-head clearfix">
        <a href="/u/u88731304396065/recipe">菜谱</a>
        <a href="/u/u88731304396065/caidan">菜单</a>
        <a href="/u/u88731304396065/dish">笔记</a>
        <a href="/u/u88731304396065/collect">收藏</a>
    </div>
    <h3 class="not-menu">暂无数据～</h3>
    <p class="fcc" style="padding-top:60px;">
        你当前的位置：<a href="/" target="_blank">豆果美食</a> &gt; 个人中心
    </p>

</div>
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