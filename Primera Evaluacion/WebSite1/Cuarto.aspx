<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cuarto.aspx.cs" Inherits="Cuarto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:AccessDataSource ID="selCiudades" runat="server" DataSourceMode="DataReader" SelectCommand="select * from Locals" DataFile="~/App_Data/escuela_empresa.mdb"/> 
            <asp:DropDownList ID="desCiudades" runat="server" 
                DataSourceID="selCiudades" 
                DataValueField="cod_local" 
                DataTextField="nom_local" AutoPostBack="true"/>
            <asp:AccessDataSource ID="selAlumnos" runat="server"  SelectCommand="select * from alunos" FilterExpression="cod_cidade='{0}'" DataFile="~/App_Data/escuela_empresa.mdb"> 
                <FilterParameters>
                    <asp:ControlParameter ControlID="desCiudades"/>
                </FilterParameters>
             </asp:AccessDataSource>  
             <asp:DropDownList ID="desAlumnos" runat="server" 
                DataSourceID="selAlumnos" 
                DataValueField="cod_aluno" 
                DataTextField="Nome"/> 
        </div>
    </form>
</body>
</html>
