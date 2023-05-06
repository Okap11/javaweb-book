package controller;

import com.alibaba.fastjson.JSON;
import mapper.BookMapper;
import pojo.Book;
import pojo.Code;
import pojo.Result;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/delectBookServlet")
public class DelectBookServlet extends HttpServlet {
    private BookMapper bookMapper = new BookMapper();
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
        boolean bool = false;
        try {
            bool = bookMapper.delectBokk(book);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        String json_result1;
        if(bool){
            json_result1 = JSON.toJSONString(new Result(Code.DELETE_OK,null,"删除成功"));
        }else {
            json_result1 = JSON.toJSONString(new Result(Code.DELETE_ERR,null,"删除失败"));
        }
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(json_result1);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
