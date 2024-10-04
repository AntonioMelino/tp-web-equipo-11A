<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Imagenes.aspx.cs" Inherits="TrabajoPracticoWeb.Imagenes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div style="display: flex; justify-content: space-between; margin-top: 50px;">
        <div style="flex: 1; text-align: center;">
            <h2>Galería de Imágenes</h2>
            <div style="display: flex; flex-wrap: wrap; justify-content: center;">
                <% foreach (var img in listaImagenes) { %>
                    <div style="border: 1px solid #ccc; border-radius: 8px; margin: 10px; padding: 10px; box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); display: inline-block; width: 250px;">
                        <img src="<%= img.ImagenUrl %>" alt="Imagen" style="max-width: 100%; height: auto; width: 100%;">
                    </div>
                <% } %>
            </div>
        </div>
        <div style="flex: 1; padding: 20px; text-align: left; font-family: Arial, sans-serif;">
            <h2 style="font-size: 24px; margin-bottom: 15px;">Información del Artículo</h2>
            <p style="font-size: 18px; margin: 5px 0;"><strong>Título del Artículo:</strong> <%= obj.Nombre %></p>
            <p style="font-size: 16px; margin: 5px 0;"><strong>Descripción:</strong> <%= obj.Descripcion %></p>
            <div style="margin-top: 20px; text-align: center;">
                <a href="PromocionesPasoTres.aspx?id=<%: urlCodigoArt %>&codigo=<%: urlCodVoucher %>" style="display: inline-block; padding: 10px 15px; margin: 5px; background-color: #007bff; color: white; text-decoration: none; border-radius: 5px;">Elegir Producto</a>
                <a href="PromocionesPasoDos.aspx?codigo=<%: urlCodVoucher %>" style="display: inline-block; padding: 10px 15px; margin: 5px; background-color: #007bff; color: white; text-decoration: none; border-radius: 5px;">Volver!</a>
            </div>
        </div>
    </div>
</asp:Content>
