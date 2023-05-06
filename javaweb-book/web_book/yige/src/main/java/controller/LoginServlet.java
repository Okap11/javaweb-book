package controller;

import com.alibaba.fastjson.JSON;
import mapper.UserMapper;
import pojo.Code;
import pojo.Result;
import pojo.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    private UserMapper userMapper = new UserMapper();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String rem = request.getParameter("rem");
        if(username==null||username==""||password==null||password==""){
            request.setAttribute("msg","请输入正确的数据");
            request.getRequestDispatcher("/login.jsp").forward(request,response);
            return;
        }
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);

        boolean bool1 = true;
        try {
            bool1 =  userMapper.selectByUsername(user);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        if(bool1 == false){
            request.setAttribute("msg","该账号未注册");
            System.out.println("没注册");
            request.getRequestDispatcher("/login.jsp").forward(request,response);
            return;
        }

        boolean bool2 = false;
        try {
            bool2 =  userMapper.login(user);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        if (bool2 == false){
            request.setAttribute("msg","登录失败");
            //System.out.println("失败");
            request.getRequestDispatcher("/login.jsp").forward(request,response);
            return;
        }
        if("1".equals(rem)){
            request.getSession().setAttribute("password",password);
        }

        User user1 = null;
        try {
            user1 =  userMapper.returnAdmin(user);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        getServletContext().setAttribute("user",user1);
        getServletContext().setAttribute("username",username);
        response.sendRedirect("http://localhost:8080/yige/main.jsp");
        /*if(rem == 1){
            getServletContext().setAttribute("password",password);
        }*/

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
