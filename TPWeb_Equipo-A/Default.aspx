<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPWeb_Equipo_A.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Promo Ganá!</h1>

    <div class="mb-3">
        <asp:Label CssClass="form-label" ID="Label1" runat="server" Text="LblVoucher">Ingresá el código de tu voucher!</asp:Label>
        <asp:TextBox CssClass="form-control" ID="txtVoucher" runat="server" placeholder="código voucher"></asp:TextBox>

    </div>
    <div class="mb-3">
        <asp:Button CssClass="btn btn-primary" ID="btnCanjear" runat="server" OnClick="btnCanjear_Click" Text="Canjear" />
        <asp:Label ID="lblMensaje" runat="server" Text="" ForeColor="Red"></asp:Label>

    </div>

    <div class="row row-cols-1 row-cols-md-2 g-4">

      
    </div>
</asp:Content>
