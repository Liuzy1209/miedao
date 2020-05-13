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
    <script src="static/js/createMenu.js"></script>
    <link rel="stylesheet" href="static/css/createMenu.css">
    <%--<script src="static/js/ajaxFileupload.js"></script>--%>

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


<div id="content" class="clearfix">
    <div id="left">
        <div class="draft-tip mt20"><span>已保存到云端</span></div>
        <!--上传封面图-->

            <input class="coverImageUrl" onchange="changecover()" type="file" name="image[]" id="coverImageUrl" value=""
               accept="image/gif,image/jpeg,image/jpg,image/png,image/webp"
               style="opacity: 0; z-index: 2; width: 10px; left: 315px; top: 467px;">
        <!--上传步骤图-->
        <input type="file" name="image[]" class="buzhou" id="buzhou-file" onchange="uploadBuZhouImg();"
               accept="image/gif,image/jpeg,image/jpg,image/png,image/webp" multiple="multiple"
               style="position: absolute; display: block; opacity: 0; z-index: 2; width: 10px; left: 241px; top: 1460px;">
        <form action="" class="mt20" id="upfood" method="post">
            <!--封面图的url-->
            <input type="hidden" name="videoImgUrl" id="videoImgUrl" value="">
            <input type="text" name="coverImgUrl" id="coverImgUrl" value="" style="display: none;" hidden="">
            <input type="hidden" name="cook_id" value="" id="cook_id">
            <div class="cover">
                <div class="upbefore" id="uploadCookImage" onmousemove="movefile(event,'coverImageUrl')">
                    <div class="tiptxt">添加菜谱成品图
                        <p>（建议尺寸1280*1024，支持上传图片格式有jpg、jpeg、png、gif、webp）</p>
                    </div>
                </div>
                <div class="upnow">正在上传…</div>
                <div class="upsucc">
                    <button type="button" class="reset-upcover" onclick="$('#coverImageUrl').click();"></button>
                </div>

                <div class="caogao" style="display: none">
                    <div class="sydimg">
                        <div class="list">
                            <div class="listbox">
                                <ul>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="muti">
                        <span>草</span>
                        <span>稿</span>
                        <span>箱</span>
                        <span style="font-size:11px" id="shannum">(<p class="shannum">0</p>)</span>
                        <span id="jiaotou">&gt;&gt;</span>
                    </div>
                </div>

            </div>
            <div class="name">
                <input class="upname " id="cook_name" name="cook_name" type="text" maxlength="30" value="菜谱名称"
                       onfocus="if(this.value=='菜谱名称') {this.value=''; $(this).addClass('fcbm'); }"
                       onblur="if(!this.value) {this.value='菜谱名称';$(this).removeClass('fcbm');} draft();">


            </div>


            <div class="material clearfix">
                <h2>食材清单</h2>
                <div class="zl-list mlist" style="width: 620px">
                    <div>
                        <span class="liaotit"> 食材</span><span class="liangtit"> 用量</span>
                    </div>
                    <div class="mct clearfix">
                        <%--<input type="text" class="liaoext zhuliao" name="zhuliao[]" value="如:五花肉"
                               onfocus="if(this.value=='如:五花肉') {this.value=''; $(this).addClass('fcbm'); }"
                               onblur="if(!this.value) {this.value='如:五花肉';$(this).removeClass('fcbm');}">
                        <input type="text" class="liangext" name="zhuliaoValue[]" value="如:250g"
                               onfocus="if(this.value=='如:250g') {this.value=''; $(this).addClass('fcbm'); }"
                               onblur="if(!this.value) {this.value='如:250g';$(this).removeClass('fcbm');}">
                        <a href="javascript:void(0);" class="wrng" onclick="deleteThisEle(this)"></a>--%>
                        <input type="text" class="liaoext zhuliao fcbm" name="zhuliao[]" id="m_material01" onblur="Check()" value="">
                        <input type="text" class="liangext fcbm" name="zhuliaoValue[]" id="m_material02" onblur="Check()" value="">
                        <a href="javascript:void(0);" class="wrng" onclick="deleteThisEle(this)"></a>
                    </div>
                    <%--<div class="mct clearfix">
                        <input type="text" class="liaoext zhuliao fcbm" name="zhuliao[]" value="">
                        <input type="text" class="liangext fcbm" name="zhuliaoValue[]" value="">
                        <a href="javascript:void(0);" class="wrng" onclick="deleteThisEle(this)"></a>
                    </div>
                    <div class="mct clearfix">
                        <input type="text" class="liaoext zhuliao fcbm" name="zhuliao[]" value="">
                        <input type="text" class="liangext fcbm" name="zhuliaoValue[]" value="">
                        <a href="javascript:void(0);" class="wrng" onclick="deleteThisEle(this)"></a>
                    </div>
                    <div class="mct clearfix">
                        <input type="text" class="liaoext zhuliao fcbm" name="zhuliao[]" value="">
                        <input type="text" class="liangext fcbm" name="zhuliaoValue[]" value="">
                        <a href="javascript:void(0);" class="wrng" onclick="deleteThisEle(this)"></a>
                    </div>--%>
                </div>
                <a class="adlan" href="javascript:void(0);" id="zhuliao" onclick="addZhuLiao('')">增加一栏</a>
            </div>
            <div class="step">
                <h2>步骤 </h2>
                <input type="file" accept="image/gif,image/jpeg,image/jpg,image/png,image/webp" id="moreImg"
                       name="image[]" multiple="" style="display: none" onchange="upMoreImg(event)" hidden="">
                <ul class="step-list" id="step" style="padding-left: 0">
                    <li class="nsetp clearfix">
                        <a href="javascript:void(0);" class="wrng" onclick="deleteThisEle(this)"></a>


                        <div class="bzmw mrs">
                            <textarea name="setpInfos[]" id="m_step" class="steptext"></textarea>
                        </div>
                    </li>

                </ul>
                <%--<a class="addstep" href="javascript:void(0);" onclick="addBuZhou()">增加一栏</a>--%>
            </div>
            <div class="tips">
                <h2>小贴士</h2>
                <textarea name="cooktips" class="fcbm" id="m_summary"
                          onfocus="if(this.value=='(选填)') {this.value=''; $(this).addClass('fcbm'); }"
                          onblur="if(!this.value) {this.value='(选填)';$(this).removeClass('fcbm');} draft();"> </textarea>

                <input type="hidden" name="_token" id="_token" value="7SNOMgQtWfwQ2IGIMzJm70kA1mdIAfE4GUBobuNY">
            </div>
            <div class="complete">
                <a class="submit" href="javascript:void(0)" onclick="checkArtinfo()">发布</a>
            </div>
        </form>

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