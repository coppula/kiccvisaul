<%@ Page Title="Editar Produto " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Projeto.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lblt" runat="server" Text="Label"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id_produto" DataSourceID="EntityDataSourceProduto">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="id_produto" HeaderText="id_produto" ReadOnly="True" SortExpression="id_produto" />
            <asp:BoundField DataField="nm_produto" HeaderText="nm_produto" SortExpression="nm_produto" />
            <asp:BoundField DataField="ds_produto" HeaderText="ds_produto" SortExpression="ds_produto" />
            <asp:BoundField DataField="nm_marca" HeaderText="nm_marca" SortExpression="nm_marca" />
            <asp:BoundField DataField="vl_preco" HeaderText="vl_preco" SortExpression="vl_preco" />
            <asp:BoundField DataField="qt_produto" HeaderText="qt_produto" SortExpression="qt_produto" />
            <asp:BoundField DataField="ds_peso" HeaderText="ds_peso" SortExpression="ds_peso" />
            <asp:BoundField DataField="ds_ativo" HeaderText="ds_ativo" SortExpression="ds_ativo" />
            <asp:BoundField DataField="image1" HeaderText="image1" SortExpression="image1" />
            <asp:BoundField DataField="image2" HeaderText="image2" SortExpression="image2" />
            <asp:BoundField DataField="image3" HeaderText="image3" SortExpression="image3" />
            <asp:BoundField DataField="id_categoria" HeaderText="id_categoria" SortExpression="id_categoria" />
        </Columns>
    </asp:GridView>
    <asp:EntityDataSource ID="EntityDataSourceProduto" runat="server" ConnectionString="name=kiccEntitiesBanco" DefaultContainerName="kiccEntitiesBanco" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="tb_produto" EntityTypeFilter="tb_produto">
    </asp:EntityDataSource>
    </asp:Content>
