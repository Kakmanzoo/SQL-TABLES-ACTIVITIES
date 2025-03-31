CREATE TABLE Usuarios (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    fecha_registro DATE NOT NULL
);

CREATE TABLE Artistas (
    id_artista INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    pais_origen VARCHAR(50),
    genero VARCHAR(50)
);

CREATE TABLE Canciones (
    id_cancion INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255) NOT NULL,
    duracion TIME NOT NULL,
    anio_lanzamineto YEAR NOT NULL,
    id_artista INT,
    FOREIGN KEY (id_artista) REFERENCES Artistas (id_artista) ON DELETE CASCADE
);


-- Tabla de Usuarios
INSERT INTO Usuarios (nombre, email, fecha_registro) VALUES 
('Carlos Pérez', 'carlos@email.com', '2024-01-10'),
('Ana Gómez', 'ana@email.com', '2023-12-15'),
('Luis Martínez', 'luis@email.com', '2024-02-20'),
('María Rodríguez', 'maria@email.com', '2024-01-25'),
('Pedro Sánchez', 'pedro@email.com', '2024-03-01'),
('Laura García', 'laura@email.com', '2023-11-30'),
('David López', 'david@email.com', '2024-02-10'),
('Sofia Torres', 'sofia@email.com', '2024-03-05'),
('José Fernández', 'jose@email.com', '2024-01-18'),
('Carmen Díaz', 'carmen@email.com', '2024-02-28');

-- Tablas de Artistas
INSERT INTO Artistas (nombre, pais_origen, genero) VALUES 
('Diomedez Diaz', 'Colombia', 'Vallenato'),
('Carlos Vives', 'Colombia', 'Vallenato'),
('Shakira', 'Colombia', 'Pop'),
('Juanes', 'Colombia', 'Rock en Español'),
('Silvestre Dangond', 'Colombia', 'Vallenato'),
('J Balvin', 'Colombia', 'Reguetón'),
('Café Tacvba', 'México', 'Rock'),
('Luis Miguel', 'México', 'Balada'),
('Marc Anthony', 'Puerto Rico', 'Salsa'),
('Daddy Yankee', 'Puerto Rico', 'Reguetón');

-- Tablas de las canciones
INSERT INTO Canciones (titulo, duracion, anio_lanzamineto, id_artista) VALUES 
('La Plata', '00:04:38', 1994, 1),
('La Gota Fría', '00:05:30', 1993, 1),
('La Bicicleta', '00:04:43', 2016, 2),
('Hips Dont Lie', '00:03:38', 2006, 3),
('A Dios le Pido', '00:04:17', 2002, 4),
('Bailando', '00:04:02', 2014, 5),
('Ginza', '00:04:02', 2015, 6),
('Café Tacvba', '00:04:00', 1995, 7),
('La Incondicional', '00:04:25', 1988, 8),
('Vivir lo Nuestro', '00:05:02', 1994, 9);

-- Mostrar tablas
SELECT * FROM Usuarios;
SELECT * FROM Artistas;
SELECT * FROM Canciones;