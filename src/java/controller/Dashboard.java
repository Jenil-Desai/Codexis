package controller;

import common.Session;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.Response;
import services.SnippetServices;

public class Dashboard extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        String userId = Session.getUserId(session);
        
        SnippetServices snippetService = new SnippetServices();
        
        Response<Integer> totalSnippetRes = snippetService.totalSnippets(userId);
        if (!totalSnippetRes.isSuccess()) {
            request.setAttribute("errorMessage", totalSnippetRes.getMessage());
            request.getRequestDispatcher("dashboard.jsp").forward(request, response);
            return;
        }
        request.setAttribute("totalSnippets", totalSnippetRes.getData());
        
        
        Response<Integer> totalAiEnhancedSnippetRes = snippetService.totalAiEnhancedSnippets(userId);
        if (!totalAiEnhancedSnippetRes.isSuccess()) {
            request.setAttribute("errorMessage", totalAiEnhancedSnippetRes.getMessage());
            request.getRequestDispatcher("dashboard.jsp").forward(request, response);
            return;
        }
        request.setAttribute("totalAiEnhancedSnippets", totalAiEnhancedSnippetRes.getData());
        
        Response<Integer> totalNonEnhancedSnippetRes = snippetService.totalNonEnhancedSnippets(userId);
        if (!totalAiEnhancedSnippetRes.isSuccess()) {
            request.setAttribute("errorMessage", totalNonEnhancedSnippetRes.getMessage());
            request.getRequestDispatcher("dashboard.jsp").forward(request, response);
            return;
        }
        request.setAttribute("totalNonEnhancedSnippets", totalNonEnhancedSnippetRes.getData());
        
        request.getRequestDispatcher("dashboard.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
