function hideIcons(){
	$('#nameDiv #icon-info,#nameDiv #icon-tick,#ccNumDiv #icon-info,#ccNumDiv #icon-tick,#cvvNumDiv #icon-info,#cvvNumDiv #icon-tick').hide();
	$('#nameDiv #NameError,#ccNumDiv #CardError,#ccNumDiv #CardNumOnlyError,#ccNumDiv #CardNumLengthError,#cvvNumDiv #CVVError,#cvvNumDiv #CVVNumLengthError,#cvvNumDiv #CVVNumOnlyError,#ccExpMonYearDiv #ccExpMonError,#ccExpMonYearDiv #ccExpYearError,#nameDiv #NameAlphabetError').hide();
}

function validateClickEvent(){
	$("button").on("click", function() {
		var ccName,ccNumber,cvvNumber,ccExpMonth,ccExpYear,modalId;
		if(this.id == 'addCard'){
			modalId = "#CreditcardModal";
		} else {
			modalId = "#AddCardGuestUser";
		}
		ccName = $(modalId+' #InputName').val();
		ccNumber = $(modalId+' #CardNumber').val();
		cvvNumber = $(modalId+' #CVVNumber').val();
		ccExpMonth =$(modalId+' #CreditCardExpMonth option:selected').val();
		ccExpYear = $(modalId+' #CreditCardExpYear option:selected').val();
		
		if(ccName ==='' && ccName.length === 0){
			$(modalId+' .alert').show();
			$(modalId+' #nameDiv').addClass("has-error has-feedback");
			$(modalId+' #nameDiv #icon-info').show();
			$(modalId+' #nameDiv #icon-tick').hide();
		} else if(ccNumber ==='' && ccNumber.length === 0){
			$(modalId+' .alert').show();
			$(modalId+' #ccNumDiv').addClass("has-error has-feedback");
			$(modalId+' #ccNumDiv #icon-info').show();
			$(modalId+' #ccNumDiv #icon-tick').hide();
		} else if (cvvNumber ==='' && cvvNumber.length === 0){
			$(modalId+' .alert').show();
			$(modalId+' #cvvNumDiv').addClass("has-error has-feedback");
			$(modalId+' #cvvNumDiv #icon-info').show();
			$(modalId+' #cvvNumDiv #icon-tick').hide();
		} else if(ccExpMonth ==='' && ccExpMonth.length === 0){
			$(modalId+' .alert').show();
			$(modalId+' #ccExpMon').addClass("has-error has-feedback");
		} else if (ccExpYear ==='' && ccExpYear.length === 0){
			$(modalId+' .alert').show();
			$(modalId+' #ccExpYear').addClass("has-error has-feedback");
		} else {
			$(modalId+' .alert').hide();
		}
	});
}

function getModalId(){
	var modalId;
	$("button").on("click", function() {
		if(this.id == 'addCard'){
			modalId = "#CreditcardModal";
		} else {
			modalId = "#AddCardGuestUser";
		}
	});
	return modalId;
}

function validateCCName(modalId){
	$("#nameDiv #InputName").on('keyup', function() {
		$(modalId+' .alert').hide();
		var ccName = $(modalId+' #InputName').val();
		var ccName_Regex = /^[a-zA-Z]+$/;
		if(ccName !='' && ccName.length >0){
			if(ccName.match(ccName_Regex)!=null && ccName.match(ccName_Regex)!= undefined ){
				$(modalId+'#nameDiv').addClass("has-success has-feedback");
				$(modalId+'#nameDiv').removeClass("has-error");
				$(modalId+'#nameDiv #icon-info').hide();
				$(modalId+'#nameDiv #icon-tick').show();
				$(modalId+'#nameDiv #NameError').hide();
				$(modalId+'#nameDiv #NameAlphabetError').hide();
				$(modalId+'#common_alert').hide();	
			} else {
				$(modalId+'#nameDiv').addClass("has-error has-feedback");
				$(modalId+'#nameDiv').removeClass("has-success");
				$(modalId+'#nameDiv #icon-info').show();
				$(modalId+'#nameDiv #icon-tick').hide();
				$(modalId+'#nameDiv #NameError').hide();
				$(modalId+'#nameDiv #NameAlphabetError').show();
				$(modalId+'#CreditcardModal #common_alert').show();
			}
		} else {
			$(modalId+'#nameDiv').addClass("has-error has-feedback");
			$(modalId+'#nameDiv').removeClass("has-success");
			$(modalId+'#nameDiv #icon-info').show();
			$(modalId+'#nameDiv #icon-tick').hide();
			$(modalId+'#nameDiv #NameError').show();
			$(modalId+'#CreditcardModal #common_alert').show();
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
	//getModalId();
	hideIcons();
	$('#CreditcardModal  .alert').hide();
	validateClickEvent();	
	validateCCName(modalId);
	validateCCNumber();
	validateCVVNum();
	validateCCExpMonth();
	validateCCExpYear();
});