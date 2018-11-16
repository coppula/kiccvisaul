using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["idadministrador"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String nome = txtNome.Text;
            String descr = txtDescr.Text;
            String marca = TxtMarca.Text;
            Decimal valor =Decimal.Parse(txtValor.Text);
            int  qtd = int.Parse(txtQuant.Text);
            Decimal peso = Decimal.Parse(txtPeso.Text);
            kiccEntitiesBanco ef = new kiccEntitiesBanco();
            tb_produto produto = ef.tb_produto.Create();

            produto.nm_produto = nome;
            produto.ds_produto = descr;
            produto.nm_marca = marca;
            produto.vl_preco = valor;
            produto.qt_produto = qtd;
            produto.ds_peso = peso;
            produto.id_categoria = 2;


            ef.tb_produto.Add(produto);
            ef.SaveChanges();
            

            
            var mensagem = string.Empty;
            if (this.img.HasFile && this.imgDois.HasFile && this.imgTres.HasFile)
               
            {
                int id = produto.id_produto;
                string url = HttpContext.Current.Request.Url.Authority;
                this.img.SaveAs(Server.MapPath("imagens/" + id+"-"+1+".png"));
                this.imgDois.SaveAs(Server.MapPath("imagens/" + id + "-" + 2 + ".png"));
                this.imgTres.SaveAs(Server.MapPath("imagens/" + id + "-" + 3 + ".png"));
                mensagem = "Imagem gravada com sucesso!";

                produto.image1 = ("http://"+url+"/imagens/" + id + "-" + 1 + ".png");
                produto.image2 = ("http://" + url + "/imagens/" + id + "-" + 2+ ".png");
                produto.image3 = ("http://" + url + "/imagens/" + id + "-" + 3 + ".png");

                

                
                
                ef.SaveChanges();
            }
            else
            {
                mensagem = "Selecione uma imagem!";

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Mensagem", "alert(' " + mensagem + "')", true);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }

       
    }
    
}