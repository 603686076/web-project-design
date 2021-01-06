<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
	<head>
		<c:url var="base" value="/"/>
		<base href="${base}">
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0" />
		<title>编辑</title>

		<link rel="stylesheet" href="css/editor/editor.css">
		<link href="css/editor/froalaeditor.min.css" rel="stylesheet" type="text/css" />
		<script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
		<script type="text/javascript" src="js/editor/froala_editor.pkgd.min.js" charset="UTF-8"></script>
	</head>

	<body>
		<section class="article_editor">


			<form action="newsornotice" method="post">
			<div class="article_editor_toolbar"></div>
			<div class="article_editor_content">
				<div class="wrapper">
					<div class="article_editor_page">
						<div class="article_editor_title"><input type="text" placeholder="请在这里输入标题" name="newtitle" max-length="64"></div>
						<div class="article_editor_info">
							<select name="type" id=""><option value="news">新闻</option><option value="notice">公告</option></select>
							<label>
								<span>发布于</span>
								<c:set var="now" value="<%=new java.util.Date()%>" />
								<input type="text" class="l" placeholder="<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${now}" />" disabled>
							</label>
							<span><span style="color: red">tips:</span>在上方选择你要发布 <span style="color: darkblue">新闻</span>或者 <span style="color: darkblue">公告</span>(新闻会显示在首页的左侧，公告显示在首页的右侧，是两个同的table)</span>
<%--							<label>--%>
<%--								<span>阅读数</span>--%>
<%--								<input type="text" class="s" placeholder="0">--%>
<%--							</label>--%>
						</div>
						<div class="article_editor_textarea"><textarea id="editor" name="newtext"></textarea></div>
						<div class="article_editor_options">
							<div class="article_editor_info2">
								<div class="tit">封面摘要</div>
								<div class="con">
									<div class="fl"><div class="thumb"></div></div>
									<div class="fr"><textarea placeholder="摘要会在文章详情页显露，帮助读者快速了解内容，同时新闻的摘要还会显示在首页的新闻列表里，公告一般很短，此项可不填" name="newsummary"></textarea></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="article_editor_savebar">
				<div class="wrapper">
					<div class="fl"><span>正文字数<i class="article_editor_charCount">0</i></span></div>
					<div class="fr"><button type="submit">保存发布</button><button type="reset">取消发布</button></div>
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