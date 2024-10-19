<%@ Page Title="" Language="C#" MasterPageFile="~/User/M1.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <section>
		<div class="tr-register">
			<div class="tr-regi-form">
				<h4>Create an Account</h4>
				<p>It's free and always will be.</p>
				<form id="Form1" class="col s12" runat="server">
					<div class="row">
						<div class="input-field col s12">
							<%--<input type="text" class="validate">--%>
                                <asp:TextBox ID="txtname" runat="server" required ></asp:TextBox>
							<label>User Name</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12">
							<%--<input type="password" class="validate">--%>
                               <asp:TextBox ID="txtpass" runat="server" TextMode="Password" required></asp:TextBox>
							<label>Password</label>
						</div>
					</div>
                    <div class="row">
						<div class="input-field col s12">
							<%--<input type="password" class="validate">--%>
                                <asp:TextBox ID="txtcpass" runat="server" TextMode="Password" required></asp:TextBox>
							<label>Re - Type Password</label>
						</div>
					</div>
                    <div class="row">
						<div class="input-field col s12">
							<%--<input type="password" class="validate">--%>
                                <asp:TextBox ID="txtemail" runat="server" required></asp:TextBox>
							<label>Email Id</label>
						</div>
					</div>
                    <div class="row">
						<div class="input-field col s12">
							<%--<input type="password" class="validate">--%>
                              <asp:TextBox ID="txtmobno" runat="server" required></asp:TextBox>
							<label>Mobile No </label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12">
							<%--<input type="submit" value="submit" class="waves-effect waves-light btn-large full-btn"> --%>
                            <asp:Button ID="btn_submit" runat="server" Text="Register Here" 
                    class="waves-effect waves-light btn-large full-btn" onclick="btn_submit_Click"/>
                           </div>
					</div>
                     <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
				</form>
               
				<p> Are you a already member ? <a href="Signin.aspx">Click Here To Login</a>
				</p>
				
			</div>
		</div>
	</section>




<%--<div class="page-login">
	<div class="login_singup ">
		<div class="login_logo center">
			<h1 class="logo-login">
            	<a href="index.html">SignUp New Account</a>
          	</h1>
		</div>
		<form runat="server" class="form-login">
			<div class="form-login__title center">
				<h2 class="title-login register">Register</h2>
			</div>
			<div class="form-login__input">
				<label for="login-user">Your Name</label>
				
                 <asp:TextBox ID="txtname" runat="server"  class="form-input btn-radius"></asp:TextBox>
			</div>
			<div class="form-login__input">
				<label for="login-password">Passsword</label>
				
                 <asp:TextBox ID="txtpass" runat="server" class="form-input btn-radius" 
                    TextMode="Password"></asp:TextBox>
			</div>
			<div class="form-login__input">
				<label for="retype-password">Re-type Password</label>
				
                <asp:TextBox ID="txtcpass" runat="server"  class="form-input btn-radius" 
                    TextMode="Password"></asp:TextBox>
			</div>
            <div class="form-login__input">
				<label for="retype-password">Mobile No</label>
				
                 <asp:TextBox ID="txtmobno" runat="server" class="form-input btn-radius"></asp:TextBox>
			</div>
             <div class="form-login__input">
				<label for="retype-password">Email Id :</label>
			
                <asp:TextBox ID="txtemail" runat="server" class="form-input btn-radius"></asp:TextBox>
			</div>
			<div class="form-login__button">
			
                <asp:Button ID="btn_submit" runat="server" Text="Register Here" 
                    class="button-submit btn-submit btn-radius" onclick="btn_submit_Click"/>
			</div>
			<div class="form-login__footer center">
				<span class="login-footer"> Already have an account? <a class="login-footer-link" href="Signin.aspx"> Login here</a></span>
			</div>
        
		</form>
		<ul class="center">
			<li>
				<a href="">About</a>
			</li>
			<li>
				<a href="#">Tours</a>
			</li>
			<li>
				<a href="#">Destinations</a>
			</li>
			<li>
				<a href="#">Blog</a>
			</li>
			<li>
				<a href="#">Help</a>
			</li>
		</ul>
	</div>
</div>--%>
</asp:Content>

