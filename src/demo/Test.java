package demo;

import com.mysql.jdbc.Driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by mingfei.net@gmail.com
 * 2016/10/30.
 */
public class Test {
    public static void main(String[] args) throws SQLException {
//        1. 加载 MySQL 的驱动
        new Driver();
//        2. 连接数据库
        Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/db_ip", "root", "system");
//        3. 创建 SQL 语句
        String start = "";
        String end = "";
        String location = "";
        PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO db_ip.ip VALUES (NULL ,start, end,location)");
//        4. 执行 SQL
        preparedStatement.executeUpdate();

        preparedStatement.close();
        connection.close();
    }
}
