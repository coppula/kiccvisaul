<%@ Page Title="Editar Produto " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Projeto.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div>
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id_produto" DataSourceID="EntityDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="nm_produto" HeaderText="Nome" SortExpression="nm_produto" />
                <asp:BoundField DataField="ds_produto" HeaderText="Descrição" SortExpression="ds_produto" />
                <asp:BoundField DataField="nm_marca" HeaderText="Marca" SortExpression="nm_marca" />
                <asp:BoundField DataField="vl_preco" HeaderText="Preço" SortExpression="vl_preco" />
                <asp:BoundField DataField="vl_preco_promocional" HeaderText="Promoção" SortExpression="vl_preco_promocional" />
                <asp:BoundField DataField="qt_produto" HeaderText="Quantidade" SortExpression="qt_produto" />
                <asp:BoundField DataField="ds_peso" HeaderText="Peso" SortExpression="ds_peso" />
                <asp:BoundField DataField="ds_ativo" HeaderText="Ativo(1s/2n)" SortExpression="ds_ativo" />
                <asp:BoundField DataField="dt_validade" HeaderText="Validade" SortExpression="dt_validade" />
                <asp:BoundField DataField="id_categoria" HeaderText="Categoria" SortExpression="id_categoria" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        

        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=kiccEntitiesProjeto" DefaultContainerName="kiccEntitiesProjeto" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="tb_produto" EntityTypeFilter="tb_produto">
        </asp:EntityDataSource>
        

    </div>
    </asp:Content>
