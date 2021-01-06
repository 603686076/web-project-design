<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <title>讲师</title>

    <link rel="stylesheet" href="css/teachers/style.css">
    <script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="js/teachers/jquery.SuperSlide.2.1.1.js"></script>
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <style>
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
    <%@include file="sidebar-teachers.jsp"%>
    <div id="right-side">
        <div id="first">
            <div class="icon big">
                <svg viewBox="0 0 32 32">
                    <g filter="">
                        <use xlink:href="#shopping-cart"></use>
                    </g>
                </svg>
            </div>

            <%@include file="professor.jsp"%>


        </div>
        <div id="second">
            <div class="icon big">
                <svg viewBox="0 0 32 32">
                    <g filter="">
                        <use xlink:href="#credit-card"></use>
                    </g>
                </svg>
            </div>

            <%@include file="associateProfessor.jsp"%>

        </div>
        <div id="third" class="active">
            <div class="icon big">
                <svg viewBox="0 0 32 32">
                    <g filter="">
                        <use xlink:href="#gift"></use>
                    </g>
                </svg>
            </div>
            <%@include file="lecturer.jsp"%>

        </div>
    </div>
<%@include file="footer.jsp"%>
<script>
    // function professor() {
    //     $(".choose,.choose .icon, #first").addClass("active");
    //     $(".pay,.pay .icon, #second").removeClass("active");
    //     $(".wrap,.wrap .icon, #third").removeClass("active");
    // }
    //
    // function lecturer() {
    //     $(".choose,.choose .icon, #first").removeClass("active");
    //     $(".pay,.pay .icon, #second").addClass("active");
    //     $(".wrap, #third").removeClass("active");
    // }
    //
    // function associateProfessor() {
    //     $(".choose,.choose .icon, #first").removeClass("active");
    //     $(".pay,.pay .icon, #second").removeClass("active");
    //     $(".wrap,.wrap .icon, #third").addClass("active");
    // }
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