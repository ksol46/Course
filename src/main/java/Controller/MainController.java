package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Dao;

@WebServlet("/")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public MainController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doPro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doPro(request, response);
	}

	protected void doPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String context = request.getContextPath();
		String command = request.getServletPath();
		String site = null;
		
		System.out.println(context + "/" + command);

		Dao dao = new Dao();
		
		switch (command) {
		case "/home":
			site = "index.jsp";
			break;
		case "/subinsert":
			site = "subInsert.jsp";
			break;
		case "/subadd":
			int result1 = dao.subAdd(request, response);
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			
			if(result1 == 1) {
				out.println("<script>");
				out.println("alert('과목 등록이 완료되었습니다.'); location.href='"+ context +"';");
				out.println("</script>");
				out.flush();
				
			}else {
				out.println("<script>");
				out.println("alert('과목 등록이 실패하였습니다.'); location.href='"+ context +"';");
				out.println("</script>");
				out.flush();
			}
			break;
		case "/subsearch":
			site = dao.subSearch(request, response);
			break;
		case "/submodify":
			site = dao.subModify(request, response);
			break;
		case "/subupdate":
			int result2 = dao.subUpdate(request, response);
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out2 = response.getWriter();
			
			if(result2 == 1) {
				out2.println("<script>");
				out2.println("alert('과목 수정이 완료되었습니다.'); location.href='"+ context +"';");
				out2.println("</script>");
				out2.flush();
				
			}else {
				out2.println("<script>");
				out2.println("alert('과목 수정이 실패하였습니다.'); location.href='"+ context +"';");
				out2.println("</script>");
				out2.flush();
			}
			break;
		case "/stdinsert":
			site = "stdInsert.jsp";
			break;
		case "/courseapply":
			site = "courseApply.jsp";
			break;
		case "/courselist":
			site = "courseList.jsp";
			break;
		case "/courseresult":
			site = "courseResult.jsp";
			break;
		}
		getServletContext().getRequestDispatcher("/"+site).forward(request, response);
	}
}
