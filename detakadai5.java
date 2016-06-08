/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import javax.servlet.http.HttpSession;

/**
 *
 * @author masa1
 */
@WebServlet(name = "detakadai5", urlPatterns = {"/detakadai5"})
public class detakadai5 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
        request.setCharacterEncoding("UTF-8");
        String n = request.getParameter("txtName");
        String r = request.getParameter("rdoSample");
        String m = request.getParameter("mulText");
             Date time = new Date();
    HttpSession hs = request.getSession(true);
        out.println(n+"<br>");
        hs.setAttribute("n", n);
        out.println(m);
           out.print("<br>");
        hs.setAttribute("r", r);
        out.println(r);
           out.print("<br>");
        hs.setAttribute("m", m);
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println(" <meta http-equiv=\"Content-Type\" content=\"http://localhost:8080/sampleA/kadai5.jsp\">");
            out.println("<title>>戻るボタン　ＨＴＭＬ用ひながた -ahref.org-</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println(" <a href=\"javascript:history.back();\">戻る</a>");       
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
         
    }
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

