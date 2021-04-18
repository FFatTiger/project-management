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
                <span>项目管理页面 >> 项目信息页面</span>
            </div>
            <table class="providerTable" cellpadding="0" cellspacing="0">
                <tr class="firstTr">
                    <th width="5%">序号</th>
                    <th width="5%">名称</th>
                    <th width="10%">描述</th>
                    <th width="10%">项目类型</th>
                    <th width="5%">所属组织</th>
                    <th width="5%">是否私有</th>
                    <th width="5%">是否归档</th>
                    <th width="15%">归档时间</th>
                    <th width="15%">项目开始日期</th>
                    <th width="15%">项目截止日期</th>
                    <th width="10%">创建人</th>
                </tr>
                <c:forEach varStatus="pro" var="p" items="${PROJECT_INFO_LIST}">
                    <tr>
                        <td>${pro.index+1}</td>
                        <td>${p.name}</td>
                        <td>${p.description}</td>
                        <td>${p.typeId}</td>
                        <td>${p.groupId}</td>
                        <td>${p.isPrivate eq 1?"是":"否"}</td>
                        <td>${p.archive eq 1?"是":"否"}</td>
                        <td>${p.archiveTime}</td>
                        <td>${p.beginTime}</td>
                        <td>${p.endTime}</td>
                        <td>${p.createdBy}</td>
                    </tr>
                </c:forEach>

            </table>

        </div>

        <div class="layui-footer">
            <!-- 底部固定区域 -->
            © layui.com - 底部固定区域
        </div>
    </div>

</body>
</html>