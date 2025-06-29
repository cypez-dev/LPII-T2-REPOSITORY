package com.cibertec.peliculas.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cibertec.peliculas.model.Cliente;

@Repository
public interface ClienteRepository extends JpaRepository<Cliente, Long> {}
