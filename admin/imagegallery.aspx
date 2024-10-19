<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/M1.master" AutoEventWireup="true" CodeFile="imagegallery.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="page-header">
							<h1>
								Home
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									IMAGE GALLERY
								</small>
							</h1>
						</div><!-- /.page-header -->



                                    <div class="form-group">
                                    	<div class="space-24"></div>

									<h3 class="header smaller lighter blue">
										TOUR IMAGE GALLERY
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
                                         <label class="col-sm-3 control-label no-padding-right" for="form-field-1">Place Image </label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1" placeholder="Username" class="col-xs-10 col-sm-5" />--%>
                                            <%--<asp:TextBox ID="TextBox1" runat="server" placeholder="Hotel Details" 
                                                class="col-xs-10 col-sm-5" TextMode="MultiLine"></asp:TextBox>--%>
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
										</div>
                                        <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                        <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                   

                                   <div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
                                            <asp:Button ID="btn_insert" runat="server" Text="Insert" class="btn btn-info" 
                                                onclick="btn_insert_Click" />
                                        </div>
                                    </div>
                                    <div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                DataKeyNames="igid" DataSourceID="SqlDataSource2" CssClass="table table-striped table-bordered table-hover">
                                                <Columns>
                                                    <asp:BoundField DataField="igid" HeaderText="igid" InsertVisible="False" 
                                                        ReadOnly="True" SortExpression="igid" />
                                                    <asp:BoundField DataField="tdid" HeaderText="tdid" SortExpression="tdid" />
                                                    <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                                                </Columns>
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT * FROM [imagegallery]"></asp:SqlDataSource>
                                        </div>
                                    </div>

                                   
</asp:Content>

