﻿using Dominio;
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
    public partial class PromocionesPasoTres : Page
    {
        public string urlCodigoArt { get; set; }
        public string urlCodVoucher { get; set; }
        public Cliente objCliente { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                objCliente = new Cliente(); 
            }
            else
            {
                objCliente = Session["objCliente"] as Cliente; 
            }

            urlCodigoArt = Request.QueryString["id"].ToString();
            urlCodVoucher = Request.QueryString["codigo"].ToString();
        }

        protected void btnDarAltaCliente_Click(object sender, EventArgs e)
        {
            ClienteNegocio clienteNegocio = new ClienteNegocio();
            objCliente = new Cliente();  
            objCliente.Documento = txtDocumento.Text;
            objCliente.Nombre = txtNombre.Text;
            objCliente.Apellido = txtApellido.Text;
            objCliente.Email = txtEmail.Text;
            objCliente.Direccion = txtDireccion.Text;
            objCliente.Ciudad = txtCiudad.Text;
            objCliente.CP = int.Parse(txtCodigoPostal.Text);

            int clienteId = clienteNegocio.AgregarCliente(objCliente);
            objCliente.ID = clienteId;
            Session["ClienteId"] = clienteId;  
            Session["objCliente"] = objCliente;  

            DeshabilitarCampos();
            btnParticipar.Visible = true;
        }

        protected void btnParticipar_Click(object sender, EventArgs e)
        {
            VoucherNegocio voucherNegocio = new VoucherNegocio();
            int clienteId = objCliente.ID > 0 ? objCliente.ID : (int)Session["ClienteId"];           
            voucherNegocio.ActualizarVoucher(urlCodVoucher, clienteId, int.Parse(urlCodigoArt));
            //Response.Redirect("Default.aspx");
            Response.Redirect("PromocionesPasoCuatro.aspx");
        }

        protected void txtDocumento_TextChanged(object sender, EventArgs e)
        {
            ClienteNegocio negocio = new ClienteNegocio();
            string dni = txtDocumento.Text;

            if (string.IsNullOrWhiteSpace(dni))
            {
                lblMensaje.Visible = false;
                HabilitarCampos();
                btnDarAltaCliente.Visible = false;
                btnParticipar.Visible = false;
                return;
            }

            if (negocio.existe(dni))
            {
                objCliente = negocio.traerCliente(dni);
                txtApellido.Text = objCliente.Apellido;
                txtNombre.Text = objCliente.Nombre;
                txtDireccion.Text = objCliente.Direccion;
                txtCiudad.Text = objCliente.Ciudad;
                txtCodigoPostal.Text = objCliente.CP.ToString();
                txtEmail.Text = objCliente.Email;
                DeshabilitarCamposDoc();
                lblMensaje.Visible = false;
                btnDarAltaCliente.Visible = false;
                btnParticipar.Visible = true;
                Session["objCliente"] = objCliente;
            }
            else
            {
                lblMensaje.Text = "El documento no tiene cliente asociado, rellene los campos para darlo de alta.";
                lblMensaje.Visible = true;
                txtApellido.Text = "";
                txtNombre.Text = "";
                txtDireccion.Text = "";
                txtCiudad.Text = "";
                txtCodigoPostal.Text = "";
                txtEmail.Text = "";
                HabilitarCampos();
                btnDarAltaCliente.Visible = true;
                btnParticipar.Visible = false;
            }
        }




        private void DeshabilitarCampos() // Deshabilita todos los campos
        {
            txtDocumento.Enabled = false;
            txtNombre.Enabled = false;
            txtApellido.Enabled = false;
            txtEmail.Enabled = false;
            txtDireccion.Enabled = false;
            txtCiudad.Enabled = false;
            txtCodigoPostal.Enabled = false;
        }

        private void DeshabilitarCamposDoc()  // Deshabilita todos los campos menos el documento
        {
            
            txtNombre.Enabled = false;
            txtApellido.Enabled = false;
            txtEmail.Enabled = false;
            txtDireccion.Enabled = false;
            txtCiudad.Enabled = false;
            txtCodigoPostal.Enabled = false;
            txtDocumento.Enabled = true;
        }

        private void HabilitarCampos() // Habilita todos los campos
        {      
            txtNombre.Enabled = true;
            txtApellido.Enabled = true;
            txtEmail.Enabled = true;
            txtDireccion.Enabled = true;
            txtCiudad.Enabled = true;
            txtCodigoPostal.Enabled = true;
        }
    }
}