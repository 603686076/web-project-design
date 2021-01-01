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
        background: #fff url(img/child.png) center bottom no-repeat;
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
                <a href="">专业介绍 <p>占位标签</p></a>
                <div class="item">
                    <div class="l">
                        <img src="img/logo.jpg" alt="">
                        <p>
                            生活总是困苦的<br>
                            从现在开始<br>
                            虽然晚了些<br>
                            但总能赶上路的
                        </p>
                    </div>
                    <div class="r">
                        <a href="">专业简介</a>
                        <a href="">方向简介</a>
                    </div>
                </div>
            </div>
            <div class="fab">
                <a href="">实验室 <p>占位标签</p></a>
                <div class="item">
                    <div class="l">
                        <img src="img/logo.jpg" alt="">
                        <p>
                            生活是艰难的<br>
                            所以我们要坚强<br>
                            学会微笑<br>
                            会有出口的
                        </p>
                    </div>
                    <div class="r">
                        <a href="">923创新实验室</a>
                        <a href="">925移动开发实验室</a>
                        <a href="">923实验室</a>
                    </div>
                </div>
            </div>
            <div class="fab">
                <a href="">教师队伍 <p>占位标签</p></a>
                <div class="item">
                    <div class="l">
                        <img src="img/logo.jpg" alt="">
                        <p>
                            生活是艰难的<br>
                            所以我们要坚强<br>
                            学会微笑<br>
                            会有出口的
                        </p>
                    </div>
                    <div class="r">
                        <a href="">教授</a>
                        <a href="">副教授</a>
                        <a href="">讲师</a>
                    </div>
                </div>
            </div>
            <div class="fab">
                <a href="">就业指南 <p>占位标签</p></a>
                <div class="item">
                    <div class="l">
                        <img src="img/logo.jpg" alt="">
                        <p>
                            生活是艰难的<br>
                            所以我们要坚强<br>
                            学会微笑<br>
                            会有出口的
                        </p>
                    </div>
                    <div class="r">
                        <a href="">就业指南</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="manger">
            <a href="login">管理员 <p>占位标签</p></a>
        </div>
</div>
