
package com.infobean;

/**
 *
 * @author hp-ProBook
 */
public class UserData {
  // disebut sebagai properti 
 //untuk masing2 properti disediakan method get sebagai getter dan set sebagai setter. 
 private String namaUser;
    private String idUser;
    private int umur;

    public String getNamaUser() {
        return namaUser;
    }

    public void setNamaUser(String nama) {
        namaUser = nama;
    }

    public String getIdUser() {
        return idUser;
    }
    
    public void setIdUser(String id) {
        idUser = id;
    }

    public int getUmur() {
        return umur;
    }
    
    public void setUmur(int umur) {
        this.umur = umur;
    }
}
