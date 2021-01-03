<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <c:url var="base" value="/"/>
        <base href="${base}">
        <meta charset="UTF-8">
        <title>jquery滑动轮播</title>
        <link rel="stylesheet" href="css/teachers/style.css">
        <script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
        <script type="text/javascript" src="js/teachers/jquery.SuperSlide.2.1.1.js"></script>
        <link rel="stylesheet" type="text/css" href="css/index.css">
    </head>
<body>
    <div class="header">
        <%@include file="header.jsp"%>
    </div>
        <div class="ato-content clearfix">
            <div class="ato-list-fl">
                <div class="ato-title">
                    <h2>安全合规的云计算服务</h2>
                    <p>权威认证的云计算服务，充分保障您的业务实践与业务安全</p>
                </div>
                <a href="javascript:;" class="prev">
                    <img src="img/teachers/icon-left.png" alt="" class="ato-ope">
                    <img src="img/teachers/icon-left1.png" alt="" class="ato-ope1">
                </a>
                <a href="javascript:;" class="next">
                    <img src="img/teachers/icon-right.png" alt="" class="ato-ope">
                    <img src="img/teachers/icon-right1.png" alt="" class="ato-ope1 ato-ope2">
                </a>
            </div>
            <div class="ato-list">
                <ul>
                    <li>
                        <div>
                            <img src="img/teachers/logo001.png" alt="" class="ato-logo001">
                        </div>
                        <h3>CSA STAR认证</h3>
                        <p>信息安全等级保护，是对信息和信息载体按照重要性等级分级别进行保护的一种工作，信息安全等级保护要求不同安全等级的信息系统应具有不同的安全保护能力。</p>
                        <a href="#" class="ato-more">查看详情</a>
                    </li>
                    <li>
                        <div>
                            <img src="img/teachers/logo002.png" alt="" class="ato-logo001">
                        </div>
                        <h3>ISO27001信息安全管理体系认证</h3>
                        <p>ISO 22301是第一份以业务连续管理为主题的国际标准，提供了一种完整通用的BCM方法论，让企业能够达到国际上公认的最佳实践。</p>
                        <a href="#" class="ato-more">查看详情</a>
                    </li>
                    <li>
                        <div>
                            <img src="img/teachers/logo003.png" alt="" class="ato-logo001">
                        </div>
                        <h3>ISO22301业务连续性管理体系认证</h3>
                        <p>CSA STAR云安全评估基于国际权威的非盈利组织云安全联盟推出的云控制矩阵CCM满足云计算安全领域的特定要求，针对云计算安全特性的一项国际性认证。</p>
                        <a href="#" class="ato-more">查看详情</a>
                    </li>
                    <li>
                        <div>
                            <img src="img/teachers/logo004.png" alt="" class="ato-logo001">
                        </div>
                        <h3>CSA STAR认证</h3>
                        <p>CSA STAR云安全评估基于国际权威的非盈利组织云安全联盟推出的云控制矩阵CCM满足云计算安全领域的特定要求，针对云计算安全特性的一项国际性认证。</p>
                        <a href="#" class="ato-more">查看详情</a>
                    </li>
                    <li>
                        <div>
                            <img src="img/teachers/logo001.png" alt="" class="ato-logo001">
                        </div>
                        <h3>CSA STAR认证</h3>
                        <p>CSA STAR云安全评估基于国际权威的非盈利组织云安全联盟推出的云控制矩阵CCM满足云计算安全领域的特定要求，针对云计算安全特性的一项国际性认证。</p>
                        <a href="#" class="ato-more">查看详情</a>
                    </li>
                    <li>
                        <div>
                            <img src="img/teachers/logo002.png" alt="" class="ato-logo001">
                        </div>
                        <h3>CSA STAR认证</h3>
                        <p>CSA STAR云安全评估基于国际权威的非盈利组织云安全联盟推出的云控制矩阵CCM满足云计算安全领域的特定要求，针对云计算安全特性的一项国际性认证。</p>
                        <a href="#" class="ato-more">查看详情</a>
                    </li>
                    <li>
                        <div>
                            <img src="img/teachers/logo003.png" alt="" class="ato-logo001">
                        </div>
                        <h3>CSA STAR认证</h3>
                        <p>CSA STAR云安全评估基于国际权威的非盈利组织云安全联盟推出的云控制矩阵CCM满足云计算安全领域的特定要求，针对云计算安全特性的一项国际性认证。</p>
                        <a href="#" class="ato-more">查看详情</a>
                    </li>
                    <li>
                        <div>
                            <img src="img/teachers/logo004.png" alt="" class="ato-logo001">
                        </div>
                        <h3>CSA STAR认证</h3>
                        <p>CSA STAR云安全评估基于国际权威的非盈利组织云安全联盟推出的云控制矩阵CCM满足云计算安全领域的特定要求，针对云计算安全特性的一项国际性认证。</p>
                        <a href="#" class="ato-more">查看详情</a>
                    </li>
                </ul>
            </div>
        </div>

        <script type="text/javascript">
            $('.header .block .fab>a,.header .block .fab>p, .logo p,.manger a, .no-item>a').css({color: 'black'});
            $('.header .block').css({background: 'white', 'box-shadow': '0 6px 20px 0 rgba(0, 0, 0, 0.19)'});
        jQuery(".ato-content").slide({titCell:".ato-list-fl ul",mainCell:".ato-list ul",autoPage:true,effect:"leftLoop",autoPlay:true,vis:3});

        </script>
</body>
</html>

