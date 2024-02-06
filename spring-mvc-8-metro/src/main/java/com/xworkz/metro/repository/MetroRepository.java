package com.xworkz.metro.repository;

import com.xworkz.metro.dto.TicketDTO;
import com.xworkz.metro.dto.UserDTO;

import javax.persistence.EntityManagerFactory;
import java.util.List;

public interface MetroRepository {
    void registerUser(UserDTO dto);
    boolean loginUser(String username, String password);
    void buyTicket(TicketDTO dto);
    List getAll();
}