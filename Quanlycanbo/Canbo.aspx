<%@ Page Title="" Language="C#" MasterPageFile="~/Magic.Master" AutoEventWireup="true" CodeBehind="Canbo.aspx.cs" Inherits="Quanlycanbo.Canbo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
    <p> Bảng danh sách Cán bộ</p>
    <div class="table-responsive">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="canboID,phongbanID,chucvuID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowSorting="True" CssClass="table table table-bordered">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="canboID" HeaderText="Cán bộ ID" ReadOnly="True" SortExpression="canboID" />
            <asp:BoundField DataField="phongbanID" HeaderText="Phòng ban ID" ReadOnly="True" SortExpression="phongbanID" />
            <asp:BoundField DataField="chucvuID" HeaderText="Chức vụ ID" ReadOnly="True" SortExpression="chucvuID" />
            <asp:BoundField DataField="hoten" HeaderText="Họ tên" SortExpression="hoten" />
            <asp:BoundField DataField="ngaysinh" HeaderText="Ngày sinh" SortExpression="ngaysinh" />
            <asp:BoundField DataField="gioitinh" HeaderText="Giới tính" SortExpression="gioitinh" />
            <asp:BoundField DataField="hesoluong" HeaderText="Hệ số lương" SortExpression="hesoluong" />
            <asp:BoundField DataField="ladangvien" HeaderText="Là đảng viên" SortExpression="ladangvien" />
            <asp:BoundField DataField="vaocongdoan" HeaderText="Vào công đoàn" SortExpression="vaocongdoan" />
            <asp:BoundField DataField="anh" HeaderText="Ảnh" SortExpression="anh" />
            <asp:BoundField DataField="ghichu" HeaderText="Ghi chú" SortExpression="ghichu" />
        </Columns>
    </asp:GridView>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:quanlicanboConnectionString1 %>" DeleteCommand="DELETE FROM [canbo] WHERE [canboID] = @canboID AND [phongbanID] = @phongbanID AND [chucvuID] = @chucvuID" InsertCommand="INSERT INTO [canbo] ([canboID], [phongbanID], [chucvuID], [hoten], [ngaysinh], [gioitinh], [hesoluong], [ladangvien], [vaocongdoan], [anh], [ghichu]) VALUES (@canboID, @phongbanID, @chucvuID, @hoten, @ngaysinh, @gioitinh, @hesoluong, @ladangvien, @vaocongdoan, @anh, @ghichu)" ProviderName="<%$ ConnectionStrings:quanlicanboConnectionString1.ProviderName %>" SelectCommand="SELECT [canboID], [phongbanID], [chucvuID], [hoten], [ngaysinh], [gioitinh], [hesoluong], [ladangvien], [vaocongdoan], [anh], [ghichu] FROM [canbo]" UpdateCommand="UPDATE [canbo] SET [hoten] = @hoten, [ngaysinh] = @ngaysinh, [gioitinh] = @gioitinh, [hesoluong] = @hesoluong, [ladangvien] = @ladangvien, [vaocongdoan] = @vaocongdoan, [anh] = @anh, [ghichu] = @ghichu WHERE [canboID] = @canboID AND [phongbanID] = @phongbanID AND [chucvuID] = @chucvuID">
        <DeleteParameters>
            <asp:Parameter Name="canboID" Type="String" />
            <asp:Parameter Name="phongbanID" Type="String" />
            <asp:Parameter Name="chucvuID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="canboID" Type="String" />
            <asp:Parameter Name="phongbanID" Type="String" />
            <asp:Parameter Name="chucvuID" Type="String" />
            <asp:Parameter Name="hoten" Type="String" />
            <asp:Parameter Name="ngaysinh" Type="DateTime" />
            <asp:Parameter Name="gioitinh" Type="String" />
            <asp:Parameter Name="hesoluong" Type="Int32" />
            <asp:Parameter Name="ladangvien" Type="String" />
            <asp:Parameter Name="vaocongdoan" Type="String" />
            <asp:Parameter Name="anh" Type="String" />
            <asp:Parameter Name="ghichu" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="hoten" Type="String" />
            <asp:Parameter Name="ngaysinh" Type="DateTime" />
            <asp:Parameter Name="gioitinh" Type="String" />
            <asp:Parameter Name="hesoluong" Type="Int32" />
            <asp:Parameter Name="ladangvien" Type="String" />
            <asp:Parameter Name="vaocongdoan" Type="String" />
            <asp:Parameter Name="anh" Type="String" />
            <asp:Parameter Name="ghichu" Type="String" />
            <asp:Parameter Name="canboID" Type="String" />
            <asp:Parameter Name="phongbanID" Type="String" />
            <asp:Parameter Name="chucvuID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
        </div>
</asp:Content>
