function hideIcons(){
	$('#nameDiv #icon-info,#nameDiv #icon-tick,#ccNumDiv #icon-info,#ccNumDiv #icon-tick,#cvvNumDiv #icon-info,#cvvNumDiv #icon-tick').hide();
	$('#nameDiv #NameError,#ccNumDiv #CardError,#ccNumDiv #CardNumOnlyError,#ccNumDiv #CardNumLengthError,#cvvNumDiv #CVVError,#cvvNumDiv #CVVNumLengthError,#cvvNumDiv #CVVNumOnlyError,#ccExpMonYearDiv #ccExpMonError,#ccExpMonYearDiv #ccExpYearError,#nameDiv #NameAlphabetError').hide();
}

function validateClickEvent(){
	$("button").on("click", function() {
		var ccName,ccNumber,cvvNumber,ccExpMonth,ccExpYear;
		if(this.id == 'addCard'){
			ccName = $('#CreditcardModal #InputName').val();
			ccNumber = $('#CreditcardModal #CardNumber').val();
			cvvNumber = $('#CreditcardModal #CVVNumber').val();
			ccExpMonth =$('#CreditcardModal #CreditCardExpMonth option:selected').val();
			ccExpYear = $('#CreditcardModal #CreditCardExpYear option:selected').val();
		} else {
			ccName = $('#AddCardGuestUser #InputName').val();
			ccNumber = $('#AddCardGuestUser #CardNumber').val();
			cvvNumber = $('#AddCardGuestUser #CVVNumber').val();
			ccExpMonth =$('#AddCardGuestUser #CreditCardExpMonth option:selected').val();
			ccExpYear = $('#AddCardGuestUser #CreditCardExpYear option:selected').val();
		}
		
		if(ccName ==='' && ccName.length === 0){
			$('#CreditcardModal  .alert').show();
			$('#nameDiv').addClass("has-error has-feedback");
			$('#nameDiv #icon-info').show();
			$('#nameDiv #icon-tick').hide();
		} else if(ccNumber ==='' && ccNumber.length === 0){
			$('#CreditcardModal  .alert').show();
			$('#ccNumDiv').addClass("has-error has-feedback");
			$('#ccNumDiv #icon-info').show();
			$('#ccNumDiv #icon-tick').hide();
		} else if (cvvNumber ==='' && cvvNumber.length === 0){
			$('#CreditcardModal  .alert').show();
			$('#cvvNumDiv').addClass("has-error has-feedback");
			$('#cvvNumDiv #icon-info').show();
			$('#cvvNumDiv #icon-tick').hide();
		} else if(ccExpMonth ==='' && ccExpMonth.length === 0){
			$('#CreditcardModal  .alert').show();
			$('#ccExpMon').addClass("has-error has-feedback");
		} else if (ccExpYear ==='' && ccExpYear.length === 0){
			$('#CreditcardModal  .alert').show();
			$('#ccExpYear').addClass("has-error has-feedback");
		} else {
			$('#CreditcardModal  .alert').hide();
		}
	});
}

function validateCCName(){
	$("#nameDiv #InputName").on('keyup', function() {
		$('#CreditcardModal  .alert').hide();
		var ccName = $('#CreditcardModal #InputName').val();
		var ccName_Regex = /^[a-zA-Z]+$/;
		if(ccName !='' && ccName.length >0){
			if(ccName.match(ccName_Regex)!=null && ccName.match(ccName_Regex)!= undefined ){
				$('#nameDiv').addClass("has-success has-feedback");
				$('#nameDiv').removeClass("has-error");
				$('#nameDiv #icon-info').hide();
				$('#nameDiv #icon-tick').show();
				$('#nameDiv #NameError').hide();
				$('#nameDiv #NameAlphabetError').hide();
				$('#CreditcardModal #common_alert').hide();	
			} else {
				$('#nameDiv').addClass("has-error has-feedback");
				$('#nameDiv').removeClass("has-success");
				$('#nameDiv #icon-info').show();
				$('#nameDiv #icon-tick').hide();
				$('#nameDiv #NameError').hide();
				$('#nameDiv #NameAlphabetError').show();
				$('#CreditcardModal #common_alert').show();
			}
		} else {
			$('#nameDiv').addClass("has-error has-feedback");
			$('#nameDiv').removeClass("has-success");
			$('#nameDiv #icon-info').show();
			$('#nameDiv #icon-tick').hide();
			$('#nameDiv #NameError').show();
			$('#CreditcardModal #common_alert').show();
		}
	});
}

