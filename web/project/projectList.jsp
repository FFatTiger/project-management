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
    <%@ include file="../common/top.jsp" %>
    <div class="layui-body">
        <div class="center">
            <div class="location">
                <strong>你现在所在的位置是:</strong>
                <span>项目管理页面 >> 项目信息页面</span>
            </div>
            <div class="layui-layout-right">
                <a class="layui-btn layui-btn-sm" href="${pageContext.request.contextPath}/group/isOwnerList">增加项目</a>
            </div>
            <table class="providerTable" cellpadding="0" cellspacing="0">
                <tr class="firstTr">
                    <th width="5%">序号</th>
                    <th width="10%">名称</th>
                    <th width="20%">描述</th>
                    <th width="5%">所属组织</th>
                    <th width="5%">是否私有</th>
                    <th width="5%">是否归档</th>
                    <th width="15%">归档时间</th>
                    <th width="10%">项目开始日期</th>
                    <th width="10%">项目截止日期</th>
                    <th width="5%">创建人</th>
                    <th width="10%">操作</th>
                </tr>
                <c:forEach varStatus="pro" var="p" items="${PROJECT_INFO_LIST}">
                    <tr>
                        <td>${pro.index+1}</td>
                        <td>${p.name}</td>
                        <td>${p.description}</td>
                        <td>${p.groupId}</td>
                        <td>${p.isPrivate eq 1?"是":"否"}</td>
                        <td>${p.archive eq 1?"是":"否"}</td>
                        <td><fmt:formatDate value="${p.archiveTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        <td><fmt:formatDate value="${p.beginTime}" pattern="yyyy-MM-dd"/></td>
                        <td><fmt:formatDate value="${p.endTime}" pattern="yyyy-MM-dd"/></td>
                        <td>${p.createdBy}</td>
                        <td>
                            <div>
                                <a class="layui-btn layui-btn-sm" href="${pageContext.request.contextPath}/projectDocument/list?projectId=${p.id}&searchCondition=">详情</a>
                            </div>
                        </td>
<%--                        <td>--%>
<%--                            <button type="button" value="${p.id}"--%>
<%--                                    class="layui-btn layui-btn-sm uploadFile"--%>
<%--                                    id="uploadFile">--%>
<%--                                <i class="layui-icon layui-btn-sm">&#xe67c;</i>上传文件--%>
<%--                            </button>--%>
<%--                            <button type="button" value="${p.id}" onclick="archiveOnClick(this);"--%>
<%--                                    class="layui-btn layui-btn-sm" id="archiveProject">--%>
<%--                                <i class="layui-icon layui-btn-sm">&#xe61a;</i>归档--%>
<%--                            </button>--%>
<%--                            <button type="button" value="${p.id}" onclick="delOnClick(this);"--%>
<%--                                    class="layui-btn layui-btn-sm" id="delProject">--%>
<%--                                <i class="layui-icon layui-btn-sm">&#xe640;</i>删除--%>
<%--                            </button>--%>
<%--                        </td>--%>
                    </tr>
                </c:forEach>

            </table>

        </div>

        <div class="layui-footer">
            <!-- 底部固定区域 -->
            © layui.com - 底部固定区域
        </div>
    </div>
</div>
<script>
    function delOnClick(btn) {
        window.location.href = '${pageContext.request.contextPath}/project/del/' + $(btn).val();
    }

    function archiveOnClick(btn) {
        window.location.href = '${pageContext.request.contextPath}/project/archive/' + $(btn).val();
    }

    layui.use('upload', function () {
        var upload = layui.upload;

        //执行实例

        $('.uploadFile').each(function () {
            var btn = $(this);  //点击按钮对象
            upload.render({
                elem: this,
                url: '${pageContext.request.contextPath}/projectDocument/upload',
                accept: 'file', //普通文件
                data: {
                    projectId: function () {
                        //获取按钮属性
                        return btn.attr("value");
                    }
                },
                done: function (res) {
                    alert("上传成功")
                    //上传完毕回调
                },
                error: function () {
                    alert("上传失败")
                    //请求异常回调
                }
            });
        });
    });

        // var uploadInst = upload.render({
        //     elem: '.uploadFile' //绑定元素
        //     , url: $('#uploadFile').attr('value') //上传接口
        //     , accept: 'file' //允许上传的文件类型
        //     ,before: function(obj){ //obj参数包含的信息，跟 choose回调完全一致，可参见上文。
        //         layer.load(); //上传loading
        //     }
        //     , done: function (res) {
        //         layer.closeAll('loading'); //关闭loading
        //         //上传完毕回调
        //     }
        //     , error: function () {
        //         layer.closeAll('loading'); //关闭loading
        //         //请求异常回调
        //     }
        // });
</script>
</body>
</html>