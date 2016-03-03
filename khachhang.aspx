<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="khachhang.aspx.cs" Inherits="khachhang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="MaKH" DataSourceID="SqlDataSource1" Width="100%">
        <Columns>
            <asp:BoundField DataField="MaKH" HeaderText="Mã Khách Hàng" ReadOnly="True" 
                SortExpression="MaKH" />
            <asp:BoundField DataField="Ten" HeaderText="Tên Khách Hàng" 
                SortExpression="Ten" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:CommandField HeaderText="Quản Lý" ShowDeleteButton="True" 
                ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QLBanHangConnectionString %>" 
        DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @MaKH" 
        InsertCommand="INSERT INTO [KhachHang] ([MaKH], [Ten], [email]) VALUES (@MaKH, @Ten, @email)" 
        SelectCommand="SELECT * FROM [KhachHang]" 
        UpdateCommand="UPDATE [KhachHang] SET [Ten] = @Ten, [email] = @email WHERE [MaKH] = @MaKH">
        <DeleteParameters>
            <asp:Parameter Name="MaKH" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaKH" Type="String" />
            <asp:Parameter Name="Ten" Type="String" />
            <asp:Parameter Name="email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Ten" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="MaKH" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaKH" 
        DataSourceID="SqlDataSource1" Width="100%">
        <EditItemTemplate>
            MaKH:
            <asp:Label ID="MaKHLabel1" runat="server" Text='<%# Eval("MaKH") %>' />
            <br />
            Ten:
            <asp:TextBox ID="TenTextBox" runat="server" Text='<%# Bind("Ten") %>' />
            <br />
            email:
            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
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
            MaKH:
            <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
            <br />
            Ten:
            <asp:TextBox ID="TenTextBox" runat="server" Text='<%# Bind("Ten") %>' />
            <br />
            email:
            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            MaKH:
            <asp:Label ID="MaKHLabel" runat="server" Text='<%# Eval("MaKH") %>' />
            <br />
            Ten:
            <asp:Label ID="TenLabel" runat="server" Text='<%# Bind("Ten") %>' />
            <br />
            email:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
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

