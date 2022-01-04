<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductSearch.aspx.cs" Inherits="ProductSearch" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Online Grocery Shopping In India  | btbasket</title>
    <link rel="icon" type="image/x-icon" href="newlogo.png"/>
    <link rel="Stylesheet" href="css/ddmenu.css" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../addons/bootstrap/jquery.smartmenus.bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/main1.css" rel="stylesheet" type="text/css" />
    <link href="css/responsive.css" rel="stylesheet" type="text/css" />
    <link href="css/Style1.css" rel="stylesheet" type="text/css" />
    <link href="css/slider/Jquery-ui.css" type="text/javascript" />
    <link href="css/float-label.css" rel="Stylesheet" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png" />
    <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel = "stylesheet"/>
</head>
<body onload="javascript:HideProgressBar()">
<form id="form1" runat="server">  
<asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
</asp:ScriptManager>
<header id="header">
<div class="header-middle">
<div class="container">
<div class="row row-centred">
<div class="col-md-3">
<div class="logo">
<a href="home"><img src="images/home/btnewlogo1.png" style="width:170px;height:60px" alt="" class="headerimage" /></a>
</div>
</div>
<div class="col-sm-4 hidden-sm hidden-xs">
<div class="input-group">
<asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Search Product From More Than 7000+ SKU's"></asp:TextBox>
<span class="input-group-btn">
<asp:LinkButton ID="btnRandom" runat="server" class="btn btn-success" >
<span class="glyphicon glyphicon-search"></span>Search
</asp:LinkButton>
</span>
</div>

</div>
<div class="col-md-5 hidden-sm hidden-xs">
   
