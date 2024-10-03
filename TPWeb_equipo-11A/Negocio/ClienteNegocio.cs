using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class ClienteNegocio
    {
        public List<Cliente> listar()
        {
            List<Cliente> lista = new List<Cliente>();
            Cliente cliente;
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearProcedimiento("SP_ListarClientes");
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    cliente = new Cliente();
                    cliente.ID = datos.Lector.GetInt32(0);
                    cliente.Documento = datos.Lector.GetString(1);
                    cliente.Nombre = datos.Lector.GetString(2);
                    cliente.Apellido = datos.Lector.GetString(3);
                    cliente.Email = datos.Lector.GetString(4);
                    cliente.Direccion = datos.Lector.GetString(5);
                    cliente.Ciudad = datos.Lector.GetString(6);
                    cliente.CP = datos.Lector.GetInt32(7);

                    lista.Add(cliente);
                }
                return lista;
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

        public bool existe(string dni)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("SELECT COUNT(ID) as ID FROM Clientes WHERE Documento = @dni");
                datos.setearParametro("@dni", dni);
                datos.ejecutarLectura();

                if (datos.Lector.Read())
                {
                    int cont = Convert.ToInt32(datos.Lector["ID"]);
                    if (cont == 1) return true;
                }
                return false;
            }
            catch (Exception ex)
            {

                throw;
            }
        }
        public Cliente traerCliente(string dni)
        {
            AccesoDatos datos = new AccesoDatos();
            Cliente cliente = new Cliente();
            try
            {
                datos.setearConsulta("SELECT * FROM Clientes WHERE Documento = @dni");
                datos.setearParametro("@dni", dni);
                datos.ejecutarLectura();
                if (datos.Lector.Read())
                {
                    cliente.ID = datos.Lector.GetInt32(0);
                    cliente.Documento = datos.Lector.GetString(1);
                    cliente.Nombre = datos.Lector.GetString(2);
                    cliente.Apellido = datos.Lector.GetString(3);
                    cliente.Email = datos.Lector.GetString(4);
                    cliente.Direccion = datos.Lector.GetString(5);
                    cliente.Ciudad = datos.Lector.GetString(6);
                    cliente.CP = datos.Lector.GetInt32(7);

                }
                return cliente;
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
