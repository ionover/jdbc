package com.example.jdbc;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ProductService {

    private final SqlRepository sqlRepository;

    public String handle(String name) {
        return sqlRepository.getProductName(name);
    }
}
