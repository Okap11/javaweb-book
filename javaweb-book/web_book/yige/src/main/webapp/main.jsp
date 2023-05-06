<%--
  Created by IntelliJ IDEA.
  User: 是霉丸子啊
  Date: 2023/4/23
  Time: 16:57
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
    <script src="js/vue.js"></script>
    <link rel="stylesheet" href="css/index.css">
    <script src="element-ui/lib/index.js"></script>
    <link rel="stylesheet" href="element-ui/lib/theme-chalk/index.css">
    <script src="js/axios-0.18.0.js"></script>

</head>
<body>

<div id="box1" ref="box1">
    <nav>
        <div class="inner">
            <div class="left">
                <h1>在线图书商城</h1>
                <p>首页</p>
                <p @click="showCar = true; selectShopCar()">我的购物车</p>
                <p @click="showManage" v-if="admin == 1">管理图书</p>
                <div class="manage" v-show="manage">
                    <p @click="addVisible = true">添加图书</p>
                    <p @click="isomit">下架图书</p>
                </div>
            </div>
            <div class="right">
                <input type="text" name="" value="" placeholder="输入书名" v-model="inputBook">
                <button @click="searchBook">搜索</button>
            </div>
        </div>
    </nav>


    <div class="banner">
        <el-carousel :interval="5000" type="card">
            <el-carousel-item v-for="item in 3" :key="item">
                <h3 class="medium">
                    <img :src="swiperImgs[item-1]" alt="" style="width: 635px;">
                </h3>
            </el-carousel-item>
        </el-carousel>
    </div>

    <div class="itemize">
        <div v-for="(value, index) in list" :key="index">
            <img :src="value" alt="" style="width: 100px; background-color: white;">
        </div>
    </div>


    <div class="main">
        <p><img src="img/today.png" alt="" style="width: 1160px;"></p>
        <div class="wrapper">
            <div class="book-list" v-for="(value, index) in bookArr" :key="index">
                <p><img :src="value.img" alt="" :title="value.name"></p>
                <p class="abstract"> {{ value.abstract }}</p>
                <p style="text-align: left;margin-top: 10px;width: 180px;font-size: 14px;display: flex;justify-content: space-between;">
                        <span>
                            <span class="dollar">￥</span>{{ value.price }}
                        </span>
                    <button class="add" @click="addCar(value)" v-show="!omit"><i class="el-icon-shopping-cart-1"></i> 加入购物车</button>
                    <button class="add" @click="deleteBook(value.id)" v-show="omit" style="background-color: #F56C6C"><i class="el-icon-delete"></i> 下架图书</button>
                </p>
            </div>
        </div>
    </div>

    <div class="sideBar">
        <ul>
            <li @click="showCar = true; selectShopCar()">
                <i class="el-icon-shopping-cart-full"></i>
                <span style="font-size: 14px;"我的>购物车</span>
            </li>
            <li>
                <i class="el-icon-bell"></i>
                <span style="font-size: 14px;">在线客服</span>
            </li>
            <li>
                <i class="el-icon-top-left"></i>
                <span style="font-size: 14px;" >回到顶部</span>
            </li>
        </ul>
    </div>


    <!-- 购物车遮罩 -->
    <el-drawer
            title="我的购物车"
            :visible.sync="showCar">

        <div class="myCar">
            <div class="item" v-for="(value, index) in shopCarArr" :key="index">
                <div style="display: flex;align-items: center;margin-top: 10px;">
                    <input type="checkbox" name="" id="" class="isChecked" v-model="value.checked">
                    <img :src="value.img" alt="" style="width: 60px;">
                    <div style="margin-left: 10px;">
                        <p>{{ value.name }}</p>
                        <p class="abstract">{{ value.abstract }}</p>
                    </div>
                </div>
                <div style="margin-top: 10px;display: flex; justify-content: space-between; align-items: center;width: 360px; margin-left: 30px;">
                    <el-input-number v-model="value.number" size="mini" :min="1" :max="10" label="描述文字" style="width: 100px;"></el-input-number>
                    <span><span class="dollar">￥</span>{{ value.price }}</span>
                    <el-button type="danger">删除</el-button>
                </div>
            </div>
            <div style="height: 70px;">

            </div>

            <div class="allmsg">
                <div style="display: flex; align-items: center;margin-left: 200px;">
                    <span>合计：￥{{ total }}</span>
                    <el-button type="primary" style="margin-left: 50px;" @click="buy()">购买</el-button>
                </div>
            </div>
        </div>
    </el-drawer>


    <el-dialog title="添加图书" :visible.sync="addVisible">
        <div class="addBook">
            <label for="name">书籍名称：</label>
            <input type="text" id="name" v-model="book.name">
            <label for="price">书籍价格：</label>
            <input type="text" id="price" v-model="book.price"><br><br>
            <label for="author">书籍作者：</label>
            <input type="text" id="author" v-model="book.author">
            <label for="sort">书籍分类：</label>
            <input type="text" id="sort" v-model="book.sort"><br><br>
            <label for="img">书籍图片：</label>
            <input type="text" id="img" v-model="book.img"><br><br>
            <label for="abstract">书籍摘要：</label>
            <el-input
                    type="textarea"
                    :rows="2"
                    placeholder="请输入内容"
                    v-model="book.abstract">
            </el-input>

        </div>
        <div slot="footer" class="dialog-footer">
            <el-button @click="addVisible = false">取 消</el-button>
            <el-button type="primary" @click="addBook">确 定</el-button>
        </div>
    </el-dialog>

