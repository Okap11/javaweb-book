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
import java.util.ArrayList;
import java.util.List;

@WebServlet("/selectBookByNameServlet")
public class SelectBookByNameServlet extends HttpServlet {
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
        List<Book> books = new ArrayList<>();
        try {
            books =  bookMapper.selectByName(book);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        String json_result1 ;
        json_result1 = JSON.toJSONString(new Result(Code.GET_OK,books,"查询失败"));
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(json_result1);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
