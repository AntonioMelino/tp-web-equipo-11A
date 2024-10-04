using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;
using TrabajoPracticoWinForm;
using System.Text;

namespace TrabajoPracticoWeb
{
    public partial class PromocionesPasoDos : System.Web.UI.Page
    {
        public List<Articulo> ListaArticulos { get; set; }
        public string codigo { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["codigo"].ToString() != null)
            {
                ArticuloNegocio negocio = new ArticuloNegocio();
                ListaArticulos = negocio.listar();
                codigo = Request.QueryString["codigo"].ToString();
            }
        }
    }
}