
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.madhouse.modelo;

import com.madhouse.dao.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "UsuarioServlet", urlPatterns = {"/UsuarioServlet"})
public class UsuarioServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UsuarioServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UsuarioServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        String nombre = request.getParameter("txtNombre");
        String apellido = request.getParameter("txtApellido");
        String correo = request.getParameter("txtCorreo");
        String telefono = request.getParameter("txtTelefono");
        String direccion = request.getParameter("txtDireccion");
        String contrasena = request.getParameter("txtPass");
        String fechaNacimiento = request.getParameter("txtFNacimiento");
        
        Usuario nuevoUsuario = new Usuario();
        nuevoUsuario.setNombre(nombre); 
        nuevoUsuario.setApellido(apellido); 
        nuevoUsuario.setCorreo(correo);
        nuevoUsuario.setTelefono(telefono);
        nuevoUsuario.setDireccion(direccion);
        if (fechaNacimiento != null && !fechaNacimiento.isEmpty()) {
            nuevoUsuario.setFechaNacimiento(java.sql.Date.valueOf(fechaNacimiento));
        } else {
            nuevoUsuario.setFechaNacimiento(null); 
        }
        nuevoUsuario.setContrasena(contrasena);
        nuevoUsuario.setRol("Cliente");
        
        UsuarioDAO dao = new UsuarioDAO();
        boolean registroExitoso = dao.registrarUsuario(nuevoUsuario);
        
        if(registroExitoso) {
            response.sendRedirect("login.jsp");
        } else {
            response.sendRedirect("register.jsp");
        }
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
