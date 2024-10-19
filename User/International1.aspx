<%@ Page Title="" Language="C#" MasterPageFile="~/User/AfterLog.master" AutoEventWireup="true" CodeFile="International1.aspx.cs" Inherits="User_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section>
		<div class="rows inn-page-bg com-colo">
			<div class="container inn-page-con-bg tb-space pad-bot-redu" id="inner-page-title">
				<!-- TITLE & DESCRIPTION -->
				<div class="spe-title col-md-12">
					<h2>Top <span>Places</span></h2>
					<div class="title-line">
						<div class="tl-1"></div>
						<div class="tl-2"></div>
						<div class="tl-3"></div>
					</div>
					<p>World's leading tour and travels Booking website,Over 30,000 packages worldwide. Book travel packages and enjoy your holidays with distinctive experience</p>
				</div>
				<div>
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                          <ItemTemplate>
                          <!--====== PACKAGE ==========-->
                          <div class="col-md-4 col-sm-6 col-xs-12 b_packages">
						<div class="band"><img src="images/band.png" alt="" /> </div>
						<div class="v_place_img"><img src='../Tour_Image/<%#Eval("Image")%>' height="200px" width="300px" alt="Tour Booking" title="Tour Booking" /> </div>
						<div class="b_pack rows">
							<div class="col-md-8 col-sm-8">
								<h4><a href='tourdetails2.aspx?trid=<%#Eval("tdid")%>'> <%#Eval("placename")%></a></h4> </div>
							<div class="col-md-4 col-sm-4 pack_icon">
								<%--<ul>
									
									<li>
										<a href="#"><img src="images/info.png" alt="Details" title="View more details" /> </a>
									</li>
									<li>
										<a href="#"><img src="images/price.png" alt="Price" title="Price" /> </a>
									</li>
									<li>
										<a href="#"><img src="images/map.png" alt="Location" title="Location" /> </a>
									</li>
								</ul>--%>
							</div>
						</div>
					</div>
                          </ItemTemplate>
                </asp:ListView>
					 <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                              SelectCommand="SELECT * FROM [tourdetails] where ttid=2"></asp:SqlDataSource>
					
					
				</div>
			</div>
		</div>
	</section>
</asp:Content>

