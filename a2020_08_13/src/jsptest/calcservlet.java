package jsptest;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class calcservlet
 */
@WebServlet("/calcservlet")
public class calcservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public calcservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		int num1, num2;
		int result;
		String op;
		
		response.setContentType("text/html;Charset=euc-kr");
		PrintWriter out =response.getWriter();
		num1=Integer.parseInt(request.getParameter("num1"));
		num2=Integer.parseInt(request.getParameter("num2"));
		op=request.getParameter("operator");
		calc cal=new calc(num1,num2,op);
		result=cal.getResult();
		
		out.println("<html>");
		out.println("<body>");
		out.println(num1+op+num2+"="+result);
		out.println("</body></html>");
		
	}


}
