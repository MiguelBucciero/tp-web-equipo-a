using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace dominio
{
    public class Voucher
    {
        public string CodigoVoucher { get; set; }
        public int IdCliente { get; set; }
        public DateTime Fecha { get; set; }
        public int IdArticulo { get; set; }
    }
}
