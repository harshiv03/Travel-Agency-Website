<%@ Page Title="" Language="C#" MasterPageFile="~/User/M1.master" AutoEventWireup="true" CodeFile="Forgotpass.aspx.cs" Inherits="User_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section>
		<div class="tr-register">
			<div class="tr-regi-form">
				<h4>Fogot Password</h4>
				<p>It's free and always will be.</p>
				<form id="Form1" class="col s12" runat="server">
					<div class="row">
						<div class="input-field col s12">
							<%--<input type="text" class="validate">--%>
                            <asp:TextBox ID="txtemail" runat="server" required></asp:TextBox>
							<label>Email Id</label>
						</div>
					</div>
					
					<div class="row">
						<div class="input-field col s12">
							<%--<input type="submit" value="submit" class="waves-effect waves-light btn-large full-btn"> --%>
                            <asp:Button ID="btn_submit" runat="server" Text="Submit" 
                    class="waves-effect waves-light btn-large full-btn" onclick="btn_submit_Click"/>
                           </div>
					</div>
                     <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
				</form>
               
				<p> Are you a already member ? <a href="Signin.aspx"> Click Here To Login </a>
				</p>
				
			</div>
		</div>
	</section>

</asp:Content>

