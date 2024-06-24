package com.jsp.carManagementSystem;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

@WebServlet("/updateCar")
public class UpdateCar extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		//Taking parameter from front-end
		int carId = Integer.parseInt(req.getParameter("carId"));
		
		SessionFactory sf = new Configuration().configure().addAnnotatedClass(Car.class).buildSessionFactory();
		Session session = sf.openSession();
		Transaction t = session.beginTransaction();
		
		Car car = session.get(Car.class, carId);
		
		t.commit();
		session.close();
		
		req.setAttribute("car", car);
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("UpdateCar.jsp");
		requestDispatcher.forward(req, resp);
	}
}
