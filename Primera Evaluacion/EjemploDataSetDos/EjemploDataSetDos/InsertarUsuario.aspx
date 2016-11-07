<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertarUsuario.aspx.cs" Inherits="EjemploDataSetDos.InsertarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
     <form runat="server" style="text-align:center">
        <h2>Insertar empleado</h2>
        <p>Id Empresa:
            <asp:DropDownList ID="empresa" runat="server"/>
        </p>
        <p>Nombre Empleado:
            <asp:TextBox ID="txtNombre" runat="server"/>
        </p>
        <p>DNI:
            <asp:TextBox ID="txtDNI" runat="server"/>
        </p>
        <p>Email:
            <asp:TextBox ID="txtEmail" runat="server"/>
        </p>
        <p>Telefono:
        <asp:TextBox ID="txtTelefono" runat="server"/>
        </p>
        <p>Localidad:
            <asp:TextBox ID="txtLocalidad" runat="server"/>
        </p>
         <p>Direccion:
            <asp:TextBox ID="txtDireccion" runat="server"/>
        </p>
        <asp:Button ID="BotonInsertar" runat="server" Text="Insertar Empleado" OnClick="BotonInsertar_Click"/>
        <p>
            <asp:Label ID="lblMensaje" runat="server" Text=""/>
        </p>
    </form>
</body>
</html>
