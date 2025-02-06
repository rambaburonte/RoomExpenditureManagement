package com.tk.Service;

import java.util.List;

import com.tk.entity.Person;

public interface IRoomServiceMngImpl {
	
	public Person loginCheck(Integer uid,String password);
	public List<Person> allRecords();
	public Person getPersonById(Integer id);
	public String deleteById(Integer no);
	public Boolean updateUser(Person p);
	public Integer addPerson(Person p);

}
