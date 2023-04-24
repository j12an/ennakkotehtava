// Importing libraries
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

// Defining public class 'ennakkotehtava_mml'
public class ennakkotehtava_mml {

    public static void main(String[] args) {

        ennakkotehtava_mml pro = new ennakkotehtava_mml();
        pro.createConnection(); 
    }

    void createConnection(){

        // Print title on console
        System.out.println("\r\nLaskutusmalli - laskutustiedot yksitellen (Asiakastiedot ja palvelut)");

        // Initialize customerRowNumber for records
        int customerRowNumber = 0;

        // Search customer data from database 
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mml_etukateistehtava", "root", "");
            java.sql.Statement stmt = con.createStatement();

            // Base information from database
            ResultSet rs = stmt.executeQuery("SELECT asiakaslaskutustiedot_yhteensa.Kokonaissumma as 'Kokonaissumma', laskutustapahtumat.asiakastunnus, asiakkaat.asiakasryhma, laskutustapahtumat.tuote, laskutustapahtumat.kplmaara, tuotteet.tuotteen_hinta, laskutustapahtumat.kplmaara * tuotteet.tuotteen_hinta as 'Tuotteen hinta yhteensa', asiakasryhmat_ja_hinnoittelu.yllapitomaksu, asiakasryhmat_ja_hinnoittelu.hinnoittelu FROM asiakkaat JOIN laskutustapahtumat ON asiakkaat.asiakastunnus=laskutustapahtumat.asiakastunnus JOIN tuotteet ON laskutustapahtumat.tuote = tuotteet.tuote JOIN asiakasryhmat_ja_hinnoittelu ON asiakkaat.asiakasryhma=asiakasryhmat_ja_hinnoittelu.asiakasryhma JOIN asiakaslaskutustiedot_yhteensa ON asiakkaat.asiakastunnus=asiakaslaskutustiedot_yhteensa.asiakastunnus WHERE asiakasryhmat_ja_hinnoittelu.yllapitomaksu IN ('vain oikeaksi todistetut tuotteet maksullisia') AND laskutustapahtumat.tuote LIKE '%oikeaksi todistettava%' OR asiakasryhmat_ja_hinnoittelu.yllapitomaksu IN ('kaikki tuotteet maksullisia') ORDER BY asiakastunnus;");   
          
            while(rs.next()){
                String asiakastunnus = rs.getString("asiakastunnus");
                String asiakasryhma = rs.getString("asiakasryhma");
                String tuote = rs.getString("tuote");
                String kplmaara = rs.getString("kplmaara");
                String tuotteen_hinta = rs.getString("tuotteen_hinta");
                String tuotteen_hinta_yhteensa = rs.getString("Tuotteen hinta yhteensa");
                //String yllapitomaksu = rs.getString("yllapitomaksu");
                String hinnoittelu = rs.getString("hinnoittelu");
                String kokonaishinta = rs.getString("Kokonaissumma");
                
                //System.out.printf("| %-6s | %-8s | %-8s | %-2s | %-2s | %-2s | %-8s | %-8s |%n", asiakastunnus,asiakasryhma, tuote, kplmaara, tuotteen_hinta, yhteensa, yllapitomaksu, hinnoittelu)
                
                // Grow customer number +1 by row
                customerRowNumber = customerRowNumber + 1;                

                // Print customer data line by line
                System.out.println("\r\n"+customerRowNumber+". Asiakastunnus: "+asiakastunnus+" | Asiakasryhmä: " + asiakasryhma+"\r\nTuote: " + tuote+" | KPLmaara: " + kplmaara+" | Tuotteen hinta(kpl): " + tuotteen_hinta+" | Tuotteen yhteenlaskettu hinta: " + tuotteen_hinta_yhteensa);

                // Check pricing (if product is free) for customer
                if (hinnoittelu.contains("kiinteä")==true){
                    System.out.println("Ylläpitomaksutiedot: kiinteä yp maksu"); 
                 }  

                System.out.println("Asiakkaan laskun loppusumma: " + kokonaishinta + "\r\n");
        
            }
            
            //System.out.println("\nJava-ohjelmalla otettu yhteys mysql-kantaan (JDBC) ja tulostetaan tiedot kyselyt mukaisesti.\n");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        catch (SQLException e){
            Logger.getLogger(ennakkotehtava_mml.class.getName()).log(Level.SEVERE, null,e);
         }
         
    }
    
}
