<%@ Page Title="Cadastrar Produto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Projeto._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link href="Content/bootstrap.css" rel="stylesheet" />
    <style>
        .all{
            padding:100px 100px 100px 200px;
             color:black;
            
        }
        .b{
            background-color:#00989B;
        }
        
        
    </style>
   
    <div class="form-row all">
        
            <div class="form-group col-md-6">
                <asp:Label ID="lblNome" runat="server" Text="Nome"></asp:Label>

                <asp:TextBox class="form-control" ID="txtNome" runat="server"></asp:TextBox>

            </div>

            <div class="form-group col-md-6">

                <asp:Label ID="lblDescr" runat="server" Text="Descrição do Produto"></asp:Label>

                <asp:TextBox class="form-control" ID="txtDescr" runat="server"></asp:TextBox>

            </div>

            <div class="form-group col-md-6">
                <asp:Label ID="LblMarca" runat="server" Text="Marca do Produto"></asp:Label>

                <asp:TextBox class="form-control" ID="TxtMarca" runat="server"></asp:TextBox>

            </div>
            <div class="form-group col-md-6">
                <asp:Label ID="lblValor" runat="server" Text="Valor do Produto"></asp:Label>

                <asp:TextBox class="form-control" ID="txtValor" runat="server"></asp:TextBox>

            </div>
            <div class="form-group col-md-6">
                <asp:Label ID="lblQuant" runat="server" Text="Quantidade de Produto"></asp:Label>

                <asp:TextBox class="form-control" ID="txtQuant" runat="server"></asp:TextBox>

            </div>
            <div class="form-group col-md-6">
                <asp:Label ID="lblPeso" runat="server" Text="Peso do Produto"></asp:Label>

                <asp:TextBox class="form-control" ID="txtPeso" runat="server"></asp:TextBox>

            </div>


            
                <div class="form-group col-md-6">
                    <asp:FileUpload ID="img" runat="server" class="form-control-file" AllowMultiple="True" />

                </div>

                <div class="form-group col-md-6">
                    <asp:FileUpload ID="imgDois" runat="server" class="form-control-file" AllowMultiple="True" />

                </div>
                <div class="form-group col-md-6">
                    <asp:FileUpload ID="imgTres" runat="server" class="form-control-file" AllowMultiple="True" />

                </div>
            
        
        
            <asp:Button  ID="Button1" runat="server" Text="Cadastrar Produto" OnClick="Button1_Click" class="b btn btn-primary" />
        
    </div>
   
</asp:Content>
