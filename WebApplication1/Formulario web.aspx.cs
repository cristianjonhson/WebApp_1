using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Formulario_web : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGrabar_Click(object sender, EventArgs e)
        {
            lblNumPedido.Text = txtNumPedido.Text;
            lblFecha.Text = CldFecha.SelectedDate.ToShortDateString();
            lblDetallePedido.Text = txtDetalleProd.Text;
            lblCantidad.Text = txtCantidad.Text;
            lblNumeroCliente.Text = DDLNumcliente.SelectedItem.ToString();

            if (rbtnS.Checked) 
            {
                lblOferta.Text = "S";
            }
            if (rbtnN.Checked)
            { lblOferta.Text = "N"; }

            if (chkbxHoras.Checked) {
                lblAvisoEntrega.Text = "24 horas";
            }     
        }       
    }
}