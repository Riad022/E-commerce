package com.riad.ecommerce.kafka.order;

import com.riad.ecommerce.kafka.payment.PaymentMethod;

import java.math.BigDecimal;
import java.util.List;

public record OrderConfirmation (

        String orderReference ,

        BigDecimal totalAmount ,

        PaymentMethod paymentMethod ,

        Customer customer ,

        List<Product> products
){
}
