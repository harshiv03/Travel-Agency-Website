<%@ Page Title="" Language="C#" MasterPageFile="~/User/AfterLog.master" AutoEventWireup="true" CodeFile="Testimonial.aspx.cs" Inherits="User_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section>
		<div class="rows inn-page-bg com-colo">
			<div class="container tb-space inn-page-con-bg pad-bot-redu" id="inner-page-title">
				<!-- TITLE & DESCRIPTION -->
				<div class="spe-title">
					<h2>Customer <span>Testimonials</span></h2>
					<div class="title-line">
						<div class="tl-1"></div>
						<div class="tl-2"></div>
						<div class="tl-3"></div>
					</div>
					<p>World's leading tour and travels Booking website,Over 30,000 packages worldwide.</p>
				</div>
				<div class="p_testimonial">
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                    <!--====== TESTIMONIALS ======-->
					<div class="col-md-6">
						<div class="p-tesi">
							<div class="col-md-3 col-sm-3"><%# Eval("Uname") %> </div>
							<div class="col-md-9 col-sm-9">
								<h4><%#Eval("Title") %></h4>
								<div>Rating : <%# Eval("Rating") %> </div>
								<p><%#Eval("RevDesc") %></p> <address><%#Eval("Country") %></address> </div>
						</div>
					</div>
					<!--====== TESTIMONIALS ======-->
				
                    </ItemTemplate>
                </asp:ListView>
				<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT Reviews.Revid, Reviews.Title, Reviews.Rating, Reviews.RevDesc, Reviews.Country, User_Mstr.Uname FROM Reviews INNER JOIN User_Mstr ON Reviews.Uid = User_Mstr.Uid"></asp:SqlDataSource>
				</div>
			</div>
		</div>
	</section>
</asp:Content>

