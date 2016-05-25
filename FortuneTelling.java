/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Random;

/**
 *
 * @author masa1
 */
public class FortuneTelling extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request FortuneTelling request
     * @param response FortuneTelling response
     * @throws ServletException if a FortuneTelling-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String lucklist[] = {"大吉","中吉","小吉","吉","半吉","末小吉","凶","半凶","大凶"};
        
        Random rand = new Random();
        
        Integer index = rand .nextInt(lucklist.length);
        
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("今日のあなたの運勢は..."+lucklist[index]+"!");
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request FortuneTelling request
     * @param response FortuneTelling response
     * @throws ServletException if a FortuneTelling-specific error occurs
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
     * @param request FortuneTelling request
     * @param response FortuneTelling response
     * @throws ServletException if a FortuneTelling-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the FortuneTelling.
     *
     * @return a String containing FortuneTelling description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}