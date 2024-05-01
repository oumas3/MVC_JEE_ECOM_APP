package controller;

import java.io.IOException;

import DAO.ClientDAO;
import beans.Client;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;

public class Login extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
	        throws ServletException, IOException {
	    String email = request.getParameter("email");
	    String motpasse = request.getParameter("motpasse");

	    Client client = ClientDAO.authenticate(email, motpasse);

	    if (client != null) {
	        request.setAttribute("userName", client.getNom());
	        request.getRequestDispatcher("/acceuil.jsp").forward(request, response);
	    } else {
	        response.sendRedirect(request.getContextPath() + "/index.jsp");
	    }
	}

}
