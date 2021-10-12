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
 * Servlet implementation class ClientesServlet
 */
@WebServlet("/ClientesServlet")
public class ClientesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClientesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void crearCliente(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	Clientes cliente = new Clientes();
    	cliente.setCedula_cliente(Long.parseLong(request.getParameter("cedula")));
    	cliente.setTelefono(Long.parseLong(request.getParameter("telefono")));
    	cliente.setNombre_cliente(request.getParameter("nombre"));
    	cliente.setEmail_cliente(request.getParameter("email"));
    	cliente.setDireccion(request.getParameter("direccion"));
    	int respuesta = 0;
    	try {
			respuesta = ClientesJSON.postJSON(cliente);
			PrintWriter  writer = response.getWriter();
			if (respuesta == 200) {
				writer.println("Cliente creado");
			} else {
				request.getRequestDispatcher("errorPage2.jsp").forward(request, response);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    }
    
    public void actualizarCliente(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	Clientes cliente = new Clientes();
    	cliente.setCedula_cliente(Long.parseLong(request.getParameter("cedula")));
    	cliente.setTelefono(Long.parseLong(request.getParameter("telefono")));
    	cliente.setNombre_cliente(request.getParameter("nombre"));
    	cliente.setEmail_cliente(request.getParameter("email"));
    	cliente.setDireccion(request.getParameter("direccion"));
    	int respuesta = 0;
    	try {
			respuesta = ClientesJSON.putJSON(cliente, cliente.getCedula_cliente());
			PrintWriter  writer = response.getWriter();
			if (respuesta == 200) {
				writer.println("Cliente actualizado");
			} else {
				request.getRequestDispatcher("errorPage2.jsp").forward(request, response);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    }
    
    public void eliminarCliente(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	Long id = Long.parseLong(request.getParameter("cedula"));
    	int respuesta = 0;
    	try {
			respuesta = ClientesJSON.deleteJSON(id);
			PrintWriter writer = response.getWriter();
			if (respuesta == 200) {
				writer.println("Cliente eliminado");
			} else {
				request.getRequestDispatcher("/errorPage2.jsp").forward(request, response);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    }
    
    public void consultarClientes(HttpServletRequest request, HttpServletResponse response) {
    	try {
			ArrayList<Clientes> lista = ClientesJSON.getJSON();
			String pagina = "/pagClientes.jsp";
			request.setAttribute("lista", lista);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(pagina);
			dispatcher.forward(request, response);
		} catch (Exception e) {
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
		String consul = request.getParameter("consultar");
		String ced = request.getParameter("cedula");
		String tel = request.getParameter("telefono");
		String nom = request.getParameter("nombre");
		String ema = request.getParameter("email");
		String dir = request.getParameter("direccion");
		if (crear != null && !ced.isEmpty() && !tel.isEmpty() && !nom.isEmpty() && !ema.isEmpty() && !dir.isEmpty()) {
			crearCliente(request, response);
		}
		if (actua != null && !ced.isEmpty()) {
			actualizarCliente(request, response);
		}
		if (elimi != null && !ced.isEmpty()) {
			eliminarCliente(request, response);
		}
		if (consul != null) {
			consultarClientes(request, response);
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
