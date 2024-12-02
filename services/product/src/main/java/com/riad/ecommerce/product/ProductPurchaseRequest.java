package com.riad.ecommerce.product;

import jakarta.validation.constraints.NotNull;

public record ProductPurchaseRequest(

        @NotNull(message="Product id should not be null")
        Integer productId,

        @NotNull(message="Quantity should not be null")
        double quantity
) {
}
