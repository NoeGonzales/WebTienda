using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTienda
{
    public partial class _Default : Page
    {
        private static List<Producto> favoritos;
        private static List<Producto> carrito;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (favoritos == null && carrito == null)
                {
                    favoritos = new List<Producto>();
                    carrito = new List<Producto>();
                }
            }            
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Producto nuevo = new Producto();
            nuevo.Nombre = tbNombre.Text;
            nuevo.Cantidad = Int32.Parse(tbCantidad.Text);
            nuevo.Precio = Int32.Parse(tbPrecio.Text);
            nuevo.Total = Int32.Parse(tbCantidad.Text) * Int32.Parse(tbPrecio.Text);

            if (DropDownList1.SelectedValue.Equals("Favorito"))
            {
                favoritos.Add(nuevo);

                gvFavoritos.DataSource = favoritos;
                gvFavoritos.DataBind();
            }
            else
            {
                carrito.Add(nuevo);

                gvCarrito.DataSource = carrito;
                gvCarrito.DataBind();
            }

        }
    }

    public class Producto
    {
        public string Nombre { get; set; }
        public int Cantidad { get; set; }
        public int Precio { get; set; }
        public int Total { get; set; }

        public Producto() { }


    }
}