<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<c:url var="base" value="/"/>
	<base href="${base}">
	<meta charset="UTF-8">
	<title>登录</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="http://cdn.bootcss.com/jqueryui/1.11.0/jquery-ui.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="../../css/login/default.css">
	<link rel="stylesheet" type="text/css" href="../../css/login/styles.css">
	<style type="text/css">
		.htmleaf-header{
			padding: 1em 190px 1em;
			letter-spacing: -1px;
			text-align: center;
		}
		.htmleaf-header h1 {
			color: #fff;
			font-weight: 600;
			font-size: 2em;
			line-height: 1;
			margin-bottom: 0;
			font-family: "Segoe UI", "Lucida Grande", Helvetica, Arial, "Microsoft YaHei", FreeSans, Arimo, "Droid Sans", "wenquanyi micro hei", "Hiragino Sans GB", "Hiragino Sans GB W3", "FontAwesome", sans-serif;
		}
		.htmleaf-header h1 span {
			font-family: "Segoe UI", "Lucida Grande", Helvetica, Arial, "Microsoft YaHei", FreeSans, Arimo, "Droid Sans", "wenquanyi micro hei", "Hiragino Sans GB", "Hiragino Sans GB W3", "FontAwesome", sans-serif;
			display: block;
			font-size: 60%;
			font-weight: 400;
			padding: 0.8em 0 0.5em 0;
			color: #fff;
		}
	</style>
</head>

<body>
	<header class="htmleaf-header">
		<h1>管理员登录 <span>测试账号密码：admin 123456</span></h1>
	</header>
	<div class='login'>
	  <div class='login_title'>
	    <span>Login to your account</span>
	  </div>
	  <div class='login_fields'>
	    <div class='login_fields__user'>
	      <div class='icon'>
	        <img src='../../img/login/user_icon_copy.png'>
	      </div>
	      <input placeholder='username' type='text'>
	        <div class='validation'>
	          <img src='../../img/login/tick.png'>
	        </div>
	      </input>
	    </div>
	    <div class='login_fields__password'>
	      <div class='icon'>
	        <img src='../../img/login/lock_icon_copy.png'>
	      </div>
	      <input placeholder='password' type='password'>
	      <div class='validation'>
	        <img src='../../img/login/tick.png'>
	      </div>
	    </div>
	    <div class='login_fields__submit'>
	      <input type='submit' value='Log In'>
	      <div class='forgot'>
	        <a href='#'>Forgotten password?</a>
	      </div>
	    </div>
	  </div>
	  <div class='success'>
	    <h2>Authentication Success</h2>
	    <p>Welcome back</p>
	  </div>
	  <div class='disclaimer'>
	    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce semper laoreet placerat. Nullam semper auctor justo, rutrum posuere odio vulputate nec.</p>
	  </div>
	</div>
	<div class='authent'>
	  <img src='../../img/login/puff.svg'>
	  <p>Authenticating...</p>
	</div>
	<script src='../../js/login/stopExecutionOnTimeout.js?t=1'></script>
	<script src="../../js/login/jquery-2.1.1.min.js"></script>
	<script src="http://cdn.bootcss.com/jqueryui/1.11.0/jquery-ui.min.js"></script>
	<script>
	$('input[type="submit"]').click(function () {
	    $('.login').addClass('test');
	    setTimeout(function () {
	        $('.login').addClass('testtwo');
	    }, 300);
	    setTimeout(function () {
	        $('.authent').show().animate({ right: -320 }, {
	            easing: 'easeOutQuint',
	            duration: 600,
	            queue: false
	        });
	        $('.authent').animate({ opacity: 1 }, {
	            duration: 200,
	            queue: false
	        }).addClass('visible');
	    }, 500);
	    setTimeout(function () {
	        $('.authent').show().animate({ right: 90 }, {
	            easing: 'easeOutQuint',
	            duration: 600,
	            queue: false
	        });
	        $('.authent').animate({ opacity: 0 }, {
	            duration: 200,
	            queue: false
	        }).addClass('visible');
	        $('.login').removeClass('testtwo');
	    }, 2500);
	    setTimeout(function () {
	        $('.login').removeClass('test');
	        $('.login div').fadeOut(123);
	    }, 2800);
	    setTimeout(function () {
	        $('.success').fadeIn();
	    }, 3200);
	});
	$('input[type="text"],input[type="password"]').focus(function () {
	    $(this).prev().animate({ 'opacity': '1' }, 200);
	});
	$('input[type="text"],input[type="password"]').blur(function () {
	    $(this).prev().animate({ 'opacity': '.5' }, 200);
	});
	$('input[type="text"],input[type="password"]').keyup(function () {
	    if (!$(this).val() == '') {
	        $(this).next().animate({
	            'opacity': '1',
	            'right': '30'
	        }, 200);
	    } else {
	        $(this).next().animate({
	            'opacity': '0',
	            'right': '20'
	        }, 200);
	    }
	});
	var open = 0;
	$('.tab').click(function () {
	    $(this).fadeOut(200, function () {
	        $(this).parent().animate({ 'left': '0' });
	    });
	});
	</script>
</body>
</html>