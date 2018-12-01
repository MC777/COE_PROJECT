package pl.sda.coe_project.controller;

import pl.sda.coe_project.service.UserService;

public class CryptocurrencyController {
    private final UserService userService;

    public CryptocurrencyController(UserService userService) {
        this.userService = userService;
    }
}
