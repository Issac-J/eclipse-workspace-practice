package com.demo.servlet;

import java.io.IOException;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LifecycleTest")
public class LifecycleTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LifecycleTest() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("doGet");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// doGet(request, response);
		System.out.println("doPost");
	}
	
	@Override
	public void init() throws ServletException {
		System.out.println("Called init method");
	}
	
	@Override
	public void destroy() {
		System.out.println("Called destroy method");
	}
	
	@PostConstruct
	public void PostContructInit() {
		System.out.println("Init PostConstruct");
	}
	
	@PreDestroy
	public void destroyPreDestroy() {
		System.out.println("Destroy PreDestroy");
	}
}
