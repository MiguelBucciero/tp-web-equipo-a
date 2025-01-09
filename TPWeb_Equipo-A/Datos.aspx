<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Datos.aspx.cs" Inherits="TPWeb_Equipo_A.Datos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <br />
        <div class="col-md-6">
            <Label for="txtDni" CssClass="form-label"  >DNI</Label>
            <asp:TextBox CssClass="form-control" ID="txtDni" runat="server" AutoPostBack="true" OnTextChanged="txtDni_TextChanged" ></asp:TextBox>
        </div>
        <div class="col-md-6">
            <Label for="txtNombre" CssClass="form-label"  >Nombre</Label>
            <asp:TextBox CssClass="form-control" ID="txtNombre" runat="server" ></asp:TextBox>
        </div>
        <div class="col-6">
            <Label for="txtApellido" CssClass="form-label"  >Apellido</Label>
            <asp:TextBox CssClass="form-control" ID="txtApellido" runat="server" ></asp:TextBox>
        </div>
        <div class="col-6">
            <Label for="txtEmail" CssClass="form-label"  >Email</Label>
            <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server" TextMode="Email" ></asp:TextBox>
        </div>
        <div class="col-md-6">
            <Label for="txtDireccion" CssClass="form-label" >Dirección</Label>
            <asp:TextBox CssClass="form-control" ID="txtDireccion" runat="server" ></asp:TextBox>
        </div>
        <div class="col-md-6">
            <Label for="txtCiudad" CssClass="form-label"  >Ciudad</Label>
            <asp:TextBox CssClass="form-control" ID="txtCiudad" runat="server" ></asp:TextBox>
        </div>

        <div class="col-md-6">
            <Label for="txtCP" CssClass="form-label"  >Código Postal</Label>
            <asp:TextBox CssClass="form-control" ID="txtCP" runat="server" ></asp:TextBox>
        </div>
        <br />
        <div class="col-12">
            <asp:Button class="btn btn-primary" ID="btnParticipar" OnClick="btnParticipar_Click" runat="server" Text="Partipar!" />
            <a href="Default.aspx" class="btn btn-primary" >Cancelar</a>
            
        </div>

</asp:Content>
