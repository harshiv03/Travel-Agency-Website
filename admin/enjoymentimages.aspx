<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/M1.master" AutoEventWireup="true" CodeFile="enjoymentimages.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




<div class="page-header">
							<h1>
								Home
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									SEE OUR ENJOYMENT IMAGES
								</small>
							</h1>
						</div><!-- /.page-header -->



                                    <div class="form-group">
                                    	<div class="space-24"></div>

									<h3 class="header smaller lighter blue">
										SEE OUR ENJOYMENT IMAGES
										<%--	<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Select Tour Type </label>--%>
									</h3>
                                                
									<%--	<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Select Tour Type </label>--%>

										
									</div>

                                    <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                    <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                    <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Country/State/City Name </label>
                                    <div class="col-sm-9">
                                        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" 
                                            DataSourceID="SqlDataSource1" DataTextField="enjoymentcscym" 
                                            DataValueField="eid">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT * FROM [enjoymentdetails]"></asp:SqlDataSource>
                                    </div>
                                     <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                      <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>

                                      <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Images </label>
                                    <div class="col-sm-9">
                                        <asp:FileUpload ID="FileUpload1" runat="server" />

                                     </div>
                                      <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                      <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>

                                      <div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
                                            <asp:Button ID="btninsert" runat="server" Text="Insert" class="btn btn-info"/>
                                        </div>
                                        </div>
                                        <div class="clearfix form-actions">
                                       <div class="table-responsive">
                                           <asp:GridView ID="GridView1" runat="server" 
                                               CssClass="table table-striped table-bordered table-hover" 
                                               AutoGenerateColumns="False" DataKeyNames="ediid" DataSourceID="SqlDataSource2">
                                               <Columns>
                                                   <asp:BoundField DataField="ediid" HeaderText="ediid" InsertVisible="False" 
                                                       ReadOnly="True" SortExpression="ediid" />
                                                   <asp:BoundField DataField="eid" HeaderText="eid" SortExpression="eid" />
                                                   <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                                               </Columns>
                                           </asp:GridView>
                                           <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                               ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                               SelectCommand="SELECT * FROM [enjoymentdetailsimage]"></asp:SqlDataSource>
                                       </div>
                                       </div>







</asp:Content>

