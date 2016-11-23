<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/static/h-ui/css/H-ui.min.css" rel="stylesheet"
	type="text/css" />
<link href="${pageContext.request.contextPath}/static/h-ui/css/H-ui.login.css" rel="stylesheet"
	type="text/css" />
<!--  <link href="${pageContext.request.contextPath}/static/h-ui/css/style.css" rel="stylesheet"
	type="text/css" />-->
<link href="${pageContext.request.contextPath}/lib/Hui-iconfont/1.0.7/iconfont.css" rel="stylesheet"
	type="text/css" />
<title>Login</title>
</head>
<body>
	<div class="header">
		<div class="header_box">
		<img class="login-logo" src="./static/h-ui/images/login-logo@2x.png" />
		</div>
	</div> 
	<div class="loginWraper">
		<div id="login-bg">
			<img src="./static/h-ui/images/login-bg@2x.png" width="600">
		</div>
		<div id="loginform" class="loginBox" style="margin-left: 200px">
			<div class="loginform_header"  style="margin-top: 20px">登录</div>
			<form class="form form-horizontal" >
				<div class="row cl">
					<div class="layui-input-block">
     				<input value="user" name="role" checked="" type="radio">用户&nbsp;&nbsp;&nbsp;&nbsp;
     				<input value="admin" name="role" type="radio">管理员
     				</div>
				</div>
				<br>
				<div class="row cl">
					<input type="text" placeholder="用户名" class="input-text"
						name="personname" id="personname"></input> <label
						class="label_pos"><i class="Hui-iconfont">&#xe60d;</i></label>
				</div>
				<br>
				<div class="row cl">
					<input type="password" placeholder="密码" class="input-text"
						name="password" id="password"></input> <label
						class="label_pos"><i class="Hui-iconfont">&#xe60e;</i></label>
				</div>
				<br>
				<div class="row cl" style="color: #0764ae; font-size: 16px;">
					<input name="login" id="login" type="button"
						class="btn btn-success radius size-L"
						onclick="" value="&nbsp;登&nbsp;&nbsp;&nbsp;&nbsp;录&nbsp;"
						style="background-color: #3973cb;">
					<input name="reset" type="reset"
						class="btn btn-default radius size-L"
						value="&nbsp;注&nbsp;&nbsp;&nbsp;&nbsp;册&nbsp;">
				</div>
			</form>
		</div>
	</div>
	<div class="footer">StockTradeSystem &copy; 2016级数据挖掘</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layer/2.1/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/h-ui/js/H-ui.js"></script>
<script type="text/javascript">
$("#login").on('click',function(){
	var role;
	var personname;
	var password;
	$("input[name='role']").each(function(){
		if($(this).is(":checked")){
			role = $(this).val();
		}
	});
	personname = $("#personname").val();
	password = $("#password").val();
	if(personname == ""){
		layer.alert("用户名不能为空！");
	}else if(password == ""){
		layer.alert("密码不能为空！");
	}else if(role == "user"){
		if(personname == "user" && password == "user"){
			layer.alert("登录成功！");
		}else{
			layer.alert("用户名或密码错误！")
		}
	}else if(role == "admin"){
		if(personname == "admin" && password == "admin"){
			layer.alert("登录成功！");
		}else{
			layer.alert("用户名或密码错误！")
		}
	}
});
</script>
</html>