using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;
using dominio;

namespace TPWeb_Equipo_A
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public List<Articulo> ListaArticulos { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["voucher"] == null)
            {
                Response.Redirect("Default.aspx"); // Redirigir a la página de ingreso de voucher
            }
            ArticuloNegocio negocio = new ArticuloNegocio();
            ListaArticulos = negocio.listarPremios();
            foreach (Articulo articulo in ListaArticulos) 
            { 
                articulo.Imagenes = negocio.listarImagenes(articulo.Id); 
            }
            if (!IsPostBack)
            {
                repRepetidor.DataSource = ListaArticulos;
                repRepetidor.DataBind();
            }
        }
        protected void btnSeleccion_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int idArticulo = int.Parse(btn.CommandArgument);
            Session["idArticuloSeleccionado"] = idArticulo;
            Response.Redirect("Datos.aspx", false);
        }
    }
}