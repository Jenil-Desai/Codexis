package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Response;
import services.SnippetServices;

import java.io.IOException;

public class AddSnippet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    
        String title = request.getParameter("title");
        String language = request.getParameter("language");
        String description = request.getParameter("des");
        String code = request.getParameter("code");
        String tags = request.getParameter("tag");


        SnippetServices snippetServices = new SnippetServices();
        Response result = snippetServices.saveSnippet(title, language, description, code, tags);
        
        if (!result.isSuccess()) {
            request.setAttribute("errorMessage", result.getMessage());
            request.getRequestDispatcher("addSnippet.jsp").forward(request, response);
            return;
        }
        
        response.sendRedirect("dashboard.jsp");
    }
}
