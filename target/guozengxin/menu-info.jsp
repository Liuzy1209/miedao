<jsp:include page="path.jsp"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>购好货</title>
    <link rel="stylesheet" href="static/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="static/swiper-4.5.0/dist/css/swiper.css">
    <script src="static/swiper-4.5.0/dist/js//swiper.js"></script>
    <script src="static/js/jquery-3.3.1.js"></script>
    <script src="static/bootstrap/js/bootstrap.js"></script>
    <link rel="stylesheet" href="static/css/public.css">
    <script src="static/js/public.js"></script>
    <link rel="stylesheet" href="static/css/menu-info.css">
    <script src="static/js/menu-info.js"></script>
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
                                <a href="login.jsp" id="check-login01" style="color: white">登陆</a>
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
            <h1 class="title text-lips" style="display: inline-block">鸡蛋干蒜薹炒虾仁</h1>

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

        </div>
        <!-- 材料 -->
        <div class="metarial">
            <h2 class="mini-title">鸡蛋干蒜薹炒虾仁的用料</h2>
            <table class="retamr br8" width="690" cellspacing="0" cellpadding="0" border="0">
                <tbody>
                <tr>
                    <td class="lirre" style="border-top:0;">
                        <span class="scname"><a href="/caipu/鸡蛋干" target="_blank">鸡蛋干</a></span>
                        <span class="right scnum">一包</span>
                    </td>
                    <td style="border-top:0;">
                        <span class="scname"><a href="/caipu/蒜薹" target="_blank">蒜薹</a></span>
                        <span class="right scnum">12根</span>
                    </td>
                </tr>
                <tr>
                    <td class="lirre">
                        <span class="scname"><a href="/caipu/虾仁" target="_blank">虾仁</a></span>
                        <span class="right scnum">20只</span>
                    </td>
                    <td>
                        <span class="scname"><a href="/caipu/蒜" target="_blank">蒜</a></span>
                        <span class="right scnum">2瓣</span>
                    </td>
                </tr>
                <tr>
                    <td class="lirre">
                        <span class="scname"><a href="/caipu/姜" target="_blank">姜</a></span>
                        <span class="right scnum">3片</span>
                    </td>
                    <td>
                        <span class="scname"><a href="/caipu/盐" target="_blank">盐</a></span>
                        <span class="right scnum">适量</span>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <!-- 步骤 -->
        <div class="step">
            <h2 class="mini-title">鸡蛋干蒜薹炒虾仁的做法</h2>
            <div class="stepcont clearfix">
                <div class="stepinfo">
                    <p>步骤1</p>

                </div>
            </div>
            <%--<div class="stepcont clearfix">
                <a class="cboxElement cboxElement2" data-snum="2" rel="recipe_img" href="https://cp1.douguo.com/upload/caiku/2/4/9/yuan_24fbdce1debf86ef9b5642ff048ea109.jpg" data-origin="https://cp1.douguo.com/upload/caiku/2/4/9/yuan_24fbdce1debf86ef9b5642ff048ea109.jpg">
                    <img class="br8" src="https://cp1.douguo.com/upload/caiku/2/4/9/200_24fbdce1debf86ef9b5642ff048ea109.jpg" alt="鸡蛋干蒜薹炒虾仁#美食视频挑战赛#的做法图解1" width="200" height="200">
                </a>
                <div class="stepinfo">
                    <p>步骤1</p>
                    所有材料洗干净，沥干备用
                </div>
            </div>
            <div class="stepcont clearfix">
                <a class="cboxElement cboxElement3" data-snum="3" rel="recipe_img" href="https://cp1.douguo.com/upload/caiku/5/4/f/yuan_54da7482d9b6e15c578a38d9c40b36af.jpg" data-origin="https://cp1.douguo.com/upload/caiku/5/4/f/yuan_54da7482d9b6e15c578a38d9c40b36af.jpg">
                    <img class="br8" src="https://cp1.douguo.com/upload/caiku/5/4/f/200_54da7482d9b6e15c578a38d9c40b36af.jpg" alt="鸡蛋干蒜薹炒虾仁#美食视频挑战赛#的做法图解2" width="200" height="200">
                </a>
                <div class="stepinfo">
                    <p>步骤2</p>
                    所以食材改刀，备用
                </div>
            </div>
            <div class="stepcont clearfix">
                <a class="cboxElement cboxElement4" data-snum="4" rel="recipe_img" href="https://cp1.douguo.com/upload/caiku/c/8/9/yuan_c8c9cef88c75a9363b171d469c95ed99.jpg" data-origin="https://cp1.douguo.com/upload/caiku/c/8/9/yuan_c8c9cef88c75a9363b171d469c95ed99.jpg">
                    <img class="br8" src="https://cp1.douguo.com/upload/caiku/c/8/9/200_c8c9cef88c75a9363b171d469c95ed99.jpg" alt="鸡蛋干蒜薹炒虾仁#美食视频挑战赛#的做法图解3" width="200" height="200">
                </a>
                <div class="stepinfo">
                    <p>步骤3</p>
                    起锅烧热，放油，爆香姜片和蒜。
                </div>
            </div>
            <div class="stepcont clearfix">
                <a class="cboxElement cboxElement5" data-snum="5" rel="recipe_img" href="https://cp1.douguo.com/upload/caiku/e/1/d/yuan_e10058a67824e4ca704a3a112ac63c4d.jpg" data-origin="https://cp1.douguo.com/upload/caiku/e/1/d/yuan_e10058a67824e4ca704a3a112ac63c4d.jpg">
                    <img class="br8" src="https://cp1.douguo.com/upload/caiku/e/1/d/200_e10058a67824e4ca704a3a112ac63c4d.jpg" alt="鸡蛋干蒜薹炒虾仁#美食视频挑战赛#的做法图解4" width="200" height="200">
                </a>
                <div class="stepinfo">
                    <p>步骤4</p>
                    倒入蒜薹煸炒变青
                </div>
            </div>
            <div class="stepcont clearfix">
                <a class="cboxElement cboxElement6" data-snum="6" rel="recipe_img" href="https://cp1.douguo.com/upload/caiku/7/d/b/yuan_7d14264e402e4cc987abb6c990abc89b.jpg" data-origin="https://cp1.douguo.com/upload/caiku/7/d/b/yuan_7d14264e402e4cc987abb6c990abc89b.jpg">
                    <img class="br8" src="https://cp1.douguo.com/upload/caiku/7/d/b/200_7d14264e402e4cc987abb6c990abc89b.jpg" alt="鸡蛋干蒜薹炒虾仁#美食视频挑战赛#的做法图解5" width="200" height="200">
                </a>
                <div class="stepinfo">
                    <p>步骤5</p>
                    倒入鸡蛋干，翻炒
                </div>
            </div>
            <div class="stepcont clearfix">
                <a class="cboxElement cboxElement7" data-snum="7" rel="recipe_img" href="https://cp1.douguo.com/upload/caiku/e/9/b/yuan_e991a839cff33d8cdad736cab7a4655b.jpg" data-origin="https://cp1.douguo.com/upload/caiku/e/9/b/yuan_e991a839cff33d8cdad736cab7a4655b.jpg">
                    <img class="br8" src="https://cp1.douguo.com/upload/caiku/e/9/b/200_e991a839cff33d8cdad736cab7a4655b.jpg" alt="鸡蛋干蒜薹炒虾仁#美食视频挑战赛#的做法图解6" width="200" height="200">
                </a>
                <div class="stepinfo">
                    <p>步骤6</p>
                    鸡蛋干稍微炒30秒即可，起锅备用
                </div>
            </div>
            <div class="stepcont clearfix">
                <a class="cboxElement cboxElement8" data-snum="8" rel="recipe_img" href="https://cp1.douguo.com/upload/caiku/3/d/c/yuan_3da27ed1bf68155b9f6c83ca3f1fd79c.jpg" data-origin="https://cp1.douguo.com/upload/caiku/3/d/c/yuan_3da27ed1bf68155b9f6c83ca3f1fd79c.jpg">
                    <img class="br8" src="https://cp1.douguo.com/upload/caiku/3/d/c/200_3da27ed1bf68155b9f6c83ca3f1fd79c.jpg" alt="鸡蛋干蒜薹炒虾仁#美食视频挑战赛#的做法图解7" width="200" height="200">
                </a>
                <div class="stepinfo">
                    <p>步骤7</p>
                    下油炒熟虾仁
                </div>
            </div>
            <div class="stepcont clearfix">
                <a class="cboxElement cboxElement9" data-snum="9" rel="recipe_img" href="https://cp1.douguo.com/upload/caiku/f/f/1/yuan_ff674a35f051e1a1b2f141f97e837f71.jpg" data-origin="https://cp1.douguo.com/upload/caiku/f/f/1/yuan_ff674a35f051e1a1b2f141f97e837f71.jpg">
                    <img class="br8" src="https://cp1.douguo.com/upload/caiku/f/f/1/200_ff674a35f051e1a1b2f141f97e837f71.jpg" alt="鸡蛋干蒜薹炒虾仁#美食视频挑战赛#的做法图解8" width="200" height="200">
                </a>
                <div class="stepinfo">
                    <p>步骤8</p>
                    倒入炒好的蒜薹鸡蛋干，拌匀，调味，即可起锅。
                </div>
            </div>
            <div class="stepcont clearfix">
                <a class="cboxElement cboxElement10" data-snum="10" rel="recipe_img" href="https://cp1.douguo.com/upload/caiku/4/c/f/yuan_4c4a1ade1c68758fad112d9400a0bd8f.jpg" data-origin="https://cp1.douguo.com/upload/caiku/4/c/f/yuan_4c4a1ade1c68758fad112d9400a0bd8f.jpg">
                    <img class="br8" src="https://cp1.douguo.com/upload/caiku/4/c/f/200_4c4a1ade1c68758fad112d9400a0bd8f.jpg" alt="鸡蛋干蒜薹炒虾仁#美食视频挑战赛#的做法图解9" width="200" height="200">
                </a>
                <div class="stepinfo">
                    <p>步骤9</p>
                    完成
                </div>
            </div>--%>
        </div>
        <!-- 小贴士 -->
        <div class="tips">
            <h2 class="mini-title">鸡蛋干蒜薹炒虾仁的烹饪技巧</h2>
            <p>要快，所有食物变色即可，否则容易炒老。<br>做菜好吃都有技巧，我的每道菜都有小妙招，大家搜索“豆果”可以直接查看我的菜谱！</p>
        </div>


        <!-- 评论 -->
        <div id="comment" class="comment">
            <div id="comment-text"><h2 class="mini-title">评论</h2>
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
