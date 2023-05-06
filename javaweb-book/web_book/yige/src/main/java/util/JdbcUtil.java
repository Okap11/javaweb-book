package util;

import java.sql.*;

public class JdbcUtil {
    private static String url = "jdbc:mysql:///tsg";
    private static String usename = "root";
    private static String password = "root";
    private static String sql = "";
    private static Connection connection=null;
    private static PreparedStatement preparedStatement = null;
    private static ResultSet resultSet = null;
    public static void dbconn(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, usename, password);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

    }

    public static void dbclose()
    {
        try {
            preparedStatement.close();
            connection.close();
        } catch (SQLException e) {
            // TODO 自动生成 catch 块
            e.printStackTrace();
        }
        preparedStatement=null;
        connection=null;
    }

    public int update(String sql)
    {
        dbconn();
        int i=0;
        try {
            i= preparedStatement.executeUpdate(sql);
        } catch (SQLException e) {
            // TODO 自动生成 catch 块
            e.printStackTrace();
        }
        dbclose();
        return i;

    }
}
