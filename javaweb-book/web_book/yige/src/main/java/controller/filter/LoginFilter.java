package controller.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@WebFilter("/*")
public class LoginFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest req = (HttpServletRequest)request;

        String[] urls = {"/login.jsp","/loginServlet","/css/","/img/","/register.jsp","/registerServlet","/element-ui"};
        String url = req.getRequestURI();
        System.out.println(url);
        for(String u:urls){
            if(url.contains(u)){
                chain.doFilter(request,response);
                return;
            }
        }
        Object username = req.getSession().getAttribute("username");
        if(username != null){
            //有登录，放行
            chain.doFilter(request,response);
        }else{
            //没有登录,返回登录页面
            req.getRequestDispatcher("/login.jsp").forward(request,response);
        }
    }
}
