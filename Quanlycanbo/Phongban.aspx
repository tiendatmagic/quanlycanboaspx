<%@ Page Title="" Language="C#" MasterPageFile="~/Magic.Master" AutoEventWireup="true" CodeBehind="Phongban.aspx.cs" Inherits="Quanlycanbo.Phongban" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
    <p> Bảng quản trị danh sách Phòng ban </p>
    <div class="table-responsive">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="phongbanID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowSorting="True" CssClass="table table table-bordered text-black">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="phongbanID" HeaderText="Phòng ban ID" ReadOnly="True" SortExpression="phongbanID" />
            <asp:BoundField DataField="tenphongban" HeaderText="Tên phòng ban" SortExpression="tenphongban" />
        </Columns>
    </asp:GridView>
        </div>

        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" DataSourceID="SqlDataSource1" DefaultMode="Insert" CssClass="table table table-bordered text-black">
            <Fields>
                <asp:CommandField ShowInsertButton="True" ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>

        </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:quanlicanboConnectionString1 %>" DeleteCommand="DELETE FROM [phongban] WHERE [phongbanID] = @phongbanID" InsertCommand="INSERT INTO [phongban] ([phongbanID], [tenphongban]) VALUES (@phongbanID, @tenphongban)" SelectCommand="SELECT [phongbanID], [tenphongban] FROM [phongban]" UpdateCommand="UPDATE [phongban] SET [tenphongban] = @tenphongban WHERE [phongbanID] = @phongbanID">
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
        <a href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$DetailsView1$ctl03','')"><input type="button" value="Insert"></a>
</div>
</asp:Content>