</div>


<script>
    new Vue({
        el:'#box1',
        data() {
            return {
                manage: false,
                showCar: false,
                addVisible: false,
                omit: false,
                inputBook: '',
                swiperImgs: [
                    "http://img63.ddimg.cn/2021/6/30/2021063015233889295.jpg",
                    "http://img62.ddimg.cn/2021/6/30/2021063015214779018.jpg",
                    "http://img63.ddimg.cn/2021/6/30/2021063015222033855.jpg"
                ],
                list: [
                    "http://img63.ddimg.cn/upload_img/00803/1/1zongbang-1581651177.jpg",
                    "http://img61.ddimg.cn/upload_img/00803/1/2xinshubang-1581652204.jpg",
                    "http://img61.ddimg.cn/upload_img/00796/1/3tongshubang-1581652370.jpg",
                    "http://img62.ddimg.cn/upload_img/00796/1/4jiaofubang-1581652439.jpg",
                    "http://img61.ddimg.cn/upload_img/00796/1/9dujiategong-1581921679.jpg",
                    "http://img60.ddimg.cn/upload_img/00803/1/mingjiazhibo-1581926953.jpg",
                    "http://img61.ddimg.cn/upload_img/00803/1/xinshuqiangxiandu-1602655897.png",
                    "http://img61.ddimg.cn/upload_img/00766/dangdang/wujie-1606809051.png",
                    "http://img60.ddimg.cn/upload_img/00796/1/teseshuguan-1611545631.png",
                    "http://img60.ddimg.cn/upload_img/00803/1/10-1592391980.jpg"
                ],
                bookArr: [],
                shopCarArr: [],
                total: 0,
                book: {
                    name: '',
                    price: '',
                    author: '',
                    abstract: '',
                    sort: '',
                    img: ''
                },
                admin: '',
            }
        },
        methods: {
            showManage(){
                this.manage = !this.manage
            },
            isomit(){
                this.omit = !this.omit
                this.manage = false
                window.scrollTo({
                    top:900,
                    left:0,
                    behavior: "smooth"
                });
            },
            addBook(){
                axios({
                    method: 'POST',
                    url: 'http://localhost:8080/yige/addBookServlet',
                    data: {
                        name: this.book.name,
                        price: this.book.price,
                        author: this.book.author,
                        abstract: this.book.abstract,
                        sort: this.book.sort,
                        img: this.book.img,
                    }
                }).then( result => {
                    this.shopCarArr = result.data.data
                    this.addVisible = false
                    this.manage = false
                })
            },
            selectShopCar(){
                axios({
                    method: 'GET',
                    url: 'http://localhost:8080/yige/selectShopCarServlet'
                }).then( result => {
                    this.shopCarArr = result.data.data
                })
            },
            addCar(i){
                axios({
                    method: 'POST',
                    url: 'http://localhost:8080/yige/addShopcarServlet',
                    data: {
                        id: i.id,
                        name: i.name,
                        price: i.price,
                        author: i.author,
                        press: i.press,
                        abstract: i.abstract,
                        sort: i.sort,
                        img: i.img
                    }
                }).then( result => {
                    alert(result.data.msg)
                })
            },
            searchBook(){
                axios({
                    method: 'POST',
                    url: 'http://localhost:8080/yige/selectBookByNameServlet',
                    data: {
                        name: this.inputBook
                    }
                }).then( result => {
                    this.bookArr = result.data.data
                    this.selectShopCar()
                })
            },
            buy(){
                let deleteArr = []
                for(let i = 0; i < this.shopCarArr.length; i ++){
                    if(this.shopCarArr[i].checked == 1){
                        deleteArr.push(this.shopCarArr[i].id)
                    }
                }
                console.log(deleteArr)
                axios({
                    method: 'POST',
                    url: 'http://localhost:8080/yige/delectAllServlet',
                    data: {
                        deleteArr: deleteArr
                    }
                }).then( result => {
                    alert("购买成功！")
                    this.selectShopCar()
                })
            },
            deleteBook(id){
                axios({
                    method: 'POST',
                    url: 'http://localhost:8080/yige/delectBookServlet',
                    data: {
                        id: id
                    }
                }).then( result => {
                    alert(result.data.msg)
                    axios({
                        method: 'GET',
                        url: 'http://localhost:8080/yige/selectAllBookServlet'
                    }).then( result => {
                        this.bookArr = result.data.data.book
                        this.admin = result.data.data.user.admin
                        this.selectShopCar()
                    })
                })
            }
        },
        mounted(){
            axios({
                method: 'GET',
                url: 'http://localhost:8080/yige/selectAllBookServlet'
            }).then( result => {
                this.bookArr = result.data.data.book
                this.admin = result.data.data.user.admin
                this.selectShopCar()
            })
        },
        watch:{
            shopCarArr:{
                deep: true,
                handler(){
                    let sum = 0;
                    for(let i = 0; i < this.shopCarArr.length; i++){
                        if(this.shopCarArr[i].checked == 1) {
                            sum = sum + this.shopCarArr[i].number * this.shopCarArr[i].price
                        }
                    }
                    this.total = sum
                }
            }
        }
    })
</script>
</body>
</html>
