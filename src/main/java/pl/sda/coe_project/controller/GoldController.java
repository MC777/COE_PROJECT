package pl.sda.coe_project.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import pl.sda.coe_project.model.GoldRatesResult;
import pl.sda.coe_project.service.GoldService;
import pl.sda.coe_project.service.UserService;

@RestController
public class GoldController {
    private final UserService userService;
    private final GoldService goldService;

    public GoldController(UserService userService, GoldService goldService) {
        this.userService = userService;
        this.goldService = goldService;
    }

    @GetMapping("/gold")
    public String getGoldView() {
        return "gold.jsp";
    }

    @GetMapping("/gold/prices")
    public ResponseEntity<GoldRatesResult> getLastGoldPrice(Model model) {
        return new ResponseEntity<>(goldService.getGoldPricesForPeriod(), HttpStatus.OK);
    }
}
