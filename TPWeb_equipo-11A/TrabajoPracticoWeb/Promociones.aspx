<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Promociones.aspx.cs" Inherits="TrabajoPracticoWeb.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container" id="promociones">
    <hr />
    <h1>Promociones</h1>
        <div class="mb-3">
            <label for="txtCodigoPromocional" class="form-label">Ingresá el código promocional</label>
            <asp:TextBox ID="txtCodigoPromocional" runat="server" CssClass="form-control" placeholder="X X X X X X X X"></asp:TextBox>
        </div>
        <asp:Button ID="btnVerificarCodigo" runat="server" Text="Siguiente" OnClick="btnVerificarCodigo_Click" CssClass="btn btn-primary" />
        <asp:Button ID="btnAtras" runat="server" Text="Atrás" PostBackUrl="~/Default.aspx" CssClass="btn btn-primary" />
        <%--<asp:Label ID="lblMensajeError" runat="server" CssClass="text-danger" Visible="False"></asp:Label>--%>
        <div class="modal fade" id="modal1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">
                        <asp:Label ID="lblModalTitle" runat="server" Text="">Validacion de voucher</asp:Label>
                        </h4>
                    </div>
                    <div class="modal-body">
                        <asp:Label ID="lblModalBody" runat="server" Text="">El voucher ingresado no es válido o ya ha sido utilizado.</asp:Label>
                    </div>
                    <div class="modal-footer">
                        <a href="Promociones.aspx" class="btn btn-info">Volver</a>
                    </div>
                </div>
           </div>
        </div>
        <div class="modal fade" id="modal2" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">
                            <asp:Label ID="Label1" runat="server" Text="Validación de voucher"></asp:Label>
                        </h4>
                    </div>
                    <div class="modal-body">
                        <asp:Label ID="Label2" runat="server" Text="Voucher correcto, canjee su premio!"></asp:Label>
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="btnEnviarCodigo" runat="server" Text="Canjear premio" CssClass="btn btn-primary" OnClick="btnEnviarCodigo_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>



