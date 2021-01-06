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
                    <img src="img/teachers/luosiqin.png" alt="" class="ato-logo001">
                </div>
                <h3>罗嗣卿</h3>
                <p>罗嗣卿，硕士，副教授，硕士生导师。主要研究方向：信息系统析与设计、图像处理、软件服务与应用。主持和参加省攻关重点、省自然基金、国家林业公益...</p>
                <a href="https://icec.nefu.edu.cn/info/1024/1599.htm" class="ato-more">查看详情</a>
            </li>
            <li>
                <div>
                    <img src="img/teachers/lili.png" alt="" class="ato-logo001">
                </div>
                <h3>李莉</h3>
                <p>李莉，博士，副教授，软件工程专业主任，专业教工党支部书记，硕士生导师。主要研究方向：先进软件工程技术、群智能优化、大型分布式计算。主持和参...</p>
                <a href="https://icec.nefu.edu.cn/info/1024/1600.htm" class="ato-more">查看详情</a>
            </li>
            <li>
                <div>
                    <img src="img/teachers/liudan.png" alt="" class="ato-logo001">
                </div>
                <h3>刘丹</h3>
                <p>刘丹，副教授，工学博士，硕士生导师，软件工程专业副主任。主要研究方向：无线传感器网络相关技术、数据仓库，数据挖掘。主持或参与科技部支撑计划项...</p>
                <a href="https://icec.nefu.edu.cn/info/1024/1601.htm" class="ato-more">查看详情</a>
            </li>
            <li>
                <div>
                    <img src="img/teachers/luosiqin.png" alt="" class="ato-logo001">
                </div>
                <h3>罗嗣卿</h3>
                <p>罗嗣卿，硕士，副教授，硕士生导师。主要研究方向：信息系统析与设计、图像处理、软件服务与应用。主持和参加省攻关重点、省自然基金、国家林业公益性...</p>
                <a href="https://icec.nefu.edu.cn/info/1024/1599.htm" class="ato-more">查看详情</a>
            </li>
            <li>
                <div>
                    <img src="img/teachers/lili.png" alt="" class="ato-logo001">
                </div>
                <h3>李莉</h3>
                <p>李莉，博士，副教授，软件工程专业主任，专业教工党支部书记，硕士生导师。主要研究方向：先进软件工程技术、群智能优化、大型分布式计算。主持和参加...</p>
                <a href="https://icec.nefu.edu.cn/info/1024/1600.htm" class="ato-more">查看详情</a>
            </li>
            <li>
                <div>
                    <img src="img/teachers/liudan.png" alt="" class="ato-logo001">
                </div>
                <h3>刘丹</h3>
                <p>刘丹，副教授，工学博士，硕士生导师，软件工程专业副主任。主要研究方向：无线传感器网络相关技术、数据仓库，数据挖掘。主持或参与科技部支撑计划项...</p>
                <a href="https://icec.nefu.edu.cn/info/1024/1601.htm" class="ato-more">查看详情</a>
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

