<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--头部-->
<div class="layui-header">
    <div class="layui-logo">项目管理系统</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
        <li class="layui-nav-item"><a href="">控制台</a></li>
        <li class="layui-nav-item"><a href="">用户</a></li>
        <li class="layui-nav-item">
            <a href="javascript:;">切换项目</a>
            <c:if test="${!PROJECT_INFO.isEmpty()}">
                <dl class="layui-nav-child">

                    <c:forEach varStatus="pro" var="p" items="${PROJECT_INFO}">
                        <dd><a href="${pageContext.request.contextPath}/project/detail/${p.id}">${p.name}</a></dd>
                    </c:forEach>
                </dl>
            </c:if>
        </li>
        <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/project/projectAdd.jsp">新建项目</a></li>

    </ul>
    <ul class="layui-nav layui-layout-right">
        <li class="layui-nav-item">
            <a href="javascript:;">
                <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                <s:principal property="userName"></s:principal>
            </a>
            <dl class="layui-nav-child">
                <dd><a href="${pageContext.request.contextPath}/user/get/<s:principal property="id"></s:principal>">基本资料</a></dd>
                <dd><a href="${pageContext.request.contextPath}/user/update/<s:principal property="id"></s:principal>">资料修改</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item"><a href="javascript:logout()">退了</a></li>
    </ul>
</div>
<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
        <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
        <ul id="nav" class="layui-nav layui-nav-tree"  lay-filter="test">

        </ul>
    </div>
</div>

<script>
    layui.use('element', function(){
        var element = layui.element;

    });
    $.ajax({
        type: "get",
        url: "${pageContext.request.contextPath}/perm/getMenu",
        dataType: "json",
        success: function(data){//菜单集合为: data.
            //2.构建菜单:
            //动态构建菜单.
            var menu = ""; //定义变量存储
            var url = "";
            for ( var i = 0; i < data.length; i++) {
                menu += "<li class='layui-nav-item '>"
                if (data[i].parentCode == 0) { //取出父元素的菜单，拼进页面
                    if(data[i].permUrl==null){
                        url = "javascript:;";
                    }else if(data[i].permName=="修改密码"){
                        url = "${pageContext.request.contextPath}"+data[i].permUrl;
                    }else{
                        url = data[i].permUrl;
                    }


                    menu += "<a href='"+url+"'>"
                        + data[i].permName + "</a>"
                    for ( var j = 0; j < data.length; j++) { //继续遍历这几条数据
                        if (data[j].parentCode === data[i].permCode) { //取出这个父元素所对应的子元素
                            menu += "<dl class='layui-nav-child'>"
                            menu += "<dd>"
                            if (data[j].permCode == 1002) {
                                menu += "<a href='${pageContext.request.contextPath}"+data[j].permUrl + '${CUR_PROJECT.id == null ? "-1" : CUR_PROJECT.id}' +"' target='_self'>"
                                    + '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
                                    + data[j].permName + "</a>"
                            } else if (data[j].permCode == 1003){
                                menu += "<a href='${pageContext.request.contextPath}"+data[j].permUrl + '?projectId=${CUR_PROJECT.id}&searchCondition=' +"' target='_self'>"
                                    + '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
                                    + data[j].permName + "</a>"

                            } else if (data[j].permCode == 1004){
                                menu += "<a href='${pageContext.request.contextPath}"+data[j].permUrl + '?projectId=${CUR_PROJECT.id}&searchCondition=' + "' target='_self'>"
                                    + '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
                                    + data[j].permName + "</a>"

                            } else  {

                                menu += "<a href='${pageContext.request.contextPath}"+data[j].permUrl +"' target='_self'>"
                                    + '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
                                    + data[j].permName + "</a>"
                            }
                            menu += "</dd>"
                            menu += "</dl>"
                        }


                    }
                }
                menu += "</li>";
            }

            //给ul菜单列表增加列表项:
            $("#nav").html(menu);

            // 数据加载完成后, 重新渲染展示:
            var element = layui.element;
            element.init()//初始化element事件，使菜单展开

        },
        error: function(){
            alert("菜单加载失败,请检查网络!!!");
        }
    });
</script>