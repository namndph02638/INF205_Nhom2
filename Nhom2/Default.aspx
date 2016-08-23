<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="Nhom2._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Chào Mừng Các Bạn Đã Đến Với Salon Ôtô SơnNam</h1>
                
            </hgroup>
            <p>
                Tại Đây Chúng Tôi Sẽ Làm Quý Vị Hài Lòng :D
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
    <div id="qlkh">
        <div class="bang">
            <h5>Khách Hàng</h5>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="MaKH" DataSourceID="KH" AllowPaging="True">
                <Fields>
                    <asp:BoundField DataField="MaKH" HeaderText="MaKH" ReadOnly="True" SortExpression="MaKH"></asp:BoundField>
                    <asp:BoundField DataField="HoTenKH" HeaderText="HoTenKH" SortExpression="HoTenKH"></asp:BoundField>
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                    <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT"></asp:BoundField>
                    <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi"></asp:BoundField>
                    <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource runat="server" ID="KH" ConnectionString='<%$ ConnectionStrings:QuanLyKhachHang3ConnectionString %>' DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [KhachHang] ([MaKH], [HoTenKH], [Email], [SDT], [DiaChi]) VALUES (@MaKH, @HoTenKH, @Email, @SDT, @DiaChi)" SelectCommand="SELECT [MaKH], [HoTenKH], [Email], [SDT], [DiaChi] FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [HoTenKH] = @HoTenKH, [Email] = @Email, [SDT] = @SDT, [DiaChi] = @DiaChi WHERE [MaKH] = @MaKH">
                <DeleteParameters>
                    <asp:Parameter Name="MaKH" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaKH" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="HoTenKH" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="SDT" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="DiaChi" Type="String"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="HoTenKH" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="SDT" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="DiaChi" Type="String"></asp:Parameter>
                    <asp:Parameter Name="MaKH" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <div class="bang">
            <h5>Đơn Hàng</h5>
            <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="MaDH" DataSourceID="DH" AllowPaging="True">
                <Fields>
                    <asp:BoundField DataField="MaDH" HeaderText="MaDH" ReadOnly="True" SortExpression="MaDH"></asp:BoundField>
                    <asp:BoundField DataField="SoLuongDH" HeaderText="SoLuongDH" SortExpression="SoLuongDH"></asp:BoundField>
                    <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH"></asp:BoundField>
                    <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource runat="server" ID="DH" ConnectionString='<%$ ConnectionStrings:QuanLyKhachHang3ConnectionString %>' DeleteCommand="DELETE FROM [DonHang] WHERE [MaDH] = @MaDH" InsertCommand="INSERT INTO [DonHang] ([MaDH], [SoLuongDH], [MaKH]) VALUES (@MaDH, @SoLuongDH, @MaKH)" SelectCommand="SELECT [MaDH], [SoLuongDH], [MaKH] FROM [DonHang]" UpdateCommand="UPDATE [DonHang] SET [SoLuongDH] = @SoLuongDH, [MaKH] = @MaKH WHERE [MaDH] = @MaDH">
                <DeleteParameters>
                    <asp:Parameter Name="MaDH" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaDH" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="SoLuongDH" Type="String"></asp:Parameter>
                    <asp:Parameter Name="MaKH" Type="Int32"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="SoLuongDH" Type="String"></asp:Parameter>
                    <asp:Parameter Name="MaKH" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="MaDH" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <div class="bang1">
            <h5>Chi Tiết Đơn Hàng</h5>
            <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="MaCTDH" DataSourceID="CTDH" AllowPaging="True">
                <Fields>
                    <asp:BoundField DataField="MaCTDH" HeaderText="MaCTDH" ReadOnly="True" SortExpression="MaCTDH"></asp:BoundField>
                    <asp:BoundField DataField="MaDH" HeaderText="MaDH" SortExpression="MaDH"></asp:BoundField>
                    <asp:BoundField DataField="MaSP" HeaderText="MaSP" SortExpression="MaSP"></asp:BoundField>
                    <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong"></asp:BoundField>
                    <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource runat="server" ID="CTDH" ConnectionString='<%$ ConnectionStrings:QuanLyKhachHang3ConnectionString %>' DeleteCommand="DELETE FROM [ChiTietDonHang] WHERE [MaCTDH] = @MaCTDH" InsertCommand="INSERT INTO [ChiTietDonHang] ([MaCTDH], [MaDH], [MaSP], [SoLuong]) VALUES (@MaCTDH, @MaDH, @MaSP, @SoLuong)" SelectCommand="SELECT [MaCTDH], [MaDH], [MaSP], [SoLuong] FROM [ChiTietDonHang]" UpdateCommand="UPDATE [ChiTietDonHang] SET [MaDH] = @MaDH, [MaSP] = @MaSP, [SoLuong] = @SoLuong WHERE [MaCTDH] = @MaCTDH">
                <DeleteParameters>
                    <asp:Parameter Name="MaCTDH" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaCTDH" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="MaDH" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="MaSP" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="SoLuong" Type="Int32"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MaDH" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="MaSP" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="SoLuong" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="MaCTDH" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    <div class="bang1">
        <h5>Sản Phẩm</h5>
        <asp:DetailsView ID="DetailsView4" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="MaSP" DataSourceID="SP" AllowPaging="True">
            <Fields>
                <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP"></asp:BoundField>
                <asp:BoundField DataField="MaLoaiSP" HeaderText="MaLoaiSP" SortExpression="MaLoaiSP"></asp:BoundField>
                <asp:BoundField DataField="DVTinh" HeaderText="DVTinh" SortExpression="DVTinh"></asp:BoundField>
                <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP"></asp:BoundField>
                <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia"></asp:BoundField>
                <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa"></asp:BoundField>
                <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource runat="server" ID="SP" ConnectionString='<%$ ConnectionStrings:QuanLyKhachHang3ConnectionString %>' DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [SanPham] ([MaSP], [MaLoaiSP], [DVTinh], [TenSP], [Gia], [MoTa]) VALUES (@MaSP, @MaLoaiSP, @DVTinh, @TenSP, @Gia, @MoTa)" SelectCommand="SELECT [MaSP], [MaLoaiSP], [DVTinh], [TenSP], [Gia], [MoTa] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [MaLoaiSP] = @MaLoaiSP, [DVTinh] = @DVTinh, [TenSP] = @TenSP, [Gia] = @Gia, [MoTa] = @MoTa WHERE [MaSP] = @MaSP">
            <DeleteParameters>
                <asp:Parameter Name="MaSP" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaSP" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="MaLoaiSP" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="DVTinh" Type="String"></asp:Parameter>
                <asp:Parameter Name="TenSP" Type="String"></asp:Parameter>
                <asp:Parameter Name="Gia" Type="Decimal"></asp:Parameter>
                <asp:Parameter Name="MoTa" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MaLoaiSP" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="DVTinh" Type="String"></asp:Parameter>
                <asp:Parameter Name="TenSP" Type="String"></asp:Parameter>
                <asp:Parameter Name="Gia" Type="Decimal"></asp:Parameter>
                <asp:Parameter Name="MoTa" Type="String"></asp:Parameter>
                <asp:Parameter Name="MaSP" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <div class="bang2">
        <h5>Loại Sản Phẩm</h5>
        <asp:DetailsView ID="DetailsView5" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="MaLoaiSP" DataSourceID="LSP" AllowPaging="True">
            <Fields>
                <asp:BoundField DataField="MaLoaiSP" HeaderText="MaLoaiSP" ReadOnly="True" SortExpression="MaLoaiSP"></asp:BoundField>
                <asp:BoundField DataField="TenLoai" HeaderText="TenLoai" SortExpression="TenLoai"></asp:BoundField>
                <asp:BoundField DataField="MaNhomSP" HeaderText="MaNhomSP" SortExpression="MaNhomSP"></asp:BoundField>
                <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource runat="server" ID="LSP" ConnectionString='<%$ ConnectionStrings:QuanLyKhachHang3ConnectionString %>' DeleteCommand="DELETE FROM [LoaiSanPham] WHERE [MaLoaiSP] = @MaLoaiSP" InsertCommand="INSERT INTO [LoaiSanPham] ([MaLoaiSP], [TenLoai], [MaNhomSP]) VALUES (@MaLoaiSP, @TenLoai, @MaNhomSP)" SelectCommand="SELECT [MaLoaiSP], [TenLoai], [MaNhomSP] FROM [LoaiSanPham]" UpdateCommand="UPDATE [LoaiSanPham] SET [TenLoai] = @TenLoai, [MaNhomSP] = @MaNhomSP WHERE [MaLoaiSP] = @MaLoaiSP">
            <DeleteParameters>
                <asp:Parameter Name="MaLoaiSP" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaLoaiSP" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="TenLoai" Type="String"></asp:Parameter>
                <asp:Parameter Name="MaNhomSP" Type="Int32"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenLoai" Type="String"></asp:Parameter>
                <asp:Parameter Name="MaNhomSP" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="MaLoaiSP" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </div>
</asp:Content>
