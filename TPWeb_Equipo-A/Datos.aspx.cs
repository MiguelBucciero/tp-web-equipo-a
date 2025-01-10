using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace TPWeb_Equipo_A
{
    public partial class Datos : System.Web.UI.Page
    {
        List<Cliente> listaClientes = new List<Cliente>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["voucher"] == null)
            {
                Response.Redirect("Default.aspx"); 
            }
            if (!IsPostBack)
            {
                if (Session["listaClientes"] == null)
                {
                    ArticuloNegocio negocio = new ArticuloNegocio();
                    Session.Add("listaClientes", negocio.listarClientes());
                }
            }
        }

        protected void txtDni_TextChanged(object sender, EventArgs e)
        {
            string dni = txtDni.Text;
            List<Cliente> listaClientes = (List<Cliente>)Session["listaClientes"];
            Cliente clienteExistente = listaClientes.FirstOrDefault(x => x.Dni == dni);

            if (clienteExistente != null)
            {
                txtNombre.Text = clienteExistente.Nombre;
                txtApellido.Text = clienteExistente.Apellido;
                txtEmail.Text = clienteExistente.Email;
                txtDireccion.Text = clienteExistente.Direccion;
                txtCiudad.Text = clienteExistente.Ciudad;
                txtCP.Text = clienteExistente.Cp.ToString();
            }
        }
        protected void btnParticipar_Click(object sender, EventArgs e)
        {
            string dni = txtDni.Text;
            List<Cliente> listaClientes = (List<Cliente>)Session["listaClientes"];
            Cliente clienteExistente = listaClientes.FirstOrDefault(x => x.Dni == dni);
            ArticuloNegocio negocio = new ArticuloNegocio();

            if (clienteExistente != null)
            {
                string codigoVoucher = (string)Session["voucher"];
                int idArticulo = (int)Session["idArticuloSeleccionado"];
                negocio.actualizarVoucher(codigoVoucher, clienteExistente.Id, idArticulo);
                Response.Redirect("FinalRegistro.aspx");
            }
            else
            {
                Cliente cliente = new Cliente();
                cliente.Dni = dni;
                cliente.Nombre = txtNombre.Text;
                cliente.Apellido = txtApellido.Text;
                cliente.Email = txtEmail.Text;
                cliente.Direccion = txtDireccion.Text;
                cliente.Ciudad = txtCiudad.Text;
                cliente.Cp = int.Parse(txtCP.Text);

                negocio.guardarCliente(cliente);
                int clienteId = negocio.ultimoRegistroCliente(cliente);
                string codigoVoucher = (string)Session["voucher"];
                int idArticulo = (int)Session["idArticuloSeleccionado"];
                negocio.actualizarVoucher(codigoVoucher, clienteId, idArticulo);
                Response.Redirect("FinalRegistro.aspx");
            }

        }

    }
}