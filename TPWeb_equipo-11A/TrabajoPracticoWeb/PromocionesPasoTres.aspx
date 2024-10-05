<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PromocionesPasoTres.aspx.cs" Inherits="TrabajoPracticoWeb.PromocionesPasoTres" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/@emailjs/browser@4/dist/email.min.js"></script>
    <script type="text/javascript" src="Content/funcionesEmail.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <hr />

        <h1>Ingresá tus datos</h1>
        <div class="container">
            <div class="row g-3 needs-validation" novalidate>
                <div class="col-12">
                    <label for="validationCustom00" class="form-label">Documento</label>
                    <asp:TextBox ID="txtDocumento" OnTextChanged="txtDocumento_TextChanged" CssClass="form-control" placeholder="Ingrese su DNI" AutoPostBack="true" required runat="server"></asp:TextBox>
                    <div class="valid-feedback">Looks good!</div>
                </div>
                <asp:Label ID="lblMensaje" runat="server" CssClass="text-danger mt-2" Visible="false"></asp:Label>
                <div class="col-md-4">
                    <label for="validationCustom01" class="form-label">Nombre</label>
                    <asp:TextBox ID="txtNombre" CssClass="form-control" placeholder="Ingrese su nombre" required runat="server"></asp:TextBox>
                    <div class="valid-feedback">Looks good!</div>
                </div>
                <div class="col-md-4">
                    <label for="validationCustom02" class="form-label">Apellido</label>
                    <asp:TextBox ID="txtApellido" CssClass="form-control" placeholder="Ingrese su apellido" required runat="server"></asp:TextBox>
                    <div class="valid-feedback">Looks good!</div>
                </div>
                <div class="col-md-4">
                    <label for="validationCustomUsername" class="form-label">Correo electrónico</label>
                    <div class="input-group has-validation">
                        <span class="input-group-text" id="inputGroupPrepend">@</span>
                        <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Ingrese su email" required runat="server"></asp:TextBox>
                        <div class="invalid-feedback">Por favor use una dirección de correo válida.</div>
                    </div>
                </div>
                <div class="col-12">
                    <label for="inputAddress" class="form-label">Dirección</label>
                    <asp:TextBox ID="txtDireccion" CssClass="form-control" placeholder="Ingrese su dirección" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label for="validationCustom03" class="form-label">Ciudad</label>
                    <asp:TextBox ID="txtCiudad" CssClass="form-control" placeholder="Ingrese su ciudad" required runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Por favor ingrese una ciudad válida.</div>
                </div>
                <div class="col-md-3">
                    <label for="validationCustom05" class="form-label">Código postal</label>
                    <asp:TextBox ID="txtCodigoPostal" CssClass="form-control" placeholder="Ingrese su código postal" required runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Por favor ingrese un código postal válido.</div>
                </div>
                <div class="col-12">
                    <div class="form-check">
                        <asp:CheckBox ID="chkTerminos" CssClass="form-check-input" required runat="server" />
                        <label class="form-check-label" for="invalidCheck">Acepto los términos y condiciones.</label>
                        <div class="invalid-feedback">Debes aceptar los términos y condiciones.</div>
                    </div>
                </div>
                <div class="col-12">

                    <asp:Button ID="btnParticipar" runat="server" Text="Participar" OnClick="btnParticipar_Click" CssClass="btn btn-primary" />
                    <a href="PromocionesPasoDos.aspx?codigo=<%: urlCodVoucher %>" class="btn btn-secondary">Atrás</a>
                </div>
            </div>
        </div>
        <div class="modal fade" id="modal2" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        </div>
        <!-- Modal -->
        <div class="modal fade" id="modal1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">
                            <asp:Label ID="lblModalTitle" runat="server" Text="">Estas participando</asp:Label>
                        </h4>
                    </div>
                    <div class="modal-body">
                        <asp:Label ID="lblModalBody" runat="server" Text="">Ya estas participando correctamente.</asp:Label>
                    </div>
                    <div class="modal-footer">
                        <a href="Promociones.aspx" class="btn btn-info">Promociones</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
