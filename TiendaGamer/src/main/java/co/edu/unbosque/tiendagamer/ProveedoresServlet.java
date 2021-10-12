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
 * Servlet implementation class ProveedoresServlet
 */
@WebServlet("/ProveedoresServlet")
public class ProveedoresServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProveedoresServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void crearProveedor(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	Proveedores proveedor = new Proveedores();
    	proveedor.setNit(Long.parseLong(request.getParameter("nit")));
    	proveedor.setTelefono(Long.parseLong(request.getParameter("telefono")));
    	proveedor.setNombre_proveedor(request.getParameter("nombre"));
    	proveedor.setCiudad(request.getParameter("ciudad"));
    	proveedor.setDireccion(request.getParameter("direccion"));
    	int respuesta = 0;
    	try {
			respuesta = ProveedoresJSON.postJSON(proveedor);
			PrintWriter  writer = response.getWriter();
			if (respuesta == 200) {
				writer.println("Proveedor creado");
			} else {
				request.getRequestDispatcher("errorPage2.jsp").forward(request, response);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    }
    
    public void actualizarProveedor(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	Proveedores proveedor = new Proveedores();
    	proveedor.setNit(Long.parseLong(request.getParameter("nit")));
    	proveedor.setTelefono(Long.parseLong(request.getParameter("telefono")));
    	proveedor.setNombre_proveedor(request.getParameter("nombre"));
    	proveedor.setCiudad(request.getParameter("ciudad"));
    	proveedor.setDireccion(request.getParameter("direccion"));
    	int respuesta = 0;
    	try {
			respuesta = ProveedoresJSON.putJSON(proveedor, proveedor.getNit());
			PrintWriter  writer = response.getWriter();
			if (respuesta == 200) {
				writer.println("Proveedor actualizado");
			} else {
				request.getRequestDispatcher("errorPage2.jsp").forward(request, response);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    }
    
    public void eliminarProveedor(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	Long id = Long.parseLong(request.getParameter("nit"));
    	int respuesta = 0;
    	try {
			respuesta = ProveedoresJSON.deleteJSON(id);
			PrintWriter writer = response.getWriter();
			if (respuesta == 200) {
				writer.println("Proveedor eliminado");
			} else {
				request.getRequestDispatcher("/errorPage2.jsp").forward(request, response);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    }
    
    public void consultarProveedores(HttpServletRequest request, HttpServletResponse response) {
    	try {
			ArrayList<Proveedores> lista = ProveedoresJSON.getJSON();
			String pagina = "/pagProveedores.jsp";
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
		String nit = request.getParameter("nit");
		String tel = request.getParameter("telefono");
		String nom = request.getParameter("nombre");
		String ciu = request.getParameter("ciudad");
		String dir = request.getParameter("direccion");
		if (crear != null && !nit.isEmpty() && !tel.isEmpty() && !nom.isEmpty() && !ciu.isEmpty() && !dir.isEmpty()) {
			crearProveedor(request, response);
		}
		if (actua != null && !nit.isEmpty()) {
			actualizarProveedor(request, response);
		}
		if (elimi != null && !nit.isEmpty()) {
			eliminarProveedor(request, response);
		}
		if (consul != null) {
			consultarProveedores(request, response);
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
