package com.xworkz.metro.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Getter
@Setter
@Entity
@Table(name="metroUser")
@NamedQuery(name = "login",query = "select dto FROM UserDTO dto WHERE (dto.userName =:credential or dto.email =:credential) AND password = :password")
@ToString
public class UserDTO {
    @Id
    @GenericGenerator(name="ref", strategy="increment")
    @GeneratedValue(generator = "ref")
    @Column(name="user_id")
    private int id;
    @NotNull
    @NotBlank
    private String userName;
    @NotNull
    private long phone;
    @NotNull
    @NotBlank
    private String email;
    @NotNull
    @NotBlank
    @Size(min = 8, max = 16,message = "8 characters password")
    private String password;
    @NotNull
    @NotBlank
    private String address;
}
