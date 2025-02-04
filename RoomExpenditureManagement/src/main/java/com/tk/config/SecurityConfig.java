/*package com.tk.config;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

import com.tk.Service.RommServiceMng;

@Configuration
@EnableWebSecurity
@EnableMethodSecurity  // Enables method-level security annotations (e.g., @PreAuthorize)
public class SecurityConfig {
	@Autowired
	private  RommServiceMng service;

   
	@Bean
	public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
	    http
	        // Use the custom user details service to load user-specific data from the database
	        .userDetailsService(( service)
	        .authorizeHttpRequests(auth -> auth
	            // Permit access to public resources
	            .requestMatchers("/", "/login", "/register", "/css/**", "/js/**").permitAll()
	            // Restrict access to the "/addPerson" endpoint to Admin users only.
	            // Ensure that your CustomUserDetailsService maps the Admin role as "ROLE_Admin".
	            .requestMatchers("/addPerson").hasRole("Admin")
	            // All other requests require authentication
	            .anyRequest().authenticated()
	        )
	        .formLogin(form -> form
	            // Specify the custom login page (make sure your view resolver can locate your JSP)
	            .loginPage("/login")
	            // The URL that processes the login form submission (should match the form action in your JSP)
	            .loginProcessingUrl("/login")
	            // Redirect to "/dashboard" on successful login
	            .defaultSuccessUrl("/dashboard", true)
	            // Redirect back to the login page with an error flag on authentication failure
	            .failureUrl("/login?error=true")
	            .permitAll()
	        )
	        .logout(logout -> logout
	            .logoutUrl("/logout")
	            .logoutSuccessUrl("/login?logout=true")
	            .permitAll()
	        )
	        // Optional: Disable CSRF protection (only for testing/development, not recommended for production)
	        
	        
	        .csrf(csrf -> csrf
	                .csrfTokenRepository(CookieCsrfTokenRepository.withHttpOnlyFalse()) // Enable CSRF protection
	            )
	            .sessionManagement(session -> session
	                .sessionFixation().migrateSession() // Protect against session fixation attacks
	                .maximumSessions(1) // Limit concurrent sessions per user
	                .expiredUrl("/login?expired=true")); // Redirect to login on session expiration
	           
	    return http.build();
	}
    // Bean to encode passwords using BCrypt
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    // Expose the AuthenticationManager as a bean if needed elsewhere
    @Bean
    public AuthenticationManager authenticationManager(AuthenticationConfiguration authConfig) throws Exception {
        return authConfig.getAuthenticationManager();
    }
}
*/