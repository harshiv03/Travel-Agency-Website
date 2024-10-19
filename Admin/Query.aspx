<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/M1.master" AutoEventWireup="true" CodeFile="Query.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="page-header">
		<h1>
			Home
			<small>
				<i class="ace-icon fa fa-angle-double-right"></i>
				Query
			</small>
		</h1>
	</div><!-- /.page-header -->
                       
    <div class="clearfix form-actions">
        <div class="table-responsive">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered table-hover" DataKeyNames="id"
                DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                        ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                    <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="mobno" HeaderText="mobno" SortExpression="mobno" />
                    <asp:BoundField DataField="ttype" HeaderText="ttype" SortExpression="ttype" />
                    <asp:BoundField DataField="placename" HeaderText="placename" 
                        SortExpression="placename" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [query]"></asp:SqlDataSource>

            
            
        </div>
        </div>




</asp:Content>

