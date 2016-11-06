package demo;

import com.mysql.jdbc.Driver;

import java.sql.*;
import java.util.Scanner;

/**
 * Created by Administrator on 2016/11/6.
 */
public class Search {
    public static void main(String[] args) throws SQLException {
        System.out.println("input ip address: ");
        Scanner scanner = new Scanner(System.in);
        String ip = scanner.nextLine();

        new Driver();
        Connection connection = DriverManager.getConnection("jdbc:mysql:///db_ip?user=root&password=system");
        String sql = "SELECT * FROM db_ip.ip WHERE inet_aton(?) BETWEEN inet_aton(start) AND inet_aton(end);";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1, ip);
        ResultSet resultSet = preparedStatement.executeQuery();
        resultSet.next();
        System.out.println("location: " + resultSet.getString("location"));

        resultSet.close();
        preparedStatement.close();
        connection.close();
    }
}
