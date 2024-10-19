<%@ Page Title="" Language="C#" MasterPageFile="~/User/AfterLog.master" AutoEventWireup="true" CodeFile="EditMyProfile.aspx.cs" Inherits="User_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<section>
		<div class="db">
		<div class="db-l">
				<div class="db-l-1">
                </div>
        </div>
            <div class="db-2">
				<div class="db-2-com db-2-main">
					<h4>Edit My Profile </h4>
					<div class="db-2-main-com db2-form-pay db2-form-com">
						<form class="col s12" runat="server">
							<div class="row">
								<div class="input-field col s12">
									<asp:TextBox ID="txtname" runat="server" ></asp:TextBox>
									<label>Enter Name</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s12 m6">
									<asp:TextBox ID="txtpass" runat="server" ></asp:TextBox>
									<label>Enter Password</label>
								</div>
								<div class="input-field col s12 m6">
								<asp:TextBox ID="txtcpass" runat="server"></asp:TextBox>
									<label>Confirm Password</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s12 m6">
									<asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
									<label>Email id</label>
								</div>
								<div class="input-field col s12 m6">
									<asp:TextBox ID="txtmobno" runat="server"></asp:TextBox>
									<label>Phone</label>
								</div>
							</div>
							
							<div class="row">
								<div class="input-field col s12">
									<%--<input type="submit" value="SUBMIT" class="waves-effect waves-light full-btn"> </div>--%>
                                    <asp:Button ID="btn_submit" runat="server" Text="Submit" 
                                        class="waves-effect waves-light full-btn" onclick="btn_submit_Click"></asp:Button>
							</div>
						</form>
					</div>
				</div>
			</div>
    
		</div>
	</section>

</asp:Content>

