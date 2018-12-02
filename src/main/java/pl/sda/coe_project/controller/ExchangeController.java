package pl.sda.coe_project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import pl.sda.coe_project.model.dto.UserDto;
import pl.sda.coe_project.service.UserService;

import java.security.Principal;

@Controller
public class ExchangeController {

    private final UserService userService;

    @Autowired
    public ExchangeController(UserService userService) {
        this.userService = userService;
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

    @GetMapping("/gold")
    public String getGoldView() {
        return "gold.jsp";
    }

//    @GetMapping("/cryptocurrency")
//    public String getCryptocurrencyView() {
//        return "cryptocurrency.jsp";
//    }
}
