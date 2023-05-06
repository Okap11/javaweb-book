package mapper;

import org.junit.Test;
import pojo.Book;
import pojo.Shopcar;
import pojo.User;

import java.sql.SQLException;
import java.util.List;

public class Text {
    @Test
    public void text1() throws ClassNotFoundException, SQLException {
        UserMapper userMapper = new UserMapper();
        User user = new User();
        user.setUsername("123");
        user.setPassword("123");
        System.out.println(userMapper.returnAdmin(user));
    }
    @Test
    public void text2() throws ClassNotFoundException, SQLException {
        BookMapper bookMapper = new BookMapper();

    }
    @Test
    public void text3() throws ClassNotFoundException, SQLException {
        ShopcarMapper shopcarMapper = new ShopcarMapper();
        Shopcar shopcar = new Shopcar();
        shopcar.setId(1);
        shopcar.setName("小呆呆");
        shopcar.setAuthor("超人强");
        shopcar.setPrice(123);
        shopcar.setAbstract("猪猪侠");
        shopcar.setUserid(1);
        //System.out.println(shopcarMapper.addSchopcar(shopcar));
        //System.out.println(shopcarMapper.selectAll(shopcar.getUserid()));

    }
}
