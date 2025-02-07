package com.tk.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tk.entity.Expenses;
import com.tk.repository.IRepoExpenses;
@Service
public class ExpensesService implements ISeviceExpensesMng{
 
	
	@Autowired
	
	private IRepoExpenses exrepo;
	@Override
	public List<Expenses> findAllExpenses() {
		List<Expenses>l=exrepo.findAll();
		l.forEach(exp->exp.setPid(null));
		return l ;
	}

}
