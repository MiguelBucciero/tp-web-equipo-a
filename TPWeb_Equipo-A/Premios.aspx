<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Premios.aspx.cs" Inherits="TPWeb_Equipo_A.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .card-img-top {
            width: 100%;
            height: 300px;
            object-fit: cover;
        }
        .card {
            max-width: 360px;
            margin: 20px;
            margin-top: 90px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row justify-content-center">
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
                                <span class="sr-only">Anterior</span>
                            </a>
                            <a class="carousel-control-next" href="#carousel<%# Eval("Id") %>" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Siguiente</span>
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

