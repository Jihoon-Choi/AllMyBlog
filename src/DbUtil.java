
import java.sql.*;
public class DbUtil {
      static{
    	  try{
    		  Class.forName("oracle.jdbc.driver.OracleDriver");
    	 }
    	  catch(ClassNotFoundException e){
    		  e.printStackTrace();
    	  }
      }
      public static Connection getConnection(){
    	Connection con=null;
    	try{
    		con = DriverManager.
    				getConnection("jdbc:oracle:thin:@localhost:1521:xe",
    						"blogsvcmanager","blogsvcmanager");
    		con.setAutoCommit(false);
    	}
    	catch(SQLException e){
    		e.printStackTrace();
    	}
    	return con;
      }
      public static void close(Connection con){
    	  try{
    		  con.close();
    	 }
    	  catch(Exception e){
    		  e.printStackTrace();
    	  }
      }
      public static void close(Statement stmt){
    	  try{
    		  stmt.close();
    	 }
    	  catch(Exception e){
    		  e.printStackTrace();
    	  }
      }
      public static void close(ResultSet rs){
    	  try{
    		  rs.close();
    	 }
    	  catch(Exception e){
    		  e.printStackTrace();
    	  }
    	  
      }
      
      public static void commit(Connection con){
    	  try{
    		  con.commit();
    		  System.out.println("commit success");
    	  }
    	  catch(Exception e){
    		  System.out.println("commit fail");}}
    		  
      public static void rollback(Connection con){
    	  try{
    		  con.rollback();
    		  System.out.println("rollback success");
    	  }
    	  catch(Exception e){
    		  System.out.println("rollback fail");
    	  }
      }
}
