package com.cibertec.peliculas.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cibertec.peliculas.model.DetalleAlquiler;
import com.cibertec.peliculas.model.DetalleAlquilerId;

@Repository
public interface DetalleAlquilerRepository extends JpaRepository<DetalleAlquiler, DetalleAlquilerId> {}
