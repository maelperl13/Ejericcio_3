<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="Ejericcio_3._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <center>
        <h1>REGISTRAR USUARIO</h1>
        <p class="lead" style="text-decoration: underline"><strong>Campos </strong> </p>
        <p class="lead">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Cedula" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="286px" BorderStyle="Double">
                <Fields>
                    <asp:BoundField DataField="Cedula" HeaderText="Cedula" ReadOnly="True" SortExpression="Cedula" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                    <asp:BoundField DataField="Nacionalidad" HeaderText="Nacionalidad" SortExpression="Nacionalidad" />
                    <asp:BoundField DataField="Estado_civil" HeaderText="Estado_civil" SortExpression="Estado_civil" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
                    <asp:BoundField DataField="Programa" HeaderText="Programa" SortExpression="Programa" />
                    <asp:BoundField DataField="Semestre" HeaderText="Semestre" SortExpression="Semestre" />
                    <asp:BoundField DataField="Centro" HeaderText="Centro" SortExpression="Centro" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Usuario] WHERE [Cedula] = @original_Cedula AND (([Nombre] = @original_Nombre) OR ([Nombre] IS NULL AND @original_Nombre IS NULL)) AND (([Apellido] = @original_Apellido) OR ([Apellido] IS NULL AND @original_Apellido IS NULL)) AND (([Nacionalidad] = @original_Nacionalidad) OR ([Nacionalidad] IS NULL AND @original_Nacionalidad IS NULL)) AND (([Estado_civil] = @original_Estado_civil) OR ([Estado_civil] IS NULL AND @original_Estado_civil IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Edad] = @original_Edad) OR ([Edad] IS NULL AND @original_Edad IS NULL)) AND (([Programa] = @original_Programa) OR ([Programa] IS NULL AND @original_Programa IS NULL)) AND (([Semestre] = @original_Semestre) OR ([Semestre] IS NULL AND @original_Semestre IS NULL)) AND (([Centro] = @original_Centro) OR ([Centro] IS NULL AND @original_Centro IS NULL))" InsertCommand="INSERT INTO [Usuario] ([Cedula], [Nombre], [Apellido], [Nacionalidad], [Estado_civil], [Email], [Edad], [Programa], [Semestre], [Centro]) VALUES (@Cedula, @Nombre, @Apellido, @Nacionalidad, @Estado_civil, @Email, @Edad, @Programa, @Semestre, @Centro)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Usuario]" UpdateCommand="UPDATE [Usuario] SET [Nombre] = @Nombre, [Apellido] = @Apellido, [Nacionalidad] = @Nacionalidad, [Estado_civil] = @Estado_civil, [Email] = @Email, [Edad] = @Edad, [Programa] = @Programa, [Semestre] = @Semestre, [Centro] = @Centro WHERE [Cedula] = @original_Cedula AND (([Nombre] = @original_Nombre) OR ([Nombre] IS NULL AND @original_Nombre IS NULL)) AND (([Apellido] = @original_Apellido) OR ([Apellido] IS NULL AND @original_Apellido IS NULL)) AND (([Nacionalidad] = @original_Nacionalidad) OR ([Nacionalidad] IS NULL AND @original_Nacionalidad IS NULL)) AND (([Estado_civil] = @original_Estado_civil) OR ([Estado_civil] IS NULL AND @original_Estado_civil IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Edad] = @original_Edad) OR ([Edad] IS NULL AND @original_Edad IS NULL)) AND (([Programa] = @original_Programa) OR ([Programa] IS NULL AND @original_Programa IS NULL)) AND (([Semestre] = @original_Semestre) OR ([Semestre] IS NULL AND @original_Semestre IS NULL)) AND (([Centro] = @original_Centro) OR ([Centro] IS NULL AND @original_Centro IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Cedula" Type="Int32" />
                    <asp:Parameter Name="original_Nombre" Type="String" />
                    <asp:Parameter Name="original_Apellido" Type="String" />
                    <asp:Parameter Name="original_Nacionalidad" Type="String" />
                    <asp:Parameter Name="original_Estado_civil" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Edad" Type="Int32" />
                    <asp:Parameter Name="original_Programa" Type="String" />
                    <asp:Parameter Name="original_Semestre" Type="Int32" />
                    <asp:Parameter Name="original_Centro" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Cedula" Type="Int32" />
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Apellido" Type="String" />
                    <asp:Parameter Name="Nacionalidad" Type="String" />
                    <asp:Parameter Name="Estado_civil" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Edad" Type="Int32" />
                    <asp:Parameter Name="Programa" Type="String" />
                    <asp:Parameter Name="Semestre" Type="Int32" />
                    <asp:Parameter Name="Centro" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Apellido" Type="String" />
                    <asp:Parameter Name="Nacionalidad" Type="String" />
                    <asp:Parameter Name="Estado_civil" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Edad" Type="Int32" />
                    <asp:Parameter Name="Programa" Type="String" />
                    <asp:Parameter Name="Semestre" Type="Int32" />
                    <asp:Parameter Name="Centro" Type="String" />
                    <asp:Parameter Name="original_Cedula" Type="Int32" />
                    <asp:Parameter Name="original_Nombre" Type="String" />
                    <asp:Parameter Name="original_Apellido" Type="String" />
                    <asp:Parameter Name="original_Nacionalidad" Type="String" />
                    <asp:Parameter Name="original_Estado_civil" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Edad" Type="Int32" />
                    <asp:Parameter Name="original_Programa" Type="String" />
                    <asp:Parameter Name="original_Semestre" Type="Int32" />
                    <asp:Parameter Name="original_Centro" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <h1>LISTAR USUARIOS</h1>
        <p class="lead" style="text-decoration: underline"><strong>Campos </strong> </p>
        <p class="lead">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Cedula" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Cedula" HeaderText="Cedula" ReadOnly="True" SortExpression="Cedula" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                    <asp:BoundField DataField="Nacionalidad" HeaderText="Nacionalidad" SortExpression="Nacionalidad" />
                    <asp:BoundField DataField="Estado_civil" HeaderText="Estado_civil" SortExpression="Estado_civil" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
                    <asp:BoundField DataField="Programa" HeaderText="Programa" SortExpression="Programa" />
                    <asp:BoundField DataField="Semestre" HeaderText="Semestre" SortExpression="Semestre" />
                    <asp:BoundField DataField="Centro" HeaderText="Centro" SortExpression="Centro" />
                </Columns>
            </asp:GridView>
         </center>
        </p>
    </div>

</asp:Content>
