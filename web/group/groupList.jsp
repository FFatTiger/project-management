<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/JSTLPage.jsp" %>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>项目管理系统</title>

    <%@ include file="../common/cssOrJs.jsp" %>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <%@ include file="../common/top.jsp"%>
    <div class="layui-body">
        <div class="center">
            <div class="location">
                <strong>你现在所在的位置是:</strong>
                <span>账单管理页面 >> 订单添加页面</span>
            </div>
            <div class="providerAdd">
                <h2 >${group_msg}</h2>
            </div>

        </div>

        <div class="layui-footer">
            <!-- 底部固定区域 -->
            © layui.com - 底部固定区域
        </div>
    </div>

</body>
</html>