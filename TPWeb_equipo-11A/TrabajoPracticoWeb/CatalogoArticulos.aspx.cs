using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using TrabajoPracticoWinForm;

namespace TrabajoPracticoWeb
{
    public partial class CatalogoArticulos : System.Web.UI.Page
    {
        public List<Articulo> ListaArticulos { get; set; }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            ListaArticulos = negocio.listar();
            
        }
    }
}