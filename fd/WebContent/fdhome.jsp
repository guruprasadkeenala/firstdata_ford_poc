<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="org.apache.commons.lang3.StringUtils" session="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Checkout</title>

 <%@include  file="templates/fd-template.html" %>
 
    <!-- Modal -->
              <!-- Enter Credit Card modal Start -->
              <%
              	Object request_page = request.getParameter("reqPage");
              	System.out.println("IF : REQUSST : request_page === "+request_page);
              	if(request_page!=null && !StringUtils.isBlank(request_page.toString())){
	              	if("add_card".equalsIgnoreCase(request_page.toString())){
	              %>
	              </head>
				<body>
	              <div class="" id="CreditcardModal" tabindex="-1" role="dialog" aria-labelledby="CreditcardModalLabel" style="height:100vh">
	                <div class="modal-dialog modal-dialog-credit-card-wid" role="document">
	                  <div class="modal-content">
	                    <div class="modal-header modal-pad">
	                      <button type="button" class="close icon-Close" style="display: none;" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"></span></button>
	                      <h4 class="modal-title modal-title-text dark-gray-mid-text" id="CreditcardModalLabel">Enter Credit Card
	                        <!-- <small class="pull-right mr20 modal-title-page-of">1 of 2</small> -->
	                      </h4>
	                    </div>
	                    <div class="modal-body modal-pad">
	                      <div class="row">
	                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	                          <div class="mb15">
	                            <div class="alert ford-alert alert-danger mb20" role="alert"><span class="icon-Info media-left"></span><span class="media-body media-middle fontsize10">There is an error on this page</span></div>
	                          </div>
	                          <form>
	                            <!-- <div class="form-group">
	                              <label for="ChooseSavecreditCard">Choose a Saved Credit Card</label>
	                              <select class="form-control selectpicker" id="ChooseSavecreditCard" title="Please Choose">
	                                <option>Option 1</option>
	                                <option>Option 2</option>
	                                <option>Option 3</option>
	                                <option>Option 4</option>
	                                <option>Option 5</option>
	                              </select>
	                            </div> -->
	                            <div class="form-group has-error has-feedback">
	                              <label for="InputName">Name <span class="AntennaExtraLight">(as it appears on card)</span></label>
	                              <input type="text" class="form-control" id="InputName" aria-describedby="NameError" title="Name">
	                              <span class="form-control-feedback icon-Info icon-Info24" aria-hidden="true"></span>
	                              <span class="sr-only">Error: Lorem ipsum required field error</span>
	                              <!-- <span id="NameError" class="help-block fontsize10">Lorem ipsum required field error</span> -->
	                            </div>
	                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 p0">
	                              <div class="col-lg-7 col-md-8 col-sm-8 col-xs-12 p0">
	                                <div class="form-group has-success has-feedback">
	                                  <label for="CardNumber">Card Number</label>
	                                  <input type="text" class="form-control" id="CardNumber" aria-describedby="CardError" title="Card number" maxlength="16">
	                                  <span class="form-control-feedback icon-Tick icon-Tick24" aria-hidden="true"></span>
	                                  <span class="sr-only">Error: Lorem ipsum required field error</span>
	                                  <span id="CardError" class="help-block fontsize10 hide">Lorem ipsum required field error</span>
	                                </div>
	                              </div>
	                              <div class="col-lg-5 col-md-4 col-sm-4 col-xs-4 pr0 p0-m">
	                                <div class="form-group has-success has-feedback">
	                                  <label for="CVVNumber">CVV <span class="visible-xs-inline">Number</span></label>
	                                  <input type="text" class="form-control" id="CVVNumber" aria-describedby="CVVError" title="CVV" maxlength="4">
	                                  <span class="form-control-feedback icon-Tick icon-Tick24" aria-hidden="true"></span>
	                                  <span class="sr-only">Error: Lorem ipsum required field error</span>
	                                  <span id="CVVError" class="help-block fontsize10 hide">Lorem ipsum required field error</span>
	                                </div>
	                              </div>
	                            </div>
	
	                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 p0">
	                              <div class="row ml0 mr0 mb15">
	                              <div class="form-group">
						                        <div><label for="CreditCardExpMonth">Expiration Date</label></div>
	                                  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 p0">
	                                      <select class="selectpicker form-control" id="CreditCardExpMonth" title="Month">
	                                        <option>Jan</option>
	                                        <option>Feb</option>
	                                        <option>Mar</option>
	                                        <option>Apr</option>
	                                        <option>May</option>
	                                        <option>Jun</option>
	                                        <option>Jul</option>
	                                        <option>Aug</option>
	                                        <option>Sep</option>
	                                        <option>Oct</option>
	                                        <option>Nov</option>
	                                        <option>Dec</option>
	                                      </select>
	                                  </div>
	                                  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pr0">
	                                      <select class="form-control selectpicker" id="CreditCardExpYear" title="Year">
	                                        <option>2017</option>
	                                        <option>2018</option>
	                                        <option>2019</option>
	                                        <option>2020</option>
	                                      </select>
	                                  </div>
	                                </div>
	                              </div>
	                              </div>
	
	                            <button type="Button" class="btn btn-primary mb20" title="Add Card">Add Card</button>
	                          </form>
	                        </div>
	                      </div>
	                    </div>
	                  </div>
	                </div>
	              </div>
	              <!-- Enter Credit Card modal End -->
	              <%
	              	} else if("guest_checkout".equalsIgnoreCase(request_page.toString())){
	              	
	              %>
	
	              <!-- Add card Guest user modal Start -->
	              <div id="AddCardGuestUser" style="height:100vh" tabindex="-1" role="dialog" aria-labelledby="AddCardGuestUserLabel">
	                <div class="modal-dialog modal-dialog-credit-card-wid" role="document">
	                  <div class="modal-content">
	                    <div class="modal-header modal-pad">
	                      <button type="button" style="display: none;" class="close icon-Close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"></span></button>
	                      <h4 class="modal-title modal-title-text dark-gray-mid-text" id="AddCardGuestUserLabel">Enter Credit Card</h4>
	                    </div>
	                    <div class="modal-body modal-pad">
	                      <div class="row">
	                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	                          <div class="mb15">
	                            <!-- <div class="alert ford-alert alert-danger mb20" role="alert"><span class="icon-Info media-left"></span><span class="media-body media-middle fontsize10">There is an error on this page</span></div> -->
	                          </div>
	                          <form>
	                            <div class="form-group has-feedback">
	                              <label for="InputName">Name <span class="AntennaExtraLight">(as it appears on card)</span></label>
	                              <input type="text" class="form-control" id="InputName" aria-describedby="NameError" title="Name">
	                              <!-- <span class="form-control-feedback icon-Info icon-Info24" aria-hidden="true"></span>
	                              <span class="sr-only">Error: Lorem ipsum required field error</span>
	                              <span id="NameError" class="help-block fontsize10">Lorem ipsum required field error</span> -->
	                            </div>
	                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 p0">
	                              <div class="col-lg-7 col-md-8 col-sm-8 col-xs-12 p0">
	                                <div class="form-group has-success has-feedback">
	                                  <label for="CardNumber">Card Number</label>
	                                  <input type="text" class="form-control" id="CardNumber" aria-describedby="CardError" title="Card number" maxlength="16">
	                                  <!-- <span class="form-control-feedback icon-Tick icon-Tick24" aria-hidden="true"></span>
	                                  <span class="sr-only">Error: Lorem ipsum required field error</span>
	                                  <span id="CardError" class="help-block fontsize10 hide">Lorem ipsum required field error</span>-->
	                                </div>
	                              </div>
	                              <div class="col-lg-5 col-md-4 col-sm-4 col-xs-4 pr0 p0-m">
	                                <div class="form-group has-success has-feedback">
	                                  <label for="CVVNumber">CVV <span class="visible-xs-inline">Number</span></label>
	                                  <input type="text" class="form-control" id="CVVNumber" aria-describedby="CVVError" title="CVV" maxlength="4">
	                                  <!-- <span class="form-control-feedback icon-Tick icon-Tick24" aria-hidden="true"></span>
	                                  <span class="sr-only">Error: Lorem ipsum required field error</span>
	                                  <span id="CVVError" class="help-block fontsize10 hide">Lorem ipsum required field error</span> -->
	                                </div>
	                              </div>
	                            </div>
	
	                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 p0">
	                              <div class="row ml0 mr0 mb15">
	                              <div class="form-group">
						                        <div><label for="CreditCardExpMonth">Expiration Date</label></div>
	                                  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 p0">
	
	                                      <select class="selectpicker form-control" id="CreditCardExpMonth" title="Month">
	                                        <option>Jan</option>
	                                        <option>Feb</option>
	                                        <option>Mar</option>
	                                        <option>Apr</option>
	                                        <option>May</option>
	                                        <option>Jun</option>
	                                        <option>Jul</option>
	                                        <option>Aug</option>
	                                        <option>Sep</option>
	                                        <option>Oct</option>
	                                        <option>Nov</option>
	                                        <option>Dec</option>
	                                      </select>
	                                  </div>
	                                  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pr0">
	                                      <select class="form-control selectpicker" id="CreditCardExpYear" title="Year">
	                                        <option>2017</option>
	                                        <option>2018</option>
	                                        <option>2019</option>
	                                        <option>2020</option>
	                                      </select>
	                                  </div>
	                                </div>
	                              </div>
	                              </div>
	                            <button type="Button" class="btn btn-primary mb20" title="Review Order">Review Order</button>
	                          </form>
	                        </div>
	                      </div>
	                    </div>
	                  </div>
	                </div>
	              </div>
	              <!-- Add card Guest user modal End -->
	              <%
	            	} else if("register_with_valut".equalsIgnoreCase(request_page.toString())){
	              %>
	
	              <!-- Add Card Registered User modal Start -->
	              <div class="" id="AddCardRegisteredUser" style="height:100vh" tabindex="-1" role="dialog" aria-labelledby="AddCardRegisteredUserLabel">
	                <div class="modal-dialog modal-dialog-credit-card-wid" role="document">
	                  <div class="modal-content">
	                    <div class="modal-header modal-pad">
	                      <button type="button" style="display: none;" class="close icon-Close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"></span></button>
	                      <h4 class="modal-title modal-title-text dark-gray-mid-text" id="AddCardRegisteredUserLabel">Enter Credit Card</h4>
	                    </div>
	                    <div class="modal-body modal-pad">
	                      <div class="row">
	                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	                          <div class="mb15">
	                            <!-- <div class="alert ford-alert alert-danger mb20" role="alert"><span class="icon-Info media-left"></span><span class="media-body media-middle fontsize10">There is an error on this page</span></div> -->
	                          </div>
	                          <form>
	                            <div class="form-group">
	                              <label for="ChooseSavecreditCard">Choose a Saved Credit Card</label>
	                              <select class="form-control selectpicker" id="ChooseSavecreditCard" title="Please Choose">
	                                <option>Amex</option>
	                                <option>American Express</option>
	                                <option selected>Master card</option>
	                                <option>Visa</option>
	                              </select>
	                            </div>
	                            <div class="form-group has-feedback">
	                              <label for="InputName">Name <span class="AntennaExtraLight">(as it appears on card)</span></label>
	                              <input type="text" class="form-control" id="InputName" aria-describedby="NameError" title="Name" value="John" disabled>
	                              <!-- <span class="form-control-feedback icon-Info icon-Info24" aria-hidden="true"></span>
	                              <span class="sr-only">Error: Lorem ipsum required field error</span>
	                              <span id="NameError" class="help-block fontsize10">Lorem ipsum required field error</span> -->
	                            </div>
	                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 p0">
	                              <div class="col-lg-7 col-md-8 col-sm-8 col-xs-12 p0">
	                                <div class="form-group has-success has-feedback">
	                                  <label for="CardNumber">Card Number</label>
	                                  <input type="text" class="form-control" id="CardNumber" aria-describedby="CardError" title="Card number" maxlength="16" disabled value="XXXXXXXXXXXXXXXX">
	                                  <!-- <span class="form-control-feedback icon-Tick icon-Tick24" aria-hidden="true"></span>
	                                  <span class="sr-only">Error: Lorem ipsum required field error</span>
	                                  <span id="CardError" class="help-block fontsize10 hide">Lorem ipsum required field error</span> -->
	                                </div>
	                              </div>
	                              <div class="col-lg-5 col-md-4 col-sm-4 col-xs-4 pr0 p0-m">
	                                <div class="form-group has-success has-feedback">
	                                  <label for="CVVNumber">CVV <span class="visible-xs-inline">Number</span></label>
	                                  <input type="text" class="form-control" id="CVVNumber" aria-describedby="CVVError" title="CVV" maxlength="4">
	                                  <!-- <span class="form-control-feedback icon-Tick icon-Tick24" aria-hidden="true"></span>
	                                  <span class="sr-only">Error: Lorem ipsum required field error</span>
	                                  <span id="CVVError" class="help-block fontsize10 hide">Lorem ipsum required field error</span> -->
	                                </div>
	                              </div>
	                            </div>
	
	                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 p0">
	                              <div class="row ml0 mr0 mb15">
	                              <div class="form-group">
						                        <div><label for="CreditCardExpMonth">Expiration Date</label></div>
	                                  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 p0">
	
	                                      <select class="selectpicker form-control" id="CreditCardExpMonth" title="Month" disabled>
	                                        <option selected>Jan</option>
	                                        <option>Feb</option>
	                                        <option>Mar</option>
	                                        <option>Apr</option>
	                                        <option>May</option>
	                                        <option>Jun</option>
	                                        <option>Jul</option>
	                                        <option>Aug</option>
	                                        <option>Sep</option>
	                                        <option>Oct</option>
	                                        <option>Nov</option>
	                                        <option>Dec</option>
	                                      </select>
	                                  </div>
	                                  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pr0">
	                                      <select class="form-control selectpicker" id="CreditCardExpYear" title="Year" disabled>
	                                        <option>2017</option>
	                                        <option selected>2018</option>
	                                        <option>2019</option>
	                                        <option>2020</option>
	                                      </select>
	                                  </div>
	                                </div>
	                              </div>
	                              </div>
	                            <button type="Button" class="btn btn-primary mb20" title="Review Order">Review Order</button>
	                          </form>
	                        </div>
	                      </div>
	                    </div>
	                  </div>
	                </div>
	              </div>
	              <!-- Add Card Registered User modal End -->
				  <%
	            	} else if("register_with_no_valut".equalsIgnoreCase(request_page.toString())){
	              %>
				  <!-- Add Card Registered New Card User modal Start -->
	              <div class="" id="AddCardRegisteredUserNewCard" style="height:100vh" tabindex="-1" role="dialog" aria-labelledby="AddCardRegisteredUserNewCardLabel">
	                <div class="modal-dialog modal-dialog-credit-card-wid" role="document">
	                  <div class="modal-content">
	                    <div class="modal-header modal-pad">
	                      <button type="button" style="display: none;" class="close icon-Close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"></span></button>
	                      <h4 class="modal-title modal-title-text dark-gray-mid-text" id="AddCardRegisteredUserNewCardLabel">Enter Credit Card</h4>
	                    </div>
	                    <div class="modal-body modal-pad">
	                      <div class="row">
	                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	                          <div class="mb15">
	                          </div>
	                          <form>
	                            <div class="form-group">
	                              <label for="ChooseSavecreditCard">Choose a Saved Credit Card</label>
	                              <select class="form-control selectpicker" id="ChooseSavecreditCard" title="Select">
	                                <option>Amex</option>
	                                <option>American Express</option>
	                                <option>Master card</option>
	                                <option>Visa</option>
	                              </select>
	                            </div>
	                            <div class="form-group has-feedback">
	                              <label for="InputName">Name <span class="AntennaExtraLight">(as it appears on card)</span></label>
	                              <input type="text" class="form-control" id="InputName" aria-describedby="NameError" title="Name" value="">
	                              <!-- <span class="form-control-feedback icon-Info icon-Info24" aria-hidden="true"></span>
	                              <span class="sr-only">Error: Lorem ipsum required field error</span>
	                              <span id="NameError" class="help-block fontsize10">Lorem ipsum required field error</span> -->
	                            </div>
	                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 p0">
	                              <div class="col-lg-7 col-md-8 col-sm-8 col-xs-12 p0">
	                                <div class="form-group has-success has-feedback">
	                                  <label for="CardNumber">Card Number</label>
	                                  <input type="text" class="form-control" id="CardNumber" aria-describedby="CardError" title="Card number" maxlength="16" value="">
	                                  <!-- <span class="form-control-feedback icon-Tick icon-Tick24" aria-hidden="true"></span>
	                                  <span class="sr-only">Error: Lorem ipsum required field error</span>
	                                  <span id="CardError" class="help-block fontsize10 hide">Lorem ipsum required field error</span> -->
	                                </div>
	                              </div>
	                              <div class="col-lg-5 col-md-4 col-sm-4 col-xs-4 pr0 p0-m">
	                                <div class="form-group has-success has-feedback">
	                                  <label for="CVVNumber">CVV <span class="visible-xs-inline">Number</span></label>
	                                  <input type="text" class="form-control" id="CVVNumber" aria-describedby="CVVError" title="CVV" maxlength="4">
	                                  <!-- <span class="form-control-feedback icon-Tick icon-Tick24" aria-hidden="true"></span>
	                                  <span class="sr-only">Error: Lorem ipsum required field error</span>
	                                  <span id="CVVError" class="help-block fontsize10 hide">Lorem ipsum required field error</span> -->
	                                </div>
	                              </div>
	                            </div>
	
	                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 p0">
	                              <div class="row ml0 mr0 mb15">
	                              <div class="form-group">
						                        <div><label for="CreditCardExpMonth">Expiration Date</label></div>
	                                  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 p0">
	
	                                      <select class="selectpicker form-control" id="CreditCardExpMonth" title="Month">
	                                        <option>Jan</option>
	                                        <option>Feb</option>
	                                        <option>Mar</option>
	                                        <option>Apr</option>
	                                        <option>May</option>
	                                        <option>Jun</option>
	                                        <option>Jul</option>
	                                        <option>Aug</option>
	                                        <option>Sep</option>
	                                        <option>Oct</option>
	                                        <option>Nov</option>
	                                        <option>Dec</option>
	                                      </select>
	                                  </div>
	                                  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pr0">
	                                      <select class="form-control selectpicker" id="CreditCardExpYear" title="Year">
	                                        <option>2017</option>
	                                        <option>2018</option>
	                                        <option>2019</option>
	                                        <option>2020</option>
	                                      </select>
	                                  </div>
	                                </div>
	                              </div>
	                              </div>
	                            <button type="Button" class="btn btn-primary mb20" title="Review Order">Review Order</button>
	                          </form>
	                        </div>
	                      </div>
	                    </div>
	                  </div>
	                </div>
	              </div>
	              <!-- Add Card Registered User New Card modal End -->
	              <%
	            	} else {
	              %>
	              <div>
	              	<h1>Requested resouces are not found.</h1>
	              </div>
	              <%
	             	 }
              	}
              %>
              </body>
              </html>