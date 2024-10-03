<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PromocionesPasoTres.aspx.cs" Inherits="TrabajoPracticoWeb.PromocionesPasoTres" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Ingresá tus datos</h1>


    <%--<div class="row g-3 needs-validation" novalidate>
        <div class="col-12">
            <label for="validationCustom01" class="form-label">Documento</label>
            <input type="text" class="form-control" id="validationCustom00" placeholder="Ingrese su DNI" required>
            <div class="valid-feedback">
                Looks good!
            </div>
        </div>
        <div class="col-md-4">
            <label for="validationCustom01" class="form-label">Nombre</label>
            <input type="text" class="form-control" id="validationCustom01" placeholder="Ingrese su nombre" required>
            <div class="valid-feedback">
                Looks good!
            </div>
        </div>
        <div class="col-md-4">
            <label for="validationCustom02" class="form-label">Apellido</label>
            <input type="text" class="form-control" id="validationCustom02" placeholder="Ingrese su apellido" required>
            <div class="valid-feedback">
                Looks good!
            </div>
        </div>
        <div class="col-md-4">
            <label for="validationCustomUsername" class="form-label">Correo electrónico</label>
            <div class="input-group has-validation">
                <span class="input-group-text" id="inputGroupPrepend">@</span>
                <input type="text" class="form-control" id="validationCustomUsername" aria-describedby="inputGroupPrepend" placeholder="Ingrese su email" required>
                <div class="invalid-feedback">
                    Por favor use una dirección de correo válida.
                </div>
            </div>
        </div>
        <div class="col-12">
            <label for="inputAddress" class="form-label">Dirección</label>
            <input type="text" class="form-control" id="inputAddress" placeholder="Ingrese su dirección">
        </div>
        <div class="col-md-6">
            <label for="validationCustom03" class="form-label">Ciudad</label>
            <input type="text" class="form-control" id="validationCustom03" placeholder="Ingrese su ciudad" required>
            <div class="invalid-feedback">
                Por favor ingrese una ciudad válida.
            </div>
        </div>
        <div class="col-md-3">
            <label for="validationCustom05" class="form-label">Código postal</label>
            <input type="text" class="form-control" id="validationCustom05" placeholder="Ingrese su código postal" required>
            <div class="invalid-feedback">
                Por favor ingrese un código postal válido.
            </div>
        </div>
        <div class="col-12">
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
                <label class="form-check-label" for="invalidCheck">
                    Acepto los términos y condiciones.
                </label>
                <div class="invalid-feedback">
                    Debes aceptar los términos y condiciones.
                </div>
            </div>
        </div>
        <div class="col-12">
            <asp:Button ID="btnParticipar" OnClick="btnParticipar_Click" runat="server" Text="Button" />
            <a href="PromocionesPasoDos.aspx" class="btn btn-primary">Atrás</a>
        </div>
    </div>--%>

    <div class="container">
            <div class="row g-3 needs-validation" novalidate>
                <div class="col-12">
                    <label for="validationCustom00" class="form-label">Documento</label>
                    <asp:TextBox ID="txtDocumento" OnTextChanged="txtDocumento_TextChanged" CssClass="form-control" placeholder="Ingrese su DNI" AutoPostBack=true required runat="server"></asp:TextBox>
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
                    <asp:Button ID="btnParticipar" OnClick="btnParticipar_Click" runat="server" Text="Participar" CssClass="btn btn-primary" />
                    <a href="PromocionesPasoDos.aspx?codigo=<%: urlCodVoucher %>" class="btn btn-secondary">Atrás</a>
                </div>
            </div>
        </div>
        <div class="modal fade" id="modal2" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
</div>

</asp:Content>
