<%@ Page Title="" Language="C#" MasterPageFile="~/User/AfterLog.master" AutoEventWireup="true" CodeFile="Passport1.aspx.cs" Inherits="User_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="frm1" runat="server">
   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" cellspacing="5" cellpadding="9">
                    <Columns>
                        <asp:BoundField DataField="no" HeaderText="no" SortExpression="no" />
                        <asp:BoundField DataField="details" HeaderText="details" 
                            SortExpression="details" />
                        <asp:BoundField DataField="requiredfor" HeaderText="requiredfor" 
                            SortExpression="requiredfor" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [no], [details], [requiredfor] FROM [passport]">
                </asp:SqlDataSource>
         
        </form>
</asp:Content>

