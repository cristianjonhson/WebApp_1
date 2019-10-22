<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
            DataKeyNames="CODIGO" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="CODIGO" HeaderText="CODIGO" ReadOnly="True" 
                    SortExpression="CODIGO" />
                <asp:BoundField DataField="NUMPEDIDO" HeaderText="NUMEROPEDIDO" 
                    SortExpression="NUMPEDIDO" />
                <asp:BoundField DataField="FECHAPEDIDO" HeaderText="FECHAPEDIDO" 
                    SortExpression="FECHAPEDIDO" />
                <asp:BoundField DataField="NUMCLIE" HeaderText="NUMEROCLIENTE" 
                    SortExpression="NUMCLIE" />
                <asp:BoundField DataField="REPCLIE" HeaderText="REPCLIE" 
                    SortExpression="REPCLIE" />
                <asp:BoundField DataField="FAB" HeaderText="FAB" SortExpression="FAB" />
                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" 
                    SortExpression="PRODUCTO" />
                <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" 
                    SortExpression="CANTIDAD" />
                <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" 
                    SortExpression="IMPORTE" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ventasConnectionString2 %>" 
            SelectCommand="SELECT * FROM [PEDIDOS]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            CellSpacing="2" DataKeyField="NUMCLIE" DataSourceID="SqlDataSource2" 
            GridLines="Both" RepeatColumns="5" RepeatDirection="Horizontal">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" Font-Italic="False" 
                Font-Overline="False" Font-Strikeout="False" Font-Underline="False" 
                ForeColor="Aqua" />
            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <ItemTemplate>
                NUMCLIE:
                <asp:Label ID="NUMCLIELabel" runat="server" Text='<%# Eval("NUMCLIE") %>' />
                <br />
                NOMBRE:
                <asp:Label ID="NOMBRELabel" runat="server" Text='<%# Eval("NOMBRE") %>' />
                <br />
                REPCLIE:
                <asp:Label ID="REPCLIELabel" runat="server" Text='<%# Eval("REPCLIE") %>' />
                <br />
                LIMITECREDITO:
                <asp:Label ID="LIMITECREDITOLabel" runat="server" 
                    Text='<%# Eval("LIMITECREDITO") %>' />
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ventasConnectionString3 %>" 
            SelectCommand="SELECT * FROM [CLIENTES]"></asp:SqlDataSource>
        <br />
    </div>
    </form>
</body>
</html>
