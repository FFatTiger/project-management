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
            <form class="layui-form" id="addForm" action="##" method="post">
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
                                   placeholder="用户电话" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit lay-filter="projectAdd" id="submit" onclick="submit1()">
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
    layui.use('form', function() {
        var form = layui.form;
    });

    $("#user").blur(function () {
        checkuser();
    });
    $("#mima").blur(function () {
        checkmima();
    });

    function checkuser() {
        var username = $("#user").val();
        if (username == "") {
            layer.msg('请输入账号!!', {icon: 5});
            return false;
        }
        return true;
    }

    function checkmima() {
        var mima = $("#mima").val();
        if (mima == "") {
            layer.msg('请输入密码!!', {icon: 5});
            return false;
        }
        return true;
    }

    $("#submit").click(function () {
        if (checkuser() && checkmima()) {
            $.ajax({
                url: "${pageContext.request.contextPath}/user/login",
                type: "post",
                dataType: "text",
                data: $("#loginForm").serialize(),
                success: function (data) {
                    if (data == "success") {
                        window.location.href = "${pageContext.request.contextPath}/welcome.jsp";
                    }
                    if (data == "error") {
                        layer.msg('服务器异常!!', {icon: 5});
                        $("#mima").val("");
                    }
                    if (data == "NOEXITS" || data == "passError") {
                        layer.msg('账号或密码错误，请重试!!', {icon: 5});
                        $("#mima").val("");
                    }
                    if (data == "NUMOUT") {
                        layer.msg('超过五次登陆失败,请30分钟后重试', {icon: 5});
                        $("#mima").val("");
                    }
                }
            });
        }
    });


</script>

</body>
</html>