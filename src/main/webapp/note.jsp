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
    <script src="static/js/note.js"></script>
    <link rel="stylesheet" href="static/css/note.css">
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


<div class="wrapper">
    <div id="content" class="clearfix">
        <div class="note-list"><div class="note"><a class="note-cover" href="/dish/28692879" target="_blank" style="display:inline-block;width:240px;height:240px">                <img src="https://cp1.douguo.com/upload/note/3/1/b/320_31c430086426888e0ae41a43058d48bb.jpg" alt="" height="240">            </a>            <div class="note-info clearfix">                <a href="/dish/28692879" class="note-name" target="_blank">红烧茄子</a>                <a href="/u/u87990280693291" class="user-head" target="_blank">                    <img src="https://tx1.douguo.com/upload/photo/4/5/b/70_450ff7551b073ab4ad5383746078a3fb.jpg" alt="">                </a>                <a href="/u/u87990280693291" class="user-name" target="_blank">没还款的鳗鱼</a><span class="not-like right" data-like="not-like" onclick="setLike(28692879,this,'4PHtkSEfnNdezPubVjf3gJblzvA3n46Z4BiFbihm')">0</span></div></div><div class="note"><a class="note-cover" href="/dish/28692870" target="_blank" style="display:inline-block;width:240px;height:180px">                <img src="https://cp1.douguo.com/upload/note/c/3/6/320_c3f7113d296fc26a6c391519eaaf6516.jpeg" alt="" height="180">            </a>            <div class="note-info clearfix">                <a href="/dish/28692870" class="note-name" target="_blank">今日份晚餐菜品3⃣️：咸鸭蛋，自家养的鸭生的，超大只</a>                <a href="/u/u01455355122070" class="user-head" target="_blank">                    <img src="https://tx1.douguo.com/upload/photo/b/c/d/70_u01455355122070122925.jpeg" alt="">                </a>                <a href="/u/u01455355122070" class="user-name" target="_blank">饭团团10</a><span class="not-like right" data-like="not-like" onclick="setLike(28692870,this,'4PHtkSEfnNdezPubVjf3gJblzvA3n46Z4BiFbihm')">2</span></div></div><div class="note"><a class="note-cover" href="/dish/28692861" target="_blank" style="display:inline-block;width:240px;height:180px">                <img src="https://cp1.douguo.com/upload/note/1/b/6/320_1b05b569e0935be084ea8fdc08c91716.jpg" alt="" height="180">            </a>            <div class="note-info clearfix">                <a href="/dish/28692861" class="note-name" target="_blank">至尊牛排披萨</a>                <a href="/u/u91480927127809" class="user-head" target="_blank">                    <img src="https://tx1.douguo.com/upload/photo/7/7/f/70_u91480927127809152041.jpg" alt="">                </a>                <a href="/u/u91480927127809" class="user-name" target="_blank">拒绝添加剂</a><span class="not-like right" data-like="not-like" onclick="setLike(28692861,this,'4PHtkSEfnNdezPubVjf3gJblzvA3n46Z4BiFbihm')">1</span></div></div><div class="note"><a class="note-cover" href="/dish/28692819" target="_blank" style="display:inline-block;width:240px;height:426.6666666666667px">                <img src="https://cp1.douguo.com/upload/note/a/9/9/320_1588764355343.jpg" alt="" height="426.6666666666667">            </a>            <div class="note-info clearfix">                <a href="/dish/28692819" class="note-name" target="_blank">你还在用单纯的蒸鱼豉油清蒸黄花鱼吗？这样做好吃百倍不信你试试</a>                <a href="/u/u8463027327141" class="user-head" target="_blank">                    <img src="https://tx1.douguo.com/upload/photo/e/3/b/70_e3a30cf9d252b575e08e28525f7406bb.jpeg" alt="">                </a>                <a href="/u/u8463027327141" class="user-name" target="_blank">觅儿美食</a><span class="not-like right" data-like="not-like" onclick="setLike(28692819,this,'4PHtkSEfnNdezPubVjf3gJblzvA3n46Z4BiFbihm')">0</span></div></div><div class="note"><a class="note-cover" href="/dish/28692848" target="_blank" style="display:inline-block;width:240px;height:240px">                <img src="https://cp1.douguo.com/upload/note/c/0/1/320_c0ab40c2a064373c76c19ce8661d8a31.jpg" alt="" height="240">            </a>            <div class="note-info clearfix">                <a href="/dish/28692848" class="note-name" target="_blank">紫菜蛋汤 红烧带鱼</a>                <a href="/u/u98727723915909" class="user-head" target="_blank">                    <img src="https://tx1.douguo.com/upload/photo/6/f/0/70_u98727723915909230352.jpg" alt="">                </a>                <a href="/u/u98727723915909" class="user-name" target="_blank">不可辜负的大好时光</a><span class="not-like right" data-like="not-like" onclick="setLike(28692848,this,'4PHtkSEfnNdezPubVjf3gJblzvA3n46Z4BiFbihm')">0</span></div></div></div>
        <div class="note-list ml13"><div class="note"><a class="note-cover" href="/dish/28692878" target="_blank" style="display:inline-block;width:240px;height:320px">                <img src="https://cp1.douguo.com/upload/note/f/c/a/320_fcc5c5794d2afb1b93666f03da821afa.jpg" alt="" height="320">            </a>            <div class="note-info clearfix">                <a href="/dish/28692878" class="note-name" target="_blank">红豆千层面包，软糯香甜，好吃不腻，甜而不腻，卖相老好了</a>                <a href="/u/u87470314618376" class="user-head" target="_blank">                    <img src="https://tx1.douguo.com/upload/photo/4/f/1/70_4f28188e4a6390643dd7835b774ed4f1.jpg" alt="">                </a>                <a href="/u/u87470314618376" class="user-name" target="_blank">独家丽姐原生态米业</a><span class="not-like right" data-like="not-like" onclick="setLike(28692878,this,'4PHtkSEfnNdezPubVjf3gJblzvA3n46Z4BiFbihm')">0</span></div></div><div class="note"><a class="note-cover" href="/dish/28692867" target="_blank" style="display:inline-block;width:240px;height:255.3694581280788px">                <img src="https://cp1.douguo.com/upload/note/3/4/b/320_349bee8f8b7f95e84f4a02eb3941609b.jpg" alt="" height="255.3694581280788">            </a>            <div class="note-info clearfix">                <a href="/dish/28692867" class="note-name" target="_blank">凉拌杏鲍菇</a>                <a href="/u/u83043426695770" class="user-head" target="_blank">                    <img src="https://tx1.douguo.com/upload/photo/1/7/4/70_u83043426695770143502.jpg" alt="">                </a>                <a href="/u/u83043426695770" class="user-name" target="_blank">轻轻的鮸鱼</a><span class="not-like right" data-like="not-like" onclick="setLike(28692867,this,'4PHtkSEfnNdezPubVjf3gJblzvA3n46Z4BiFbihm')">0</span></div></div><div class="note"><a class="note-cover" href="/dish/28692862" target="_blank" style="display:inline-block;width:240px;height:180px">                <img src="https://cp1.douguo.com/upload/note/4/c/9/320_4c2608ba4eb71f88672e89ab475dc4e9.jpg" alt="" height="180">            </a>            <div class="note-info clearfix">                <a href="/dish/28692862" class="note-name" target="_blank">晚上一素到底</a>                <a href="/u/u12643032199259" class="user-head" target="_blank">                    <img src="https://tx1.douguo.com/upload/photo/7/a/9/70_u12643032199259072137.jpg" alt="">                </a>                <a href="/u/u12643032199259" class="user-name" target="_blank">星星0810</a><span class="not-like right" data-like="not-like" onclick="setLike(28692862,this,'4PHtkSEfnNdezPubVjf3gJblzvA3n46Z4BiFbihm')">0</span></div></div><div class="note"><a class="note-cover" href="/dish/28692855" target="_blank" style="display:inline-block;width:240px;height:240px">                <img src="https://cp1.douguo.com/upload/note/8/9/d/320_89cbd729563a94abefcf4af523e381dd.jpeg" alt="" height="240">            </a>            <div class="note-info clearfix">                <a href="/dish/28692855" class="note-name" target="_blank">晚餐</a>                <a href="/u/u53084002316108" class="user-head" target="_blank">                    <img src="https://tx1.douguo.com/upload/photo/5/9/c/70_59390dae842c3c2533a316e383cb803c.jpeg" alt="">                </a>                <a href="/u/u53084002316108" class="user-name" target="_blank">元宝妈OO</a><span class="not-like right" data-like="not-like" onclick="setLike(28692855,this,'4PHtkSEfnNdezPubVjf3gJblzvA3n46Z4BiFbihm')">0</span></div></div><div class="note"><a class="note-cover" href="/dish/28692852" target="_blank" style="display:inline-block;width:240px;height:180px">                <img src="https://cp1.douguo.com/upload/note/1/3/7/320_137cc970d7cc1ba24c8e8ee6daa4cee7.jpg" alt="" height="180">            </a>            <div class="note-info clearfix">                <a href="/dish/28692852" class="note-name" target="_blank">刚刚蒸熟揭开锅😋</a>                <a href="/u/u14295326770248" class="user-head" target="_blank">                    <img src="https://tx1.douguo.com/upload/photo/9/3/8/70_u14295326770248225818.jpg" alt="">                </a>                <a href="/u/u14295326770248" class="user-name" target="_blank">快乐天使乐乐妈</a><a class="proicon" href="/user/prodesc" style="position:relative;top: 3px;" target="_blank"></a><span class="not-like right" data-like="not-like" onclick="setLike(28692852,this,'4PHtkSEfnNdezPubVjf3gJblzvA3n46Z4BiFbihm')">2</span></div></div></div>
        <div class="note-list ml14"><div class="note"><a class="note-cover" href="/dish/28692877" target="_blank" style="display:inline-block;width:240px;height:159.9375px">                <img src="https://cp1.douguo.com/upload/note/7/8/3/320_78629b3ae08035f0c05a2341e1f6a0c3.jpeg" alt="" height="159.9375">            </a>            <div class="note-info clearfix">                <a href="/dish/28692877" class="note-name" target="_blank">晚餐：蒜泥紫角叶、蒸白水鱼、拌茄子、南杏冬瓜煲排骨。</a>                <a href="/u/u06477906287711" class="user-head" target="_blank">                    <img src="https://tx1.douguo.com/upload/photo/8/6/8/70_u06477906287711162719.jpeg" alt="">                </a>                <a href="/u/u06477906287711" class="user-name" target="_blank">Lucia爱做饭</a><span class="not-like right" data-like="not-like" onclick="setLike(28692877,this,'4PHtkSEfnNdezPubVjf3gJblzvA3n46Z4BiFbihm')">0</span></div></div><div class="note"><a class="note-cover" href="/dish/28692874" target="_blank" style="display:inline-block;width:240px;height:134.88888888888889px">                <img src="https://cp1.douguo.com/upload/note/4/9/3/320_49bc68fa959818f8ca0e0ede2a16d9d3.jpg" alt="" height="134.88888888888889">            </a>            <div class="note-info clearfix">                <a href="/dish/28692874" class="note-name" target="_blank">今日份午餐</a>                <a href="/u/u86776022262073" class="user-head" target="_blank">                    <img src="https://tx1.douguo.com/upload/photo/7/c/8/70_u86776022262073003016.jpg" alt="">                </a>                <a href="/u/u86776022262073" class="user-name" target="_blank">有风险的石榴很暧昧</a><span class="not-like right" data-like="not-like" onclick="setLike(28692874,this,'4PHtkSEfnNdezPubVjf3gJblzvA3n46Z4BiFbihm')">2</span></div></div><div class="note"><a class="note-cover" href="/dish/28692860" target="_blank" style="display:inline-block;width:240px;height:320px">                <img src="https://cp1.douguo.com/upload/note/4/8/9/320_48a1961c767b4c47513bdac8d37df7e9.jpg" alt="" height="320">            </a>            <div class="note-info clearfix">                <a href="/dish/28692860" class="note-name" target="_blank">美食大狂欢</a>                <a href="/u/u77062254587965" class="user-head" target="_blank">                    <img src="https://tx1.douguo.com/upload/photo/d/8/6/70_u77062254587965130713.jpg" alt="">                </a>                <a href="/u/u77062254587965" class="user-name" target="_blank">影山时音</a><span class="not-like right" data-like="not-like" onclick="setLike(28692860,this,'4PHtkSEfnNdezPubVjf3gJblzvA3n46Z4BiFbihm')">2</span></div></div><div class="note"><a class="note-cover" href="/dish/28692856" target="_blank" style="display:inline-block;width:240px;height:320px">                <img src="https://cp1.douguo.com/upload/note/b/a/0/320_ba0f12d3445683d4101dfba7c994c4d0.jpeg" alt="" height="320">            </a>            <div class="note-info clearfix">                <a href="/dish/28692856" class="note-name" target="_blank">广式夜茶走起</a>                <a href="/u/u71674050392023" class="user-head" target="_blank">                    <img src="https://tx1.douguo.com/upload/photo/f/7/1/70_u71674050392023105225.jpeg" alt="">                </a>                <a href="/u/u71674050392023" class="user-name" target="_blank">爱你080624</a><span class="not-like right" data-like="not-like" onclick="setLike(28692856,this,'4PHtkSEfnNdezPubVjf3gJblzvA3n46Z4BiFbihm')">2</span></div></div><div class="note"><a class="note-cover" href="/dish/28692851" target="_blank" style="display:inline-block;width:240px;height:180px">                <img src="https://cp1.douguo.com/upload/note/e/e/1/320_ee454e08cafa2a52aaad86bc687645d1.jpeg" alt="" height="180">            </a>            <div class="note-info clearfix">                <a href="/dish/28692851" class="note-name" target="_blank">还不错</a>                <a href="/u/u96207976711266" class="user-head" target="_blank">                    <img src="https://tx1.douguo.com/upload/photo/8/5/8/70_u96207976711266205733.jpg" alt="">                </a>                <a href="/u/u96207976711266" class="user-name" target="_blank">心颜mzgi</a><span class="not-like right" data-like="not-like" onclick="setLike(28692851,this,'4PHtkSEfnNdezPubVjf3gJblzvA3n46Z4BiFbihm')">0</span></div></div></div>
        <div class="note-list ml13"><div class="note"><a class="note-cover" href="/dish/28692876" target="_blank" style="display:inline-block;width:240px;height:180px">                <img src="https://cp1.douguo.com/upload/note/2/4/3/320_24d10b3c33c53d3eb338ab4db170aab3.jpg" alt="" height="180">            </a>            <div class="note-info clearfix">                <a href="/dish/28692876" class="note-name" target="_blank">准备就绪开蒸😀</a>                <a href="/u/u14295326770248" class="user-head" target="_blank">                    <img src="https://tx1.douguo.com/upload/photo/9/3/8/70_u14295326770248225818.jpg" alt="">                </a>                <a href="/u/u14295326770248" class="user-name" target="_blank">快乐天使乐乐妈</a><a class="proicon" href="/user/prodesc" style="position:relative;top: 3px;" target="_blank"></a><span class="not-like right" data-like="not-like" onclick="setLike(28692876,this,'4PHtkSEfnNdezPubVjf3gJblzvA3n46Z4BiFbihm')">0</span></div></div><div class="note"><a class="note-cover" href="/dish/28692873" target="_blank" style="display:inline-block;width:240px;height:320px">                <img src="https://cp1.douguo.com/upload/note/8/f/d/320_8f16542662e60de37ac6f718444f661d.jpeg" alt="" height="320">            </a>            <div class="note-info clearfix">                <a href="/dish/28692873" class="note-name" target="_blank">榴莲控的我再也受不了了</a>                <a href="/u/u71674050392023" class="user-head" target="_blank">                    <img src="https://tx1.douguo.com/upload/photo/f/7/1/70_u71674050392023105225.jpeg" alt="">                </a>                <a href="/u/u71674050392023" class="user-name" target="_blank">爱你080624</a><span class="not-like right" data-like="not-like" onclick="setLike(28692873,this,'4PHtkSEfnNdezPubVjf3gJblzvA3n46Z4BiFbihm')">0</span></div></div><div class="note"><a class="note-cover" href="/dish/28692164" target="_blank" style="display:inline-block;width:240px;height:426.6666666666667px">                <img src="https://cp1.douguo.com/upload/note/7/5/c/320_1588759482089.jpg" alt="" height="426.6666666666667">            </a>            <div class="note-info clearfix">                <a href="/dish/28692164" class="note-name" target="_blank">蒸出来的松软拉丝大面包</a>                <a href="/u/u84346844779539" class="user-head" target="_blank">                    <img src="https://tx1.douguo.com/upload/photo/8/0/b/70_u84346844779539162120.jpeg" alt="">                </a>                <a href="/u/u84346844779539" class="user-name" target="_blank">宋欣睿</a><span class="not-like right" data-like="not-like" onclick="setLike(28692164,this,'4PHtkSEfnNdezPubVjf3gJblzvA3n46Z4BiFbihm')">53</span></div></div><div class="note"><a class="note-cover" href="/dish/28692854" target="_blank" style="display:inline-block;width:240px;height:180px">                <img src="https://cp1.douguo.com/upload/note/3/e/3/320_3e0302b6272967dd24bf7a1c94684bd3.jpg" alt="" height="180">            </a>            <div class="note-info clearfix">                <a href="/dish/28692854" class="note-name" target="_blank">#清凉一夏#黑米粥配上凉拌黄瓜，胃口都要好很多</a>                <a href="/u/u67415065328720" class="user-head" target="_blank">                    <img src="https://tx1.douguo.com/upload/photo/d/e/e/70_u67415065328720170454.jpg" alt="">                </a>                <a href="/u/u67415065328720" class="user-name" target="_blank">94鱼鱼尾</a><span class="not-like right" data-like="not-like" onclick="setLike(28692854,this,'4PHtkSEfnNdezPubVjf3gJblzvA3n46Z4BiFbihm')">0</span></div></div><div class="note"><a class="note-cover" href="/dish/28692847" target="_blank" style="display:inline-block;width:240px;height:180px">                <img src="https://cp1.douguo.com/upload/note/e/6/5/320_e607367d6b7e300cddbf34ec65a5d815.jpg" alt="" height="180">            </a>            <div class="note-info clearfix">                <a href="/dish/28692847" class="note-name" target="_blank">鳗鱼饭</a>                <a href="/u/u89187193871186" class="user-head" target="_blank">                    <img src="https://tx1.douguo.com/upload/photo/6/5/b/70_u89187193871186210703.jpg" alt="">                </a>                <a href="/u/u89187193871186" class="user-name" target="_blank">april4002</a><span class="not-like right" data-like="not-like" onclick="setLike(28692847,this,'4PHtkSEfnNdezPubVjf3gJblzvA3n46Z4BiFbihm')">0</span></div></div></div>

        <div class="loading" style="display: none;">
            <img src="https://cp1.douguo.com//static/nweb/images/loading.gif" alt="">
            <span>正在加载...</span>
        </div>

        <h2 class="not-more">
            暂无更多笔记
        </h2>

        <p class="fcc" style="">
            你当前的位置：<a href="/" target="_blank">豆果美食</a> &gt; 笔记
        </p>
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