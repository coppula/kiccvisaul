using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            kiccEntitiesBanco ef = new kiccEntitiesBanco();
            decimal id = Convert.ToInt32(Session["idadministrador"]);
            tb_administrador nivel = ef.tb_administrador.Where(busca => busca.id_administrador == id).FirstOrDefault();



            

            if (Session["idadministrador"] == null)
            {
                Response.Redirect("login.aspx");
                }

            else
            {
                if(nivel.ds_nivel_de_acesso=="2")
                 Response.Redirect("login.aspx");
            }

                }
            

        }

        
    }
