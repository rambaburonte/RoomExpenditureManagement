package com.tk.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tk.entity.Person;

public interface IExpendaturePersonManagementRepo extends JpaRepository<Person,Integer> {

}
