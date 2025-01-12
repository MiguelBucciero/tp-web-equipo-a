<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPWeb_Equipo_A.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .gradient-text {
            text-align: center;
            font-weight: bold;
            text-transform:uppercase;
            background: linear-gradient(90deg, #ff6a00, #ffd800,#ffffff);
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color:transparent;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="text-center">
        <h1 class="display-3 fw-bolder mb-5"><span class="gradient-text">Promo Ganá!</span></h1>
    </div>
    <div class="row justify-content-center">
        <label class="row justify-content-center" text="text" runat="server">Ingresá el código para partipar del sorteo!</label>
        <asp:TextBox CssClass="form-control w-25" ID="txtVoucher" runat="server"></asp:TextBox>
    </div>
    <br />
    <div class="mb-3">
        <div class="d-flex justify-content-center mb-3">
            <asp:Button CssClass="btn btn-primary" ID="btnCanjear" runat="server" OnClick="btnCanjear_Click" Text="Canjear" />
        </div>
        <div class="d-flex justify-content-center">
            <asp:Label ID="lblMensaje" runat="server" Text="" ForeColor="Red"></asp:Label>
        </div>
    </div>
</asp:Content>
