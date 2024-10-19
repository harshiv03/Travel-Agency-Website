<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/M1.master" AutoEventWireup="true" CodeFile="ViewBooking.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="page-header">
							<h1>
								View
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									Booking
								</small>
							</h1>
						</div><!-- /.page-header -->
                       


                                     <div class="clearfix form-actions">
                                       <div class="table-responsive">  
                                                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CssClass="table table-striped table-bordered table-hover">
                <Columns>
                    <asp:BoundField DataField="Bookid" HeaderText="Bookid" ReadOnly="True" SortExpression="Bookid"></asp:BoundField>
                    <asp:BoundField DataField="Trid" HeaderText="Trid" SortExpression="Trid"></asp:BoundField>
                    <asp:BoundField DataField="tdid" HeaderText="tdid" SortExpression="tdid"></asp:BoundField>
                    <asp:BoundField DataField="Uid" HeaderText="Uid" SortExpression="Uid"></asp:BoundField>
                    <asp:BoundField DataField="UName" HeaderText="UName" SortExpression="UName"></asp:BoundField>
                    <asp:BoundField DataField="MobNo" HeaderText="MobNo" SortExpression="MobNo"></asp:BoundField>
                    <asp:BoundField DataField="Emailid" HeaderText="Emailid" SortExpression="Emailid"></asp:BoundField>
                    <asp:BoundField DataField="Avdate" HeaderText="Avdate" SortExpression="Avdate"></asp:BoundField>
                    <asp:BoundField DataField="Dpdate" HeaderText="Dpdate" SortExpression="Dpdate"></asp:BoundField>
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price"></asp:BoundField>
                    <asp:BoundField DataField="DateofBook" HeaderText="DateofBook" SortExpression="DateofBook"></asp:BoundField>
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status"></asp:BoundField>
                    
                    <asp:HyperLinkField DataNavigateUrlFields="Bookid" 
                        DataNavigateUrlFormatString="ApproveBook.aspx?bid={0}" HeaderText="Approve" 
                        Text="Approve" />
                    
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Bookid], [Trid], [tdid], [Uid], [UName], [MobNo], [Emailid], [Avdate], [Dpdate], [Price], [DateofBook], [Status] FROM [Book_Tour]"></asp:SqlDataSource>
                                         </div>
                                        

                                     </div>

</asp:Content>

