<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/M1.master" AutoEventWireup="true" CodeFile="visacountrydetails.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<div class="page-header">
							<h1>
								Home
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									VISA DETAILS
								</small>
							</h1>
						</div><!-- /.page-header -->

                        

                                    <div class="form-group">
                                    	<div class="space-24"></div>

									<h3 class="header smaller lighter blue">
										TOUR VISA COUNTRY DETAILS
										<%--<small>All Checkboxes, Radios and Switch Buttons Are Pure CSS</small>--%>
									</h3>
                                                
									<%--	<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Select Tour Type </label>--%>

										
									</div>

                                    <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                    <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                    <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Country Name </label>
                                    <div class="col-sm-9">
                                        <asp:DropDownList ID="DropDownList1" runat="server" 
                                            DataSourceID="SqlDataSource1" DataTextField="country" DataValueField="vcid">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT * FROM [visacountry]"></asp:SqlDataSource>
                                    </div>
                                     <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                      <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>

                                      <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Details </label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtdetails" runat="server" TextMode="MultiLine"></asp:TextBox>

                                     </div>
                                      <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                      <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>

                                      <div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
                                            <asp:Button ID="btninsert" runat="server" Text="Insert" class="btn btn-info" 
                                                onclick="btninsert_Click"/>
                                        </div>
                                        </div>
                                        <div class="clearfix form-actions">
                                       <div class="table-responsive">
                                           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                               DataKeyNames="vcdid" DataSourceID="SqlDataSource2" CssClass="table table-striped table-bordered table-hover">
                                               <Columns>
                                                   <asp:BoundField DataField="vcdid" HeaderText="vcdid" InsertVisible="False" 
                                                       ReadOnly="True" SortExpression="vcdid" />
                                                   <asp:BoundField DataField="vcid" HeaderText="vcid" SortExpression="vcid" />
                                                   <asp:BoundField DataField="details" HeaderText="details" 
                                                       SortExpression="details" />
                                                   <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                                                   <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                                               </Columns>
                                           </asp:GridView>
                                           <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                               ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                               SelectCommand="SELECT * FROM [visacountrydetails]" 
                                               DeleteCommand="DELETE FROM visacountrydetails WHERE (vcdid = @vcdid)" 
                                               UpdateCommand="UPDATE visacountrydetails SET vcid = @vcid, details = @details WHERE (vcdid = @vcdid)">
                                               <DeleteParameters>
                                                   <asp:Parameter Name="vcdid" />
                                               </DeleteParameters>
                                               <UpdateParameters>
                                                   <asp:Parameter Name="vcid" />
                                                   <asp:Parameter Name="details" />
                                                   <asp:Parameter Name="vcdid" />
                                               </UpdateParameters>
                                           </asp:SqlDataSource>
                                       </div>
                                       </div>


               
</asp:Content>

