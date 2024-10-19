<%@ Page Title="" Language="C#" MasterPageFile="~/User/AfterLog.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="User_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section>
		<div class="db">
            <div class="db-2">
				<div class="db-2-com db-2-main">
					<h4>Enter Payment Details <span class="db-pay-amount"><asp:Label ID="lblprice" runat="server" Text="Label"></asp:Label></span></h4>
					<div class="db-2-main-com db2-form-pay db2-form-com">
						<div class="db-pay-card">
							<h5>Accepted Card Types</h5><img src="images/cards.png" alt="" /> </div>
						<form runat="server">
							<div class="row">
								<div class="input-field col s12">
									<input type="number" class="validate">
									<label>Enter amount</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s12">
									<select>
										<option value="" disabled selected>Select Card Type</option>
										<option value="1">Master Card</option>
										<option value="2">Visa</option>
										<option value="3">American Express</option>
										<option value="2">Laser</option>
										<option value="2">Discover</option>
									</select>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s12">
									<input type="number" class="validate">
									<label>Card Number</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s12 m6">
									<input type="number" class="validate">
									<label>Expairy Date (DD/MM)</label>
								</div>
								<div class="input-field col s12 m6">
									<input type="number" class="validate">
									<label>CVV</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s12">
									<input id="pay-ca" type="text" class="validate">
									<label for="pay-ca">Full name on a Card</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s12">
									<%--<input type="submit" value="SUBMIT" class="waves-effect waves-light full-btn"> </div>--%>
									<asp:Button runat="server" Text="Submit" class="waves-effect waves-light full-btn" onclick="btn_login_Click"/>
							</div>
						</form>
					</div>
				</div>
			</div>
        </div>
    </section>
</asp:Content>

