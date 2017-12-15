using Newtonsoft.Json;
using System.IO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign04
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string path = @"C:\Users\Chanp\Source\repos\Comp229-Assign04\Comp229-Assign04\Assign04.json";
            string data = File.ReadAllText(path);
            var collection = JsonConvert.DeserializeObject<List<Assign04>>(data);
            GridView1.DataSource = collection;
            GridView1.DataBind();

            

        }
    }
}