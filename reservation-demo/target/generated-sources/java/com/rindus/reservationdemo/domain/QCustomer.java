package com.rindus.reservationdemo.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QCustomer is a Querydsl query type for Customer
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QCustomer extends EntityPathBase<Customer> {

    private static final long serialVersionUID = -1533962669L;

    public static final QCustomer customer = new QCustomer("customer");

    public final DateTimePath<java.util.Date> birthDate = createDateTime("birthDate", java.util.Date.class);

    public final StringPath email = createString("email");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath name = createString("name");

    public final ListPath<CustomerOrder, QCustomerOrder> pedidos = this.<CustomerOrder, QCustomerOrder>createList("pedidos", CustomerOrder.class, QCustomerOrder.class, PathInits.DIRECT2);

    public final ListPath<Reservation, QReservation> reservas = this.<Reservation, QReservation>createList("reservas", Reservation.class, QReservation.class, PathInits.DIRECT2);

    public final StringPath surname1 = createString("surname1");

    public final StringPath surname2 = createString("surname2");

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QCustomer(String variable) {
        super(Customer.class, forVariable(variable));
    }

    public QCustomer(Path<? extends Customer> path) {
        super(path.getType(), path.getMetadata());
    }

    public QCustomer(PathMetadata metadata) {
        super(Customer.class, metadata);
    }

}

