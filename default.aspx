<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="PDB._default" %>
<%@ Import Namespace="System.ComponentModel" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <base href="<%=baseUrl %>"/>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title><%=classname %> - pdb.dotnetframework.org</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/shop-item.css" rel="stylesheet">

</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">pdb.dotnetframework.org</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
        
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <div class="col-lg-3">
        <h1 class="my-4"><%=Request.PathInfo %></h1>
        <div class="list-group">
            <asp:Repeater runat="server" id="rptFiles">
                <ItemTemplate>
                    <a href="default.aspx/<%# Container.DataItem %>" class="list-group-item"><%# Container.DataItem %></a>
                </ItemTemplate>
            </asp:Repeater>
          
        </div>
      </div>
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">

        <div class="card mt-4">
         
          <div class="card-body">
            <h3 class="card-title"><%=classname %></h3>
          <asp:Literal runat="server" id="litBlurb">
            <p class="card-text" >Program database (PDB) is a proprietary file format (developed by Microsoft) for storing debugging information about a program (or, commonly, program modules such as a DLL or EXE). PDB files commonly have a .pdb extension. A PDB file is typically created from source files during compilation. It stores a list of all symbols in a module with their addresses and possibly the name of the file and the line on which the symbol was declared. This symbol information is not stored in the module itself, because it takes up a lot of space.</p>
          </asp:Literal>
          </div>
        </div>
        <!-- /.card -->

        <div class="card card-outline-secondary my-4">
          <div class="card-header">
            PDB Viewer for <%=classname %>
          </div>
          
             <table style="overflow: hidden">
                 <tr>
                     <td width="160" valign="top">
                         <script type="text/javascript"><!--
                             google_ad_client = "pub-6435000594396515";
                             /* network.programming-in.net */
                             google_ad_slot = "3902760999";
                             google_ad_width = 160;
                             google_ad_height = 600;
                             //-->
                         </script>
                         <script type="text/javascript"
                                 src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
                         </script>
                     </td>
                     <td>
<div class="card-body">
<pre>
<%=file %>
</pre>
</div>
                     </td>
                 </tr>
                 
             </table>

          
          
        </div>
        <!-- /.card -->

      </div>
      <!-- /.col-lg-9 -->

    </div>

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; <a href="http://www.infiniteLoop.ie">Infinite Loop Development Ltd</a> <%=DateTime.Now.Year %></p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>

