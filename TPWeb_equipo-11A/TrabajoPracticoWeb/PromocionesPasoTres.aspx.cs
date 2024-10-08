﻿using Dominio;
using negocio;
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
            if (Session["VoucherValido"] == null || !(bool)Session["VoucherValido"])
            {
                Response.Redirect("Default.aspx");
                return;
            }

            urlCodigoArt = Request.QueryString["id"] != null ? Request.QueryString["id"].ToString() : null;
            urlCodVoucher = Request.QueryString["codigo"] != null ? Request.QueryString["codigo"].ToString() : null;

            if (string.IsNullOrEmpty(urlCodigoArt) || string.IsNullOrEmpty(urlCodVoucher))
            {
                Response.Redirect("Default.aspx");
                return;
            }

            if (!IsPostBack)
            {
                objCliente = new Cliente();
            }
            else
            {
                objCliente = Session["objCliente"] as Cliente;
            }

        }



        protected void btnParticipar_Click(object sender, EventArgs e)
        {
            ClienteNegocio clienteNegocio = new ClienteNegocio();
            VoucherNegocio voucherNegocio = new VoucherNegocio();

            string dni = txtDocumento.Text;
            bool esValido = true;
            string mensajeError = "";

            if (!int.TryParse(txtDocumento.Text, out _))
            {
                esValido = false;
                mensajeError += "El documento debe contener solo números. ";
            }

            if (!EsCodigoPostalValido(txtCodigoPostal.Text))
            {
                esValido = false;
                mensajeError += "El código postal debe contener solo letras y números. ";
            }

            if (!txtEmail.Text.Contains("@"))
            {
                esValido = false;
                mensajeError += "Ingrese un correo electrónico válido. ";
            }

            if (!chkTerminos.Checked)
            {
                esValido = false;
                mensajeError += "Debe aceptar los términos y condiciones para continuar. ";
            }

            if (!esValido)
            {
                lblMensaje.Text = mensajeError;
                lblMensaje.Visible = true;
                return;
            }

            if (clienteNegocio.existe(dni))
            {
                objCliente = clienteNegocio.traerCliente(dni);
            }
            else
            {
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
            }

            int clienteIdFinal = objCliente.ID > 0 ? objCliente.ID : (int)Session["ClienteId"];
            voucherNegocio.ActualizarVoucher(urlCodVoucher, clienteIdFinal, int.Parse(urlCodigoArt));
          
            string asunto = "Código de Promoción Canjeado";
            string cuerpo = $"Hola {txtNombre.Text}, tu código de promoción '{urlCodVoucher}' ha sido canjeado exitosamente ¡Disfruta de las recompensas!";
            
            EmailService emailService = new EmailService();
            emailService.armarCorreo(txtEmail.Text, asunto, cuerpo);
            try
            {
                emailService.enviarEmail();
            }
            catch (Exception ex)
            {
                Session.Add("error", ex);
            }
          
            ScriptManager.RegisterStartupScript(this, this.GetType(), "modal1", "$('#modal1').modal('show');", true);
            
        }

        protected void btnVolverInicio_Click(object sender, EventArgs e)
        {
            Session["VoucherValido"] = null;
            Response.Redirect("Default.aspx");
        }

        protected void txtDocumento_TextChanged(object sender, EventArgs e)
        {
            ClienteNegocio negocio = new ClienteNegocio();
            string dni = txtDocumento.Text;

            if (string.IsNullOrWhiteSpace(dni))
            {
                lblMensaje.Visible = false;
                HabilitarCampos();
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
                btnParticipar.Visible = true;
            }
        }




        private void DeshabilitarCampos()
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

        private void HabilitarCampos() 
        {
            txtNombre.Enabled = true;
            txtApellido.Enabled = true;
            txtEmail.Enabled = true;
            txtDireccion.Enabled = true;
            txtCiudad.Enabled = true;
            txtCodigoPostal.Enabled = true;
        }

        protected bool EsCodigoPostalValido(string codigoPostal)
        {
            foreach (char c in codigoPostal)
            {
                if (!char.IsDigit(c))
                {
                    return false;
                }
            }
            return true;
        }
    }
}