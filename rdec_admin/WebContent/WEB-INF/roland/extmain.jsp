<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="inc/taglib.jsp"%>
<html>
	<head>
		<style type="text/css">
		    #loading-mask{
		        background-color:white;
		        height:100%;
		        position:absolute;
		        left:0;
		        top:0;
		        width:100%;
		        z-index:20000;
		    }
		    #loading{
		        height:auto;
		        position:absolute;
		        left:45%;
		        top:40%;
		        padding:2px;
		        z-index:20001;
		    }
		    #loading a {
		        color:#225588;
		    }
		    #loading .loading-indicator{
		        background:white;
		        color:#444;
		        font:bold 13px Helvetica, Arial, sans-serif;
		        height:auto;
		        margin:0;
		        padding:10px;
		    }
		    #loading-msg {
		        font-size: 10px;
		        font-weight: normal;
		    }
    </style>
	</head>
	<body>
		<div id="loading">
	        <div class="loading-indicator">
	            <img src="${path}/js/extjs/shared/extjs/images/extanim32.gif" width="32" height="32" style="margin-right:8px;float:left;vertical-align:top;"/>正在初始化请稍后...
	            <br /><span id="loading-msg">正在加载系统组件...</span>
	        </div>
    	</div>
    	
	</body>
	<script type="text/javascript" src="${path}/js/extjs/shared/include-ext.js"></script>
	<script type="text/javascript">document.getElementById('loading-msg').innerHTML = '正在初始化模块...';</script>
	<script type="text/javascript" src="${path}/js/roland/main/mainApp.js"></script>
</html>