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

        //public Voucher traerVoucher(string codigo)
        //{
        //    AccesoDatos datos = new AccesoDatos();
        //    Voucher aux = null;

        //    try
        //    {
        //        datos.setearConsulta("SELECT CodigoVoucher, IdCliente FROM Vouchers WHERE CodigoVoucher = @codigo");
        //        datos.setearParametro("@codigo", codigo);
        //        datos.ejecutarLectura();

        //        if (datos.Lector.Read())
        //        {
        //            aux = new Voucher
        //            {
        //                CodigoVoucher = datos.Lector["CodigoVoucher"].ToString(),
        //                Cliente = new Cliente
        //                {
        //                    ID = (int)datos.Lector["IdCliente"]
        //                }
        //            };
        //        }
        //    }
        //    catch (Exception ex)
        //    {
                
        //        throw new Exception("Error al traer el voucher", ex);
        //    }
        //    finally
        //    {
        //        datos.cerrarConexion();
        //    }

        //    return aux;

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
    }
}
