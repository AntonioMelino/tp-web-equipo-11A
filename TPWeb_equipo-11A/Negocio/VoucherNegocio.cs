using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class VoucherNegocio // Cambiado de 'internal' a 'public'
    {
        public static bool VerificarCodigo(string codigo)
        {
            AccesoDatos datos = new AccesoDatos();
            return datos.VerificarCodigo(codigo);
        }
    }
}
