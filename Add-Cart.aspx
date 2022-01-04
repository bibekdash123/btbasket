<%@ Page Language="C#" MasterPageFile="~/MasterEntry.master" AutoEventWireup="true" CodeFile="Add-Cart.aspx.cs" Inherits="MyBazarUser_Add_Cart" Title="btbasket.com|ViewKart" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
                    <ol class="breadcrumb">
                        <li><a href="pc">Home</a></li>
                        <li class="active">ProductList</li>
                    </ol>
                </div>
                <div class="row add_cart_cart">
                    <div class="col-md-6 col-sm-12 col-xs-12">
                        <asp:Panel ID="panelsummary" runat="server">
                            <div class="card">
                                <div class="card-header">
                                    <h3 class="panel-title">PRICE BREAKUP</h3>
                                </div>
                                <div class="card-body">
                                    <h6>TOTAL PRICE: Rs

                                    <asp:Label ID="Label3" runat="server" Font-Size="medium" Font-Bold="true"></asp:Label>

                                    </h6>

                                    <h6>TAX AMOUNT : Rs 0.00</h6>
                                </div>
                                <div class="card-footer">
                                    <div class="card_footer_text">
                                        <h5 style="font-size: medium"><b>TOTAL PRODUCT PRICE: </b>
                                            <asp:Label ID="LblGrandTot" runat="server" Font-Size="medium" Font-Bold="true"></asp:Label>
                                        </h5>
                                        <h5>
                                            <asp:Label ID="Lblcharges" runat="server" Font-Bold="true" Font-Size="medium" Text="DELIVERY CHARGES : 30.00" Visible="false"></asp:Label></h5>

                                        
                                            

                                    </div>

                                    <div class="card-btn">
                                        <h5><asp:Label ID="LblGrossTotal" runat="server" Font-Bold="true" Visible="false" Font-Size="medium"></asp:Label></h5>
                                        <asp:Button ID="BtnSelect" runat="server" Text="CHECKOUT" OnClick="BtnSelect_Click" CssClass="btn btncheckout btn-sm" />
                                        <asp:Button ID="BtnUpdate" runat="server" CssClass="btn btnshopping btn-sm" Text="CONTINUE SHOPPING" OnClick="BtnUpdate_Click" /><br />
                                        <asp:Label ID="LblTranNumber" runat="server" CssClass="label label-success"></asp:Label>

                                    </div>


                                </div>
                            </div>
                        </asp:Panel>
                    </div>
