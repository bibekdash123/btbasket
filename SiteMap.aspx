<%@ Page Title="SiteMap|btbasket.com" Language="C#" MasterPageFile="~/MasterEntry.master" AutoEventWireup="true" CodeFile="SiteMap.aspx.cs" Inherits="SiteMap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
    <h5>Site Map</h5>
</div>
<div class="row">
    <div class="col-md-3">
        <ul>
            <li>
                <a href="ProductListCat.aspx?N=Grocery" style="color:cornflowerblue;font-size:large"><span>Grocery & Staples</span></a>
            </li>
        </ul>
        <ul>
            <li class="dropdown-header">Dal & Pulses</li>
							<li><a href="product?N=Toor Dal"><span>Toor Dal(Harada Dali)</span></a></li>
                            <li><a href="ProductList.aspx?N=Buta Dali"><span>Buta Dal</span></a></li>
                            <li><a href="ProductList.aspx?N=Masoor Dal"><span>Redgram Dal(Masoor Dali)</span></a></li>
                            <li><a href="ProductList.aspx?N=Moong Dal"><span>Moong Dal(Muga Dali)</span></a></li>
                            <li><a href="ProductList.aspx?N=Kabuli-Buta"><span>Kabuli-Buta</span></a></li>
                            <li><a href="ProductList.aspx?N=Sola-Buta"><span>Sola-Buta</span></a></li>
                            <li><a href="ProductList.aspx?N=Matar"><span>Matar</span></a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Flour-Sooji</li>
							<li><a href="ProductList.aspx?N=Besan"><span>Besan</span></a></li>
                            <li><a href="ProductList.aspx?N=Maida"><span>Maida</span></a></li>
                            <li><a href="ProductList.aspx?N=Sooji"><span>Sooji</span></a></li>
                            <li><a href="ProductList.aspx?N=Atta"><span>Wheat Flour(Atta)</span></a></li>
                            <li><a href="ProductList.aspx?N=Dalia"><span>Dalia</span></a></li>
                             <li><a href="ProductList.aspx?N=Sagoo"><span>Sagoo</span></a></li>
        </ul>
        <ul>
							<li class="dropdown-header">Salt-Sugar</li>
							<li><a href="ProductList.aspx?N=Salt"><span>Salt</span></a></li>
                            <li><a href="ProductList.aspx?N=Sugar"><span>Sugar</span></a></li>
                            <li><a href="ProductList.aspx?N=Molases"><span>Molases(Guda)</span></a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Edible Oil & Ghee</li>
							<li><a href="ProductList.aspx?N=Mustard Oil"><span>Mustard Oil</span></a></li>
                            <li><a href="ProductList.aspx?N=Refined Oil"><span>Refined Oil</span></a></li>
                            <li><a href="ProductList.aspx?N=Ricebran Oil"><span>Ricebran Oil</span></a></li>
                            <li><a href="ProductList.aspx?N=Groundnut Oil"><span>Groundnut Oil</span></a></li>
                            <li><a href="ProductList.aspx?N=Olive Oil"><span>Olive Oil</span></a></li>
                            <li class='last'><a href="ProductList.aspx?N=Mustard Oil"><span>Dalda Ghee</span></a></li>
						</ul>
        <ul>
							<li class="dropdown-header">Rice & Rice Products</li>
							<li><a href="ProductList.aspx?N=Raw Rice"><span>Raw Rice(Arua Chaula)</span></a></li>
                            <li><a href="ProductList.aspx?N=Boiled Rice"><span>Boiled Rice(Usuna Chaula)</span></a></li>
                            <li><a href="ProductList.aspx?N=Basmati Rice"><span>Basmati Rice</span></a></li>
                            <li><a href="ProductList.aspx?N=Kheer Rice"><span>Kheer Rice</span></a></li>
                            <li><a href="ProductList.aspx?N=Flatten Rice"><span>Chuda(Poha)</span></a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Dry Fruits-Nuts</li>
							<li><a href="ProductList.aspx?N=Almond"><span>Almond</span></a></li>
                            <li><a href="ProductList.aspx?N=Cashew"><span>Cashew</span></a></li>
                            <li><a href="ProductList.aspx?N=Kismis"><span>Kismis</span></a></li>
                            <li><a href="ProductList.aspx?N=Charmagaj"><span>Charmagaj</span></a></li>
						</ul>
        <ul>
							<li class="dropdown-header">Spices & Masala</li>
							<li><a href="ProductList.aspx?N=Spices-Masala"><span>Masala</span></a></li>
                            <li><a href="ProductList.aspx?N=Whole-Spices"><span>Whole Spices</span></a></li>
							<li class="divider"></li>
							
						</ul>
    </div>
    <div class="col-md-3">
