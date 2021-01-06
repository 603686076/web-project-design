<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" type="text/css" href="css/sidebar/normalize.css" />
    <link rel="stylesheet" type="text/css" href="css/sidebar/default.css">


    <link rel="stylesheet" href="css/teachers/style.css">
    <script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="js/teachers/jquery.SuperSlide.2.1.1.js"></script>
    <link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<body style="padding-left: 290px">
<div class="ato-content clearfix">

    <div class="ato-list">
        <ul>
            <li>
                <div>
                    <img src="img/teachers/sujianmin.png" alt="" class="ato-logo001">
                </div>
                <h3>苏健民</h3>
                <p>苏健民，教授，硕士，硕士生导师，软件工程一级学科带头人，省计算机学会嵌入式专委会委员。主要研究方向：自动控制、信号与信息处理。主持或参加科研项...</p>
                <a href="https://icec.nefu.edu.cn/info/1024/1598.htm" class="ato-more">查看详情</a>
            </li>
            <li>
                <div>
                    <img src="img/teachers/sujianmin.png" alt="" class="ato-logo001">
                </div>
                <h3>苏健民</h3>
                <p>苏健民，教授，硕士，硕士生导师，软件工程一级学科带头人，省计算机学会嵌入式专委会委员。主要研究方向：自动控制、信号与信息处理。主持或参加科研项...</p>
                <a href="https://icec.nefu.edu.cn/info/1024/1598.htm" class="ato-more">查看详情</a>
            </li>
            <li>
                <div>
                    <img src="img/teachers/sujianmin.png" alt="" class="ato-logo001">
                </div>
                <h3>苏健民</h3>
                <p>苏健民，教授，硕士，硕士生导师，软件工程一级学科带头人，省计算机学会嵌入式专委会委员。主要研究方向：自动控制、信号与信息处理。主持或参加科研项...</p>
                <a href="https://icec.nefu.edu.cn/info/1024/1598.htm" class="ato-more">查看详情</a>
            </li>
            <li>
                <div>
                    <img src="img/teachers/sujianmin.png" alt="" class="ato-logo001">
                </div>
                <h3>苏健民</h3>
                <p>苏健民，教授，硕士，硕士生导师，软件工程一级学科带头人，省计算机学会嵌入式专委会委员。主要研究方向：自动控制、信号与信息处理。主持或参加科研项...</p>
                <a href="https://icec.nefu.edu.cn/info/1024/1598.htm" class="ato-more">查看详情</a>
            </li>

        </ul>
    </div>
    <div class="ato-list-fl">
        <a href="javascript:;" class="prev">
            <img src="img/teachers/icon-left.png" alt="" class="ato-ope">
            <img src="img/teachers/icon-left1.png" alt="" class="ato-ope1">
        </a>
        <a href="javascript:;" class="next">
            <img src="img/teachers/icon-right.png" alt="" class="ato-ope">
            <img src="img/teachers/icon-right1.png" alt="" class="ato-ope1 ato-ope2">
        </a>
    </div>
</div>

<script type="text/javascript">
    $('.header .block .fab>a,.header .block .fab>p, .logo p,.manger a, .no-item>a').css({color: 'black'});
    $('.header .block').css({background: 'white', 'box-shadow': '0 6px 20px 0 rgba(0, 0, 0, 0.19)'});
    jQuery(".ato-content").slide({titCell:".ato-list-fl ul",mainCell:".ato-list ul",autoPage:true,effect:"leftLoop",autoPlay:true,vis:3});

</script>
</body>
</html>

