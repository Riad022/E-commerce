package com.riad.ecommerce.product;

import java.math.BigDecimal;

public record PurchaseResponse(
        Integer productId,
        String name,
        String Description,
        BigDecimal price,
        double quantity
) {
}
