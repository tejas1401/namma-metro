package com.xworkz.metro.service;

import com.xworkz.metro.dto.TicketDTO;
import com.xworkz.metro.dto.UserDTO;

import java.util.List;

public interface MetroService {
    void ValidateRegisterUser(UserDTO dto);
    boolean validateLoginUser(String username, String password);
    void validateBuyTicket(TicketDTO dto);
    List validateGetAll();
}