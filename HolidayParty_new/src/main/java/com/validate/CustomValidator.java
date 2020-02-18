package com.validate;

import org.springframework.core.ReactiveAdapterRegistry;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;

import org.springframework.validation.Validator;

import com.model.RegistrationBean;

@Component

public class CustomValidator implements Validator {

	public void validate(Object arg0, Errors arg1) {
		RegistrationBean register = (RegistrationBean) arg0;
		if(!register.isStatus()) {
			arg1.rejectValue("status", "register.status", "status must be checked");
		}
		String str=String.valueOf(register.getContactNumber());
		if(str.length()==10) {
			arg1.rejectValue("contactNumber","register.cno","contactNumber should be of 10 digits");
		}
		if(!register.getEmailId().equals(register.getConfirmEmailId())){
			arg1.rejectValue("confirmEmailId","register.email","emailId and confirmEmailId should be same");
		}
	}

	public boolean supports(Class<?> arg0) {
		return RegistrationBean.class.isAssignableFrom(arg0);
	}

}
