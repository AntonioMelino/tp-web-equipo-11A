using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
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
                urlCodVoucher =  Request.QueryString["codigo"].ToString();
        }

        protected void btnParticipar_Click(object sender, EventArgs e)
        {
            objCliente = new Cliente();
            objCliente.Documento = txtDocumento.Text;
            objCliente.Nombre = txtNombre.Text;
            objCliente.Apellido = txtApellido.Text;      
            objCliente.Ciudad = txtCiudad.Text;
            objCliente.CP = int.Parse(txtCodigoPostal.Text);
        }
        //EN EL PASO 3 SE DEBE TRAER EL VOUCHER USADO Y EL ID DEL ARTICULO, AL TOCAR EN PARTICIAR SE DEBE CORROBORAR QUE EXISTA EL CLIENTE INGRESADO
        //LUEGO SE DEBE INSERTAR EN LA TABLA DE VOUCHER EL MISMO USADO, ENVIANDO EL ARTICULO Y EL CLIENTE
        

    }
    //EN EL CASO QUE SE QUIERE VOLVER A SELECCIONAR OTRO PRODUCTO HAY QUE ENVIAR ID Y CODIGO NUEVAMENTE SINO SE ROMPE
}