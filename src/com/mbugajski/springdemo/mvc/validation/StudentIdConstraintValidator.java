package com.mbugajski.springdemo.mvc.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class StudentIdConstraintValidator implements ConstraintValidator<StudentId, String>{

	private String studentIdPrefix;
	
	@Override
	public void initialize(StudentId theStudentId) {
		studentIdPrefix = theStudentId.value();
	}
	
	@Override
	public boolean isValid(String theStudentId, ConstraintValidatorContext theConstraintValidatorContext) {
		boolean result = false;
		if (theStudentId != null) {
			
			result =theStudentId.startsWith(studentIdPrefix);
		}
		else {
			result = true;
		}
				
		return result;
	}

}
