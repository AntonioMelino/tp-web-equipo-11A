<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Promociones.aspx.cs" Inherits="TrabajoPracticoWeb.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Promociones</h1>

        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Ingresá el código promocional</label>
            <input type="password" class="form-control" placeholder="XXXXXXXXXXXX" id="exampleInputPassword1">
        </div>
         <a href="PromocionesPasoDos.aspx" class="btn btn-primary">Siguiente</a>
        <a href="Default.aspx" class="btn btn-primary">Atrás</a>
    
</asp:Content>
