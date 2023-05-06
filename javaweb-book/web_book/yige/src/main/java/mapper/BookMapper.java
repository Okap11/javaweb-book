package mapper;

import pojo.Book;
import pojo.User;
import util.DBUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookMapper {
    private static Connection connection=null;
    private static PreparedStatement preparedStatement = null;
    private static ResultSet resultSet = null;

    //查询所有
    public List<Book> selectAll() throws SQLException {
        connection = DBUtils.getConnection();
        DBUtils.sql = "select * from gwc_book";
        preparedStatement = connection.prepareStatement(DBUtils.sql);
        resultSet = preparedStatement.executeQuery();
        List<Book> books = new ArrayList<>();
        while (resultSet.next()){
            Book book = new Book();
            book.setId(resultSet.getInt("id"));
            book.setName(resultSet.getString("name"));
            book.setPrice(resultSet.getInt("price"));
            book.setAuthor(resultSet.getString("author"));
            book.setPress(resultSet.getString("press"));
            book.setAbstract(resultSet.getString("abstract"));
            book.setSort(resultSet.getInt("sort"));
            book.setImg(resultSet.getString("img"));
            books.add(book);
        }
        resultSet.close();
        preparedStatement.close();
        return books;
    }

    //模糊查询
    public List<Book> selectByName(Book book) throws SQLException {
        connection = DBUtils.getConnection();
        DBUtils.sql = "select * from gwc_book where name like ?";
        preparedStatement = connection.prepareStatement(DBUtils.sql);
        preparedStatement.setString(1,"%"+book.getName()+"%");
        resultSet = preparedStatement.executeQuery();
        List<Book> books = new ArrayList<>();
        while (resultSet.next()){
            Book book1 = new Book();
            book1.setId(resultSet.getInt("id"));
            book1.setName(resultSet.getString("name"));
            book1.setPrice(resultSet.getInt("price"));
            book1.setAuthor(resultSet.getString("author"));
            book1.setPress(resultSet.getString("press"));
            book1.setAbstract(resultSet.getString("abstract"));
            book1.setSort(resultSet.getInt("sort"));
            book1.setImg(resultSet.getString("img"));
            books.add(book1);
        }

        resultSet.close();
        preparedStatement.close();

        return books;
    }


    //添加图书
    public boolean addBook(Book book) throws SQLException {
        connection = DBUtils.getConnection();
        DBUtils.sql = "insert into gwc_book (name,price,author,press,abstract,sort,img) values (?,?,?,?,?,?,?)";
        preparedStatement = connection.prepareStatement(DBUtils.sql);
        preparedStatement.setString(1,book.getName());
        preparedStatement.setInt(2,book.getPrice());
        preparedStatement.setString(3,book.getAuthor());
        preparedStatement.setString(4,null);
        preparedStatement.setString(5,book.getAbstract());
        preparedStatement.setInt(6,book.getSort());
        preparedStatement.setString(7,book.getImg());
        int i = preparedStatement.executeUpdate();

        preparedStatement.close();
        return i>0;
    }

    //删除图书
    public boolean delectBokk(Book book) throws SQLException {
        connection = DBUtils.getConnection();
        DBUtils.sql = "delete from gwc_book where id = ?";
        preparedStatement = connection.prepareStatement(DBUtils.sql);
        preparedStatement.setInt(1,book.getId());
        int i = preparedStatement.executeUpdate();
        preparedStatement.close();
        return i>0;
    }


}
