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
                <span>项目管理页面 >> 项目信息页面 >> 项目添加页面</span>
            </div>

            <form class="layui-form" action="">
                <div class="layui-form-item">
                    <div class="">
                        <label class="layui-form-label" for="name">项目名称</label>
                        <div class="layui-input-block">
                            <input type="text" id="name" name="name" required  lay-verify="required" placeholder="请输入项目名称" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="">
                        <label class="layui-form-label" for="description">描述</label>
                        <div class="layui-input-block">
                            <input type="text" id="description" name="description" required  lay-verify="required" placeholder="请输入描述" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">访问控制类型</label>
                    <div class="layui-input-block">
                        <select name="accessControlType" lay-verify="required">
                            <option value="0">开放</option>
                            <option value="1">私有</option>
                            <option value="2">普通</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">可以访问的组织</label>
                    <div class="layui-input-block">
                        <select name="groupId" lay-verify="required">
                            <c:forEach varStatus="p" var="group" items="${IS_OWNER_GROUP_LIST}">
                                <option value="${group.id}">${group.groupName}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">是否私有</label>
                    <div class="layui-input-block">
                        <input type="radio" name="isPrivate" value="0" title="否"checked>
                        <input type="radio" name="isPrivate" value="1" title="是">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">是否开启项目前缀</label>
                    <div class="layui-input-block">
                        <input type="radio" name="openPrefix" value="0" title="否"checked>
                        <input type="radio" name="openPrefix" value="1" title="是">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">项目截止日期</label>
                    <div class="layui-input-block">
                        <input type="text" name="endTime" id="endTime"  lay-verify="required" placeholder="请输入项目截止日期" autocomplete="off" class="layui-input"/>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit lay-filter="projectAdd">立即提交</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                        <button class="layui-btn" type="button"  onclick="history.back(-1)">返回</button>
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
    laydate.render({
        elem: '#endTime' //指定元素
    });

    layui.use('form', function(){
        var form = layui.form;

        //监听提交
        form.on('submit(projectAdd)', function(data){
            $.ajax({
                url:"${pageContext.request.contextPath}/project/save",
                type:"post",
                contentType:"application/json; charset=utf-8",
                data:JSON.stringify(data.field),
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

    <%--laydate.render({--%>
    <%--    elem: '#data'--%>
    <%--});--%>

    <%--function submit1(){--%>
    <%--    if(checkPhone()&&checkPass()&&checkName()&&checkBir()){--%>
    <%--        $.ajax({--%>
    <%--            url:"${pageContext.request.contextPath}/user/add",--%>
    <%--            type:"post",--%>
    <%--            dataType:"text",--%>
    <%--            data:$("#addForm").serialize(),--%>
    <%--            success:function (data) {--%>
    <%--                if(data=="success"){--%>
    <%--                    alert("添加成功");--%>
    <%--                    window.location.href="${pageContext.request.contextPath}/user/getAll";--%>
    <%--                }else if(data=="error"){--%>
    <%--                    alert("添加失败");--%>
    <%--                    window.location.href="${pageContext.request.contextPath}/user/getAll";--%>
    <%--                }--%>
    <%--            },--%>
    <%--            error:function () {--%>
    <%--                alert("添加异常");--%>
    <%--            }--%>
    <%--        });--%>
    <%--    }--%>
    <%--}--%>

    <%--$("#userId").blur(function () {--%>
    <%--    checkUserCode();--%>
    <%--});--%>

    <%--$("#userRemi,#userpassword").blur(function () {--%>
    <%--    checkPass();--%>
    <%--});--%>

    <%--$("#userphone").blur(function () {--%>
    <%--    checkPhone();--%>
    <%--});--%>

    <%--$("#data").blur(function () {--%>
    <%--    checkBir();--%>
    <%--});--%>

    <%--$("#userName").blur(function () {--%>
    <%--    checkName();--%>
    <%--});--%>

    <%--function checkName() {--%>
    <%--    $("#userName+span").html("");--%>
    <%--    var userName = $("#userName").val();--%>
    <%--    if(userName==""){--%>
    <%--        $("#userName+span").html("请填写用户名");--%>
    <%--        return false;--%>
    <%--    }--%>
    <%--    if(userName.length>12){--%>
    <%--        $("#userName+span").html("用户名不能大于12位");--%>
    <%--        return false;--%>
    <%--    }--%>
    <%--    return true;--%>
    <%--}--%>

    <%--function checkBir() {--%>
    <%--    $("#data+span").html("");--%>
    <%--    var data = $("#data").val();--%>
    <%--    var date = /^[0-9]{4}[-][0-9]{2}[-][0-9]{2}/g;--%>
    <%--    if(data==""||!date.test(data)){--%>
    <%--        $("#data+span").html("请正确填写生日!");--%>
    <%--        return false;--%>
    <%--    }--%>
    <%--    return true;--%>
    <%--}--%>

    <%--function checkPhone() {--%>
    <%--    var phone = /^1(3|4|5|7|8)\d{9}$/g;--%>
    <%--    var userPhone = document.getElementById("userphone").value;--%>
    <%--    $("#userphone+span").html("");--%>
    <%--    if(!phone.test(userPhone)){--%>
    <%--        $("#userphone+span").html("手机号格式不正确，请重新填写");--%>
    <%--        return false;--%>
    <%--    }--%>
    <%--    return true;--%>
    <%--}--%>

    <%--function checkUserCode(){--%>
    <%--    var userCode = $("#userId").val();--%>
    <%--    if(userCode==""){--%>
    <%--        $("#userId+span").html("请输入用户id");--%>
    <%--        return false;--%>
    <%--    }--%>
    <%--    $.ajax({--%>
    <%--        url:"${pageContext.request.contextPath}/user/test?userCode="+userCode,--%>
    <%--        type:"get",--%>
    <%--        dataType:"text",--%>
    <%--        success:function (data) {--%>
    <%--            if(data=="none"){--%>
    <%--                $("#userId+span").html("");--%>
    <%--                return true;--%>
    <%--            }--%>
    <%--            if(data=="exits"){--%>
    <%--                $("#userId+span").html("用户id已存在,请重新输入");--%>
    <%--                return false;--%>
    <%--            }--%>
    <%--            if(data=="error"){--%>
    <%--                $("#userId+span").html("请输入用户id");--%>
    <%--                return false;--%>
    <%--            }--%>
    <%--        }--%>
    <%--    });--%>
    <%--}--%>

    <%--function checkPass() {--%>
    <%--    var pass = /^\S{6,12}$/g;--%>
    <%--    $("#userRemi+span").html("");--%>
    <%--    $("#userpassword+span").html("");--%>
    <%--    var password = document.getElementById("userpassword").value;--%>
    <%--    var repass = document.getElementById("userRemi").value;--%>
    <%--    if(!pass.test(password)){--%>
    <%--        $("#userpassword+span").html("密码长度为6~12位");--%>
    <%--        return false;--%>
    <%--    }--%>
    <%--    // if(!pass.test(repass)){--%>
    <%--    //     $("#userRemi+span").html("密码长度为6~12位");--%>
    <%--    //     return false;--%>
    <%--    // }--%>

    <%--    if(password!=repass){--%>
    <%--        $("#userRemi+span").html("两次密码不一致,请重新输入");--%>
    <%--        // $("#userpassword+span").html("两次密码不一致,请重新输入");--%>
    <%--        return false;--%>
    <%--    }--%>
    <%--    return true;--%>
    <%--}--%>


</script>

</body>
</html>