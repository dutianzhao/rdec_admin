<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="inc/taglib.jsp"%>
<html>
	<head>
		<style type="text/css">
			.div_l{float: left; display: inline;}
			.div_r{float: right;display: inline;}
			.user_msg{padding: 5px;}
			a{ text-decoration: none;}
		</style>
		<script type="text/javascript">
			function userSchool(obj)
			{
				console.log(obj);
			}
		</script>
	</head>
	<body>
		<div>
		
			<div class="div_l"><img src="${path}/img/logo.png"></div>
			<div class="div_r user_msg">
				<span>欢迎你：[<span style="size: 14px">${sessionScope.user.userName} | ${sessionScope.user.nickName}</span>] | </span>
				<span>
				<c:choose>
					<c:when test="${fn:length(sessionScope.user.userSchool) > 1}">
						
						<select onchange="userSchool(this)">
							<c:forEach items="${sessionScope.user.userSchool}" var="useSchoolName">
								<option value="${useSchoolName.id}" <c:if test="${sessionScope.nowSchool.id eq useSchoolName.id}">selected='selected'</c:if>>${useSchoolName.name}</option>
							</c:forEach>
						</select>
					</c:when>
					
					<c:otherwise>  
						你是属于：${sessionScope.user.userSchool[0].name}学校
   					</c:otherwise>
				</c:choose>
				</span>
				<span> | </span>
				<span><a href="http://www.rdec.com.cn" target="_left">集团首页</a></span>
				<span> | </span>
				<span><a href="#">我的学校</a></span>
			</div>
		
		</div>
	</body>
</html>