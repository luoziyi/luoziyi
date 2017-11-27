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
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">
	   function toSend(){
		   // name=xxx&password=xxx&age=12
		   var _data = "name=" + document.getElementById("name").value;
		   $.ajax({
			   type:'post',
			   url:'helloServlet',
			   data:_data,
			   success:function(result){
				   var oDiv = document.getElementById("divId");
				   oDiv.innerHTML = oDiv.innerHTML + "<br/>" + result;
			   },
			   error:function(msg){
				   alert(msg);
			   }
		   });
	   }
	   
	   function toLoad(){
		   var _data = "name=" + document.getElementById("name").value;
		   $("#divId").load('helloServlet',_data);
	   }
	   
	   function toGet(){
		   var _data = "name=" + document.getElementById("name").value;
		   //$.get('helloServlet',{name:"你好"},function(data){
		   $.get('helloServlet',_data,function(data){
			   $("#divId").html(data);
		   });
	   }
	   
	   function toGetScript(){
		   $.getScript('js/demo.js');
	   }
	   
	   function toAdd(){
	   alert(1);
	   var a = add(1,2);
	   alert(a);
	   }
	   function toSend2(){
		   var _data = "name=" + document.getElementById("name").value;
		   $.ajax({
			   type:'post',
			   url:'helloServlet',
			   data:_data,
			   dataType:'json',
			   success:function(result){
				   var oDiv = document.getElementById("divId");
				   oDiv.innerHTML = oDiv.innerHTML + "<br/>" + result;
			   },
			   error:function(msg){
				   alert(msg);
			   }
		   });
	   }
	</script>
  </head>
  
  <body>
    Demo Hello Ajax <br>
    <input type='text' name='name' id="name"/>
    <input type='button' value='发送' onClick="toSend2()"/>
    <br/>
    <div id="divId">
    </div>
    <input type='button' value='test add' onclick="toAdd()"/>
  </body>
</html>
