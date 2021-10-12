package co.edu.unbosque.tiendagamer;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UsuariosServlet
 */
@WebServlet("/UsuariosServlet")
public class UsuariosServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsuariosServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void crearUsuario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
    	Usuarios usuario = new Usuarios();
    	usuario.setNombre_usuario(request.getParameter("nombre"));
    	usuario.setCedula_usuario(Long.parseLong(request.getParameter("cedula")));
    	usuario.setEmail_usuario(request.getParameter("email"));
    	usuario.setUsuario(request.getParameter("usuario"));
    	usuario.setPassword(request.getParameter("password"));
    	int respuesta = 0;
    	try {
    		respuesta = UsuariosJSON.postJSON(usuario);
    		PrintWriter writer = response.getWriter();
    		if (respuesta == 200) {
    			writer.println("Usuario creado");
    		} else {
    			request.getRequestDispatcher("/errorPage2.jsp").forward(request, response);
    		}
		} catch (IOException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    }
    
    public void actualizarUsuario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
    	Usuarios usuario = new Usuarios();
    	usuario.setNombre_usuario(request.getParameter("nombre"));
    	usuario.setCedula_usuario(Long.parseLong(request.getParameter("cedula")));
    	usuario.setEmail_usuario(request.getParameter("email"));
    	usuario.setUsuario(request.getParameter("usuario"));
    	usuario.setPassword(request.getParameter("password"));
    	int respuesta = 0;
    	try {
    		respuesta = UsuariosJSON.putJSON(usuario, usuario.getCedula_usuario());
    		PrintWriter writer = response.getWriter();
    		if (respuesta == 200) {
    			writer.println("Usuario actualizado");
    		} else {
    			request.getRequestDispatcher("/errorPage2.jsp").forward(request, response);
    		}
		} catch (IOException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    }
    
    public void eliminarUsuario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	Long id = Long.parseLong(request.getParameter("cedula"));
    	int respuesta = 0;
    	try {
    		respuesta = UsuariosJSON.deleteJSON(id);
    		PrintWriter writer = response.getWriter();
    		if (respuesta == 200) {
    			writer.println("Usuario eliminado");
    		} else {
    			request.getRequestDispatcher("/errorPage2.jsp").forward(request, response);
    		}
		} catch (IOException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String crear = request.getParameter("crear");
		String actua = request.getParameter("actualizar");
		String elimi = request.getParameter("eliminar");
		String nom = request.getParameter("nombre");
		String ced = request.getParameter("cedula");
		String ema = request.getParameter("email");
		String usu = request.getParameter("usuario");
		String con = request.getParameter("password");
		if (crear != null && !usu.isEmpty() && !con.isEmpty() && !ema.isEmpty() && !nom.isEmpty() && !ced.isEmpty()) {
			crearUsuario(request, response);
		}		
		
		if (actua != null && !ced.isEmpty()) {
			actualizarUsuario(request, response);
		}
		
		if (elimi != null && !ced.isEmpty()) {
			eliminarUsuario(request, response);
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
