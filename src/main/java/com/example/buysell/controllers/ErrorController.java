package com.example.buysell.controllers;

import com.example.buysell.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class ErrorController implements org.springframework.boot.web.servlet.error.ErrorController{
    private final UserService userService;
    @RequestMapping("/error")
    public String handleError(Model model, Principal principal){
        model.addAttribute("error", "Произошла ошибка. Пожалуйства проверьте запрос или попробуйте снова.");
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "error";
    }

    public String getErrorPath() {
        return "/error";
    }

}
