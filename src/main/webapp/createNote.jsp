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
    <link rel="stylesheet" href="static/css/public.css">
    <script src="static/js/createNote.js"></script>
    <link rel="stylesheet" href="static/css/createNote.css">
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
                    <div class="pull-left"><a href="index.jsp" style="color: white">首页</a></div>
                    <div class="pull-left"><a href="menu.jsp" style="color: white">菜谱</a></div>
                    <div class="pull-left"><a href="note.jsp" style="color: white">笔记</a></div>
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
                            <div class="pull-left" id="check-login">
                                <a href="login.jsp" style="color: white" id="check-login01">登陆</a>
                                |
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

<div id="content" class="clearfix mh600">
    <div class="title-head mbt30 mt30">
        <h3>上传我做的作品</h3>
    </div>
    <form action="" class="upload-works" method="post">
        <div class="upload-box">
            <span class="add-icon"></span>
            <p>上传作品图</p>
            <input type="file" oninput="showImg()" id="image" name="image[]">
            <input type="hidden" name="cover">
            <input type="hidden" name="cover_width">
            <input type="hidden" name="cover_height">
        </div>
        <div class="loading">
            <span class="loading-icon"></span>
            <p>正在上传</p>
        </div>
        <div class="img-box">
            <img src="" alt="">
            <button class="delete" type="button" onclick="deleteImgBox()"></button>
        </div>
        <textarea placeholder="心得体会~" id="n_remark" name="content"></textarea>

        <a href="javascript:void(0)" class="release" onclick="tijiao()">发布</a>
    </form>
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