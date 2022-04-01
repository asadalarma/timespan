/*
	*	Original script by: Shafiul Azam
	*	Version 4.0
	*	Modified by: Luigi Balzano

	*	Description:
	*	Inserts Countries and/or States as Dropdown List
	*	How to Use:

		In Head section:
		----------------
		<script type= "text/javascript" src = "countries.js"></script>
		
		In Body Section:
		----------------
		Select Country (with states):   <select id="country" name ="country"></select>
			
		Select State: <select name ="state" id ="state"></select>

        Select Country (without states):   <select id="country2" name ="country2"></select>
			
		<script language="javascript">
			populateCountries("country", "state");
			populateCountries("country2");
		</script>

	*
	*	License: Free to copy, distribute, modify, whatever you want to.
	*	Aurthor's Website: http://bdhacker.wordpress.com
	*
*/


//create 2D array function
function Create2DArray(rows,columns) {
   var x = new Array(rows);
   for (var i = 0; i < rows; i++) {
       x[i] = new Array(columns);
   }
   return x;
}

// Countries
var country_arr = new Array( "Pakistan");

// States
var s_a = new Array();
s_a[0]="";

s_a[1]="Balochistan|Federally Administered Tribal Areas|Islamabad Capital Territory|North-West Frontier Province|Punjab|Sindh";


// Cities
var city = Create2DArray(252,2000);
city[0]="";

city[1][1]="Quetta|Gwadar|Khuzdar|Chaman|Sibi|Turbat|Zhob|Loralai|Ziarat|Hub|Panjgur|Usta Mohammad|Pishin|Gadani|Kalat|Nushki|Pasni|Dera Allah Yar|Dera Murad Jamali|Sui|Dalbandin|Bela|Naseerabad|Ormara|Uthal|Kohlu|Kharan|Taftan|Jiwani|Dera Bugti|Qila Saifullah|Saindak|Gandakha|Wadh|Surab|Reko Diq|Harnai|Pishin Valley|Kuchlak|Duki|Chalgari|Appozai|Aghbarg|Kirani|Awaran|Jhal Magsi|Hinglaj|Jafarabad|Bostan";
city[1][2]="Peshawar|Landi Kotal|Parachinar|Bajaur Agency|Miramshah|Khaar|Mir Ali|Alizai|Makin|Wana|Sadda|Nawagai";

city[1][3]="Akrāla|Ara|Ari Saiyidan|Baggonal Mohra|Bann na Mohra|Bannīwālā Mohra|Barki Badhal|Barli Na|Betha|Bhambartrār|Bobri|Buttar|Bāgh Būta|Bāghwāla Mohra|Bān|Canoiwala Mohra|Chak Kamdar|Chak Mirza|Chakrā|Changa|Chauntra|Chere|Cherāh|Chhani|Chhanni|Chhohala Pottan|Chhāla|Chhāpur";

city[1][4]="Peshawar|Abbottabad|Dera Ismail Khan|Swat District|Mansehra|Chitral|Mingora|Mardan|Chakdara|Kohat|Risalpur|Swabi|Charsadda|Balakot|Nowshera|Haripur|Naran|Bannu|Shogran|Landi Kotal|Jamrud |Hangu|Nathia Gali|Havelian|Dunga Gali|Kakul";
city[1][5]="Lahore|Faisalabad|Multan|Gujranwala |Rawalpindi|Sialkot|Sheikhupura|Sargodha|Sahiwal| Bahawalpur|Dera Ghazi Khan|Gujrat|Jhang|Kasur|Bhakkar|Okara|Layyah|Kamalia|Mianwali|Wazirabad|Burewala|Ahmadpur|Chiniot|Chakwal|Pattoki|Shakargarh|Khanewal|Dinga|Attock District|Nankana Sahib|Toba Tek Singh|Kharian|Gujar Khan|Muzaffargarh|Lodhran|Sangla Hill|Liaqauatpur|Lalamusa|Chishtian|Chichawatni";
city[1][6]="Karachi|Hyderabad|Sukkur|Mirpur Khas|Larkana|Thatta|Nawabshah|Moro|Khairpur|Tando Allahyar|Kotri|Umerkot|Shahdadpur|Tando Adam|Jacobabad|Shikarpur|Sehwan Sharif|Qasimabad|Shahdadkot|Hala|Ghotki|Gulshan Town|Sakrand|Mithi|Sanghar|Tando Jam|Daharki";

function populateCities(countryElementId,stateElementId , cityElementId)
{
    var selectedCountryIndex = document.getElementById( countryElementId ).selectedIndex;
    	
    var selectedStateIndex = document.getElementById( stateElementId ).selectedIndex;
    //alert (selectedCountryIndex);
   // alert(selectedStateIndex);
	var cityElement = document.getElementById( cityElementId );
	
	cityElement.length=0;	// Fixed by Julian Woods
	cityElement.options[0] = new Option('Select City','');
	cityElement.selectedIndex = 0;
	
	var city_arr = city[selectedCountryIndex][selectedStateIndex].split("|");
	
	for (var i=0; i<city_arr.length; i++) {
    
       cityElement.options[cityElement.length] = new Option(city_arr[i],city_arr[i]);
	}
    
}


function populateStates( countryElementId, stateElementId ){
	
	var selectedCountryIndex = document.getElementById( countryElementId ).selectedIndex;

	var stateElement = document.getElementById( stateElementId );
	
	stateElement.length=0;	// Fixed by Julian Woods
	stateElement.options[0] = new Option('Select State','');
	stateElement.selectedIndex = 0;
	
	var state_arr = s_a[selectedCountryIndex].split("|");
	
	for (var i=0; i<state_arr.length; i++) {
		stateElement.options[stateElement.length] = new Option(state_arr[i],state_arr[i]);
	}
}

function populateCountries(countryElementId, stateElementId){
	// given the id of the <select> tag as function argument, it inserts <option> tags
	var countryElement = document.getElementById(countryElementId);
    
    
	countryElement.length=0;
	countryElement.options[0] = new Option('Select Country','-1');
	countryElement.selectedIndex = 0;
	for (var i=0; i<country_arr.length; i++) {
		countryElement.options[countryElement.length] = new Option(country_arr[i],country_arr[i]);
	}

	// Assigned all countries. Now assign event listener for the states.

	if( stateElementId ){
		countryElement.onchange = function(){
			populateStates( countryElementId, stateElementId );
		};
	}
}





//my own function

function populateCountrieswithcities(countryElementId, stateElementId , cityElementId){
	// given the id of the <select> tag as function argument, it inserts <option> tags
	var countryElement = document.getElementById(countryElementId);
    
  
    var stateElement = document.getElementById( stateElementId );
    
	countryElement.length=0;
	countryElement.options[0] = new Option('Select Country','-1');
	countryElement.selectedIndex = 0;
	for (var i=0; i<country_arr.length; i++) {
		countryElement.options[countryElement.length] = new Option(country_arr[i],country_arr[i]);
	}

	// Assigned all countries. Now assign event listener for the states.

	if( stateElementId ){
		countryElement.onchange = function(){
			populateStates( countryElementId, stateElementId );
		};
	}
    
    // Assigned all states. Now assign event listener for the cities.
    if( cityElementId ){
		stateElement.onchange = function(){
			populateCities( countryElementId, stateElementId, cityElementId );
		};
	}
}