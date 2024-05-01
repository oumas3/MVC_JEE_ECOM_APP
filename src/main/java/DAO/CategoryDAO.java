package DAO;
import beans.Categorie;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class CategoryDAO {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/commerce";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "";

    public static List<Categorie> getAllCategories() {
        List<Categorie> categories = new ArrayList<>();
        String sql = "SELECT * FROM categories";

        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement statement = conn.prepareStatement(sql)) {
            try (ResultSet rs = statement.executeQuery()) {
                while (rs.next()) {
                    Categorie category = new Categorie();
                    category.setCat(rs.getInt("cat"));
                    category.setRefCat(rs.getString("refCat"));
                    categories.add(category);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return categories;
    }
}
