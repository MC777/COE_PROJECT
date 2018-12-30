package pl.sda.coe_project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import pl.sda.coe_project.model.CurrencyExchangeRequest;
import pl.sda.coe_project.model.dto.UserDto;
import pl.sda.coe_project.service.ExchangeService;
import pl.sda.coe_project.service.UserService;

import java.security.Principal;

@Controller
public class ExchangeController {

    private final UserService userService;
    private final ExchangeService exchangeService;

    @Autowired
    public ExchangeController(UserService userService, ExchangeService exchangeService) {
        this.userService = userService;
        this.exchangeService = exchangeService;
    }

    @GetMapping("/")
    public String getMainView(Principal principal) {
        return "home.jsp";
    }

    @GetMapping("/loginForm")
    public String getLoginView() {
        return "login.jsp";
    }

    @GetMapping("/registerForm")
    public String getRegisterView() {
        return "register.jsp";
    }

    @PostMapping("/register")
    public String registerUser(@ModelAttribute UserDto user) {
        userService.addUser(user);
        return "redirect:/";
    }

    @GetMapping("/adminPanel")
    public String getAdminView() {
        return "adminPanel.jsp";
    }

    @GetMapping("/contact")
    public String getContactView() {
        return "contact.jsp";
    }

    @GetMapping("/wallet")
    public String getWalletView() {
        return "wallet.jsp";
    }

    @ResponseBody
    @PostMapping("/exchange")
    public ResponseEntity<Object> exchange(@RequestBody CurrencyExchangeRequest exchangeRequest) {

        return new ResponseEntity<>(exchangeService.calculate(exchangeRequest), HttpStatus.OK);
    }
}
