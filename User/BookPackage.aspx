<%@ Page Title="" Language="C#" MasterPageFile="~/User/AfterLog.master" AutoEventWireup="true" CodeFile="BookPackage.aspx.cs" Inherits="User_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<section>
		<div class="tr-register">
			<div class="tr-regi-form v2-search-form">
				<h4>Booking by <span>Email</span></h4>
				<p>It's free and always will be.</p>
				<form id="Form1" class="contact__form" runat="server">
							<div class="alert alert-success contact__msg" style="display: none" role="alert">
								Thank you for arranging a wonderful trip for us! Our team will contact you shortly!
							</div>
							<div class="row">
								<div class="input-field col s12">
									<%--<input type="text"  class="validate" name="name" required>--%>
                                    <asp:TextBox ID="txtname" runat="server" class="validate" required></asp:TextBox>
									<label>Enter your name</label>
								</div>
							</div>
                            <div class="row">
								<div class="input-field col s12">
									<%--<input type="text"  class="validate" name="name" required>--%>
                                    <asp:TextBox ID="Txttype" runat="server" class="validate" required></asp:TextBox>
									<label>Tour Type</label>
								</div>
							</div>
                            <div class="row">
								<div class="input-field col s12">
									<%--<input type="text"  class="validate" name="name" required>--%>
                                    <asp:TextBox ID="txtplace" runat="server" class="validate" required></asp:TextBox>
									<label>Place Name</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s6">
									<%--<input type="number"  class="validate" name="phone" required>--%>
                                    <asp:TextBox ID="txtmobno" runat="server" class="validate" required></asp:TextBox>
									<label>Enter your phone</label>
								</div>
								<div class="input-field col s6">
									<%--<input type="email"  class="validate" name="email" required>--%>
                                    <asp:TextBox ID="txtemail" runat="server" class="validate" required></asp:TextBox>
									<label>Enter your email</label>
								</div>
							</div>
							<%--<div class="row">
								<div class="input-field col s12">
									<%--<input type="text" id="select-city-1" class="autocomplete validate" name="city">
                                    <asp:TextBox ID="txtcity" runat="server" class="autocomplete validate" required></asp:TextBox>
									<label for="select-city-1">Select City or Place</label>
								</div>
								<div class="input-field col s12">
									<select name="package">
										<option value="" disabled selected>Select your package</option>
										<option value="Honeymoon Package">Honeymoon Package</option>
										<option value="Family Package">Family Package</option>
										<option value="Holiday Package">Holiday Package</option>
										<option value="Group Package">Group Package</option>
										<option value="Regular Package">Regular Package</option>
									</select>
                                    <asp:DropDownList ID="Ddlpackage" runat="server" class="validate">
                                        <asp:ListItem>Honeymoon</asp:ListItem>
                                        <asp:ListItem>Family</asp:ListItem>
                                        <asp:ListItem>Group</asp:ListItem>
                                        <asp:ListItem>Regular</asp:ListItem>
                                        <asp:ListItem>Holiday</asp:ListItem>
                                    </asp:DropDownList>
								</div>
							</div>--%>
							<div class="row">
								<div class="input-field col s6">
								<%--	<input type="text" id="from" name="arrival" readonly>--%>
                                <asp:TextBox ID="txtadate" runat="server" class="validate" required></asp:TextBox>
									<label for="from">Arrival Date</label>
								</div>
								<div class="input-field col s6">
									<%--<input type="text" id="to" name="departure" readonly>--%>
                                    <asp:TextBox ID="txtddate" runat="server" class="validate" required></asp:TextBox>
									<label for="to">Departure Date</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s6">
									<%--<select name="noofadults">
										<option value="" disabled selected>No of adults</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
									</select>--%>
                                    <asp:DropDownList ID="ddladults" runat="server" class="validate" AutoPostBack="true"  onselectedindexchanged="ddladults_SelectedIndexChanged">
                                        <asp:ListItem>No of Adults</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                    </asp:DropDownList>
								</div>
								<div class="input-field col s6">
									<%--<select name="noofchildrens">
										<option value="" disabled selected>No of childrens</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>											
									</select>--%>
                                     <asp:DropDownList ID="ddlchildren" runat="server" class="validate">
                                        <asp:ListItem>No of Children</asp:ListItem>
                                         <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                    </asp:DropDownList>
								</div>
							</div>							
                            <div class="row">
							<div class="input-field col s12">
								<%--<div class="input-field col s6">
									<select name="minprice">
										<option value="" disabled selected>Min Price</option>
										<option value="$200">$200</option>
										<option value="$500">$500</option>
										<option value="$1000">$1000</option>
										<option value="$5000">$5000</option>
										<option value="$10,000">$10,000</option>
										<option value="$50,000">$50,000</option>
									</select>
								</div>
								<div class="input-field col s6">
									<select name="maxprice">
										<option value="" disabled selected>Max Price</option>
										<option value="$200">$200</option>
										<option value="$500">$500</option>
										<option value="$1000">$1000</option>
										<option value="$5000">$5000</option>
										<option value="$10,000">$10,000</option>
										<option value="$50,000">$50,000</option>
									</select>
								</div>			--%>	
                                <asp:TextBox ID="txtprice" runat="server" class="validate" required></asp:TextBox>				
							</div>
                            </div>							
							<div class="row">
								<div class="input-field col s12">
									<%--<input type="submit" value="Book Now" class="waves-effect waves-light tourz-sear-btn v2-ser-btn">--%>
                                    <asp:Button ID="btn_submit" runat="server" Text="Book Now"  
                                        class="waves-effect waves-light tourz-sear-btn v2-ser-btn" 
                                        onclick="btn_submit_Click"></asp:Button>
								</div>
							</div>
						</form>
			</div>
		</div>
	</section>

	
	
</asp:Content>

