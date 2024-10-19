<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/M1.master" AutoEventWireup="true" CodeFile="enjoymentcsc.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




<div class="page-header">
							<h1>
								Home
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									SEE OUR ENJOYMENT
								</small>
							</h1>
						</div><!-- /.page-header -->



                                    <div class="form-group">
                                    	<div class="space-24"></div>

									<h3 class="header smaller lighter blue">
										SEE OUR ENJOYMENT COUNTRY/STATE/CITY DETAILS & DESCRIPTION
										<%--	<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Select Tour Type </label>--%>
									</h3>
                                                
									<%--	<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Select Tour Type </label>--%>

										
									</div>

                                    <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                    <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                    <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Country/State/City Name </label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtcsc" runat="server" placeholder="Country/State/City-year/month" 
                                            class="col-xs-10 col-sm-5"></asp:TextBox>
                                    </div>
                                     <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                      <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>

                                      <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Description </label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtdesc" runat="server" placeholder="Description" 
                                            class="col-xs-10 col-sm-5" TextMode="MultiLine"></asp:TextBox>

                                     </div>
                                      <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                      <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>

                                      <div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
                                            <asp:Button ID="btninsert" runat="server" Text="Insert" class="btn btn-info" 
                                                onclick="btninsert_Click" />
                                        </div>
                                        </div>
                                        <div class="clearfix form-actions">
                                       <div class="table-responsive">
                                           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                               DataKeyNames="eid" DataSourceID="SqlDataSource1" CssClass="table table-striped table-bordered table-hover">
                                               <Columns>
                                                   <asp:BoundField DataField="eid" HeaderText="eid" InsertVisible="False" 
                                                       ReadOnly="True" SortExpression="eid" />
                                                   <asp:BoundField DataField="enjoymentcscym" HeaderText="enjoymentcscym" 
                                                       SortExpression="enjoymentcscym" />
                                                   <asp:BoundField DataField="description" HeaderText="description" 
                                                       SortExpression="description" />
                                               </Columns>
                                           </asp:GridView>
                                           <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                               ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                               SelectCommand="SELECT * FROM [enjoymentdetails]"></asp:SqlDataSource>
                                       </div>
                                       </div>




</asp:Content>

