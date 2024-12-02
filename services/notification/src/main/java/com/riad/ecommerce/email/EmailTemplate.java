package com.riad.ecommerce.email;

import lombok.Getter;

public enum EmailTemplate {

    PAYMENT_CONFIRMATION("payment-confirmation.html" , "Payment successfully processed"),

    ORDER_CONFIRMATION("order-confirmation.html" , "order confirmation")

    ;

    @Getter
    private final String template;

    @Getter
    private final String subject;

    EmailTemplate(String template, String subject) {
        this.template = template;
        this.subject = subject;
    }
}
