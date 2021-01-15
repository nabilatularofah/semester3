
package com.jsp;

import java.util.Iterator; 
import java.util.Vector;

public class shoppingCartBean {
    //keranjang belanja 
 private Vector vCart = new Vector(); 
 
 //untuk mengetahui total jumlah barang yang ada di shooping cart. 
 private int iCartContent ; 
 
 public Vector getCart(){ 
 return vCart ; 
 } 
 
 public int getCartContentNumber(){ 
 return iCartContent ; 
 } 
 
 //fungsi untuk menambahkan ke shopping cart 
 public boolean addToCart(String product_id, int num){ 
 CatalogBean oBean = new CatalogBean(); 
 cmbBooks book = oBean.getBook(product_id); 
 Vector vCartContent = new Vector(); 
 Integer amount = new Integer(num); 
 vCartContent.addElement(book); 
 
 vCartContent.addElement(amount); 
 vCart.addElement(vCartContent); 
 //update total jumlah barang yang ada di shopping cart 
 iCartContent = iCartContent + amount.intValue(); 
 
 return true; 
 
 } 
 
 //menghapus barang dari shopping cart berdasarkan product_id 
 public void removeFromCart(String product_id){ 
 for(int i=0;i<vCart.size();i++){ 
 Vector temp = (Vector)vCart.get(i); 
 cmbBooks book= (cmbBooks) temp.get(0); 
 Integer amount = (Integer) temp.get(1); 
 String book_productid = book.getProduct_id() ; 
 
 if (book_productid.equals(product_id)){ 
 vCart.removeElementAt(i); 
 break; 
 }
 } 
 
 } 
 
 // untuk mengecek apakah barang sudah terdapat di shopping cart, jika sudah ada maka return true jika belum ada maka return false 
 public boolean isExist(String cartID){ 
 Iterator it = vCart.iterator() ; 
 while (it.hasNext()){ 
 Vector vCartContent = (Vector) it.next() ; 
 cmbBooks oBook = (cmbBooks) vCartContent.elementAt(0); 
 String productID= oBook.getProduct_id(); 
 if (productID.equals(cartID)) 
 return true ; 
 } 
 return false; 
 } 
 
 
 public void destroyCart(){ 
 vCart = new Vector(); 
 } 
 
} 
