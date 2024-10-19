<%@ Page Title="" Language="C#" MasterPageFile="~/User/M1.master" AutoEventWireup="true" CodeFile="Signin.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section>
		<div class="tr-register">
			<div class="tr-regi-form">
				<h4>Sign In</h4>
				<p>It's free and always will be.</p>
				<form class="col s12" runat="server">
					<div class="row">
						<div class="input-field col s12">
							<%--<input type="text" class="validate">--%>
                            <asp:TextBox ID="txtemail" runat="server" required></asp:TextBox>
							<label>Email Id</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12">
							<%--<input type="password" class="validate">--%>
                              <asp:TextBox ID="txtpass" runat="server" required 
                        TextMode="Password"></asp:TextBox>
							<label>Password</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12">
							<%--<input type="submit" value="submit" class="waves-effect waves-light btn-large full-btn"> --%>
                            <asp:Button ID="btn_submit" runat="server" Text="Login" 
                    class="waves-effect waves-light btn-large full-btn" onclick="btn_submit_Click"/>
                           </div>
					</div>
                     <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
				</form>
               
				<p><a href="Forgotpass.aspx">forgot password</a> | Are you a new user ? <a href="SignUp.aspx">Register</a>
				</p>
				
			</div>
		</div>
	</section>


</asp:Content>

