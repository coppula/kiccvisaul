<%@ Page Title="Editar Usuario" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Projeto.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_administrador" DataSourceID="EntityDataSourceUsuario">
        <Columns>
            <asp:BoundField DataField="id_administrador" HeaderText="id_administrador" ReadOnly="True" SortExpression="id_administrador" />
            <asp:BoundField DataField="ds_email" HeaderText="ds_email" SortExpression="ds_email" />
            <asp:BoundField DataField="ds_login" HeaderText="ds_login" SortExpression="ds_login" />
            <asp:BoundField DataField="ds_senha" HeaderText="ds_senha" SortExpression="ds_senha" />
            <asp:BoundField DataField="ds_nivel_de_acesso" HeaderText="ds_nivel_de_acesso" SortExpression="ds_nivel_de_acesso" />
        </Columns>
    </asp:GridView>
    
    <asp:EntityDataSource ID="EntityDataSourceUsuario" runat="server" ConnectionString="name=kiccEntitiesBanco" DefaultContainerName="kiccEntitiesBanco" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="tb_administrador" EntityTypeFilter="tb_administrador">
    </asp:EntityDataSource>
    
</asp:Content>
