using System;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace PDB
{
    public partial class _default : System.Web.UI.Page
    {
        protected string baseUrl = "";

        protected string file = "Select a PDB from the left hand side to view";

        protected string classname = "PDB Viewer";


        protected void Page_Load(object sender, EventArgs e)
        {
            baseUrl =  "http://" + HttpContext.Current.Request.Url.Authority + "/";
            var files = Directory.EnumerateFiles(Server.MapPath("~/txt")).ToList();
            var shortFiles = files.Select(f => f.Replace(Server.MapPath("~/txt") + @"\", ""));
            shortFiles = shortFiles.Select(f => f.Replace(".txt", ""));
            rptFiles.DataSource = shortFiles;
            rptFiles.DataBind();

            var path = Request.PathInfo;
            if (path == "") return;
            litBlurb.Visible = false;
            path = path.Substring(1);
            file = File.ReadAllText(Server.MapPath("~/txt/" + path + ".txt"));
            classname = Regex.Match(file,@"symbols\\(?<Name>[\w.]+).pdb").Groups["Name"].Value;
        }
    }
}