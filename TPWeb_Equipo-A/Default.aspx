<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPWeb_Equipo_A.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Promo Ganá!</h1>

    <div class="mb-3">
        <asp:Label Cssclass="form-label" ID="Label1" runat="server" Text="LblVoucher">Ingresá el código de tu voucher!</asp:Label>
        <asp:TextBox Cssclass="form-control" ID="txtVoucher" runat="server" placeholder="código voucher"></asp:TextBox>

        
    </div>
    <div class="mb-3">
        <asp:Button Cssclass="btn btn-primary" ID="btnSiguiente"  runat="server" OnClick="btnSiguiente_Click" Text="Siguiente" />
        
    </div>

    

</asp:Content>
