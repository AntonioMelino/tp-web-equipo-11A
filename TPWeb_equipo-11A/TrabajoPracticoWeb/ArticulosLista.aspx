<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ArticulosLista.aspx.cs" Inherits="TrabajoPracticoWeb.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Lista de Articulos</h1>
    <asp:GridView ID="dgvArticulos" runat="server" CssClass="table table-dark table-bordered"></asp:GridView>
</asp:Content>
