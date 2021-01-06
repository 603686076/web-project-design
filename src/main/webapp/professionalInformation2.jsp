<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <title>方向简介</title>
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
            padding: 350px 100px 0px;
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
    <%@include file="sidebar-professionalInformations.jsp"%>
    <div id="right-side">
        <div id="first">
            <div class="icon big">
                <svg viewBox="0 0 32 32">
                    <g filter="">
                        <use xlink:href="#shopping-cart"></use>
                    </g>
                </svg>
            </div>

            <div class="professionalPresentation">
                <h1 style="text-align: center; padding: 15px 0px" >软件工程 （中国普通高等学校本科专业）</h1><br>
                <div style="margin-left: 60px"><span class="badge badge-primary" style="background-color: #007bff">发布时间:</span> 2020 1.2 </div>
                <br>
                <hr>
                <div style="padding: 4px 60px"><span class="badge badge-primary" style="background-color: #007bff">简要说明:</span> <br>软件工程专业是2002年国家教育部新增专业，随着计算机应用领域的不断扩大及中国经济建设的不断发展，软件工程专业将成为一个新的热门专业。软件工程专业以计算机科学与技术学科为基础，强调软件开发的工程性，使学生在掌握计算机科学与技术方面知识和技能的基础上熟练掌握从事软件需求分析、软件设计、软件测试、软件维护和软件项目管理等工作所必需的基础知识、基本方法和基本技能，突出对学生专业知识和专业技能的培养，培养能够从事软件开发、测试、维护和软件项目管理的高级专门人才。</div>
                <div  style="padding: 50px 60px"><span class="badge badge-primary" style="background-color: #007bff">详情:</span> 主干课程编辑
                    主干学科：马克思主义理论、大学外语、高等数学、大学物理、物理实验、线性代数、概率论与数理统计、程序设计语言、数据结构、离散数学、操作系统、编译技术、软件工程概论、统一建模语言、软件体系结构、软件需求、软件项目管理
                    该专业除了学习公共基础课外，还将系统学习离散数学、数据结构、算法分析、面向对象程序设计、现代操作系统、数据库原理与实现技术、编译原理、软件工程、软件项目管理、计算机安全等课程，根据学生的兴趣还可以选修一些其它选修课。
                    实践环节：毕业实习、课程设计、计算机工程实践、生产实习、毕业设计(论文)。
                    发展前景编辑
                    就业方向
                    本专业学生毕业后可以从事各级各类企事业单位的办公自动化处理、计算机安装与维护、网页制作、计算机网络和专业服务器的维护管理和开发工作、动态商务网站开发与管理、软件测试与开发及计算机相关设备的商品贸易等方面的有关工作。
                    除考取国内外名牌大学研究生外，主要毕业去向是计算机软件专业公司﹑信息咨询公司﹑以及金融等其它独资、合资企业。
                    就业前景
                    关键设计原则
                    关键设计原则 [2]
                    中国的软件行业规模不是很大，有些软件企业在软件制作上，也只是采用了一些软件工程的思想，距离大规模的工业化大生产比较还是有一定的差距；原因有管理体制的问题，市场问题，政策问题，也有软件工程理论不全面和不完善的问题。所以软件工程的研究和应用，以及中国软件行业的进一步发展，都需要一定的既有软件工程的理论基础和研究能力，又有一定的实践经验的软件工程科学技术人员来推动。软件工程的前途是光明的。
                    软件服务外包属于智力人才密集型现代服务业。大量著名外包企业落户宁波。主要就业去向包括软件外包与服务企业、信息产品与服务企业，担任程序员、软件测试员、项目经理等工作岗位。</div>
            </div>


        </div>
        <div id="second" class="active">
            <div class="icon big">
                <svg viewBox="0 0 32 32">
                    <g filter="">
                        <use xlink:href="#credit-card"></use>
                    </g>
                </svg>
            </div>

            <div class="professionalPresentation">
                <h1 style="text-align: center; padding: 15px 0px" >软件工程 方向介绍</h1><br>
                <div style="margin-left: 60px"><span class="badge badge-primary" style="background-color: #007bff">发布时间:</span> 2020 1.2 </div>
                <br>
                <hr>
                <div style="padding: 4px 60px"><span class="badge badge-primary" style="background-color: #007bff">简要说明:</span> <br>计算机科学与技术系始建于1988年的微机应用专业。1995年在原专业基础上建立了“计算机科学与技术系”。2000年申报成功了“计算机应用技术”硕士点。“十一五”期间计算机专业被批准为黑龙江省重点专业建设点和东北林业大学优势专业，2011年通过了省教育厅专家组对省重点专业的验收工作。同年又再次被批准为黑龙江省“十二五”重点专业建设点。2015年计算机科学与技术专业成为教育部专业综合改革试点专业。

                    。</div>
                <div  style="padding: 50px 60px"><span class="badge badge-primary" style="background-color: #007bff">详情:</span> 计算机科学与技术系始建于1988年的微机应用专业。1995年在原专业基础上建立了“计算机科学与技术系”。2000年申报成功了“计算机应用技术”硕士点。“十一五”期间计算机专业被批准为黑龙江省重点专业建设点和东北林业大学优势专业，2011年通过了省教育厅专家组对省重点专业的验收工作。同年又再次被批准为黑龙江省“十二五”重点专业建设点。2015年计算机科学与技术专业成为教育部专业综合改革试点专业。


                    计算机科学与技术系现有教师29人，其中教授6人，副教授12人，讲师11人。专任教师具有博士学位者19人，在读博士3人，博士生导师5人，硕士生导师11人，具有国外留学或访学经历的教师4人。


                    过硬的政治素养，良好的师德师风是计算机专业人才培养质量的根本保证。专任教师中，拥有共产党员20人，近3年有2名教师荣获“黑龙江省高校师德先进个人”荣誉称号。


                    较高的科学研究水平，充足的研究条件是计算机专业人才培养层次的基本保障。目前计算机系教师共承担国家自然科学基金、林业行业专项等各级各类科研项目60余项，总经费达2000余万元，累计发表论文500余篇，SCI/EI收录200余篇，获发明专利等知识产权20余项；获各类科研奖励30项。计算机系已形成了人工智能与信息系统、图形图像与多媒体技术、网络与信息安全、大数据与云计算、3S技术与数字林业等相对稳定的研究方向。

                    完整的课程体系，高质量的课程建设是计算机专业人才培养质量的有力条件。计算机科学与技术专业主干课程有高级语言程序设计、算法设计与分析、数据结构、数字逻辑、计算机组成原理、操作系统原理、编译原理、数据库系统原理、软件工程、计算机网络、高性能与云计算。其中，8门课程为校级精品课和重点课程，每门课程均由3名以上教师构成的教学团队授课。</div>
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
                <h1 style="text-align: center; padding: 15px 0px" >专业分流方向</h1><br>
                <div style="margin-left: 60px"><span class="badge badge-primary" style="background-color: #007bff">发布时间:</span> 2020 1.2 </div>
                <br>
                <hr>
                <div style="padding: 4px 60px"><span class="badge badge-primary" style="background-color: #007bff">简要说明:</span> <br>
                    信息管理与信息系统专业于2000年设立，属于管理科学与工程学科，同年9月开始招生；2002-2013年同时招收中外合作办学项目生。2014年成功申报“管理科学与工程”二级硕士授权点，本科专业代码为110102。目前信息管理与信息系统专业每年招收本科生100人左右，截止到2015年已毕业学生11届，共计1196人，目前在校本科生384人、研究生21人。</div>
                <div  style="padding: 50px 60px"><span class="badge badge-primary" style="background-color: #007bff">详情:</span> 经过近16年的建设发展，专业已形成明确的办学思想与办学理念，具有一定的办学规模、鲜明的办学特色并具备较强的办学实力。建立了一支团结协作、学术梯队完整、结构合理、科研能力强、教学水平高、后备力量强的教师队伍。到目前为止，信管专业有专任教师12人，其中教授1人，副教授6人，讲师5人；具有博士学位6人，具有硕士学位11人，其中在读博士3人，硕士生导师3人。


                    近五年来，专业教师承担国家、省部级各类科研项目19项，其中国家级课题3项，省部级项目4项，校级立项课题16项；各类项目总经费中主持纵向125.3万元，核心以上论文55篇，其中SCI/EI收录34篇，获省部级奖励4项。


                    专业秉承学校“以林业为优势、以林业工程为特色 ”的定位，确立了“成为省内领先 、国内同类院校中具有影响的特色专业”的目标，以期充分发挥产学研一体化优势，通过需求牵引和科研先导，在信息系统开发与建模、电子商务决策与应用 、商务智能与大数据分析等方面形成特色，形成以培养既掌握领域前沿知识又具有较强实践能力和创新能力的复合型专门人才为目标的专业建设理念。</div>
            </div>
        </div>
    </div>


</div>
<%@include file="footer.jsp"%>
<script type="text/javascript">
    $('.header .block .fab>a,.header .block .fab>p, .logo p,.manger a, .no-item>a').css({color: 'black'});
    $('.header .block').css({background: 'white', 'box-shadow': '0 6px 20px 0 rgba(0, 0, 0, 0.19)'});
    jQuery(".ato-content").slide({titCell:".ato-list-fl ul",mainCell:".ato-list ul",autoPage:true,effect:"leftLoop",autoPlay:true,vis:3});
    $('.pay').addClass('active');
    $('.pay > .icon').addClass('active');
    $('.choose').removeClass('active');
    $('.wrap').removeClass('active');
    $('.choose > .icon').removeClass('active');
    $('.wrap > .icon').removeClass('active');
    $('#line').addClass('two');
    $('#line').removeClass('one');
    $('#line').removeClass('three');
</script>
</body>
</html>