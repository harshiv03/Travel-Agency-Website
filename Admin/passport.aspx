<%@ Page 
    Title="" 
    Language="C#" 
    MasterPageFile="~/Admin/M1.master" 
    AutoEventWireup="true" 
    CodeFile="passport.aspx.cs" 
    Inherits="Admin_Default2" 
%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<div class="page-header">
							<h1>
								Home
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									PASSPORT
								</small>
							</h1>
						</div><!-- /.page-header -->



                                    <div class="form-group">
                                    	<div class="space-24"></div>

									<h3 class="header smaller lighter blue">
										PASSPORT
										<%--<small>All Checkboxes, Radios and Switch Buttons Are Pure CSS</small>--%>
									</h3>

                                    <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> No </label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtno" runat="server" placeholder="No" 
                                                class="col-xs-10 col-sm-5"></asp:TextBox>
                                    </div>
                                </div>
                                 <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                 <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>

                                 <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Details </label>

										<div class="col-sm-9">
                                            <asp:TextBox ID="txtdetails" runat="server"  placeholder="Details" 
                                                class="col-xs-10 col-sm-5" TextMode="MultiLine" ></asp:TextBox>
										</div>
                                 <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                 <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                 <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                 

                                     <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Required For </label>

										<div class="col-sm-9">

                                            <asp:TextBox ID="txtreqfor" runat="server" placeholder="Requiredfor" class="col-xs-10 col-sm-5"></asp:TextBox>
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
                                              DataKeyNames="pid" DataSourceID="SqlDataSource1" CssClass="table table-striped table-bordered table-hover">
                                              <Columns>
                                                  <asp:BoundField DataField="pid" HeaderText="pid" InsertVisible="False" 
                                                      ReadOnly="True" SortExpression="pid" />
                                                  <asp:BoundField DataField="no" HeaderText="no" SortExpression="no" />
                                                  <asp:BoundField DataField="details" HeaderText="details" 
                                                      SortExpression="details" />
                                                  <asp:BoundField DataField="requiredfor" HeaderText="requiredfor" 
                                                      SortExpression="requiredfor" />
                                                  <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                                                  <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                                              </Columns>
                                          </asp:GridView>
                                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                              SelectCommand="SELECT * FROM [passport]" 
                                              DeleteCommand="DELETE FROM passport WHERE (pid = @pid)" 
                                              UpdateCommand="UPDATE passport SET no = @no, details = @details, requiredfor = @requiredfor WHERE (pid = @pid)">
                                              <DeleteParameters>
                                                  <asp:Parameter Name="pid" />
                                              </DeleteParameters>
                                              <UpdateParameters>
                                                  <asp:Parameter Name="no" />
                                                  <asp:Parameter Name="details" />
                                                  <asp:Parameter Name="requiredfor" />
                                                  <asp:Parameter Name="pid" />
                                              </UpdateParameters>
                                          </asp:SqlDataSource>
                                      </div>
                                    </div>
                                
</asp:Content>

