-- Crear la tabla de Productos
CREATE TABLE Productos (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(255),
    Descripcion TEXT,
    Precio DECIMAL(10, 2),
    Disponibilidad INT,
    CategoriaID INT,
    FOREIGN KEY (CategoriaID) REFERENCES Categorias(ID)
);

-- Crear la tabla de Categorías
CREATE TABLE Categorias (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(255)
);

-- Crear la tabla de Clientes
CREATE TABLE Clientes (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(255),
    Direccion VARCHAR(255),
    CorreoElectronico VARCHAR(255)
);

-- Crear la tabla de Pedidos
CREATE TABLE Pedidos (
    ID INT PRIMARY KEY,
    ClienteID INT,
    FechaPedido DATE,
    EstadoPedido VARCHAR(50),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);



-- Insertar datos de muestra en la tabla Categorias
INSERT INTO Categorias (ID, Nombre) VALUES
(1, 'Electrónicos'),
(2, 'Ropa y Accesorios'),
(3, 'Alimentos y Bebidas'),
(4, 'Hogar y Jardín');

-- Insertar datos de muestra en la tabla Productos
INSERT INTO Productos (ID, Nombre, Descripcion, Precio, Disponibilidad, CategoriaID) VALUES
(1, 'Televisor LED', 'Televisor LED de 55 pulgadas', 799.99, 30, 1),
(2, 'Zapatos Deportivos', 'Zapatos deportivos para correr', 59.99, 50, 2),
(3, 'Pasta de Espagueti', 'Paquete de espagueti de 1 libra', 1.99, 100, 3),
(4, 'Sofá de Cuero', 'Sofá de cuero de 3 plazas', 999.99, 15, 4),
(5, 'Auriculares Bluetooth', 'Auriculares Bluetooth con cancelación de ruido', 129.99, 40, 1),
(6, 'Camiseta de Algodón', 'Camiseta de algodón suave en varios colores', 14.99, 80, 2),
(7, 'Leche Entera', 'Leche entera en envase de 1 galón', 2.49, 60, 3),
(8, 'Lámpara de Escritorio', 'Lámpara de escritorio con brazo ajustable', 19.99, 25, 4),
(9, 'Portátil de Alta Gama', 'Portátil de alta gama con pantalla táctil', 1399.99, 10, 1),
(10, 'Vestido de Fiesta', 'Vestido de fiesta elegante para ocasiones especiales', 89.99, 20, 2);

-- Insertar datos de muestra en la tabla Clientes
INSERT INTO Clientes (ID, Nombre, Direccion, CorreoElectronico) VALUES
(1, 'Ana Sánchez', 'Calle Principal 123', 'anasanchez@example.com'),
(2, 'Luis Torres', 'Avenida Central 456', 'luistorres@example.com'),
(3, 'Elena Ramírez', 'Calle Secundaria 789', 'elenaramirez@example.com'),
(4, 'Andrés López', 'Paseo del Parque 101', 'andreslopez@example.com'),
(5, 'Isabel García', 'Avenida del Sol 222', 'isabelgarcia@example.com'),
(6, 'Javier Rodríguez', 'Calle Tranquila 333', 'javierrodriguez@example.com');

-- Insertar datos de muestra en la tabla Pedidos
INSERT INTO Pedidos (ID, ClienteID, FechaPedido, EstadoPedido) VALUES
(1, 1, '2023-10-15', 'Pendiente'),
(2, 2, '2023-10-16', 'En proceso'),
(3, 3, '2023-10-17', 'En proceso'),
(4, 4, '2023-10-18', 'En proceso'),
(5, 5, '2023-10-19', 'Entregado'),
(6, 1, '2023-10-20', 'Entregado'),
(7, 2, '2023-10-21', 'Pendiente'),
(8, 3, '2023-10-22', 'Pendiente'),
(9, 4, '2023-10-23', 'Entregado'),
(10, 5, '2023-10-24', 'Entregado'),
(11, 1, '2023-10-25', 'Pendiente'),
(12, 2, '2023-10-26', 'En proceso'),
(13, 3, '2023-10-27', 'Pendiente'),
(14, 4, '2023-10-28', 'Entregado'),
(15, 5, '2023-10-29', 'Pendiente'),
(16, 1, '2023-10-30', 'Pendiente'),
(17, 2, '2023-10-31', 'En proceso'),
(18, 3, '2023-11-01', 'Entregado'),
(19, 4, '2023-11-02', 'Entregado'),
(20, 5, '2023-11-03', 'En proceso');