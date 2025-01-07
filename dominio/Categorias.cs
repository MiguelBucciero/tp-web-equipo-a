using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dominio
{
    public class Categoria
    {
        public string Descripcion { get; set; }
        public int Id { get; set; }

        public override string ToString()
        {
            return Descripcion;
        }
    }
}