<div class="col-md-6 col-sm-12 col-xs-12">

                        <asp:Panel ID="panelorder" runat="server" Visible="false" CssClass="panel-faq">
                            <asp:UpdatePanel ID="up" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <%--<asp:Timer runat="server" ID="Timer1" Interval="100" OnTick="Timer1_Tick"></asp:Timer>--%>


                                    <div class="card">
                                        <asp:HiddenField ID="Hiddenmail" runat="server" Value="N/A" />
                                        <asp:HiddenField ID="Hiddenname" runat="server" Value="N/A" />
                                        <asp:HiddenField ID="Hiddenpin" runat="server" Value="11111" />
                                        <asp:HiddenField ID="Hiddenaddress" runat="server" Value="N/A" />
                                        <div class="card-body">
                                            <asp:Panel ID="PanelLogin" runat="server" DefaultButton="BtnLogin">
                                                <div class="form-group">
                                                    <asp:TextBox ID="TxtMobile" CssClass="txtboxviewkart form-control" runat="server" placeholder="Mobile Number"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredMail" runat="server" ValidationGroup="login" CssClass="text-danger" ControlToValidate="TxtMobile" ErrorMessage="Mobile Number Required"></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="form-group">
                                                    <asp:TextBox ID="TxtPassword" CssClass="txtboxviewkart form-control" runat="server" TextMode="Password" placeholder="Enter Password Here"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ValidationGroup="login" CssClass="text-danger" ControlToValidate="TxtPassword" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Lbllogmsg" runat="server" Text="Mobile Or Password Is Incorrect.." CssClass="label label-danger" Visible="false"></asp:Label><br />
                                                    <asp:Button ID="BtnLogin" runat="server" Text="LOGIN" TabIndex="0" ValidationGroup="login" CssClass="btn btn-success btn-lg btn-block" data-toggle="tooltip" OnClick="BtnLogin_Click"></asp:Button><br />
                                                    <div class="form-group">
                                                        <a href="password-recovery" class="landing-link" target="_blank">Forget Password ?</a></strong> |
                                                                <asp:LinkButton ID="LnkShow" runat="server" CssClass="landing-link" OnClick="LnkShow_Click">New To btbasket ? Register</asp:LinkButton>
                                                    </div>

                                                </div>
                                            </asp:Panel>
                                            <asp:Panel ID="PanelRegister" runat="server" DefaultButton="BtnRegister" Visible="false">
                                                <div class="form-group" id="dvProgressBar" style="align-items: center; visibility: hidden;">
                                                    <img src="images/home/proce.gif" style="height: 20px; width: 30px;" alt="btbasket-proessimg" />
                                                </div>
                                                <div class="form-group">
                                                    <asp:TextBox ID="TxtPhone" CssClass="txtboxviewkart form-control" runat="server" placeholder="Mobile Number"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpMob" runat="server" ValidationGroup="regis" ErrorMessage="Only Mobile Number..." ControlToValidate="TxtPhone" ValidationExpression="^[7-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$"></asp:RegularExpressionValidator>
                                                </div>
                                                <div class="form-group">
                                                    <asp:TextBox ID="Txtotp" CssClass="txtboxviewkart form-control" runat="server" placeholder="OTP" Visible="false" AutoPostBack="true"></asp:TextBox>
                                                    <asp:TextBox ID="TxtName" CssClass="txtboxviewkart form-control" runat="server" placeholder="User Name" Visible="false" AutoPostBack="true"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <asp:HiddenField ID="Hiddenotp" runat="server" />
                                                    <asp:Label ID="Label1" runat="server"></asp:Label>
                                                   
                                                    <asp:Button ID="Btnotp" runat="server" ValidationGroup="regis" Text="CONTINUE" CssClass="btn btn-success Btnotp" CausesValidation="false" OnClick="Btnotp_Click" OnClientClick="javascript:ShowProgressBar()" /><asp:Button ID="Btnverify" runat="server" Visible="false" CssClass="btn btn-success" ValidationGroup="regis" Text="Verify" OnClientClick="javascript:HideTimer()" OnClick="Btnverify_Click" />
                                                    <asp:Label ID="Lblmsg" runat="server" CssClass="label label-default"></asp:Label>
                                                </div>
                                                <div class="form-group">
                                                    <asp:TextBox ID="TxtPwd" CssClass="txtboxviewkart form-control" runat="server" TextMode="Password" placeholder="Password" Visible="false"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldPwd" runat="server" ValidationGroup="regis" CssClass="text-danger" ControlToValidate="TxtPwd" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="form-group">
                                                    <asp:TextBox ID="TxtMail" CssClass="txtboxviewkart form-control" runat="server" TextMode="Email" placeholder="Email ID" Visible="false"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldMail" runat="server" ValidationGroup="regis" CssClass="text-danger" ControlToValidate="TxtMail" ErrorMessage="Email Id Required"></asp:RequiredFieldValidator>

                                                </div>
                                                <div class="form-group">
                                                    <asp:Button ID="BtnRegister" CssClass="btn btn-success btn-lg btn-block" runat="server" ValidationGroup="regis" TabIndex="1" Visible="false" Text="Register" OnClick="BtnRegister_Click" />
                                                </div>
                                                <div class="form-group">
                                                    <asp:LinkButton ID="Lnkregis" runat="server" CssClass="landing-link" OnClick="Lnkregis_Click">Already Have An Account ? Sign In</asp:LinkButton>
                                                </div>
                                                <asp:Panel ID="Panel1" runat="server" Visible="false">
                                                    <div class="alert alert-warning">
                                                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                                        <h4>Mobile Number Is Registered...Kindly Login</h4>
                                                    </div>
                                                </asp:Panel>
                                            </asp:Panel>


                                        </div>
                                    </div>



                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </asp:Panel>
                        <asp:Panel ID="panelcartlist" runat="server">
                            <div class="card">
                                <div class="card-header">
                                    <h2 class="panel-title">ITEMS IN MY BASKET</h2>
                                </div>
                                <div class="cartdiv">
                                    <div class="card-body">
                                        <%--OnRowDataBound="GridView1_RowDataBound"--%>
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="" ShowFooter="false" ShowHeader="false" BorderColor="#FFF" BorderWidth="1px" CssClass="table table-striped" GridLines="Horizontal" OnRowCommand="GridView1_RowCommand">
                                            <AlternatingRowStyle HorizontalAlign="Left" BackColor="#17202a" VerticalAlign="Middle" BorderColor="Transparent" BorderWidth="1px" />
                                            <Columns>
                                                <asp:TemplateField HeaderText="NAME" HeaderStyle-Width="40px">
                                                    <ItemTemplate>
                                                        <asp:Image ID="ImgProductImage" runat="server" ImageAlign="Middle" Height="90px" Width="90px" ImageUrl='<%# Eval("Product_Image")%>' AlternateText="btbasket/img" />
                                                        <asp:Label ID="Lblpid" runat="server" Font-Bold="true" ForeColor="#333" Visible="false" Text='<%#Eval("Product_Id") %>'></asp:Label>

                                                        <p class="cart_img_info">
                                                            <asp:Label ID="LblProductName" runat="server" Text='<%# Bind("Product_Name") %>'></asp:Label>(<asp:Label ID="LblBrand" runat="server" Text='<%# Bind("Product_Brand") %>'></asp:Label>)
                                                        </p>
                                                        <p class="cart_img_info">
                                                            <asp:Label ID="LblQuantity" runat="server" Text='<%# Bind("Product_Quantity") %>'></asp:Label>(<asp:Label ID="LblOffer" runat="server" Text='<%# Bind("Product_Offer") %>'></asp:Label>)
                                                        </p>
                                                        </p>
                                                    </ItemTemplate>
                                                    <ItemStyle CssClass="gridborder" />
                                                    <HeaderStyle BackColor="#00B545" ForeColor="White" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="PRICE" HeaderStyle-BackColor="#00b545" HeaderStyle-ForeColor="White" HeaderStyle-Width="15px">
                                                    <ItemTemplate>
                                                        <b>Price :</b><asp:TextBox ID="TxtPrice" runat="server" Width="40px" ForeColor="#000" BorderColor="Transparent" BackColor="Transparent" Text='<%#Eval("Product_Price")%>'></asp:TextBox><hr />
                                                        <b>Unit : </b>
                                                        <asp:TextBox ID="TxtQuantity" runat="server" ForeColor="#000" min="1" max="10" TextMode="Number" step="1" Text='<%#Convert.ToInt32(Eval("Product_Unit"))%>' AutoPostBack="false"></asp:TextBox>
                                                        <asp:Button ID="btnUpdateQuantity" runat="server" CommandName="Update" Font-Size="small" Font-Bold="true" Text="Update" CommandArgument='<%# Container.DataItemIndex %>' Style="padding: 2px; font-weight: bold;"></asp:Button>
                                                        <hr />
                                                        <b>Total :</b><asp:TextBox ID="TxtTotal" runat="server" Width="40px" ForeColor="#000" ReadOnly="true" Font-Bold="true" BorderColor="Transparent" BackColor="Transparent" Text='<%#Convert.ToInt32(Eval("Product_Unit")) * Convert.ToInt32(Eval("Product_Price")) %>'></asp:TextBox>
                                                    </ItemTemplate>
                                                    <ItemStyle CssClass="gridborder" />
                                                    <HeaderStyle BackColor="#00B545" ForeColor="White" HorizontalAlign="Left" Font-Bold="true" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderStyle-BackColor="#00b545" HeaderStyle-ForeColor="White" Visible="false">
                                                    <FooterTemplate>
                                                        <asp:Label ID="Lblsubtotal" runat="server"></asp:Label>
                                                    </FooterTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblTotal" runat="server"></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle BackColor="#00B545" ForeColor="White" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="DELETE" HeaderStyle-BackColor="#00b545" HeaderStyle-ForeColor="White" HeaderStyle-Width="10px">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="delete" Font-Size="small" ForeColor="#333" Font-Bold="true" OnClick="LinkButton1_Click" Text="REMOVE">
                                                    <%--<span class="glyphicon glyphicon-trash custom-align" style="color:#ff0000"></span>--%>
                                                        </asp:LinkButton>
                                                    </ItemTemplate>
                                                    <ItemStyle CssClass="gridborder" />
                                                    <HeaderStyle BackColor="#00B545" ForeColor="White" />
                                                </asp:TemplateField>

                                            </Columns>
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <RowStyle HorizontalAlign="Left" VerticalAlign="Middle" BorderColor="Transparent" BorderWidth="1px" />
                                            <FooterStyle BorderColor="#20b164" BorderWidth="2px" />
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </asp:Panel>

                        <asp:Panel ID="PanelAlert" runat="server" Visible="false">
                            <div class="alert alert-warning">
                                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                Delivery charges of rupees 30 will be charged against order amount less than 500 rupees.
                            <asp:Button ID="Btnalert" runat="server" CssClass="btn btn-danger btn-sm" Text="AGREE & CONTINUE" OnClick="Btnalert_Click" />
                                <asp:Button ID="BtnCancel" runat="server" CssClass="btn btn-danger btn-sm" Text="NO" OnClick="BtnCancel_Click" />
                            </div>
                        </asp:Panel>
                    </div>
                    <div class="col-md-1"></div>
                </div>
                <div class="row">
                </div>
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-8">
                        <asp:Label ID="lblempty" runat="server" Text="Your cart is currently empty" Font-Size="30px" ForeColor="#00b545" Visible="false"></asp:Label><br />
                        <asp:LinkButton ID="Lnkshop" runat="server" CssClass="btn btn-danger btn-block" OnClick="Lnkshop_Click" Visible="false">CONTINUE SHOPPING</asp:LinkButton>
                    </div>
                    <div class="col-md-2"></div>

                </div>
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <asp:Panel ID="PanelMsg" runat="server" Visible="true">
                            <asp:HiddenField ID="HiddenTime" runat="server" />
                            <asp:HiddenField ID="HiddenDate" runat="server" />
                            <asp:HiddenField ID="HiddenCode" runat="server" Value="TRAN" />
                            <div class="row top-buffer1"></div>

                            <br />

                            <asp:HiddenField ID="FixAmnt" runat="server" Value="500" />
                            <asp:HiddenField ID="PurchaseAmnt" runat="server" />
                            <asp:Label ID="LblOdId" runat="server" Visible="false"></asp:Label>
                            <asp:Label ID="LblCode" runat="server" Text="BTBAS" Visible="False"></asp:Label>
                        </asp:Panel>
                    </div>
                    <div class="col-md-5 col-sm-6 col-xs-12">
                        <asp:Label ID="Lblterm" runat="server" Visible="false"></asp:Label>
                    </div>

                    <div class="col-md-2"></div>
                </div>
                <div class="row top-buffer1"></div>

                <div class="row">
                    <div class="col-md-2 pull-left ">
                        <asp:Label ID="LblMessage" runat="server" Visible="False" Font-Bold="false" Font-Size="14px"></asp:Label>
                        <br />
                    </div>

                    <div class="col-md-2">
                        <asp:Label ID="LblOrderNo" runat="server" ForeColor="#CC0000"></asp:Label>
                    </div>
                </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <script type="text/javascript">
        function ShowProgressBar() {
            document.getElementById('dvProgressBar').style.visibility = 'visible';
            setTimeout("countdown()", 1000);
        }

        function HideProgressBar() {
            document.getElementById('dvProgressBar').style.visibility = "hidden";
        }
        function HideTimer() {
            $("#TimerDiv").hide();
        }

        function countdown() {
            $("#TimerDiv").show();
            $(".Btnotp").hide();
            seconds = document.getElementById("timerLabel").innerHTML;
            console.log(seconds);
            if (seconds > 0) {
                document.getElementById("timerLabel").innerHTML = seconds - 1;
                setTimeout("countdown()", 1000);
            }
            else {
                $("#TimerDiv").hide();

                $(".Btnotp").show();
            }
        }
    </script>
</asp:Content>
