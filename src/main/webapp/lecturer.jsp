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
                            <img src="img/teachers/wangbo.png" alt="" class="ato-logo001">
                        </div>
                        <h3>王波</h3>
                        <p>王波，讲师，硕士。主要研究方向：计算数学，软件开发。发表学术论文3篇。</p>
                        <a href="https://icec.nefu.edu.cn/info/1024/1606.htm" class="ato-more">查看详情</a>
                    </li>
                    <li>
                        <div>
                            <img src="img/teachers/shanying.png" alt="" class="ato-logo001">
                        </div>
                        <h3>单颖</h3>
                        <p>单颖，博士，讲师，主要研究方向：软件工程，林业信息。参与科研项目多项，并发表相关论文。</p>
                        <a href="https://icec.nefu.edu.cn/info/1024/1596.htm" class="ato-more">查看详情</a>
                    </li>
                    <li>
                        <div>
                            <img src="img/teachers/bianjilong.png" alt="" class="ato-logo001">
                        </div>
                        <h3>边继龙</h3>
                        <p>边继龙，博士，讲师。主要研究方向：立体匹配、矢量地图压缩。曾参与或负责的科研项目包括：矢量地图版权保护技术研究、小基高比立体测绘图像匹配处理方法研究及十...</p>
                        <a href="https://icec.nefu.edu.cn/info/1024/1595.htm" class="ato-more">查看详情</a>
                    </li>
                    <li>
                        <div>
                            <img src="img/teachers/liyan.png" alt="" class="ato-logo001">
                        </div>
                        <h3>李琰</h3>
                        <p>李琰，讲师，主要研究方向：软件工程，遥感和林业信息。参与科研项目多项，参编教材1部，并发表部分相关论文。</p>
                        <a href="https://icec.nefu.edu.cn/info/1024/1605.htm" class="ato-more">查看详情</a>
                    </li>
                    <li>
                        <div>
                            <img src="img/teachers/wangbo.png" alt="" class="ato-logo001">
                        </div>
                        <h3>王波</h3>
                        <p>王波，讲师，硕士。主要研究方向：计算数学，软件开发。发表学术论文3篇。</p>
                        <a href="https://icec.nefu.edu.cn/info/1024/1606.htm" class="ato-more">查看详情</a>
                    </li>
                    <li>
                        <div>
                            <img src="img/teachers/shanying.png" alt="" class="ato-logo001">
                        </div>
                        <h3>单颖</h3>
                        <p>单颖，博士，讲师，主要研究方向：软件工程，林业信息。参与科研项目多项，并发表相关论文。</p>
                        <a href="https://icec.nefu.edu.cn/info/1024/1596.htm" class="ato-more">查看详情</a>
                    </li>
                    <li>
                        <div>
                            <img src="img/teachers/bianjilong.png" alt="" class="ato-logo001">
                        </div>
                        <h3>边继龙</h3>
                        <p>边继龙，博士，讲师。主要研究方向：立体匹配、矢量地图压缩。曾参与或负责的科研项目包括：矢量地图版权保护技术研究、小基高比立体测绘图像匹配处理方法研究及十...</p>
                        <a href="https://icec.nefu.edu.cn/info/1024/1595.htm" class="ato-more">查看详情</a>
                    </li>
                    <li>
                        <div>
                            <img src="img/teachers/liyan.png" alt="" class="ato-logo001">
                        </div>
                        <h3>李琰</h3>
                        <p>李琰，讲师，主要研究方向：软件工程，遥感和林业信息。参与科研项目多项，参编教材1部，并发表部分相关论文。</p>
                        <a href="https://icec.nefu.edu.cn/info/1024/1605.htm" class="ato-more">查看详情</a>
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

