<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/M1.master" AutoEventWireup="true" CodeFile="MailUs.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="page-header">
		<h1>
			Home
			<small>
				<i class="ace-icon fa fa-angle-double-right"></i>
				Mail Us
			</small>
		</h1>
	</div><!-- /.page-header -->
                       
    <div class="clearfix form-actions">
        <div class="table-responsive">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered table-hover" DataKeyNames="musid"
                DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="musid" HeaderText="musid" InsertVisible="False" 
                        ReadOnly="True" SortExpression="musid" />
                    <asp:BoundField DataField="fullname" HeaderText="fullname" 
                        SortExpression="fullname" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="contactno" HeaderText="contactno" 
                        SortExpression="contactno" />
                    <asp:BoundField DataField="message" HeaderText="message" 
                        SortExpression="message" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [mailus]"></asp:SqlDataSource>

            
        </div>
        </div>




</asp:Content>

