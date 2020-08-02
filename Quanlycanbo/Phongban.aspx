<%@ Page Title="" Language="C#" MasterPageFile="~/Magic.Master" AutoEventWireup="true" CodeBehind="Phongban.aspx.cs" Inherits="Quanlycanbo.Phongban" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<p> Bảng danh sách Phòng ban </p>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="phongbanID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowSorting="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="phongbanID" HeaderText="phongbanID" ReadOnly="True" SortExpression="phongbanID" />
            <asp:BoundField DataField="tenphongban" HeaderText="tenphongban" SortExpression="tenphongban" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:quanlicanboConnectionString1 %>" DeleteCommand="DELETE FROM [phongban] WHERE [phongbanID] = @phongbanID" InsertCommand="INSERT INTO [phongban] ([phongbanID], [tenphongban]) VALUES (@phongbanID, @tenphongban)" ProviderName="<%$ ConnectionStrings:quanlicanboConnectionString1.ProviderName %>" SelectCommand="SELECT [phongbanID], [tenphongban] FROM [phongban]" UpdateCommand="UPDATE [phongban] SET [tenphongban] = @tenphongban WHERE [phongbanID] = @phongbanID">
        <DeleteParameters>
            <asp:Parameter Name="phongbanID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="phongbanID" Type="String" />
            <asp:Parameter Name="tenphongban" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="tenphongban" Type="String" />
            <asp:Parameter Name="phongbanID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
