using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

//namespace TrabajoPracticoWeb
//{
//    public partial class WebForm2 : System.Web.UI.Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {

//        }
//    }
//}

namespace TrabajoPracticoWeb
{
    public partial class WebForm2 : Page
    {
        protected TextBox txtCodigoPromocional;
        protected Label lblMensajeError; 

        protected void Page_Load(object sender, EventArgs e)
        {
            lblMensajeError.Visible = false;
        }

        protected void btnVerificarCodigo_Click(object sender, EventArgs e)
        {
            string codigo = txtCodigoPromocional.Text; 
            if (VoucherNegocio.VerificarCodigo(codigo)) 
            {
                Response.Redirect("PromocionesPasoDos.aspx?codigo=" + codigo); 
            }
            else
            {
                lblMensajeError.Text = "El código ingresado no es válido o ya ha sido utilizado.";
                lblMensajeError.Visible = true;
            }
        }
    }
}
