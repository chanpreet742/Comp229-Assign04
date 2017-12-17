<%@ Page Title="Model" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Model.aspx.cs" Inherits="Comp229_Assign04.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 <link href="Scripts/StyleSheet.css" rel="stylesheet" type="text/css">
    <div>
        <%--SortExpression helps in sorting of columns--%>

        <asp:GridView ID="Model" runat="server" AutoGenerateColumns="False">
            
             <Columns>
                 
                <asp:BoundField DataField="NAME" HeaderText="Name" SortExpression="NAME" ReadOnly="True" />

                <asp:BoundField DataField="FACTION" HeaderText="Faction" SortExpression="FACTION" ReadOnly="True" />

                <asp:BoundField DataField="RANK" HeaderText="Rank" SortExpression="RANK" ReadOnly="True" />

                <asp:BoundField DataField="BASE" HeaderText="Base" SortExpression="BASE" ReadOnly="True" />

                <asp:BoundField DataField="SIZE" HeaderText="Size" SortExpression="SIZE" ReadOnly="True" />

                <asp:BoundField DataField="DEPLOYMENT ZONE" HeaderText="Deployment Zone" SortExpression="DEPLOYMENT ZONE" ReadOnly="True" />
                
                </Columns>

        </asp:GridView>
    </div>
</asp:Content>
