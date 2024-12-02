package com.riad.ecommerce.payment;

import com.riad.ecommerce.notification.NotificationProducer;
import com.riad.ecommerce.notification.PaymentNotificationRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class PaymentService {

    private final PaymentRepository repo ;
    private final PaymentMapper mapper ;
    private final NotificationProducer notificationProducer ;


    public Integer createPayment(PaymentRequest request) {
        var payment = repo.save(mapper.toPayment(request));

        notificationProducer.sendNotification(new PaymentNotificationRequest(
                request.orderReference(),
                request.amount(),
                request.paymentMethod(),
                request.customer().firstName(),
                request.customer().lastName(),
                request.customer().email()
        ));

        return payment.getId();
    }
}
