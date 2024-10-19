<%@ Page Title="" Language="C#" MasterPageFile="~/User/AfterLog.master" AutoEventWireup="true" CodeFile="ViewMyBooking.aspx.cs" Inherits="User_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section>
		<div class="db">
			<!--LEFT SECTION-->
		
			<div >
				<div class="db-2-com db-2-main">
					<h4>Travel Booking</h4>
					<div class="db-2-main-com db-2-main-com-table">
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <HeaderTemplate>
                            <table class="responsive-table">
							    <thead>
								    <tr>
									    <th>Book Id</th>
									    <th>Tour Type </th>
									    <th>Place Name</th>
									    <th>Mob No</th>
									    <th>Email Id</th>
									    <th>Arival Date</th>
									    <th>Depurture Date</th>
                                        <th>Price</th>
                                        <th>Date of Book</th>
                                        <th>Status</th>
								    </tr>
							    </thead>
							    <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                                <tr>
									<td><%# Eval("bookid") %></td>
                                    <td><%# Eval("tourtype") %></td>
                                    <td><%# Eval("placename") %></td>
                                    <td><%# Eval("Mobno") %></td>
                                    <td><%# Eval("Emailid") %></td>
                                    <td><%# Eval("Avdate") %></td>
                                    <td><%# Eval("Dpdate") %></td>
                                    <td><%# Eval("Price") %></td>
                                    <td><%# Eval("DateofBook") %></td>
                                     <td><%# Eval("Status") %></td>
								</tr>
                        </ItemTemplate>
                        <FooterTemplate>
                        	</tbody>
						</table>
                        </FooterTemplate>
                    </asp:Repeater>
						<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            
                            SelectCommand="SELECT Book_Tour.Bookid, Book_Tour.MobNo,Book_Tour.status, Book_Tour.Emailid, Book_Tour.Avdate, Book_Tour.Dpdate, Book_Tour.Price, Book_Tour.DateofBook, tourtype.tourtype, tourdetails.placename FROM Book_Tour INNER JOIN tourtype ON Book_Tour.Trid = tourtype.ttid INNER JOIN tourdetails ON Book_Tour.tdid = tourdetails.tdid WHERE (Book_Tour.Uid = @Uid)">
                            <SelectParameters>
                                <asp:SessionParameter Name="Uid" SessionField="Uid" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
							
						
					</div>
				</div>
			</div>
		
		</div>
	</section>
	<!--END DASHBOARD-->
</asp:Content>

