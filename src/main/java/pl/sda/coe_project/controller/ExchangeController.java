package pl.sda.coe_project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ExchangeController {
    @GetMapping("/")
    public String getMainView() {
        return "index.jsp";
    }

    @GetMapping("/loginForm")
    public String getLoginView() {
        return "/login.jsp";
    }

    @GetMapping("/registerForm")
    public String getRegisterView() {
        return "/register.jsp";
    }

    @GetMapping("/myLogout")
    public String getLogoutView() {
        return "/register.jsp";
    }
}
