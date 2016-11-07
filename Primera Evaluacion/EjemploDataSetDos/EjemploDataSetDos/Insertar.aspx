<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Insertar.aspx.cs" Inherits="EjemploDataSetDos.Insertar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form runat="server" style="text-align:center">
        <h2>Insertar empresa</h2>
        <p>C.I.F.:
            <asp:TextBox ID="txtCIF" runat="server"/>
        </p>
        <p>Nombre Empresa:
            <asp:TextBox ID="txtNombre" runat="server"/>
        </p>
        <p>Localidad:
            <asp:TextBox ID="txtLocalidad" runat="server"/>
        </p>
        <p>Direccion:
            <asp:TextBox ID="txtDireccion" runat="server"/>
        </p>
        <p>Email:
            <asp:TextBox ID="txtEmail" runat="server"/>
        </p>
            <p>Web:
            <asp:TextBox ID="txtWeb" runat="server"/>
        </p>
        <p>Telefono:
            <asp:TextBox ID="txtTelefono" runat="server"/>
        </p>
        <asp:Button ID="BotonInsertar" runat="server" Text="Insertar Empresa" OnClick="BotonInsertar_Click"/>
        <p>
            <asp:Label ID="lblMensaje" runat="server" Text=""/>
        </p>
    </form>
</body>
</html>
