<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <title>公告详情</title>
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
            width: 80%;
            margin: auto;
            background-color: white;
        }
    </style>
</head>
<body>
<div class="header">
    <%@include file="../../header.jsp"%>
</div>


<div class="main">
    <h1 style="text-align: center; padding: 15px 0px" >${notice.title}</h1><br>
    <div style="margin-left: 60px"><span class="badge badge-primary" style="background-color: #007bff">发布时间:</span> <fmt:formatDate type="both"
                                                                                                  dateStyle="long" timeStyle="long"
                                                                                                  value="${notice.releaseTime}" /></div>
    <br>
    <hr>
<%--    <div style="padding: 4px 60px"><span class="badge badge-primary" style="background-color: #007bff">摘要:</span> <br> ${notice.summary}</div>--%>
    <div  style="padding: 50px 60px"><span class="badge badge-primary" style="background-color: #007bff">正文:</span> ${notice.text}</div>
</div>
<script type="text/javascript">
    $('.header .block .fab>a,.header .block .fab>p, .logo p,.manger a, .no-item>a').css({color: 'black'});
    $('.header .block').css({background: 'white', 'box-shadow': '0 6px 20px 0 rgba(0, 0, 0, 0.19)'});
    jQuery(".ato-content").slide({titCell:".ato-list-fl ul",mainCell:".ato-list ul",autoPage:true,effect:"leftLoop",autoPlay:true,vis:3});

</script>
</body>
</html>