﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Landing.aspx.cs" Inherits="Landing"
    MetaKeywords="Online grocery in bhubaneswar , grocery delivery in bhubaneswar , lowest price grocery in bhubaneswar , online grocery" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Online grocery delivery in bhubaneswar - btbasket.com</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="keywords" content="Online grocery in bhubaneswar , grocery delivery in bhubaneswar , lowest price grocery in bhubaneswar , online grocery" />
    <meta name="description" content="The fastest online grocery store in bhubaneswar. btbasket is an online convinience store for all your daily needs" />
    <link rel="icon" type="image/x-icon" href="newlogo.png" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />

    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/main1.css" rel="stylesheet" type="text/css" />
    <link href="css/Style1.css" rel="stylesheet" type="text/css" />
    <link href="css/responsive.css" rel="stylesheet" type="text/css" />

</head>
<!--/head-->
<body onload="javascript:HideProgressBar()">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
        </asp:ScriptManager>

        <header id="header sticky">
<div class="header-middle"><!--header-middle-->
<div class="container-fluid">
<div class="row row-centred">
<div class="col-lg-3 col-md-3 col-sm-6 col-xs-4 mobile-logo">
<div class="logo">
<a href="pc"><img src="images/home/btnewlogo2.png" style="width:170px;height:60px" alt="btbasket-logo" class="headerimage" /></a>
</div>
</div>
<div class="col-lg-6 col-md-6 col-sm-6 col-xs-8 mobile-search">
<div class="input-group">
<asp:TextBox ID="TxtSearch" runat="server" class="form-control" ClientIDMode="Static"  placeholder="Search Product From More Than 7000+ SKU's"></asp:TextBox>
<span class="input-group-btn">
<asp:LinkButton ID="btnRandom" runat="server" class="btn btn-success" OnClick="btnRandom_Click">
<span class="glyphicon glyphicon-search"></span>Search
</asp:LinkButton>
</span>
</div>

</div>
<%--<div class="col-md-4 hidden-lg hidden-md">
</div>--%>
<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 text-right hideinmobile">
<a href="#" class="masterlink" data-toggle="modal" data-target="#myModal1" >Signin & Signup</a>
<%--<a href="#" class="masterlink" data-toggle="modal" data-target="#myModal1" >REGISTER</a>--%>
</div>
</div>
</div>
</div>
<div class="header-bottom" id="stcikyheadr"><!--header-bottom-->
<%--<div class="row hidden-lg hidden-md">
<a href="#" class="masterlink" data-toggle="modal" data-target="#myModal1" >Login & Signup</a>
<%--<a href="#" class="masterlink" data-toggle="modal" data-target="#myModal1" >REGISTER</a>
</div>--%>



    <nav class="navbar navbar-expand-lg navbar-dark custm-navbar">
  <%--<a class="navbar-brand" href="#">Mega Dropdown</a>--%>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-6 col-xs-6 mobilenavbtn">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                      </button>
                </div>
                 <div class="col-sm-6 col-xs-6 text-right showinmobile">
<a href="#" class="masterlink" data-toggle="modal" data-target="#myModal1" >Signin & Signup</a>
<%--<a href="#" class="masterlink" data-toggle="modal" data-target="#myModal1" >REGISTER</a>--%>
</div>
                <%--<div class="row hidden-lg hidden-md">
