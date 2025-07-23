package com.example.jdbc;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@RestController
@RequestMapping("/products/fetch-product")
public class Controller {

    private final Service service;

    @GetMapping
    public String fetchProduct(@RequestParam String name) {

        return service.handle(name);
    }
}
