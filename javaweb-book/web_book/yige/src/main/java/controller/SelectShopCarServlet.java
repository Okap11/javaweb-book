package controller;

import com.alibaba.fastjson.JSON;
import mapper.BookMapper;
import mapper.ShopcarMapper;
import pojo.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/selectShopCarServlet")
public class SelectShopCarServlet extends HttpServlet {
    private ShopcarMapper shopcarMapper = new ShopcarMapper();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Shopcar> shopcars = new ArrayList<>();
        User user = (User) getServletContext().getAttribute("user");
        try {
            shopcars = shopcarMapper.selectAll(user.getId());
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        String json_result1 = JSON.toJSONString(new Result(Code.GET_OK,shopcars,"查询成功"));
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(json_result1);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
