/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

 import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Akun;
 
@WebServlet(name = "akunServlet", urlPatterns = {"/akunServlet"})

public class akunServlet extends HttpServlet{
 /**
     *
     */
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
    {
        Akun akun = new Akun();
        String url = "jdbc:mysql://localhost:3306/mia";
        String username = "root";
        String password = "";

        Connection koneksi = null;
        PreparedStatement pstmt = null;

        int result = 0;

        try (PrintWriter out = response.getWriter())
        {
            Class.forName("com.mysql.jdbc.Driver");
            koneksi = DriverManager.getConnection(url, username, password);
            
            String aksi = request.getParameter("aksi");

            if(aksi != null)
            {
                akun.setKode_akun(request.getParameter("kode"));
                akun.setNama_akun(request.getParameter("nama"));
                akun.setJenis_akun(request.getParameter("jenis"));
                akun.setSaldo_normal(request.getParameter("saldo"));

                switch (aksi)
                {
                    case "Insert":
                        pstmt = koneksi.prepareStatement("insert into master_akun VALUES(?,?,?,?)");
                        pstmt.setString(1, akun.getKode_akun());
                        pstmt.setString(2, akun.getNama_akun());
                        pstmt.setString(3, akun.getJenis_akun());
                        pstmt.setString(4, akun.getSaldo_normal());
                        result = pstmt.executeUpdate();

                        if (result > 0)
                        {
                            out.println(
                                "<script>" +
                                "alert('Data akun telah ditambahkan');" +
                                "document.location='add_akun.jsp';" +
                                "</script>"
                            );
                        }
                        else
                        {
                            out.println("ERROR");
                        }

                        break;

                    default:
                        break;
                }
            }
        }
        catch (ClassNotFoundException | SQLException ex)
        {
            Logger.getLogger(akunServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
