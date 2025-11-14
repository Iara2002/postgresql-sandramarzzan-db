INSERT INTO clientes (nombre, telefono, ciudad, fecha_registro) VALUES
('María González', '3415123456', 'Villa Constitución', '2024-11-01'),
('Laura Pérez', '3415236789', 'Empalme', '2024-11-05'),
('Sofía Romero', '3415987654', 'Villa Constitución', '2024-11-10'),
('Carolina Díaz', '3415765432', 'Theobald', '2024-11-15'),
('Valentina Rojas', '3415345678', 'Villa Constitución', '2024-11-20');
INSERT INTO productos (nombre, categoria, precio, stock) VALUES
('Perfume Floral 50ml', 'Perfume', 5500.00, 10),
('Difusor de Vainilla 200ml', 'Aromatizador', 4200.00, 8),
('Colonia Infantil Cielito', 'Colonia', 3800.00, 15),
('Aromatizador Auto Lavanda', 'Aromatizador', 2500.00, 12),
('Aceite Esencial de Coco', 'Aceite', 4700.00, 5);
INSERT INTO ventas (id_cliente, fecha_venta, total) VALUES
(1, '2024-11-21', 9700.00),
(2, '2024-11-22', 5500.00),
(3, '2024-11-23', 10400.00),
(4, '2024-11-23', 4700.00),
(5, '2024-11-24', 6700.00);
INSERT INTO detalle_venta (id_venta, id_producto, cantidad, subtotal) VALUES
-- Venta 1 - María
(1, 1, 1, 5500.00),
(1, 2, 1, 4200.00),

-- Venta 2 - Laura
(2, 3, 1, 3800.00),
(2, 4, 1, 1700.00),

-- Venta 3 - Sofía
(3, 1, 1, 5500.00),
(3, 5, 1, 4700.00),

-- Venta 4 - Carolina
(4, 5, 1, 4700.00),

-- Venta 5 - Valentina
(5, 2, 1, 4200.00),
(5, 4, 1, 2500.00);
