<%@ Page Title="" Language="C#" MasterPageFile="~/User/M1.master" AutoEventWireup="true" CodeFile="Visa.aspx.cs" Inherits="User_Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <section>
		<div class="tr-register">
			<div class="tr-regi-form v2-search-form">
				<h4>Visa Process</span></h4>
				
                <form id="frm1" runat="server" class="contact__form">     
                        <div class="row">
						    <div class="input-field col s6">
                                <asp:Image ID="country_flag" runat="server" />
                            </div>
                        </div>
                        <div class="row">
							<div class="input-field col s6">
                                  <asp:DropDownList ID="DropDownList1" runat="server"
                                      onselectedindexchanged="DropDownList1_SelectedIndexChanged1" 
                                      AutoPostBack="True" class="validate">
                                  </asp:DropDownList>
              
                            </div>
                        </div>
     
                    <div class="row">
						    <div class="input-field col s6"> 
                                <asp:Label ID="lblcon" runat="server" Text=""></asp:Label>
                            </div>
                    </div>
          	
                    <div class="row">
						    <div class="input-field col s12">
                                <ol class="normal_ul">
                                    <asp:ListView ID="ListView1" runat="server">
                                        <ItemTemplate>
                                            <li><%# Eval("details") %></li>
                                        </ItemTemplate>
                                    </asp:ListView>
                                 </ol>
                            </div>
                    </div>
          <div class="row">
						    <div class="input-field col s12">
                  <asp:Label ID="lbltime" runat="server" Text=""></asp:Label>
            </div>
          </div>
    </form>
    </div>
    </div>
</section>
</asp:Content>

