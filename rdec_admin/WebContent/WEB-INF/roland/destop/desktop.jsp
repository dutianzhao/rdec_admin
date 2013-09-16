<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../inc/taglib.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="${path}/js/desktop/css/desktop.css" />
    <script type="text/javascript" src="${path}/js/extjs/shared/include-ext.js"></script>
    <script type="text/javascript">
        Ext.Loader.setPath({
            'Ext.ux.desktop': contextPath + '/js/desktop/js',
            MyDesktop: contextPath + '/js/desktop/app/view/'
        });

        Ext.require('MyDesktop.App');

        var myDesktopApp;
        Ext.onReady(function () {
            myDesktopApp = new MyDesktop.App();
        });
    </script>
</head>
<body>
 		
</body>
</html>