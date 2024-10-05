using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using Dominio;
using Negocio;

namespace TrabajoPracticoWeb
{
    public partial class WebForm2 : Page
    {
        protected TextBox txtCodigoPromocional;
        protected Label lblMensajeError; 

        protected void Page_Load(object sender, EventArgs e)
        {
            //lblMensajeError.Visible = false;
        }

        protected void btnVerificarCodigo_Click(object sender, EventArgs e)
        {
            string codigo = txtCodigoPromocional.Text;
            if (VoucherNegocio.VerificarCodigo(codigo)) 
            {
                //Response.Redirect("PromocionesPasoDos.aspx?codigo=" + codigo);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "modal2","$('#modal2').modal('show');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "modal1", "$('#modal1').modal('show');", true);
                //lblMensajeError.Text = "El código ingresado no es válido o ya ha sido utilizado.";
                //lblMensajeError.Visible = true;
            }
        }

        protected void btnEnviarCodigo_Click(object sender, EventArgs e)
        {
            string codigo = txtCodigoPromocional.Text;
            Response.Redirect($"PromocionesPasoDos.aspx?codigo={codigo}");
        }
    }
}
