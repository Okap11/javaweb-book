<%--
  Created by IntelliJ IDEA.
  User: 是霉丸子啊
  Date: 2023/4/22
  Time: 18:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            text-decoration: none;
        }

        .login {
            width: 100%;
            height: 700px;
        }

        .login_top {
            width: 100%;
            height: 50vh;
            background: rgb(126, 198, 236);
        }

        .login_bot {
            width: 100%;
            height: 50vh;
            background: rgb(198, 214, 235);
        }

        .login_main {
            width: 650px;
            height: 550px;
            margin: 0 auto;
            position: absolute;
            top: 0px;
            left: 0;
            right: 0;
            bottom: 0;
            margin: 15vh auto;

        }

        .login_main img {
            width: 146px;
            height: 35px;
        }

        .login_div {
            width: 650px;
            height: 440px;
            margin-top: 20px;
            text-align: center;
            border-radius: 10px;
            background: white;
            box-shadow: 0 0 30px rgba(0, 0, 0, .5);
        }

        .login_div p {
            margin-top: 15px;
            padding-top: 20px;
            font-size: 23px;
            color: blueviolet;
            font-weight: bolder;
            margin-bottom: 40px;
        }

        #username {
            color: black;
            font-weight: bolder;
            font-size: 16px;
        }

        #phonename {
            color: rgb(15, 212, 212);
            margin-left: 40px;
        }

        .login_div input {
            width: 300px;
            height: 50px;
            background: rgb(245, 240, 240);
            border-style: none;
            margin-bottom: 15px;
            margin-top: 15px;
        }
    </style>
</head>

<body>
<div class="login">
    <div class="login_top"></div>
    <div class="login_bot"></div>
    <div class="login_main">
        <div class="login_div">
            <form action="http://localhost:8080/yige/loginServlet" method="post">
                <p>登录图书商城</p>
                <span><a href="#" id="username">账号密码登录</a></span>
                <span><a href="#" id="phonename">手机快捷登录</a></span><br>
                <div class="textinput">
                    <div id="usertab">
                        <input type="text" name="username" placeholder=" 请输入账号" style="outline: none;text-indent: 10px" value="${username}"><br>
                        <span style="font-size: 12px;float: left;margin-left: 180px;color: red">${msg}</span><br>
                        <input type="text" name="password" placeholder=" 请输入密码" style="outline: none;text-indent: 10px" value="${password}">
                    </div>
                </div>
                <input type="submit" value="登录" style="background:rgb(182, 136, 226); color:white;"><br>
                <span style="float: left;margin-left: 170px;">还没有账号？</span>
                <span style="float: left;"><a href="/yige/register.jsp" style="color: blueviolet;">立即注册</a></span>
                <input name="rem" value="1" type="checkbox" style="width: 20px;height: 20px;position: absolute;left: 380px;top:379px">
                <span style="float: right; margin-right: 170px;">记住密码</span>
            </form>
        </div>
    </div>

</div>
</body>

</html>
