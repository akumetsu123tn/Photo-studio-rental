package DBConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        // Tải driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Tạo kết nối
        String url = "jdbc:mysql://localhost:3306/studiorental"; // Tên DB của bạn
        String username = "sa";
        String password = "12345"; // Thay bằng mật khẩu MySQL thật sự của bạn

        return DriverManager.getConnection(url, username, password);
    }
}
