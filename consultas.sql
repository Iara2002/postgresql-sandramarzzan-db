-- Total de ventas por cliente
SELECT c.nombre, SUM(v.total) AS total_compras
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id_cliente
GROUP BY c.nombre;

-- Productos con stock menor a 6
SELECT nombre, stock FROM productos WHERE stock < 6;

-- Ventas con detalle
SELECT v.id_venta, c.nombre AS cliente, p.nombre AS producto, d.cantidad, d.subtotal
FROM detalle_venta d
JOIN ventas v ON d.id_venta = v.id_venta
JOIN clientes c ON v.id_cliente = c.id_cliente
JOIN productos p ON d.id_producto = p.id_producto;
