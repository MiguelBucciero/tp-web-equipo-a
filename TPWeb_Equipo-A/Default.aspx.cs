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
    public partial class Default : System.Web.UI.Page
    {
        List<Voucher> listaVouchers = new List<Voucher>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["listaVoucher"] == null)
                {
                    ArticuloNegocio negocio = new ArticuloNegocio();
                    Session.Add("listaVouchers", negocio.listarVouchers());
                }
            }
        }

        protected void btnCanjear_Click(object sender, EventArgs e)
        {
            string voucher = txtVoucher.Text;
            listaVouchers = (List<Voucher>)Session["listaVouchers"];

            if (ValidarVoucher(voucher))
            {
                Session.Add("voucher", voucher);
                Response.Redirect("Premios.aspx", false);
            }
            else
            {
                lblMensaje.Text = "El voucher ingresado ya ha sido canjeado o no es válido.";
            }
        }

        private bool ValidarVoucher(string voucher)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            List<Voucher> listaVouchers = negocio.listarVouchers();

            foreach (var Voucher in listaVouchers)
            {
                if (Voucher.CodigoVoucher == voucher && Voucher.IdCliente == 0)
                {
                    return true;
                }
            }
            return false;
        }

    }
}
