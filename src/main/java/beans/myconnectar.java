package beans;

import java.sql.Connection;
import java.sql.DriverManager;

public class myconnectar
{
	private Connection con;
	
	public Connection getcon()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
	}
}