<a href="#" class="masterlink" data-toggle="modal" data-target="#myModal1" >Login & Signup</a>
<%--<a href="#" class="masterlink" data-toggle="modal" data-target="#myModal1" >REGISTER</a>
</div>--%>
            </div>
        </div>
  
       

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      
      <!--Grocery & Staples-->
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="catagory?N=Grocery"  role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Grocery & Staples  <i class="caret"></i>
        </a>
        <div class="dropdown-menu" >
          
          <div class="container-fluid">
            <div class="row">
              <div class="col">
                <span class="text-uppercase text-success nav-title">Dal Pulses</span>
                  <ul class="nav flex-column">
							<li><a href="product?N=Toor Dal"><span>Toor Dal(Harada Dali)</span></a></li>
                            <li><a href="product?N=Buta Dali"><span>Buta Dal</span></a></li>
                            <li><a href="product?N=Masoor Dal"><span>Redgram Dal(Masoor Dali)</span></a></li>
                            <li><a href="product?N=Moong Dal"><span>Moong Dal(Muga Dali)</span></a></li>
                            <li><a href="product?N=Kabuli-Buta"><span>Kabuli-Buta</span></a></li>
                            <li><a href="product?N=Sola-Buta"><span>Sola-Buta</span></a></li>
                            <li><a href="product?N=Matar"><span>Matar</span></a></li>
						</ul>
                    
              </div>
                <div class="col">
                <span class="text-uppercase text-success nav-title">Edible Oil & Ghee</span>
                  <ul class="nav flex-column">
							<li><a href="product?N=Mustard Oil"><span>Mustard Oil</span></a></li>
                            <li><a href="product?N=Refined Oil"><span>Refined Oil</span></a></li>
                            <li><a href="product?N=Ricebran Oil"><span>Ricebran Oil</span></a></li>
                            <li><a href="product?N=Olive Oil"><span>Olive Oil</span></a></li>
                            <li class='last'><a href="product?N=Ghee"><span>Ghee</span></a></li>
						</ul>
                    <span class="text-uppercase text-success nav-title">Our Traditional Odia Foods</span>
                     <ul class="nav flex-column">
							<li><a href="product?N=Spices-Masala"><span>Kolatha</span></a></li>
                            <li><a href="product?N=Whole-Spices"><span>Mandia</span></a></li>
                            <li><a href="product?N=Whole-Spices"><span>Gota Haladi</span></a></li>
                            <li><a href="product?N=Whole-Spices"><span>Desi Chatua</span></a></li>
						</ul>
                    
              </div>

                <div class="col">
                    <span class="text-uppercase text-success nav-title">Salt-Sugar</span>
                      <ul class="nav flex-column">
							    <li><a href="product?N=Salt"><span>Salt</span></a></li>
                                <li><a href="product?N=Sugar"><span>Sugar</span></a></li>
                                <li class='last'><a href="product?N=Molases"><span>Molases(Guda)</span></a></li>
						    </ul>
                        <span class="text-uppercase text-success nav-title">Flour-Sooji</span>
                         <ul class="nav flex-column">
							     <li><a href="product?N=Besan"><span>Besan</span></a></li>
                                <li><a href="product?N=Maida"><span>Maida</span></a></li>
                                <li><a href="product?N=Sooji"><span>Sooji</span></a></li>
                                <li><a href="product?N=Atta"><span>Wheat Flour(Atta)</span></a></li>
                                <li><a href="product?N=Dalia"><span>Dalia</span></a></li>
                                <li><a href="product?N=Sagoo"><span>Sagoo</span></a></li>
							    <li><a href="product?N=Cornflour"><span>Cornflour</span></a></li>
						    </ul>
                    </div>

                 <div class="col">
                    <span class="text-uppercase text-success nav-title">Dal Pulses</span>
                      <ul class="nav flex-column">
							    <li><a href="product?N=Raw Rice"><span>Raw Rice(Arua Chaula)</span></a></li>
                                <li><a href="product?N=Boiled Rice"><span>Boiled Rice(Usuna Chaula)</span></a></li>
                                <li><a href="product?N=Basmati Rice"><span>Basmati Rice</span></a></li>
                                <li><a href="product?N=Kheer Rice"><span>Kheer Rice</span></a></li>
                                <li class="last"><a href="product?N=Flatten Rice"><span>Chuda(Poha)</span></a></li>
						    </ul>
                        <span class="text-uppercase text-success nav-title">Dry Fruits-Nuts</span>
                         <ul class="nav flex-column">
							     <li><a href="product?N=Almond"><span>Almond</span></a></li>
                            <li><a href="product?N=Cashew"><span>Cashew</span></a></li>
                            <li><a href="product?N=Kismis"><span>Kismis</span></a></li>
                            <li><a href="product?N=Charmagaj"><span>Charmagaj</span></a></li>
						    </ul>
                    </div>

                 <div class="col">
                    <span class="text-uppercase text-success nav-title">Spices & Masala</span>
                      <ul class="nav flex-column">
							 <li><a href="product?N=Spices-Masala"><span>Masala</span></a></li>
                            <li class="last"><a href="product?N=Whole-Spices"><span>Whole Spices</span></a></li>
                          <li><h3><a href="product?N=Grocery"><span>All Grocery</span></a></h3></li>
					</ul>
                  </div>

              
            
            </div>
          </div>
          <!--  /.container  -->


        </div>
      </li>
        <!-- Personal Care-->

        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="catagory?N=Personal Care" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Personal Care
        </a>
        <div class="dropdown-menu" >
          
          <div class="container-fluid">
            <div class="row">
              <div class="col">
                <span class="text-uppercase text-success nav-title">Hair Care</span>
                  <ul class="nav flex-column">
							<li><a href="product?N=Hair Oil"><span>Hair Oil</span></a></li>
                            <li><a href="product?N=Hair Conditioner"><span>Hair Conditioner</span></a></li>
                            <li><a href="product?N=Hair Color"><span>Hair Colour-Dyes</span></a></li>
                            <li class="last"><a href="product?N=Shampoo"><span>Shampoo</span></a></li>
						</ul>

                  <span class="text-uppercase text-success nav-title">Personal Hygiene</span>
                  <ul class="nav flex-column">
							<li><a href="product?N=Body Wash"><span>Body Wash</span></a></li>
                            <li><a href="product?N=Face Wash"><span>Face Wash</span></a></li>
                            <li><a href="product?N=Hand Wash"><span>Hand Wash</span></a></li>
                            <li><a href="product?N=Soap"><span>Liquid Soap-Bars</span></a></li>
                            <li><a href="product?N=Face Mask"><span>Face Mask</span></a></li>
						</ul>
                    
              </div>
                <div class="col">
                <span class="text-uppercase text-success nav-title">Oral Care</span>
                  <ul class="nav flex-column">
							<li><a href="product?N=Mouth Wash"><span>Mouth Wash</span></a></li>
                            <li><a href="product?N=Tooth Paste"><span>Tooth Paste</span></a></li>
                            <li class="last"><a href="product?N=Tooth Brush"><span>Tooth Brush</span></a></li>
				    </ul>
                    <span class="text-uppercase text-success nav-title">Deos & perfumes</span>
                     <ul class="nav flex-column">
							<li class="last"><a href="product?N=Deos-Perfumes"><span>Deos-Perfumes</span></a></li>
					</ul>
                        <span class="text-uppercase text-success nav-title">Nail Care</span>
                     <ul class="nav flex-column">
							<li><a href="product?N=Nail Polish"><span>Nail Polish</span></a></li>
                            <li class="last"><a href="product?N=Nail Remover"><span>Nail Remover</span></a></li>
						</ul>
                      <span class="text-uppercase text-success nav-title">Sanitary Needs</span>
                     <ul class="nav flex-column">
							<li><a href="product?N=Shaving Cream-Lotion"><span>Shaving Cream-Lotion</span></a></li>
                            <li><a href="product?N=Shaving Razor-Blade"><span>Shaving Razor-Blade</span></a></li>
						</ul>
              </div>

                <div class="col">
                    <span class="text-uppercase text-success nav-title">Skin Care</span>
                      <ul class="nav flex-column">
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
                                <li class="last"><a href="product?N=Serum"><span>Serum</span></a></li>
                          <li><h3><a href="product?N=Personal Care"><span>All PersonalCare</span></a></h3></li>
					    
                    </ul>
                       
                    </div>

                 <div class="col">
                    <span class="text-uppercase text-success nav-title">Baby Care</span>
                      <ul class="nav flex-column">
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
          </div>
          <!--  /.container  -->


        </div>
      </li>
     
        <!--Household-->
        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="catagory?N=Household" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Household
        </a>
        <div class="dropdown-menu megamenu" >
          
          <div class="container-fluid">
            <div class="row">
              <div class="col">
                <span class="text-uppercase text-success nav-title">Detergents</span>
                  <ul class="nav flex-column">
							<li><a href="product?N=Liquid Detergent"><span>Liquid Detergent</span></a></li>
                            <li><a href="product?N=Washing Bar"><span>Washing Bar</span></a></li>
                            <li class="last"><a href="product?N=Washing Powder"><span>Washing Powder</span></a></li>
						</ul>

                  <span class="text-uppercase text-success nav-title">Pooja Needs</span>
                  <ul class="nav flex-column">
							<li><a href="product?N=Agarbati"><span>Agarbati</span></a></li>
                            <li><a href="product?N=Match Box"><span>Match Box</span></a></li>
                            <li><a href="product?N=Pitambari"><span>Pitambari</span></a></li>
                            <li><a href="product?N=Jhuna"><span>Jhuna</span></a></li>
				   </ul>
              </div>
                <div class="col">
                <span class="text-uppercase text-success nav-title">Cleaners</span>
                  <ul class="nav flex-column">
							<li><a href="product?N=Floor Cleaner"><span>Floor Cleaner</span></a></li>
                            <li><a href="product?N=Glass Cleaner"><span>Glass Cleaner</span></a></li>
                            <li class="last"><a href="product?N=Kitchen Cleaner"><span>Kitchen Cleaner</span></a></li>
				    </ul>
                    <span class="text-uppercase text-success nav-title">Toilet Cleaner</span>
                     <ul class="nav flex-column">
							<li><a href="product?N=Toilet Cleaner"><span>Toilet Cleaner</span></a></li>
					</ul>
                       
              </div>

                <div class="col">
                    <span class="text-uppercase text-success nav-title">Utencil Cleaner</span>
                      <ul class="nav flex-column">
							<li><a href="product?N=Dish-Wash"><span>Dish Wash Bar & Liquid</span></a></li>
                            <li><a href="product?N=Dish Wash Powder"><span>Dish Wash Powder</span></a></li>
                            <li class="last"><a href="product?N=Dish-Wash"><span>Scotch Brite</span></a></li>
					    </ul>
                    <span class="text-uppercase text-success nav-title">Cleaning Accessories</span>
                      <ul class="nav flex-column">
							<li><a href="product?N=Kitchen Gloves"><span>Kitchen Gloves</span></a></li>
                            <li class='last'><a href="product?N=Brush"><span>Brushes</span></a></li>
					    </ul>
                       
                    </div>

                 <div class="col">
                    <span class="text-uppercase text-success nav-title">Freshners</span>
                      <ul class="nav flex-column">
							    <li><a href="product?N=Air Freshner"><span>Air Freshners</span></a></li>
                            <li class="last"><a href="product?N=Repellent"><span>Repellent</span></a></li>
                          <li><h3><a href="product?N=Household"><span>All HouseHold</span></a></h3></li>
						</ul>
                    </div>
              
            
            </div>
          </div>
          <!--  /.container  -->


        </div>
      </li>

        <!--Beverages-->
        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="catagory?N=Beverages" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Beverages
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          
          <div class="container-fluid">
            <div class="row">
              <div class="col">
                <span class="text-uppercase text-success nav-title">Juice</span>
                  <ul class="nav flex-column">
							<li class="last"><a href="product?N=Fruit Juice"><span>Fruit Juice</span></a></li>
						</ul>

                  <span class="text-uppercase text-success nav-title">Soft Drink</span>
                  <ul class="nav flex-column">
							<li><a href="product?N=Soft Drinks"><span>Soft Drinks</span></a></li>
				   </ul>
              </div>
                <div class="col">
                <span class="text-uppercase text-success nav-title">Tea & Coffee</span>
                  <ul class="nav flex-column">
							<li><a href="product?N=Green Tea"><span>Green Tea</span></a></li>
                            <li><a href="product?N=Herbal Tea"><span>Herbal Tea</span></a></li>
                            <li><a href="product?N=Instant Coffee"><span>Instant Coffee</span></a></li>
                            <li><a href="product?N=Organic Coffee"><span>Organic Coffee</span></a></li>
                            <li class="last"><a href="product?N=Tea"><span>Tea</span></a></li>
				    </ul>
                    <span class="text-uppercase text-success nav-title">Health Drinks</span>
                     <ul class="nav flex-column">
							<li><a href="product?N=Health Drink"><span>Health Drinks</span></a></li>
                            <li><a href="product?N=Energy Drink"><span>Energy Drinks</span></a></li>
                           <li><h3><a href="product?N=Beverages"><span>All Beverages</span></a></h3></li>
					</ul>
                       
              </div>

                
              
            
            </div>
          </div>
          <!--  /.container  -->


        </div>
      </li>

         <!--Bakery-Diary-->
        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Bakery-Diary
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          
          <div class="container-fluid">
            <div class="row">
              <div class="col-sm-6">
                <span class="text-uppercase text-success nav-title">Breads</span>
                  <ul class="nav flex-column">
							<li><a href="product?N=Breads-Cakes"><span>Breads-Cakes</span></a></li>
                            <li class='last'><a href="product?N=Rusk-Khara"><span>Rusk-Khara</span></a></li>
						</ul>

                  <span class="text-uppercase text-success nav-title">Diary Products</span>
                  <ul class="nav flex-column">
							<li><a href="product?N=Milk"><span>Milk</span></a></li>
                            <li><a href="product?N=Dahi"><span>Dahi</span></a></li>
                            <li><a href="product?N=Lassi"><span>Lassi</span></a></li>
                            <li><a href="product?N=Dairy Whitener"><span>Dairy Whitener</span></a></li>
                            <li><a href="product?N=Butter-Cheese"><span>Butter & Cheese</span></a></li>
				   </ul>
              </div>
              
            
            </div>
          </div>
          <!--  /.container  -->

        </div>
      </li>

         <!--Branded Food-->
        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Branded Food
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          
          <div class="container-fluid">
            <div class="row">
              <div class="col">
                <span class="text-uppercase text-success nav-title">Pickle & Jam</span>
                  <ul class="nav flex-column">
							<li><a href="product?N=Pickles"><span>Pickles</span></a></li>
                            <li><a href="product?N=Jam"><span>Jam</span></a></li>
                            <li class="last"><a href="product?N=Honey"><span>Honey</span></a></li>
						</ul>

                  <span class="text-uppercase text-success nav-title">Ready To Cook</span>
                  <ul class="nav flex-column">
							<li><a href="product?N=Papad"><span>Papad</span></a></li>
                            <li><a href="product?N=Soup"><span>Soup</span></a></li>
                            <li class="last"><a href="product?N=Vermicelli"><span>Vermicelli</span></a></li>
				   </ul>
                   <span class="text-uppercase text-success nav-title">Noodles</span>
                  <ul class="nav flex-column">
							<li><a href="product?N=Noodles"><span>Instant Noodles</span></a></li>
                            <li><a href="product?N=Noodles"><span>Chinese Noodles</span></a></li>
				   </ul>
              </div>

                 <div class="col">
                <span class="text-uppercase text-success nav-title">Protein Powder</span>
                  <ul class="nav flex-column">
							<li class="last"><a href="product?N=Protein Powder"><span>Protein Powder</span></a></li>
						</ul>

                  <span class="text-uppercase text-success nav-title">Biscuit & Cakes</span>
                  <ul class="nav flex-column">
							<li><a href="product?N=Biscuits"><span>Biscuits</span></a></li>
                            <li><a href="product?N=Mixture"><span>Mixture</span></a></li>
                            <li class="last"><a href="product?N=Cakes"><span>Cakes</span></a></li>
				   </ul>
                   <span class="text-uppercase text-success nav-title">Sauce & Ketchup</span>
                  <ul class="nav flex-column">
							<li><a href="product?N=Sauce-Ketchup"><span>Sauce & Ketchup</span></a></li>
				   </ul>
              </div>


                <div class="col">
                <span class="text-uppercase text-success nav-title">Food Flavour & Color</span>
                  <ul class="nav flex-column">
							<li><a href="product?N=Food Flavour"><span>Food Flavour</span></a></li>
                            <li class="last"><a href="product?N=Food Color"><span>Food Color</span></a></li>
						</ul>

                  <span class="text-uppercase text-success nav-title">Snacks</span>
                  <ul class="nav flex-column">
							<li><a href="product?N=Namkeen"><span>Namkeen</span></a></li>
                            <li class="last"><a href="product?N=Chips"><span>Chips</span></a></li>
				   </ul>
                   <span class="text-uppercase text-success nav-title">Chocolates</span>
                  <ul class="nav flex-column">
							<li><a href="product?N=Chocolates"><span>Milk Chocolate</span></a></li>
                            <li><a href="product?N=Chocolates"><span>Candy</span></a></li>
				   </ul>
              </div>

                <div class="col">
                <span class="text-uppercase text-success nav-title">Breakfast Cereals</span>
                  <ul class="nav flex-column">
							<li class="last"><a href="product?N=Breakfast Cereals"><span>Breakfast Cereals</span></a></li>
						</ul>

                  <span class="text-uppercase text-success nav-title">Soya Foods</span>
                  <ul class="nav flex-column">
							<li class="last"><a href="product?N=Soya Chunks"><span>Soya Chunks</span></a></li>
							<li><h3><a href="product?N=Branded Food"><span>All BrandedFood</span></a></h3></li>
				   </ul>
                   
              </div>

              
            
            </div>
          </div>
          <!--  /.container  -->


        </div>
      </li>

         <!--Office Stationary-->
        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Office Stationary
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          
          <div class="container">
            <div class="row">
              <div class="col">
                <span class="text-uppercase text-success nav-title">Pen&Pencil</span>
                  <ul class="nav flex-column">
							<li><a href="product?N=Pen"><span>Pen</span></a></li>
                            <li><a href="product?N=Pencil"><span>Pencil</span></a></li>
                            <li class="last"><a href="product?N=Marker"><span>Marker</span></a></li>
						</ul>

                  <span class="text-uppercase text-success nav-title">Eraser</span>
                  <ul class="nav flex-column">
							 <li><a href="product?N=Eraser"><span>Eraser</span></a></li>
                            <li><a href="product?N=Sharpner"><span>Sharpner</span></a></li>
                            <li class="last"><a href="product?N=Whitener"><span>Whitener</span></a></li>
				   </ul>
                   <span class="text-uppercase text-success nav-title">Folder & Staples</span>
                  <ul class="nav flex-column">
							<li><a href="product?N=Folder"><span>Folder</span></a></li>
                            <li><a href="product?N=Stapler"><span>Stapler</span></a></li>
                            <li><h3><a href="product?N=Office Stationary"><span>All Office Items</span></a></h3></li>
				   </ul>
              </div>
              
            
            </div>
          </div>
          <!--  /.container  -->


        </div>
      </li>


    </ul>
   
  </div>


