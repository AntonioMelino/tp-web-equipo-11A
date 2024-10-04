using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;
using TrabajoPracticoWinForm;

namespace TrabajoPracticoWeb
{
    public partial class Imagenes : System.Web.UI.Page
    {
        public string urlCodigoArt { get; set; }
        public string urlCodVoucher { get; set; }
        public List<Imagen> listaImagenes { get; set; }
        public Articulo obj { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            urlCodigoArt = Request.QueryString["id"].ToString();
            urlCodVoucher = Request.QueryString["codigo"].ToString();
            int codart = Convert.ToInt32(urlCodigoArt);
            ImgNegocio imgNegocio = new ImgNegocio();
            ArticuloNegocio articuloNegocio = new ArticuloNegocio();
            listaImagenes = imgNegocio.listar_x_id(codart);
            obj = articuloNegocio.buscar(codart);

        }
    }
}