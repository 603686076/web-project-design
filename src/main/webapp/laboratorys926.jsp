<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <title>926机器人实验室</title>
    <link rel="stylesheet" type="text/css" href="css/sidebar/normalize.css" />
    <link rel="stylesheet" type="text/css" href="css/sidebar/default.css">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">--%>
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <link href="https://cdn.bootcss.com/material-design-icons/3.0.1/iconfont/material-icons.css" rel="stylesheet">
    <script src="js/jquery.js"></script>
    <style>
        *{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        body{
            padding-top: 100px;
            background-color: #eff3f5;
        }
        .main{
            display: block;
            border-radius: 15px;
            width: 60%;
            /*margin: auto;*/
            background-color: white;
        }
        .professionalPresentation{
            padding: 350px 0 0;
        }
        footer {
            background-color: #b22222;
            text-align: center;
            font-size: 12px;
            color: white;
            padding: 5px;
            margin: 425px 0  0 -290px;
        }
    </style>
</head>
<body>
<div class="header">
    <%@include file="header.jsp"%>
</div>


<div class="main">
    <%@include file="sidebar-laboratorys.jsp"%>
    <div id="right-side">
        <div id="first" class="active">
            <div class="icon big">
                <svg viewBox="0 0 32 32">
                    <g filter="">
                        <use xlink:href="#shopping-cart"></use>
                    </g>
                </svg>
            </div>
            <div class="professionalPresentation">
                <iframe  src="laboratory923.jsp" width="900" height="550" frameborder="0">
                    <p>暂无</p>
                </iframe>
            </div>
        </div>
        <div id="second">
            <div class="icon big">
                <svg viewBox="0 0 32 32">
                    <g filter="">
                        <use xlink:href="#credit-card"></use>
                    </g>
                </svg>
            </div>

            <div class="professionalPresentation">
                <iframe  src="laboratory925.jsp" width="900" height="550" frameborder="0">
                    <p>暂无</p>
                </iframe>
            </div>

        </div>
        <div id="third">
            <div class="icon big">
                <svg viewBox="0 0 32 32">
                    <g filter="">
                        <use xlink:href="#gift"></use>
                    </g>
                </svg>
            </div>
            <div style="display: none"><%@include file="lecturer.jsp"%></div>
            <div class="professionalPresentation">
                <iframe  src="laboratory926.jsp" width="900" height="550" frameborder="0">
                    <p>暂无</p>
                </iframe>
            </div>
        </div>
    </div>


</div>
<%@include file="footer.jsp"%>
<script type="text/javascript">
    $('.header .block .fab>a,.header .block .fab>p, .logo p,.manger a, .no-item>a').css({color: 'black'});
    $('.header .block').css({background: 'white', 'box-shadow': '0 6px 20px 0 rgba(0, 0, 0, 0.19)'});
    jQuery(".ato-content").slide({titCell:".ato-list-fl ul",mainCell:".ato-list ul",autoPage:true,effect:"leftLoop",autoPlay:true,vis:3});
    $('.wrap').addClass('active');
    $('.wrap > .icon').addClass('active');
    $('.pay').removeClass('active');
    $('.choose').removeClass('active');
    $('.pay > .icon').removeClass('active');
    $('.choose > .icon').removeClass('active');
    $('#line').addClass('three');
    $('#line').removeClass('two');
    $('#line').removeClass('one');
</script>
</body>
</html>