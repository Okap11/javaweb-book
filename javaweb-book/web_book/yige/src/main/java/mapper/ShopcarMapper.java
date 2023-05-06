package mapper;

import pojo.Book;
import pojo.Shopcar;
import util.DBUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ShopcarMapper {
    private static Connection connection=null;
    private static PreparedStatement preparedStatement = null;
    private static ResultSet resultSet = null;
    //添加到购物车
    public boolean addSchopcar(Shopcar shopcar) throws SQLException {
        connection = DBUtils.getConnection();
        DBUtils.sql = "insert into gwc_shopcar (userid,name,price,abstract,author,img) values (?,?,?,?,?,?)";
        preparedStatement = connection.prepareStatement(DBUtils.sql);
        preparedStatement.setInt(1,shopcar.getUserid());
        preparedStatement.setString(2,shopcar.getName());
        preparedStatement.setInt(3,shopcar.getPrice());
        preparedStatement.setString(4,shopcar.getAbstract());
        preparedStatement.setString(5,shopcar.getAuthor());
        preparedStatement.setString(6, shopcar.getImg());
        int i = preparedStatement.executeUpdate();
        preparedStatement.close();
        return i>0;
    }

    //删除购物车
    public boolean delectSchopcar(int id) throws SQLException {
        connection = DBUtils.getConnection();
        DBUtils.sql = "delete from gwc_shopcar where id = ?";
        preparedStatement = connection.prepareStatement(DBUtils.sql);
        preparedStatement.setInt(1,id);
        int i = preparedStatement.executeUpdate();
        preparedStatement.close();
        return i>0;
    }

    //查询购物车
    public List<Shopcar> selectAll(int userid) throws SQLException {
        connection = DBUtils.getConnection();
        DBUtils.sql = "select * from gwc_shopcar where userid = ?";
        preparedStatement = connection.prepareStatement(DBUtils.sql);
        preparedStatement.setInt(1,userid);
        ResultSet resultSet = preparedStatement.executeQuery();
        List<Shopcar> shopcars = new ArrayList<>();
        while (resultSet.next()){
            Shopcar shopcar = new Shopcar();
            shopcar.setId(resultSet.getInt("id"));
            shopcar.setUserid(resultSet.getInt("userid"));
            shopcar.setName(resultSet.getString("name"));
            shopcar.setPrice(resultSet.getInt("price"));
            shopcar.setAbstract(resultSet.getString("abstract"));
            shopcar.setAuthor(resultSet.getString("author"));
            shopcar.setChecked(resultSet.getInt("checked"));
            shopcar.setImg(resultSet.getString("img"));
            shopcar.setNumber(resultSet.getInt("number"));
            shopcars.add(shopcar);
        }
        resultSet.close();
        preparedStatement.close();
        return shopcars;
    }
}
