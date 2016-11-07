<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Septimo.aspx.cs" Inherits="Septimo" %>

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
                <asp:DropDownList ID="desEmpresas" runat="server" 
                    DataSourceID="selEmpresas" 
                    DataValueField="cod_empresa" 
                    DataTextField="Empresa" AutoPostBack="true"/>
            <asp:AccessDataSource ID="selCargo" runat="server"  SelectCommand="select * from Cargos as car , contactos as con where con.cod_cargo=car.cod_cargo" FilterExpression="cod_empresa='{0}'" DataFile="~/App_Data/escuela_empresa.mdb"> 
                <FilterParameters>
                    <asp:ControlParameter ControlID="desEmpresas"/>
                </FilterParameters>
            </asp:AccessDataSource>  
            <asp:GridView ID="gridAlumnos" runat="server" DataSourceID="selCargo" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="desc_cargo" HeaderText="Cargo" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
