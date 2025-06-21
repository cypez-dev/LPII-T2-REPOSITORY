package com.cibertec.peliculas.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cibertec.peliculas.model.Alquiler;

@Repository
public interface AlquilerRepository extends JpaRepository<Alquiler, Long> {}