<div class="viewkart">
<div><asp:LinkButton ID="lbtcart" runat="server" href="my-cart" CssClass="btn btn-success btn-sm">
CART  <asp:Label ID="Lblkartcount" runat="server" Visible="true" CssClass="cartcount"></asp:Label></asp:LinkButton>
</div>
</div>
</div>
</div>
<div class="navbar-header">
<nav id="ddmenu">
<div class="menu-icon"></div>
<ul>
        <li class="full-width">
            <span class="top-heading">Grocery & Staples</span>
            <i class="caret"></i>
            <div class="dropdown">
                <div class="dd-inner">
                    <ul class="column">
                        <li><h4>Dal Pulses</h4></li>
                        <li><a href="product?N=Toor Dal"><span>Toor Dal(Harada Dali)</span></a></li>
                            <li><a href="product?N=Buta Dali"><span>Buta Dal</span></a></li>
                            <li><a href="product?N=Masoor Dal"><span>Redgram Dal(Masoor Dali)</span></a></li>
                            <li><a href="product?N=Moong Dal"><span>Moong Dal(Muga Dali)</span></a></li>
                            <li><a href="product?N=Kabuli-Buta"><span>Kabuli-Buta</span></a></li>
                            <li><a href="product?N=Sola-Buta"><span>Sola-Buta</span></a></li>
                            <li><a href="product?N=Matar"><span>Matar</span></a></li>
                    </ul>
                    <ul class="column">
                        <li><h4>Edible Oil & Ghee</h4></li>
                        <li><a href="product?N=Mustard Oil"><span>Mustard Oil</span></a></li>
                            <li><a href="product?N=Refined Oil"><span>Refined Oil</span></a></li>
                            <li><a href="product?N=Ricebran Oil"><span>Ricebran Oil</span></a></li>
                            <li><a href="product?N=Olive Oil"><span>Olive Oil</span></a></li>
                            <li class='last'><a href="product?N=Ghee"><span>Ghee</span></a></li>
                    </ul>
                    <ul class="column">
                        <li><h4>Salt-Sugar</h4></li>
                        <li><a href="product?N=Salt"><span>Salt</span></a></li>
                            <li><a href="product?N=Sugar"><span>Sugar</span></a></li>
                            <li><a href="product?N=Molases"><span>Molases(Guda)</span></a></li>
							<li class="divider"></li>
							<li><h4>Flour-Sooji</h4></li>
                            <li><a href="product?N=Besan"><span>Besan</span></a></li>
                            <li><a href="product?N=Maida"><span>Maida</span></a></li>
                            <li><a href="product?N=Sooji"><span>Sooji</span></a></li>
                            <li><a href="product?N=Atta"><span>Wheat Flour(Atta)</span></a></li>
                            <li><a href="product?N=Dalia"><span>Dalia</span></a></li>
                            <li><a href="product?N=Sagoo"><span>Sagoo</span></a></li>
							<li><a href="product?N=Cornflour"><span>Cornflour</span></a></li>
                    </ul>
                    <ul class="column">
                        <li><h4>Dal Pulses</h4></li>
                        <li><a href="product?N=Raw Rice"><span>Raw Rice(Arua Chaula)</span></a></li>
                            <li><a href="product?N=Boiled Rice"><span>Boiled Rice(Usuna Chaula)</span></a></li>
                            <li><a href="product?N=Basmati Rice"><span>Basmati Rice</span></a></li>
                            <li><a href="product?N=Kheer Rice"><span>Kheer Rice</span></a></li>
                            <li><a href="product?N=Flatten Rice"><span>Chuda(Poha)</span></a></li>
							<li class="divider"></li>
							<li><h4>Dry Fruits-Nuts</h4></li>
							<li><a href="product?N=Almond"><span>Almond</span></a></li>
                            <li><a href="product?N=Cashew"><span>Cashew</span></a></li>
                            <li><a href="product?N=Kismis"><span>Kismis</span></a></li>
                            <li><a href="product?N=Charmagaj"><span>Charmagaj</span></a></li>
                    </ul>
                    <ul class="column">
                        <li><h4>Spices & Masala</h4></li>
							<li><a href="product?N=Spices-Masala"><span>Masala</span></a></li>
                            <li><a href="product?N=Whole-Spices"><span>Whole Spices</span></a></li>
							<li class="divider"></li>
							<li><h3><a href="catagory?N=Grocery"><span>All Grocery</span></a></h3></li>
                   </ul>
                    
                </div>
            </div>
        </li>
        <li class="full-width">
            <span class="top-heading">Personal Care</span>
            <i class="caret"></i>
            <div class="dropdown">
                <div class="dd-inner">
                    <ul class="column">
                        <li><h4>Hair Care</h4></li>
							<li><a href="product?N=Hair Oil"><span>Hair Oil</span></a></li>
                            <li><a href="product?N=Hair Conditioner"><span>Hair Conditioner</span></a></li>
                            <li><a href="product?N=Hair Color"><span>Hair Colour-Dyes</span></a></li>
                            <li><a href="product?N=Shampoo"><span>Shampoo</span></a></li>
							<li class="divider"></li>
							<li><h4>Personal Hygiene</h4></li>
							<li><a href="product?N=Body Wash"><span>Body Wash</span></a></li>
                            <li><a href="product?N=Face Wash"><span>Face Wash</span></a></li>
                            <li><a href="product?N=Hand Wash"><span>Hand Wash</span></a></li>
                            <li><a href="product?N=Soap"><span>Liquid Soap-Bars</span></a></li>
                            <li><a href="product?N=Face Mask"><span>Face Mask</span></a></li>
                    </ul>
                    <ul class="column">
                            <li><h4>Oral Care</h4></li>
							<li><a href="product?N=Mouth Wash"><span>Mouth Wash</span></a></li>
                            <li><a href="product?N=Tooth Paste"><span>Tooth Paste</span></a></li>
                            <li><a href="product?N=Tooth Brush"><span>Tooth Brush</span></a></li>
							<li class="divider"></li>
                            <li><h4>Deos & perfumes</h4></li>
							<li><a href="product?N=Deos-Perfumes"><span>Deos-Perfumes</span></a></li>
							<li class="divider"></li>
                            <li><h4>Nail Care</h4></li>
							<li><a href="product?N=Nail Polish"><span>Nail Polish</span></a></li>
                            <li><a href="product?N=Nail Remover"><span>Nail Remover</span></a></li>
							<li class="divider"></li>
                            <li><h4>Sanitary Needs</h4></li>
							<li><a href="product?N=Shaving Cream-Lotion"><span>Shaving Cream-Lotion</span></a></li>
                            <li><a href="product?N=Shaving Razor-Blade"><span>Shaving Razor-Blade</span></a></li>
                    </ul>
                    <ul class="column">
                        <li><h4>Skin Care</h4></li>
                        <li><a href="product?N=Body Lotion"><span>Body Lotion</span></a></li>
                            <li><a href="product?N=Face Cream"><span>Face Cream</span></a></li>
                            <li><a href="product?N=Face Powder"><span>Face Powder</span></a></li>
                            <li><a href="product?N=Face Scrub"><span>Face Scrub</span></a></li>
                            <li><a href="product?N=Manicure"><span>Manicure</span></a></li>
                            <li><a href="product?N=Pedicure"><span>Pedicure</span></a></li>
                            <li><a href="product?N=Body Massage"><span>Body Massage</span></a></li>
                            <li><a href="product?N=Face Massage"><span>Face Massage</span></a></li>
                            <li><a href="product?N=Face Foundation"><span>Face Foundation</span></a></li>
                            <li><a href="product?N=Face Pack"><span>Face Pack</span></a></li>
                            <li><a href="product?N=Serum"><span>Serum</span></a></li>
                            <li class="divider"></li>
							<li><h3><a href="catagory?N=Personal Care"><span>All PersonalCare</span></a></h3></li>
                    </ul>
                    <ul class="column">
                        <li><h4>Baby Care</h4></li>
							<li><a href="product?N=Baby Oil"><span>Baby Oil</span></a></li>
                            <li><a href="product?N=Baby Shampoo"><span>Baby Shampoo</span></a></li>
                            <li><a href="product?N=Baby Powder"><span>Baby Powder</span></a></li>
                            <li><a href="product?N=Baby Cream"><span>Baby Cream</span></a></li>
                            <li><a href="product?N=Baby OralCare"><span>Baby OralCare</span></a></li>
                            <li><a href="product?N=Baby Pad"><span>Baby Pad</span></a></li>
                            <li><a href="product?N=Baby Wipes"><span>Baby Wipes</span></a></li>
                    </ul>
                    
                </div>
            </div>
        </li>
        <li class="full-width">
            <span class="top-heading">Household</span>
            <i class="caret"></i>
            <div class="dropdown">
                <div class="dd-inner">
                    <ul class="column">
                        <li><h4>Detergents</h4></li>
							<li><a href="product?N=Liquid Detergent"><span>Liquid Detergent</span></a></li>
                            <li><a href="product?N=Washing Bar"><span>Washing Bar</span></a></li>
                            <li><a href="product?N=Washing Powder"><span>Washing Powder</span></a></li>
							<li class="divider"></li>
							<li><h4>Pooja Needs</h4></li>
							<li><a href="product?N=Agarbati"><span>Agarbati</span></a></li>
                            <li><a href="product?N=Match Box"><span>Match Box</span></a></li>
                            <li><a href="product?N=Pitambari"><span>Pitambari</span></a></li>
                            <li><a href="product?N=Jhuna"><span>Jhuna</span></a></li>
                    </ul>
                    <ul class="column">
                        <li><h4>Cleaners</h4></li>
                        
							<li><a href="product?N=Floor Cleaner"><span>Floor Cleaner</span></a></li>
                            <li><a href="product?N=Glass Cleaner"><span>Glass Cleaner</span></a></li>
                            <li><a href="product?N=Kitchen Cleaner"><span>Kitchen Cleaner</span></a></li>
							<li class="divider"></li>
							<li><h4>Toilet Cleaner</h4></li>
							<li><a href="product?N=Toilet Cleaner"><span>Toilet Cleaner</span></a></li>
                    </ul>
                    <ul class="column">
                        <li><h4>Utencil Cleaner</h4></li>
							<li><a href="product?N=Dish-Wash"><span>Dish Wash Bar & Liquid</span></a></li>
                            <li><a href="product?N=Dish Wash Powder"><span>Dish Wash Powder</span></a></li>
                            <li><a href="product?N=Dish-Wash"><span>Scotch Brite</span></a></li>
							<li class="divider"></li>
							<li><h4>Cleaning Accessories</h4></li>
							<li><a href="product?N=Kitchen Gloves"><span>Kitchen Gloves</span></a></li>
                            <li class='last'><a href="product?N=Brush"><span>Brushes</span></a></li>
                    </ul>
                    <ul class="column">
                        <li><h4>Freshners</h4></li>
							<li><a href="product?N=Air Freshner"><span>Air Freshners</span></a></li>
                            <li><a href="product?N=Repellent"><span>Repellent</span></a></li>
                            <li class="divider"></li>
							<li><h3><a href="product?N=Household"><span>All HouseHold</span></a></h3></li>
                    </ul>
                    
                </div>
            </div>
        </li>
        <li class="full-width">
            <span class="top-heading">Beverages</span>
            <i class="caret"></i>
            <div class="dropdown">
                <div class="dd-inner">
                    <ul class="column">
                        <li><h4>Juice</h4></li>
							<li><a href="product?N=Fruit Juice"><span>Fruit Juice</span></a></li>
							<li class="divider"></li>
							<li><h4>Soft Drink</h4></li>
							<li><a href="product?N=Soft Drinks"><span>Soft Drinks</span></a></li>
                    </ul>
                    <ul class="column">
                        <li><h4>Tea & Coffee</h4></li>
							<li><a href="product?N=Green Tea"><span>Green Tea</span></a></li>
                            <li><a href="product?N=Herbal Tea"><span>Herbal Tea</span></a></li>
                            <li><a href="product?N=Instant Coffee"><span>Instant Coffee</span></a></li>
                            <li><a href="product?N=Organic Coffee"><span>Organic Coffee</span></a></li>
                            <li class="last"><a href="product?N=Tea"><span>Tea</span></a></li>
							<li class="divider"></li>
							<li><h4>Health Drinks</h4></li>
							<li><a href="product?N=Health Drink"><span>Health Drinks</span></a></li>
                            <li><a href="product?N=Energy Drink"><span>Energy Drinks</span></a></li>
                           <li><h3><a href="Catagory?N=Beverages"><span>All Beverages</span></a></h3></li>
                    </ul>
                </div>
            </div>
        </li>
        <li class="full-width">
            <span class="top-heading">Bakery-Diary</span>
            <i class="caret"></i>
            <div class="dropdown">
                <div class="dd-inner">
                    <ul class="column">
                        <li><h4>Dal Pulses</h4></li>
                        <ul>
							<li><a href="product?N=Breads-Cakes"><span>Breads-Cakes</span></a></li>
                            <li class='last'><a href="product?N=Rusk-Khara"><span>Rusk-Khara</span></a></li>
							<li class="divider"></li>
							<li><h4>Diary Products</h4></li>
							<li><a href="product?N=Milk-Dahi"><span>Milk & Dahi</span></a></li>
                            <li><a href="product?N=Lassi"><span>Lassi</span></a></li>
                            <li><a href="product?N=Dairy Whitener"><span>Dairy Whitener</span></a></li>
                            <li class='last'><a href="product?N=Butter-Cheese"><span>Butter & Cheese</span></a></li>
						</ul>
                    </ul>
                    
                    <ul class="column mayHide">
                        
                    </ul>
                </div>
            </div>
        </li>
        <li class="full-width">
            <span class="top-heading">Branded Food</span>
            <i class="caret"></i>
            <div class="dropdown">
                <div class="dd-inner">
                    <ul class="column">
                       <li><h4>Pickle & Jam</h4></li>
							<li><a href="product?N=Pickles"><span>Pickles</span></a></li>
                            <li><a href="product?N=Jam"><span>Jam</span></a></li>
                            <li><a href="product?N=Honey"><span>Honey</span></a></li>
                            <li class="divider"></li>
							<li><h4>Ready To Cook</h4></li>
                            <li><a href="product?N=Papad"><span>Papad</span></a></li>
                            <li><a href="product?N=Soup"><span>Soup</span></a></li>
                            <li><a href="product?N=Vermicelli"><span>Vermicelli</span></a></li>
							<li class="divider"></li>
							<li><h4>Noodles</h4></li>
							<li><a href="product?N=Noodles"><span>Instant Noodles</span></a></li>
                            <li><a href="product?N=Noodles"><span>Chinese Noodles</span></a></li>
                    </ul>
                    <ul class="column">
                        <li><h4>Protein Powder</h4></li>
							<li><a href="product?N=Protein Powder"><span>Protein Powder</span></a></li>
							<li class="divider"></li>
							<li><h4>Biscuit & Cakes</h4></li>
							<li><a href="product?N=Biscuits"><span>Biscuits</span></a></li>
                            <li><a href="product?N=Mixture"><span>Mixture</span></a></li>
                            <li><a href="product?N=Cakes"><span>Cakes</span></a></li>
                            <li class="divider"></li>
                            <li><h4>Sauce & Ketchup</h4></li>
							<li><a href="product?N=Sauce-Ketchup"><span>Sauce & Ketchup</span></a></li>
                    </ul>
                    <ul class="column">
                        <li><h4>Food Flavour & Color</h4></li>
							<li><a href="product?N=Food Flavour"><span>Food Flavour</span></a></li>
                            <li><a href="product?N=Food Color"><span>Food Color</span></a></li>
							<li class="divider"></li>
							<li><h4>Snacks</h4></li>
							<li><a href="product?N=Namkeen"><span>Namkeen</span></a></li>
                            <li><a href="product?N=Chips"><span>Chips</span></a></li>
                            <li class="divider"></li>
                            <li><h4>Chocolates</h4></li>
							<li><a href="brandedfood?N=Chocolates"><span>Milk Chocolate</span></a></li>
                            <li><a href="brandedfood?N=Chocolates"><span>Candy</span></a></li>
                    </ul>
                    <ul class="column">
                        <li><h4>Breakfast Cereals</h4></li>
							<li><a href="product?N=Breakfast Cereals"><span>Breakfast Cereals</span></a></li>
							<li class="divider"></li>
                            <li><h4>Soya Foods</h4></li>
                            <li><a href="product?N=Soya Chunks"><span>Soya Chunks</span></a></li>
							<li><h3><a href="catagory?N=Branded Food"><span>All BrandedFood</span></a></h3></li>
                    </ul>
                    
                    
                </div>
            </div>
        </li>
        <li class="full-width">
            <span class="top-heading">Office Stationary</span>
            <i class="caret"></i>
            <div class="dropdown">
                <div class="dd-inner">
                    <ul class="column">
                       <li><h4>Pen&Pencil</h4></li>
							<li><a href="product?N=Pen"><span>Pen</span></a></li>
                            <li><a href="product?N=Pencil"><span>Pencil</span></a></li>
                            <li><a href="product?N=Marker"><span>Marker</span></a></li>
                            <li class="divider"></li>
							<li><h4>Eraser</h4></li>
                            <li><a href="product?N=Eraser"><span>Eraser</span></a></li>
                            <li><a href="product?N=Sharpner"><span>Sharpner</span></a></li>
                            <li><a href="product?N=Whitener"><span>Whitener</span></a></li>
							<li class="divider"></li>
							<li><h4>Folder & Staples</h4></li>
							<li><a href="product?N=Folder"><span>Folder</span></a></li>
                            <li><a href="product?N=Stapler"><span>Stapler</span></a></li>
                    </ul>
                </div>
            </div>
        </li>
    </ul>
