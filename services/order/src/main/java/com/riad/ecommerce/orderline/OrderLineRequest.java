package com.riad.ecommerce.orderline;

public record OrderLineRequest(
        Integer Id,
        Integer orderId,
        Integer productId,
        double quantity
) {
}
