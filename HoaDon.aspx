<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="HoaDon.aspx.cs" Inherits="HoaDon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="MaHD" DataSourceID="SqlDataSource1" Width="100%">
        <Columns>
            <asp:BoundField DataField="MaHD" HeaderText="Mã Hóa Đơn" ReadOnly="True" 
                SortExpression="MaHD" />
            <asp:BoundField DataField="MaKH" HeaderText="Mã Khách Hàng" 
                SortExpression="MaKH" />
            <asp:BoundField DataField="Ngay" HeaderText="Ngày" SortExpression="Ngay" />
            <asp:CommandField HeaderText="Quản Lý" ShowDeleteButton="True" 
                ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QLBanHangConnectionString %>" 
        DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHD] = @MaHD" 
        InsertCommand="INSERT INTO [HoaDon] ([MaHD], [MaKH], [Ngay]) VALUES (@MaHD, @MaKH, @Ngay)" 
        SelectCommand="SELECT * FROM [HoaDon]" 
        UpdateCommand="UPDATE [HoaDon] SET [MaKH] = @MaKH, [Ngay] = @Ngay WHERE [MaHD] = @MaHD">
        <DeleteParameters>
            <asp:Parameter Name="MaHD" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaHD" Type="String" />
            <asp:Parameter Name="MaKH" Type="String" />
            <asp:Parameter DbType="Date" Name="Ngay" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MaKH" Type="String" />
            <asp:Parameter DbType="Date" Name="Ngay" />
            <asp:Parameter Name="MaHD" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaHD" 
        DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            MaHD:
            <asp:Label ID="MaHDLabel1" runat="server" Text='<%# Eval("MaHD") %>' />
            <br />
            MaKH:
            <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
            <br />
            Ngay:
            <asp:TextBox ID="NgayTextBox" runat="server" Text='<%# Bind("Ngay") %>' />
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
            MaHD:
            <asp:TextBox ID="MaHDTextBox" runat="server" Text='<%# Bind("MaHD") %>' />
            <br />
            MaKH:
            <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
            <br />
            Ngay:
            <asp:TextBox ID="NgayTextBox" runat="server" Text='<%# Bind("Ngay") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            MaHD:
            <asp:Label ID="MaHDLabel" runat="server" Text='<%# Eval("MaHD") %>' />
            <br />
            MaKH:
            <asp:Label ID="MaKHLabel" runat="server" Text='<%# Bind("MaKH") %>' />
            <br />
            Ngay:
            <asp:Label ID="NgayLabel" runat="server" Text='<%# Bind("Ngay") %>' />
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

