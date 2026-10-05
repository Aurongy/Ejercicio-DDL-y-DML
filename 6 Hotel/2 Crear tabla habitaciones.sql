CREATE TABLE Habitaciones (
    IdHabitacion INT PRIMARY KEY AUTO_INCREMENT,
    Numero INT NOT NULL,
    Tipo VARCHAR(50) NOT NULL,
    Capacidad INT NOT NULL,
    PrecioNoche DECIMAL(10,2) NOT NULL,
    Estado VARCHAR(20) NOT NULL,
    CHECK (Estado IN ('Disponible', 'Ocupada', 'Mantenimiento'))
);