<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/M1.master" AutoEventWireup="true" CodeFile="visacountry.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">





<div class="page-header">
							<h1>
								Home
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									VISA COUNTRY DETAILS
								</small>
							</h1>
						</div><!-- /.page-header -->



                                    <div class="form-group">
                                    	<div class="space-24"></div>

									<h3 class="header smaller lighter blue">
										TOUR VISA DETAILS
										<%--<small>All Checkboxes, Radios and Switch Buttons Are Pure CSS</small>--%>
									</h3>
                                                
									<%--	<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Select Tour Type </label>--%>

										
									</div>

                                    <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                    <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                    <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Country Name </label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtcountryname" runat="server" class="col-xs-10 col-sm-5" placeholder="Countryname"></asp:TextBox>
                                    </div>
                                     <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                        <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                     <label class="col-sm-3 control-label no-padding-right" for="form-field-1">Country Image </label>

										<div class="col-sm-9">
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
                                        </div>
                                         <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                        <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                   <label class="col-sm-3 control-label no-padding-right" for="form-field-1">Required Days </label>

										<div class="col-sm-9">
                                            <asp:TextBox ID="txtreqdays" runat="server" class="col-xs-10 col-sm-5" placeholder="Required days" ></asp:TextBox>
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
                                               DataKeyNames="vcid" DataSourceID="SqlDataSource1" CssClass="table table-striped table-bordered table-hover">
                                               <Columns>
                                                   <asp:BoundField DataField="vcid" HeaderText="vcid" InsertVisible="False" 
                                                       ReadOnly="True" SortExpression="vcid" />
                                                   <asp:BoundField DataField="country" HeaderText="country" 
                                                       SortExpression="country" />
                                                   <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                                                   <asp:BoundField DataField="days" HeaderText="days" SortExpression="days" />
                                                   <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                                                   <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                                               </Columns>
                                           </asp:GridView>
                                           <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                               ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                               SelectCommand="SELECT * FROM [visacountry]" 
                                               DeleteCommand="DELETE FROM visacountry WHERE (vcid = @vcid)" 
                                               UpdateCommand="UPDATE visacountry SET country = @country, image = @image, days = @days WHERE (vcid = @vcid)">
                                               <DeleteParameters>
                                                   <asp:Parameter Name="vcid" />
                                               </DeleteParameters>
                                               <UpdateParameters>
                                                   <asp:Parameter Name="country" />
                                                   <asp:Parameter Name="image" />
                                                   <asp:Parameter Name="days" />
                                                   <asp:Parameter Name="vcid" />
                                               </UpdateParameters>
                                           </asp:SqlDataSource>
    </div>
    
        </div>
</asp:Content>

