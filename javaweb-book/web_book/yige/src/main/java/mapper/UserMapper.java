package mapper;

import pojo.User;
import util.DBUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserMapper {
    private static Connection connection=null;
    private static PreparedStatement preparedStatement = null;
    private static ResultSet resultSet = null;

    //查询所有
    public List<User> selectAll() throws SQLException {
        connection = DBUtils.getConnection();
        DBUtils.sql = "select * from gwc_user";
        preparedStatement = connection.prepareStatement(DBUtils.sql);
        resultSet = preparedStatement.executeQuery();
        List<User> users = new ArrayList<>();
        while (resultSet.next()){
            User user = new User();
            user.setId(resultSet.getInt("id"));
            user.setUsername(resultSet.getString("username"));
            user.setPassword(resultSet.getString("password"));
            user.setAdmin(resultSet.getInt("admin"));
            users.add(user);
        }
        resultSet.close();
        preparedStatement.close();
        return users;
    }

    //注册是查询该账号是否存在
    public boolean selectByUsername(User user) throws SQLException {
        connection = DBUtils.getConnection();
        DBUtils.sql = "select * from gwc_user where username = ?";
        preparedStatement = connection.prepareStatement(DBUtils.sql,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
        preparedStatement.setString(1,user.getUsername());
        resultSet = preparedStatement.executeQuery();
        resultSet.last();
        int columnCount = resultSet.getRow();

        preparedStatement.close();
        resultSet.close();
        return columnCount>0;
    }

    //注册
    public boolean register(User user) throws SQLException {
        connection = DBUtils.getConnection();
        DBUtils.sql = "insert into gwc_user (username, password, admin) values (?,?,?)";
        preparedStatement = connection.prepareStatement(DBUtils.sql);
        preparedStatement.setString(1,user.getUsername());
        preparedStatement.setString(2, user.getPassword());
        preparedStatement.setInt(3,user.getAdmin());
        int i = preparedStatement.executeUpdate();

        preparedStatement.close();
        connection.close();
        return i>0;
    }
    //登录
    public boolean login(User user) throws SQLException {
        connection = DBUtils.getConnection();
        DBUtils.sql = "select * from gwc_user where username = ? and password = ?";
        preparedStatement = connection.prepareStatement(DBUtils.sql,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
        preparedStatement.setString(1, user.getUsername());
        preparedStatement.setString(2, user.getPassword());
        ResultSet resultSet = preparedStatement.executeQuery();
        resultSet.last();
        int columnCount = resultSet.getRow();

        preparedStatement.close();
        resultSet.close();

        return columnCount!=0;

    }

    //返回是否管理员
    public User returnAdmin(User user) throws SQLException {
        connection = DBUtils.getConnection();
        DBUtils.sql = "select * from gwc_user where username = ? and password = ?";
        preparedStatement = connection.prepareStatement(DBUtils.sql);
        preparedStatement.setString(1, user.getUsername());
        preparedStatement.setString(2, user.getPassword());
        ResultSet resultSet = preparedStatement.executeQuery();
        resultSet.next();
        User user1 = new User();
        user1.setId(resultSet.getInt(1));
        user1.setAdmin(resultSet.getInt(4));
        resultSet.close();
        preparedStatement.close();
        return user1;
    }
}
