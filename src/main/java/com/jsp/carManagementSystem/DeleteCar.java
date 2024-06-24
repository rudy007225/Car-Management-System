package com.jsp.carManagementSystem;

import java.io.IOException;
import java.util.List;

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
import org.hibernate.query.Query;

@WebServlet("/deleteCar")
public class DeleteCar extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		//taking updated data from "DeleteCar.jsp"
		int carId = Integer.parseInt(req.getParameter("carId"));
		
		Configuration cfg = new Configuration().configure().addAnnotatedClass(Car.class);
		SessionFactory sf = cfg.buildSessionFactory();
		Session session = sf.openSession();
		Transaction t = session.beginTransaction();
		
		Car carData = session.load(Car.class, carId);		

		//deleting record which is bounded with entered ID"
		session.delete(carData);
		
	
		Query<Car> query = session.createQuery("FROM Car");
		List<Car> cars = query.list();
		
		t.commit();
		session.close();
		
		req.setAttribute("carList", cars);
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("DisplayCar.jsp");
		requestDispatcher.forward(req, resp);
		
	}
}