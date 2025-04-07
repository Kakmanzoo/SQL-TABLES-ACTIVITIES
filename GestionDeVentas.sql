CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50),
    Edad INT,
    Ciudad VARCHAR(50),
    Email VARCHAR(50)
);

CREATE TABLE Productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Producto VARCHAR(50),
    Categoria VARCHAR(50),
    Precio DECIMAL(10, 2),
    Stock INT
);

CREATE TABLE Ventas (
    id_venta INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_producto INT,
    cantidad INT,
    fecha_venta DATETIME,
    total DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);
INSERT INTO Clientes (id_cliente, Nombre, Edad, Ciudad, Email) VALUES
(1, 'Juan Pérez', 28, 'Madrid', 'juanperez@email.com'),
(2, 'Ana Gómez', 34, 'Barcelona', 'anagomez@email.com'),
(3, 'Carlos Ruiz', 45, 'Sevilla', 'carlosruiz@email.com'),
(4, 'Marta López', 23, 'Valencia', 'martalopez@email.com'),
(5, 'Pedro Sánchez', 36, 'Madrid', 'pedrosanchez@email.com'),
(6, 'Laura Martín', 30, 'Bilbao', 'lauramartin@email.com'),
(7, 'Luis Fernández', 40, 'Zaragoza', 'luisfernandez@email.com'),
(8, 'Sofía González', 25, 'Granada', 'sofiagonzalez@email.com'),
(9, 'Ricardo Pérez', 38, 'Alicante', 'ricardoperez@email.com'),
(10, 'Elena Rodríguez', 32, 'Murcia', 'elenarodriguez@email.com');

INSERT INTO Productos (id_producto, Nombre_Producto, Categoria, Precio, Stock) VALUES
(1, 'Laptop Dell', 'Electrónica', 799.99, 15),
(2, 'Smartphone Samsung', 'Electrónica', 499.99, 25),
(3, 'Camiseta Nike', 'Ropa', 19.99, 50),
(4, 'Zapatos Adidas', 'Ropa', 49.99, 40),
(5, 'Cafetera Bosch', 'Electrodomésticos', 79.99, 20),
(6, 'Auriculares Sony', 'Electrónica', 149.99, 10),
(7, 'Cargador Inalámbrico', 'Accesorios', 29.99, 30),
(8, 'Silla Ergonomica', 'Mobiliario', 129.99, 12),
(9, 'Teclado Mecánico', 'Accesorios', 89.99, 35),
(10, 'Monitor LG', 'Electrónica', 249.99, 8);

INSERT INTO Ventas (id_venta, id_cliente, id_producto, cantidad, fecha_venta, total) VALUES
(1, 1, 1, 1, '2025-04-07 10:30:00', 799.99),
(2, 2, 2, 2, '2025-04-06 14:20:00', 999.98),
(3, 3, 3, 3, '2025-04-05 16:45:00', 59.97),
(4, 4, 4, 1, '2025-04-04 12:10:00', 49.99),
(5, 5, 5, 1, '2025-04-03 09:15:00', 79.99),
(6, 6, 6, 2, '2025-04-02 18:30:00', 299.98),
(7, 7, 7, 5, '2025-04-01 17:00:00', 149.95),
(8, 8, 8, 1, '2025-03-31 15:00:00', 129.99),
(9, 9, 9, 3, '2025-03-30 11:50:00', 269.97),
(10, 10, 10, 1, '2025-03-29 13:30:00', 249.99);

SELECT * FROM  Ventas;
SELECT * FROM Productos;
SELECT * FROM Clientes;