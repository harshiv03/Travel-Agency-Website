<%@ Page Title="" Language="C#" MasterPageFile="~/User/AfterLog.master" AutoEventWireup="true" CodeFile="Reviews.aspx.cs" Inherits="User_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<section>
		<div class="rows inn-page-bg com-colo">
			<div class="container inn-page-con-bg tb-space">
				<div class="col-md-9">
                    <div>
						<div class="dir-rat">
							<div class="dir-rat-inn dir-rat-title">
								<h3>Write Your Rating Here</h3>
								<p>If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text</p>
								
							</div>
							<div class="dir-rat-inn">
								<form class="dir-rat-form" runat="server">
									<div class="form-group col-md-6 pad-left-o">
										<%--<input type="text" class="form-control" id="email11" placeholder="Enter Name">--%> 
                                        <asp:TextBox ID="txtname" runat="server" class="form-control" placeholder="Enter Name"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6 pad-left-o">
										<%--<input type="text" class="form-control" id="Text1" placeholder="Enter Name">--%> 
                                         <asp:TextBox ID="txttitle" runat="server" class="form-control" placeholder="Enter Title"></asp:TextBox>
                                    </div>
									<div class="form-group col-md-6 pad-left-o">
										<%--<input type="number" class="form-control" id="email12" placeholder="Title"> --%>
                                         <asp:TextBox ID="txtrating" required runat="server" class="form-control" placeholder="Enter Rating"></asp:TextBox>
                                    </div>
									<div class="form-group col-md-6 pad-left-o">
										<%--<input type="email" class="form-control" id="email13" placeholder="Rating">--%> 
                                         <asp:TextBox ID="txtcountry" runat="server" class="form-control" placeholder="Enter Country"></asp:TextBox>
                                    </div>
									
									<div class="form-group col-md-12 pad-left-o">
										<%--<textarea placeholder="Write your message"></textarea>--%>
                                        <asp:TextBox ID="txtdesc" runat="server" class="form-control" placeholder="Write your Message"></asp:TextBox>
									</div>
									<div class="form-group col-md-12 pad-left-o">
										<%--<input type="submit" value="SUBMIT" class="link-btn">--%> .
                                        <asp:Button ID="btn_submit" runat="server" Text="Submit" class="link-btn" 
                                            onclick="btn_submit_Click"></asp:Button>
                                    </div>
                                    <p><asp:Label ID="Label1" runat="server" Text=""></asp:Label></p>
								</form>
							</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

