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
@WebServlet("/TiendaGamerServlet")
public class TiendaGamerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TiendaGamerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String consultar = request.getParameter("consultar");
		String crear = request.getParameter("crear");
		if(crear != null) {
			crearUsuario(request, response);
		}
		
		if(consultar != null) {
			consultarUsuarios(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	public void crearUsuario(HttpServletRequest request, HttpServletResponse response) {
		Usuarios usuario = new Usuarios();
		usuario.setNombre_usuario(request.getParameter("nombre"));
		usuario.setCedula_usuario(request.getParameter("cedula"));
		usuario.setEmail_usuario(request.getParameter("email"));
		usuario.setUsuario(request.getParameter("usuario"));
		usuario.setPassword(request.getParameter("password"));
		int respuesta = 0;
		try {
			respuesta = TestJSON.postJSON(usuario);
			PrintWriter  writer = response.getWriter();
			if(respuesta == 200) {
				writer.println("Registro Agregado!");
			} else {
				writer.println("Error: " + respuesta);
			}
			writer.close();
		}catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public void consultarUsuarios(HttpServletRequest request, HttpServletResponse response) {
		try {
			ArrayList<Usuarios> lista = TestJSON.getJSON();
			String pagina = "/resultado.jsp";
			request.setAttribute("lista", lista);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(pagina);
			dispatcher.forward(request, response);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}