</nav>
</div>

</div>
</div>
<%--<div class="header-bottom">
<div class="container">

</div>
</div>--%>
</header>
<br /><br /><br /><br />
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
<div class="row top-buffer"></div><div class="row top-buffer"></div><div class="row top-buffer"></div><div class="row top-buffer"></div>
<div class="row">
<div class="col-md-1 pull-left"></div>
<div class="col-md-8 pull-left">
<ol class="breadcrumb">
<li><a href="pc">Home</a></li>
<li class="active">ProductList</li>
</ol>
</div>
<div class="col-md-3 hidden-lg hidden-md hidden-sm hidden-xs">
<asp:LinkButton ID="LinkButton1" runat="server" href="my-cart" CssClass="btn btn-success btn-sm">
VIEW CART  <asp:Label ID="Label1" runat="server" CssClass="cartcount" Visible="true" Text="0"></asp:Label></asp:LinkButton>

            <asp:HiddenField ID="HiddenProductName" runat="server"/>
            <asp:HiddenField ID="HiddenBrandName" runat="server"/>
            <asp:HiddenField ID="HiddenCatagoryName" runat="server"/>
            <asp:HiddenField ID="HiddenBrand" runat="server" />
            <asp:HiddenField ID="HiddenSearch" runat="server" />
            <asp:Label ID="LblItemName" runat="server" Visible="false"></asp:Label>
            <asp:Panel ID="PanelAdd" runat="server" Visible="false">
            <div class="alert alert-success" id="success-alert">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            Item Added....
        </div></asp:Panel>
