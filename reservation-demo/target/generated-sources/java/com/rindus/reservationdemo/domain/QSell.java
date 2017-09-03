package com.rindus.reservationdemo.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QSell is a Querydsl query type for Sell
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QSell extends EntityPathBase<Sell> {

    private static final long serialVersionUID = 1823828039L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QSell sell = new QSell("sell");

    public final QCustomerOrder customerOrder;

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final QStock stockItem;

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QSell(String variable) {
        this(Sell.class, forVariable(variable), INITS);
    }

    public QSell(Path<? extends Sell> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QSell(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QSell(PathMetadata metadata, PathInits inits) {
        this(Sell.class, metadata, inits);
    }

    public QSell(Class<? extends Sell> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.customerOrder = inits.isInitialized("customerOrder") ? new QCustomerOrder(forProperty("customerOrder"), inits.get("customerOrder")) : null;
        this.stockItem = inits.isInitialized("stockItem") ? new QStock(forProperty("stockItem"), inits.get("stockItem")) : null;
    }

}

