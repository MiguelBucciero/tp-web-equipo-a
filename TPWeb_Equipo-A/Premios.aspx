<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Premios.aspx.cs" Inherits="TPWeb_Equipo_A.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .card-img-top { 
            width: 100%;
            height: 300px; 
            object-fit: cover;  
        } 
        .card { 
            max-width: 350px; 
            margin: 20px;
            margin-top: 60px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row justify-content-center"> 
        <asp:Repeater ID="repRepetidor" runat="server">
            <ItemTemplate>
                <div class="col-auto mb-4"> 
                    <div class="card h-100"> 
                        <img src="<%#Eval("Imagen.Url")%>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre")%></h5>
                            <p class="card-text"><%#Eval("Descripcion")%></p>
                            <asp:Button CssClass="btn btn-primary" ID="btnSeleccion" CommandArgument='<%# Eval("Id") %>' Onclick="btnSeleccion_Click" runat="server" Text="Quiero este!" />
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

</asp:Content>
