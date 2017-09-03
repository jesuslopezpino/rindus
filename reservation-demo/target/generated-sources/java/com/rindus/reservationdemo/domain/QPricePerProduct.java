package com.rindus.reservationdemo.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QPricePerProduct is a Querydsl query type for PricePerProduct
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QPricePerProduct extends EntityPathBase<PricePerProduct> {

    private static final long serialVersionUID = -826172634L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QPricePerProduct pricePerProduct = new QPricePerProduct("pricePerProduct");

    public final DateTimePath<java.util.Date> endPrice = createDateTime("endPrice", java.util.Date.class);

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final NumberPath<Long> price = createNumber("price", Long.class);

    public final QProduct producto;

    public final DateTimePath<java.util.Date> startPrice = createDateTime("startPrice", java.util.Date.class);

    public final QStock stockItem;

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QPricePerProduct(String variable) {
        this(PricePerProduct.class, forVariable(variable), INITS);
    }

    public QPricePerProduct(Path<? extends PricePerProduct> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QPricePerProduct(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QPricePerProduct(PathMetadata metadata, PathInits inits) {
        this(PricePerProduct.class, metadata, inits);
    }

    public QPricePerProduct(Class<? extends PricePerProduct> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.producto = inits.isInitialized("producto") ? new QProduct(forProperty("producto")) : null;
        this.stockItem = inits.isInitialized("stockItem") ? new QStock(forProperty("stockItem"), inits.get("stockItem")) : null;
    }

}

