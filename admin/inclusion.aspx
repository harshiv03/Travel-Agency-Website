<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/M1.master" AutoEventWireup="true" CodeFile="inclusion.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="page-header">
							<h1>
								Home
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									INCLUSION
								</small>
							</h1>
						</div><!-- /.page-header -->



                                    <div class="form-group">
                                    	<div class="space-24"></div>

									<h3 class="header smaller lighter blue">
										TOUR INCLUSION
										<%--<small>All Checkboxes, Radios and Switch Buttons Are Pure CSS</small>--%>
									</h3>
                                                
									<%--	<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Select Tour Type </label>--%>

										
									</div>

                                    <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                    <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                    <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Place Name </label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1" placeholder="Username" class="col-xs-10 col-sm-5" />--%>
                                        <%--    <asp:TextBox ID="txtplacename" runat="server" placeholder="Placename" class="col-xs-10 col-sm-5"></asp:TextBox>--%>
                                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                                DataSourceID="SqlDataSource1" DataTextField="placename" DataValueField="tdid">
                                            </asp:DropDownList>
										    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT * FROM [tourdetails]"></asp:SqlDataSource>
										</div>
                                        <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>

									
                                    

                                     


                                         <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                    <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Inclusion </label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1" placeholder="Username" class="col-xs-10 col-sm-5" />--%>
                                            <asp:TextBox ID="txtinclusion" runat="server" placeholder="Inclusion" 
                                                class="col-xs-10 col-sm-5" TextMode="MultiLine"></asp:TextBox>
										</div>
                                        <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                        <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                        

                                    <div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
                                            <%--<asp:Button ID="btninsert" runat="server" Text="Insert" class="btn btn-info" 
                                                onclick="btninsert_Click" />--%>
											<%--<button class="btn btn-info" type="button">
												<i class="ace-icon fa fa-check bigger-110"></i>
												Insert
											</button>--%>
                                            <asp:Button ID="btninsert" runat="server" Text="Insert" class="btn btn-info" 
                                                onclick="btninsert_Click1"  />
											
										</div>
									</div>

                                      <div class="clearfix form-actions">
                                       <div class="table-responsive">
                                           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                               DataKeyNames="iid" DataSourceID="SqlDataSource2" CssClass="table table-striped table-bordered table-hover">
                                               <Columns>
                                                   <asp:BoundField DataField="iid" HeaderText="iid" InsertVisible="False" 
                                                       ReadOnly="True" SortExpression="iid" />
                                                   <asp:BoundField DataField="tdid" HeaderText="tdid" SortExpression="tdid" />
                                                   <asp:BoundField DataField="inclusion" HeaderText="inclusion" 
                                                       SortExpression="inclusion" />
                                                   <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                                                   <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                                               </Columns>
                                           </asp:GridView>

                                           <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                               ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                               SelectCommand="SELECT * FROM [inclusion]" 
                                               DeleteCommand="DELETE FROM touritinerary WHERE (tiid = @tiid)" 
                                               UpdateCommand="UPDATE touritinerary SET tdid = @tdid, day = @day, description = @description WHERE (tiid = @tiid)">
                                               <DeleteParameters>
                                                   <asp:Parameter Name="tiid" />
                                               </DeleteParameters>
                                               <UpdateParameters>
                                                   <asp:Parameter Name="tdid" />
                                                   <asp:Parameter Name="day" />
                                                   <asp:Parameter Name="description" />
                                                   <asp:Parameter Name="tiid" />
                                               </UpdateParameters>
                                           </asp:SqlDataSource>

                                       </div>
                                       </div>


</asp:Content>

