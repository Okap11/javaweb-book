package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBUtils {

    private static final String URL = "jdbc:mysql:///gwc"+
            "?useUnicode=true&characterEncoding=gb2312&serverTimezone=Asia/Shanghai";
    private static final String UNAME = "root";
    private static final String PWD = "root";
    private static Connection conn = null;
    private static PreparedStatement preparedStatement = null;
    public static String sql = "";

    static {
        try {
            // 1.加载驱动程序
            Class.forName("com.mysql.cj.jdbc.Driver");
            // 2.获得数据库的连接
            conn = DriverManager.getConnection(URL, UNAME, PWD);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() {
        return conn;
    }

    public static PreparedStatement getPreparedStatement() throws SQLException {return conn.prepareStatement(sql);}
}
