package com.riad.ecommerce.payment;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotNull;
import org.springframework.validation.annotation.Validated;

@Validated
public record Customer(

        String Id ,

        @NotNull(message = "FirstName is required")
        String firstName ,

        @NotNull(message = "lastName is required")
        String lastName,

        @NotNull(message = "Email is required")
        @Email(message = "Email not valid")
        String email
) {
}
