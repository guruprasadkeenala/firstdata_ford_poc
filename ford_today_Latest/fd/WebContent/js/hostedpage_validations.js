$(document).ready(function () {
	var modalId = $(".modal-dialog").parent().get(0).id;
	modalId = "#"+modalId+" ";
	hideIcons();
	$(modalId+'.alert').hide();
	$("button").on("click", function() {
		var ccName,ccNumber,cvvNumber,ccExpMonth,ccExpYear,ccTypeDiv;
		ccName = $(modalId+' #InputName').val();
		ccNumber = $(modalId+' #CardNumber').val();
		cvvNumber = $(modalId+' #CVVNumber').val();
		ccExpMonth =$(modalId+' #CreditCardExpMonth option:selected').val();
		ccExpYear = $(modalId+' #CreditCardExpYear option:selected').val();
		if(((modalId.indexOf("RegisteredUserChkOutNewCard")!=-1 && modalId.indexOf("RegisteredUserChkOutNewCard")!=0) ||
				(modalId.indexOf("AddCardRegisteredUser")!=-1 && modalId.indexOf("AddCardRegisteredUser")!=0))){
			ccTypeDiv = $(modalId+' #ChooseSavecreditCard option:selected').val();
		}
		
		if(ccTypeDiv === '' && (modalId.indexOf("RegisteredUserChkOutNewCard")!=-1 || modalId.indexOf("AddCardRegisteredUser")!=-1)){
			$(modalId+' .alert').show();
			$(modalId+'#ccTypeError').addClass("has-error has-feedback");
			$(modalId+'#ccTypeDiv').addClass("has-error has-feedback");
			$(modalId+'#ccTypeDiv').removeClass("has-success has-feedback");
			$(modalId+'#ccTypeDiv #ccTypeError').show();
		} else if(ccName ==='' && ccName.length === 0){
			$(modalId+' .alert').show();
			$(modalId+' #nameDiv').addClass("has-error has-feedback");
			$(modalId+' #nameDiv #icon-info').show();
			$(modalId+' #nameDiv #icon-tick').hide();
			$(modalId+' #nameDiv #NameError').show();
		} else if(ccNumber ==='' && ccNumber.length === 0){
			$(modalId+' .alert').show();
			$(modalId+' #ccNumDiv').addClass("has-error has-feedback");
			$(modalId+' #ccNumDiv #icon-info').show();
			$(modalId+' #ccNumDiv #icon-tick').hide();
			$(modalId+' #ccNumDiv #CardError').show();
		} else if (cvvNumber ==='' && cvvNumber.length === 0){
			$(modalId+' .alert').show();
			$(modalId+' #cvvNumDiv').addClass("has-error has-feedback");
			$(modalId+' #cvvNumDiv #icon-info').show();
			$(modalId+' #cvvNumDiv #icon-tick').hide();
			$(modalId+' #cvvNumDiv #CVVError').show();
		} else if(ccExpMonth ==='' && ccExpMonth.length === 0){
			$(modalId+' .alert').show();
			$(modalId+'#ccExpMonYearDiv #ccExpMon').addClass("has-error has-feedback");
			$(modalId+'#ccExpMonYearDiv #ccExpMon').removeClass("has-success has-feedback");
			$(modalId+'#ccExpMonYearDiv #ccExpMonError').show();
			$(modalId+'#ccExpMonYearDiv #ccExpYearError').hide();
		} else if (ccExpYear ==='' && ccExpYear.length === 0){
			$(modalId+' .alert').show();
			$(modalId+'#ccExpMonYearDiv #ccExpYear').addClass("has-error has-feedback");
			$(modalId+'#ccExpMonYearDiv #ccExpYear').removeClass("has-success has-feedback");
			$(modalId+'#ccExpMonYearDiv #ccExpMonError').hide();
			$(modalId+'#ccExpMonYearDiv #ccExpYearError').show();
		} else {
			$(modalId+' .alert').hide();
		}
	});
	
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
				$(modalId+'#common_alert').show();
			}
		} else {
			$(modalId+'#nameDiv').addClass("has-error has-feedback");
			$(modalId+'#nameDiv').removeClass("has-success");
			$(modalId+'#nameDiv #icon-info').show();
			$(modalId+'#nameDiv #icon-tick').hide();
			$(modalId+'#nameDiv #NameError').show();
			$(modalId+' #common_alert').show();
		}
	});

	$("#ccNumDiv #CardNumber").on('keyup', function() {
		$(modalId+' .alert').hide();
		var ccNumber = $(modalId+' #CardNumber').val();
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

	$("#cvvNumDiv #CVVNumber").on('keyup', function() {
		$('#CreditcardModal  .alert').hide();
		var ccNumber = $(modalId+' #CVVNumber').val();
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

	$("#ccExpMon #CreditCardExpMonth").on('change', function() {
		var ccExpMonth =$(modalId+' #CreditCardExpMonth option:selected').val();
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

	$("#ccExpYear #CreditCardExpYear").on('change', function() {
		var ccExpYear = $(modalId+' #CreditCardExpYear option:selected').val();
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
	
	/*$("#ccTypeDiv #ChooseSavecreditCard").on('change', function() {
		var ccTypeDiv = $(modalId+' #ChooseSavecreditCard option:selected').text();
		if (ccTypeDiv !='' && ccTypeDiv.length>0){
			$('#ccTypeDiv').addClass("has-success has-feedback");
			$('#ccTypeDiv').removeClass("has-error");
			$('#ccTypeDiv #ccTypeError').hide();
			$(modalId+' .alert').hide();
		} else{
			$('#ccTypeDiv').addClass("has-error has-feedback");
			$('#ccTypeDiv').removeClass("has-success");
			$('#ccTypeDiv #ccTypeError').show();
			$(modalId + ' #common_alert').show();
		}	
	});*/
	
});

function hideIcons(){
	$('#nameDiv #icon-info,#nameDiv #icon-tick,#ccNumDiv #icon-info,#ccNumDiv #icon-tick,#cvvNumDiv #icon-info,#cvvNumDiv #icon-tick,#ccTypeError').hide();
	$('#nameDiv #NameError,#ccNumDiv #CardError,#ccNumDiv #CardNumOnlyError,#ccNumDiv #CardNumLengthError,#cvvNumDiv #CVVError,#cvvNumDiv #CVVNumLengthError,#cvvNumDiv #CVVNumOnlyError,#ccExpMonYearDiv #ccExpMonError,#ccExpMonYearDiv #ccExpYearError,#nameDiv #NameAlphabetError').hide();
}