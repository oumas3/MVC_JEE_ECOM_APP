package controller;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.*;
import java.util.*;

import DAO.ClientDAO;
import beans.Client;

public class Register extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String adresse = request.getParameter("adresse");
        String codepostal = request.getParameter("codepostal");
        String ville = request.getParameter("ville");
        String tel = request.getParameter("tel");
        String motpasse = request.getParameter("motpasse");

        Client client = new Client();
        client.setEmail(email);
        client.setNom(nom);
        client.setPrenom(prenom);
        client.setAdresse(adresse);
        client.setCodepostal(codepostal);
        client.setVille(ville);
        client.setTel(tel);
        client.setMotpasse(motpasse);

        boolean inserted = ClientDAO.insert(client);

        if (inserted) {
            response.sendRedirect("identification.jsp");
        } else {
            response.sendRedirect("inscription.jsp?erreur=1");
        }
    }
}
