package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ArticleCommandeDAO {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/commerce";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "";

    public static boolean ajouterArticleCommande(int numCommande, int codeArticle, int quantite) {
        String sql = "INSERT INTO lignescomman (numcommande, codearticle, qtecde) VALUES (?, ?, ?)";
        
        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement statement = conn.prepareStatement(sql)) {
            statement.setInt(1, numCommande);
            statement.setInt(2, codeArticle);
            statement.setInt(3, quantite);
            int rowsInserted = statement.executeUpdate();
            return rowsInserted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
