package com.mbugajski.springdemo.mvc.validation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

@Constraint(validatedBy = StudentIdConstraintValidator.class)
@Target({ ElementType.METHOD, ElementType.FIELD })
@Retention(RetentionPolicy.RUNTIME)
public @interface StudentId {

	public String value() default "UW";

	public String message() default "must start with UW";

	public Class<?>[] groups() default {};

	public Class<? extends Payload>[] payload() default {};
}
