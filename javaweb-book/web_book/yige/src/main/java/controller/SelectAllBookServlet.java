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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/selectAllBookServlet")
public class SelectAllBookServlet extends HttpServlet {
    private BookMapper bookMapper = new BookMapper();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Book> books = new ArrayList<>();
        try {
            books =  bookMapper.selectAll();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        User user = (User)getServletContext().getAttribute("user");
        //List<Map<String,Object>> list = new ArrayList<>();
        Map<String, Object> map = new HashMap<>();
        map.put("user",user);
        map.put("book",books);
        String json_result1 = JSON.toJSONString(new Result(Code.GET_OK,map,"查询成功"));
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(json_result1);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
