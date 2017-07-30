<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Tarclink co</title>
<meta name="description" content="">
<meta name="keywords" content="">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="css/sitecss.css" rel="stylesheet" type="text/css">
<SCRIPT language="JavaScript" src="js.js" type="text/javascript"></SCRIPT>
<style type="text/css">
<!--
.style2 {color: #00529C}
-->
</style>
</head>
<body background="images/bg.gif">
<table cellpadding="0" cellspacing="0" align="center" border="0" width="772" style="border:1px solid #00529C; border-bottom:none;" bgcolor="#F1F8FE">
	<tr>
		<tD style="padding:5px; padding-bottom:0px;">
			<table cellpadding="0" cellspacing="0" border="0" width="100%">
				<tr>
					<Td class="jst" width="315" style="padding-top:5px;">Japan Standard Time &raquo; <span id="timestr" style="color:#000033"></span></Td>
				</tr>
			</table>
						<table cellpadding="0" class="bluetext" cellspacing="0" border="0" width="760" style="border:1px solid #00529C; background-image:url(images/login-bg.gif); background-repeat:repeat-x">
			<form action="login.php" method="post" name="login_form" onSubmit="return checkForm2()">
			<tr>
				<td width="9"></td>
				<Td height="29"><img src="images/login.gif"></Td>
				<td width="80" align="right"><strong>User Name</strong>&nbsp;</td>
				<Td width="120"><input type="text" name="loginid" class="inputstyle" style="width:115px" maxlength="50"></Td>
				<td align="right"><strong>Password</strong>&nbsp;</td>
				<Td width="120"><input type="password" name="password" class="inputstyle" style="width:115px" maxlength="50"></Td>
				<Td width="5"></Td>
				<td width="50"><input type="image" src="images/go.gif"></td>
				<tD><a href="register.php" class="ndc_main"><strong>&raquo; New Member</strong></a></tD>
				<tD><a href="forgot.php" class="ndc_main"><strong>&raquo; Forget Password</strong></a></tD>
			</tr>
			</form>
			</table>
						<table cellpadding="0" cellspacing="0" border="0" width="100%">
					<tr><Td height="5"></Td></tr>
			</table>
	</td>
</tr>
</table>
<script language="javascript" type="text/javascript">
function tTokyo(){
var GMT = 9; //GMT for Japan
var str;
var week = new Array("Sun","Mon","Tue","Wed","Thu","Fri","Sat");
var month = new Array("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec");
var gmt = new Date();
var now = new Date();
var set = now.getTimezoneOffset();
gmt.setTime(now.getTime()+(set/60+parseFloat(GMT))*60*60*1000); /// Calculate with GMT
//gmt.setTime(now.getTime());
//Mon = gmt.getMonth() + 1;if(Mon < 10)Mon = "0" + Mon;
Mon = month[gmt.getMonth()];
Wee = week[gmt.getDay()];
Dat = gmt.getDate();    if(Dat < 10)Dat = "0" + Dat;
//Yr  = gmt.getYear();
hor = gmt.getHours();   if(hor < 10)hor = "0" + hor;
if(hor<=12)
{
 	str = "AM";
}
else
{
	hor = hor - 12;
	//hor = "0" + hor;
	str = "PM";
}
min = gmt.getMinutes(); if(min < 10)min = "0" + min;
sec = gmt.getSeconds(); if(sec < 10)sec = "0" + sec;

timestr.innerHTML= hor+":"+min+":"+sec+" "+str+" &nbsp;"+Wee+", "+Dat+"-"+Mon;//+"-"+Yr;
setTimeout('tTokyo()',999);
}
tTokyo();

function checkForm2() {
     //Login ID
	 var loginid = document.login_form.loginid.value;
	 if(loginid.length == 0)
	 {
	      alert("Please enter login ID");
		  document.login_form.loginid.focus();
		  return false;
	 }
	 //Password
	 var password = document.login_form.password.value;
	 if(password.length == 0)
	 {
	      alert("Please enter Password");
		  document.login_form.password.focus();
		  return false;
	 }
	 return true;
}
</script>
<table cellpadding="0" cellspacing="0" align="center" border="0" width="772" style="border:1px solid #00529C; border-bottom:none; border-top:none;" bgcolor="#F1F8FE">
	<tr>
		<tD width="5"></td>
		<td width="160" valign="top"><span class="style2">Your Contact </span> <br>
	      <cite class="verysmallblack">Ms. Tony Iha <br>
	      P. O. Box 938,<br>
	    Kilifi-80108,<br>
	    Kenya.<br>
	    <strong>Phone:</strong> 254-041-525400 <br>
	    <strong>Mobile:</strong> 254-0725-547006
	    <br>
	    <strong>Email:</strong> jobs@kilifi.kemri-wellcome.org</cite> </td>
		<td width="5"></td>
		<td width="595" valign="top">
<table cellpadding="0" cellspacing="0" class="page_header" width="100%" style="background-image:url(images/header.gif); background-repeat:no-repeat">
	<tr>
	  <td width="63"></td>
	  <td height="47">CONTACT US</td>
	</tr>
</table>
<table cellpadding="0" cellspacing="0" class="smallblack" width="100%">
	<tr><td height="5"></td></tr>
</table>
<table cellpadding="0" cellspacing="10" class="smallblack" width="100%">
	<tr><td>
<form action="contactus.php" method="post" name="enquiryForm" onSubmit="return checkForm();">
<table class="smallblack" width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr><td><table class="boxes1" width="100%" border="0" cellspacing="0" cellpadding="5" bgcolor="#F8FAFD">
			<tr><td height="20" bgcolor="#3E80C7" class="smallwhite"><strong>Contact Information</strong></td></tr>
			<tr><td>
				<table class="smallblack" width="100%" border="0" cellspacing="0" cellpadding="2">
					<tr><td width="28%">Name<font class="smallred"> *</font></td>
                        <td width="72%"><select name="tlt" class="inputstyle">
							<option value="Mr." >Mr.</option>
							<option value="Ms." >Ms.</option>
							</select> <input name="name" type="text" class="inputstyle" id="name" value="" size="33" maxlength="50">
							</td></tr>
					<tr><td>Company</td>
						<td><input name="company" type="text" class="inputstyle" value="" size="41" maxlength="250"></td></tr>
					<tr><td>Address <font class="smallred"> *</font></td>
						<td><textarea name="address_1" cols="40" rows="5" class="inputstyle2" ></textarea></td></tr>
					<tr><td>City</td>
						<td><input name="city" type="text" class="inputstyle" value="" size="41" maxlength="50"></td></tr>
					<tr><td>State</td>
						<td><input name="state" type="text" class="inputstyle" value="" size="41" maxlength="50"></td></tr>
					<tr><td>Zip</td>
						<td><input name="zip" type="text" class="inputstyle" value="" size="41" maxlength="50"></td></tr>
					<tr><td>Country<font class="smallred"> *</font></td>
						<td><select name="country" style="width:262px" class="inputstyle">
							<option value="">Select</option>
							<option value="Afghanistan">Afghanistan</option><option value="Albania">Albania</option><option value="Algeria">Algeria</option><option value="American Samoa">American Samoa</option><option value="Andorra">Andorra</option><option value="Angola">Angola</option><option value="Anguilla">Anguilla</option><option value="Antarctica">Antarctica</option><option value="Antigua And Barbuda">Antigua And Barbuda</option><option value="Argentina">Argentina</option><option value="Armenia">Armenia</option><option value="Aruba">Aruba</option><option value="Ascension Island">Ascension Island</option><option value="Australia">Australia</option><option value="Austria">Austria</option><option value="Azerbaijan">Azerbaijan</option><option value="Bahamas">Bahamas</option><option value="Bahrain">Bahrain</option><option value="Bangladesh">Bangladesh</option><option value="Barbados">Barbados</option><option value="Belarus">Belarus</option><option value="Belgium">Belgium</option><option value="Belize">Belize</option><option value="Benin">Benin</option><option value="Bermuda">Bermuda</option><option value="Bhutan">Bhutan</option><option value="Bolivia">Bolivia</option><option value="Bosnia And Herzegovina">Bosnia And Herzegovina</option><option value="Botswana">Botswana</option><option value="Bouvet Island">Bouvet Island</option><option value="Brazil">Brazil</option><option value="British Indian Ocean Territory">British Indian Ocean Territory</option><option value="Brunei Darussalam">Brunei Darussalam</option><option value="Bulgaria">Bulgaria</option><option value="Burkina Faso">Burkina Faso</option><option value="Burundi">Burundi</option><option value="Cambodia">Cambodia</option><option value="Cameroon">Cameroon</option><option value="Canada">Canada</option><option value="Cap Verde">Cap Verde</option><option value="Cayman Islands">Cayman Islands</option><option value="Central African Republic">Central African Republic</option><option value="Chad">Chad</option><option value="Chile">Chile</option><option value="China">China</option><option value="Christmas Island">Christmas Island</option><option value="Cocos (keeling) Islands">Cocos (keeling) Islands</option><option value="Colombia">Colombia</option><option value="Comoros">Comoros</option><option value="Congo, Democratic Republic Of The">Congo, Democratic Republic Of The</option><option value="Cook Islands">Cook Islands</option><option value="Costa Rica">Costa Rica</option><option value="Croatia/hrvatska">Croatia/hrvatska</option><option value="Cuba">Cuba</option><option value="Cyprus">Cyprus</option><option value="Czech Republic">Czech Republic</option><option value="Denmark">Denmark</option><option value="Djibouti">Djibouti</option><option value="Dominica">Dominica</option><option value="Dominican Republic">Dominican Republic</option><option value="East Timor">East Timor</option><option value="Ecuador">Ecuador</option><option value="Egypt">Egypt</option><option value="El Salvador">El Salvador</option><option value="Equatorial Guinea">Equatorial Guinea</option><option value="Eritrea">Eritrea</option><option value="Estonia">Estonia</option><option value="Ethiopia">Ethiopia</option><option value="Falkland Islands (malvina)">Falkland Islands (malvina)</option><option value="Faroe Islands">Faroe Islands</option><option value="Fiji">Fiji</option><option value="Finland">Finland</option><option value="France">France</option><option value="French Guiana">French Guiana</option><option value="French Polynesia">French Polynesia</option><option value="French Southern Territories">French Southern Territories</option><option value="Gabon">Gabon</option><option value="Gambia">Gambia</option><option value="Georgia">Georgia</option><option value="Germany">Germany</option><option value="Ghana">Ghana</option><option value="Gibraltar">Gibraltar</option><option value="Greece">Greece</option><option value="Greenland">Greenland</option><option value="Grenada">Grenada</option><option value="Guadeloupe">Guadeloupe</option><option value="Guam">Guam</option><option value="Guatemala">Guatemala</option><option value="Guernsey">Guernsey</option><option value="Guinea">Guinea</option><option value="Guinea-bissau">Guinea-bissau</option><option value="Guyana">Guyana</option><option value="Haiti">Haiti</option><option value="Heard And Mcdonald Islands">Heard And Mcdonald Islands</option><option value="Holy See (city Vatican State)">Holy See (city Vatican State)</option><option value="Honduras">Honduras</option><option value="Hong Kong">Hong Kong</option><option value="Hungary">Hungary</option><option value="Iceland">Iceland</option><option value="India">India</option><option value="Indonesia">Indonesia</option><option value="Iran (islamic Republic Of)">Iran (islamic Republic Of)</option><option value="Iraq">Iraq</option><option value="Ireland">Ireland</option><option value="Isle Of Man">Isle Of Man</option><option value="Israel">Israel</option><option value="Italy">Italy</option><option value="Jamaica">Jamaica</option><option value="Japan">Japan</option><option value="Jersey">Jersey</option><option value="Jordan">Jordan</option><option value="Kazakhstan">Kazakhstan</option><option value="Kenya">Kenya</option><option value="Kiribati">Kiribati</option><option value="Korea, Republic Of">Korea, Republic Of</option><option value="Kuwait">Kuwait</option><option value="Kyrgyzstan">Kyrgyzstan</option><option value="Latvia">Latvia</option><option value="Lebanon">Lebanon</option><option value="Lesotho">Lesotho</option><option value="Liberia">Liberia</option><option value="Libya">Libya</option><option value="Liechtenstein">Liechtenstein</option><option value="Lithuania">Lithuania</option><option value="Luxembourg">Luxembourg</option><option value="Macau">Macau</option><option value="Macedonia, Former Yugoslav Republic">Macedonia, Former Yugoslav Republic</option><option value="Madagascar">Madagascar</option><option value="Malawi">Malawi</option><option value="Malaysia">Malaysia</option><option value="Maldives">Maldives</option><option value="Mali">Mali</option><option value="Malta">Malta</option><option value="Marshall Islands">Marshall Islands</option><option value="Martinique">Martinique</option><option value="Mauritania">Mauritania</option><option value="Mauritius">Mauritius</option><option value="Mayotte">Mayotte</option><option value="Mexico">Mexico</option><option value="Micronesia, Federal State Of">Micronesia, Federal State Of</option><option value="Moldova, Republic Of">Moldova, Republic Of</option><option value="Monaco">Monaco</option><option value="Mongolia">Mongolia</option><option value="Montserrat">Montserrat</option><option value="Morocco">Morocco</option><option value="Mozambique">Mozambique</option><option value="Myanmar">Myanmar</option><option value="Namibia">Namibia</option><option value="Nauru">Nauru</option><option value="Nepal">Nepal</option><option value="Netherlands">Netherlands</option><option value="Netherlands Antilles">Netherlands Antilles</option><option value="New Caledonia">New Caledonia</option><option value="New Zealand">New Zealand</option><option value="Nicaragua">Nicaragua</option><option value="Niger">Niger</option><option value="Nigeria">Nigeria</option><option value="Niue">Niue</option><option value="Norfolk Island">Norfolk Island</option><option value="Northern Mariana Islands">Northern Mariana Islands</option><option value="Norway">Norway</option><option value="Oman">Oman</option><option value="Pakistan">Pakistan</option><option value="Palau">Palau</option><option value="Palestinian Territories">Palestinian Territories</option><option value="Panama">Panama</option><option value="Papua New Guinea">Papua New Guinea</option><option value="Paraguay">Paraguay</option><option value="Peru">Peru</option><option value="Philippines">Philippines</option><option value="Pitcairn Island">Pitcairn Island</option><option value="Poland">Poland</option><option value="Portugal">Portugal</option><option value="Puerto Rico">Puerto Rico</option><option value="Qatar">Qatar</option><option value="Reunion Island">Reunion Island</option><option value="Romania">Romania</option><option value="Russian Federation">Russian Federation</option><option value="Rwanda">Rwanda</option><option value="Saint Kitts And Nevis">Saint Kitts And Nevis</option><option value="Saint Lucia">Saint Lucia</option><option value="Saint Vincent And The Grenadines">Saint Vincent And The Grenadines</option><option value="San Marino">San Marino</option><option value="Sao Tome And Principe">Sao Tome And Principe</option><option value="Saudi Arabia">Saudi Arabia</option><option value="Senegal">Senegal</option><option value="Seychelles">Seychelles</option><option value="Sierra Leone">Sierra Leone</option><option value="Singapore">Singapore</option><option value="Slovak Republic">Slovak Republic</option><option value="Slovenia">Slovenia</option><option value="Solomon Islands">Solomon Islands</option><option value="Somalia">Somalia</option><option value="South Africa">South Africa</option><option value="South Georgia">South Georgia</option><option value="Spain">Spain</option><option value="Sri Lanka">Sri Lanka</option><option value="St Helena">St Helena</option><option value="St Pierre And Miquelon">St Pierre And Miquelon</option><option value="Sudan">Sudan</option><option value="Suriname">Suriname</option><option value="Svalbard And Jan Mayen Islands">Svalbard And Jan Mayen Islands</option><option value="Swaziland">Swaziland</option><option value="Sweden">Sweden</option><option value="Switzerland">Switzerland</option><option value="Syrian Arab Republic">Syrian Arab Republic</option><option value="Taiwan">Taiwan</option><option value="Tajikistan">Tajikistan</option><option value="Tanzania">Tanzania</option><option value="Thailand">Thailand</option><option value="Togo">Togo</option><option value="Tokelau">Tokelau</option><option value="Tonga">Tonga</option><option value="Trinidad And Tobago">Trinidad And Tobago</option><option value="Tunisia">Tunisia</option><option value="Turkey">Turkey</option><option value="Turkmenistan">Turkmenistan</option><option value="Turks And Caicos Islands">Turks And Caicos Islands</option><option value="Tuvalu">Tuvalu</option><option value="Uganda">Uganda</option><option value="Ukraine">Ukraine</option><option value="United Arab Emirates">United Arab Emirates</option><option value="United Kingdom">United Kingdom</option><option value="United States">United States</option><option value="Uruguay">Uruguay</option><option value="Us Minor Outlying Islands">Us Minor Outlying Islands</option><option value="Uzbekistan">Uzbekistan</option><option value="Vanuatu">Vanuatu</option><option value="Venezuela">Venezuela</option><option value="Vietnam">Vietnam</option><option value="Virgin Islands (british)">Virgin Islands (british)</option><option value="Virgin Islands (usa)">Virgin Islands (usa)</option><option value="Wallis And Futuna Islands">Wallis And Futuna Islands</option><option value="Western Sahara">Western Sahara</option><option value="Western Samoa">Western Samoa</option><option value="Yemen">Yemen</option><option value="Yugoslavia">Yugoslavia</option><option value="Zambia">Zambia</option><option value="Zimbabwe">Zimbabwe</option>							</select></td></tr>
					<tr><td>Email<font class="smallred"> *</font></td>
						<td><input name="email_1" type="text" class="inputstyle" value="" size="41" maxlength="50"></td></tr>
					<tr><td>Telephone <font class="smallred">*</font></td>
						<td><input name="telephone_1" type="text" class="inputstyle" value="" size="41" maxlength="50"></td></tr>
					<tr><td>Mobile</td>
						<td><input name="mobile" type="text" class="inputstyle" id="mobile2" value="" size="41" maxlength="50"></td></tr>
					<tr><td>Fax</td>
						<td><input name="fax" type="text" class="inputstyle" id="fax2" value="" size="41" maxlength="50"></td></tr>
				</table>
			</td></tr>
		</table>
	</td></tr>
	<tr><td height="5"></td></tr>
	<tr><td>
		<table class="boxes1" width="100%" border="0" cellspacing="0" cellpadding="5" bgcolor="#F8FAFD">
			<tr><Td><table class="smallblack" width="100%" border="0" cellspacing="0" cellpadding="2">
			<tr><td><strong>Your Message</strong><font class="smallred"> *</font></td></tr>
			<tr><td><textarea name="comment" cols="80" rows="5" class="inputstyle2" id="comment"></textarea></td></tr>
			</table></Td></tr>
		</table></td></tr>
		<tr><td height="5"></td></tr>
		<tr><td>
		<tr><td>
			<table class="boxes1" width="100%" border="0" cellspacing="0" cellpadding="5" bgcolor="#F8FAFD">
				<tr>
				  <td>&nbsp;
				    <input type="submit" name="Submit" value="Submit"></td>
				</tr>
        </table>
    </td></tr>
</table>
</form>
<Script language="JavaScript" type="text/javascript">
<!--
function checkForm(){

		//Name
		var name = trim(document.enquiryForm.name.value);
		if(name.length == 0)
		{
		   alert("Please enter Name");
		   document.enquiryForm.name.focus();
		   return false;
		}
		//Address
		var address_1 = trim(document.enquiryForm.address_1.value);
		if(address_1.length == 0)
		{
		   alert("Please enter Address");
		   document.enquiryForm.address_1.focus();
		   return false;
		}
		//Country
		var country = document.enquiryForm.country.value;
		if(country.length == 0)
		{
		   alert("Please Select Country!!");
		   document.enquiryForm.country.focus();
		   return false;
		}
		//Email
		if(!validEmail(document.enquiryForm.email_1.value))
		{
			alert("Invalid email Id !!");
			 document.enquiryForm.email_1.focus();
			return false;
		}
		var telephone_1 = document.enquiryForm.telephone_1.value;
		if(telephone_1.length == 0)
		{
		   alert("Please enter Telephone Number!!");
		   document.enquiryForm.telephone_1.focus();
		   return false;
		}
		//message-partership/other
		var comment1 = document.enquiryForm.comment.value;
		if(comment1.length == 0)
		{
		   alert("Please enter message");
		   document.enquiryForm.comment.focus();
		   return false;
		}
		return true;
}
//-->
</Script></td></tr></table>
		</td>
		<td width="5"></td>
	</tr>
</table>
<table cellpadding="0" cellspacing="0" align="center" border="0" width="772" style="border:1px solid #00529C; border-top:none;" bgcolor="#F1F8FE">
	<tr>
		<tD style="padding:5px; padding-top:5px;">&nbsp;	  </td>
	</tr>
</table>
