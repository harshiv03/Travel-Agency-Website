<%@ Page Title="" Language="C#" MasterPageFile="~/User/AfterLog.master" AutoEventWireup="true" CodeFile="tourdetails2.aspx.cs" Inherits="User_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
    <ItemTemplate>
  
<section>
		<div class="rows inner_banner inner_banner_4" >
			<div class="container">
				<h2><span><%#Eval("placename")%></span> Family Package</h2>
				<ul>
					<%--<li><a href="#inner-page-title">Home</a>
					</li>--%>
					<li><i class="fa fa-angle-right" aria-hidden="true"></i> </li>
					<li><a href='Hotelinfo.aspx?trid=<%#Eval("ttid") %>' class="bread-acti">Hotel Info</a>
					</li>
				</ul>
				<p>Book travel packages and enjoy your holidays with distinctive experience</p>
			</div>
		</div>
	</section>
	<!--====== TOUR DETAILS - BOOKING ==========-->
	<section>
		<div class="rows banner_book" id="inner-page-title">
			<div class="container">
				<div class="banner_book_1">
					<ul>
						<li class="dl1">Location :<%#Eval("placename")%></li>
						<li class="dl2">Price : Rs <%#Eval("price")%></li>
						<li class="dl3">Duration : <%#Eval("days")%></li>
                  
						<li class="dl4"><a href='bookpackage.aspx?trid=<%#Eval("ttid") %>&tdid=<%#Eval("tdid") %>'>Book Now</a> </li>
					</ul>
				</div>
			</div>
		</div>
	</section>
     </ItemTemplate>
    </asp:ListView>

     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
          
          SelectCommand="SELECT  * FROM tourdetails WHERE (tdid = @tdid)">
            <SelectParameters>
                <asp:QueryStringParameter Name="tdid" QueryStringField="trid" Type="Int32" />
            </SelectParameters>
    </asp:SqlDataSource>

	<!--====== TOUR DETAILS ==========-->
	<section>
		<div class="rows inn-page-bg com-colo">
			<div class="container inn-page-con-bg tb-space">
				<div class="col-md-9">
                 <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource5">
                            <ItemTemplate>
					<!--====== TOUR TITLE ==========-->
					<div class="tour_head">
						<h2><%#Eval("placename")%><span class="tour_star"><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star-half-o" aria-hidden="true"></i></span><span class="tour_rat">4.5</span></h2> </div>
					<!--====== TOUR DESCRIPTION ==========-->
					<div class="tour_head1">
						<h3>Description</h3>
                       
						<p><%#Eval("description")%> </p>
                            </ItemTemplate>
                        </asp:ListView>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
          
          SelectCommand="SELECT  * FROM tourdetails WHERE (tdid = @tdid)">
            <SelectParameters>
                <asp:QueryStringParameter Name="tdid" QueryStringField="trid" Type="Int32" />
            </SelectParameters>
    </asp:SqlDataSource>
					</div>
					<!--====== ROOMS: HOTEL BOOKING ==========-->
			
                  
    






					<%--<!--====== TOUR LOCATION ==========-->
					<div class="tour_head1 tout-map map-container">
						<h3>Location</h3>
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6290415.157581651!2d-93.99661009218904!3d39.661150926343694!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x880b2d386f6e2619%3A0x7f15825064115956!2sIllinois%2C+USA!5e0!3m2!1sen!2sin!4v1467884030780" allowfullscreen></iframe>
					</div>--%>
					<!--====== ABOUT THE TOUR ==========-->
					<div class="tour_head1">
						<h3>About The Tour Inclusions</h3>
                        <asp:Repeater ID="rp1" runat="server" DataSourceID="SqlDataSource3">
                        <HeaderTemplate>
                            <table>
                                <tr>
                                    <th>Inclusions</th>
                                </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                                <tr>
                                    <td><%#Eval("inclusion")%></td>
                                </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
            SelectCommand="SELECT * FROM [inclusion] WHERE ([tdid] = @tdid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="tdid" QueryStringField="trid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
					</div>
                    <div class="tour_head1">
						<h3>About The Tour Exclusions</h3>
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource4">
                        <HeaderTemplate>
                            <table>
                                <tr>
                                    <th>Exclusion</th>
                                </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                                <tr>
                                    <td><%#Eval("exclusion")%></td>
                                </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                        </asp:Repeater>
                      <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [exclusion] WHERE ([tdid] = @tdid)">
            <SelectParameters>
                <asp:QueryStringParameter Name="tdid" QueryStringField="trid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
					</div>
					<!--====== DURATION ==========-->
					<div class="tour_head1 l-info-pack-days days">
						<h3>Detailed Day Wise Itinerary</h3>
						<ul>
                        <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
                            <ItemTemplate>
							<li class="l-info-pack-plac"> <i class="fa fa-clock-o" aria-hidden="true"></i>
								<h4><span>Day <%#Eval("day")%> :</span></h4>
								<p> <%#Eval("description")%>  </p>
							</li>
							 </ItemTemplate>
                    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
              SelectCommand="SELECT * FROM [touritinerary] WHERE ([tdid] = @tdid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="tdid" QueryStringField="trid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
						</ul>
					</div>
					
				</div>
				<div class="col-md-3 tour_r">
					<!--====== SPECIAL OFFERS ==========-->
					<div class="tour_right tour_offer">
						<div class="band1"><img src="images/offer.png" alt="" /> </div>
						<p>Special Offer</p>
						<h4>$500<span class="n-td">
								<span class="n-td-1">$800</span>
								</span>
							</h4> <a href="booking.html" class="link-btn">Book Now</a> </div>
					<!--====== TRIP INFORMATION ==========-->
					<div class="tour_right tour_incl tour-ri-com">
						<h3>Trip Information</h3>
						<ul>
							<li>Location : Rio,Brazil</li>
							<li>Arrival Date: Nov 12, 2017</li>
							<li>Departure Date: Nov 21, 2017</li>
							<li>Free Sightseeing & Hotel</li>
						</ul>
					</div>
					<!--====== PACKAGE SHARE ==========-->
					<div class="tour_right head_right tour_social tour-ri-com">
						<h3>Share This Package</h3>
						<ul>
							<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a> </li>
							<li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a> </li>
							<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a> </li>
							<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a> </li>
							<li><a href="#"><i class="fa fa-whatsapp" aria-hidden="true"></i></a> </li>
						</ul>
					</div>
					<!--====== HELP PACKAGE ==========-->
					<div class="tour_right head_right tour_help tour-ri-com">
						<h3>Help & Support</h3>
						<div class="tour_help_1">
							<h4 class="tour_help_1_call">Call Us Now</h4>
							<h4><i class="fa fa-phone" aria-hidden="true"></i> 10-800-123-000</h4> </div>
					</div>
					<!--====== PUPULAR TOUR PACKAGES ==========-->
					<div class="tour_right tour_rela tour-ri-com">
						<h3>Popular Packages</h3>
						<div class="tour_rela_1"> <img src="images/related1.png" alt="" />
							<h4>Dubai 7Days / 6Nights</h4>
							<p>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text</p> <a href="#" class="link-btn">View this Package</a> </div>
						<div class="tour_rela_1"> <img src="images/related2.png" alt="" />
							<h4>Mauritius 4Days / 3Nights</h4>
							<p>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text</p> <a href="#" class="link-btn">View this Package</a> </div>
						<div class="tour_rela_1"> <img src="images/related3.png" alt="" />
							<h4>India 14Days / 13Nights</h4>
							<p>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text</p> <a href="#" class="link-btn">View this Package</a> </div>
					</div>
				</div>
			</div>
		
	</section>
</asp:Content>

