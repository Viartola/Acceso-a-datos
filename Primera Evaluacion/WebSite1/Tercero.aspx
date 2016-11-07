<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tercero.aspx.cs" Inherits="Tercero" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:AccessDataSource ID="selAlumnos" runat="server" DataSourceMode="DataReader" SelectCommand="select * from Alunos" DataFile="~/App_Data/escuela_empresa.mdb"/> 
            <asp:GridView ID="GridView1" runat="server" DataSourceID="selAlumnos" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="nome" HeaderText="Alumno" />
                    <asp:ImageField DataImageUrlField="foto" DataImageUrlFormatString="Imagenes/{0}" HeaderText="Foto" ControlStyle-Height="100"></asp:ImageField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>