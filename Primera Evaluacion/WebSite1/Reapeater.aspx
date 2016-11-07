<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reapeater.aspx.cs" Inherits="reaper" %>

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
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="selEmpresas">
                <HeaderTemplate>
                    <table border="1">
                        <tr>
                            <th>Empresa</th>
                            <th>Email</th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                        <tr>
                            <td><%#Eval("Empresa") %></td>
                            <td><%#Eval("E_mail") %></td>
                        </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
