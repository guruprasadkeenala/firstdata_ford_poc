<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Checkout</title>
<%@include  file="templates/fd-template.html" %>
<script type="text/javascript">
function clickMe(input){
	var inputValue = parseInt(input);
	var requested_page = "";
	if(inputValue == 0){
		requested_page = "add_card";
	} else if(inputValue == 1){
		requested_page = "guest_checkout";
	} else if(inputValue == 2){
		requested_page = "register_with_valut";
	} else if(inputValue == 3){
		requested_page = "register_with_no_valut";
	} else{
		requested_page = "error";
	}
	var iframe = getIframe();
	iframe.src = "http://localhost:8080/fd/fdHostedPage.jsp?reqPage="+requested_page;
	unloadIframe(false);
	document.getElementById("iframeDIV").appendChild(iframe);
}

function unloadIframe(bodyonload){
	var iframes = document.querySelectorAll('iframe');
	//alert("iframes.length === "+iframes.length+"bodyonload : "+bodyonload);
	for (var i = 0; i < iframes.length; i++) {
	    iframes[i].parentNode.removeChild(iframes[i]);
	}
	if(bodyonload){
		var iframe = getIframe();
		document.getElementById("iframeDIV").appendChild(iframe);		
	}
}

function getIframe(){
	var iframe = document.createElement('iframe');
	iframe.frameBorder=0;
	iframe.width="100%";
	iframe.height="600";
	iframe.scrolling="no";
	iframe.id="fdFrame";
	return iframe;
}

