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
                <s:hasRole name="custom">
                    <button class="layui-btn layui-btn-sm addMember layui-btn-disabled" >增加成员</button>
                </s:hasRole>
                <s:hasAnyRoles name="admin,manager">
                    <button class="layui-btn layui-btn-sm addMember" onclick="addMemberClick()">增加成员</button>
                </s:hasAnyRoles>
            </div>
            <table class="providerTable" cellpadding="0" cellspacing="0">
                <tr class="firstTr">
                    <th width="5%">序号</th>
                    <th width="10%">用户名</th>
                    <th width="20%">加入时间</th>
                    <th width="5%">角色</th>
                    <th width="10%">操作</th>
                </tr>
                <c:forEach varStatus="pro" var="p" items="${PROJECT_MEMBER_LIST}">
                    <tr>
                        <td>${pro.index+1}</td>
                        <td>${p.userName}</td>
                        <td><fmt:formatDate value="${p.joinTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        <td>${p.authorize eq 1?"所有者":p.authorize eq 2?"管理员":"普通用户"}</td>
                        <td>

                            <s:hasRole name="admin">
                                <a class="layui-btn layui-btn-sm" onclick="updateRole()">修改权限</a>
                                <a class="layui-btn layui-btn-sm" href="${pageContext.request.contextPath}/projectMember/del/${p.id}">移除用户</a>
                            </s:hasRole>

                            <s:hasRole name="manager">
                                <c:choose>
                                    <c:when test="${p.roleId == 3}">
                                        <a class="layui-btn layui-btn-sm" href="${pageContext.request.contextPath}/projectMember/del/${p.id}">移除用户</a>
                                    </c:when>
                                    <c:otherwise>
                                        <a href="javascript:return false;"
                                           class="layui-btn layui-btn-sm layui-btn-disabled">移除用户
                                        </a>
                                    </c:otherwise>
                                </c:choose>
                            </s:hasRole>
                        </td>
                    </tr>
                </c:forEach>

            </table>

            <form class="layui-form addMemberForm" id="test" style="display:none; margin-top: 30px">
                <div class="layui-form-item">
                    <label class="layui-form-label">用户</label>
                    <div class="layui-input-block" style="margin-right: 30px;">
                        <select id="userId" name="userId" lay-search>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item" id="roleDiv">
                    <label class="layui-form-label">权限</label>
                    <div class="layui-input-block" id="role">
                    </div>
                </div>
            </form>

            <form class="layui-form updateRoleForm" id="roleSelect" style="display:none; margin-top: 30px">
                <div class="layui-form-item">
                    <label class="layui-form-label">权限</label>
                    <div class="layui-input-block" id="roleId">
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

    function updateRole() {
        $.ajax({
            url: "${pageContext.request.contextPath}/user/getAllUserInfo",
            type: "get",
            contentType: "application/json; charset=utf-8",
            success: function (data) {
                let radios = '';
                for (let i = 0; i < data.roles.length; i++) {
                    if (i == 0) {
                        radios += '<input type="radio" name="roleId" value="' + data.roles[i].id + '" title="' + data.roles[i].roleDesc + '" checked>\n';
                    } else {
                        radios += '<input type="radio" name="roleId" value="' + data.roles[i].id + '" title="' + data.roles[i].roleDesc + '">\n';
                    }
                }
                if (radios.length > 0) {
                    $("#roleId").html(radios);
                }

                layui.use('form', function () {
                });

                layer.open({
                    type: 1,
                    title: '修改权限',
                    content: $("#roleSelect"),
                    shade: 0,
                    btn: ['保存', '重置'],
                    btn1: function (index, layero) {
                        $.ajax({
                            url:"${pageContext.request.contextPath}/projectMember/updateRole",
                            type:"post",
                            data: $(".updateRoleForm").serialize(),
                            success: function (data) {
                                if (data === true) {
                                    alert("添加成功");
                                } else if (data === false) {
                                    alert("添加失败");
                                }
                                window.location.href = "${pageContext.request.contextPath}/project/list";
                            },
                            error: function () {
                                alert('异常')
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
        });

    }

    //页面层-自定义
    function addMemberClick() {
        $.ajax({
            url: "${pageContext.request.contextPath}/user/getAllUserInfo",
            type: "get",
            contentType: "application/json; charset=utf-8",
            success: function (data) {
                let options = '';
                for (let i = 0; i < data.users.length; i++) {
                    options += '<option value="' + data.users[i].id + '">' + data.users[i].userName + '</option>\n';
                }
                $("#userId").html(options);

                let radios = '';
                for (let i = 0; i < data.roles.length; i++) {
                    if (i == 0) {
                        radios += '<input type="radio" name="roleId" value="' + data.roles[i].id + '" title="' + data.roles[i].roleDesc + '" checked>\n';
                    } else {
                        radios += '<input type="radio" name="roleId" value="' + data.roles[i].id + '" title="' + data.roles[i].roleDesc + '">\n';
                    }
                }
                if (radios.length > 0) {
                    $("#role").html(radios);
                } else {
                    $("#roleDiv").remove();
                }
                layui.use('form', function () {
                });
                layer.open({
                    type: 1,
                    title: '添加用户',
                    content: $("#test"),
                    shade: 0,
                    btn: ['添加', '重置'],
                    btn1: function (index, layero) {
                        $.ajax({
                            url:"${pageContext.request.contextPath}/projectMember/add",
                            type:"post",
                            data: $(".addMemberForm").serialize(),
                            success: function (data) {
                                if (data === true) {
                                    alert("添加成功");
                                } else if (data === false) {
                                    alert("添加失败");
                                }
                                window.location.href = "${pageContext.request.contextPath}/projectMember/list/${CUR_PROJECT.id}";
                            },
                            error: function () {
                                alert('异常')
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
            },
            error: function () {
                alert('异常')
            }
        })


    }


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