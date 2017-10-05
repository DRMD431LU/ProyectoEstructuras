<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BusquedaUsuarios.aspx.cs" Inherits="VistaLlantas.BusquedaUsuarios" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta http-equiv="Cache-control" content="no-cache" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../../../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../../css/font-awesome.min.css" rel="stylesheet" />
    <link href="../../../css/bootstrap-toggle.css" rel="stylesheet" />
    <link href="../../../css/datepicker.css" rel="stylesheet" />
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css" />
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid clearfix">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
                <ContentTemplate>
                    <div class="container-fluid clearfix row">
                        <nav class="navbar navbar-default navbar-fixed-top">
                            <div class="navbar-header col-xs-3 pull-left">
                                <a class="navbar-brand">
                                    <h4 style="margin-left: 80px">Buscar Usuario</h4>
                                </a>
                            </div>
                            <div class="col-xs-6" style="padding-top: 7.5px; margin-right: 5px;">
                                <div class="input-group">
                                    <span class="input-group-addon" style="cursor: pointer;"><i class=" fa fa-search"></i></span>
                                    <input type="search" id="txtSearch" class="form-control" placeholder="Buscar Cliente..." />
                                    <span class="input-group-addon" onclick="location.reload(true);" style="cursor: pointer;"><i class="fa fa-refresh"></i></span>
                                </div>
                            </div>
                            <div class="nav navbar-nav navbar-right col-xs-2" style="padding-top: 7.5px; margin-right: 5px;">
                                <asp:Button runat="server" Text="Guardar" CssClass="btn btn-success" />
                                <asp:Button runat="server" CssClass="btn btn-default" Text="Cancelar" />
                            </div>
                        </nav>
                    </div>
                    <div class="container-fluid clearfix">
                        <div class="alert alert-info fade out" id="alert_container">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                            <span id="alert_menssage"></span>
                        </div>
                        <asp:GridView ID="gvAltaClientes" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="True"
                            ForeColor="#333333"
                            CellPading="4"
                            GridLines="None"
                            CssClass="table table-striped table-bordered table-hover table-responsive" AllowSorting="True" DataKeyNames="id">
                            <AlternatingRowStyle BackColor="White" ForeColor="#333333" />
                            <Columns>
                                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                <asp:BoundField DataField="Paterno" HeaderText="Apellido Paterno" SortExpression="A Paterno" />
                                <asp:BoundField DataField="Materno" HeaderText="Apellido Materno" SortExpression="A Materno" />
                                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="id" />
                                <asp:BoundField DataField="Perfil" HeaderText="Perfil" SortExpression="Perfil" />
                                <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                                <asp:TemplateField HeaderText="Ver" HeaderStyle-Width="10">
                                    <ItemTemplate>
                                    </ItemTemplate>
                                    <HeaderStyle Width="10px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Editar" HeaderStyle-Width="10">
                                    <ItemTemplate>
                                    </ItemTemplate>
                                    <HeaderStyle Width="10px" />
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
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
