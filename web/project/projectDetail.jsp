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
                <span>项目管理页面 >> 项目详情页面</span>
            </div>
            <div class="layui-card">
                <div class="layui-card-header">项目：${CUR_PROJECT.name}</div>
                <div class="layui-card-body">
                    <p>描述：${CUR_PROJECT.description}</p>
                    <p>归档时间：<fmt:formatDate value="${CUR_PROJECT.archiveTime}" pattern="yyyy-MM-dd HH:mm:ss"/></p>
                </div>
                <div></div>
            </div>
            <div class="search">
                <span>搜索：</span>
                <input type="text" id="searchCondition" placeholder="请输入文件名、上传者或文件类型"/>
                <input type="button" value="查询" onclick="goPage()"/>
                <div class="operation">
                    <button type="button" value="${CUR_PROJECT.id}"
                            style="margin-right: 10px"
                            class="layui-btn layui-btn-sm uploadFile"
                            id="uploadFile">
                        <i class="layui-icon layui-btn-sm">&#xe67c;</i>上传文件
                    </button>
                    <c:choose>
                        <c:when test="${CUR_PROJECT.archiveTime == null}">
                            <a href="${pageContext.request.contextPath}/project/archive/${CUR_PROJECT.id}"
                               class="layui-btn layui-btn-sm">
                                <i class="layui-icon layui-btn-sm">&#xe61a;</i>归档
                            </a>
                        </c:when>
                        <c:otherwise>
                            <a href="javascript:return false;"
                               class="layui-btn layui-btn-sm layui-btn-disabled">
                                <i class="layui-icon layui-btn-sm">&#xe61a;</i>归档
                            </a>
                        </c:otherwise>
                    </c:choose>
                    <a href="${pageContext.request.contextPath}/project/del/${CUR_PROJECT.id}"
                            class="layui-btn layui-btn-sm">
                        <i class="layui-icon layui-btn-sm">&#xe640;</i>删除
                    </a>
                </div>


            </div>



        </div>

        <div class="layui-footer">
            <!-- 底部固定区域 -->
            © layui.com - 底部固定区域
        </div>
    </div>
</div>
<script>
    layui.use('upload', function () {
        var upload = layui.upload;

        //执行实例
        upload.render({
            elem: '.uploadFile',
            url: '${pageContext.request.contextPath}/projectDocument/upload',
            accept: 'file', //普通文件
            data: {
                projectId: function () {
                    //获取按钮属性
                    return $(".uploadFile").val();
                }
            },
            done: function (res) {
                alert("上传成功")
                window.location.href = '${pageContext.request.contextPath}/projectDocument/list?projectId=' + ${CUR_PROJECT.id} + '&searchCondition='
                //上传完毕回调
            },
            error: function () {
                alert("上传失败")
                //请求异常回调
            }
        });
    })

    function goPage() {
        window.location.href = "${pageContext.request.contextPath}/projectDocument/list?projectId=${CUR_PROJECT.id}&searchCondition=" + $("#searchCondition").val();
    }

</script>
</body>
</html>