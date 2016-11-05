package demo;

import com.mysql.jdbc.Driver;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by mingfei.net@gmail.com
 * 2016/10/30.
 */
public class Test {

    private static int counter;

    public static void main(String[] args) throws SQLException, IOException {
//        1. 加载 MySQL 的驱动
        new Driver();
//        2. 连接数据库
        Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/db_ip", "root", "system");
        connection.setAutoCommit(false);
//        3. 创建 SQL 语句
        try (BufferedReader bufferedReader = new BufferedReader(new FileReader("data/ip.txt"))) {
            String line;
            PreparedStatement preparedStatement;
            while ((line = bufferedReader.readLine()) != null) {
                counter++;
                String start = line.split("\\s+")[0];
                String end = line.split("\\s+")[1];
                String location = line.replace(start, "").replace(end, "").trim();
                String sql = "INSERT INTO db_ip.ip VALUES (NULL , ?, ?, ?)";
                preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1, start);
                preparedStatement.setString(2, end);
                preparedStatement.setString(3, location);
                preparedStatement.addBatch();

                if (counter % 10000 == 0) {
                    System.out.println(counter);
                    preparedStatement.executeBatch();
                    preparedStatement.clearBatch();
                }
            }
            connection.commit();
        }
        connection.close();
    }
}
