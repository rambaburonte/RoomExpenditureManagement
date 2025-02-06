package com.tk.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.tk.entity.Person;

public interface IExpendaturePersonManagementRepo extends JpaRepository<Person,Integer> {

		public 	Person findByEmail(String usernameOrEmail);
		@Query("SELECT p.totalMoney FROM Person p")
		public List<Double> findAllCurrentMonthPayments();


}
