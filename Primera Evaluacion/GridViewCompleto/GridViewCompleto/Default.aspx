<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GridViewCompleto._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <asp:Button ID="BotonCargar" runat="server" Text="Mostrar Datos" />
        <br/>
        <asp:GridView ID="GVEmpleados" runat="server" DataSourceID="">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:Label ID="LblMensaje" runat="server" Text=""></asp:Label>
        <br/>
        <asp:Button ID="BotonActualizar" runat="server" Text="Actualizar Datos" />
       <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:DBCon %>" 
             DeleteCommand="DELETE FROM [Empleado] WHERE [idEmpleado] = @idEmpleado" 
             InsertCommand="INSERT INTO [Empleado] ([idEmpresa], [NombreEmpleado], [DNI], [Email], [Telefono], [Localidad], [Direccion], [FAlta]) VALUES (@idEmpresa, @NombreEmpleado, @DNI, @Email, @Telefono, @Localidad, @Direccion, @FAlta)" 
             SelectCommand="SELECT * FROM [Empleado]" 
             UpdateCommand="UPDATE [Empleado] SET [idEmpresa] = @idEmpresa, [NombreEmpleado] = @NombreEmpleado, [DNI] = @DNI, [Email] = @Email, [Telefono] = @Telefono, [Localidad] = @Localidad, [Direccion] = @Direccion, [FAlta] = @FAlta WHERE [idEmpleado] = @idEmpleado">
            <DeleteParameters>
                <asp:Parameter Name="idEmpleado" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="idEmpresa" Type="Int32" />
                <asp:Parameter Name="NombreEmpleado" Type="String" />
                <asp:Parameter Name="DNI" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Telefono" Type="Int32" />
                <asp:Parameter Name="Localidad" Type="String" />
                <asp:Parameter Name="Direccion" Type="String" />
                <asp:Parameter DbType="Date" Name="FAlta" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="idEmpresa" Type="Int32" />
                <asp:Parameter Name="NombreEmpleado" Type="String" />
                <asp:Parameter Name="DNI" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Telefono" Type="Int32" />
                <asp:Parameter Name="Localidad" Type="String" />
                <asp:Parameter Name="Direccion" Type="String" />
                <asp:Parameter DbType="Date" Name="FAlta" />
                <asp:Parameter Name="idEmpleado" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>--%>
    </div>
</asp:Content>
