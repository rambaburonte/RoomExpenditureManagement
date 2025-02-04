package com.tk.Service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tk.entity.Person;
import com.tk.repository.IExpendaturePersonManagementRepo;

@Service
public class RommServiceMng implements IRoomServiceMngImpl {
	
	@Autowired		
	private IExpendaturePersonManagementRepo personRepository;
	
	/*  @Override
	    public UserDetails loadUserByUsername(String usernameOrEmail) throws UsernameNotFoundException {
	        // Retrieve the Person entity by email (or username if you prefer)
	        Person person = ( personRepository.findByEmail(usernameOrEmail)
	                .orElseThrow(() -> new UsernameNotFoundException("User not found with email: " + usernameOrEmail));

	        // Map the role stored in the Person entity to a GrantedAuthority.
	        // This example assumes that your role is stored as either "Admin" or "member".
	        SimpleGrantedAuthority authority = new SimpleGrantedAuthority("ROLE_" + person.getRole());

	        // Construct and return a Spring Security UserDetails object.
	        // Here, the username is the email, and the password field now comes from person.getPassword()
	        return new org.springframework.security.core.userdetails.User(
	                person.getEmail(),         // Username (or email)
	                person.getPassword(),      // Encoded password (BCrypt-encoded)
	                Collections.singleton(authority) // Granted authorities for role-based access
	        );
	    }*/
	@Override
	public Person loginCheck(Integer uid, String password) {
	    Optional<Person> obj = personRepository.findById(uid);
	    if (obj.isPresent()) {
	        Person p = obj.get();
	        // Use equals() to compare strings instead of '=='
	        if (p.getPassword().equals(password)) {
	            return p;
	        } else {
	            throw new IllegalArgumentException("Invalid password");
	        }
	    } else {
	        throw new IllegalArgumentException("User not found with id: " + uid);
	    }
	}

	
}


