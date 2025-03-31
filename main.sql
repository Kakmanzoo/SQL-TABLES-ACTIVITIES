    -- Creamos tabla de libros
    CREATE TABLE libros (id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(255) NOT NULL, rating DECIMAL(2,1) CHECK(rating BETWEEN 0 AND 10));
    INSERT INTO libros (name, rating) VALUES ('Ciudad de Perros', 8.2), ('Cronicas de Naugrago', 9.9), ('Harry Potter y el Misterio del principe', 9.2);


-- Consultar tabla 
    SELECT * FROM  libros;
    (SELECT name, rating FROM libros WHERE rating > 9.0);
    (SELECT name, rating FROM libros ORDER BY rating DESC LIMIT 1);