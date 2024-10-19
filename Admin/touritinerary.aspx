<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/M1.master" AutoEventWireup="true" CodeFile="touritinerary.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div class="page-header">
							<h1>
								Home
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									TOUR ITINERARY
								</small>
							</h1>
						</div><!-- /.page-header -->



                                    <div class="form-group">
                                    	<div class="space-24"></div>

									<h3 class="header smaller lighter blue">
										TOUR ITINERARY
										<%--<small>All Checkboxes, Radios and Switch Buttons Are Pure CSS</small>--%>
									</h3>
                                                
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Select Place Name </label>

										<div class="col-sm-9">
                                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                                DataSourceID="SqlDataSource1" DataTextField="placename" DataValueField="tdid">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT * FROM [tourdetails]"></asp:SqlDataSource>
                                        </div>
                                    </div>

                                     <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                    <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                   
                                   <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Day </label>
                                   <div class="col-sm-9">
                                       <asp:TextBox ID="txtday" runat="server" class="col-xs-10 col-sm-5" placeholday="Day"></asp:TextBox>
                                    </div>

                                     <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                       <div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div><div class="space-4"></div>
                                    <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Description </label>

										<div class="col-sm-9">
                                            <asp:TextBox ID="txtdesc" runat="server" class="col-xs-10 col-sm-5" 
                                                placeholday="Description" TextMode="MultiLine"></asp:TextBox>
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
                                            DataKeyNames="tiid" DataSourceID="SqlDataSource2" CssClass="table table-striped table-bordered table-hover">
                                            <Columns>
                                                <asp:BoundField DataField="tiid" HeaderText="tiid" InsertVisible="False" 
                                                    ReadOnly="True" SortExpression="tiid" />
                                                <asp:BoundField DataField="tdid" HeaderText="tdid" SortExpression="tdid" />
                                                <asp:BoundField DataField="day" HeaderText="day" SortExpression="day" />
                                                <asp:BoundField DataField="description" HeaderText="description" 
                                                    SortExpression="description" />
                                                <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                                                <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT * FROM [touritinerary]" 
                                            DeleteCommand="DELETE FROM touritinerary WHERE (tiid = @tiid)" 
                                            UpdateCommand="UPDATE touritinerary SET tdid=@tdid,day = @day, description = @description WHERE (tiid = @tiid)">
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

