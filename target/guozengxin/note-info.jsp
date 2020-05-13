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
    <script src="static/js/note-info.js"></script>
    <link rel="stylesheet" href="static/css/note-info.css">
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
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"  style="color: white">
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
                            <%--<div class="pull-left"><a href="about.jsp">关于豆果</a></div>
								<div class="pull-left"><a href="contact.jsp">联系豆子</a></div>--%>
                            <div class="pull-left">
                                <div class="search" style="width: 150px;height: 30px; display: flex;color: black">
                                    <input  style="width: 200px;height: 30px;margin-top: 8px" type="text" placeholder="请输入..." name="" id="" value="" />
                                    <button class="btn btn-default register-btn" style="margin-top: 8px;margin-bottom: -8px">搜索</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- 我是邪恶的分割线 -->

<div id="content" class="recipe-content clearfix">
    <div id="left">
        <!-- 封面图 -->

        <!-- 菜谱名称，昵称，关注 -->
        <div class="relative">
            <div id="banner" class="cboxElement cboxElement1"
                 data-origin="https://cp1.douguo.com/upload/caiku/0/e/7/yuan_0ed7d7eb30651bf0029eb3e6199a04a7.jpg"
                 data-snum="1" href="javascript:void(0);" rel="recipe_img">
                <a href="https://cp1.douguo.com/upload/caiku/0/e/7/yuan_0ed7d7eb30651bf0029eb3e6199a04a7.jpg">
                    <img class="wb100"
                         src="https://cp1.douguo.com/upload/caiku/0/e/7/690x390_0ed7d7eb30651bf0029eb3e6199a04a7.jpg"
                         alt="鸡蛋干蒜薹炒虾仁">
                </a>
            </div>

        </div>
        <div class="rinfo relative">
            <div class="vcnum relative">
                <span>44908</span> 关注
                <div class="absolute operate">
                    <span class="not-like" data-like="not-like" onclick="setLike('28736711',this,'u2zirEp22rgl0pWvnB9GxZLjaQ4zl08NMra2vYTA') "
                          style="border:1px solid #FFB31A;color: #FFB31A;">14</span>
                    <a class="btn-collect" href="javascript:void(0);" data-status="0"
                       onclick="  collect(this);  ">收藏</a>

                </div>
            </div>
            <div class="clearfix aut-info relative">
                <div class="clearfix left">
                    <a class="author-img left" href="/u/u56665163792532.html" target="_blank" title="渔雁小厨娘">
                        <img class="br50" src="https://tx1.douguo.com/upload/photo/b/1/d/70_u56665163792532213757.jpeg"
                             alt="渔雁小厨娘" width="30" height="30">
                    </a>
                    <div class="author-info left">
                        <a class="nickname text-lips" href="/u/u56665163792532.html" target="_blank">渔雁小厨娘</a>
                    </div>
                    <a class="gz" data-action="add" href="javascript:void(0)"
                       onclick=" guanzhu(this,'16710224','eZOL5bugNFlShA36rGsOizAGlWNhNQ7hozgzlBiH',0)  "><span
                            class="addicon">＋</span> 关注</a>
                </div>
            </div>
            <p class="" style="font-size: 18px">跟着学起来，自己另外加了豆腐，番茄酱直接买了番茄，没有去皮，所以番茄还不够烂，味道还可以，对于不喜欢吃蒜跟姜的，觉得还是不用切成碎吧！挑起来可真累</p>
        </div>

        <!-- 评论 -->
        <div id="comment" class="comment">
            <div id="comment-text"><h2 class="mini-title" style="font-size: 18px;
                                                                color: #333;
                                                                line-height: 18px;
                                                                font-weight: bold;
                                                                margin: 30px 0 20px;">评论</h2>
                <div class="in-comment clearfix">
                    <%--<div class="author-img">
                        <img class="br50" src="https://tx1.douguo.com/upload/photo/1/1/1/70_4575960c439b1aaa30146ef26bd56ba5.png" alt="全面的奶酪mitv" width="30" height="30">
                    </div>--%>
                    <textarea class="comm-txt left" id="commentContent"></textarea>
                    <a href="javascript:;" onclick="comments.addComment('vOAvphrudinDkQlBpCdF5u4z2j5j9SAJ1QQXQPJX')"
                       class="comm-btn">发表评论</a>
                </div>
            </div>
            <ul id="comments">
                <li class="clearfix"
                    onclick="comments.addReply('這...骄傲KJw', 'u1685083679694', '24604067', '7962696',0)">
                    <a class="author-img" href="/u/u1685083679694.html" target_="blank">
                        <img src="https://cp1.douguo.com/upload/photo/0/d/2/70_u579316007613170509.jpg" alt="這...骄傲KJw">
                    </a>
                    <div class="author-comment">
                        <a class="nickname" href="/u/u1685083679694.html" target_="blank">這...骄傲KJw</a>
                        <p class="commtxt">哈哈哈，我居然不想减肥了</p>
                        <%--<p class="time">2020-05-10 07:01:05</p>
                        <a class="reply-btn" href="javascript:;" onclick="comments.addReply('這...骄傲KJw', 'u1685083679694', '24604067', '7962696',0)">回复</a>--%>
                    </div>

                </li>
            </ul>
            <div id="page"></div>
        </div>
    </div>
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