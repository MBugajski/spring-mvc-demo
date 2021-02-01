package com.mbugajski.springdemo.mvc.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class StudentIdConstraintValidator implements ConstraintValidator<StudentId, String> {

	private String[] studentIdPrefixex;

	@Override
	public void initialize(StudentId theStudentId) {
		studentIdPrefixex = theStudentId.value();
	}

	@Override
	public boolean isValid(String theStudentId, ConstraintValidatorContext theConstraintValidatorContext) {
		boolean result = false;
		if (theStudentId != null) {

			for (String tempPrefix : studentIdPrefixex) {
				result = theStudentId.startsWith(tempPrefix);
				if (result) {
					break;
				}
			}
		} else {
			result = true;
		}

		return result;
	}

}
