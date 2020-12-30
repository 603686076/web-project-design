<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <title>首页</title>

    <!--    引入bootstrap-->
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!--    自定-->
    <%--    ${pageContext.request.contextPath}当前项目--%>
    <link rel="stylesheet" type="text/css" href="../css/index.css">
    <link href="https://cdn.bootcss.com/material-design-icons/3.0.1/iconfont/material-icons.css" rel="stylesheet">
    <script src="../js/jquery.js"></script>

    <!--    全屏滚动 css-->
    <style>
        .section1 { text-align: center; font: 20px "Microsoft Yahei"; color: #fff;}
        .section2 p { position: relative; bottom: -120%;}
        .section2 .news li { position: relative; left: -20%;}
        .section2 .notice li { position: relative; right: -20%;}
        #superContainer {
            height: 100%;
            position: relative;
        }












        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        a{
            position: relative;
            text-decoration: none;
            color: inherit;
            display: inline-block;
        }

        a:hover{
            text-decoration: none;
        }

        .header {
            position: fixed;
            left: 0%;
            top: 0;
            right: 0%;
            z-index: 3;
            transition: all 0.7s ease-out 0s;
        }

        .header .block {
            position: relative;
            height: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0));
        }


        .logo img{
            vertical-align: middle;
            display: inline-block;
            width: 200px;
            height: 100%;
        }

        .logo p{
            padding: 10px 0 0 20px;
            font-size: 30px;
            color: white;
        }

        .header .nav_main {
            font-size: 18px;
            display: flex;
        }

        .header .nav_main a {
            margin: 0 25px;
            color: white;
            position: relative;
        }


        .header .nav_main a p{
            position: absolute;
            opacity: 0;
        }

        .header .nav_main .fab >a:before {
            content: "";
            border-left: 2px solid #94070a;
            height: 25px;
            position: absolute;
            left: 50%;
            top: 100%;
            transform-origin: center top;
            transition: all 0.2s ease-out 0s;
            transform: scaleY(0);
        }

        .header .nav_main .fab >a:after{
            content: "";
            border-bottom: 2px solid #94070a;
            margin-top: 5px;
            display: block;
            width: 100%;
            transition: all 0.2s ease-out 0s;
            transform: scaleX(0);
        }
        .header .nav_main .fab:hover :before {
            transform: scaleY(1);
        }

        .header .nav_main .fab:hover :after {
            transform: scaleX(1);
        }


        .fab{
            position: relative;
            height: 50px;
            padding-top: 15px;
        }


        .fab .item{
            position: absolute;
            top: 55px;
            right: -300px;
            padding: 40px;
            display: flex;
            border-top: 2px solid #94070a;
            width: 900px;
            background: #fff url(../img/child.png) center bottom no-repeat;
        }

        .fab .item .l{
            display: flex;
            width: 45%;
        }

        .fab .item .l img{
            vertical-align: middle;
            display: inline-block;
            height: 142px;
            width: 142px;
        }

        .fab .item .l p{
            font-size: 16px;
            color: #94070a;
            padding-left: 30px;
            line-height: 2.2;
        }

        .fab .item .r{
            width: 55%;
        }

        .fab .item .r a{
            font-size: 18px;
            margin: 20px 40px;
            display: inline-block;
            color: black;
        }

        .fab .item .r a:hover{
            color: #94070a;
        }

        .manger{
            position: relative;
            vertical-align: top;
            margin: 0 25px;
            font-size: 18px;
            color: white;
        }

        .manger a p{
            position: absolute;
            opacity: 0;
        }

        .rotationChart img {
            width: 100%;
            height: 100vh;
        }

        .warp_mode {
            background: url(../img/新闻公告背景.png) no-repeat center -25px #fefaf5;
            height: 100vh;
        }

        .mode{
            width: 90%;
            margin-left: 5%;
        }

        .listTitle {
            position: relative;
            text-align: right;
            top: 70px;
        }

        .listTitle h2 .line_1 {
            position: absolute;
            background-color: #959595;
            height: 2px;
            width: 90%;
            display: block;
            flex-grow: 1;
        }

        .listTitle h2 .line_2 {
            position: absolute;
            background-color: #959595;
            height: 30px;
            width: 2px;
            display: block;
            flex-grow: 1;
        }

        .content{
            display: flex;
            position: relative;
            top: 40px;
        }

        .news{
            /*text-align: center;*/
            flex-basis: 60%;
        }

        .notice{
            text-align: center;
            flex-basis: 40%;
        }



        .content  li {
            margin: 50px 0 20px;
            display: inline-block;
            font-size: 14px;
            vertical-align: top;
            transition: transform 0.5s;
        }

        .content li:hover{
            transform: translateY(-10px);
        }

        .content li .shadow:hover{
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }

        .news li{
            width: 49%;
        }

        .notice li{
            /*margin: 50px 0 0px;*/
            max-height: 75px;
        }

        .content li a{
            display: block;
            background-color: #fff;
            padding: 20px 25px 45px;
            min-height: 140px;
        }

        .notice li a{
            padding: 10px 25px 15px;
            min-height: 40px;
        }

        .content li > div {
            display: block;
            margin: 0 44px 0 0;
            transition: all 0.35s ease-in-out;
        }

        .li_bg {
            height: 27px;
            margin-right: 98px;
            background-color: #fff;
            display: block;
        }

        .content h3 {
            font-weight: normal;
            line-height: 21px;
            max-height: 42px;
            overflow: hidden;
            margin-bottom: 12px;
            letter-spacing: 0.2px;
        }

        .fpx15 {
            font-size: 15px;
        }

        .news p {
            height: 63px;
            overflow: hidden;
            line-height: 21px;
            color: #656565;
        }

        .content .date{
            width: 90px;
            height: 45px;
            background-color: #2c4780;
            position: absolute;
            right: 0;
            top: -50px;
            padding: 8px 10px;
        }

        .content .date i{
            color: white;
            float: left;
            font-size: 21px;
            padding-top: 3px;
        }
        .content .date span{
            color: white;
            display: block;
            margin-left: 32px;
            line-height: 1.2;
            font-family: 'Arial';
        }
        .content .date strong{
            color: white;
            display: block;
            margin-left: 32px;
            line-height: 1.2;
            font-family: 'Arial';
        }

        .test{
            color: #f44336;
        }
    </style>
    <!--    引入全屏滚动js-->
    <script src="../js/fullScreenScrolling/jquery-1.8.3.min.js"></script>
    <script src="../js/fullScreenScrolling/jquery-ui-1.10.3.min.js"></script>
    <script src="../js/fullScreenScrolling/jquery.fullPage.min.js"></script>
    <script>
        $(document).ready(function () {
                $(document).ready(function () {
                $(".fab .item").hide();
                $(".header .nav_main .fab").hover(
                function () {
                $(this).children(".item").fadeIn(200);
            },function () {
                $(this).children(".item").hide();
            }
                );
            })
            // 全屏滚动
            $.fn.fullpage({
                // slidesColor: ['#1bbc9b', '#4BBFC3', '#7BAABE', '#f90', '#ef820'],
                anchors: ['page1', 'page2', 'page3', 'page4', 'page5'],
                afterLoad: function(anchorLink, index){
                    if(index == 2){
                        $('.section2').find('p').delay(0).animate({
                            bottom: '0' ,speed: '2000'
                        }, 2000, 'easeOutExpo');
                        $('.section2').find('.news li').delay(0).animate({
                            left: '0'
                        }, 2000, 'easeOutExpo');
                        $('.section2').find('.notice li').delay(0).animate({
                            right: '0'
                        }, 2000, 'easeOutExpo');
                        $('.header').animate({
                            top: '-50%'
                        } , 200);
                        $('.header .block').css({background: 'white', 'box-shadow': '0 6px 20px 0 rgba(0, 0, 0, 0.19)'});
                        $('.header').animate({
                            top: '0'
                        });
                        $('.header .block .fab>a,.header .block .fab>p, .logo p,.manger a').css({color: 'black'})
                    }
                },
                onLeave: function(index, direction){
                    if(index == '2'){
                        $('.section2').find('p').delay(0).animate({
                            bottom: '-120%'
                        }, 1500, 'easeOutExpo');
                        $('.section2').find('.news li').delay(0).animate({
                            left: '-20%'
                        }, 1500, 'easeOutExpo');
                        $('.section2').find('.notice li').delay(0).animate({
                            right: '-20%'
                        }, 1500, 'easeOutExpo');
                        $('.header').animate({
                            top: '-50%'
                        } , 200);
                        $('.header .block').css({background: 'linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0))', 'box-shadow': ''});
                        $('.header').animate({
                            top: '0'
                        });
                        $('.header .block .fab>a,.header .block .fab>p,.logo p,.manger a').css({color: 'white'})
                    }
                }
            });
        })
    </script>
</head>
<body>
<div class="main">
    <%@include file="header.jsp"%>
    <div class="section section1">
        <div id="myCarousel" class="carousel slide">
            <!-- 轮播（Carousel）指标 -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <!-- 轮播（Carousel）项目 -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="../img/logo.jpg" style="width: 100%; height: 100vh" alt="First slide">
                    <div class="carousel-caption">这是一个测试标题 1</div>
                </div>
                <div class="item">
                    <img src="../img/logo.jpg " style="width: 100%; height: 100vh" alt="Second slide">
                    <div class="carousel-caption">这是一个测试标题 2</div>
                </div>
                <div class="item">
                    <img src="../img/logo.jpg" style="width: 100%; height: 100vh" alt="Third slide">
                    <div class="carousel-caption">这是一个测试标题 3</div>
                </div>
            </div>
            <!-- 轮播（Carousel）导航 -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <%@include file="jsp/news.jsp"%>
    <div class="section section3">
        <h1 style="position: relative;top: 100px">啥都没有</h1>
        <p class="test">sdfafasfadsfadfsf</p>
    </div>
</div>
</body>
</html>