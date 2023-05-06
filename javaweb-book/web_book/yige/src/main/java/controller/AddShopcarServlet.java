package controller;

import com.alibaba.fastjson.JSON;

import mapper.ShopcarMapper;
import pojo.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/addShopcarServlet")
public class AddShopcarServlet extends HttpServlet {
    private ShopcarMapper shopcarMapper = new ShopcarMapper();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String result="";
        String line;
        request.setCharacterEncoding("utf-8");
        //接收json数据
        BufferedReader br = request.getReader();
        while ((line = br.readLine()) != null) {
            result += line;
        }
        Book book = JSON.parseObject(result, Book.class);
        User user = (User)getServletContext().getAttribute("user");
        Shopcar shopcar = new Shopcar();
        shopcar.setUserid(user.getId());
        shopcar.setName(book.getName());
        shopcar.setPrice(book.getPrice());
        shopcar.setAbstract(book.getAbstract());
        shopcar.setImg(book.getImg());
        shopcar.setAuthor(book.getAuthor());

        boolean bool = false;
        try {
            bool =  shopcarMapper.addSchopcar(shopcar);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        String json_result1 ;
        if(bool == false){
            json_result1 = JSON.toJSONString(new Result(Code.SAVE_ERR,null,"添加失败"));
        }else {
            json_result1 = JSON.toJSONString(new Result(Code.SAVE_OK,null,"添加成功"));
        }
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(json_result1);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
