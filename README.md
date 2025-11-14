📦 Base de Datos — SandraMarzzanDB

Proyecto personal creado para practicar PostgreSQL, modelar datos reales y aplicar consultas SQL como parte de mi aprendizaje para QA.

Este proyecto simula la gestión de clientes, productos y ventas de una distribuidora de perfumería y aromatización similar a mi emprendimiento real.

🧩 Objetivos del proyecto

Crear una base de datos completa desde cero en PostgreSQL.

Modelar tablas relacionadas usando claves primarias y foráneas.

Insertar datos reales de ejemplo.

Practicar consultas SQL útiles para QA y análisis de datos.

Generar un diagrama del modelo entidad–relación (ER).

Subir evidencias visuales (capturas) del funcionamiento.

🗄️ Estructura de la base de datos

La base está compuesta por 4 tablas principales:

✔️ clientes
Campo	Tipo	Descripción
id_cliente	SERIAL PK	Identificador
nombre	VARCHAR	Nombre completo
telefono	VARCHAR	Contacto
ciudad	VARCHAR	Localidad
fecha_registro	DATE	Fecha alta
✔️ productos
Campo	Tipo
id_producto	SERIAL PK
nombre	VARCHAR
categoria	VARCHAR
precio	NUMERIC
stock	INT
✔️ ventas
Campo	Tipo
id_venta	SERIAL PK
id_cliente	FK → clientes
fecha_venta	DATE
total	NUMERIC
✔️ detalle_venta
Campo	Tipo
id_detalle	SERIAL PK
id_venta	FK → ventas
id_producto	FK → productos
cantidad	INT
subtotal	NUMERIC
🔗 Diagrama del modelo (ER)

El diagrama se encuentra en:

📁 diagrama/diagrama_sandra_marzzan.png

Representa las relaciones:

Cliente 1—N Ventas

Ventas 1—N Detalle

Productos 1—N Detalle

📁 Archivos incluidos
Archivo	Descripción
script_creacion.sql	     Creación de todas las tablas
script_datos.sql	     Datos de ejemplo cargados
consultas.sql	         Consultas SQL típicas
/diagrama/	             Imagen del modelo ER
/capturas/           	 Evidencias visuales del proyecto

🔍 Consultas destacadas
Incluye:
Listado de clientes
Ventas por clientes
Productos con stock bajo
Detalle completo de cada venta
JOIN entre todas las tablas
Total por cliente (GROUP BY)

🎯 Propósito del proyecto

Este trabajo forma parte de mi proceso de formación como QA Tester y QA Automation, demostrando manejo de:

SQL
PostgreSQL
Análisis de datos
Modelado de base de datos
Validación interna de datos (práctica clave para QA)

💜 Autora
Iara Camila Barcos
GitHub: https://github.com/Iara2002