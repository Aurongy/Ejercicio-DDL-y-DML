# Ejercicios DDL y DML en MySQL

## Descripción

Este proyecto contiene una serie de ejercicios prácticos de **SQL**, enfocados en el uso de instrucciones **DDL (Data Definition Language)** y **DML (Data Manipulation Language)** utilizando MySQL.

Los ejercicios permiten practicar la creación de bases de datos, tablas, índices y la manipulación de registros mediante operaciones `INSERT`, `UPDATE` y `DELETE`.

---

## Objetivos

### Objetivo general

Aplicar instrucciones DDL y DML para crear y administrar diferentes bases de datos en MySQL.

### Objetivos específicos

* Crear bases de datos mediante `CREATE DATABASE`.
* Crear tablas mediante `CREATE TABLE`.
* Definir claves primarias y tipos de datos.
* Crear índices para mejorar las búsquedas.
* Insertar registros utilizando `INSERT INTO`.
* Modificar información utilizando `UPDATE`.
* Eliminar registros utilizando `DELETE`.
* Consultar información mediante `SELECT`.
* Comprender la utilidad de los índices en una base de datos.

---

# Conceptos utilizados

## DDL

DDL significa **Data Definition Language** o Lenguaje de Definición de Datos.

Se utiliza para crear y modificar la estructura de una base de datos.

Principales instrucciones utilizadas:

```sql
CREATE DATABASE
CREATE TABLE
CREATE INDEX
```

## DML

DML significa **Data Manipulation Language** o Lenguaje de Manipulación de Datos.

Se utiliza para trabajar con los registros almacenados en las tablas.

Principales instrucciones utilizadas:

```sql
INSERT
UPDATE
DELETE
SELECT
```

---

# Ejercicio 1 — Biblioteca

## Base de datos

```text
Biblioteca
```

## Tabla

```text
libros
```

## Campos

| Campo           | Tipo          | Descripción             |
| --------------- | ------------- | ----------------------- |
| IdLibro         | INT           | Identificador del libro |
| Titulo          | VARCHAR(200)  | Título del libro        |
| Autor           | VARCHAR(100)  | Autor                   |
| AnioPublicacion | INT           | Año de publicación      |
| Categoria       | VARCHAR(100)  | Categoría               |
| Precio          | DECIMAL(10,2) | Precio del libro        |

## Operaciones realizadas

* Creación de la tabla.
* Creación de un índice sobre `Titulo`.
* Inserción de 5 libros.
* Modificación del precio de un libro.
* Modificación de la categoría de otro libro.
* Eliminación de un libro.

### Índice

```sql
CREATE INDEX idx_titulo
ON libros(Titulo);
```

---

# Ejercicio 2 — Empresa

## Base de datos

```text
Empresa
```

## Tabla

```text
Empleados
```

## Campos

| Campo        | Tipo          | Descripción                |
| ------------ | ------------- | -------------------------- |
| IdEmpleado   | INT           | Identificador del empleado |
| Nombre       | VARCHAR(100)  | Nombre                     |
| Apellido     | VARCHAR(100)  | Apellido                   |
| Puesto       | VARCHAR(100)  | Puesto laboral             |
| Salario      | DECIMAL(10,2) | Salario                    |
| Departamento | VARCHAR(100)  | Departamento               |

## Operaciones realizadas

* Creación de la base de datos.
* Creación de la tabla.
* Creación de un índice sobre `Apellido`.
* Inserción de 6 empleados.
* Aumento del salario de un empleado.
* Cambio de departamento de otro empleado.
* Eliminación de un empleado.

### Índice

```sql
CREATE INDEX idx_apellido
ON Empleados(Apellido);
```

---

# Ejercicio 3 — Universidad

## Base de datos

```text
Universidad
```

## Tabla

```text
Cursos
```

## Campos