</div>
</div> 
<div class="col-md-12">
<asp:Panel ID="PanelAlert" runat="server" Visible="false">
<div class="alert alert-danger">
<h4 style="text-align:center">Sorry,Product Is Currently Not Available</h4>
</div>
</asp:Panel>
</div>
<div class="row">
<div class="col-xs-3">
</div>
<div class="col-xs-2 filter-column">
<asp:DropDownList ID="DdlSort" runat="server" AutoPostBack="true" CssClass="dropdownfilter" OnSelectedIndexChanged="DdlSort_SelectedIndexChanged"></asp:DropDownList>
</div>
<div class="col-xs-2 filter-column">
<asp:DropDownList ID="DdlBrand" runat="server" AutoPostBack="true" CssClass="dropdownfilter"  OnSelectedIndexChanged="DdlBrand_SelectedIndexChanged"></asp:DropDownList>
</div>   
<div class="col-xs-2 filter-column">
<asp:DropDownList ID="DdlPacket" runat="server" AutoPostBack="true" CssClass="dropdownfilter" OnSelectedIndexChanged="DdlPacket_SelectedindexChanged" ></asp:DropDownList>
 </div>
<div class="col-xs-3">          
</div>
</div><br />
<div class="row">
<div class="col-md-1"></div>
<div class="col-md-10" style="background-color:#fff">
<asp:Label ID="LblMsg" runat="server" Font-Size="20px" Visible="false" Text="Item Is Out Of Stock..."></asp:Label>
<asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatLayout="Flow" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound"
OnItemCreated="DataList1_ItemCreated">
<FooterStyle BackColor="#CCCCCC" ForeColor="Black" />     
<ItemTemplate>
<div class="col-lg-3 col-sm-6 col-xs-6 col-md-4">
<div class="product-image-wrapper">
<div class="single-products">
<div class="productinfo text-center">
<asp:Panel ID="paneloffer" runat="server">
<p> <asp:Label ID="LblOffer" runat="server"  Text='<%#Eval("Product_Offer") %>'></asp:Label></p>
</asp:Panel>
<asp:Image ID="ImageButton1" runat="server" ImageAlign="Middle" CssClass="imgcartitem" ImageUrl='<%# Eval("Product_Image")%>' AlternateText="btbasket.com" /><br />
<asp:Label ID="LblBrand" runat="server" Font-Bold="true" ForeColor="#333" Text='<%#Eval("Product_Brand") %>'></asp:Label>
<asp:Label ID="Lblpid" runat="server" Font-Bold="true" ForeColor="#333" Visible="true" Text='<%#Eval("Product_Id") %>'></asp:Label>
<p class="text2"><asp:Label ID="LblDesc" runat="server"  ForeColor="#17202a" Text='<%#Eval("Product_Description") %>'></asp:Label>:(<asp:Label ID="LblQuantity" runat="server" ForeColor="green" Font-Bold="true" Font-Size="small" Text='<%#Eval("Product_Quantity") %>'></asp:Label>)</p>
<div class="divitemalign">
<div class="itemalign">
<p>
MRP :RS /-<asp:Label ID="LblMrp" runat="server" Font-Size="small" ForeColor="#00b545" Font-Strikeout="true" Text='<%#Eval("Product_MRP") %>'></asp:Label>
<asp:Label ID="LblPrice" runat="server" CssClass="lblround" Text='<%#Eval("Product_Price") %>'></asp:Label>
</p>
<p><asp:Label ID="LblProductName" runat="server" ForeColor="#C70039" Visible="false" Font-Bold="false" Text='<%#Eval("Product_Name") %>'></asp:Label></p>
<p>
<div class="input-group">
Qty :<asp:TextBox ID="TxtNum" runat="server" placeholder="1" CssClass="OtyTextbox" MaxLength="10" TextMode="Number" ></asp:TextBox>
<asp:LinkButton ID="BtnAdd" runat="server" CommandName="AddtoCart" CssClass="btn btn-success btn-sm"><span aria-hidden="true" class="glyphicon glyphicon-shopping-cart"></span>ADD</asp:LinkButton>
</div>
</p>
<p>
<asp:RegularExpressionValidator ID="RegularExpNum" runat="server" ErrorMessage="Only Numbers" Font-Bold="false" Font-Size="X-Small" ControlToValidate="TxtNum" ValidationExpression="^\d{1,2}$"></asp:RegularExpressionValidator>
<asp:Label ID="LblMsg" runat="server" Text="ITEM ADDED | " CssClass="itemaddmsg" Visible="false"></asp:Label> 
<asp:LinkButton ID="lnkdlview" runat="server" CssClass="landing-link" href="my-cart" Visible="false">VIEW CART</asp:LinkButton>
</p>
</div>

