using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebApplication5
{
    /// <summary>
    /// Descrição resumida de WebService2
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que esse serviço da web seja chamado a partir do script, usando ASP.NET AJAX, remova os comentários da linha a seguir. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService2 : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            String connectionString = "Data Source=DESKTOP-EVUEH0U;Initial Catalog=LojaCarro;Integrated Security=True";
            Console.WriteLine(connectionString);
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT TOP 10 * FROM Carro"))
                {
                    cmd.Connection = connection;
                    DataSet ds = new DataSet();
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        sda.Fill(ds, "Carro");
                    }
                    return ds.GetXml();
                }
            }

        }
    }
}
