<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FiltroEmpresas.aspx.cs" Inherits="FiltroEmpresas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <div>
            <asp:AccessDataSource ID="selSector" runat="server" DataSourceMode="DataReader" SelectCommand="select * from sectores order by nom_sector" DataFile="~/App_Data/escuela_empresa.mdb"/> 
             <asp:AccessDataSource ID="selEmpresas" runat="server" SelectCommand="select * from empresas order by Empresa"  FilterExpression="Sector='{0}'" DataFile="~/App_Data/escuela_empresa.mdb"> 
                 <FilterParameters>
                    <asp:ControlParameter ControlID="desSector"/>
                </FilterParameters>
            </asp:AccessDataSource>
           <asp:AccessDataSource ID="selAlumnos" runat="server" SelectCommand="select * from Practicas_trabajos as pt, empresas as em, alunos as al where pt.cod_empresa=em.cod_empresa and pt.cod_aluno=al.cod_aluno "   FilterExpression="pt.cod_empresa='{0}'" DataFile="~/App_Data/escuela_empresa.mdb"> 
                 <FilterParameters>
                    <asp:ControlParameter ControlID="desEmpresas"/>
                </FilterParameters>
            </asp:AccessDataSource>   
            <table align="center">
                <tr>
                    <td>Sectores</td>
                    <td>
                        <asp:DropDownList ID="desSector" runat="server"
                            DataSourceID="selSector"
                            DataValueField="cod_sector"
                            DataTextField="nom_sector" AutoPostBack="true" />
                    </td>
                </tr>
                <tr>
                    <td>Empresas</td>
                    <td>
                        <asp:DropDownList ID="desEmpresas" runat="server" 
                            DataSourceID="selEmpresas" 
                            DataValueField="cod_empresa" 
                            DataTextField="Empresa" AutoPostBack="true"/>
                    </td>
                </tr>
                <tr>
                    <asp:GridView ID="Alumnos" runat="server" DataSourceID="selAlumnos" 
                    AlternatingRowStyle-BackColor="Gainsboro" 
                    HorizontalAlign="Center" 
                    AutoGenerateColumns="false">
                        <Columns>
                            <asp:BoundField DataField="Empresa" HeaderText="Empresa" />
                             <asp:BoundField DataField="Nome" HeaderText="Alumno" />
                        </Columns>
                    </asp:GridView>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
