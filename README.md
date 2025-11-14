# 📦 Base de Datos — *SandraMarzzanDB*

Proyecto personal creado para practicar **PostgreSQL** y modelar datos reales, aplicando consultas SQL utilizadas en QA para validación interna de datos.  
Simula la gestión de clientes, productos y ventas de una distribuidora de perfumería y aromatización, inspirada en mi emprendimiento real.

---

## 🧩 Objetivos del proyecto

- Crear una base de datos desde cero utilizando PostgreSQL.  
- Modelar tablas relacionadas mediante claves primarias y foráneas.  
- Insertar datos reales y consistentes.  
- Practicar consultas SQL de uso real en QA.  
- Generar un modelo entidad–relación (ER).  
- Incluir evidencias visuales del funcionamiento en pgAdmin.  
- Subir el proyecto completo a GitHub como parte de mi portafolio.
---
## 🗂️ Estructura del proyecto
postgresql-sandramarzzan-db/
│
├── README.md
├── script_creacion.sql
├── script_datos.sql
├── consultas.sql
├── diagrama/
│ └── diagrama_sandra_marzzan.png
└── capturas/
├── clientes.png
├── productos.png
├── ventas.png
├── detalle_venta.png
└── consultas_resultado.png

---

## 🗄️ Modelo de Base de Datos

### ✔️ Tabla: **clientes**
| Campo           | Tipo       | Descripción      |
|-----------------|------------|------------------|
| id_cliente (PK) | SERIAL     | Identificador    |
| nombre          | VARCHAR    | Nombre completo  |
| telefono        | VARCHAR    | Contacto         |
| ciudad          | VARCHAR    | Localidad        |
| fecha_registro  | DATE       | Fecha de alta    |

---

### ✔️ Tabla: **productos**
| Campo            | Tipo         |
|------------------|--------------|
| id_producto (PK) | SERIAL       |
| nombre           | VARCHAR      |
| categoria        | VARCHAR      |
| precio           | NUMERIC      |
| stock            | INT          |

---

### ✔️ Tabla: **ventas**
| Campo            | Tipo                   |
|------------------|------------------------|
| id_venta (PK)    | SERIAL                 |
| id_cliente (FK)  | INT → clientes         |
| fecha_venta      | DATE                   |
| total            | NUMERIC                |

---

### ✔️ Tabla: **detalle_venta**
| Campo            | Tipo                     |
|------------------|--------------------------|
| id_detalle (PK)  | SERIAL                   |
| id_venta (FK)    | INT → ventas             |
| id_producto (FK) | INT → productos          |
| cantidad         | INT                      |
| subtotal         | NUMERIC                  |

---

## 🔗 Diagrama Entidad–Relación (ER)

📄 Disponible en:  
**`/diagrama/diagrama_sandra_marzzan.png`**

Relaciones principales:

- Cliente **1 — N** Ventas  
- Ventas **1 — N** Detalle  
- Productos **1 — N** Detalle  

---

## 🔍 Consultas SQL destacadas

### 🔸 Total de compras por cliente
SELECT c.nombre, SUM(v.total) AS total_compras
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id_cliente
GROUP BY c.nombre
ORDER BY total_compras DESC;

## 🔸 Productos con stock bajoSELECT nombre, stock
FROM productos
WHERE stock < 6;
------
📸 Evidencias visuales

Las capturas tomadas desde pgAdmin muestran:

- Tablas creadas correctamente
- Datos insertados
- Consultas ejecutadas con éxito

Ver carpeta ➝ /capturas/
----

🎯 Propósito del proyecto
Este proyecto forma parte de mi formación como QA Manual / QA Automation, demostrando habilidades en:
- SQL
- PostgreSQL
- Validación interna de datos
- Modelado y diseño de bases
- Consultas con JOIN
- Agrupamientos, filtros y análisis
---------------
💜 Autora
Iara Camila Barcos
GitHub: https://github.com/Iara2002
