package com.riad.ecommerce.kafka;

import com.riad.ecommerce.customer.CustomerResponse;
import com.riad.ecommerce.order.PaymentMethod;
import com.riad.ecommerce.product.PurchaseResponse;

import java.math.BigDecimal;
import java.util.List;

public record OrderConfirmation(

        String orderReference,

        BigDecimal totalAmount ,

        PaymentMethod paymentMethod,

        CustomerResponse customer,

        List<PurchaseResponse> products


) {

}
