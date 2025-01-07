<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Premios.aspx.cs" Inherits="TPWeb_Equipo_A.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div Cssclass="card-group">
        <div Cssclass="card">
            <img src="..." class="card-img-top" alt="...">
            <div Cssclass="card-body">
                <h5 Cssclass="card-title">Mochila Notebook</h5>
                <p Cssclass="card-text">La mejor mochila que vas a tener en tu vida.</p>
                 <asp:Button CssClass="btn btn-primary" ID="btn1"  runat="server" Text="Quiero este!" />
                
            </div>
        </div>
        <div Cssclass="card">
            <img src="..." class="card-img-top" alt="...">
            <div Cssclass="card-body">
                <h5 Cssclass="card-title">Auriculares Gamer</h5>
                <p Cssclass="card-text">Escucha los pasos del enemigo.</p>
                 <asp:Button CssClass="btn btn-primary" ID="btn2"  runat="server" Text="No, este!" />
                
            </div>
        </div>
        <div Cssclass="card">
            <img src="..." class="card-img-top" alt="...">
            <div Cssclass="card-body">
                <h5 Cssclass="card-title">Mouse Gamer</h5>
                <p Cssclass="card-text">Presicion es mi segundo nombre.</p>
                 <asp:Button CssClass="btn btn-primary" ID="btn3"  runat="server" Text="Mejor este!" />
                
            </div>
        </div>
    </div>
    

</asp:Content>
