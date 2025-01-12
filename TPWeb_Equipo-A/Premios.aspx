<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Premios.aspx.cs" Inherits="TPWeb_Equipo_A.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .card-img-top {
            width: 100%;
            height: 300px;
            object-fit:cover;
        }
        .carousel {
            background-color: #424242; 
            border: 3px solid #ff6a00;
        }
        .card {
            max-width: 350px;
            margin: 15px;
            margin-top: 20px;
        }
        .card-body {
            background-color: #424242; 
            border: 3px solid #ff6a00;
            margin-top: -3px;
        }
        .card-title {
            color: #ffffff !important;
            font: bold !important;
            margin-top: 15px !important;
        }
        .card-text {
            color: #ffffff;
            font: bold;
            margin-top: 25px;
        }

        .gradient-text {
            text-align:center;
            font-weight: bold;
            text-transform: uppercase;
            background: linear-gradient(90deg, #ff6a00, #ffd800,#ffffff);
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row justify-content-center">
        <div class="text-center">   
            <h1 class="display-5 fw-bolder mb-5"><span class="gradient-text">Seleccioná el producto !</span></h1>
        </div>
        <asp:Repeater ID="repRepetidor" runat="server">
            <ItemTemplate>
                <div class="col-auto mb-4">
                    <div class="card h-100">
                        <div id="carousel<%# Eval("Id") %>" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <asp:Repeater ID="repImagenes" runat="server" DataSource='<%# Eval("Imagenes") %>'>
                                    <ItemTemplate>
                                        <div class="carousel-item <%# Container.ItemIndex == 0 ? "active" : "" %>">
                                            <img src='<%# Eval("Url") %>' class="card-img-top" alt="...">
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                            <a class="carousel-control-prev" href="#carousel<%# Eval("Id") %>" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only"></span>
                            </a>
                            <a class="carousel-control-next" href="#carousel<%# Eval("Id") %>" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only"></span>
                            </a>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title"><%# Eval("Nombre") %></h5>
                            <p class="card-text"><%# Eval("Descripcion") %></p>
                            <asp:Button CssClass="btn btn-primary" ID="btnSeleccion" CommandArgument='<%# Eval("Id") %>' OnClick="btnSeleccion_Click" runat="server" Text="Quiero este!" />
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>

