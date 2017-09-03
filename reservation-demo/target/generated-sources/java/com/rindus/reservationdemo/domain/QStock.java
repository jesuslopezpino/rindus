package com.rindus.reservationdemo.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QStock is a Querydsl query type for Stock
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QStock extends EntityPathBase<Stock> {

    private static final long serialVersionUID = 704543937L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QStock stock = new QStock("stock");

    public final DateTimePath<java.util.Date> dateIn = createDateTime("dateIn", java.util.Date.class);

    public final DateTimePath<java.util.Date> dateOut = createDateTime("dateOut", java.util.Date.class);

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final ListPath<PricePerProduct, QPricePerProduct> preciosVenta = this.<PricePerProduct, QPricePerProduct>createList("preciosVenta", PricePerProduct.class, QPricePerProduct.class, PathInits.DIRECT2);

    public final QProduct producto;

    public final ListPath<Reservation, QReservation> reservas = this.<Reservation, QReservation>createList("reservas", Reservation.class, QReservation.class, PathInits.DIRECT2);

    public final ListPath<Sell, QSell> ventas = this.<Sell, QSell>createList("ventas", Sell.class, QSell.class, PathInits.DIRECT2);

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QStock(String variable) {
        this(Stock.class, forVariable(variable), INITS);
    }

    public QStock(Path<? extends Stock> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QStock(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QStock(PathMetadata metadata, PathInits inits) {
        this(Stock.class, metadata, inits);
    }

    public QStock(Class<? extends Stock> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.producto = inits.isInitialized("producto") ? new QProduct(forProperty("producto")) : null;
    }

}

