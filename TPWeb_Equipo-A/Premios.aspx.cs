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
        public List<Imagen> listaImgenes { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            ListaArticulos = negocio.listarConSp();
            if (!IsPostBack)
            {
                repRepetidor.DataSource = ListaArticulos;
                repRepetidor.DataBind();
            }
            //listaImgenes = negocio.listarImagenes();
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