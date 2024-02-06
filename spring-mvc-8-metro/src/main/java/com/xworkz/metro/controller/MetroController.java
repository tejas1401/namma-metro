package com.xworkz.metro.controller;

import com.xworkz.metro.dto.TicketDTO;
import com.xworkz.metro.dto.UserDTO;
import com.xworkz.metro.service.MetroService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Component
@RequestMapping("/")
public class MetroController {
    @Autowired
    private MetroService service;
    public MetroController(){
        System.out.println("controller object created");
    }

    @PostMapping("register")
    String registerUser(@ModelAttribute @Valid UserDTO dto, BindingResult errors, Model model){
        System.out.println("inside register");
        if(dto!=null){
            service.ValidateRegisterUser(dto);
            return "buy-ticket";
        }
        else return "index";
    }
    @GetMapping("login")
    String loginUser(@RequestParam String credential, @RequestParam String password, Model model){
        if(service.validateLoginUser(credential,password)){
            return "buy-ticket";
        }
        return "login";
    }
    @PostMapping("buyTicket")
    String buyTicket(@ModelAttribute @Valid TicketDTO dto,BindingResult errors, Model model){
        service.validateBuyTicket(dto);
        return "returnToHome";
    }
}