</nav>

  

</div>
</header>

        <div id="myModal1" class="modal fade" role="dialog" data-backdrop="static">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3 style="text-align: center; font-size: 20px; text-transform: lowercase">btbasket sign in - sign up </h3>
                        <asp:Panel ID="PanelAlert" runat="server" Visible="false">
                        </asp:Panel>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <asp:UpdatePanel ID="up" runat="server">
                        <ContentTemplate>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card">
                                            <asp:HiddenField ID="Hiddenmail" runat="server" Value="N/A" />
                                            <asp:HiddenField ID="Hiddenname" runat="server" Value="N/A" />
                                            <asp:HiddenField ID="Hiddenpin" runat="server" Value="11111" />
                                            <asp:HiddenField ID="Hiddenaddress" runat="server" Value="N/A" />
                                            <div class="card-body">
                                                <asp:Panel ID="PanelLogin" runat="server" DefaultButton="BtnLogin">
                                                    <div class="form-group">
                                                        <asp:TextBox ID="TxtMobile" CssClass="form-control" runat="server" placeholder="Mobile Number"></asp:TextBox>
                                                        <%--<asp:RequiredFieldValidator ID="RequiredMail" runat="server" ValidationGroup="login" CssClass="text-danger" ControlToValidate="TxtMobile" ErrorMessage="Mobile Number Required"></asp:RequiredFieldValidator>            --%>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:TextBox ID="TxtPassword" CssClass="form-control" runat="server" TextMode="Password" placeholder="Enter Password Here"></asp:TextBox>
                                                        <%--<asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ValidationGroup="login" CssClass="text-danger" ControlToValidate="TxtPassword" ErrorMessage="Password Required"></asp:RequiredFieldValidator>--%>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:Label ID="Lbllogmsg" runat="server" Text="Mobile Or Password Is Incorrect.." CssClass="label label-danger" Visible="false"></asp:Label><br />
                                                        <asp:Button ID="BtnLogin" runat="server" Text="LOGIN" TabIndex="0" OnClientClick="return userValid();" CssClass="btn btn-success btn-lg btn-block" data-toggle="tooltip" OnClick="BtnLogin_Click"></asp:Button><br />

                                                        <div class="form-group">
                                                            <a href="password-recovery" class="landing-link" target="_blank">Forget Password ?</a></strong> |
                                                            <asp:LinkButton ID="LnkShow" CssClass="landing-link" runat="server" OnClick="LnkShow_Click"><strong>New To btbasket ? Register</strong> </asp:LinkButton>
                                                        </div>
                                                    </div>
                                                </asp:Panel>

                                                <asp:Panel ID="PanelRegister" runat="server" DefaultButton="BtnRegister" Visible="false">
                                                    <div class="form-group" id="dvProgressBar" style="align-items: center; visibility: hidden;">
                                                        <img src="images/home/proce.gif" style="height: 20px; width: 30px;" alt="btbasket-proessimg" />
                                                    </div>
                                                    <div class="form-group>">
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:TextBox ID="TxtPhone" CssClass="form-control" runat="server" placeholder="Mobile Number"></asp:TextBox>
                                                        <asp:RegularExpressionValidator ID="RegularExpMob" runat="server" ValidationGroup="regis" ErrorMessage="Only Mobile Number..." ControlToValidate="TxtPhone" ValidationExpression="^[7-9][0-9](\s){0,1}(\-){0,1}(\s){0,1}[0-9]{1}[0-9]{7}$"></asp:RegularExpressionValidator>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:TextBox ID="Txtotp" CssClass="form-control" runat="server" placeholder="OTP" Visible="false" AutoPostBack="true" MaxLength="4"></asp:TextBox>
                                                        <asp:TextBox ID="TxtEmail" CssClass="form-control" runat="server" placeholder="Email ID Here" Visible="false"></asp:TextBox>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionEmail" runat="server" ValidationGroup="regis" ErrorMessage="Only Email ID..." ControlToValidate="TxtEmail" ValidationExpression="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?"></asp:RegularExpressionValidator>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:HiddenField ID="Hiddenotp" runat="server" />
                                                        <%--<asp:Label ID="Label1" runat="server"></asp:Label>--%>
                                                        <span id="TimerDiv" style="display: none; font-size: 14px;">
                                                            <span id="timerLabel1">Resends in </span>
                                                            <span id="timerLabel">100</span>
                                                            <span id="timerLabel2">seconds</span>
                                                        </span>

                                                        <asp:Button ID="Btnotp" runat="server" ValidationGroup="regis" Text="CONTINUE" CssClass="btn btn-success Btnotp" CausesValidation="false" OnClick="Btnotp_Click" OnClientClick="javascript:ShowProgressBar()" />
                                                        <asp:Button ID="Btnverify" runat="server" Visible="false" ValidationGroup="regis" CssClass="btn btn-success" Text="Verify" OnClick="Btnverify_Click" OnClientClick="javascript:HideTimer()" />
                                                        <asp:Label ID="Lblmsg" runat="server" CssClass="label label-default"></asp:Label>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:TextBox ID="TxtUname" CssClass="form-control" runat="server" placeholder="USER NAME" Visible="false"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="regis" CssClass="text-danger" ControlToValidate="TxtUname" ErrorMessage="Username Required"></asp:RequiredFieldValidator>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:TextBox ID="TxtPwd" CssClass="form-control" runat="server" TextMode="Password" placeholder="Password" Visible="false"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="regis" CssClass="text-danger" ControlToValidate="TxtPwd" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:Button ID="BtnRegister" CssClass="btn btn-success btn-lg btn-block" runat="server" ValidationGroup="regis" TabIndex="1" Visible="false" Text="Register" OnClick="BtnRegister_Click" />
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:LinkButton ID="Lnkregis" runat="server" CssClass="landing-link" OnClick="Lnkregis_Click">Already Have An Account ? Sign In</asp:LinkButton>
                                                    </div>
                                                    <asp:Panel ID="Panelmsg" runat="server" Visible="false">
                                                        <div class="alert alert-warning">
                                                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                                            <h4>You Are Registered...Kindly Login</h4>
                                                        </div>
                                                    </asp:Panel>
                                                </asp:Panel>

                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>

                </div>
            </div>
        </div>


        <div id="home-slider" class="carousel slide" data-ride="carousel">

            <!-- Indicators -->
            <%--<ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>--%>

            <!-- The slideshow -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <a href="product?N=Tresseme">
                        <img src="images/Banner/banner-tresemme.jpg" alt="btbasket-cadbury" width="100%" /></a>
                </div>
                <div class="carousel-item">
                    <a href="beverage?N=Instant Coffee">
                        <img src="images/Banner/nescafe-banner.png" alt="btbasket-coffee" width="100%" /></a>
                </div>
                <div class="carousel-item">
                    <a href="product?N=Pears">
                        <img src="images/Banner/dove-banner-carousel.jpg" alt="btbasket-dove" width="100%" /></a>
                </div>
                <div class="carousel-item">
                    <a href="product?N=Spices-Masala">
                        <img src="images/Banner/masala-banner.jpg" alt="btbasket-masala" width="100%" /></a>
                </div>

            </div>

            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#home-slider" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#home-slider" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>

        </div>

        <div class="down-buffer1">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-sm-3 col-xs-6">
                        <div class="single-promo promo1">
                            <i class="fa famasterpage fa-refresh"></i>
                            <p class="pmaster">Easy Return..</p>
                        </div>
                    </div>
                    <div class="col-sm-3 col-xs-6">
                        <div class="single-promo promo2">
                            <i class="fa famasterpage fa-truck"></i>
                            <p class="pmaster">Free shipping over Rs.500/-</p>
                        </div>
                    </div>
                    <div class="col-sm-3 col-xs-6">
                        <div class="single-promo promo3">
                            <i class="fa famasterpage fa-rupee"></i>
                            <p class="pmaster">Price below MRP</p>
                        </div>
                    </div>
                    <div class="col-sm-3 col-xs-6">
                        <div class="single-promo promo4">
                            <i class="fa famasterpage fa-gift"></i>
                            <p class="pmaster">Over 7000+ Products</p>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <div class="top-buffer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div>
                            <%--<a href="catagory?N=Household"><h2 class="title text-center">Personal Care</h2></a>--%>
                            <a href="product?N=Personal Care" class="home-block" style="background-color: #f34991; background-image: url(../images/landingpage-banner/skin-care-banner.jpg)">Personal care</a>
                        </div>

                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div>
                            <%--<a href="catagory?N=Household"><h2 class="title text-center">Household Items</h2></a>--%>
                            <a href="product?N=Household" class="home-block" style="background-color: #D3D3D3; background-image: url(../images/landingpage-banner/household-banner.jpg)">Household Items</a>
                        </div>


                    </div>
                    <div class="col-md-4  col-sm-6 col-xs-12">
                        <div>
                            <%--<a href="beverage?N=Tea"><h2 class="title text-center">Tea & Coffee</h2></a>--%>
                            <a href="product?N=Tea" class="home-block" style="background-color: #f19f30; background-image: url(../images/home/Tea-Coffee-Banner.jpg)">Tea & Coffee</a>
                        </div>

                    </div>

                    <div class="col-md-4  col-sm-6 col-xs-12">
                        <div>
                            <%--<a href="bread-bakery?N=Dairy Whitener"><h2 class="title text-center">Dairy Whiteners</h2></a>--%>
                            <a href="product?N=Grocery" class="home-block" style="background-color: #a690dc; background-image: url(../images/home/Masala-Banner.jpg)">Grocery & Staples</a>
                        </div>

                    </div>
                    <div class="col-md-4  col-sm-6 col-xs-12">
                        <div>
                            <%--<a href="catagory?N=Branded Food"><h2 class="title text-center">Branded Foods</h2></a>--%>
                            <a href="product?N=Branded Food" class="home-block" style="background-color: #00b545; background-image: url(../images/landingpage-banner/branded-food-banner.jpg)">Branded Foods</a>
                        </div>

                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div>
                            <%--<a href="Monsoonfood"><h2 class="title text-center">Monsoon Foods </h2></a>--%>
                            <a href="product?N=Baby Oil" class="home-block" style="background-color: #95957e; background-image: url(../images/landingpage-banner/babyproduct-banner.jpg)">Baby Zone</a>
                        </div>

                    </div>
                </div>
            </div>

        </div>



        <div class="section145 brandsection">
            <div class="container-fluid">
                <div class="brandstore">
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="main-title-tt">
                                <div class="main-title-left">
                                    <h2>Brand Store</h2>
                                </div>
                                <a href="brand" class="see-more-btn">See All</a>
                            </div>
                        </div>


                        <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
                            <div class="item">
                                <a href="product?N=Tata" class="brand-link">Tata</a>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-3  col-sm-4 col-xs-6">
                            <div class="item">
                                <a href="product?N=Fortune" class="brand-link">Fortune</a>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-3  col-sm-4 col-xs-6">
                            <div class="item">
                                <a href="product?N=Freedom" class="brand-link">Freedom</a>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
                            <div class="item">
                                <a href="product?N=Rista" class="brand-link">Rista</a>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
                            <div class="item">
                                <a href="product?N=Ruchi" class="brand-link">Ruchi</a>
                            </div>
                        </div>

                        <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
                            <div class="item">
                                <a href="product?N=Grihasthi" class="brand-link">Grihasthi</a>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-3  col-sm-4 col-xs-6">
                            <div class="item">
                                <a href="product?N=Dove" class="brand-link">Dove</a>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
                            <div class="item">
                                <a href="product?N=Cinthol" class="brand-link">Cinthol</a>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
                            <div class="item">
                                <a href="product?N=Pantene" class="brand-link">Pantene</a>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-3  col-sm-4 col-xs-6">
                            <div class="item">
                                <a href="product?N=Lux" class="brand-link">Lux</a>

                            </div>
                        </div>

                        <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
                            <div class="item">
                                <a href="product?N=Axe" class="brand-link">Axe</a>
                            </div>
                        </div>

                        <div class="col-lg-2 col-md-3  col-sm-4 col-xs-6">
                            <div class="item">
                                <a href="product?N=Amul" class="brand-link">Amul</a>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
                            <div class="item">
                                <a href="product?N=Britannia" class="brand-link">Britannia</a>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
                            <div class="item">
                                <a href="product?N=Himalaya" class="brand-link">Himalaya</a>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
                            <div class="item">
                                <a href="product?N=Patanjali" class="brand-link">Patanjali</a>
                            </div>
                        </div>

                        <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
                            <div class="item">
                                <a href="product?N=Air Wick" class="brand-link">Garnier</a>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
                            <div class="item">
                                <a href="product?N=Patanjali" class="brand-link">Homefills</a>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
                            <div class="item">
                                <a href="product?N=Air Wick" class="brand-link">India Gate</a>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
                            <div class="item">
                                <a href="product?N=Patanjali" class="brand-link">Pears</a>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
                            <div class="item">
                                <a href="product?N=Air Wick" class="brand-link">India Gate</a>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
                            <div class="item">
                                <a href="product?N=Patanjali" class="brand-link">Mothers</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>


        <div class="divoffer">
            <div class="container-fluid">
                <div class="row">

                    <div class=" col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="card offerpanel">
                            <div class="card-body">

                                <a href="btexclusive?N=Shampoo">
                                    <img src="images/Offer/patanjali-herbal-items.jpg" alt="btbasket-dove" class="shadow1" />
                                </a>
                            </div>
                            <div class="card-footer panel-footerhome1">
                                <a href="btexclusive?N=Shampoo">EXPLORE PATANJALI FROM BTBASKET....
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="card offerpanel1">
                            <div class="card-body">
                                <a href="btexclusive?N=Repellent">
                                    <img src="images/Offer/kids-food-product.jpg" alt="btbasket-goodknight" class="shadow1" />
                                </a>
                            </div>
                            <div class="card-footer panel-footerhome1">
                                <a href="btexclusive?N=Repellent">KIDS ZONE...
                                </a>
                            </div>

                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6  col-sm-6 col-xs-12">
                        <div class="card offerpanel2">
                            <div class="card-body">
                                <a href="btexclusive?N=Namkeen">
                                    <img src="images/Offer/village-food-product.jpg" alt="btbasket-soanpapdi" class="shadow1" />
                                </a>
                            </div>
                            <div class="card-footer panel-footerhome1">
                                <a href="btexclusive?N=Namkeen">OUR VILLAGE FOOD...
                                </a>
                            </div>

                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6  col-sm-6 col-xs-12">
                        <div class="card offerpanel3">
                            <div class="card-body">
                                <a href="btexclusive?N=Hand Wash">
                                    <img src="images/Offer/hot-chips.jpg" alt="btbasket-dettol" class="shadow1" />
                                </a>
                            </div>
                            <div class="card-footer panel-footerhome1">
                                <a href="btexclusive?N=Hand Wash">HOT CHIPS...
                                </a>
                            </div>

                        </div>
                    </div>

                </div>

            </div>
        </div>
        <div class="last_col">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="card">
                            <div class="card-header headingmaster">
                                <h4 class="headingmastercolor">EXPLORE DRY FOODS</h4>
                            </div>

                            <div class="card-body">
                                <a href="product?N=Cashew">
                                    <img src="images/Banner/dry-food.jpg" alt="btbasket-dryfood" class="masteroffer" />
                                </a>
                            </div>

                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="card">
                            <div class="card-header headingmaster">
                                <h4 class="headingmastercolor">CONFECTIONARY STORE</h4>
                            </div>

                            <div class="card-body">
                                <a href="product?N=Chips">
                                    <img src="images/Banner/monsoon-food.jpg" alt="btbasket-dryfood" class="masteroffer" />
                                </a>
                            </div>

                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="card">
                            <div class="card-header headingmaster">
                                <h4 class="headingmastercolor">OFFICE TABLE NEEDS</h4>
                            </div>

                            <div class="card-body">
                                <a href="product?N=Office Stationary">
                                    <img src="images/Banner/baby-food.jpg" alt="btbasket-dryfood" class="masteroffer" />
                                </a>
                            </div>

                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="card">
                            <div class="card-header headingmaster">
                                <h4 class="headingmastercolor">NEW LAUNCHES-BTBASKET</h4>
                            </div>

                            <div class="card-body">
                                <a href="#">
                                    <img src="images/Banner/dry-food.jpg" alt="btbasket-dryfood" class="masteroffer" />
                                </a>

                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </div>


        <div id="footer">

            <div class="footer-widget">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                            <div class="single-widget">
                                <h2 id="test">SERVICE</h2>
                                <ul class="footer-link">
                                    <li><a href="Admin/AdminLogin.aspx">Administrator</a></li>
                                    <li><a href="MyBazarAdmin/AdminLogin.aspx">Bill Adjustment</a></li>
                                    <li><a href="contact">Contact Us</a></li>
                                    <li><a href="order-history">Order View</a></li>
                                    <li><a href="feedback">Feedback</a></li>
                                    <li><a href="faq">FAQ</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                            <div class="single-widget">
                                <h2>QUICK SHOP</h2>
                                <ul class="footer-link">
                                    <li><a href="product?N=Grocery">Grocery</a></li>
                                    <li><a href="product?N=Personal Care">Personal Care</a></li>
                                    <li><a href="product?N=Beverages">Beverages</a></li>
                                    <li><a href="product?N=Branded Food">Branded Food</a></li>
                                    <li><a href="product?N=Household">Household</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                            <div class="single-widget">
                                <h2>POLICIES</h2>
                                <ul class="footer-link">
                                    <li><a href="term-and-condition">Terms of Use</a></li>
                                    <li><a href="#">Privacy Policy</a></li>
                                    <li><a href="return-refund">Refund Policy</a></li>
                                    <li><a href="sitemap">Site Map</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                            <div class="single-widget">
                                <h2>WHO WE ARE</h2>
                                <ul class="footer-link">
                                    <li><a href="about">About Us</a></li>
                                    <li><a href="contact">Contact Us</a></li>
                                    <li><a href="#">support@btbasket.com</a></li>
                                </ul>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <p style="color: white; font-size: small;">Copyright © 2021 BTsoftnet Services. All rights reserved.</p>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 text-right">
                            <div class="single-widget">
                                <%-- <h2>Social Media</h2>--%>
                                <div class="social-icons">
                                    <ul class="footer-social pull-right">
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
            <a id="scrollUp" href="#top" style="position: fixed; z-index: 2147483647; display: block;"><i class="fa fa-angle-up"></i></a>

        </div>

        <div class="container" style="display: none">
            <div class="row">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <div class="col-md-12 padding-right">
                            <div class="features_items">
                                <%--<asp:ContentPlaceHolder ID="ContentPlaceHolder1" runat="server">