<ul>
            <li>
                <a href="ProductListCat.aspx?N=Personal Care" style="color:cornflowerblue;font-size:large"><span>Personal Care</span></a>
            </li>
        </ul>
<ul>
							<li class="dropdown-header">Hair Care</li>
							<li><a href="ProductList.aspx?N=Hair Oil"><span>Hair Oil</span></a></li>
                            <li><a href="ProductList.aspx?N=Hair Conditioner"><span>Hair Conditioner</span></a></li>
                            <li><a href="ProductList.aspx?N=Hair Colour-Dyes"><span>Hair Colour-Dyes</span></a></li>
                            <li><a href="ProductList.aspx?N=Shampoo"><span>Shampoo</span></a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Personal Hygiene</li>
							<li><a href="ProductList.aspx?N=Body Wash"><span>Body Wash</span></a></li>
                            <li><a href="ProductList.aspx?N=Face Wash"><span>Face Wash</span></a></li>
                            <li><a href="ProductList.aspx?N=Hand Wash"><span>Hand Wash</span></a></li>
                            <li><a href="ProductList.aspx?N=Soap"><span>Liquid Soap-Bars</span></a></li>
                            <li><a href="ProductList.aspx?N=Face Mask"><span>Face Mask</span></a></li>
						</ul>
<ul>
							<li class="dropdown-header">Oral Care</li>
							<li><a href="ProductList.aspx?N=Mouth Wash"><span>Mouth Wash</span></a></li>
                            <li><a href="ProductList.aspx?N=Tooth Paste"><span>Tooth Paste</span></a></li>
                            <li><a href="ProductList.aspx?N=Tooth Brush"><span>Tooth Brush</span></a></li>
							<li class="divider"></li>
                            <li class="dropdown-header">Deos & perfumes</li>
							<li><a href="ProductList.aspx?N=Deos-Perfumes"><span>Deos-Perfumes</span></a></li>
							<li class="divider"></li>
                            <li class="dropdown-header">Nail Care</li>
							<li><a href="ProductList.aspx?N=Nail Polish"><span>Nail Polish</span></a></li>
                            <li><a href="ProductList.aspx?N=Nail Remover"><span>Nail Remover</span></a></li>
						</ul>
<ul>
							<li class="dropdown-header">Skin Care</li>
							<li><a href="ProductList.aspx?N=Body Lotion"><span>Body Lotion</span></a></li>
                            <li><a href="ProductList.aspx?N=Face Cream"><span>Face Cream</span></a></li>
                            <li><a href="ProductList.aspx?N=Face Powder"><span>Face Powder</span></a></li>
                            <li><a href="ProductList.aspx?N=Face Scrub"><span>Face Scrub</span></a></li>
                            <li><a href="ProductList.aspx?N=Manicure"><span>Manicure</span></a></li>
                            <li><a href="ProductList.aspx?N=Pedicure"><span>Pedicure</span></a></li>
                            <li><a href="ProductList.aspx?N=Body Massage"><span>Body Massage</span></a></li>
                            <li><a href="ProductList.aspx?N=Face Massage"><span>Face Massage</span></a></li>
                            <li><a href="ProductList.aspx?N=Face Foundation"><span>Face Foundation</span></a></li>
                            <li><a href="ProductList.aspx?N=Face Pack"><span>Face Pack</span></a></li>
                            <li><a href="ProductList.aspx?N=Serum"><span>Serum</span></a></li>
    </ul>
    </div>
    <div class="col-md-3">
<ul>
            <li>
                <a href="ProductListCat.aspx?N=Household" style="color:cornflowerblue;font-size:large"><span>Household</span></a></li>
            </li>
        </ul>
<ul>
							<li class="dropdown-header">Detergents</li>
							<li><a href="ProductList.aspx?N=Liquid Detergent"><span>Liquid Detergent</span></a></li>
                            <li><a href="ProductList.aspx?N=Washing Bar"><span>Washing Bar</span></a></li>
                            <li><a href="ProductList.aspx?N=Washing Powder"><span>Washing Powder</span></a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Pooja Needs</li>
							<li><a href="ProductList.aspx?N=Agarbati"><span>Agarbati</span></a></li>
                            <li><a href="ProductList.aspx?N=Match Box"><span>Match Box</span></a></li>
                            <li><a href="ProductList.aspx?N=Pitambari"><span>Pitambari</span></a></li>
                            <li><a href="ProductList.aspx?N=Jhuna"><span>Jhuna</span></a></li>
                            
						</ul>
