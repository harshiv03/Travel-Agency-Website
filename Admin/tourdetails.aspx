<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/M1.master" AutoEventWireup="true" CodeFile="tourdetails.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="page-header">
							<h1>
								Home
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									TOUR DETAILS
								</small>
							</h1>
						</div><!-- /.page-header -->



                                    <div class="form-group">
                                    	<div class="space-24"></div>

									<h3 class="header smaller lighter blue">
										TOUR DETAILS
										<%--<small>All Checkboxes, Radios and Switch Buttons Are Pure CSS</small>--%>
									</h3>
                                                
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Select Tour Type </label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1" placeholder="Username" class="col-xs-10 col-sm-5" />--%>
                                           <%-- <asp:TextBox ID="txttourtype" runat="server" placeholder="Tour type" class="col-xs-10 col-sm-5"></asp:TextBox>--%>
                                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" 
                                                DataSourceID="SqlDataSource2" DataTextField="tourtype" DataValueField="ttid">
                                            </asp:DropDownList>
										    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT * FROM [tourtype]"></asp:SqlDataSource>
										</div>
									</div>

                                    <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                    <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                    <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Place Name </label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1" placeholder="Username" class="col-xs-10 col-sm-5" />--%>
                                            <asp:TextBox ID="txtplacename" runat="server" placeholder="Placename" class="col-xs-10 col-sm-5"></asp:TextBox>
										</div>
                                        <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>

                                          <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Place Image </label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1" placeholder="Username" class="col-xs-10 col-sm-5" />--%>
                                           <%-- <asp:TextBox ID="txttourtype" runat="server" placeholder="Tour type" class="col-xs-10 col-sm-5"></asp:TextBox>--%>
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
										</div>
									
                                    

                                     <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                       <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                    <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Days </label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1" placeholder="Username" class="col-xs-10 col-sm-5" />--%>
                                            <asp:TextBox ID="txtdays" runat="server" placeholder="Days" class="col-xs-10 col-sm-5"></asp:TextBox>
										</div>
                                        <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>


                                         <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                    <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Description </label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1" placeholder="Username" class="col-xs-10 col-sm-5" />--%>
                                            <asp:TextBox ID="txtdesc" runat="server" placeholder="Description" 
                                                class="col-xs-10 col-sm-5" TextMode="MultiLine"></asp:TextBox>
										</div>
                                        <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                        <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                        <br />
                                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Price  </label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1" placeholder="Username" class="col-xs-10 col-sm-5" />--%>
                                            <asp:TextBox ID="txtprice" runat="server" placeholder="Description" 
                                                class="col-xs-10 col-sm-5" ></asp:TextBox>
										</div>
                                            <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                        <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                    <div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
                                            <asp:Button ID="btninsert" runat="server" Text="Insert" class="btn btn-info" 
                                                onclick="btninsert_Click" />
											<%--<button class="btn btn-info" type="button">
												<i class="ace-icon fa fa-check bigger-110"></i>
												Insert
											</button>--%>

											&nbsp; &nbsp; &nbsp;
											<%--<button class="btn" type="reset">
												<i class="ace-icon fa fa-undo bigger-110"></i>
												Reset
											</button>--%>
                                            <asp:Button ID="btndelete" runat="server" Text="Delete" class="btn" />
										</div>
									</div>


                                     <div class="clearfix form-actions">
                                      <div class="table-responsive">  
                                         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                             DataKeyNames="tdid" DataSourceID="SqlDataSource1" CssClass="table table-striped table-bordered table-hover" >
                                             <Columns>
                                                 <asp:BoundField DataField="tdid" HeaderText="tdid" InsertVisible="False" 
                                                     ReadOnly="True" SortExpression="tdid" />
                                                 <asp:BoundField DataField="ttid" HeaderText="ttid" SortExpression="ttid" />
                                                 <asp:BoundField DataField="placename" HeaderText="placename" 
                                                     SortExpression="placename" />
                                                 <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                                                 <asp:BoundField DataField="days" HeaderText="days" SortExpression="days" />
                                                 <asp:BoundField DataField="description" HeaderText="description" 
                                                     SortExpression="description" />
                                                 <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                                                 <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                                                 <asp:TemplateField HeaderText="Image">
                                                 <ItemTemplate>
                                                    <img src='../Tour_Image/<%#Eval("image") %>' height="100" width="100" />
                                                 </ItemTemplate>
                                                 </asp:TemplateField>
                                             </Columns>
                                         </asp:GridView>
                                         </div>
                                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                             SelectCommand="SELECT * FROM [tourdetails]" 
                                             DeleteCommand="DELETE FROM tourdetails WHERE (tdid = @tdid)" 
                                             UpdateCommand="UPDATE tourdetails SET placename = @placename, image = @image, days = @days, description = @description WHERE (tdid = @tdid)">
                                             <DeleteParameters>
                                                 <asp:Parameter Name="tdid" />
                                             </DeleteParameters>
                                             <UpdateParameters>
                                                 <asp:Parameter Name="placename" />
                                                 <asp:Parameter Name="image" />
                                                 <asp:Parameter Name="days" />
                                                 <asp:Parameter Name="description" />
                                                 <asp:Parameter Name="tdid" />
                                             </UpdateParameters>
                                         </asp:SqlDataSource>

                                     </div>


</asp:Content>

