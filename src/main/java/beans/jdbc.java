package beans;

public class jdbc
{
	private String driver ="com.mysql.jdbc.Driver";
	
	private String database_url = "jdbc:mysql://localhost:3306/bank";
	
	private String root ="root";
	
	private String password = "root";

	public String getDriver() {
		return driver;
	}
	public String getDatabase_url() {
		return database_url;
	}
	public String getRoot() {
		return root;
	}
	public String getPassword() {
		return password;
	}
}
