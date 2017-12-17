<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Comp229_Assign04._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Scripts/StyleSheet.css" rel="stylesheet" type="text/css">
    <div class="jumbotron">
        <img alt="Game" src="Images/Logo.jpg" style="width: 1000px; height: 260px; text-align: center;" /><br /><%--Sources(NameLogo):https://www.google.ca/search?q=wrath+of+kings+logo&tbm=isch&tbs=rimg:CfwnmP2eqb-QIji-2AoRrnAi4IaRstVYxWJJ5TMBcQjCuxwoHdoFu2O93GILDsoVHsFBoutr8Z5_1xsNLAZK5oCjqOCoSCb7YChGucCLgEaOQ-_1Gu0Ub2KhIJhpGy1VjFYkkRE3d3Mu-UVW8qEgnlMwFxCMK7HBGF5f4_1x1iYCioSCSgd2gW7Y73cEau2ZxuAxsNVKhIJYgsOyhUewUERSnStLYbdOyYqEgmi62vxnn_1GwxG41_1vnKQ8RRSoSCUsBkrmgKOo4EYySyMKipBmG&tbo=u&sa=X&ved=0ahUKEwivjub3yIjYAhUFzoMKHYLgBS4Q9C8IHg&biw=1366&bih=588&dpr=1#imgrc=_CeY_Z6pv5BE4M:--%>
        <p>This is a list of models given below: </p>
    </div>
    
    <asp:Button ID="btnSerialize" runat="server" Text="Serialize" OnClick="btnSerialize_Click" />
    <asp:Button ID="btnDeserialize" runat="server" Text="DeSerialize" OnClick="btnDeserialize_Click" />
    <div>
    SerializedData:<asp:Label ID="lblserial" runat="server"/>
    </div>
    <div>
    DeSerializedData:<asp:Label ID="lbldeserial" runat="server"/>
    </div>
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </asp:Content>


 
