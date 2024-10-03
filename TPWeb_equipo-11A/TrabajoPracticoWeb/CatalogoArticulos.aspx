<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CatalogoArticulos.aspx.cs" Inherits="TrabajoPracticoWeb.CatalogoArticulos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Nuestros productos</h1>

    <div class="row row-cols-1 row-cols-md-3 g-4">

        <% 
            foreach (Dominio.Articulo arti in ListaArticulos)
            {

        %>


        <div class="col">
            <div class="card h-100">
                <img src="<%: arti.Imagen %>" class="card-img-top" alt="..." style="width: 300px; height: 200px; object-fit: contain; background-color: #ffffff;">
                <div class="card-body">
                    <h5 class="card-title"><%: arti.Nombre %></h5>
                    <p class="card-text"><%: arti.Descripcion %></p>
                    <p class="card-text">$<%: arti.Precio %></p>
                    <div class="card-footer">
                        <small class="text-body-secondary">Última actualización hace 3 minutos.</small>
                    </div>
                    
                </div>
            </div>
        </div>

        <% } %>
    </div>


</asp:Content>
