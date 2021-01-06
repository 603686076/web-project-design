<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
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

            padding-top: 20px;
            background-color: #eff3f5;
        }
        .main{
            display: block;
            border-radius: 15px;
            width: 90%;
            margin: auto;
            background-color: white;
        }
    </style>
</head>
<body>


<div class="main">
    <div class="professionalPresentation">
        <h1 style="text-align: center; padding: 15px 0px" >机器人实验室</h1><br>
        <div style="margin-left: 60px"><span class="badge badge-primary" style="background-color: #007bff">发布时间:</span> 2020 1.2 </div>
        <br>
        <hr>
        <div style="text-align: center; padding-top: 25px; " >
            <img src="img/laboratory/926.png" alt="" style="width: 400px; height: auto;">
        </div>
        <div  style="padding: 50px 60px"><span class="badge badge-primary" style="background-color: #007bff">正文:</span> 机器人（Robot）是一种能够半自主或全自主工作的智能机器。历史上最早的机器人见于隋炀帝命工匠按照柳抃形象所营造的木偶机器人，施有机关，有坐、起、拜、伏等能力。
            机器人具有感知、决策、执行等基本特征，可以辅助甚至替代人类完成危险、繁重、复杂的工作，提高工作效率与质量，服务人类生活，扩大或延伸人的活动及能力范围。
            1920年，捷克作家卡雷尔·凯佩克（Karel Capek）发表了科幻剧本《罗萨姆的万能机器人》。在剧本中，凯佩克把捷克语“Robota”写成了“Robot”，“Robota”是奴隶的意思。该剧预告了机器人的发展对人类社会的悲剧性影响，引起了人们的广泛关注，被当成了“机器人”一词的起源。在该剧中，机器人按照其主人的命令默默地工作，没有感觉和感情，以呆板的方式从事繁重的劳动。后来，罗萨姆公司取得了成功，使机器人具有了感情，导致机器人的应用部门迅速增加。在工厂和家务劳动中，机器人成了必不可少的成员。机器人发觉人类十分自私和不公正，终于造反了，机器人的体能和智能都非常优异，因此消灭了人类。但是机器人不知道如何制造它们自己，认为它们自己很快就会灭绝，所以它们开始寻找人类的幸存者，但没有结果。最后，一对感知能力优于其他机器人的男女机器人相爱了。这时机器人进化为人类，世界又起死回生了。
            着人们对机器人技术智能化本质认识的加深，机器人技术开始源源不断地向人类活动的各个领域渗透。结合这些领域的应用特点，人们发展了各式各样的具有感知、决策、行动和交互能力的特种机器人和各种智能机器人。现在虽然还没有一个严格而准确的机器人定义，但是我们希望对机器人的本质做些把握：机器人是自动执行工作的机器装置。它既可以接受人类指挥，又可以运行预先编排的程序，也可以根据以人工智能技术制定的原则纲领行动。它的任务是协助或取代人类的工作。它是高级整合控制论、机械电子、计算机、材料和仿生学的产物，在工业、医学、农业、服务业、建筑业甚至军事等领域中均有重要用途。
        </div>
    </div>
</div>
</body>
</html>