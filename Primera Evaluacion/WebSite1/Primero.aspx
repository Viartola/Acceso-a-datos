<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Primero.aspx.cs" Inherits="Primero" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="deporte" runat="server">
                <asp:ListItem Value="Fútbol" />
                <asp:ListItem Value="Baloncesto" Selected />
                <asp:ListItem Value="Tenis" />

            </asp:DropDownList>
        </div>
    </form>
</body>
</html>
