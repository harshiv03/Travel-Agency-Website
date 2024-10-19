<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/M1.master" AutoEventWireup="true" CodeFile="tourtype.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	
                        <div class="page-header">
							<h1>
								Home
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									Page
								</small>
							</h1>
						</div><!-- /.page-header -->



                                    <div class="form-group">
                                    	<div class="space-24"></div>

									<h3 class="header smaller lighter blue">
										TOUR TYPES
										<%--<small>All Checkboxes, Radios and Switch Buttons Are Pure CSS</small>--%>
									</h3>
                                                
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Enter Tour Type </label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1" placeholder="Username" class="col-xs-10 col-sm-5" />--%>
                                            <%--<asp:TextBox ID="txttourtype" runat="server" placeholder="Tour type" class="col-xs-10 col-sm-5"></asp:TextBox>--%>
                                            <asp:TextBox ID="txttourtype" runat="server" placeholder="Tour type" class="col-xs-10 col-sm-5"></asp:TextBox>
										</div>
									</div>

                                    <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                    <div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<%--<button class="btn btn-info" type="button">--%>
                                            <asp:Button ID="btninsert" runat="server" Text="Insert" class="btn btn-info" 
                                                onclick="btninsert_Click"/>
												<%--<i class="ace-icon fa fa-check bigger-110"></i>--%>
												<%--Insert--%>
											<%--</button>--%>

											&nbsp; &nbsp; &nbsp;
											<%--<button class="btn" type="reset">
												<i class="ace-icon fa fa-undo bigger-110"></i>
												Reset
											</button>--%>
                                            <asp:Button ID="btndelete" runat="server" Text="Delete" class="btn" 
                                                onclick="btndelete_Click" required="required" />
										</div>
									</div>


                                     <div class="clearfix form-actions">
                                       <div class="table-responsive">  
                                         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                             DataKeyNames="ttid" DataSourceID="SqlDataSource1" CssClass="table table-striped table-bordered table-hover" >
                                             <Columns>
                                                 <asp:BoundField DataField="ttid" HeaderText="ttid" InsertVisible="False" 
                                                     ReadOnly="True" SortExpression="ttid" />
                                                 <asp:BoundField DataField="tourtype" HeaderText="tourtype" 
                                                     SortExpression="tourtype" />
                                                 <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                                                 <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                                             </Columns>
                                         </asp:GridView>
                                         </div>
                                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                             SelectCommand="SELECT * FROM [tourtype]" 
                                             DeleteCommand="DELETE FROM tourtype WHERE (ttid = @ttid)" 
                                             UpdateCommand="UPDATE tourtype SET tourtype = @tourtype WHERE (ttid = @ttid)">
                                             <DeleteParameters>
                                                 <asp:Parameter Name="ttid" />
                                             </DeleteParameters>
                                             <UpdateParameters>
                                                 <asp:Parameter Name="tourtype" />
                                                 <asp:Parameter Name="ttid" />
                                             </UpdateParameters>
                                         </asp:SqlDataSource>

                                     </div>


</asp:Content>

