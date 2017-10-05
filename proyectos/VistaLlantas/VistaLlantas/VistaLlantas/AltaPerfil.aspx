<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltaPerfil.aspx.cs" Inherits="VistaLlantas.AltaPerfil" %>

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
                                <a class="navbar-brand">Alta de Perfil</a>
                            </div>
                            <div class="nav navbar-nav navbar-right" style="padding-top: 7.5px; margin-right: 15px;">
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
                    </div>
                    <asp:Panel ID="Panel1" runat="server">
                        <div class="row">
                            <div class="form-group col-xs-4">
                                <label for="Perfil">Nombre del Perfil</label>
                                <asp:TextBox runat="server" CssClass="form-control" placeholder="Ingrese el Nombre del Perfil" ID="txtPerfil" name="Perfil" />
                            </div>
                            <div class="form-group col-xs-4">
                                <label for="ID">ID</label>
                                <asp:TextBox runat="server" CssClass="form-control" placeholder="ID" ID="txtId" name="ID" />
                            </div>
                            <div class="row">
                                <div class="form-group col-xs-3">
                                    <label for="Clientes">
                                        <h3>Clientes</h3>
                                    </label>
                                </div>
                                <div class="form-group col-xs-3">
                                    <label for="Precio Listo">
                                        Precio de Lista
                                <asp:CheckBox data-toggle="toggle" ID="CheckBox1" runat="server" CssClass="toggle"/>

                                    </label>
                                </div>
                                <div class="form-group col-xs-4">
                                    <label class="checkbox-inline">
                                        <input type="checkbox" data-toggle="toggle" data-onstyle="primary" data-on="Sí" data-off="No">
                                        First
                                    </label>

                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-xs-4 right">
                                    <label for="Descripción">Descripción</label>
                                    <asp:TextBox runat="server" Style="width: 450px; height: 250px;" CssClass="form-control" placeholder="Descripción" ID="txtDescripcion" name="Descripcion" aria-multiline="True" Height="150px" Width="200px" />
                                </div>
                            </div>
                    </asp:Panel>


                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
