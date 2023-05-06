<%--
  Created by IntelliJ IDEA.
  User: 是霉丸子啊
  Date: 2023/4/22
  Time: 18:50
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
    <script src="js/axios-0.18.0.js"></script>
    <script src="js/vue.js"></script>
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
<div class="login" id="box1">
    <div class="login_top"></div>
    <div class="login_bot"></div>
    <div class="login_main">
        <img src="image/gokjob_logo.png" alt="">
        <div class="login_div">
            <p>登录国科就业账号</p>
            <span><a href="#" id="username">找工作</a></span>
            <span><a href="#" id="phonename">我要招人</a></span><br>
            <div class="textinput">
                <div id="usertab">
                    <input type="text" maxlength="11" placeholder=" 请填写手机号" v-model="username"><br>
                    <input type="text" maxlength="20" placeholder=" 请填写密码(8-20位字符)" v-model="password">
                </div>
            </div>
            <input type="button" value="注册" style="background:rgb(182, 136, 226); color:white;" @click="submit()"><br>
            <span style="float: left;margin-left: 170px;">已有账号？</span>
            <span style="float: left;"><a href="/yige/login.jsp" style="color: blueviolet;">立即登录</a></span> <br><br>
            <span style="float: left; margin-left: 170px;">注册代表您已经阅读并同意</span>
            <span style="float:left;">《<a href="#">国科学院用户协议</a>》</span>
        </div>
    </div>
</div>

<script>
    new Vue({
        el: '#box1',
        data(){
            return {
                username: '',
                password: ''
            }
        },
        methods:{
            submit(){
                axios({
                    method: 'POST',
                    url: 'http://localhost:8080/yige/registerServlet',
                    data:{
                        username: this.username,
                        password: this.password
                    }
                }).then( result => {
                    alert(result.data.msg)
                })
            }
        }
    })
</script>
</body>

</html>
