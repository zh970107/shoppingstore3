<%--
  Created by IntelliJ IDEA.
  User: 张焕
  Date: 2019/11/26
  Time: 17:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">
        $(function(){
            $("#btnReset").click(function(){
                $.ajax({
                    url:"reset",
                    type:"post",
                    data:{
                        "username":$("#username").val(),
                        "password":$("#password").val(),
                        "password1":$("#password1").val()
                    },
                    success:function(data){
                        if(data=="inconformity"){
                            $("#msg").html("两个密码不一致")
                        }else if(data=="success"){
                            $("#msg").html("修改成功")
                        }else if(data=="mismatching"){
                            $("#msg").html("用户名信息不正确")
                        }else if(data=="same"){
                            $("#msg").html("旧密码不能与新密码一致")
                        }else{
                            $("#msg").html("不能为空")
                        }
                    }
                })
            })
        })
    </script>
</head>
<body>
<div style=" height: 15%; width: 100%;" align="center" >
    <h3>密码修改</h3>
<input type="text" id="username" placeholder="用户名"><br/>
<input type="text" id="password" placeholder="新密码"><br/>
<input type="text" id="password1" placeholder="确认密码"><br/>
</div>
<div style=" width: 94%;" align="center">
    <input type="button" value="确认修改" id="btnReset">
    <div id="msg"></div>
</div>
</body>
</html>
