package co.edu.unbosque.tiendagamer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TiendaGamerServler
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void validarUsuario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	try {
    		ArrayList<Usuarios> lista = UsuariosJSON.getJSON();
    		request.setAttribute("lista", lista);
    		String usua = request.getParameter("usuario");
    		String pass = request.getParameter("password");
    		int respuesta = 0;
    		for(Usuarios usuario : lista) {
    			if(usuario.getUsuario().equals(usua) && usuario.getPassword().equals(pass)) {
    				request.setAttribute("usuario", usuario);
    				request.getRequestDispatcher("/index.jsp").forward(request, response);
    				respuesta = 1;
    			}
    		}
    		
    		if(respuesta == 0) {
    			request.getRequestDispatcher("/errorPage.jsp").forward(request, response);
    		}
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String ing = request.getParameter("ingresar");
		String usu = request.getParameter("usuario");
		String con = request.getParameter("password");
		if(ing.equals("Ingresar") && !usu.isEmpty() && !con.isEmpty()) {
			this.validarUsuario(request, response);
		} else {
			request.getRequestDispatcher("/errorPage.jsp").forward(request, response);
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