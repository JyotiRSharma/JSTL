package com.demo.jstl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DemoServlet")
public class DemoServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		Student s = new Student("Jyoti", 12);
		Student s1 = new Student("Ram", 10);
		Student s2 = new Student("Shyam", 20);
		List<Student> studs = new ArrayList<Student>();
		studs.add(s);
		studs.add(s1);
		studs.add(s2);
		
		req.setAttribute("student", studs);
		RequestDispatcher rd = req.getRequestDispatcher("display.jsp");
		rd.forward(req, res);
	}
	
}