| Campo       | Tipo         | Descripción             |
| ----------- | ------------ | ----------------------- |
| IdCurso     | INT          | Identificador del curso |
| NombreCurso | VARCHAR(150) | Nombre del curso        |
| Carrera     | VARCHAR(100) | Carrera                 |
| Creditos    | INT          | Número de créditos      |
| Catedratico | VARCHAR(100) | Catedrático             |
| Horario     | VARCHAR(100) | Horario del curso       |

## Operaciones realizadas

* Creación de la base de datos.
* Creación de la tabla.
* Creación de un índice sobre `NombreCurso`.
* Inserción de 6 cursos.
* Modificación de créditos de un curso.
* Cambio de catedrático de otro curso.
* Eliminación de un curso.

### Índice

```sql
CREATE INDEX idx_nombrecurso
ON Cursos(NombreCurso);
```

---

# Ejercicio 4 — Agencia de Vehículos

## Base de datos

```text
AgenciaVehiculos
```

## Tabla

```text
Vehiculos
```

## Campos

| Campo      | Tipo          | Descripción                |
| ---------- | ------------- | -------------------------- |
| IdVehiculo | INT           | Identificador del vehículo |
| Marca      | VARCHAR(100)  | Marca                      |
| Modelo     | VARCHAR(100)  | Modelo                     |
| Anio       | INT           | Año del vehículo           |
| Color      | VARCHAR(50)   | Color                      |
| Precio     | DECIMAL(10,2) | Precio                     |

## Operaciones realizadas

* Creación de la base de datos.
* Creación de la tabla.
* Creación de un índice sobre `Marca`.
* Inserción de 7 vehículos.
* Modificación del precio de dos vehículos.
* Cambio de color de un vehículo.
* Eliminación de un vehículo.

### Índice

```sql
CREATE INDEX idx_marca
ON Vehiculos(Marca);
```

---

# Ejercicio 5 — Hospital

## Base de datos

```text
Hospital
```

## Tabla

```text
Pacientes
```

## Campos

| Campo           | Tipo         | Descripción                |
| --------------- | ------------ | -------------------------- |
| IdPaciente      | INT          | Identificador del paciente |
| Nombre          | VARCHAR(100) | Nombre                     |
| Apellido        | VARCHAR(100) | Apellido                   |
| FechaNacimiento | DATE         | Fecha de nacimiento        |
| Genero          | VARCHAR(20)  | Género                     |
| Ciudad          | VARCHAR(100) | Ciudad                     |

## Operaciones realizadas

* Creación de la base de datos.
* Creación de la tabla.
* Creación de un índice sobre `Apellido`.
* Inserción de 6 pacientes.
* Modificación de la ciudad de dos pacientes.
* Corrección del nombre de un paciente.
* Eliminación de un paciente.

### Índice

```sql
CREATE INDEX idx_apellido
ON Pacientes(Apellido);
```

---

# Ejercicio 6 — Hotel

## Base de datos

```text
Hotel
```

## Tabla

```text
Habitaciones
```

## Campos

| Campo        | Tipo          | Descripción             |
| ------------ | ------------- | ----------------------- |
| IdHabitacion | INT           | Identificador           |
| Numero       | INT           | Número de habitación    |
| Tipo         | VARCHAR(50)   | Tipo de habitación      |
| Capacidad    | INT           | Capacidad de personas   |
| PrecioNoche  | DECIMAL(10,2) | Precio por noche        |
| Estado       | VARCHAR(20)   | Estado de la habitación |

## Estados permitidos

```text
Disponible
Ocupada
Mantenimiento
```

La tabla utiliza una restricción `CHECK`:

```sql
CHECK (Estado IN ('Disponible', 'Ocupada', 'Mantenimiento'))
```

## Operaciones realizadas

* Creación de la base de datos.
* Creación de la tabla.
* Creación de un índice sobre `Tipo`.
* Inserción de 8 habitaciones.
* Cambio de estado de tres habitaciones.
* Modificación del precio de dos habitaciones.
* Eliminación de una habitación.

