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
                ArticuloNegocio negocio = new ArticuloNegocio();
                listaVouchers = negocio.listarVouchers();
                Session["listaVouchers"] = listaVouchers;
            }
        }

        protected void btnCanjear_Click(object sender, EventArgs e)
        {
            string voucher = txtVoucher.Text;
            listaVouchers = (List<Voucher>)Session["listaVouchers"];

            if (ValidarVoucher(voucher, listaVouchers))
            {
                Session.Add("voucher", voucher);
                Session.Add("accesoPremios", true);
                Response.Redirect("Premios.aspx", false);
            }
            else
            {
                lblMensaje.Text = "El voucher ingresado ya ha sido canjeado o no es válido.";
            }
        }

        private bool ValidarVoucher(string voucher, List<Voucher> listaVouchers)
        {
            foreach (var Voucher in listaVouchers)
            {
                if (Voucher.CodigoVoucher == voucher &&  Voucher.IdCliente != 1)
                {
                    return true;
                }
            }
            return false;
        }

    }
}
