<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="LoaiSanPham.aspx.cs" Inherits="LoaiSanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="MaLoaiSP" DataSourceID="SqlDataSource1" Width="100%">
        <Columns>
            <asp:BoundField DataField="MaLoaiSP" HeaderText="Mã Loại Sản Phẩm" 
                ReadOnly="True" SortExpression="MaLoaiSP" />
            <asp:BoundField DataField="Ten" HeaderText="Tên Loại Sản Phẩm" 
                SortExpression="Ten" />
            <asp:CommandField HeaderText="Quản Lý" ShowDeleteButton="True" 
                ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QLBanHangConnectionString %>" 
        DeleteCommand="DELETE FROM [product_category] WHERE [MaLoaiSP] = @MaLoaiSP" 
        InsertCommand="INSERT INTO [product_category] ([MaLoaiSP], [Ten]) VALUES (@MaLoaiSP, @Ten)" 
        SelectCommand="SELECT * FROM [product_category]" 
        UpdateCommand="UPDATE [product_category] SET [Ten] = @Ten WHERE [MaLoaiSP] = @MaLoaiSP">
        <DeleteParameters>
            <asp:Parameter Name="MaLoaiSP" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaLoaiSP" Type="String" />
            <asp:Parameter Name="Ten" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Ten" Type="String" />
            <asp:Parameter Name="MaLoaiSP" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:FormView ID="FormView2" runat="server" DataKeyNames="MaLoaiSP" 
        DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            MaLoaiSP:
            <asp:Label ID="MaLoaiSPLabel1" runat="server" Text='<%# Eval("MaLoaiSP") %>' />
            <br />
            Ten:
            <asp:TextBox ID="TenTextBox" runat="server" Text='<%# Bind("Ten") %>' />
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
            MaLoaiSP:
            <asp:TextBox ID="MaLoaiSPTextBox" runat="server" 
                Text='<%# Bind("MaLoaiSP") %>' />
            <br />
            Ten:
            <asp:TextBox ID="TenTextBox" runat="server" Text='<%# Bind("Ten") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            MaLoaiSP:
            <asp:Label ID="MaLoaiSPLabel" runat="server" Text='<%# Eval("MaLoaiSP") %>' />
            <br />
            Ten:
            <asp:Label ID="TenLabel" runat="server" Text='<%# Bind("Ten") %>' />
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