function validateCCNumber(){
	$("#ccNumDiv #CardNumber").on('keyup', function() {
		$('#CreditcardModal  .alert').hide();
		var ccNumber = $('#CreditcardModal #CardNumber').val();
		if(ccNumber !='' && ccNumber.length===16 && $.isNumeric(ccNumber)){
			$('#ccNumDiv').addClass("has-success has-feedback");
			$('#ccNumDiv').removeClass("has-error");
			$('#ccNumDiv #icon-info').hide();
			$('#ccNumDiv #icon-tick').show();
			$('#ccNumDiv #CardError').hide();
			$('#ccNumDiv #CardNumLengthError').hide();
			$('#ccNumDiv #CardNumOnlyError').hide();
			$('#CreditcardModal #common_alert').hide();
		} else {
			$('#ccNumDiv').addClass("has-error has-feedback");
			$('#ccNumDiv').removeClass("has-success");
			$('#ccNumDiv #icon-info').show();
			$('#CreditcardModal #common_alert').show();
			$('#ccNumDiv #icon-tick').hide();
			if(ccNumber.length > 0 && !$.isNumeric(ccNumber)){
				$('#ccNumDiv #CardError').hide();
				$('#ccNumDiv #CardNumLengthError').hide();
				$('#ccNumDiv #CardNumOnlyError').show();
			} else if(ccNumber.length > 0 && ccNumber.length != 16){
				$('#ccNumDiv #CardError').hide();
				$('#ccNumDiv #CardNumLengthError').show();
				$('#ccNumDiv #CardNumOnlyError').hide();
			} else{
				$('#ccNumDiv #CardError').show();
				$('#ccNumDiv #CardNumLengthError').hide();
				$('#ccNumDiv #CardNumOnlyError').hide();
			}
		}
	});
}

function validateCVVNum(){
	debugger;
	$("#cvvNumDiv #CVVNumber").on('keyup', function() {
		$('#CreditcardModal  .alert').hide();
		var ccNumber = $('#CreditcardModal #CVVNumber').val();
		if(ccNumber !='' && ccNumber.length===3 && $.isNumeric(ccNumber)){
			$('#cvvNumDiv').addClass("has-success has-feedback");
			$('#cvvNumDiv').removeClass("has-error");
			$('#cvvNumDiv #icon-info').hide();
			$('#cvvNumDiv #icon-tick').show();
			$('#cvvNumDiv #CVVError').hide();
			$('#cvvNumDiv #CVVNumLengthError').hide();
			$('#cvvNumDiv #CVVNumOnlyError').hide();
			$('#CreditcardModal #common_alert').hide();
		} else {
			$('#cvvNumDiv').addClass("has-error has-feedback");
			$('#cvvNumDiv').removeClass("has-success");
			$('#cvvNumDiv #icon-info').show();
			$('#CreditcardModal #common_alert').show();
			$('#cvvNumDiv #icon-tick').hide();
			if(ccNumber.length > 0 && !$.isNumeric(ccNumber)){
				$('#cvvNumDiv #CVVError').hide();
				$('#cvvNumDiv #CVVNumLengthError').hide();
				$('#cvvNumDiv #CVVNumOnlyError').show();
			} else if(ccNumber.length >0 && ccNumber.length != 3){
				$('#cvvNumDiv #CVVError').hide();
				$('#cvvNumDiv #CVVNumLengthError').show();
				$('#cvvNumDiv #CVVNumOnlyError').hide();
			} else{
				$('#cvvNumDiv #CVVError').show();
				$('#cvvNumDiv #CVVNumLengthError').hide();
				$('#cvvNumDiv #CVVNumOnlyError').hide();
			}
		}
	});
}

function validateCCExpMonth(){
	$("#ccExpMon #CreditCardExpMonth").on('change', function() {
		var ccExpMonth =$('#CreditCardExpMonth option:selected').val();
		 if(ccExpMonth !='' && ccExpMonth.length > 0){
			$('#ccExpMon').addClass("has-success has-feedback");
			$('#ccExpMon').removeClass("has-error");
			$('#ccExpMonYearDiv #ccExpMonError').hide();
			$('#CreditcardModal #common_alert').hide();
		 } else{
			 $('#ccExpMon').addClass("has-error has-feedback");
			 $('#ccExpMon').removeClass("has-success");
			 $('#ccExpMonYearDiv #ccExpMonError').show();
			 $('#CreditcardModal #common_alert').show();
		 } 
	});
}

function validateCCExpYear(){
	$("#ccExpYear #CreditCardExpYear").on('change', function() {
		var ccExpYear = $('#CreditCardExpYear option:selected').val();
		if (ccExpYear !='' && ccExpYear.length>0){
			$('#ccExpYear').addClass("has-success has-feedback");
			$('#ccExpYear').removeClass("has-error");
			$('#ccExpMonYearDiv #ccExpYearError').hide();
			$('#CreditcardModal  .alert').hide();
		} else{
			$('#ccExpYear').addClass("has-error has-feedback");
			$('#ccExpYear').removeClass("has-success");
			$('#ccExpMonYearDiv #ccExpYearError').show();
			$('#CreditcardModal #common_alert').show();
		}	
	});
}

$(document).ready(function () {
	hideIcons();
	$('#CreditcardModal  .alert').hide();
	validateClickEvent();	
	validateCCName();
	validateCCNumber();
	validateCVVNum();
	validateCCExpMonth();
	validateCCExpYear();
});