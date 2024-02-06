package com.xworkz.metro.service.impl;

import com.xworkz.metro.dto.TicketDTO;
import com.xworkz.metro.dto.UserDTO;
import com.xworkz.metro.repository.MetroRepository;
import com.xworkz.metro.service.MetroService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class MetroServiceIMPL implements MetroService {
    @Autowired
    private MetroRepository repository;
    @Override
    public void ValidateRegisterUser(UserDTO dto) {
        if(dto!=null) repository.registerUser(dto);
    }

    @Override
    public boolean validateLoginUser(String username, String password) {
        if(!username.isEmpty() && !password.isEmpty()) return repository.loginUser(username, password);
        return false;
    }

    @Override
    public void validateBuyTicket(TicketDTO dto) {
        if(dto!=null) repository.buyTicket(dto);
    }

    @Override
    public List validateGetAll() {
        return null;
    }
}
