<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Datos.aspx.cs" Inherits="TPWeb_Equipo_A.Datos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="col-md-6">
            <asp:Label CssClass="form-label" ID="Label1" runat="server" Text="LbldNI">DNI</asp:Label>
            <asp:TextBox CssClass="form-control" ID="txtVoucher" runat="server" placeholder="999999999"></asp:TextBox>

        </div>
        <div class="col-md-6">
            <asp:Label CssClass="form-label" ID="Label2" runat="server" Text="LbldNI">Nombre</asp:Label>
            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Pepe"></asp:TextBox>


        </div>
        <div class="col-6">
            <asp:Label CssClass="form-label" ID="Label3" runat="server" Text="LbldNI">Apellido</asp:Label>
            <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Argento"></asp:TextBox>
        </div>
        <div class="col-6">
            <asp:Label CssClass="form-label" ID="Label4" runat="server" Text="LbldNI">Email</asp:Label>
            <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Email@gmail.com"></asp:TextBox>
        </div>
        <div class="col-md-6">
            <asp:Label CssClass="form-label" ID="Label5" runat="server" Text="LbldNI">Dirección</asp:Label>
            <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Av Siempre Viva"></asp:TextBox>
        </div>
        <div class="col-md-6">
            <asp:Label CssClass="form-label" ID="Label6" runat="server" Text="LbldNI">Ciudad</asp:Label>
            <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Del pecado"></asp:TextBox>
        </div>

        <div class="col-md-6">
            <asp:Label CssClass="form-label" ID="Label7" runat="server" Text="LbldNI">CP</asp:Label>
            <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="xxxx"></asp:TextBox>
        </div>

        <div class="col-12">
            <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Partipar!" />
            
        </div>

</asp:Content>
