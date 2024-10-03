using Dominio;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using TrabajoPracticoWinForm;

namespace TrabajoPracticoWeb
{
    public partial class PromocionesPasoTres : System.Web.UI.Page
    {
        public string urlCodigoArt { get; set; }

        public string urlCodVoucher { get; set; }

        public Cliente objCliente { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            urlCodigoArt = Request.QueryString["id"].ToString();
            urlCodVoucher = Request.QueryString["codigo"].ToString();
        }

        protected void btnParticipar_Click(object sender, EventArgs e)
        {
            objCliente = new Cliente();
            objCliente.Documento = txtDocumento.Text;
            objCliente.Nombre = txtNombre.Text;
            objCliente.Apellido = txtApellido.Text;
            objCliente.Email = txtEmail.Text;
            objCliente.Ciudad = txtCiudad.Text;
            objCliente.CP = int.Parse(txtCodigoPostal.Text);

        }

        protected void txtDocumento_TextChanged(object sender, EventArgs e)
        {
            string dni = txtDocumento.Text;
            ClienteNegocio negocio = new ClienteNegocio();
            if (negocio.existe(dni))
            {
                objCliente = negocio.traerCliente(dni);
                txtApellido.Text= objCliente.Apellido;
                txtNombre.Text = objCliente.Nombre;
                txtDireccion.Text = objCliente.Direccion;
                txtCiudad.Text  = objCliente.Ciudad;
                txtCodigoPostal.Text = objCliente.CP.ToString();
                txtEmail.Text = objCliente.Email;

            }
            else
            {
                lblMensaje.Text = "El documento no tiene cliente asociado.";
                lblMensaje.Visible = true;
                // EL UNICO PROBLEMA ACA ES SI INGRESA EL DNI MAL UNA VEZ Y DESPUES LO PUDE BIEN QUEDA EL LABEL CON QUE NO ES VALIDO
                txtDocumento.Text = "0";
            }
        }
    }
}