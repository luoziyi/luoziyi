<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
	   var requst;
	   function toSend(){
		   // 创建
		   request = new XMLHttpRequest();//0
		   // 绑定事件
		   request.onreadystatechange=refreshDiv;
		   // 获取输入框的名称
		   var nameValue = document.getElementById('name').value;
		   var url = 'helloServlet?name=' + nameValue;
		   // open
		   request.open("POST",url,true);//1
		   request.setRequestHeader("demoHeader","hellohowareyou");
		   // 发送
		   request.send();//2  自动3  自动4
		   
	   }
	   
	   function refreshDiv(){
		   if(request.readyState==4){
			   //alert(request.getAllResponseHeaders());
			   //alert(request.getResponseHeader('Server'));
			   // 获取响应内容
			   var responseText = request.responseText;
			   // 追加到div后面
			   var oDiv = document.getElementById('divId');
			   oDiv.innerHTML = oDiv.innerHTML + "<br/>" + responseText;
		   }
	   }
	</script>
  </head>
  
  <body>
    Demo Hello Ajax <br>
    <input type='text' name='name' id="name"/>
    <input type='button' value='发送' onClick="toSend()"/>
    <br/>
    <div id="divId">
    </div>
  </body>
</html>
