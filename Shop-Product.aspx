<%@ Page Title="Shop Online Grocery At Lowest Price In btbasket.com" Language="C#" MasterPageFile="~/MasterEntry.master" AutoEventWireup="true" CodeFile="Shop-Product.aspx.cs" Inherits="MyBazarUser_ShopProduct" 
    MetaKeywords="Online Grocery Services, Online Retail Services, E-commerce Company, E-shop, FAQ on E-commerce, FAQ on online shopping, FAQ on online grocery, FAQ on online retail, Frequently asked questions, Online shopping queries, Online shopping feedback, Consumer reviews, Consumer ratings, Popular FAQ on online grocery shopping, Home delivery"
    MetaDescription="Our new approach to FAQ system is enable to resolve any kind of queries on btbasket in a effective way."%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:content ID="content1" contentPlaceHolderID="head" Runat="Server">

</asp:content>
<asp:content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="row">
        <div class="col-md-4"></div>C
        <div class="col-md-4">
            <ol class="breadcrumb">
               <li><a href="Home1.aspx">Home</a></li>
               <li class="active">Shop Grocery Items</li>
            </ol>
        </div>
        <div class="col-md-4"></div>
    </div>
    <div class="row">
        <div class="col-md-5">
            <p>SHOP HERE</p>
        </div>
    </div>
    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  <div class="panel panel-success">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          Grocery & Staples
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
          
        <ul>
					<li class="col-sm-3">
						<ul>
							<li class="dropdown-header">Dal & Pulses</li>
							<li><a href="Grocery.aspx?N=Toor Dal"><span>Toor Dal(Harada Dali)</span></a></li>
                            <li><a href="Grocery.aspx?N=Buta Dali"><span>Buta Dal</span></a></li>
                            <li><a href="Grocery.aspx?N=Masoor Dal"><span>Redgram Dal(Masoor Dali)</span></a></li>
                            <li><a href="Grocery.aspx?N=Moong Dal"><span>Moong Dal(Muga Dali)</span></a></li>
                            <li><a href="Grocery.aspx?N=Kabuli-Buta"><span>Kabuli-Buta</span></a></li>
                            <li><a href="Grocery.aspx?N=Sola-Buta"><span>Sola-Buta</span></a></li>
                            <li><a href="Grocery.aspx?N=Matar"><span>Matar</span></a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Edible Oil & Ghee</li>
                            <li><a href="Grocery.aspx?N=Mustard Oil"><span>Mustard Oil</span></a></li>
                            <li><a href="Grocery.aspx?N=Refined Oil"><span>Refined Oil</span></a></li>
                            <li><a href="Grocery.aspx?N=Ricebran Oil"><span>Ricebran Oil</span></a></li>
                            <li><a href="Grocery.aspx?N=Olive Oil"><span>Olive Oil</span></a></li>
                            <li class='last'><a href="Grocery.aspx?N=Ghee"><span>Ghee</span></a></li>
						</ul>
					</li>
					<li class="col-sm-3">
						<ul>
							<li class="dropdown-header">Salt-Sugar</li>
							<li><a href="Grocery.aspx?N=Salt"><span>Salt</span></a></li>
                            <li><a href="Grocery.aspx?N=Sugar"><span>Sugar</span></a></li>
                            <li><a href="Grocery.aspx?N=Molases"><span>Molases(Guda)</span></a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Flour-Sooji</li>
                            <li><a href="Grocery.aspx?N=Besan"><span>Besan</span></a></li>
                            <li><a href="Grocery.aspx?N=Maida"><span>Maida</span></a></li>
                            <li><a href="Grocery.aspx?N=Sooji"><span>Sooji</span></a></li>
                            <li><a href="Grocery.aspx?N=Atta"><span>Wheat Flour(Atta)</span></a></li>
                            <li><a href="Grocery.aspx?N=Dalia"><span>Dalia</span></a></li>
                            <li><a href="Grocery.aspx?N=Sagoo"><span>Sagoo</span></a></li>
							<li><a href="Grocery.aspx?N=Cornflour"><span>Cornflour</span></a></li>
						</ul>
					</li>
					<li class="col-sm-3">
						<ul>
							<li class="dropdown-header">Rice & Rice Products</li>
							<li><a href="Grocery.aspx?N=Raw Rice"><span>Raw Rice(Arua Chaula)</span></a></li>
                            <li><a href="Grocery.aspx?N=Boiled Rice"><span>Boiled Rice(Usuna Chaula)</span></a></li>
                            <li><a href="Grocery.aspx?N=Basmati Rice"><span>Basmati Rice</span></a></li>
                            <li><a href="Grocery.aspx?N=Kheer Rice"><span>Kheer Rice</span></a></li>
                            <li><a href="Grocery.aspx?N=Flatten Rice"><span>Chuda(Poha)</span></a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Dry Fruits-Nuts</li>
							<li><a href="Grocery.aspx?N=Almond"><span>Almond</span></a></li>
                            <li><a href="Grocery.aspx?N=Cashew"><span>Cashew</span></a></li>
                            <li><a href="Grocery.aspx?N=Kismis"><span>Kismis</span></a></li>
                            <li><a href="Grocery.aspx?N=Charmagaj"><span>Charmagaj</span></a></li>
						</ul>
					</li>
					<li class="col-sm-3">
						<ul>
							<li class="dropdown-header">Spices & Masala</li>
							<li><a href="Grocery.aspx?N=Spices-Masala"><span>Masala</span></a></li>
                            <li><a href="Grocery.aspx?N=Whole-Spices"><span>Whole Spices</span></a></li>
							<li class="divider"></li>
							<li><a href="Products.aspx?N=Grocery" style="color:cornflowerblue;font-size:large"><span>All Grocery Items</span></a></li>
                            
						</ul>
					</li>
               <li>
                     <div class="col-sm-6 col-md-3">
             
                     </div>
               </li>
				</ul>
          
      </div>
    </div>
  </div>
  <div class="panel panel-success">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          Personal Care
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
      <div class="panel-body">
        <ul>
					<li class="col-sm-3">
						<ul>
							<li class="dropdown-header">Hair Care</li>
							<li><a href="PersonalCare.aspx?N=Hair Oil"><span>Hair Oil</span></a></li>
                            <li><a href="PersonalCare.aspx?N=Hair Conditioner"><span>Hair Conditioner</span></a></li>
                            <li><a href="PersonalCare.aspx?N=Hair Color"><span>Hair Colour-Dyes</span></a></li>
                            <li><a href="PersonalCare.aspx?N=Shampoo"><span>Shampoo</span></a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Personal Hygiene</li>
							<li><a href="PersonalCare.aspx?N=Body Wash"><span>Body Wash</span></a></li>
                            <li><a href="PersonalCare.aspx?N=Face Wash"><span>Face Wash</span></a></li>
                            <li><a href="PersonalCare.aspx?N=Hand Wash"><span>Hand Wash</span></a></li>
                            <li><a href="PersonalCare.aspx?N=Soap"><span>Liquid Soap-Bars</span></a></li>
                            <li><a href="PersonalCare.aspx?N=Face Mask"><span>Face Mask</span></a></li>
						</ul>
					</li>
					<li class="col-sm-3">
						<ul>
							<li class="dropdown-header">Oral Care</li>
							<li><a href="PersonalCare.aspx?N=Mouth Wash"><span>Mouth Wash</span></a></li>
                            <li><a href="PersonalCare.aspx?N=Tooth Paste"><span>Tooth Paste</span></a></li>
                            <li><a href="PersonalCare.aspx?N=Tooth Brush"><span>Tooth Brush</span></a></li>
							<li class="divider"></li>
                            <li class="dropdown-header">Deos & perfumes</li>
							<li><a href="PersonalCare.aspx?N=Deos-Perfumes"><span>Deos-Perfumes</span></a></li>
							<li class="divider"></li>
                            <li class="dropdown-header">Nail Care</li>
							<li><a href="PersonalCare.aspx?N=Nail Polish"><span>Nail Polish</span></a></li>
                            <li><a href="PersonalCare.aspx?N=Nail Remover"><span>Nail Remover</span></a></li>
							<li class="divider"></li>
                            <li class="dropdown-header">Sanitary Needs</li>
							<li><a href="PersonalCare.aspx?N=Shaving Cream-Lotion"><span>Shaving Cream-Lotion</span></a></li>
                            <li><a href="PersonalCare.aspx?N=Shaving Razor-Blade"><span>Shaving Razor-Blade</span></a></li>
						</ul>
					</li>
					<li class="col-sm-3">
						<ul>
							<li class="dropdown-header">Skin Care</li>
							<li><a href="PersonalCare.aspx?N=Body Lotion"><span>Body Lotion</span></a></li>
                            <li><a href="PersonalCare.aspx?N=Face Cream"><span>Face Cream</span></a></li>
                            <li><a href="PersonalCare.aspx?N=Face Powder"><span>Face Powder</span></a></li>
                            <li><a href="PersonalCare.aspx?N=Face Scrub"><span>Face Scrub</span></a></li>
                            <li><a href="PersonalCare.aspx?N=Manicure"><span>Manicure</span></a></li>
                            <li><a href="PersonalCare.aspx?N=Pedicure"><span>Pedicure</span></a></li>
                            <li><a href="PersonalCare.aspx?N=Body Massage"><span>Body Massage</span></a></li>
                            <li><a href="PersonalCare.aspx?N=Face Massage"><span>Face Massage</span></a></li>
                            <li><a href="PersonalCare.aspx?N=Face Foundation"><span>Face Foundation</span></a></li>
                            <li><a href="PersonalCare.aspx?N=Face Pack"><span>Face Pack</span></a></li>
                            <li><a href="PersonalCare.aspx?N=Serum"><span>Serum</span></a></li>
                            <li class="divider"></li>
                            <li class="dropdown-header">Baby Care</li>
							<li><a href="PersonalCare.aspx?N=Baby Oil"><span>Baby Oil</span></a></li>
                            <li><a href="PersonalCare.aspx?N=Baby Shampoo"><span>Baby Shampoo</span></a></li>
                            <li><a href="PersonalCare.aspx?N=Baby Powder"><span>Baby Powder</span></a></li>
                            <li><a href="PersonalCare.aspx?N=Baby Cream"><span>Baby Cream</span></a></li>
                            <li><a href="PersonalCare.aspx?N=Baby OralCare"><span>Baby OralCare</span></a></li>
                            <li><a href="PersonalCare.aspx?N=Baby Pad"><span>Baby Pad</span></a></li>
                            <li><a href="PersonalCare.aspx?N=Baby Wipes"><span>Baby Wipes</span></a></li>
							<li><a href="Products.aspx?N=Personal Care" style="color:cornflowerblue;font-size:large"><span>All Personal Care Items</span></a></li>
						</ul>
					</li>
					<li>
                     <div class="col-sm-6 col-md-3">
             
                     </div>
            </li>
				</ul>
      </div>
    </div>
  </div>
  <div class="panel panel-success">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          Household
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">
        <ul>
					<li class="col-sm-3">
						<ul>
							<li class="dropdown-header">Detergents</li>
							<li><a href="Household.aspx?N=Liquid Detergent"><span>Liquid Detergent</span></a></li>
                            <li><a href="Household.aspx?N=Washing Bar"><span>Washing Bar</span></a></li>
                            <li><a href="Household.aspx?N=Washing Powder"><span>Washing Powder</span></a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Pooja Needs</li>
							<li><a href="Household.aspx?N=Agarbati"><span>Agarbati</span></a></li>
                            <li><a href="Household.aspx?N=Match Box"><span>Match Box</span></a></li>
                            <li><a href="Household.aspx?N=Pitambari"><span>Pitambari</span></a></li>
                            <li><a href="Household.aspx?N=Jhuna"><span>Jhuna</span></a></li>
                            
						</ul>
					</li>
					<li class="col-sm-3">
						<ul>
							<li class="dropdown-header">Cleaners</li>
							<li><a href="Household.aspx?N=Floor Cleaner"><span>Floor Cleaner</span></a></li>
                            <li><a href="Household.aspx?N=Glass Cleaner"><span>Glass Cleaner</span></a></li>
                            <li><a href="Household.aspx?N=Kitchen Cleaner"><span>Kitchen Cleaner</span></a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Toilet Cleaner</li>
							<li><a href="Household.aspx?N=Toilet Cleaner"><span>Toilet Cleaner</span></a></li>
                            
						</ul>
					</li>
					<li class="col-sm-3">
						<li class="dropdown-header">Utencil Cleaner</li>
							<li><a href="Household.aspx?N=Dish-Wash"><span>Dish Wash Bar & Liquid</span></a></li>
                            <li><a href="Household.aspx?N=Dish Wash Powder"><span>Dish Wash Powder</span></a></li>
                            <li><a href="Household.aspx?N=Dish-Wash"><span>Scotch Brite</span></a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Cleaning Accessories</li>
							<li><a href="Household.aspx?N=Kitchen Gloves"><span>Kitchen Gloves</span></a></li>
                            <li class='last'><a href="Household.aspx?N=Brush"><span>Brushes</span></a></li>
					</li>
					<li class="col-sm-3">
						<ul>
							<li class="dropdown-header">Freshners</li>
							<li><a href="Household.aspx?N=Air Freshner"><span>Air Freshners</span></a></li>
                            <li><a href="Household.aspx?N=Repellent"><span>Repellent</span></a></li>
                            <li class="divider"></li>
							<li><a href="Products.aspx?N=Household" style="color:cornflowerblue;font-size:large"><span>All Household Items</span></a></li>
						</ul>
					</li>
                    <li>
                     <div class="col-sm-6 col-md-3">
             
                     </div>
            </li>
				</ul>
      </div>
    </div>
  </div>
  <div class="panel panel-success">
    <div class="panel-heading" role="tab" id="Div1">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseThree">
        Bakery-Diary
        </a>
      </h4>
    </div>
    <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">
        <ul>
                    <li class="col-sm-3">
						<ul>
							
						</ul>
					</li>
					<li class="col-sm-3">
						<ul>
							<li class="dropdown-header">Bread & Bakery</li>
							<li><a href="Bakery.aspx?N=Breads-Cakes"><span>Breads-Cakes</span></a></li>
                            <li class='last'><a href="Bakery.aspx?N=Rusk-Khara"><span>Rusk-Khara</span></a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Diary Products</li>
							<li><a href="Bakery.aspx?N=Milk-Dahi"><span>Milk & Dahi</span></a></li>
                            <li><a href="Bakery.aspx?N=Lassi"><span>Lassi</span></a></li>
                            <li><a href="Bakery.aspx?N=Dairy Whitener"><span>Dairy Whitener</span></a></li>
                            <li class='last'><a href="Bakery.aspx?N=Butter-Cheese"><span>Butter & Cheese</span></a></li>
						</ul>
					</li>
					<li class="col-sm-3">
						
					</li>
					<li class="col-sm-3">
                        
					</li>
					<li class="col-sm-3">
						<ul>
						    <li><a href="Products.aspx?N=Bakery-Diary" style="color:cornflowerblue;font-size:large"><span>Visit All Bakery Items</span></a></li>
                        </ul>
					</li>
					<li class="col-sm-3">
						
					</li>
                    <li>
                     <div class="col-sm-6 col-md-3">
             
                     </div>
            </li>
				</ul>
      </div>
    </div>
  </div>
  <div class="panel panel-success">
    <div class="panel-heading" role="tab" id="Div3">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseThree">
          Beverages
        </a>
      </h4>
    </div>
    <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">
        <ul>
					<li class="col-sm-3">
						<ul>
							<li class="dropdown-header">Juice</li>
							<li><a href="Beverages.aspx?N=Fruit Juice"><span>Fruit Juice</span></a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Soft Drink</li>
							<li><a href="Beverages.aspx?N=Soft Drinks"><span>Soft Drinks</span></a></li>
						</ul>
					</li>
					<li class="col-sm-3">
						<ul>
							<li class="dropdown-header">Tea & Coffee</li>
							<li><a href="ProductList.aspx?N=Green Tea"><span>Green Tea</span></a></li>
                            <li><a href="ProductList.aspx?N=Herbal Tea"><span>Herbal Tea</span></a></li>
                            <li><a href="ProductList.aspx?N=Instant Coffee"><span>Instant Coffee</span></a></li>
                            <li><a href="ProductList.aspx?N=Organic Coffee"><span>Organic Coffee</span></a></li>
                            <li class="last"><a href="ProductList.aspx?N=Tea"><span>Tea</span></a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Health Drinks</li>
							<li><a href="ProductList.aspx?N=Health Drinks"><span>Health Drinks</span></a></li>
                            <li><a href="ProductList.aspx?N=Energy Drinks"><span>Energy Drinks</span></a></li>
						</ul>
					</li>
					<li class="col-sm-3">
						<ul>
							<li><a href="ProductListCat.aspx?N=Beverages" style="color:cornflowerblue;font-size:large"><span>Visit All Beverages</span></a></li>
						</ul>
					</li>
					<li class="col-sm-3">
						<ul>
							
						</ul>
					</li>
                    <li>
                     <div class="col-sm-6 col-md-3">
             
                     </div>
                    </li>
				</ul>
      </div>
    </div>
  </div>
  <div class="panel panel-success">
    <div class="panel-heading" role="tab" id="Div5">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false" aria-controls="collapseThree">
          Branded Food
        </a>
      </h4>
    </div>
    <div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">
        <ul>
					<li class="col-sm-3">
						<ul>
							<li class="dropdown-header">Pickle & Jam</li>
							<li><a href="BrandedFood.aspx?N=Pickles"><span>Pickles</span></a></li>
                            <li><a href="BrandedFood.aspx?N=Jam"><span>Jam</span></a></li>
                            <li><a href="BrandedFood.aspx?N=Honey"><span>Honey</span></a></li>
                            <li class="divider"></li>
							<li class="dropdown-header">Ready To Cook</li>
                            <li><a href="BrandedFood.aspx?N=Papad"><span>Papad</span></a></li>
                            <li><a href="BrandedFood.aspx?N=Soup"><span>Soup</span></a></li>
                            <li><a href="BrandedFood.aspx?N=Vermicelli"><span>Vermicelli</span></a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Noodles</li>
							<li><a href="BrandedFood.aspx?N=Noodles"><span>Instant Noodles</span></a></li>
                            <li><a href="BrandedFood.aspx?N=Noodles"><span>Chinese Noodles</span></a></li>
                            
						</ul>
					</li>
					<li class="col-sm-3">
						<ul>
							<li class="dropdown-header">Protein Powder</li>
							<li><a href="BrandedFood.aspx?N=Protein Powder"><span>Protein Powder</span></a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Biscuit & Cakes</li>
							<li><a href="BrandedFood.aspx?N=Biscuits"><span>Biscuits</span></a></li>
                            <li><a href="BrandedFood.aspx?N=Mixture"><span>Mixture</span></a></li>
                            <li><a href="BrandedFood.aspx?N=Cakes"><span>Cakes</span></a></li>
                            <li class="divider"></li>
                            <li class="dropdown-header">Sauce & Ketchup</li>
							<li><a href="BrandedFood.aspx?N=Sauce-Ketchup"><span>Sauce & Ketchup</span></a></li>
						</ul>
					</li>
					<li class="col-sm-3">
						<ul>
							<li class="dropdown-header">Food Flavour & Color</li>
							<li><a href="BrandedFood.aspx?N=Food Flavour"><span>Food Flavour</span></a></li>
                            <li><a href="BrandedFood.aspx?N=Food Color"><span>Food Color</span></a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Snacks</li>
							<li><a href="BrandedFood.aspx?N=Namkeen"><span>Namkeen</span></a></li>
                            <li><a href="BrandedFood.aspx?N=Chips"><span>Chips</span></a></li>
						</ul>
					</li>
					<li class="col-sm-3">
						<ul>
							<li class="dropdown-header">Breakfast Cereals</li>
							<li><a href="BrandedFood.aspx?N=Breakfast Cereals"><span>Breakfast Cereals</span></a></li>
							<li class="divider"></li>
                            <li class="dropdown-header">Soya Foods</li>
                            <li><a href="BrandedFood.aspx?N=Soya Chunks"><span>Soya Chunks</span></a></li>
							<li><a href="BrandedFood.aspx?N=Branded Food" style="color:cornflowerblue;font-size:large"><span>All Branded Food Items</span></a></li>
						</ul>
					</li>
                    <li>
                     <div class="col-sm-6 col-md-3">
             
                     </div>
                    </li>
				</ul>
      </div>
    </div>
  </div>
</div>

</asp:content>

