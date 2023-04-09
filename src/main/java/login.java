
import beans.myconnectar;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class login extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String log = request.getParameter("log");
		
		myconnectar mycon = new myconnectar();
		Connection con;
		
		int c=1;
		if(log.equals("login"))
		{

			String name = request.getParameter("name");
		
			String password = request.getParameter("psw");
			System.out.println(name + password);
			try
			{
				
				c=5;
				con = mycon.getcon();
				PrintWriter out = response.getWriter();
				response.setContentType("text/html");
				String sql ="select * from adminlogin;";
				PreparedStatement ps = con.prepareStatement(sql);
				
				System.out.println("entered into sigin");
				ResultSet rs = ps.executeQuery();
				while(rs.next())
				{
					System.out.println("entered into sigin");
					if(name.equals(rs.getString("email")) && password.equals(rs.getString("password")))
					{
						c=5;
						System.out.println("entered into sigin 2");
						HttpSession session = request.getSession(true);
						session.setAttribute("id", "id");
						request.getRequestDispatcher("addac.jsp").forward(request, response);
					}
					System.out.println("entered into sigin");
				}
				request.getRequestDispatcher("index.jsp").forward(request, response);
				
				ps.close();
				con.close();
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		else if(log.equals("signin"))
		{
			System.out.println("entered into sigin");
			String name = request.getParameter("name");
			String phone = request.getParameter("phone_number");
			String email = request.getParameter("email");
			String password = request.getParameter("psw");
			try
			{
				c=5;
				PrintWriter out = response.getWriter();
				response.setContentType("text/html");
				con = mycon.getcon();
				String qr = "insert into login values(?,?,?,?)";
				PreparedStatement ps =con.prepareStatement(qr);
				System.out.println("entered into sigin 2");
				ps.setString(1, name);
				ps.setString(2, phone);
				ps.setString(3, email);
				ps.setString(4, password);
				System.out.println("entered into sigin 3");
				int x = ps.executeUpdate();
				out.println("Sucssefully Added...!!!");
				System.out.println("entered into sigin ");
				request.getRequestDispatcher("index.jsp").forward(request, response);
				con.close();
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
	}

}
