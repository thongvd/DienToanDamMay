<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SanPham.aspx.cs" Inherits="SanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="MaSP" DataSourceID="SqlDataSource1" Width="100%">
    <Columns>
        <asp:BoundField DataField="MaSP" HeaderText="Mã Sản Phẩm" ReadOnly="True" 
            SortExpression="MaSP" />
        <asp:BoundField DataField="Ten" HeaderText="Tên Sản Phẩm" 
            SortExpression="Ten" />
        <asp:BoundField DataField="Gia" HeaderText="Giá Sản Phẩm" 
            SortExpression="Gia" />
        <asp:BoundField DataField="MoTa" HeaderText="Mô Tả Sản Phẩm" 
            SortExpression="MoTa" />
        <asp:BoundField DataField="MaLoaiSP" HeaderText="Mã Loại Sản Phẩm" 
            SortExpression="MaLoaiSP" />
        <asp:CommandField HeaderText="Quản Lý" ShowDeleteButton="True" 
            ShowEditButton="True" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:QLBanHangConnectionString %>" 
    DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @MaSP" 
    InsertCommand="INSERT INTO [SanPham] ([MaSP], [Ten], [Gia], [MoTa], [MaLoaiSP]) VALUES (@MaSP, @Ten, @Gia, @MoTa, @MaLoaiSP)" 
    SelectCommand="SELECT * FROM [SanPham]" 
    UpdateCommand="UPDATE [SanPham] SET [Ten] = @Ten, [Gia] = @Gia, [MoTa] = @MoTa, [MaLoaiSP] = @MaLoaiSP WHERE [MaSP] = @MaSP">
    <DeleteParameters>
        <asp:Parameter Name="MaSP" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="MaSP" Type="String" />
        <asp:Parameter Name="Ten" Type="String" />
        <asp:Parameter Name="Gia" Type="Decimal" />
        <asp:Parameter Name="MoTa" Type="String" />
        <asp:Parameter Name="MaLoaiSP" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Ten" Type="String" />
        <asp:Parameter Name="Gia" Type="Decimal" />
        <asp:Parameter Name="MoTa" Type="String" />
        <asp:Parameter Name="MaLoaiSP" Type="String" />
        <asp:Parameter Name="MaSP" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:FormView ID="FormView1" runat="server" DataKeyNames="MaSP" 
    DataSourceID="SqlDataSource1">
    <EditItemTemplate>
        MaSP:
        <asp:Label ID="MaSPLabel1" runat="server" Text='<%# Eval("MaSP") %>' />
        <br />
        Ten:
        <asp:TextBox ID="TenTextBox" runat="server" Text='<%# Bind("Ten") %>' />
        <br />
        Gia:
        <asp:TextBox ID="GiaTextBox" runat="server" Text='<%# Bind("Gia") %>' />
        <br />
        MoTa:
        <asp:TextBox ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
        <br />
        MaLoaiSP:
        <asp:TextBox ID="MaLoaiSPTextBox" runat="server" 
            Text='<%# Bind("MaLoaiSP") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
            CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <EmptyDataTemplate>
        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
            CommandName="New" Text="New" />
    </EmptyDataTemplate>
    <InsertItemTemplate>
        MaSP:
        <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
        <br />
        Ten:
        <asp:TextBox ID="TenTextBox" runat="server" Text='<%# Bind("Ten") %>' />
        <br />
        Gia:
        <asp:TextBox ID="GiaTextBox" runat="server" Text='<%# Bind("Gia") %>' />
        <br />
        MoTa:
        <asp:TextBox ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
        <br />
        MaLoaiSP:
        <asp:TextBox ID="MaLoaiSPTextBox" runat="server" 
            Text='<%# Bind("MaLoaiSP") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
            CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        MaSP:
        <asp:Label ID="MaSPLabel" runat="server" Text='<%# Eval("MaSP") %>' />
        <br />
        Ten:
        <asp:Label ID="TenLabel" runat="server" Text='<%# Bind("Ten") %>' />
        <br />
        Gia:
        <asp:Label ID="GiaLabel" runat="server" Text='<%# Bind("Gia") %>' />
        <br />
        MoTa:
        <asp:Label ID="MoTaLabel" runat="server" Text='<%# Bind("MoTa") %>' />
        <br />
        MaLoaiSP:
        <asp:Label ID="MaLoaiSPLabel" runat="server" Text='<%# Bind("MaLoaiSP") %>' />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
            CommandName="Edit" Text="Edit" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
            CommandName="Delete" Text="Delete" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
            CommandName="New" Text="New" />
    </ItemTemplate>
</asp:FormView>
<br />
</asp:Content>

