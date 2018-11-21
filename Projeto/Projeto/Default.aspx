<%@ Page Title="Cadastrar Produto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Projeto._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <style>
        .all{
            padding:100px 100px 100px 200px;
             color:black;
            
        }
        .b{
            background-color:aquamarine;
            border: solid 1px aquamarine;
        }
        
        
    </style>
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <script src="Scripts/jquery.mask.min.js"></script>
    <script src="Scripts/dist/jquery.maskMoney.min.js"></script>
    
   
       <script type='text/javascript'>
           $(document).ready(function () {
              $('.dinheiro').maskMoney()
              $('.peso').mask("999.999")
           });

 
    </script>
   
    <div class="form-row all">
        
            <div class="form-group col-md-6">
                <asp:Label ID="lblNome" runat="server" Text="Nome"></asp:Label>

                <asp:TextBox class="form-control" ID="txtNome" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
  ControlToValidate="txtNome"
  ErrorMessage="Preencha esse Campo."
  ForeColor="Red">
</asp:RequiredFieldValidator>
            </div>

            <div class="form-group col-md-6">

                <asp:Label ID="lblDescr" runat="server" Text="Descrição do Produto"></asp:Label>

                <asp:TextBox class="form-control" ID="txtDescr" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
  ControlToValidate="txtDescr"
  ErrorMessage="Preencha esse Campo."
  ForeColor="Red">
</asp:RequiredFieldValidator>
            </div>

            <div class="form-group col-md-6">
                <asp:Label ID="LblMarca" runat="server" Text="Marca do Produto"></asp:Label>

                <asp:TextBox class="form-control" ID="TxtMarca" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"
  ControlToValidate="txtMarca"
  ErrorMessage="Preencha esse Campo."
  ForeColor="Red">
</asp:RequiredFieldValidator>
            </div>
            <div class="form-group col-md-6">
                <asp:Label ID="lblValor" runat="server" Text="Valor do Produto"></asp:Label>

                <asp:TextBox class="dinheiro form-control" ID="txtValor" runat="server" ></asp:TextBox>
            
                <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server"
  ControlToValidate="txtValor"
  ErrorMessage="Preencha esse Campo."
  ForeColor="Red">
           
</asp:RequiredFieldValidator>
            </div>
            <div class="form-group col-md-6">
                <asp:Label ID="lblQuant" runat="server" Text="Quantidade de Produto"></asp:Label>

                <asp:TextBox class="form-control" ID="txtQuant" runat="server" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server"
  ControlToValidate="txtQuant"
  ErrorMessage="Preencha esse Campo."
  ForeColor="Red">
</asp:RequiredFieldValidator>
            </div>
            <div class="form-group col-md-6">
                <asp:Label ID="lblPeso" runat="server" Text="Peso do Produto"></asp:Label>

                <asp:TextBox class="form-control peso" ID="txtPeso" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server"
  ControlToValidate="txtPeso"
  ErrorMessage="Preencha esse Campo."
  ForeColor="Red">
</asp:RequiredFieldValidator>
            </div>
        <div class="form-group col-md-6">
                <asp:Label ID="lblValidade" runat="server" Text="Validade do Produto"></asp:Label>

                <asp:TextBox class="form-control" ID="txtValidade" runat="server" TextMode="Date"></asp:TextBox>
            <asp:RequiredFieldValidator id="RequiredFieldValidator7" runat="server"
  ControlToValidate="txtValidade"
  ErrorMessage="Preencha esse Campo."
  ForeColor="Red">
</asp:RequiredFieldValidator>
            </div>
        <div class="form-group col-md-6">
                <asp:Label ID="lblPromo" runat="server" Text="Valor Promocional" ></asp:Label>

                <asp:TextBox class="dinheiro form-control cpf" ID="txtPromo" runat="server"  ClientIDMode="Static"  ></asp:TextBox>
            <asp:RequiredFieldValidator id="RequiredFieldValidator8" runat="server"
  ControlToValidate="txtPromo"
  ErrorMessage="Preencha esse Campo."
  ForeColor="Red">
</asp:RequiredFieldValidator>
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
        <div class="form-group col-md-6">
                    <asp:DropDownList ID="droplist" runat="server" DataSourceID="EntityDataSource1" DataTextField="nm_categoria" DataValueField="nm_categoria" Width="548px"></asp:DropDownList>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=kiccEntitiesProjeto" DefaultContainerName="kiccEntitiesProjeto" EnableFlattening="False" EntitySetName="tb_categoria">
        </asp:EntityDataSource>
                        </div>
            
        
            
            <asp:Button  ID="Button1" runat="server" Text="Cadastrar Produto" OnClick="Button1_Click" class="b btn btn-primary" />
        
    </div>

    
        
    
</asp:Content>
