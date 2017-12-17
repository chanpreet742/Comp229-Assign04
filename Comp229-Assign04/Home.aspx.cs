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
        //Serialization
        protected void btnSerialize_Click(object sender, ErrorEventArgs e)
        {
            List<userdetails> details = new List<userdetails>();
            userdetails user = new userdetails();
            details.Add(new userdetails { userid = 1, username = "Union Worker"});
            details.Add(new userdetails { userid = 2, username = "Dancing Master"});
            details.Add(new userdetails { userid = 3, username = "The Wrath"});
            details.Add(new userdetails { userid = 4, username = "Gutter Friar" });
            details.Add(new userdetails { userid = 5, username = "Longhorn"});
           
            string strserialize = JsonConvert.SerializeObject(details);
            lblserial.Text = strserialize;
        }
        //Desrerialization
        protected void btnDeserialize_Click(object sender, EventArgs e)
        {
            string strmsg = "[{\"userid\":1,\"username\":\"Union Worker\"},{\"userid\":2,\"username\":\"Dancing Master\"},{\"userid\":3,\"username\":\"The Wrath\"},{\"userid\":4,\"username\":\"Gutter Friar\"},{\"userid\":5,\"username\":\"Longhorn\"}]";
            var user = JsonConvert.DeserializeObject<List<userdetails>>(strmsg);
        }
    }
    class userdetails
    {
        public int userid { get; set; }
        public string username { get; set; }
  }
}
