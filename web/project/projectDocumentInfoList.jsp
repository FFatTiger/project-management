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
                <span>项目管理页面 >> 项目文件页面</span>
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
                </div>
            </div>

            <table class="providerTable" cellpadding="0" cellspacing="0">
                <tr class="firstTr">
                    <th width="5%">序号</th>
                    <th width="10%">文件名</th>
                    <th width="10%">文件大小</th>
                    <th width="5%">上传者</th>
                    <th width="10%">所属项目</th>
                    <th width="5%">下载次数</th>
                    <th width="5%">文件类型</th>
                    <th width="10%">审核是否通过</th>
                    <th width="15%">上传时间</th>
                    <th width="25%">操作</th>
                </tr>
                <c:forEach varStatus="p" var="file" items="${FILE_INFO_LIST}">
                    <tr>
                        <td>${p.index+1}</td>
                        <td>${file.title}</td>
                        <td>${file.size}MB</td>
                        <td>${file.createdBy}</td>
                        <td>${file.projectId}</td>
                        <td>${file.downloads}</td>
                        <td>${file.fileType}</td>
                        <td>${file.audit == true ? '是' :'否'}</td>
                        <td><fmt:formatDate value="${file.createdTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        <td>

                            <s:hasAnyRoles name="admin,manager">
                                <a onclick="updateFileName(${file.id})"
                                   class="layui-btn layui-btn-sm">修改
                                </a>
                                <c:choose>
                                    <c:when test="${file.audit == false}">
                                        <a href="${pageContext.request.contextPath}/projectDocument/audit/${file.id}"
                                           class="layui-btn layui-btn-sm">审核通过
                                        </a>
                                    </c:when>
                                    <c:otherwise>
                                        <a href="javascript:return false;"
                                           class="layui-btn layui-btn-sm layui-btn-disabled">审核通过
                                        </a>
                                    </c:otherwise>
                                </c:choose>
                            </s:hasAnyRoles>

                            <a href="${pageContext.request.contextPath}/projectDocument/download/${file.id}"
                               class="layui-btn layui-btn-sm">下载
                            </a>
                            <s:hasRole name="custom">
                                <c:if test="${file.uploadUserId == CUR_USER_ID}">
                                    <a href="${pageContext.request.contextPath}/projectDocument/del/${file.id}"
                                       class="layui-btn layui-btn-sm">删除
                                    </a>
                                </c:if>
                            </s:hasRole>
                            <s:hasAnyRoles name="admin,manager">
                                <a href="${pageContext.request.contextPath}/projectDocument/del/${file.id}"
                                   class="layui-btn layui-btn-sm">删除
                                </a>
                            </s:hasAnyRoles>

                        </td>
                    </tr>
                </c:forEach>
            </table>

            <form class="layui-form updateFileForm" id="updateFileForm" style="display:none; margin-top: 30px">

                <div class="layui-form-item">
                    <label class="layui-form-label">文件名</label>
                    <div class="layui-input-block">
                        <input type="text" id="newName" name="newName"  required lay-verify="required" placeholder="请输入新文件名" autocomplete="off" class="layui-input">
                    </div>
                </div>
            </form>



        </div>

        <div class="layui-footer">
            <!-- 底部固定区域 -->
            © layui.com - 底部固定区域
        </div>
    </div>
</div>
<script>

    function updateFileName(id) {
        layui.use('form', function () {
            var form = layui.form; //只有执行了这一步，部分表单元素才会自动修饰成功
            form.render();
            form.render('input' ,'updateFileForm'); //刷新select选择框渲染
        });

        layer.open({
            type: 1,
            title: '修改权限',
            content: $("#updateFileForm"),
            shade: 0,
            btn: ['保存', '重置'],
            btn1: function (index, layero) {
                $.ajax({
                    url:"${pageContext.request.contextPath}/projectDocument/updateFileName",
                    type:"get",
                    data: $(".updateFileForm").serialize() + '&fileId=' + id,
                    success: function (data) {
                        if (data === true) {
                            alert("更新成功");
                        } else if (data === false) {
                            alert("更新失败");
                        }
                        window.location.href = "${pageContext.request.contextPath}/projectDocument/list?projectId="+'${CUR_PROJECT.id}'+"&searchCondition=";
                    },
                    error: function () {
                        alert('更新异常')
                    }
                })
            },
            btn2: function (index, layero) {
                alert("2222");
                return false;
            },
            cancel: function (layero, index) {
                layer.closeAll();
            }

        });
    }
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