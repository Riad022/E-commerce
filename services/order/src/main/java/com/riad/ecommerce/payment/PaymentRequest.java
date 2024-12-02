package com.riad.ecommerce.payment;

import com.riad.ecommerce.customer.CustomerResponse;
import com.riad.ecommerce.order.PaymentMethod;

import java.math.BigDecimal;

public record PaymentRequest(
        BigDecimal amount,
        PaymentMethod paymentMethod ,
        Integer orderId ,
        String orderReference ,
        CustomerResponse customer
) {
}
