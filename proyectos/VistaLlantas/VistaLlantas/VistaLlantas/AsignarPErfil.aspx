<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AsignarPerfil.aspx.cs" Inherits="VistaLlantas.AsignarPerfil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta http-equiv="Cache-control" content="no-cache" />
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../../../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../../css/font-awesome.min.css" rel="stylesheet" />
    <link href="../../../css/bootstrap-toggle.css" rel="stylesheet" />
    <link href="../../../css/datepicker.css" rel="stylesheet" />
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css" />
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
    <style>
        .right {
            float: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid clearfix">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
                <ContentTemplate>
                    <div>
                        <nav class="navbar navbar-default navbar-fixed-top">
                            <div class="navbar-header">
                                <a class="navbar-brand">GXT4 Modelo</a>
                            </div>
                            <div class="nav navbar-nav navbar-right" style="padding-top: 7.5px; margin-right: 15px;">
                                <asp:Button runat="server" Text="Guardar" CssClass="btn btn-success" />
                                <asp:Button runat="server" CssClass="btn btn-default" Text="Cancelar" />
                            </div>
                        </nav>
                    </div>

                    <asp:Panel ID="Panel1" runat="server">
                        <div class="row">
                            <div class="form-group col-xs-4">
                                <label for="Modelo">Modelo</label>
                                <asp:TextBox runat="server" CssClass="form-control" placeholder="Modelo" ID="txtModelo" name="Modelo" />
                            </div>
                            <div class="form-group col-xs-4">
                                <label for="Ubicacion">ACC</label>
                                <asp:TextBox runat="server" CssClass="form-control" placeholder="ACC" ID="txtAcc" name="Acc" />
                            </div>
                            <div class="form-group col-xs-4">
                                <label for="Selección">Selección</label>
                                <asp:TextBox runat="server" CssClass="form-control" placeholder="Selección" ID="txtSeleccion" name="Selección" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-xs-4">
                                <label for="NP">NP</label>
                                <asp:TextBox runat="server" CssClass="form-control" placeholder="NP" ID="txtNp" name="NP" />
                            </div>
                            <div class="form-group col-xs-4">
                                <label for="Precio Listo">Precio de Lista</label>
                                <asp:TextBox runat="server" CssClass="form-control" placeholder="Precio de Lista" ID="txtPrecioLista" name="Precio Lista" />
                            </div>
                            <div class="form-group col-xs-4">
                                <label for="Precio Neto">Precio Neto</label>
                                <asp:TextBox runat="server" CssClass="form-control" placeholder="Precio Neto" ID="txtPrecioNeto" name="Precio Neto" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-xs-4 right">
                                <label for="Descripción">Descripción</label>
                                <asp:TextBox runat="server" Style="width: 450px; height: 250px;" CssClass="form-control" placeholder="Descripción" ID="txtDescripcion" name="Descripcion" aria-multiline="True" Height="150px" Width="200px" />
                            </div>
                        </div>
                    </asp:Panel>
                    <div class="container-fluid clearfix">
                        <div class="alert alert-info fade out" id="alert_container">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                            <span id="alert_menssage"></span>
                        </div>
                        <asp:GridView ID="gvGxt4" runat="server" AutoGenerateColumns="False"
                            CellPadding="4" ForeColor="#333333"
                            CssClass="table table-bordered table-striped table-responsive" RowHeaderColumn="modelo" ShowHeaderWhenEmpty="True">
                            <AlternatingRowStyle BackColor="White" ForeColor="#333333" />
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="ID" SortExpression="ID" />
                                <asp:BoundField DataField="Perfil" HeaderText="Nombre de Perfil" SortExpression="Perfil" />
                                <asp:TemplateField HeaderText="Ver" SortExpression="ver">
                                    <HeaderStyle Width="15px" />
                                </asp:TemplateField>
                            </Columns>
                            <EditRowStyle BackColor="#999999" BorderStyle="Solid" />
                            <EmptyDataRowStyle BorderStyle="Solid" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                    </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>

