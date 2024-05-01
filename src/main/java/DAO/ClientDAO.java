package DAO;

import java.sql.*;

import beans.Client;

public class ClientDAO {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/commerce";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";

    public static Client authenticate(String email, String motpasse) {
        Client client = null;
        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement statement = conn.prepareStatement("SELECT * FROM clients WHERE email=? AND motpasse=?")) {
            statement.setString(1, email);
            statement.setString(2, motpasse);
            ResultSet rs = statement.executeQuery();
            
            if (rs.next()) {
                client = new Client();
                client.setId(rs.getInt("id"));
                client.setEmail(rs.getString("email"));
                client.setNom(rs.getString("nom"));
                client.setPrenom(rs.getString("prenom"));
                client.setAdresse(rs.getString("adresse"));
                client.setCodepostal(rs.getString("codepostal"));
                client.setVille(rs.getString("ville"));
                client.setTel(rs.getString("tel"));
                client.setMotpasse(rs.getString("motpasse"));
            }

            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return client;
    }

    public static boolean insert(Client client) {
        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement statement = conn.prepareStatement("INSERT INTO clients (email, nom, prenom, adresse, codepostal, ville, tel, motpasse) VALUES (?, ?, ?, ?, ?, ?, ?, ?)")) {
            statement.setString(1, client.getEmail());
            statement.setString(2, client.getNom());
            statement.setString(3, client.getPrenom());
            statement.setString(4, client.getAdresse());
            statement.setString(5, client.getCodepostal());
            statement.setString(6, client.getVille());
            statement.setString(7, client.getTel());
            statement.setString(8, client.getMotpasse());
            
            int rowsInserted = statement.executeUpdate();
            return rowsInserted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
