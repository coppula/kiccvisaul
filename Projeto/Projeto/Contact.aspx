<%@ Page Title="Editar Usuario" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Projeto.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
   <div>

       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_cliente" DataSourceID="EntityDataSource1">
           <Columns>
               <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
               <asp:BoundField DataField="cd_cpf" HeaderText="CPF" SortExpression="cd_cpf" />
               <asp:BoundField DataField="nm_cliente" HeaderText="Nome" SortExpression="nm_cliente" />
               <asp:BoundField DataField="dt_nascimento" HeaderText="Nascimentop" SortExpression="dt_nascimento" />
               <asp:BoundField DataField="login" HeaderText="login" SortExpression="login" />
               <asp:BoundField DataField="senha" HeaderText="senha" SortExpression="senha" />
               <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
               <asp:BoundField DataField="nm_celular" HeaderText="Celular" SortExpression="nm_celular" />
               <asp:BoundField DataField="nm_telefone" HeaderText="Telefone" SortExpression="nm_telefone" />
               <asp:BoundField DataField="cartao_de_credito" HeaderText="cartao_de_credito" SortExpression="cartao_de_credito" />
           </Columns>
       </asp:GridView>
       <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=kiccEntitiesProjeto" DefaultContainerName="kiccEntitiesProjeto" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="tb_cliente" EntityTypeFilter="tb_cliente">
       </asp:EntityDataSource>
   </div>
    
</asp:Content>
