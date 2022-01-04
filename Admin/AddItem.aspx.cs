using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class MyBazarAdmin_AddItem : System.Web.UI.Page
{
    int mrp;
    int margin;
    int price;
    private int sum = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            HiddenDate.Value = DateTime.Now.ToString("dd-MM-yyyy");
            ShowCategory();
            Fillquantity();
            FillMargin();
            
        }
    }
    protected void DdlProduct_SelectedIndexChanged(object sender, EventArgs e)
    {
        int product = (int)DdlProduct.SelectedIndex;
        if (ddlcategory.SelectedItem.Text == "Grocery")
        {
            switch (product)
            {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 38:
                case 39:
                case 43:
                case 44:
                case 49:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Others");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 7:
                case 8:
                case 9:
                case 10:
                case 35:
                case 37:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Aashirvaad");
                    DdlBrand.Items.Add("Annapurna");
                    DdlBrand.Items.Add("Tata");
                    DdlBrand.Items.Add("Grihasthi");
                    DdlBrand.Items.Add("Pillsbury");
                    DdlBrand.Items.Add("Rishta");
                    DdlBrand.Items.Add("Rajdhani");
                    DdlBrand.Items.Add("Saktibhog");
                    DdlBrand.Items.Add("Fortune");
                    DdlBrand.Items.Add("Knorr");
                    DdlBrand.Items.Add("Wikifield");
                    DdlBrand.Items.Add("Patanjali");
                    DdlBrand.Items.Add("Ruchi");
                    DdlBrand.Items.Add("Others");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;

                case 11:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Annapurna");
                    DdlBrand.Items.Add("Tata");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 14:
                case 15:
                case 16:
                case 17:
                case 18:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Dhara");
                    DdlBrand.Items.Add("Dalda");
                    DdlBrand.Items.Add("Double Hiran");
                    DdlBrand.Items.Add("Engine");
                    DdlBrand.Items.Add("Everest");
                    DdlBrand.Items.Add("Fortune");
                    DdlBrand.Items.Add("Ganesh");
                    DdlBrand.Items.Add("Nature Fresh");
                    DdlBrand.Items.Add("Oleev");
                    DdlBrand.Items.Add("Freedom");
                    DdlBrand.Items.Add("Patanjali");
                    DdlBrand.Items.Add("Rishta");
                    DdlBrand.Items.Add("Ruchi");
                    DdlBrand.Items.Add("Saffola");
                    DdlBrand.Items.Add("Saloni");
                    DdlBrand.Items.Add("Sundrop");
                    DdlBrand.Items.Add("Sweekar");
                    DdlBrand.Items.Add("Sunrich");
                    DdlBrand.Items.Add("Others");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 19:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Amul");
                    DdlBrand.Items.Add("Anik");
                    DdlBrand.Items.Add("Balaji");
                    DdlBrand.Items.Add("Britania");
                    DdlBrand.Items.Add("Omfed");
                    DdlBrand.Items.Add("Devi durga");
                    DdlBrand.Items.Add("Durga");
                    DdlBrand.Items.Add("Shree Durga");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 12:
                case 42:
                case 45:
                case 13:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Others");
                    DdlBrand.Items.Add("Mithai");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;

                case 20:
                case 21:
                case 22:
                case 23:
                case 34:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Best");
                    DdlBrand.Items.Add("Daawat");
                    DdlBrand.Items.Add("Elina");
                    DdlBrand.Items.Add("Fortune");
                    DdlBrand.Items.Add("India Gate");
                    DdlBrand.Items.Add("Kohinoor");
                    DdlBrand.Items.Add("Patanjali");
                    DdlBrand.Items.Add("Season Fresh");
                    DdlBrand.Items.Add("Others");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;

                case 24:
                case 25:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Others");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 26:
                case 27:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Bharat");
                    DdlBrand.Items.Add("Everest");
                    DdlBrand.Items.Add("Grihasthi");
                    DdlBrand.Items.Add("Homefills");
                    DdlBrand.Items.Add("MDH");
                    DdlBrand.Items.Add("MTR");
                    DdlBrand.Items.Add("Ruchi");
                    DdlBrand.Items.Add("Ramdev");
                    DdlBrand.Items.Add("Swadist");
                    DdlBrand.Items.Add("Others");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 36:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Ruchi");
                    DdlBrand.Items.Add("Others");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 40:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Rosni");
                    DdlBrand.Items.Add("Lions");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 41:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("iNature");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 46:
                case 47:
                case 48:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Others");
                    DdlBrand.Items.Add("Ruchi");
                    DdlBrand.Items.Add("Patanjali");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
               
                case 51:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Others");
                    DdlBrand.Items.Add("Ruchi");
                    DdlBrand.Items.Add("Patanjali");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;

            }
        }
        else if (ddlcategory.SelectedItem.Text == "Personal Care")
        {
            switch (product)
            {
                case 1:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Adidas");
                    DdlBrand.Items.Add("Axe");
                    DdlBrand.Items.Add("Cinthol");
                    DdlBrand.Items.Add("Dove");
                    DdlBrand.Items.Add("Engage");
                    DdlBrand.Items.Add("Envy");
                    DdlBrand.Items.Add("Energy");
                    DdlBrand.Items.Add("Fogg");
                    DdlBrand.Items.Add("He");
                    DdlBrand.Items.Add("Nivea");
                    DdlBrand.Items.Add("Layer");
                    DdlBrand.Items.Add("OldSpice");
                    DdlBrand.Items.Add("Santoor");
                    DdlBrand.Items.Add("Set Wet");
                    DdlBrand.Items.Add("Sure");
                    DdlBrand.Items.Add("Temptation");
                    DdlBrand.Items.Add("Park Avenue");
                    DdlBrand.Items.Add("WildStone");
                    DdlBrand.Items.Add("Yardley");
                    DdlBrand.Items.Add("Denver");
                    DdlBrand.Items.Add("Playboy");
                    DdlBrand.Items.Add("Z");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 2:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Ashwini");
                    DdlBrand.Items.Add("Clear");
                    DdlBrand.Items.Add("Dove");
                    DdlBrand.Items.Add("Dabur");
                    DdlBrand.Items.Add("Himalaya");
                    DdlBrand.Items.Add("Hair & Care");
                    DdlBrand.Items.Add("Nihar");
                    DdlBrand.Items.Add("Navratna");
                    DdlBrand.Items.Add("Bajaj");
                    DdlBrand.Items.Add("Clinic Plus");
                    DdlBrand.Items.Add("Parachute");
                    DdlBrand.Items.Add("Patanjali");
                    DdlBrand.Items.Add("Keo Karpin");
                    DdlBrand.Items.Add("Tilsona");
                    DdlBrand.Items.Add("Sesa");
                    DdlBrand.Items.Add("Shalimar");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 27:
                case 28:
                case 29:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Hair & Care");
                    DdlBrand.Items.Add("Comfort Fabric");
                    DdlBrand.Items.Add("Meera");
                    DdlBrand.Items.Add("Clinic Plus");
                    DdlBrand.Items.Add("Clean & Clear");
                    DdlBrand.Items.Add("Dove");
                    DdlBrand.Items.Add("Roop Mantra");
                    DdlBrand.Items.Add("UB Fair");
                    DdlBrand.Items.Add("Vicco");
                    DdlBrand.Items.Add("Dabur");
                    DdlBrand.Items.Add("Natures");
                    DdlBrand.Items.Add("Manyata");
                    DdlBrand.Items.Add("Divya");
                    DdlBrand.Items.Add("Pears");
                    DdlBrand.Items.Add("No Scars");
                    DdlBrand.Items.Add("Everyuth");
                    DdlBrand.Items.Add("Jovees");
                    DdlBrand.Items.Add("Garnier");
                    DdlBrand.Items.Add("Head & Shoulder");
                    DdlBrand.Items.Add("Himalaya");
                    DdlBrand.Items.Add("Lakme");
                    DdlBrand.Items.Add("Loreal");
                    DdlBrand.Items.Add("Lotus");
                    DdlBrand.Items.Add("Livon");
                    DdlBrand.Items.Add("Nivea");
                    DdlBrand.Items.Add("Olay");
                    DdlBrand.Items.Add("Patanjali");
                    DdlBrand.Items.Add("Pamolive");
                    DdlBrand.Items.Add("Sun Silk");
                    DdlBrand.Items.Add("Streax");
                    DdlBrand.Items.Add("Godrej");
                    DdlBrand.Items.Add("Pantine");
                    DdlBrand.Items.Add("Ponds");
                    DdlBrand.Items.Add("Tresseme");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 8:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Dettol");
                    DdlBrand.Items.Add("Lifebuoy");
                    DdlBrand.Items.Add("Pamolive");
                    DdlBrand.Items.Add("Santoor");
                    DdlBrand.Items.Add("Savlon");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 9:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Avelia");
                    DdlBrand.Items.Add("Breeze");
                    DdlBrand.Items.Add("Cinthol");
                    DdlBrand.Items.Add("Chandrika");
                    DdlBrand.Items.Add("Dettol");
                    DdlBrand.Items.Add("Dove");
                    DdlBrand.Items.Add("Fiama Di Wills");
                    DdlBrand.Items.Add("Godrej");
                    DdlBrand.Items.Add("Hamam");
                    DdlBrand.Items.Add("Himalaya");
                    DdlBrand.Items.Add("Liril");
                    DdlBrand.Items.Add("Lifebuoy");
                    DdlBrand.Items.Add("Lux");
                    DdlBrand.Items.Add("Margo");
                    DdlBrand.Items.Add("Nivea");
                    DdlBrand.Items.Add("Mysore Sandal");
                    DdlBrand.Items.Add("Park Avenue");
                    DdlBrand.Items.Add("Patanjali");
                    DdlBrand.Items.Add("Pears");
                    DdlBrand.Items.Add("Rexona");
                    DdlBrand.Items.Add("Superia");
                    DdlBrand.Items.Add("Santoor");
                    DdlBrand.Items.Add("Savlon");
                    DdlBrand.Items.Add("Vivel");
                    DdlBrand.Items.Add("Wildstone");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 10:
                case 11:
                case 12:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Anchor");
                    DdlBrand.Items.Add("Colgate");
                    DdlBrand.Items.Add("Closeup");
                    DdlBrand.Items.Add("Dabur");
                    DdlBrand.Items.Add("Himalaya");
                    DdlBrand.Items.Add("Neem");
                    DdlBrand.Items.Add("Pepsodent");
                    DdlBrand.Items.Add("Patanjali");
                    DdlBrand.Items.Add("Listerine");
                    DdlBrand.Items.Add("Oral B");
                    DdlBrand.Items.Add("Sensodyne");
                    DdlBrand.Items.Add("Vicco");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 13:
                case 14:
                case 15:
                case 16:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Ayur");
                    DdlBrand.Items.Add("Baidyabooti");
                    DdlBrand.Items.Add("Boroline");
                    DdlBrand.Items.Add("Nivea");
                    DdlBrand.Items.Add("Olay");
                    DdlBrand.Items.Add("Glam Up");
                    DdlBrand.Items.Add("Loreal");
                    DdlBrand.Items.Add("Lotus");
                    DdlBrand.Items.Add("Garnier");
                    DdlBrand.Items.Add("Lakme");
                    DdlBrand.Items.Add("Lacto Calamine");
                    DdlBrand.Items.Add("Parachute");
                    DdlBrand.Items.Add("Patanjali");
                    DdlBrand.Items.Add("Himalaya");
                    DdlBrand.Items.Add("Jovees");
                    DdlBrand.Items.Add("Shalimar");
                    DdlBrand.Items.Add("Clinic Plus");
                    DdlBrand.Items.Add("Til Sona");
                    DdlBrand.Items.Add("Vaseline");
                    DdlBrand.Items.Add("Fair & Lovely");
                    DdlBrand.Items.Add("Vicco");
                    DdlBrand.Items.Add("Ponds");
                    DdlBrand.Items.Add("BoroPlus");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 17:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("BoroPlus");
                    DdlBrand.Items.Add("Denver");
                    DdlBrand.Items.Add("Godrej");
                    DdlBrand.Items.Add("Nivea");
                    DdlBrand.Items.Add("Nycil");
                    DdlBrand.Items.Add("Lakme");
                    DdlBrand.Items.Add("Loreal");
                    DdlBrand.Items.Add("Ponds");
                    DdlBrand.Items.Add("Park Avenue");
                    DdlBrand.Items.Add("Whitetone");
                    DdlBrand.Items.Add("Yardly");
                    DdlBrand.Items.Add("Z");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 25:
                case 26:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Elle 18");
                    DdlBrand.Items.Add("Revlon");
                    DdlBrand.Items.Add("Lakme");
                    DdlBrand.Items.Add("Maybeline");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 30:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Veet");
                    DdlBrand.Items.Add("Fem");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 31:
                case 32:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Gillete");
                    DdlBrand.Items.Add("7'OClock");
                    DdlBrand.Items.Add("Old Spice");
                    DdlBrand.Items.Add("Park-Avenue");
                    DdlBrand.Items.Add("Godrej");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
            }
        }
        else if (ddlcategory.SelectedItem.Text == "Household")
        {
            switch (product)
            {
                case 1:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Ambipur");
                    DdlBrand.Items.Add("Air Wick");
                    DdlBrand.Items.Add("Odonil");
                    DdlBrand.Items.Add("Glade");
                    DdlBrand.Items.Add("Godrej");
                    DdlBrand.Items.Add("Lovin");
                    DdlBrand.Items.Add("J K Helen");
                    DdlBrand.Items.Add("Riya");
                    DdlBrand.Items.Add("Vanessa");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 2:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Ambica");
                    DdlBrand.Items.Add("Cycle");
                    DdlBrand.Items.Add("Darshan");
                    DdlBrand.Items.Add("Mangaldeep");
                    DdlBrand.Items.Add("Shri Balaji");
                    DdlBrand.Items.Add("Patanjali");
                    DdlBrand.Items.Add("Zed Black");
                    DdlBrand.Items.Add("Samaj");
                    DdlBrand.Items.Add("Bansuri");
                    DdlBrand.Items.Add("Madhukunj");
                    DdlBrand.Items.Add("Hari Darshan");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 4:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Aim");
                    DdlBrand.Items.Add("Home");
                    DdlBrand.Items.Add("5 Star");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 3:
                case 5:
                case 6:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Ariel");
                    DdlBrand.Items.Add("Ezee");
                    DdlBrand.Items.Add("Henko");
                    DdlBrand.Items.Add("Rin");
                    DdlBrand.Items.Add("Revive");
                    DdlBrand.Items.Add("Tide");
                    DdlBrand.Items.Add("Comfort");
                    DdlBrand.Items.Add("Patanjali");
                    DdlBrand.Items.Add("Surf Excel");
                    DdlBrand.Items.Add("Sunlight");
                    DdlBrand.Items.Add("Mr White");
                    DdlBrand.Items.Add("Wipro");
                    DdlBrand.Items.Add("Wheel");
                    DdlBrand.Items.Add("Ujala");
                    DdlBrand.Items.Add("Vanish");
                    DdlBrand.Items.Add("Ok");
                    DdlBrand.Items.Add("Others");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 7:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Axion");
                    DdlBrand.Items.Add("Exo");
                    DdlBrand.Items.Add("Patanjali");
                    DdlBrand.Items.Add("Vim");
                    DdlBrand.Items.Add("Prill");
                    DdlBrand.Items.Add("Scotch-Brite");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 8:
                case 9:
                case 10:
                case 11:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Dettol");
                    DdlBrand.Items.Add("Lizol");
                    DdlBrand.Items.Add("Harpic");
                    DdlBrand.Items.Add("Colin");
                    DdlBrand.Items.Add("Mr Muscle");
                    DdlBrand.Items.Add("Nimyle");
                    DdlBrand.Items.Add("Domex");
                    DdlBrand.Items.Add("Sani Fresh");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 12:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Hit");
                    DdlBrand.Items.Add("All Out");
                    DdlBrand.Items.Add("Good Knight");
                    DdlBrand.Items.Add("Odomos");
                    DdlBrand.Items.Add("Mortein");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 13:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Pitambari");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 14:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Others");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
            }
        }
        else if (ddlcategory.SelectedItem.Text == "Branded Food")
        {
            switch (product)
            {
                case 1:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Anmol");
                    DdlBrand.Items.Add("Britania");
                    DdlBrand.Items.Add("Bisk Farm");
                    DdlBrand.Items.Add("Hide & Seek");
                    DdlBrand.Items.Add("Priya Gold");
                    DdlBrand.Items.Add("Parle");
                    DdlBrand.Items.Add("Sobisco");
                    DdlBrand.Items.Add("Sunfeast");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 2:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Baggrys");
                    DdlBrand.Items.Add("Kellogs");
                    DdlBrand.Items.Add("Saffola");
                    DdlBrand.Items.Add("Patanjali");
                    DdlBrand.Items.Add("Quakers");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 3:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Britania");
                    DdlBrand.Items.Add("Winkies");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 4:
                case 5:
                case 16:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Baiydyanath");
                    DdlBrand.Items.Add("Dabur");
                    DdlBrand.Items.Add("Lion");
                    DdlBrand.Items.Add("Mothers");
                    DdlBrand.Items.Add("Nilon");
                    DdlBrand.Items.Add("Priya");
                    DdlBrand.Items.Add("Prime");
                    DdlBrand.Items.Add("Patanjali");
                    DdlBrand.Items.Add("Kissan");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 6:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Lijaat");
                    DdlBrand.Items.Add("Sriram");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 7:
                case 8:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Dabur");
                    DdlBrand.Items.Add("Prime");
                    DdlBrand.Items.Add("Williams");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 9:
                case 12:
                case 13:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Maggi");
                    DdlBrand.Items.Add("Chings");
                    DdlBrand.Items.Add("Top Ramen");
                    DdlBrand.Items.Add("Sunfeast");
                    DdlBrand.Items.Add("Prime");
                    DdlBrand.Items.Add("Ruchi");
                    DdlBrand.Items.Add("Knorr");
                    DdlBrand.Items.Add("Patanjali");
                    DdlBrand.Items.Add("Smith & Jones");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 10:
                case 11:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Lays");
                    DdlBrand.Items.Add("Bingo");
                    DdlBrand.Items.Add("Uncle Chips");
                    DdlBrand.Items.Add("Haldiram");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 14:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Ruchi");
                    DdlBrand.Items.Add("Fortune");
                    DdlBrand.Items.Add("Nirav");
                    DdlBrand.Items.Add("Nutrela");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 15:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Bambino");
                    DdlBrand.Items.Add("MTR");
                    DdlBrand.Items.Add("Favo");
                    DdlBrand.Items.Add("Nilon");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 17:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Ruchak");
                    DdlBrand.Items.Add("Haldiram");
                    DdlBrand.Items.Add("Others");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 18:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Proteinx");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 19:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Cadbury");
                    DdlBrand.Items.Add("KitKat");
                    DdlBrand.Items.Add("Munch");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;

            }
        }
        else if (ddlcategory.SelectedItem.Text == "Bakery-Diary")
        {
            switch (product)
            {
                case 1:
                case 2:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Britania");
                    DdlBrand.Items.Add("Sajitha");
                    DdlBrand.Items.Add("Priya");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Amul");
                    DdlBrand.Items.Add("Britania");
                    DdlBrand.Items.Add("Omfed");
                    DdlBrand.Items.Add("Milkymoo");
                    DdlBrand.Items.Add("Mother Dairy");
                    DdlBrand.Items.Add("Nestle");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
            }
        }
        else if (ddlcategory.SelectedItem.Text == "Beverages")
        {
            switch (product)
            {
                case 1:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Real");
                    DdlBrand.Items.Add("Minute Maid");
                    DdlBrand.Items.Add("Tropicana");
                    DdlBrand.Items.Add("Kissan");
                    DdlBrand.Items.Add("Rasna");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 2:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Mazza");
                    DdlBrand.Items.Add("Coca-Cola");
                    DdlBrand.Items.Add("Pepsico");
                    DdlBrand.Items.Add("Frooti");
                    DdlBrand.Items.Add("Appy");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Bru");
                    DdlBrand.Items.Add("Brooke Bond");
                    DdlBrand.Items.Add("Lipton");
                    DdlBrand.Items.Add("Nescafe");
                    DdlBrand.Items.Add("Nestea");
                    DdlBrand.Items.Add("Nestle");
                    DdlBrand.Items.Add("Sunrise");
                    DdlBrand.Items.Add("Tata Tea");
                    DdlBrand.Items.Add("Tata");
                    DdlBrand.Items.Add("TajMahal");
                    DdlBrand.Items.Add("Tetley");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 8:
                case 9:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Bournvita");
                    DdlBrand.Items.Add("Boost");
                    DdlBrand.Items.Add("Complan");
                    DdlBrand.Items.Add("Horlicks");
                    DdlBrand.Items.Add("Nutricia");
                    DdlBrand.Items.Add("Proteinx");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
            }
        }
        else if (ddlcategory.SelectedItem.Text == "Office-Stationary")
        {
            switch (product)
            {
                case 1:
                case 2:
                case 3:
                case 4:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Natraj");
                    DdlBrand.Items.Add("Apsara");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 5:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Kangaroo");
                    DdlBrand.Items.Add("Other");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 6:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Kangaroo");
                    DdlBrand.Items.Add("Other");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                case 7:
                    DdlBrand.Items.Clear();
                    DdlBrand.Items.Add("Kangaroo");
                    DdlBrand.Items.Add("Other");
                    DdlBrand.Items.Insert(0, "Select Brand");
                    break;
                

            }
        }



    }
    protected void ddlcategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        int category = (int)ddlcategory.SelectedIndex;
        switch (category)
        {
            case 1:
                DdlProduct.Items.Clear();
                DdlProduct.Items.Add("Toor Dal");
                DdlProduct.Items.Add("Buta Dali");
                DdlProduct.Items.Add("Moong Dal");
                DdlProduct.Items.Add("kolath Dal");
                DdlProduct.Items.Add("Masoor Dal");
                DdlProduct.Items.Add("Soya Chunks");
                DdlProduct.Items.Add("Besan");
                DdlProduct.Items.Add("Maida");
                DdlProduct.Items.Add("Sooji");
                DdlProduct.Items.Add("Atta");
                DdlProduct.Items.Add("Salt");
                DdlProduct.Items.Add("Sugar");
                DdlProduct.Items.Add("Molases");
                DdlProduct.Items.Add("Mustard Oil");
                DdlProduct.Items.Add("Olive Oil");
                DdlProduct.Items.Add("Refined Oil");
                DdlProduct.Items.Add("Ricebran Oil");
                DdlProduct.Items.Add("Groundnut Oil");
                DdlProduct.Items.Add("Ghee");
                DdlProduct.Items.Add("Raw Rice");
                DdlProduct.Items.Add("Boiled Rice");
                DdlProduct.Items.Add("Basmati Rice");
                DdlProduct.Items.Add("Flatten Rice");
                DdlProduct.Items.Add("Almond");
                DdlProduct.Items.Add("Cashew");
                DdlProduct.Items.Add("Spices-Masala");
                DdlProduct.Items.Add("Whole-Spices");
                DdlProduct.Items.Add("Kabuli-Buta");
                DdlProduct.Items.Add("Sola-Buta");
                DdlProduct.Items.Add("Matar");
                DdlProduct.Items.Add("Badam");
                DdlProduct.Items.Add("Charmagaj");
                DdlProduct.Items.Add("Kismis");
                DdlProduct.Items.Add("Kheer Rice");
                DdlProduct.Items.Add("Dalia");
                DdlProduct.Items.Add("Sagoo");
                DdlProduct.Items.Add("Cornflour");
                DdlProduct.Items.Add("Green Gram(Biri)");

                DdlProduct.Items.Add("Tentuli(Tamarind)");
                DdlProduct.Items.Add("Khajuri(dates)");
                DdlProduct.Items.Add("Palua");
                DdlProduct.Items.Add("Mandia");
                DdlProduct.Items.Add("Misiri");
                DdlProduct.Items.Add("Mudhi");
                DdlProduct.Items.Add("Chatua");
                DdlProduct.Items.Add("Black Salt");
                DdlProduct.Items.Add("Edible Soda");
                DdlProduct.Items.Add("Juani");
                DdlProduct.Items.Add("Badi");
                DdlProduct.Items.Add("Dalia");
                DdlProduct.Items.Add("Chuda Powder");
                DdlProduct.Items.Insert(0, "Select Product");
                break;
            case 2:
                DdlProduct.Items.Clear();
                DdlProduct.Items.Add("Biscuits");
                DdlProduct.Items.Add("Breakfast Cereals");
                DdlProduct.Items.Add("Cakes");
                DdlProduct.Items.Add("Pickles");
                DdlProduct.Items.Add("Jam");
                DdlProduct.Items.Add("Papad");
                DdlProduct.Items.Add("Food Flavour");
                DdlProduct.Items.Add("Food Colour");
                DdlProduct.Items.Add("Noodles");
                DdlProduct.Items.Add("Namkeen");
                DdlProduct.Items.Add("Chips");
                DdlProduct.Items.Add("Sauce-Ketchup");
                DdlProduct.Items.Add("Soup");
                DdlProduct.Items.Add("Soya Chunks");
                DdlProduct.Items.Add("Vermicelli");
                DdlProduct.Items.Add("Honey");
                DdlProduct.Items.Add("Mixture");
                DdlProduct.Items.Add("Protein Powder");
                DdlProduct.Items.Add("Chocolates");
                DdlProduct.Items.Insert(0, "Select Products");
                break;
            case 3:
                DdlProduct.Items.Clear();
                DdlProduct.Items.Add("Breads-Cakes");
                DdlProduct.Items.Add("Rusk-Khara");
                DdlProduct.Items.Add("Milk");
                DdlProduct.Items.Add("Dahi");
                DdlProduct.Items.Add("Lassi");
                DdlProduct.Items.Add("Butter-Cheese");
                DdlProduct.Items.Add("Dairy Whitener");
                DdlProduct.Items.Insert(0, "Select Products");
                break;
            case 4:
                DdlProduct.Items.Clear();
                DdlProduct.Items.Add("Deos-Perfumes");
                DdlProduct.Items.Add("Hair Oil");
                DdlProduct.Items.Add("Hair Conditioner");
                DdlProduct.Items.Add("Hair Color");
                DdlProduct.Items.Add("Shampoo");
                DdlProduct.Items.Add("Body Wash");
                DdlProduct.Items.Add("Face Wash");
                DdlProduct.Items.Add("Hand Wash");
                DdlProduct.Items.Add("Soap");
                DdlProduct.Items.Add("Mouth Wash");
                DdlProduct.Items.Add("Tooth Paste");
                DdlProduct.Items.Add("Tooth Brush");
                DdlProduct.Items.Add("Body Oil");
                DdlProduct.Items.Add("Body Lotion");
                DdlProduct.Items.Add("Body Scrub");
                DdlProduct.Items.Add("Face Cream");
                DdlProduct.Items.Add("Face Powder");
                DdlProduct.Items.Add("Face Scrub");
                DdlProduct.Items.Add("Manicure");
                DdlProduct.Items.Add("Pedicure");
                DdlProduct.Items.Add("Hand Wax");
                DdlProduct.Items.Add("Body Massage");
                DdlProduct.Items.Add("Face Massage");
                DdlProduct.Items.Add("Face Foundation");
                DdlProduct.Items.Add("Nail Polish");
                DdlProduct.Items.Add("Nail Remover");
                DdlProduct.Items.Add("Serum");
                DdlProduct.Items.Add("Face Pack");
                DdlProduct.Items.Add("Face Mask");
                DdlProduct.Items.Add("Hair Remover");
                DdlProduct.Items.Add("Shaving Cream-Lotion");
                DdlProduct.Items.Add("Shaving Razor-Blade");
                DdlProduct.Items.Insert(0, "Select Products");
                break;
            case 5:
                DdlProduct.Items.Clear();
                DdlProduct.Items.Add("Fruit Juice");
                DdlProduct.Items.Add("Soft Drinks");
                DdlProduct.Items.Add("Green Tea");
                DdlProduct.Items.Add("Herbal Tea");
                DdlProduct.Items.Add("Tea");
                DdlProduct.Items.Add("Instant Coffee");
                DdlProduct.Items.Add("Organic Coffee");
                DdlProduct.Items.Add("Health Drink");
                DdlProduct.Items.Add("Energy Drink");
                DdlProduct.Items.Insert(0, "Select Products");
                break;
            case 6:
                DdlProduct.Items.Clear();
                DdlProduct.Items.Add("Air Freshner");
                DdlProduct.Items.Add("Agarbati");
                DdlProduct.Items.Add("Liquid Detergent");
                DdlProduct.Items.Add("Match Box");
                DdlProduct.Items.Add("Washing Bar");
                DdlProduct.Items.Add("Washing Powder");
                DdlProduct.Items.Add("Dish-Wash");
                DdlProduct.Items.Add("Floor Cleaner");
                DdlProduct.Items.Add("Glass Cleaner");
                DdlProduct.Items.Add("Kitchen Cleaner");
                DdlProduct.Items.Add("Toilet Cleaner");
                DdlProduct.Items.Add("Repellent");
                DdlProduct.Items.Add("Pitambari");
                DdlProduct.Items.Add("Jhuna");
                DdlProduct.Items.Insert(0, "Select Products");
                break;
            case 7:
                DdlProduct.Items.Clear();
                DdlProduct.Items.Add("Pen");
                DdlProduct.Items.Add("Pencil");
                DdlProduct.Items.Add("Eraser");
                DdlProduct.Items.Add("Sharpner");
                DdlProduct.Items.Add("Folder");
                DdlProduct.Items.Add("Stapler");
                DdlProduct.Items.Add("Whitener");
                DdlProduct.Items.Add("CelloTape");
                DdlProduct.Items.Insert(0, "Select Products");
                break;
            
        }
    }
    public void ShowCategory()
    {
        Object fillcategory = new Object();
        DataTable dt = BSLAYER.categoryfill(fillcategory);
        ddlcategory.DataSource = dt;
        ddlcategory.DataTextField = "Category_Name";
        ddlcategory.DataValueField = "Category_Id";
        ddlcategory.DataBind();
        ddlcategory.Items.Insert(0, "Select Category");
    }
    public void Fillquantity()
    {
        DdlQuantity.Items.Add("0.35gm");
        DdlQuantity.Items.Add("8gm");
        DdlQuantity.Items.Add("9gm");
        DdlQuantity.Items.Add("9ml");
        DdlQuantity.Items.Add("11gm");
        DdlQuantity.Items.Add("15gm");
        DdlQuantity.Items.Add("15ml");
        DdlQuantity.Items.Add("16gm");
        DdlQuantity.Items.Add("18gm");
        DdlQuantity.Items.Add("18ml");
        DdlQuantity.Items.Add("19ml");
        DdlQuantity.Items.Add("20gm");
        DdlQuantity.Items.Add("21gm");
        DdlQuantity.Items.Add("24gm");
        DdlQuantity.Items.Add("20ml");
        DdlQuantity.Items.Add("25gm");
        DdlQuantity.Items.Add("25ml");
        DdlQuantity.Items.Add("26gm");
        DdlQuantity.Items.Add("27gm");
        DdlQuantity.Items.Add("27ml");
        DdlQuantity.Items.Add("30gm");
        DdlQuantity.Items.Add("30ml");
        DdlQuantity.Items.Add("35ml");
        DdlQuantity.Items.Add("35gm");
        DdlQuantity.Items.Add("39gm");
        DdlQuantity.Items.Add("40gm");
        DdlQuantity.Items.Add("40ml");
        DdlQuantity.Items.Add("42gm");
        DdlQuantity.Items.Add("43gm");
        DdlQuantity.Items.Add("45gm");
        DdlQuantity.Items.Add("44gm");
        DdlQuantity.Items.Add("45ml");
        DdlQuantity.Items.Add("50gm");
        DdlQuantity.Items.Add("50ml");
        DdlQuantity.Items.Add("53gm");
        DdlQuantity.Items.Add("54gm");
        DdlQuantity.Items.Add("59ml");
        DdlQuantity.Items.Add("60gm");
        DdlQuantity.Items.Add("60ml");
        DdlQuantity.Items.Add("64gm");
        DdlQuantity.Items.Add("65ml");
        DdlQuantity.Items.Add("66gm");
        DdlQuantity.Items.Add("68gm");
        DdlQuantity.Items.Add("70gm");
        DdlQuantity.Items.Add("72ml");
        DdlQuantity.Items.Add("73gm");
        DdlQuantity.Items.Add("75gm");
        DdlQuantity.Items.Add("77gm");
        DdlQuantity.Items.Add("75ml");
        DdlQuantity.Items.Add("80gm");
        DdlQuantity.Items.Add("80ml");
        DdlQuantity.Items.Add("85ml");
        DdlQuantity.Items.Add("90gm");
        DdlQuantity.Items.Add("90ml");
        DdlQuantity.Items.Add("100gm");
        DdlQuantity.Items.Add("105gm");
        DdlQuantity.Items.Add("100ml");
        DdlQuantity.Items.Add("110gm");
        DdlQuantity.Items.Add("110ml");
        DdlQuantity.Items.Add("115ml");
        DdlQuantity.Items.Add("120gm");
        DdlQuantity.Items.Add("120ml");
        DdlQuantity.Items.Add("122ml");
        DdlQuantity.Items.Add("125gm");
        DdlQuantity.Items.Add("125ml");
        DdlQuantity.Items.Add("130ml");
        DdlQuantity.Items.Add("135ml");
        DdlQuantity.Items.Add("140gm");
        DdlQuantity.Items.Add("140ml");
        DdlQuantity.Items.Add("150gm");
        DdlQuantity.Items.Add("150ml");
        DdlQuantity.Items.Add("154gm");
        DdlQuantity.Items.Add("150ml");
        DdlQuantity.Items.Add("160gm");
        DdlQuantity.Items.Add("165gm");
        DdlQuantity.Items.Add("165ml");
        DdlQuantity.Items.Add("170ml");
        DdlQuantity.Items.Add("175gm");
        DdlQuantity.Items.Add("175ml");
        DdlQuantity.Items.Add("187gm");
        DdlQuantity.Items.Add("180gm");
        DdlQuantity.Items.Add("180ml");
        DdlQuantity.Items.Add("185ml");
        DdlQuantity.Items.Add("190ml");
        DdlQuantity.Items.Add("195gm");
        DdlQuantity.Items.Add("196gm");
        DdlQuantity.Items.Add("200gm");
        DdlQuantity.Items.Add("200ml");
        DdlQuantity.Items.Add("215gm");
        DdlQuantity.Items.Add("215ml");
        DdlQuantity.Items.Add("220ml");
        DdlQuantity.Items.Add("225ml");
        DdlQuantity.Items.Add("200ml");
        DdlQuantity.Items.Add("234ml");
        DdlQuantity.Items.Add("240gm");
        DdlQuantity.Items.Add("240ml");
        DdlQuantity.Items.Add("250gm");
        DdlQuantity.Items.Add("250ml");
        DdlQuantity.Items.Add("275gm");
        DdlQuantity.Items.Add("280gm");
        DdlQuantity.Items.Add("292gm");
        DdlQuantity.Items.Add("300gm");
        DdlQuantity.Items.Add("300ml");
        DdlQuantity.Items.Add("325gm");
        DdlQuantity.Items.Add("320ml");
        DdlQuantity.Items.Add("320gm");
        DdlQuantity.Items.Add("340ml");
        DdlQuantity.Items.Add("350gm");
        DdlQuantity.Items.Add("350ml");
        DdlQuantity.Items.Add("375gm");
        DdlQuantity.Items.Add("300ml");
        DdlQuantity.Items.Add("390gm");
        DdlQuantity.Items.Add("400gm");
        DdlQuantity.Items.Add("418gm");
        DdlQuantity.Items.Add("400ml");
        DdlQuantity.Items.Add("425gm");
        DdlQuantity.Items.Add("425ml");
        DdlQuantity.Items.Add("435gm");
        DdlQuantity.Items.Add("450gm");
        DdlQuantity.Items.Add("450ml");
        DdlQuantity.Items.Add("475ml");
        DdlQuantity.Items.Add("500gm");
        DdlQuantity.Items.Add("500ml");
        DdlQuantity.Items.Add("540ml");
        DdlQuantity.Items.Add("560gm");
        DdlQuantity.Items.Add("625gm");
        DdlQuantity.Items.Add("625ml");
        DdlQuantity.Items.Add("650gm");
        DdlQuantity.Items.Add("650ml");
        DdlQuantity.Items.Add("700ml");
        DdlQuantity.Items.Add("700gm");
        DdlQuantity.Items.Add("750gm");
        DdlQuantity.Items.Add("800ml");
        DdlQuantity.Items.Add("875gm");
        DdlQuantity.Items.Add("720ml");
        DdlQuantity.Items.Add("900gm");
        DdlQuantity.Items.Add("900ml");
        DdlQuantity.Items.Add("975ml");
        DdlQuantity.Items.Add("1Kg");
        DdlQuantity.Items.Add("1.2Kg");
        DdlQuantity.Items.Add("1ltr");
        DdlQuantity.Items.Add("1.5Kg");
        DdlQuantity.Items.Add("2Kg");
        DdlQuantity.Items.Add("3Kg");
        DdlQuantity.Items.Add("2ltr");
        DdlQuantity.Items.Add("5Kg");
        DdlQuantity.Items.Add("6kg");
        DdlQuantity.Items.Add("5ltr");
        DdlQuantity.Items.Add("10Kg");
        DdlQuantity.Items.Add("25Kg");
        DdlQuantity.Items.Add("1Pkt");
        DdlQuantity.Items.Add("2Pkt");
        DdlQuantity.Items.Add("10 pc");
        DdlQuantity.Items.Add("10 card");
        DdlQuantity.Items.Add("100 mat");
        DdlQuantity.Items.Add("14 pc");
        DdlQuantity.Items.Add("20 pc");
        DdlQuantity.Items.Add("30 pc");
        DdlQuantity.Items.Add("80 pc");
        DdlQuantity.Items.Add("100 pc");
        DdlQuantity.Items.Add("25 bag");
        DdlQuantity.Items.Add("30 bag");

        DdlQuantity.Items.Insert(0, "Select Item Quantity");
    }
    public void FillMargin()
    {
        for (int i = 1; i <= 19; i++)
        {
            DdlMargin.Items.Add(i.ToString());
        }
        DdlMargin.Items.Insert(0, "Select Margin");
    }
    public void Insertproduct()
    {
            string filename = ImgFileUpload.PostedFile.FileName;
            ImgFileUpload.SaveAs(Server.MapPath("~/ProductImage/" + filename));
            Object productsave = new Object();
            productsave.Category_Id = int.Parse(ddlcategory.SelectedValue);
            productsave.Product_Name = DdlProduct.SelectedValue;
            productsave.Product_MRP = int.Parse(Txtmrp.Text);
            //productsave.Product_Margin = int.Parse(DdlMargin.SelectedValue);
            productsave.Product_Price = int.Parse(TxtPrice.Text);
            productsave.Product_Quantity = DdlQuantity.SelectedValue;
            productsave.Product_Brand = DdlBrand.SelectedValue;
            productsave.Product_Image = "~/ProductImage/" + filename;
            productsave.Product_Description = TxtDesc.Text;
            productsave.Product_Offer = TxtOffer.Text;
            productsave.InStock = TxtStock.Text;
            productsave.Created_Date = HiddenDate.Value;
            BSLAYER.saveproduct(productsave);
            TxtPrice.Text = "";
            Txtmrp.Text = "";
            DdlMargin.ClearSelection();
            DdlQuantity.ClearSelection();
            DdlProduct.ClearSelection();
            ddlcategory.ClearSelection();
            TxtDesc.Text = "";
            TxtOffer.Text = "";
            TxtStock.Text = "";  
    }
    public void InsertOffer()
    {
        Object offersave = new Object();
        offersave.Product_Id = int.Parse(DdlProduct.SelectedValue);
        offersave.Product_Name = DdlProduct.SelectedValue;
        offersave.Product_Brand = DdlBrand.SelectedValue;
        offersave.Product_Offer = TxtOffer.Text;
        offersave.Created_Date = HiddenDate.Value;
        BSLAYER.saveoffer(offersave);

        DdlQuantity.ClearSelection();
        DdlProduct.ClearSelection();
        DdlBrand.ClearSelection();
        TxtOffer.Text = "";
    }
    protected void BtnRegister_Click(object sender, EventArgs e)
    {
        Object DuplicateFind = new Object();
        DuplicateFind.Product_Name = DdlProduct.SelectedValue;
        DuplicateFind.Product_Brand = DdlBrand.SelectedValue;
        DuplicateFind.Product_Quantity = DdlQuantity.SelectedValue;
        DuplicateFind.Product_MRP = int.Parse(Txtmrp.Text);
        DuplicateFind.Product_Description = TxtDesc.Text;
        DataTable dt = BSLAYER.FindDuplicate(DuplicateFind);
        int r = dt.Rows.Count;
        if (r < 1)
        {
            Insertproduct();
            PanelAlert.Visible = true;
            Lblmsg.Text = "Product Saved Successfully...";
        }
        else
        {
            PanelDuplicate.Visible = true;

        }
    }
    protected void DdlMargin_SelectedIndexChanged(object sender, EventArgs e)
    {
        mrp = int.Parse(Txtmrp.Text);
        margin = int.Parse(DdlMargin.SelectedValue);
        price = mrp - (mrp * margin / 100);
        TxtPrice.Text = price.ToString();
    }
    protected void Txtmrp_TextChanged(object sender, EventArgs e)
    {
        int mrp = int.Parse(Txtmrp.Text);
        int price;
        if ((mrp >= 1) && (mrp <= 20))
        {
            price = mrp;
            TxtPrice.Text = price.ToString();
        }
        else if ((mrp >= 21) && (mrp <= 49))
        {
            price = mrp - 1;
            TxtPrice.Text = price.ToString();
        }
        else if ((mrp >= 50) && (mrp <= 79))
        {
            price = mrp - 2;
            TxtPrice.Text = price.ToString();
        }
        else if ((mrp >= 80) && (mrp <= 109))
        {
            price = mrp - 3;
            TxtPrice.Text = price.ToString();
        }
        else if ((mrp >= 110) && (mrp <= 139))
        {
            price = mrp - 4;
            TxtPrice.Text = price.ToString();
        }
        else if ((mrp >= 140) && (mrp <= 169))
        {
            price = mrp - 5;
            TxtPrice.Text = price.ToString();
        }
        else if ((mrp >= 170) && (mrp <= 199))
        {
            price = mrp - 6;
            TxtPrice.Text = price.ToString();
        }
        else if ((mrp >= 200) && (mrp <= 229))
        {
            price = mrp - 7;
            TxtPrice.Text = price.ToString();
        }
        else if ((mrp >= 230) && (mrp <= 259))
        {
            price = mrp - 8;
            TxtPrice.Text = price.ToString();
        }
        else if ((mrp >= 260) && (mrp <= 289))
        {
            price = mrp - 9;
            TxtPrice.Text = price.ToString();
        }
        else if ((mrp >= 290) && (mrp <= 319))
        {
            price = mrp - 10;
            TxtPrice.Text = price.ToString();
        }
        else if ((mrp >= 320) && (mrp <= 349))
        {
            price = mrp - 11;
            TxtPrice.Text = price.ToString();
        }
        else if ((mrp >= 350) && (mrp <= 379))
        {
            price = mrp - 12;
            TxtPrice.Text = price.ToString();
        }
        else if ((mrp >= 380) && (mrp <= 409))
        {
            price = mrp - 13;
            TxtPrice.Text = price.ToString();
        }
    }
    
}