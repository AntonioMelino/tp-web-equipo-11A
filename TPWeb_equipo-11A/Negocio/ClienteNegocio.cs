using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
                datos.setearConsulta("SELECT * from Clientes");
                //datos.setearProcedimiento("SP_ListarClientes");
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

        public int AgregarCliente(Cliente cliente)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("INSERT INTO Clientes (Documento, Nombre, Apellido, Email, Direccion, Ciudad, CP) OUTPUT INSERTED.ID VALUES (@Documento, @Nombre, @Apellido, @Email, @Direccion, @Ciudad, @CP)");
                datos.setearParametro("@Documento", cliente.Documento);
                datos.setearParametro("@Nombre", cliente.Nombre);
                datos.setearParametro("@Apellido", cliente.Apellido);
                datos.setearParametro("@Email", cliente.Email);
                datos.setearParametro("@Direccion", cliente.Direccion);
                datos.setearParametro("@Ciudad", cliente.Ciudad);
                datos.setearParametro("@CP", cliente.CP);
                return (int)datos.ejecutarEscalar();
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
