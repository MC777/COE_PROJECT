package pl.sda.coe_project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ExchangeController {
    @GetMapping("/")
    public String getMainView() {
        return "index.jsp";
    }

    @GetMapping("/myForm")
    public String getLoginView() { return "/login.jsp"; }

    @GetMapping("/myLogout")
    public String getProtectedView() {
        return "/register.jsp";
}}
