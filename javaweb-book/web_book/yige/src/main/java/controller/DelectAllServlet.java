package controller;

import com.alibaba.fastjson.JSON;
import mapper.BookMapper;
import mapper.ShopcarMapper;
import pojo.Book;
import pojo.Code;
import pojo.Result;
import pojo.Shopcar;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.BufferedReader;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/delectAllServlet")
public class DelectAllServlet extends HttpServlet {
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
        Shopcar shopcar = JSON.parseObject(result, Shopcar.class);
        int[] arr = shopcar.getDeleteArr();
        for(int i=0;i<arr.length;i++){
            try {
                shopcarMapper.delectSchopcar(arr[i]);
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        String json_result1 = JSON.toJSONString(new Result(Code.DELETE_OK,null,"删除成功"));
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(json_result1);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
