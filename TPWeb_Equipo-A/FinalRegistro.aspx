<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FinalRegistro.aspx.cs" Inherits="TPWeb_Equipo_A.FinalRegistro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .gradient-text {
            text-align: center;
            font: bold;
            text-transform: uppercase;
            background: linear-gradient(90deg,#ff6a00, #ffd800,#ffffff);
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h1 class="display-5 fw-bolder mb-5"><span class="gradient-text">Ya estas participando del concurso!</span></h1>
    <h2 class="display-6 fw-bolder mb-5"><span class="gradient-text">Se envio un email de confirmacion!</span></h2>
    <br />
    <a href="Default.aspx" class="btn btn-primary">Volver</a>
</asp:Content>
