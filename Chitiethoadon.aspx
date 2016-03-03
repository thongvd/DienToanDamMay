<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Chitiethoadon.aspx.cs" Inherits="Chitiethoadon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource1" Width="100%">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="Tên Hóa Đơn" ReadOnly="True" 
                SortExpression="id" />
            <asp:BoundField DataField="MaHD" HeaderText="Mã Hóa Đơn" 
                SortExpression="MaHD" />
            <asp:BoundField DataField="MaSP" HeaderText="Mã Sản Phẩm" 
                SortExpression="MaSP" />
            <asp:BoundField DataField="SoLuong" HeaderText="Số Lượng" 
                SortExpression="SoLuong" />
            <asp:CommandField HeaderText="Quản Lý" ShowDeleteButton="True" 
                ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QLBanHangConnectionString %>" 
        DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [ChiTietHoaDon] ([id], [MaHD], [MaSP], [SoLuong]) VALUES (@id, @MaHD, @MaSP, @SoLuong)" 
        SelectCommand="SELECT * FROM [ChiTietHoaDon]" 
        UpdateCommand="UPDATE [ChiTietHoaDon] SET [MaHD] = @MaHD, [MaSP] = @MaSP, [SoLuong] = @SoLuong WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="MaHD" Type="String" />
            <asp:Parameter Name="MaSP" Type="String" />
            <asp:Parameter Name="SoLuong" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MaHD" Type="String" />
            <asp:Parameter Name="MaSP" Type="String" />
            <asp:Parameter Name="SoLuong" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" 
        DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            id:
            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
            <br />
            MaHD:
            <asp:TextBox ID="MaHDTextBox" runat="server" Text='<%# Bind("MaHD") %>' />
            <br />
            MaSP:
            <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
            <br />
            SoLuong:
            <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
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
            id:
            <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
            <br />
            MaHD:
            <asp:TextBox ID="MaHDTextBox" runat="server" Text='<%# Bind("MaHD") %>' />
            <br />
            MaSP:
            <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
            <br />
            SoLuong:
            <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            id:
            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
            <br />
            MaHD:
            <asp:Label ID="MaHDLabel" runat="server" Text='<%# Bind("MaHD") %>' />
            <br />
            MaSP:
            <asp:Label ID="MaSPLabel" runat="server" Text='<%# Bind("MaSP") %>' />
            <br />
            SoLuong:
            <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Bind("SoLuong") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
</asp:Content>

