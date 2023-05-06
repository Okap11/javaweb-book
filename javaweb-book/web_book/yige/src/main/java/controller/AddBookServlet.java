package controller;

import com.alibaba.fastjson.JSON;
import mapper.BookMapper;
import pojo.Book;
import pojo.Code;
import pojo.Result;
import pojo.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.BufferedReader;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/addBookServlet")
public class AddBookServlet extends HttpServlet {
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
            bool =  bookMapper.addBook(book);
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
