package gestiunea.unei.agentii.de.pariuti;

/**
 *
 * @author valio
 */
import java.sql.*;
import javax.swing.JOptionPane;
public class GestiuneaUneiAgentiiDePariuti {
 public static Connection Db()
 {   String url="jdbc:mysql://localhost:3306/gestiunea_unei_agentii_de_pariuri";
     String username="vb219";
     String password="1234";
     try{
      Class.forName("com.mysql.cj.jdbc.Driver");
      Connection con=DriverManager.getConnection(url, username, password);
      System.out.println("Connected");
      return con;
     }
     catch(ClassNotFoundException | SQLException e)
     {
        JOptionPane.showMessageDialog(null,e);
        return null;
     }
 }
 
 public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(() -> {
            new Login().setVisible(true);
        });
    }
}
