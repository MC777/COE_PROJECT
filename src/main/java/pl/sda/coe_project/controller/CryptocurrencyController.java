package pl.sda.coe_project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import pl.sda.coe_project.service.CryptocurrencyService;
import pl.sda.coe_project.service.UserService;

@Controller
public class CryptocurrencyController {
    private final UserService userService;
    private final CryptocurrencyService cryptocurrencyService;

    @Autowired
    public CryptocurrencyController(UserService userService, CryptocurrencyService cryptocurrencyService) {
        this.userService = userService;
        this.cryptocurrencyService = cryptocurrencyService;
    }

    @GetMapping("/cryptocurrency")
    public String getLastPrises(Model model) {
        model.addAttribute("prices", cryptocurrencyService.getCryptoCurrencyPricess());
        return  "cryptocurrency.jsp";
    }
}