### Índice

```sql
CREATE INDEX idx_tipo
ON Habitaciones(Tipo);
```

---

# Ejercicio 7 — Inventario

## Base de datos

```text
Inventario
```

## Tabla

```text
Productos
```

## Campos

| Campo      | Tipo          | Descripción                |
| ---------- | ------------- | -------------------------- |
| IdProducto | INT           | Identificador del producto |
| Codigo     | VARCHAR(50)   | Código del producto        |
| Nombre     | VARCHAR(150)  | Nombre                     |
| Categoria  | VARCHAR(100)  | Categoría                  |
| Existencia | INT           | Cantidad disponible        |
| Precio     | DECIMAL(10,2) | Precio                     |

## Operaciones realizadas

* Creación de la base de datos.
* Creación de la tabla.
* Creación de un índice sobre `Codigo`.
* Inserción de 8 productos.
* Modificación del precio de dos productos.
* Actualización de existencia de tres productos.
* Eliminación de un producto.

### Índice

```sql
CREATE INDEX idx_codigo
ON Productos(Codigo);
```

---

# Importancia de los índices

Un índice permite mejorar la velocidad de búsqueda de información dentro de una tabla.

Por ejemplo, en la tabla `Productos` se creó un índice sobre `Codigo`:

```sql
CREATE INDEX idx_codigo
ON Productos(Codigo);
```

Esto resulta útil cuando se realizan consultas frecuentes utilizando el código del producto:

```sql
SELECT *
FROM Productos
WHERE Codigo = 'P004';
```

Sin un índice, la base de datos puede tener que revisar una gran cantidad de registros para encontrar el dato solicitado.

Con un índice, el sistema puede localizar la información de una manera más eficiente.

Los índices son especialmente útiles cuando una tabla contiene una gran cantidad de registros.

---

# Diferencia entre DDL y DML

| DDL                       | DML                |
| ------------------------- | ------------------ |
| Define la estructura      | Manipula los datos |
| `CREATE DATABASE`         | `INSERT`           |
| `CREATE TABLE`            | `UPDATE`           |
| `CREATE INDEX`            | `DELETE`           |
| Modifica objetos de la BD | Modifica registros |

---

# Tecnologías utilizadas

* **MySQL**
* **MySQL Workbench** o cliente compatible
* **SQL**
* **Git**
* **GitHub**

---

# Ejecución

Para ejecutar los ejercicios:

1. Abrir MySQL Workbench o el cliente SQL utilizado.
2. Copiar el script correspondiente.
3. Ejecutar la creación de la base de datos.
4. Crear la tabla.
5. Crear el índice.
6. Insertar los registros.
7. Ejecutar las operaciones `UPDATE`.
8. Ejecutar la operación `DELETE`.
9. Utilizar `SELECT *` para verificar los resultados.

Ejemplo:

```sql
SELECT * FROM Productos;
```

---

# Repositorio

El proyecto puede ser almacenado en GitHub utilizando:

```bash
git init
git add .
git commit -m "Ejercicios DDL y DML"
git remote set-url origin https://github.com/Aurongy/Ejercicio-DDL-y-DML.git
git push -u origin master
```

---

# Conclusiones

1. Los ejercicios permitieron practicar la creación y administración de diferentes bases de datos utilizando instrucciones DDL y DML.

2. Se comprobó el uso de `CREATE DATABASE`, `CREATE TABLE` y `CREATE INDEX` para definir la estructura de las bases de datos.

3. Las instrucciones `INSERT`, `UPDATE` y `DELETE` permitieron agregar, modificar y eliminar información de las tablas.

4. Los índices son una herramienta importante para mejorar el rendimiento de las consultas, especialmente cuando las tablas contienen grandes cantidades de información.

5. La práctica de estos ejercicios permite comprender mejor la administración básica de bases de datos relacionales utilizando MySQL.

---

# Autor

**Angel Aurelio**
