<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/JSTLPage.jsp" %>
<!doctype html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>系统登录 - 项目管理系统</title>
    <%@ include file="common/cssOrJs.jsp" %>
</head>
<body class="login_bg">
<section class="loginBox">
    <header class="loginHeader">
        <h1>项目管理系统</h1>
    </header>
    <section class="loginCont">
        <div class="register">
            <form class="layui-form" id="addForm" action="1">
                <!--div的class 为error是验证错误，ok是验证成功-->
                <input type="hidden" value="<s:principal property='id'></s:principal>" name="createdBy">
                <div class="layui-form-item">
                    <div class="">
                        <label class="layui-form-label" for="userId">用户编码</label>
                        <div class="layui-input-block">
                            <input type="text" id="userId" name="userId" required lay-verify="required"
                                   placeholder="请输入用户编码，且不能重复" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="">
                        <label class="layui-form-label" for="userName">用户名称</label>
                        <div class="layui-input-block">
                            <input type="text" id="userName" name="userName" required lay-verify="required"
                                   placeholder="请输入用户名称" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="">
                        <label class="layui-form-label" for="userName">用户密码</label>
                        <div class="layui-input-block">
                            <input type="password" id="userpassword" name="userpassword" required lay-verify="required"
                                   placeholder="密码长度必须大于6位小于20位" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="">
                        <label class="layui-form-label" for="userRemi">确认密码</label>
                        <div class="layui-input-block">
                            <input type="password" id="userRemi" name="userRemi" required lay-verify="required"
                                   placeholder="请输入确认密码" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">

                    <label class="layui-form-label">用户性别</label>
                    <div class="layui-input-block">
                        <input type="radio" name="gender" value="2" title="男" checked>
                        <input type="radio" name="gender" value="1" title="女">
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="">
                        <label class="layui-form-label" for="data">出生日期</label>
                        <div class="layui-input-block">
                            <input type="text" id="data" name="data" required lay-verify="required"
                                   placeholder="出生日期" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="">
                        <label class="layui-form-label" for="userphone">用户电话</label>
                        <div class="layui-input-block">
                            <input type="text" id="userphone" name="userphone" required lay-verify="required"
                                   placeholder="用户电话" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="">
                        <label class="layui-form-label" for="userAddress">用户地址</label>
                        <div class="layui-input-block">
                            <input type="text" id="userAddress" name="userAddress" required lay-verify="required"
                                   placeholder="用户地址" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit lay-filter="formSubmit" id="submit" >
                            注册
                        </button>
                        <button class="layui-btn" type="button" onclick="history.back(-1)">返回</button>
                    </div>
                </div>
            </form>
        </div>
    </section>
</section>

<script>
    laydate.render({
        elem: '#data' //指定元素
    });

    layui.use('form', function() {
        var form = layui.form;

        form.on('submit(formSubmit)', function(data){
            $.ajax({
                url:"${pageContext.request.contextPath}/user/add",
                type:"post",
                dataType:"application/json; charset=utf-8",
                data:$("#addForm").serialize(),
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
            return true;
        });
    });



</script>

</body>
</html>