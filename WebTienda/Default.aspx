<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebTienda._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <section id="main-content">
            <section id="wrapper">
                <div class="row">
                    <div class="col-md-12">
                        <section class="panel">
                            <header class="panel-heading">
                                <div class="col-md-8 col-md-offset-4">                                    
                                    <h1>TIENDA</h1>
                                </div>
                            </header>

                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-1 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label ID="lblCantidad" runat="server" Text="Cantidad:"></asp:Label>
                                            <asp:TextBox ID="tbCantidad" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                        </div>
                                    </div>
                                    
                                    <div class="col-md-3 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label ID="lblNombre" runat="server" Text="nombre:"></asp:Label>
                                            <asp:TextBox ID="tbNombre" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                        </div>
                                    </div>
                                    
                                    <div class="col-md-2 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label ID="lblPrecio" runat="server" Text="Precio:"></asp:Label>
                                            <asp:TextBox ID="tbPrecio" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-2 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
                                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control input-sm">
                                                <asp:ListItem Text="Favorito"></asp:ListItem>
                                                <asp:ListItem Text="Carrito"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-8 col-md-offset-2">
                                        <asp:Button ID="btnAgregar" runat="server" Text="Agregar" CssClass="btn btn-primary" OnClick="btnAgregar_Click"/>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </section>
        </section>
    </div>

    <div class="row">
        <div class="col-md-6">
            <h2>Favoritos</h2>
            <asp:GridView ID="gvFavoritos" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="Precio" HeaderText="Precio" />
                </Columns>
            </asp:GridView>
        </div>
        <div class="col-md-6">
            <h2>Carrito</h2>
            <asp:GridView ID="gvCarrito" runat="server"  AutoGenerateColumns="false">
                <Columns>                    
                    <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="Precio" HeaderText="Precio" />
                    <asp:BoundField DataField="Total" HeaderText="Total" />
                </Columns>
            </asp:GridView>
        </div>
    </div>

</asp:Content>
