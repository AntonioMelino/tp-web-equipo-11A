using Dominio;
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

        public void participar(int codart, string codvoucher, int idcliente)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("INSERT INTO Vouchers VALUES (@codvoucher, @codart, @idcliente");
                datos.setearParametro("@codvoucher", codvoucher);
                datos.setearParametro("@codart", codart);
                datos.setearParametro("@idcliente", idcliente);
                datos.ejecutarAccion();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }

        }

        public void ActualizarVoucher(string codigoVoucher, int idCliente, int idArticulo)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("UPDATE Vouchers SET IdCliente = @idCliente, FechaCanje = GETDATE(), IdArticulo = @idArticulo WHERE CodigoVoucher = @codigoVoucher");
                datos.setearParametro("@idCliente", idCliente);
                datos.setearParametro("@idArticulo", idArticulo);
                datos.setearParametro("@codigoVoucher", codigoVoucher);
                datos.ejecutarAccion();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }
    }
}
