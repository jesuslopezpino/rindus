package com.rindus.microservicesdemo.service.impl;
import com.rindus.microservicesdemo.domain.Product;
import com.rindus.microservicesdemo.domain.Stock;
import com.rindus.microservicesdemo.repository.StockRepository;
import com.rindus.microservicesdemo.service.api.StockService;

import io.springlets.data.domain.GlobalSearch;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.roo.addon.layers.service.annotations.RooServiceImpl;
import org.springframework.transaction.annotation.Transactional;

/**
 * = StockServiceImpl
 *
 * TODO Auto-generated class documentation
 *
 */
@RooServiceImpl(service = StockService.class)
public class StockServiceImpl implements StockService {
}
