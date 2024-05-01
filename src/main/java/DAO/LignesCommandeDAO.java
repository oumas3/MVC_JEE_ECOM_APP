package DAO;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import beans.LignesCommande;

public class LignesCommandeDAO {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/commerce";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "";

    public List<LignesCommande> getAllLignesCommande() {
        List<LignesCommande> lignesCommandeList = new ArrayList<>();
        String sql = "SELECT * FROM lignescomman";

        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement statement = conn.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                LignesCommande lignesCommande = new LignesCommande();
                lignesCommande.setNumCommande(resultSet.getInt("numcommande"));
                lignesCommande.setCodeArticle(resultSet.getInt("codearticle"));
                lignesCommande.setQteCde(resultSet.getInt("qtecde"));
                lignesCommandeList.add(lignesCommande);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lignesCommandeList;
    }
    public void insertLignesCommande(LignesCommande lignesCommande) {
        String sql = "INSERT INTO lignescomman (numcommande, codearticle, qtecde) VALUES (?, ?, ?)";

        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement statement = conn.prepareStatement(sql)) {
            statement.setInt(1, lignesCommande.getNumCommande());
            statement.setInt(2, lignesCommande.getCodeArticle());
            statement.setInt(3, lignesCommande.getQteCde());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

