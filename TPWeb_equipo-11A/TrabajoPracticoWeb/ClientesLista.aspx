<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ClientesLista.aspx.cs" Inherits="TrabajoPracticoWeb.ClientesLista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Lista de Clientes</h1>
    <asp:GridView id="dgvClientes" runat="server" CssClass="table table-dark table-bordered"></asp:GridView>     
</asp:Content>