</asp:ContentPlaceHolder>--%>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>


    </form>

    
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <%--<script src="js/jquery.scrollUp.min.js" type="text/javascript"></script>--%>
    <script src="js/price-range.js" type="text/javascript"></script>
    <script src="js/main.js" type="text/javascript"></script>
    <script src="js/UserValidation.js" type="text/javascript"></script>
    <script type="text/javascript">
        $('.add').click(function () {
            $(this).prev().val(+$(this).prev().val() + 1);
        });
        $('.sub').click(function () {
            if ($(this).next().val() > 0) $(this).next().val(+$(this).next().val() - 1);
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
            var a = $(document).scrollTop() + window.innerHeight;
            var b = $('#footer').offset().top;
            if (a < b) {
                $('.brands-name').css('bottom', '10px');
            } else {
                $('.brands-name').css('bottom', (10 + (a - b)) + 'px');
            }
        }
        $(document).ready(checkOffset);
        $(document).scroll(checkOffset);
    </script>
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
                setTimeout("countdown()", 10000);
            }
            else {
                $("#TimerDiv").hide();

                $(".Btnotp").show();
            }
        }
        $(document).ready(function () {
            //$("#test").click(function () {
            //    $(".footer-link").toggle(1000);
            //}
            //);
            $(window).resize(function () {
                if ($(window).width() >= 780) {

                    // when you hover a toggle show its dropdown menu
                    $(".navbar .dropdown-toggle").hover(function () {
                        $(this).parent().toggleClass("show");
                        $(this).parent().find(".dropdown-menu").toggleClass("show");
                    });

                    // hide the menu when the mouse leaves the dropdown
                    $(".navbar .dropdown-menu").mouseleave(function () {
                        $(this).removeClass("show");
                    });

                    // do something here
                }
            });



            
        });
    </script>


</body>
</html>
