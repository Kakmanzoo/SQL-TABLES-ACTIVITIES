    -- Creamos tabla de libros
    CREATE TABLE libros (id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(255) NOT NULL, rating DECIMAL(2,1) CHECK(rating BETWEEN 0 AND 10));
   INSERT INTO libros (name, rating) VALUES 
    ('Ciudad de Perros', 8.2), 
    ('Cronicas de Naugrago', 9.9), 
    ('Harry Potter y el Misterio del Príncipe', 9.2),
    ('El Alquimista', 8.6),
    ('Cien Años de Soledad', 9.8),
    ('El diario de Anna Frank', 9.5),
    ('El club de los psicopatas', 9.3),
    ('La chica del tren', 9.4),
    ('Fahrenheit 451', 8.8),
    ('Los gatos guerreros', 9.1);


-- Consultar tabla 
    SELECT * FROM  libros;
    (SELECT name, rating FROM libros WHERE rating > 9.0);
    (SELECT name, rating FROM libros ORDER BY rating DESC LIMIT 1);
