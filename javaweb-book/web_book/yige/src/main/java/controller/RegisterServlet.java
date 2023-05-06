package controller;

import com.alibaba.fastjson.JSON;
import mapper.UserMapper;
import pojo.Code;
import pojo.Result;
import pojo.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.BufferedReader;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/registerServlet")
public class RegisterServlet extends HttpServlet {
    private UserMapper userMapper = new UserMapper();
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
        User user = JSON.parseObject(result, User.class);
        //Result result1 = new Result(Code.SAVE_ERR,null,"该账号已存在");
        boolean bool = false;
        try {
            //判断改用户是否存在
            bool =  userMapper.selectByUsername(user);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        if(bool == true){
            String json_result1 = JSON.toJSONString(new Result(Code.SAVE_ERR,null,"该账号已存在"));
            response.setContentType("text/json;charset=utf-8");
            response.getWriter().write(json_result1);
            return;
        }
        //用户不存在，开始注册
        boolean b = false;
        try {
            b = userMapper.register(user);
        } catch (SQLException throwables) {
        }
        if(b == false){
            String json_result1 = JSON.toJSONString(new Result(Code.SAVE_ERR,null,"系统繁忙，请稍后重试"));
            response.setContentType("text/json;charset=utf-8");
            response.getWriter().write(json_result1);
            return;
        }

        String json_result1 = JSON.toJSONString(new Result(Code.SAVE_OK,null,"注册成功"));
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(json_result1);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
