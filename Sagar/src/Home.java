import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Home
 */
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Home() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String src=request.getParameter("Source");
		PrintWriter out=response.getWriter();
		int Cost=0;
		int Time=0;
		boolean status=false;
		ResultSet rs=null;
		String[] desc=new String[6];
		  desc=request.getParameterValues("Destination");
		  
		String  sort=request.getParameter("radio1");
		System.out.println(src+desc);
		System.out.println(sort);
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Tourist","root","root");
			if(sort.equals("Cost"))
			{
				System.out.println("helllo");

				RequestDispatcher rd=request.getRequestDispatcher("h.jsp");
				rd.include(request, response);
				out.print("<br><br><br><br><br><table align='center' border='1' frame='box'><tbody><tr><th>Source</th><th>Destination</th><th>Time</th><th>Cost</th><th>Bus number</th></tr>");
				Statement st1=c.createStatement();
				for (int i = 0; i < desc.length; i++) {
				String q="select * from trip1 where Cost=(select min(Cost) from trip1 where  Source='"+src+"' and Destination='"+desc[i]+"' ) and Source='"+src+"' and Destination='"+desc[i]+"'";
				rs=st1.executeQuery(q);
				if(rs!=null){	
				while(rs.next())
				{
					System.out.println("helllo"+rs.getString(1));
					out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getInt(3)+"</td><td>"+rs.getInt(4)+"</td><td>"+rs.getString(5)+"</td></tr>");
				}
				}
				else{
					System.out.println("No Bus");
					out.print("<tr><td>"+src+"</td><td>"+desc[i]+"</td></tr>");
				}
				}
				
				}
			
			else
				if(sort.equals("Time"))
				{

					RequestDispatcher rd=request.getRequestDispatcher("h.jsp");
					rd.include(request, response);
					out.print("<table align='center' border='1' frame='box'><tbody><tr><th>Source</th><th>Destination</th><th>Time</th><th>Cost</th><th>Bus number</th></tr>");
					Statement st1=c.createStatement();
					for (int i = 0; i < desc.length; i++) {
					String q="select * from trip1 where Time=(select min(Time) from trip1 where  Source='"+src+"' and Destination='"+desc[i]+"' ) and Source='"+src+"' and Destination='"+desc[i]+"'";
					rs=st1.executeQuery(q);
					while(rs.next())
					{
						
						out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getInt(3)+"</td><td>"+rs.getInt(4)+"</td><td>"+rs.getInt(5)+"</td></tr>");
				
					
					}
					}
				}
				else System.out.println("nothing");
		
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