</div>
</div>

</div>							
</div>
</div>
</ItemTemplate>
<SelectedItemStyle BackColor="white" Font-Bold="True" ForeColor="White" />
</asp:DataList>
</div>
<div class="col-md-1"></div>  
</div>
<div class="row top-buffer"></div>
</ContentTemplate>  
</asp:UpdatePanel>



<div id="footer">
<div class="footer-top">

<div class="clearfix"></div>
                
            </div>
<div class="footer-widget">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-2">
                            <div class="single-widget">
                                <h2>Service</h2><hr />
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href="MyBazarAdmin/AdminLogin.aspx">Administrator</a></li>
                                    <li><a href="MyBazarAdmin/AdminLogin.aspx">Bill Adjustment</a></li>
                                    <li><a href="contact">Contact Us</a></li>
                                    <li><a href="order-history">Order View</a></li>
                                    <li><a href="feedback">Feedback</a></li>
                                    <li><a href="faq">FAQ</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="single-widget">
                                <h2>Quick Shop</h2><hr />
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href="catagory?N=Grocery">Grocery</a></li>
                                    <li><a href="catagory?N=Personal Care">Personal Care</a></li>
                                    <li><a href="catagory?N=Beverages">Beverages</a></li>
                                    <li><a href="catagory?N=Branded Food">Branded Food</a></li>
                                    <li><a href="catagory?N=Household">Household</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="single-widget">
                                <h2>Policies</h2><hr />
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href="term-and-condition">Terms of Use</a></li>
                                    <li><a href="#">Privacy Policy</a></li>
                                    <li><a href="return-refund">Refund Policy</a></li>
                                    <li><a href="sitemap">Site Map</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="single-widget">
                                <h2>who we are?</h2><hr />
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href="about">About Us</a></li>
                                    <li><a href="contact">Contact Us</a></li>
                                    <li><a href="#">support@btbasket.com</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-3 col-sm-offset-1">
                            <div class="single-widget">
                                <%-- <h2>Social Media</h2>--%>
                                <div class="social-icons">
                                    <ul class="footer-social pull-left">
                                        <li><i class="fa fa-linkedin social-icon linked-in" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-facebook social-icon facebook" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-twitter social-icon twitter" aria-hidden="true"></i></li>
                                        <li><i class="fa fa-google-plus social-icon google" aria-hidden="true"></i></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
