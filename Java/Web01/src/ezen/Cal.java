package ezen;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Cal
 */
@WebServlet("/cal.do")
public class Cal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cal() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//response.getWriter().append("Hello?");
		//response.getWriter().append("World!!!");
		response.addHeader("content-type","text/html");
		
		String sx = request.getParameter("x");
		String sy = request.getParameter("y");
		String op = request.getParameter("op");
		/*
		response.getWriter().append("x:" + x);
		response.getWriter().append("<br>");
		response.getWriter().append("y:" + y);
		*/		
		try
		{
			int x = Integer.parseInt(sx);
			int y = Integer.parseInt(sy);
				
			Calculater cal = new Calculater();
			int z = cal.DoCal(x, y, op);
			response.getWriter().append(x + op + y + "=" + z);				
		}catch(Exception e)
		{
			response.getWriter().append("Error!!");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
