package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.GyopilDAO;
import model.GyosunDAO;
import model.IlsunDAO;
import model.MajorDAO;
import model.UserDAO;
import model.UserGDAO;
import model.UserTTDAO;
import model.dto.UserGDTO;
import model.dto.UserTTDTO;

/**
 * Servlet implementation class UserController
 */
public class UserController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		String command = request.getParameter("command");

		try {
			if (command.equals("checkIdPw")) {
				checkIdPw(request, response);
			} else if (command.equals("duplicateIdCheck")) {
				duplicateIdCheck(request, response);
			} else if (command.equals("duplicateNumCheck")) {
				duplicateNumCheck(request, response);
			} else if (command.equals("createUser")) {
				createUser(request, response);
			} else if (command.equals("leaveUser")) {
				leaveUser(request, response);
			} else if (command.equals("updateGrade")) {
				updateGrade(request, response);
			} else if (command.equals("updateUser")) {
				updateUser(request, response);
			} else if (command.equals("enterGrade")) {
				enterGrade(request, response);
			}

		} catch (Exception s) {
			request.setAttribute("errorMsg", s.getMessage());
			request.getRequestDispatcher("showError.jsp").forward(request, response);
			s.printStackTrace();
		}
	}

	public void checkIdPw(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "error.jsp";

		try {
			boolean result = UserDAO.checkIdPw(request.getParameter("uname"), request.getParameter("psw"));
			if (result) {
				HttpSession session = request.getSession();// 세션 생성
				session.setAttribute("id", request.getParameter("uname"));
				session.setAttribute("pw", request.getParameter("psw"));
				request.setAttribute("Msg", "로그인 성공");

				session.setAttribute("currentCustomer", UserDAO.getCustomer(request.getParameter("uname")));
				session.setAttribute("totalCredit", UserGDAO.getCredit(request.getParameter("uname")));
				session.setAttribute("totalGPA", UserGDAO.getGPA(request.getParameter("uname")));
				session.setAttribute("semester", UserGDAO.getSemester(request.getParameter("uname")));
				session.setAttribute("mygrade", UserGDAO.getMyGrade(request.getParameter("uname")));
				session.setAttribute("ttsemester", UserTTDAO.getSemester(request.getParameter("uname")));
				session.setAttribute("mytable", UserTTDAO.getMyTable(request.getParameter("uname")));
				session.setAttribute("hss", MajorDAO.getHss());
				session.setAttribute("tc", MajorDAO.getTc());
				session.setAttribute("ac", MajorDAO.getAc());
				session.setAttribute("artc", MajorDAO.getArtc());
				session.setAttribute("ns", MajorDAO.getNs());
				session.setAttribute("ict", MajorDAO.getIct());
				session.setAttribute("gyosun", GyosunDAO.getGyosun());
				session.setAttribute("gyopil", GyopilDAO.getGyopil());
				session.setAttribute("ilsun", IlsunDAO.getIlsun());

				url = "mypage.jsp";
			} else {
				request.setAttribute("Msg", "로그인 실패");
				url = "index.jsp";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

	public int duplicateIdCheck(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "error.jsp";
		System.out.println("duplicateidcheck");
		int result = 0;
		System.out.println(request.getParameter("checkid"));
		try {
			result = UserDAO.duplicateIdCheck(request.getParameter("checkid"));
			response.setContentType("text/html;charset=euc-kr");
			PrintWriter out = response.getWriter();
			if (result == 1) {
				out.println("중복 id입니다. id를 다시 입력해주세요.");
			} else {
				out.println("사용가능한 id입니다.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int duplicateNumCheck(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "error.jsp";
		int result = 0;
		System.out.println("duplicatenumcheck");
		try {
			System.out.println(request.getParameter("checknum"));
			result = UserDAO.duplicateNumCheck(request.getParameter("checknum"));
			response.setContentType("text/html;charset=euc-kr");
			PrintWriter out = response.getWriter();
			if (result == 1) {
				out.println("이미 가입된 사용자입니다.");
			} else {
				out.println("가입이 가능한 사용자입니다.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public void createUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "error.jsp";
		try {
			UserDAO.createUser(request.getParameter("id"), request.getParameter("pw"), request.getParameter("name"),
					request.getParameter("univ"), request.getParameter("college"), request.getParameter("major"),
					request.getParameter("num"), Integer.parseInt(request.getParameter("grade")));
			HttpSession session = request.getSession();// 세션 생성
			session.setAttribute("id", request.getParameter("id"));
			session.setAttribute("pw", request.getParameter("pw"));
			session.setAttribute("currentCustomer", UserDAO.getCustomer(request.getParameter("id")));
			request.setAttribute("Msg", "회원가입이 완료되었습니다.");
			url = "index.jsp";
			System.out.println(url);
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
	/*
	 * public void getMyGrade(HttpServletRequest request, HttpServletResponse
	 * response) throws ServletException, IOException{ String url = "error.jsp";
	 * 
	 * try { ArrayList<UserGDTO>
	 * result=UserGDAO.getMyGrade(request.getParameter("uname")); HttpSession
	 * session = request.getSession();//세션 생성 session.setAttribute("mygrade",
	 * result); url="viewGrade.jsp"; }catch (Exception e) { e.printStackTrace();
	 * } request.getRequestDispatcher(url).forward(request, response); }
	 */

	public void leaveUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "error.jsp";
		boolean result = false;
		try {
			HttpSession session = request.getSession();
			result = UserDAO.leaveUser((String) session.getAttribute("id"),request.getParameter("pw"));
			System.out.println(result);
			if (result) {
				request.setAttribute("byeMsg", "탈퇴가 완료되었습니다.");
				url = "index.jsp";
			} else {
				url = "mypage.jsp";
				request.setAttribute("byeMsg", "패스워드 오류입니다.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

	public void updateGrade(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();
			System.out.println("-----------");
			ArrayList<UserGDTO> list = UserGDAO.getMyGrade((String)session.getAttribute("id"));
			for(int i=0;i<list.size();i++){
				if(request.getParameter("name"+i) != null){
					UserGDAO.updateGrade((String)session.getAttribute("id"),request.getParameter("semester"),request.getParameter("name"+i),Float.parseFloat(request.getParameter("credit"+i)),request.getParameter("grade"+i));
				}
			}
			request.setAttribute("byeMsg", "수정이 완료되었습니다.");
			session.setAttribute("totalCredit", UserGDAO.getCredit((String)session.getAttribute("id")));
			session.setAttribute("totalGPA", UserGDAO.getGPA((String)session.getAttribute("id")));
			session.setAttribute("semester", UserGDAO.getSemester((String)session.getAttribute("id")));
			session.setAttribute("mygrade", UserGDAO.getMyGrade((String)session.getAttribute("id")));
			request.getRequestDispatcher("mypage.jsp").forward(request, response);		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateUser(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		   String url = "error.jsp";
		   int result=0;
		      try {
		    	  HttpSession session = request.getSession();
		    	  result=UserDAO.updateUser((String)session.getAttribute("id"),request.getParameter("pw"), request.getParameter("college"),request.getParameter("major"),Integer.parseInt(request.getParameter("grade")));
		    	  session.setAttribute("currentCustomer", UserDAO.getCustomer((String)session.getAttribute("id")));
		    	  if(result==1){
		            url="mypage.jsp";
		         }
		    	  else {
		    		request.setAttribute("updateMsg", "업데이트 실패!");
		            url="error.jsp";
		         }
		      } catch (Exception e) {
		         e.printStackTrace();
		      }
		      request.getRequestDispatcher(url).forward(request, response);
	   }
	public void enterGrade(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();
			ArrayList<UserTTDTO> list = UserTTDAO.getMyTable((String)session.getAttribute("id"));
			for(int i=0;i<list.size();i++){
				if(request.getParameter("name"+i) != null){
					UserGDAO.enterGrade((String)session.getAttribute("id"),request.getParameter("semester"),request.getParameter("name"+i),Float.parseFloat(request.getParameter("credit"+i)),request.getParameter("grade"+i));
				}
			}
			request.setAttribute("byeMsg", "입력이 완료되었습니다.");
			session.setAttribute("totalCredit", UserGDAO.getCredit((String)session.getAttribute("id")));
			session.setAttribute("totalGPA", UserGDAO.getGPA((String)session.getAttribute("id")));
			session.setAttribute("semester", UserGDAO.getSemester((String)session.getAttribute("id")));
			session.setAttribute("mygrade", UserGDAO.getMyGrade((String)session.getAttribute("id")));
			session.setAttribute("ttsemester", UserTTDAO.getSemester((String)session.getAttribute("id")));
			session.setAttribute("mytable", UserTTDAO.getMyTable((String)session.getAttribute("id")));
			request.getRequestDispatcher("mypage.jsp").forward(request, response);		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
