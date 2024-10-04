<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PromocionesPasoDos.aspx.cs" Inherits="TrabajoPracticoWeb.PromocionesPasoDos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
    <hr />
    <h1>Elegí tu premio</h1>

    <div class="row row-cols-1 row-cols-md-2 g-4">

    <% 
        foreach (Dominio.Articulo arti in ListaArticulos)
        {

    %>

        
        <div class="col">
            <div class="card">
                <img src="<%: arti.Imagen %>" class="card-img-top" alt="..." style="width: 300px; height: 200px; object-fit: contain; background-color: #ffffff;">
                <div class="card-body">
                    <h5 class="card-title"><%: arti.Nombre %></h5>
                    <p class="card-text"><%: arti.Descripcion %></p>
                    <%--<a href="PromocionesPasoTres.aspx?id=<%: arti.ID %>+codigo=<%codigo%>" class="btn btn-primary">Lo quiero!</a>--%>
                    <a href="PromocionesPasoTres.aspx?id=<%: arti.ID %>&codigo=<%: codigo %>" class="btn btn-primary">Lo quiero!</a>
                    <a href="Imagenes.aspx?id=<%: arti.ID %>&codigo=<%: codigo %>" class="btn btn-primary">Ver mas imagenes</a>
                </div>
            </div>
        </div>
   
        <% } %>

         </div>
        </div>

</asp:Content>
