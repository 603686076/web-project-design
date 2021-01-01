<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!DOCTYPE html>
<html>
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0" />
    <title>新闻修改</title>

    <link href="css/news/froalaeditor.min.css" rel="stylesheet" type="text/css" />
    <script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="../../js/news/froala_editor.pkgd.min.js"></script>
    <style>
        html { height:100%; }
        body { padding: 0; margin: 0; height:100%; }
        .wrapper { max-width:980px; margin:0 auto; box-sizing:border-box; }
        .article_editor { background:#F5F5F5; padding:80px 0; font-size:0; box-sizing:border-box; position:relative; }
        .article_editor_page { background:#FFFFFF; padding:60px; box-sizing:border-box; border:1px solid #EEEEEE; /*box-shadow:0 1px 5px 0 rgba(0,0,0,0.05);*/ }
        .article_editor_title input { width:100%; border:0; padding:0; margin:0; outline:0; height:30px; font-size:24px; font-weight:500; margin-bottom:10px; }
        .article_editor_toolbar { position:absolute; top:0; left:0; width:100%; z-index:9999999999; }
        .article_editor_info { padding-bottom:5px; margin-bottom:20px; border-bottom:1px solid #EEEEEE; }
        .article_editor_info span { display:inline-block; vertical-align:top; font-size:14px; padding:0; border:0; height:30px; line-height:30px; color:#999999; outline:0; padding-right:5px; cursor:text; }
        .article_editor_info input { display:inline-block; vertical-align:top; font-size:14px; padding:0; border:0; height:30px; outline:0; }
        .article_editor_info input.l { width:150px; }
        .article_editor_info input.s { width:60px; }
        .article_editor_info select { display:inline-block; vertical-align:top; font-size:14px; padding:0; border:0; height:30px; outline:0; margin:0; color:#288BDE; padding-right:10px; }
        .article_editor_info select { appearance:none; -moz-appearance:none; -webkit-appearance:none; cursor:pointer; }
        .article_editor_info select::-ms-expand { display:none; }
        .article_editor_info2 .con { position:relative; padding-left:180px; }
        .article_editor_info2 .con .fl { position:absolute; top:0; left:0; }
        .article_editor_info2 .con .fl .thumb { position:absolute; box-sizing:border-box; width:160px; height:114px; border:2px dashed #EEEEEE; }
        .article_editor_info2 .con .fr textarea { resize:none; padding:10px; margin:0; width:100%; box-sizing:border-box; line-height:23px; height:114px; border:1px solid #EEEEEE; outline:0; }
        .article_editor_options { border-top:1px solid #EEEEEE; margin-top:20px; }
        .article_editor_options .tit { font-size:16px; padding:20px 0 15px 0; }
        .article_editor_options .con ul { padding:0; margin:0;  list-style:none; border-top:1px solid #EEEEEE; }
        .article_editor_options .con li .box { position:relative; border:1px solid #EEEEEE; font-size:14px; color:#666666; padding-left:80px; border-top:0; }
        .article_editor_options .con li .box span { position:absolute; top:0; left:0; line-height:35px; padding-left:10px; }
        .article_editor_options .con li .box input { outline:0; }
        .article_editor_options .con li .box input[type=radio],
        .article_editor_options .con li .box input[type=checkbox] { margin:0; margin-right:5px; vertical-align:-2px; }
        .article_editor_options .con li .box input[type=text] { border:0; padding:0; margin:0; width:100%; height:35px; }
        .article_editor_options .con li .box label { display:inline-block; vertical-align:top; line-height:35px; margin-right:10px; cursor:pointer; }
        .article_editor_savebar { position:absolute; bottom:0; left:0; width:100%; z-index:9999999999; }
        .article_editor_savebar .fl { float:left; }
        .article_editor_savebar .fl i { margin-left:8px; font-style:normal; }
        .article_editor_savebar .fl span { font-size:14px; color:#999999; line-height:30px; }
        .article_editor_savebar .fr { float:right; }
        .article_editor_savebar .fr button { border:1px solid #E7E7E7; background:#FFFFFF; box-sizing:border-box; padding:0; padding:0 22px; line-height:30px; margin-left:12px; cursor:pointer; outline:0; }
        .article_editor_savebar .fr button:first-child { background:#44B549; border-color:#44B549; color:#FFFFFF; }
        .article_editor_savebar .wrapper { background:#FFFFFF; border:1px solid #EEEEEE; padding:25px 60px; overflow:hidden; border-bottom:0; }
        .article_editor_textarea { font-size:16px; }
    </style>
</head>

<body>
<section class="article_editor">


    <form action="saveupdatenews" method="post">

        <div class="article_editor_toolbar"></div>
        <div class="article_editor_content">
            <div class="wrapper">
                <div class="article_editor_page">
                    <div class="article_editor_title"><input type="text" name="newtitle" value="${anew.title}" max-length="64"></div>
                    <div class="article_editor_info">
                        <select name="" id=""><option value="">新闻中心</option><option value="">行业资讯</option></select>
                        <label>
                            <span>发布于</span>
                            <input type="text" class="l" placeholder="2020-01-31 19:47:09">
                        </label>
                        <label>
                            <span>阅读数</span>
                            <input type="text" class="s" placeholder="0">
                        </label>
                    </div>
                    <div class="article_editor_textarea"><textarea id="editor" name="newtext">${anew.text}</textarea></div>
                    <div class="article_editor_options">
                        <div class="article_editor_info2">
                            <div class="tit">封面摘要</div>
                            <div class="con">
                                <div class="fl"><div class="thumb"></div></div>
                                <div class="fr"><textarea  name="newsummary">${anew.summary}</textarea></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="article_editor_savebar">
            <div class="wrapper">
                <div class="fl"><span>正文字数<i class="article_editor_charCount">0</i></span></div>
                <div class="fr"><button type="submit">保存发布</button><button>取消发布</button></div>
            </div>
        </div>


    </form>
</section>
<script>
    $(window).scroll(setEditFixed);
    $(document).ready(function(){setEditFixed();initEditor();});
    $(window).resize(function(){setEditFixed();initEditor();});
</script>
</body>
</html>