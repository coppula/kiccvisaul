using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void btnLogar_Click1(object sender, EventArgs e)
        {
            string login = txtLogin.Text;
            string senha = txtSenha.Text;
            kiccEntitiesBanco ef = new kiccEntitiesBanco();
            tb_administrador adm = ef.tb_administrador.Where(busca => busca.ds_login == login && busca.ds_senha == senha).FirstOrDefault();




            if (adm == null)
            {
                lblMsg.Text = "Login ou senha incorretos";
            }

            else
            {
                Session["idadministrador"] = adm.id_administrador;
                Session["login"] = adm.ds_login;
                
                
                Response.Redirect("Default.aspx");


            }

        }
    }
}