<%@ page pageEncoding="UTF-8" %>
<style>

    .block {
        position: relative;
        height: 100%;
        display: flex;
        justify-content: space-between;
        align-items: center;
        background: linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0));
    }

    .block .nav_main {
        font-size: 18px;
        display: flex;
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
        background: #fff center bottom repeat;
    }

    .fab .item .l{
        display: flex;
        width: 45%;
    }

    .fab .item .r{
        width: 55%;
    }

    .manger{
        position: relative;
        vertical-align: top;
        margin: 0 25px;
        font-size: 18px;
        color: white;
    }
</style>

    <div class="block">
        <div class="logo">
            <!--                    <img src="resources/logo.jpg" alt="">-->
            <p>软件工程</p>
        </div>
        <div class="nav_main">
            <div class="fab">
                <div class="no-item">
                    <a href="index">首页 <p>占位标签</p></a>
                </div>
            </div>
            <div class="fab">
                <a href="${pageContext.request.contextPath}/professionalInformation1.jsp">专业介绍 <p>占位标签 占位标签</p></a>
                <div class="item">
                    <div class="l">
                        <img src="img/school.png" alt="">
                        <p>
                            学参天地<br>
                            <br>
                            德和自然<br>

                        </p>
                    </div>
                    <div class="r">
                        <a href="${pageContext.request.contextPath}/professionalInformation1.jsp">专业简介</a>
                        <a href="${pageContext.request.contextPath}/professionalInformation2.jsp">方向简介</a>
                        <a href="${pageContext.request.contextPath}/professionalInformation3.jsp">专业分流</a>
                    </div>
                </div>
            </div>
            <div class="fab">
                <a href="${pageContext.request.contextPath}/laboratorys923.jsp">实验室 <p>占位标签 占位标签</p></a>
                <div class="item">
                    <div class="l">
                        <img src="img/school.png" alt="">
                        <p>
                            饮水思源,<br>
                            爱国荣校<br>
                            博学、审问、慎思<br>
                            明辨、笃行
                        </p>
                    </div>
                    <div class="r">
                        <a href="${pageContext.request.contextPath}/laboratorys923.jsp">923创新实验室</a>
                        <a href="${pageContext.request.contextPath}/laboratorys925.jsp">925移动开发实验室</a>
                        <a href="${pageContext.request.contextPath}/laboratorys926.jsp">926机器人实验室</a>
                    </div>
                </div>
            </div>
            <div class="fab">
                <a href="${pageContext.request.contextPath}/teachers1.jsp">教师队伍 <p>占位标签 占位标签</p></a>
                <div class="item">
                    <div class="l">
                        <img src="img/school.png" alt="">
                        <p>
                            厚德载物<br>
                            自强不息<br>
                            博学而笃志<br>
                            切问而近思
                        </p>
                    </div>
                    <div class="r">
                        <a href="${pageContext.request.contextPath}/teachers1.jsp">教授</a>
                        <a href="${pageContext.request.contextPath}/teachers2.jsp">副教授</a>
                        <a href="${pageContext.request.contextPath}/teachers3.jsp">讲师</a>
                    </div>
                </div>
            </div>
            <div class="fab">
                <div class="no-item">
                    <a href="${pageContext.request.contextPath}/employmentGuide.jsp">就业指南 <p>占位标签</p></a>
                </div>
            </div>
        </div>
        <div class="manger">
            <a href="management" title="进入新闻公告管理">管理员 <p>占位标签</p></a>
        </div>
</div>
<script>

    $(".fab .item").hide();
    $(".header .nav_main .fab").hover(
        function () {
            $(this).children(".item").fadeIn(0);
        },function () {
            $(this).children(".item").hide();
        });

    function professor() {
        $('.choose').addClass('active');
        $('.choose > .icon').addClass('active');
        $('.pay').removeClass('active');
        $('.wrap').removeClass('active');
        $('.ship').removeClass('active');
        $('.pay > .icon').removeClass('active');
        $('.wrap > .icon').removeClass('active');
        $('.ship > .icon').removeClass('active');
        $('#line').addClass('one');
        $('#line').removeClass('two');
        $('#line').removeClass('three');
        $('#line').removeClass('four');
        $('#first').addClass('active');
        $('#second').removeClass('active');
        $('#third').removeClass('active');
        $('#fourth').removeClass('active');
    }

    function associateProfessor() {
        $('.pay').addClass('active');
        $('.pay > .icon').addClass('active');
        $('.choose').removeClass('active');
        $('.wrap').removeClass('active');
        $('.ship').removeClass('active');
        $('.choose > .icon').removeClass('active');
        $('.wrap > .icon').removeClass('active');
        $('.ship > .icon').removeClass('active');
        $('#line').addClass('two');
        $('#line').removeClass('one');
        $('#line').removeClass('three');
        $('#line').removeClass('four');
        $('#first').removeClass('active');
        $('#second').addClass('active');
        $('#third').removeClass('active');
        $('#fourth').removeClass('active');
    }

    function lecturer() {
        $('.wrap').addClass('active');
        $('.wrap > .icon').addClass('active');
        $('.pay').removeClass('active');
        $('.choose').removeClass('active');
        $('.ship').removeClass('active');
        $('.pay > .icon').removeClass('active');
        $('.choose > .icon').removeClass('active');
        $('.ship > .icon').removeClass('active');
        $('#line').addClass('three');
        $('#line').removeClass('two');
        $('#line').removeClass('one');
        $('#line').removeClass('four');
        $('#first').removeClass('active');
        $('#second').removeClass('active');
        $('#third').addClass('active');
        $('#fourth').removeClass('active');
    }

</script>
