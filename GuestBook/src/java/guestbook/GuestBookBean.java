/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package guestbook;
import java.sql.Connection; 
import java.sql.DriverManager; 
import java.sql.PreparedStatement;
import java.sql.ResultSet; 
import java.sql.Statement; 
import java.util.Vector;
/**
 *
 * @author hp-ProBook
 */
public class GuestBookBean {
     private String driver = "com.mysql.cj.jdbc.Driver";
    private String sURL = "jdbc:mysql://localhost:3306/dbguestbook";
    private String username = "guestbook";
    private String password = "guestbook";

    public boolean insertIntoDB(String name, String address, String company, String email) {
        try {
            Class.forName(driver);
            Connection conn = DriverManager.getConnection(sURL, username, password);
            PreparedStatement ps = conn.prepareStatement("insert into GuestBook(name, address, company, email) VALUES(?,?,?,?)");
            ps.setString(1, name);
            ps.setString(2, address);
            ps.setString(3, company);
            ps.setString(4, email);
            int res = ps.executeUpdate();

            if (res == 0) {
                throw new Exception("Gagal");
            }

            ps.close();
        } catch (Exception ex) {
            return false;
        }

        return true;
    }

    public Vector<guest> viewGuestBook() {
        Vector<guest> guests = new Vector<guest>();

        try {
            Class.forName(driver);
            Connection conn = DriverManager.getConnection(sURL, username, password);
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select * from GuestBook");

            while (rs.next()) {
                guest g = new guest();
                g.setId(rs.getInt(1));
                g.setName(rs.getString(2));
                g.setAddress(rs.getString(3));
                g.setCompany(rs.getString(4));
                g.setEmail(rs.getString(5));
                guests.add(g);
            }

            rs.close();
            stmt.close();
        } catch (Exception ex) {}

        return guests;
    }
}
