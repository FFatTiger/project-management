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
                <span>项目管理页面 >> 项目文件页面</span>
            </div>
            <table class="providerTable" cellpadding="0" cellspacing="0">
                <tr class="firstTr">
                    <th width="5%">序号</th>
                    <th width="10%">文件名</th>
                    <th width="5%">文件大小</th>
                    <th width="5%">上传者</th>
                    <th width="5%">所属组织</th>
                    <th width="10%">所属项目</th>
                    <th width="10%">下载次数</th>
                    <th width="20%">额外信息</th>
                    <th width="15%">文件类型</th>
                    <th width="15%">上传时间</th>
                </tr>
                <c:forEach varStatus="p" var="file" items="${FILE_INFO_LIST}">
                    <tr>
                        <td>${p.index+1}</td>
                        <td>${file.title}</td>
                        <td>${file.size}</td>
                        <td>${file.createdBy}</td>
                        <td>${file.groupId}</td>
                        <td>${file.projectId}</td>
                        <td>${file.downloads}</td>
                        <td>${file.extra}</td>
                        <td>${file.fileType}</td>
                        <td>${file.createdTime}</td>
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