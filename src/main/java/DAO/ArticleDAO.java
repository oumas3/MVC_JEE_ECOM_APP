package DAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import beans.Article;

public class ArticleDAO {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/commerce";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "";

    public static List<Article> getArticlesByCategory(int categoryId) {
        List<Article> articles = new ArrayList<>();
        String sql = "SELECT * FROM articles WHERE categorie = ?";

        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement statement = conn.prepareStatement(sql)) {
            statement.setInt(1, categoryId);
            try (ResultSet rs = statement.executeQuery()) {
                while (rs.next()) {
                    Article article = new Article();
                    article.setCodeArticle(rs.getInt("codearticle"));
                    article.setDesignation(rs.getString("designation"));
                    article.setPrix(rs.getDouble("prix"));
                    article.setStock(rs.getInt("stock"));
                    byte[] imageData = rs.getBytes("photo");
                    if (imageData != null) {
                        String base64Image = Base64.getEncoder().encodeToString(imageData);
                        article.setPhoto(base64Image);
                    }
                    articles.add(article);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return articles;
    }
    public static Article getArticleById(int articleId) {
        Article article = null;
        String sql = "SELECT * FROM articles WHERE codearticle = ?";

        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement statement = conn.prepareStatement(sql)) {
            statement.setInt(1, articleId);
            try (ResultSet rs = statement.executeQuery()) {
                if (rs.next()) {
                    article = new Article();
                    article.setCodeArticle(rs.getInt("codearticle"));
                    article.setDesignation(rs.getString("designation"));
                    article.setPrix(rs.getDouble("prix"));
                    article.setStock(rs.getInt("stock"));
                    Blob blob = rs.getBlob("photo");
                    if (blob != null) {
                        byte[] imageData = blob.getBytes(1, (int) blob.length());
                        if (imageData != null && imageData.length > 0) {
                            String base64Image = Base64.getEncoder().encodeToString(imageData);
                            article.setPhoto(base64Image);
                        }
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return article;
    }

}

