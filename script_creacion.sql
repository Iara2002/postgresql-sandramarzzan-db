CREATE TABLE clientes (
  id_cliente SERIAL PRIMARY KEY,
  nombre VARCHAR(50),
  telefono VARCHAR(20),
  ciudad VARCHAR(50),
  fecha_registro DATE
);

CREATE TABLE productos (
  id_producto SERIAL PRIMARY KEY,
  nombre VARCHAR(80),
  categoria VARCHAR(50),
  precio NUMERIC(8,2),
  stock INT
);

CREATE TABLE ventas (
  id_venta SERIAL PRIMARY KEY,
  id_cliente INT REFERENCES clientes(id_cliente),
  fecha_venta DATE,
  total NUMERIC(8,2)
);

CREATE TABLE detalle_venta (
  id_detalle SERIAL PRIMARY KEY,
  id_venta INT REFERENCES ventas(id_venta),
  id_producto INT REFERENCES productos(id_producto),
  cantidad INT,
  subtotal NUMERIC(8,2)
);
