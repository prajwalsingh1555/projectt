

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import beans.myconnectar;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addAccount")
public class addAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		
		
		System.out.println("entered into sigin");
		
		
		String name = request.getParameter("username");
		String email = request.getParameter("email");
		String amount = request.getParameter("amount");
		String address = request.getParameter("address");
		myconnectar mycon = new myconnectar();
		Connection con;
		try
		{
		
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			con = mycon.getcon();
			String qr = "insert into account values(?,?,?,?,?);";
			PreparedStatement ps =con.prepareStatement(qr);
			
			System.out.println("entered into sigin 2");
			
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, amount);
			ps.setString(4, address);
			ps.setString(5, Math.random()* Math.random() * 5555+" ");
			
			System.out.println("entered into sigin 3");
			
			
			int x = ps.executeUpdate();
			
			System.out.println("entered into sigin ");
			
			request.getRequestDispatcher("addac.jsp").include(request, response);
			out.println("Record Added ");
			con.close();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

		
		
	}
}