<ul>
							<li class="dropdown-header">Cleaners</li>
							<li><a href="ProductList.aspx?N=Floor Cleaner"><span>Floor Cleaner</span></a></li>
                            <li><a href="ProductList.aspx?N=Glass Cleaner"><span>Glass Cleaner</span></a></li>
                            <li><a href="ProductList.aspx?N=Kitchen Cleaner"><span>Kitchen Cleaner</span></a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Toilet Cleaner</li>
							<li><a href="ProductList.aspx?N=Toilet Cleaner"><span>Toilet Cleaner</span></a></li>
                            
						</ul>
<ul>
							<li class="dropdown-header">Utencil Cleaner</li>
							<li><a href="ProductList.aspx?N=Dish-Wash"><span>Dish Wash Bar & Liquid</span></a></li>
                            <li><a href="ProductList.aspx?N=Dish Wash Powder"><span>Dish Wash Powder</span></a></li>
                            <li><a href="ProductList.aspx?N=Dish-Wash"><span>Scotch Brite</span></a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Cleaning Accessories</li>
							<li><a href="ProductList.aspx?N=Kitchen Gloves"><span>Kitchen Gloves</span></a></li>
                            <li class='last'><a href="ProductList.aspx?N=Brush"><span>Brushes</span></a></li>
							
						</ul>
<ul>
							<li class="dropdown-header">Freshners</li>
							<li><a href="ProductList.aspx?N=Air Freshners"><span>Air Freshners</span></a></li>
                            <li><a href="ProductList.aspx?N=Repellent"><span>Repellent</span></a></li>
                            
						</ul>

    </div>
    <div class="col-md-3">
<ul>
            <li>
<a href="ProductListCat.aspx?N=Branded Food" style="color:cornflowerblue;font-size:large"><span>Branded Food</span></a></li>
            </li>
        </ul>
<ul>
							<li class="dropdown-header">Pickle & Jam</li>
							<li><a href="ProductList.aspx?N=Pickles"><span>Pickles</span></a></li>
                            <li><a href="ProductList.aspx?N=Jam"><span>Jam</span></a></li>
                            <li><a href="ProductList.aspx?N=Honey"><span>Honey</span></a></li>
                            <li class="divider"></li>
							<li class="dropdown-header">Ready To Cook</li>
                            <li><a href="ProductList.aspx?N=Toor Dal"><span>Papad</span></a></li>
                            <li><a href="ProductList.aspx?N=Toor Dal"><span>Soup</span></a></li>
                            <li><a href="ProductList.aspx?N=Toor Dal"><span>Vermicelli</span></a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Noodles</li>
							<li><a href="ProductList.aspx?N=Instant Noodles"><span>Instant Noodles</span></a></li>
                            <li><a href="ProductList.aspx?N=Chinese Noodles"><span>Chinese Noodles</span></a></li>
                            
						</ul>
<ul>
							<li class="dropdown-header">Protein Powder</li>
							<li><a href="ProductList.aspx?N=Protein Powder"><span>Protein Powder</span></a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Biscuit & Cakes</li>
							<li><a href="ProductList.aspx?N=Biscuits"><span>Biscuits</span></a></li>
                            <li><a href="ProductList.aspx?N=Cakes"><span>Cakes</span></a></li>
                            <li class="divider"></li>
                            <li class="dropdown-header">Sauce & Ketchup</li>
							<li><a href="ProductList.aspx?N=Sauce-Ketchup"><span>Sauce & Ketchup</span></a></li>
						</ul>
<ul>
							<li class="dropdown-header">Food Flavour & Color</li>
							<li><a href="ProductList.aspx?N=Food Flavour"><span>Food Flavour</span></a></li>
                            <li><a href="ProductList.aspx?N=Food Color"><span>Food Color</span></a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Snacks</li>
							<li><a href="ProductList.aspx?N=Namkeen"><span>Namkeen</span></a></li>
                            <li><a href="ProductList.aspx?N=Chips"><span>Chips</span></a></li>
						</ul>
<ul>
							<li class="dropdown-header">Breakfast Cereals</li>
							<li><a href="ProductList.aspx?N=Breakfast Cereals"><span>Breakfast Cereals</span></a></li>
							<li class="divider"></li>
                            <li class="dropdown-header">Soya Foods</li>
                            <li><a href="ProductList.aspx?N=Soya Chunks"><span>Soya Chunks</span></a></li>
    </ul>

    </div>
</div>
</asp:Content>

