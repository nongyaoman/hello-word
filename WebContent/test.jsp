<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title></title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">	
	<style type="text/css">
		
	.chk_1,.chk_2  {
        display: none;
    }

    .chk_1 + label {
        background-color: red;
        border: 1px solid #C1CACA;
        box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05), inset 0px -15px 10px -12px rgba(0, 0, 0, 0.05);
        padding: 9px;
        border-radius: 5px;
        display: inline-block;
        position: relative;
        margin-right: 30px;
    }

    .chk_1:checked + label:after {
        content: '\2714'; /*勾选符号*/
        position: absolute;
        top: 0px;
        left: 0px;
        color: white;
        width: 100%;
        text-align: center;
        font-size: 1.0em;
        vertical-align: text-top;
    }
    
    
    
    <!--******************-->
    .chk_2 {
        display: none;
    }

    .chk_2 + label {
        background-color: blue;
        border: 1px solid #C1CACA;
        box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05), inset 0px -15px 10px -12px rgba(0, 0, 0, 0.05);
        padding: 9px;
        border-radius: 15px;
        display: inline-block;
        position: relative;
        margin-right: 30px;
    }

    .chk_2:checked + label:after {
        content: '\2714'; /*勾选符号*/
        position: absolute;
        top: 0px;
        left: 0px;
        color: white;
        width: 100%;
        text-align: center;
        font-size: 1.0em;
        vertical-align: text-top;
    }
	</style>
  </head>
  <body>
	  	<center>
		  	<div>
		  		<input type="checkbox" id="checkbox_a1" class="chk_1" />
				<label for="checkbox_a1"></label>
				
				<input type="checkbox" id="checkbox_a2" class="chk_2" />
				<label for="checkbox_a2"></label>
		  	</div>	
	  	</center>
  </body>
</html>
