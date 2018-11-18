package pl.sda.coe_project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ExchangeController {
    @GetMapping("/")
    public String getMainView() {
        return "login.jsp";
    }

    @GetMapping("/myForm")
    public String getProtectedView() {
        return "main.jsp";
    }
}
