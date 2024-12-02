package com.riad.ecommerce.category;

import com.riad.ecommerce.product.Product;
import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Builder
@Getter
@Setter
@Entity
public class Category {

    @Id
    @GeneratedValue
    private  Integer id;

    private String name;
    private String description;

    @OneToMany(mappedBy = "category" , cascade= CascadeType.REMOVE)
    private List<Product> products;
}