</script>
</head>
<body onload="javascript:unloadIframe(true);">
    <section class="header-strip">
      <div class="container">
        <header>
          <nav class="navbar navbar-default navbar-default-custom pos-rel bg-none mt5">
              <!-- Brand and toggle get grouped for better mobile display -->
              <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed navbar-left" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar top-bar"></span>
                  <span class="icon-bar middle-bar"></span>
                  <span class="icon-bar bottom-bar"></span>
                </button>
                <a href="#" title="Ford Logo" alt="Ford Logo" class="visible-lg visible-md mr40 mt10">
                  <img src="assets/images/ford-logo.png" class="img-responsive" title="Ford Logo"/>
                </a>
                <a href="#" title="Ford Logo" alt="Ford Logo" class="visible-sm visible-xs brand-logo-centered">
                  <img src="assets/images/ford-logo-tablet-mobile.png" class="" title="Ford Logo"/>
                </a>
              </div>

              <!-- Collect the nav links, forms, and other content for toggling -->
              <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav mt5 mb0">
                  <li class="pl10 pr10"><a href="#" title="Shop">Shop <span class="icon-arrow-right pull-right visible-sm visible-xs"><span class="sr-only">Arrow</span></span><span class="sr-only">(current)</span></a></li>
                  <li class="pl10 pr10 active"><a href="#" title="My Profile">My Profile</a></li>
                  <li class="pl10 pr10"><a href="#" title="Resources">Resources<span class="icon-arrow-right pull-right visible-sm visible-xs"><span class="sr-only">Arrow</span></span></a></li>
                </ul>
              </div><!-- /.navbar-collapse -->
              <div class="pos-abs user-info">
                <ul class="list-inline">
                  <li class="mr10"><span class="icon-user inline-block media-middle hidden-xs pr10 text-primary"><span class="sr-only">User icon</span></span><span class="hidden-sm hidden-xs media-middle link-text"><a href="#" title="Sign In">Sign In</a> <span class="text-primary pl5 pr5">|</span> <a href="#" title="Register">Register</a></span></li>
                  <li class="mr10"><a href="#" title="Find a Dealer"><span class="icon-location inline-block media-middle hidden-xs pr10">
                <span class="path1"><span class="sr-only">Lccation</span></span><span class="path2"><span class="sr-only">Lccation</span></span>
              </span><span class="hidden-sm hidden-xs media-middle link-text">Find a Dealer</span></a></li>
                  <li class="mr10"><a href="#" title="Share"><span class="icon-share inline-block media-middle hidden-xs pr10"><span class="sr-only">Share</span></span><span class="hidden-sm hidden-xs media-middle link-text">Share</span></a></li>
                  <li class="mr10 hidden-xs"><a href="#" title="My Orders"><span class="icon-my-order inline-block media-middle pr10"><span class="sr-only">My Orders</span></span><span class="hidden-sm media-middle link-text">My Orders</span></a></li>
                  <li class="mr10 visible-xs-inline"><a href="#" title="Search"><span class="icon-search inline-block media-middle pr10"><span class="sr-only">Search</span></span></a></li>
                  <li><a href="#" title="Cart"><span class="icon-cart inline-block media-middle pr10"><span class="sr-only">Cart</span></span></a></li>
                </ul>
              </div>
          </nav>
          <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            </div>
            </div>
        </header>
      </div>
    </section>
    <section class="container">
        <div class="row">
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="iframeDIV">

            <!-- Button trigger modal -->
              <button type="button" class="btn btn-primary btn-lg mb15-m" title="Add Card" onclick="javascript:clickMe('0');">Add Card</button>

              <button type="button" class="btn btn-primary btn-lg mb15-m" title="Guest User Checkout" onclick="javascript:clickMe('1');">Guest User Checkout</button>

              <button type="button" class="btn btn-primary btn-lg mb15-m" title="Registered User checkout – vaulted Card" onclick="javascript:clickMe('2');">Registered User checkout - Vaulted Card</button>
			  
              <button type="button" class="btn btn-primary btn-lg mb15-m" title="Registered User checkout – New Card" onclick="javascript:clickMe('3');">Registered User checkout - New Card</button>

			  <iframe id="fdFrame"width="100%" height="600" frameborder="0" scrolling="no">
              </iframe>
          </div>
        </div>
    </section>
    <!-- footer Starts -->
    <footer>
        <section class="container">
            <!-- Brands Starts -->
            <div class="row brands-panel">
              <div class="col-lg-2 col-md-2 col-sm-3 col-xs-12 dark-blue-mid-bg brands-auto-height">
                <div class="white-text brand-text media-body media-middle text-center">Our Brands</div>
              </div>
              <div class="col-lg-10 col-md-10 col-sm-9 col-xs-12 gray-bg brands-auto-height">
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 brandslogo-b mt15 pb10-m">
                  <a href="#" title="Ford Parts">
                      <img src="assets/images/ford-parts.png" alt="Ford Parts" title="ford Parts" class="img-responsive pl15 pr15" />
                  </a>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 brandslogo-b mt15 pb10-m">
                  <a href="#" title="Ford motorcraft">
                    <img src="assets/images/ford-motorcraft.png" alt="Ford motorcraft" title="ford motorcraft" class="img-responsive pl15 pr15" />
                  </a>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 brandslogo-b mt15 pb10-m">
                  <a href="#" title="Ford performance">
                    <img src="assets/images/ford-performance.png" alt="Ford performance" title="ford performance" class="img-responsive pl15 pr15" />
                  </a>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 mt15 pb10-m">
                  <a href="#" title="Ford accessories">
                    <img src="assets/images/ford-accessories.png" alt="Ford accessories" title="ford accessories" class="img-responsive pl15 pr15" />
                  </a>
                </div>

              </div>
            </div>
            <!-- Brands Ends -->

            <!-- Footer links Starts -->
            <div class="row">
              <div class="col-lg-12 col-md-12 col-sm-12 dark-black-bg hidden-xs">
                <div class="col-lg-4 col-md-5 col-sm-4 dark-black-bg col-lg-offset-1">
                  <p class="fontsize18 white-text pl15 pt40 mt20">Shop</p>
                  <div class="row fontsize13 footer-link-text">
                    <div class="col-lg-6 col-md-6 col-sm-6 p0-t">
                      <ul class="list-group list-group-footer">
                        <li class="list-group-item"><a href="#" title="Accessories & Fluids">Accessories & Fluids</a></li>
                        <li class="list-group-item"><a href="#" title="Air and Fuel Delivery">Air and Fuel Delivery</a></li>
                        <li class="list-group-item"><a href="#" title="Body">Body</a></li>
                        <li class="list-group-item"><a href="#" title="Brake">Brake</a></li>
                        <li class="list-group-item"><a href="#" title="Cooling">Cooling</a></li>
                        <li class="list-group-item"><a href="#" title="Driveline and Axles">Driveline and Axles</a></li>
                        <li class="list-group-item"><a href="#" title="Electrical, Charging and Starting">Electrical, Charging and Starting</a></li>
                        <li class="list-group-item"><a href="#" title="Electrical, Lighting and Body">Electrical, Lighting and Body</a></li>
                        <li class="list-group-item"><a href="#" title="Electronics and Telematics">Electronics and Telematics</a></li>
                        <li class="list-group-item"><a href="#" title="Emission Control">Emission Control</a></li>
                        <li class="list-group-item"><a href="#" title="Engine">Engine</a></li>
                      </ul>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 p0-t">
                      <ul class="list-group list-group-footer">
                        <li class="list-group-item"><a href="#" title="Exhaust">Exhaust</a></li>
                        <li class="list-group-item"><a href="#" title="HVAC">HVAC</a></li>
                        <li class="list-group-item"><a href="#" title="Ignition">Ignition</a></li>
                        <li class="list-group-item"><a href="#" title="Steering">Steering</a></li>
                        <li class="list-group-item"><a href="#" title="Suspension">Suspension</a></li>
                        <li class="list-group-item"><a href="#" title="Tire and Wheel">Tire and Wheel</a></li>
                        <li class="list-group-item"><a href="#" title="Tools and Equipment">Tools and Equipment</a></li>
                        <li class="list-group-item"><a href="#" title="Transfer Case">Transfer Case</a></li>
                        <li class="list-group-item"><a href="#" title="Transmission">Transmission</a></li>
                        <li class="list-group-item"><a href="#" title="Transmission and Transaxle - Auto">Transmission and Transaxle - Auto</a></li>
                        <li class="list-group-item"><a href="#" title="Wiper and Washer">Wiper and Washer</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-2 dark-black-bg p0-t">
                  <p class="fontsize18 white-text pl15 pt40 mt20">My Profile</p>
                  <ul class="list-group list-group-footer fontsize13 footer-link-text">
                    <li class="list-group-item"><a href="#" title="Sign In">Sign In</a></li>
                    <li class="list-group-item"><a href="#" title="Register">Register</a></li>
                  </ul>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-3 dark-black-bg p0-t">
                  <p class="fontsize18 white-text pl15 pt40 mt20">Resources</p>
                  <ul class="list-group list-group-footer fontsize13 footer-link-text">
                    <li class="list-group-item"><a href="#" title="Our Brands">Our Brands</a></li>
                    <li class="list-group-item"><a href="#" title="Our Products">Our Products</a></li>
                    <li class="list-group-item"><a href="#" title="FAQ">FAQ</a></li>
                    <li class="list-group-item"><a href="#" title="Motorcraft eCounter">Motorcraft eCounter</a></li>
                    <li class="list-group-item"><a href="#" title="Ford Catalog Advantage">Ford Catalog Advantage</a></li>
                    <li class="list-group-item"><a href="#" title="Ford Technical Resource Center">Ford Technical Resource Center</a></li>
                    <li class="list-group-item"><a href="#" title="Motorcraft Technical Resources">Motorcraft Technical Resources</a></li>
                  </ul>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-3 dark-black-bg p0-t">
                  <p class="fontsize18 white-text pl15 pt40 mt20">Related Links</p>
                  <ul class="list-group list-group-footer fontsize13 footer-link-text">
                    <li class="list-group-item"><a href="#" title="Ford Social">Ford Social</a></li>
                    <li class="list-group-item"><a href="#" title="Contact Ford">Contact Ford</a></li>
                    <li class="list-group-item"><a href="#" title="Ford Vehicles">Ford Vehicles</a></li>
                    <li class="list-group-item"><a href="#" title="Ford Accessories">Ford Accessories</a></li>
                    <li class="list-group-item"><a href="#" title="Ford Owners">Ford Owners</a></li>
                    <li class="list-group-item"><a href="#" title="Ford Performance Parts">Ford Performance Parts</a></li>
                    <li class="list-group-item"><a href="#" title="Ford Motor Company Fleet">Ford Motor Company Fleet</a></li>
                    <li class="list-group-item"><a href="#" title="Lincoln Vehicles">Lincoln Vehicles</a></li>
                    <li class="list-group-item"><a href="#" title="Lincoln Accessories">Lincoln Accessories</a></li>
                    <li class="list-group-item"><a href="#" title="Lincoln Owners">Lincoln Owners</a></li>
                    <li class="list-group-item"><a href="#" title="Rotunda Tools & Equipment">Rotunda Tools & Equipment</a></li>
                    <li class="list-group-item"><a href="#" title="Power Stroke Diesel">Power Stroke Diesel</a></li>
                    <li class="list-group-item"><a href="#" title="Warriors in Pink">Warriors in Pink</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <!-- Footer links Ends -->

            <!-- Footer links Starts -->
            <div class="row">
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 dark-blue-mid-bg pull-left p40 p15-m">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 p0 pull-right">
                  <div class="list-shares chatnow-b nounderline text-right">
                    <a href="#" class="blue-link-text inline-block" title="Chat now"><span class="icon-chat white-text media-middle img-circle p5"></span><span class="media-middle fontsize18 pl15 chatnow">Chat now</span></a>
                  </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 p0">
                    <div class="list-shares nounderline">
                      <span class="fontsize16 pr10 white-text pull-left pt5">Follow Us</span>
                      <a href="#" class="mr3 icon-facebook p5 white-text" title="Facebook"><i class="sr-only">Facebook</i></a>
                      <a href="#" class="mr3 icon-twitter p5 white-text" title="twitter"><i class="sr-only">twitter</i></a>
                      <a href="#" class="mr3 icon-youtube p5 white-text" title="youtube"><i class="sr-only">youtube</i></a>
                      <a href="#" class="mr3 icon-instagram p5 white-text" title="instagram"><i class="sr-only">instagram</i></a>
                    </div>
                </div>
              </div>
            </div>

            <div class="row mb40">
              <div class="pl40 pt20 pb20 p15-m hidden-xs">
                <img src="assets/images/ford-logo-footer.png" alt="Ford logo" title="ford logo"/>
              </div>
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 small pl40 pb20 p15-m copyright-links">
                  <span class="dark-gray-mid-text">© 2015 Ford Motor Company</span>
                  <a href="#" class="p10" title="Site Map">Site Map</a>
                  <a href="#" class="p10" title="Terms & Conditions">Terms & Conditions</a>
                  <a href="#" class="p10" title="Privacy">Privacy</a>
                  <a href="#" class="p10" title="Your CA Privacy Rights">Your CA Privacy Rights</a>
                  <a href="#" class="p10" title="Additional Disclosures">Additional Disclosures</a>
                  <a href="#" class="p10" title="Ad Choices">Ad Choices</a>
                  <a href="#" class="p10" title="International Users">International Users</a>
                  <a href="#" class="p10" title="En Español">En Español</a>
                  <a href="#" class="p10" title="Site Feedback">Site Feedback</a>

              </div>
            </div>
        </section>
    </footer>
    <!-- footer Ends -->
</body>

</html>