<div class="footer-bottom">
<div class="container">
<div class="row float-lt">
<p style="color:white;font-size:small;">Copyright © 2021 BTsoftnet Services. All rights reserved.</p>
</div>
</div>
        </div>

<a id="scrollUp" href="#top" style="position: fixed; z-index: 2147483647; display: block;"><i class="fa fa-angle-up"></i></a>
</div>
</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/jquery-1.8.2.js" type="text/javascript"></script>
    
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/jquery.scrollUp.min.js" type="text/javascript"></script>
<script src="js/price-range.js" type="text/javascript"></script>
<script src="js/jquery.prettyPhoto.js" type="text/javascript"></script>
<script src="js/main.js" type="text/javascript"></script>
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>


<script type="text/javascript">
    $('.add').click(function () {
        $(this).prev().val(+$(this).prev().val() + 1);
    });
    $('.sub').click(function () {
        if ($(this).next().val() > 0) $(this).next().val(+$(this).next().val() - 1);
    });
</script>
<script type="text/javascript">
        jQuery(document).ready(function () {
            $(".dropdown").hover(
                function () {
                    $('.dropdown-menu', this).stop().fadeIn("fast");
                },
                function () {
                    $('.dropdown-menu', this).stop().fadeOut("fast");
                });
        });
 </script>  
<script type="text/javascript">
function autoRefresh_div() {
$(".logo").load("MasterProduct.Master");
}
setInterval('autoRefresh_div()', 4000);
</script>
<script type="text/javascript">
function checkOffset() {
  var a=$(document).scrollTop()+window.innerHeight;
  var b=$('#footer').offset().top;
  if (a<b) {
    $('.brands-name').css('bottom', '10px');
  } else {
    $('.brands-name').css('bottom', (10+(a-b))+'px');
  }
}
$(document).ready(checkOffset);
$(document).scroll(checkOffset);
</script>


</body>
</html>
