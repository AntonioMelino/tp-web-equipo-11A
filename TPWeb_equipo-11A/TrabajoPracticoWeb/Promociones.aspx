<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Promociones.aspx.cs" Inherits="TrabajoPracticoWeb.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
    <hr />
    <h1>Promociones</h1>
    <div class="mb-3">
        <label for="txtCodigoPromocional" class="form-label">Ingresá el código promocional</label>
        <asp:TextBox ID="txtCodigoPromocional" runat="server" CssClass="form-control" placeholder="X X X X X X X X"></asp:TextBox>
    </div>
    <asp:Button ID="btnVerificarCodigo" runat="server" Text="Siguiente" OnClick="btnVerificarCodigo_Click" CssClass="btn btn-primary" />
    <asp:Button ID="btnAtras" runat="server" Text="Atrás" PostBackUrl="~/Default.aspx" CssClass="btn btn-primary" />
    <asp:Label ID="lblMensajeError" runat="server" CssClass="text-danger" Visible="False"></asp:Label>
        </div>
</asp:Content>



