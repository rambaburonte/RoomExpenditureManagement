package com.tk.entity;

import java.time.LocalDateTime;
import java.util.Set;

import org.hibernate.annotations.CreationTimestamp;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name = "person_table") // Use lowercase with underscores for SQL compatibility
public class Person {

    @Id
    @SequenceGenerator(name = "seq1", sequenceName = "seq1", initialValue = 1000, allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "seq1")
    @Column(name = "person_id", length = 20)  // Renamed to avoid spaces
    private Integer id;

    @Column(name = "person_name", length = 30)
    private String name;

    @Column(name = "person_contact", length = 12, unique = true, nullable = false)
    private Long phone; // Changed Integer to Long

    @Column(name = "person_email", length = 30, unique = true, nullable = false)
    private String email;

    @Column(name = "current_month", length = 20)
    private Integer currentMonth; // Consider using String or java.time.Month

    @Column(name = "invest_money", length = 20)
    private Double totalMoney;

    @Column(name = "joining_date", updatable = false)
    @CreationTimestamp
    private LocalDateTime joiningDate;
    
    private String role;
    
    private String password;

    @OneToMany(mappedBy = "pid", cascade = CascadeType.ALL, fetch = FetchType.LAZY) // Explicitly defining lazy loading
    private Set<Expenses> expenses;
}
