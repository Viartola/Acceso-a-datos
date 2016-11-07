<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditarEmpresa.aspx.cs" Inherits="Editar_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:AccessDataSource ID="selEmpresas" runat="server" DataSourceMode="DataReader" SelectCommand="select * from empresas" DataFile="~/App_Data/escuela_empresa.mdb"/> 
            <asp:AccessDataSource ID="selSector" runat="server" DataSourceMode="DataReader" SelectCommand="select * from sectores order by nom_sector" DataFile="~/App_Data/escuela_empresa.mdb"/> 
            <table align="center">
                <tr>
                    <td colspan="2">
                        <asp:DropDownList ID="desEmpresas" runat="server" 
                            DataSourceID="selEmpresas" 
                            DataValueField="cod_empresa" 
                            DataTextField="Empresa" AutoPostBack="true"/>
                    </td>
                </tr>
                <tr>
                    <td>Direccion</td>
                    <td><asp:TextBox ID="direccion" runat="server"/></td>
                </tr>
                 <tr>
                    <td>Telefono</td>
                    <td> <asp:TextBox ID="telefono" runat="server"/></td>
                </tr>
                 <tr>
                    <td>Email</td>
                    <td><asp:TextBox ID="email" runat="server"/></td>
                </tr>
                 <tr>
                     <td>Sector</td>
                    <td>
                        <asp:DropDownList ID="desSector" runat="server"
                            DataSourceID="selSector"
                            DataValueField="cod_sector"
                            DataTextField="nom_sector" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
