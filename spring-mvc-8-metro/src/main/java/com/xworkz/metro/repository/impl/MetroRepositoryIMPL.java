package com.xworkz.metro.repository.impl;

import com.xworkz.metro.dto.TicketDTO;
import com.xworkz.metro.dto.UserDTO;
import com.xworkz.metro.repository.MetroRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import java.util.List;

@Repository
public class MetroRepositoryIMPL implements MetroRepository {
    @Autowired
    EntityManagerFactory entityManagerFactory;
    @Override
    public void registerUser(UserDTO dto) {
        EntityManager entityManager=entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        entityManager.persist(dto);
        entityManager.getTransaction().commit();
    }
    @Override
    public boolean loginUser(String username, String password) {
        EntityManager entityManager=entityManagerFactory.createEntityManager();
        Query query= entityManager.createNamedQuery("login");
        query.setParameter("credential",username);
        query.setParameter("password",password);
        try{
            query.getSingleResult();
        }
        catch (NoResultException e){
            return false;
        }
        return true;
    }
    @Override
    public void buyTicket(TicketDTO dto) {
        EntityManager entityManager=entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        entityManager.persist(dto);
        entityManager.getTransaction().commit();
    }
    @Override
    public List getAll() {
        return null;
    }
}
