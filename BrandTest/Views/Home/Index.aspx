<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <p>Type something in the textfield below, press Reverse and see what happens... Exactly what you expect.</p>
        <input type="text" id="input" /><br/>
        <button type="button" id="btn">Reverse</button>
        <div id="output">Output</div>
    </div>
    <script type="text/javascript">
        $("#btn").click(function () {
            if ($('#input').val().length > 1)
            {
                $("#output").load("/Home/Index", { input: $('#input').val() }, function (data, status) {
                })
            }
        });
    </script>

</asp:Content>
