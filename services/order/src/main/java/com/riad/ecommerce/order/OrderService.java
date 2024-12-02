package com.riad.ecommerce.order;


import com.riad.ecommerce.customer.CustomerClient;
import com.riad.ecommerce.exception.BusinessException;
import com.riad.ecommerce.kafka.OrderConfirmation;
import com.riad.ecommerce.kafka.OrderProducer;
import com.riad.ecommerce.orderline.OrderLineRequest;
import com.riad.ecommerce.orderline.OrderLineService;
import com.riad.ecommerce.payment.PaymentClient;
import com.riad.ecommerce.payment.PaymentRequest;
import com.riad.ecommerce.product.ProductClient;
import com.riad.ecommerce.product.PurchaseRequest;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class OrderService {

    private final CustomerClient customerClient;
    private final ProductClient productClient;

    private final OrderRepository repo;
    private final OrderMapper mapper;
    private final OrderLineService orderLineService;
    private final OrderProducer orderProducer ;

    private final PaymentClient paymentClient ;


    public Integer createOrder(OrderRequest request) {
        //check the customer --> customer-ms OpenFeign
        var customer =  customerClient.findCustomerById(request.customerId())
                .orElseThrow(() -> new BusinessException("customer not found"));

        //purchase the product --> product-ms (RestTemplate)
        var purchasedProducts = productClient.purchaseProducts(request.products());

        //persist order
        var order = repo.save(mapper.toOrder(request));

        //persist order-lines
        for(PurchaseRequest purchaseRequest: request.products() ){
            orderLineService.saveOrderLine(
                    new OrderLineRequest(
                            null,
                            order.getId(),
                            purchaseRequest.productId(),
                            purchaseRequest.quantity()
                    )

            );
        }

        //todo start payment process

        var paymentRequest = new PaymentRequest(
                request.amount(),
                request.paymentMethod(),
                order.getId(),
                order.getReference(),
                customer
        );

        paymentClient.requestOrderPayment(paymentRequest);

        //send the order confirmation --> notification-ms (kafka)
        orderProducer.sendOrderConfirmation(
                new OrderConfirmation(
                        request.reference(),
                        request.amount(),
                        request.paymentMethod(),
                        customer,
                        purchasedProducts
                )
        );

        return order.getId();
    }


    public List<OrderResponse> findAllOrders() {
        return repo.findAll()
                .stream()
                .map(mapper::toOrderResponse)
                .collect(Collectors.toList());
    }

    public OrderResponse findById(Integer orderId) {
        return repo.findById(orderId)
                .map(mapper::toOrderResponse)
                .orElseThrow(() -> new EntityNotFoundException("order not found"));
    }
}
