<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Datos.aspx.cs" Inherits="TPWeb_Equipo_A.Datos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function validar() {
            let isValid = true;

            const nombre = document.getElementById("txtNombre");
            const dni = document.getElementById("txtDni");
            const apellido = document.getElementById("txtApellido");
            const email = document.getElementById("txtEmail");
            const direccion = document.getElementById("txtDireccion");
            const ciudad = document.getElementById("txtCiudad");
            const cp = document.getElementById("txtCP");

            const errorNombre = document.getElementById("errorNombre");
            const errorDni = document.getElementById("errorDni");
            const errorApellido = document.getElementById("errorApellido");
            const errorEmail = document.getElementById("errorEmail");
            const errorDireccion = document.getElementById("errorDireccion");
            const errorCiudad = document.getElementById("errorCiudad");
            const errorCp = document.getElementById("errorCp");

            if (nombre.value.trim() === "") {
                errorNombre.textContent = "Debes cargar el nombre.";
                nombre.classList.add("is-invalid");
                isValid = false;
            } else {
                errorNombre.textContent = "";
                nombre.classList.remove("is-invalid");
                nombre.classList.add("is-valid");
            }

            if (dni.value.trim() === "") {
                errorDni.textContent = "Debes cargar el DNI.";
                dni.classList.add("is-invalid");
                isValid = false;
            } else {
                errorDni.textContent = "";
                dni.classList.remove("is-invalid");
                dni.classList.add("is-valid");
            }

            if (apellido.value.trim() === "") {
                errorApellido.textContent = "Debes cargar el apellido.";
                apellido.classList.add("is-invalid");
                isValid = false;
            } else {
                errorApellido.textContent = "";
                apellido.classList.remove("is-invalid");
                apellido.classList.add("is-valid");
            }

            if (email.value.trim() === "") {
                errorEmail.textContent = "Debes cargar el email.";
                email.classList.add("is-invalid");
                isValid = false;
            } else {
                errorEmail.textContent = "";
                email.classList.remove("is-invalid");
                email.classList.add("is-valid");
            }

            if (direccion.value.trim() === "") {
                errorDireccion.textContent = "Debes cargar la dirección.";
                direccion.classList.add("is-invalid");
                isValid = false;
            } else {
                errorDireccion.textContent = "";
                direccion.classList.remove("is-invalid");
                direccion.classList.add("is-valid");
            }

            if (ciudad.value.trim() === "") {
                errorCiudad.textContent = "Debes cargar la ciudad.";
                ciudad.classList.add("is-invalid");
                isValid = false;
            } else {
                errorCiudad.textContent = "";
                ciudad.classList.remove("is-invalid");
                ciudad.classList.add("is-valid");
            }

            if (cp.value.trim() === "") {
                errorCp.textContent = "Debes cargar el código postal.";
                cp.classList.add("is-invalid");
                isValid = false;
            } else {
                errorCp.textContent = "";
                cp.classList.remove("is-invalid");
                cp.classList.add("is-valid");
            }

            return isValid;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <div CssClass="form-label">
        <h3>Ingresa tus datos para participar!</h3>
    </div>    
    <br />
    <div class="col-md-6">
        <Label for="txtDni" CssClass="form-label">DNI</Label>
        <asp:TextBox CssClass="form-control" ClientIDMode="Static" ID="txtDni" runat="server" AutoPostBack="true" OnTextChanged="txtDni_TextChanged"></asp:TextBox>
        <span id="errorDni" class="text-danger"></span>
    </div>
    <div class="col-md-6">
        <Label for="txtNombre" CssClass="form-label">Nombre</Label>
        <asp:TextBox CssClass="form-control" ClientIDMode="Static" ID="txtNombre" runat="server"></asp:TextBox>
        <span id="errorNombre" class="text-danger"></span>
    </div>
    <div class="col-6">
        <Label for="txtApellido" CssClass="form-label">Apellido</Label>
        <asp:TextBox CssClass="form-control" ClientIDMode="Static" ID="txtApellido" runat="server"></asp:TextBox>
        <span id="errorApellido" class="text-danger"></span>
    </div>
    <div class="col-6">
        <Label for="txtEmail" CssClass="form-label">Email</Label>
        <asp:TextBox CssClass="form-control" ClientIDMode="Static" ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
        <span id="errorEmail" class="text-danger"></span>
    </div>
    <div class="col-md-6">
        <Label for="txtDireccion" CssClass="form-label">Dirección</Label>
        <asp:TextBox CssClass="form-control" ClientIDMode="Static" ID="txtDireccion" runat="server"></asp:TextBox>
        <span id="errorDireccion" class="text-danger"></span>
    </div>
    <div class="col-md-6">
        <Label for="txtCiudad" CssClass="form-label">Ciudad</Label>
        <asp:TextBox CssClass="form-control" ClientIDMode="Static" ID="txtCiudad" runat="server"></asp:TextBox>
        <span id="errorCiudad" class="text-danger"></span>
    </div>
    <div class="col-md-6">
        <Label for="txtCP" CssClass="form-label">Código Postal</Label>
        <asp:TextBox CssClass="form-control" ClientIDMode="Static" ID="txtCP" runat="server"></asp:TextBox>
        <span id="errorCp" class="text-danger"></span>
    </div>
    <br />
    <div class="col-12">
        <asp:Button class="btn btn-primary" ID="btnParticipar" OnClientClick="return validar()" OnClick="btnParticipar_Click" runat="server" Text="Participar!" />
        <a href="Default.aspx" class="btn btn-primary">Cancelar</a>
    </div>
</asp:Content>

