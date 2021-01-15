/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jsp;

import java.sql.Connection; 
import java.sql.DriverManager; 
import java.sql.ResultSet; 
import java.sql.SQLException;
import java.sql.Statement; 
import java.util.Vector;

public class CatalogBean {
    private Statement stmt=null ; 
 private Connection conn = null ; 
 private String sURL = "jdbc:odbc:BookStore" ; 
 private ResultSet rs=null ;
 
 
 
 public boolean connect(){ 
 try{ 
 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver") ; 
 conn = DriverManager.getConnection(sURL,"","") ; 
 return true ; 
 }catch(Exception e){ 
 e.printStackTrace(); 
 return false; 
 } 
 } 
 
 public boolean disconnect(){ 
 try{ 
 stmt.close(); 
 rs.close(); 
 return true ; 
 }catch(Exception e){ 
 e.printStackTrace(); 
 return false; 
 } 
 } 
 
 //untuk mengambil data kategori buku (digunakan) 
 public Vector getAllCatalog(){ 
 Vector vCategory = new Vector(); 
 Vector temp ; 
 String sql ; 
 
 try{ 
 sql="SELECT * FROM Categories"; 
 
 connect(); 
 stmt = conn.createStatement(); 
 rs = stmt.executeQuery(sql) ; 
 
 while (rs.next()) { 
 temp = new Vector(); 
 temp.add(rs.getString(1)); 
 temp.add(rs.getString(2)); 
 vCategory.add(temp); 
 } 
 }catch(Exception e){ 
 e.printStackTrace(); 
 } 
 finally{ 
 disconnect(); 
 } 
 return vCategory ; 
 } 
 //mengambil judul katalog berdasarkan categoryID 
 public String getCatalogCategoryName(String category_ID){ 
 String sql ; 
 String sCategoryName="" ; 
 try{ 
 sql="SELECT cetegory_name FROM Categories WHERE category_id='"+category_ID+"'"; 
 
 connect(); 
 stmt = conn.createStatement(); 
 rs = stmt.executeQuery(sql) ;
 if (rs.next()) {
     sCategoryName = rs.getString("category_name") ; 
 } 
 }catch(Exception e){ 
 e.printStackTrace(); 
 
 } 
 finally{ 
 disconnect(); 
 } 
 return sCategoryName ; 
 } 
 
 //mengambil data buku dari database berdasarkan kategori 
 public Vector getBooksCatalog(String category_ID){ 
 String sql; 
 Vector vCatalog = new Vector(); 
 try{ 
 sql = "SELECT * from Books WHERE category_id='"+category_ID+"' "; 
 connect(); 
 stmt = conn.createStatement(); 
 rs = stmt.executeQuery(sql) ; 
 
 while(rs.next()){ 
 cmbBooks book = new cmbBooks(); 
 book.setProduct_id(rs.getString("product_id")); 
 book.setTitle(rs.getString("title")); 
 book.setAuthor(rs.getString("author")); 
 book.setDescription(rs.getString("description")); 
 book.setPrice(rs.getInt("price")); 
 book.setImage(rs.getString("image")); 
 vCatalog.addElement(book); 
 
 } 
 }catch(Exception e){ 
 e.printStackTrace(); 
 }finally{ 
 disconnect(); 
 } 
 return vCatalog ; 
 } 
 
 //mengambil data buku dari database berdasarkan keyword tertentu (digunakan) 
 public Vector getBooksCatalogSearch(String title) throws SQLException{ 
 String sql; 
 Vector vCatalog = new Vector(); 
 try {
     
 sql = "SELECT * from Books WHERE title LIKE '%" + title + "%'" ; 
 connect(); 
 stmt = conn.createStatement(); 
 rs = stmt.executeQuery(sql) ; 
 
 while(rs.next()){ 
 cmbBooks book = new cmbBooks(); 
 book.setProduct_id(rs.getString("product_id")); 
 book.setTitle(rs.getString("title")); 
 book.setAuthor(rs.getString("author")); 
 book.setDescription(rs.getString("description")); 
 book.setPrice(rs.getInt("price")); 
 book.setImage(rs.getString("image")); 
 vCatalog.addElement(book); 
 
 }
 }
 
catch(Exception e){ 
 e.printStackTrace(); 
 }
finally{ 
 disconnect(); 
 } 
 return vCatalog ; 
 }
 
 //untuk mengambil data buku yang sedang di promosikan (digunakan) 
 public Vector getPromotionBooks(){ 
 String sql; 
 Vector vCatalog = new Vector(); 
 try{ 
 sql = "SELECT * from Books WHERE product_id IN (SELECT product_id FROM promotion)" ; 
 connect(); 
 stmt = conn.createStatement(); 
 rs = stmt.executeQuery(sql) ; 
 
 while(rs.next()){ 
 cmbBooks book = new cmbBooks(); 
 book.setProduct_id(rs.getString("product_id")); 
 book.setTitle(rs.getString("title")); 
 book.setAuthor(rs.getString("author")); 
 book.setDescription(rs.getString("description")); 
 book.setPrice(rs.getInt("price")); 
 book.setImage(rs.getString("image")); 
 vCatalog.addElement(book); 
 
 } 
 }catch(Exception e){ 
 e.printStackTrace(); 
 }finally{ 
 disconnect(); 
 } 
 return vCatalog ; 
 } 
 
 //mengambil data buku dari database berdasarkan product_idnya 
 public cmbBooks getBook(String product_ID){ 
 String sql; 
 cmbBooks book = new cmbBooks(); 
 try{ 
 sql = "SELECT * from Books WHERE product_id= '"+product_ID+"' " ; 
 connect(); 
 stmt = conn.createStatement(); 
 rs = stmt.executeQuery(sql) ; 
 
 while(rs.next()){ 
 
 book.setProduct_id(rs.getString("product_id")); 
 book.setTitle(rs.getString("title")); 
 book.setAuthor(rs.getString("author")); 
 book.setDescription(rs.getString("description")); 
 book.setPrice(rs.getInt("price")); 
 book.setImage(rs.getString("image")); 
 
 
 } 
 }catch(Exception e){ 
 e.printStackTrace();
}finally{ 
 disconnect(); 
 } 
 return book ; 
 } 
}
