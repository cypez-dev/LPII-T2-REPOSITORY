CREATE DATABASE BD2_CHATI;
USE BD2_CHATI;

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);
INSERT INTO clientes (nombre, email) VALUES
('Juan Pérez', 'juan.perez@email.com'),
('María Gómez', 'maria.gomez@email.com'),
('Carlos Díaz', 'carlos.diaz@email.com');

CREATE TABLE peliculas (
    id_pelicula INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    genero VARCHAR(50) NOT NULL,
    stock INT NOT NULL
);
INSERT INTO peliculas (titulo, genero, stock) VALUES
('El Señor de los Anillos', 'Aventura', 10),
('Inception', 'Ciencia Ficción', 5),
('Toy Story', 'Animación', 8);

CREATE TABLE alquileres (
    id_alquiler INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    id_cliente INT NOT NULL,
    total DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE detalle_alquiler (
    id_alquiler INT NOT NULL,
    id_pelicula INT NOT NULL,
    cantidad INT NOT NULL,
    PRIMARY KEY (id_alquiler, id_pelicula),
    FOREIGN KEY (id_alquiler) REFERENCES alquileres(id_alquiler),
    FOREIGN KEY (id_pelicula) REFERENCES peliculas(id_pelicula)
);
