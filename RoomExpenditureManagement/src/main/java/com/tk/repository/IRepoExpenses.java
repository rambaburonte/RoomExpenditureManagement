package com.tk.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tk.entity.Expenses;

public interface IRepoExpenses extends JpaRepository<Expenses, Integer> {

}
