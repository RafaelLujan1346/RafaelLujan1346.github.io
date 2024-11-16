create database tradoox
--creacion de tablas
CREATE TABLE USUARIOS(
ID_USUARIO INT primary key,
NOMBRE CHAR(25),
AP CHAR(25),
AM CHAR (25),
FECHA_NACIMIENTO DATE,
EMAIL VARCHAR(50),
CONTRASEÑA VARCHAR(50),
CODIGO_POSTAL VARCHAR(50),
PAIS VARCHAR (50),
ESTADO VARCHAR(50),
MUNICIPIO VARCHAR(50),
CALLE1 VARCHAR(30),
CALLE2 VARCHAR(30),
FOTO_PERFIL VARCHAR(100)
)

CREATE TABLE PRODUCTOS(
ID_PRODUCTO INT PRIMARY KEY,
NOMBRE VARCHAR(100),
DESCRIPCION VARCHAR(500),
PRECIO DECIMAL,
STOCK INT,
ID_CATEGORIA VARCHAR(50),
FECHA DATE
)

CREATE TABLE CATEGORIAS(
ID_CATEGORIA INT,
CATEGORIA VARCHAR(50)
)
CREATE TABLE INVENTARIO(
ID_INVENTARIO INT,
ID_PRODUCTO INT,
ACTUALIZACION DATE
)
CREATE TABLE PAGOS(
ID_PAGO INT PRIMARY KEY,
METODOPAGO VARCHAR(30)
)

CREATE TABLE PEDIDO(
ID_PEDIDO INT PRIMARY KEY,
ID_USUARIO INT,
FECHAPEDIDO DATE,
TOTAL DECIMAL
)
CREATE TABLE PEDIDOSPRODUCTOS(
ID_PEDIDOPRODUCTO INT PRIMARY KEY,
ID_PRODUCTO INT,
ID_PEDIDO INT,
ID_PAGO INT,
CANTIDAD INT,
PRECIO DECIMAL
)
CREATE TABLE ENTREGA (
ID_ENTREGA INT PRIMARY KEY,
ID_PEDIDO INT,
FECHAENTREGA DATE,
RECIBIDO_POR VARCHAR(100),
ESTADOENTREGA VARCHAR(50)
)
CREATE TABLE DEVOLUCION(
ID_DEVOLUCION INT PRIMARY KEY,
ID_ENTREGA INT,
FECHA_SOLICITUD DATE,
MOTIVO VARCHAR(500),
ESTADO_DEVOLUCION VARCHAR(200),
FECHA_DEVUELTO DATE,
COMENTARIOS VARCHAR(500),
ID_PEDIDO INT,
ID_PRODUCTO INT
)
CREATE TABLE COMENTARIO(
ID_COMENTARIO INT PRIMARY KEY,
ID_USUARIO INT,
ID_PRODUCTO INT,
COMENTARIO VARCHAR(500),
FECHA_COMENTARIO DATE,
CALIFICACION INT
)
--agregar usuarios
INSERT INTO USUARIOS values(1,'Juan','Terrazas','Olivas','08/01/2000','correoprueba123@gmail.com','password1234','31890','Mexico','Chihuahua','Buenaventura','19 y morelos','Barrio del seguro','jp.foto1')
INSERT INTO USUARIOS values(2,'Pablo','Luz','Aurora','01/22/2004','correoprueba321@gmail.com','password1234','43789','Alemania','Chiapas','Quevedo','Faz de negrida','Barranco rocoso','jp.foto2')
INSERT INTO USUARIOS values(3,'Luis','Grijalva','Torreon','02/15/2003','correoprueba456@gmail.com','password1234','43789','Alemania','Chiapas','Quevedo','4 Julio','Barranco Pinoalto','jp.foto3')
INSERT INTO USUARIOS values(4,'Esdraz','Negrida','Jhonson','07/29/2006','correoprueba654@gmail.com','password1234','74920','Taiwan','Veracruz','Puebla','5 miradas','Aurora','jp.foto4')
INSERT INTO USUARIOS values(5,'Oron','Sal','Mar','09/22/2001','correoprueba789@gmail.com','password1234','03563','Japon','Tokio','Colima','Kim yon gun','Salmon','jp.foto5')
INSERT INTO USUARIOS values(6,'Crhisanta','Milagro','Cegada','05/06/2001','correoprueba987@gmail.com','password1234','8478','Egipto','Marruecos','Tukan','Raa','Obelisco','jp.foto6')
INSERT INTO USUARIOS values(7,'Tirgo','Llagas','Blashfemia','12/12/2012','correoprueba200@gmail.com','password1234','8478','Egipto','Marruecos','Cepada','Hoz','Obelisco','jp.foto7')
INSERT INTO USUARIOS values(8,'Jevil','Nubloso','Chaos','01/08/1999','correoprueba923@gmail.com','password1234','31890','Mexico','Chihuahua','Buenaventura','Buena fe','Flores violetas','jp.foto8')
INSERT INTO USUARIOS values(9,'Cristobal','America','Spain','01/04/2000','correoprueba213@gmail.com','password1234','03563','Japon','Tokio','Morelos','Cerezo','Rosa','jp.foto9')
INSERT INTO USUARIOS values(10,'Leproso','Forest','Tenpie','09/17/2010','correoprueba893@gmail.com','password1234','31890','Mexico','Chihuahua','Buenaventura','Principal','Lebaron','jp.foto10')
--agregar las categorias
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (1,'Electrónica');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (2,'Moda');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (3,'Hogar y cocina');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (4,'Belleza y cuidado personal');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (5,'Deportes y aire libre');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (6,'Libros y entretenimiento');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (7,'Automotriz');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (8,'Juguetes y bebés');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (9,'Dispositivos móviles');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (10,'Computadoras');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (11,'Audio y video');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (12,'Gaming');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (13,'Componentes y accesorios');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (14,'Software');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (15,'Hombre');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (16,'Mujer');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (17,'Niños');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (18,'Accesorios');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (19,'Ofertas y descuentos');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (20,'Alimentos y bebidas');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (21,'Limpieza y hogar');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (22,'Mascotas');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (23,'Cuidado personal');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (24,'Mobiliario');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (25,'Tecnología');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (26,'Material de oficina');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (27,'Materiales escolares');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (28,'Productos ecológicos');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (29,'Artesanías');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (30,'Salud y bienestar');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (31,'Nuevos lanzamientos');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (32,'Lo más vendido');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (33,'Ofertas del día');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (34,'Productos personalizados');
INSERT INTO CATEGORIAS (ID_CATEGORIA, CATEGORIA) VALUES (35,'Envío gratuito');
--agregar productos
INSERT INTO PRODUCTOS (ID_PRODUCTO, NOMBRE, DESCRIPCION, PRECIO, STOCK, ID_CATEGORIA, FECHA) VALUES 
(1, 'Smartphone Galaxy S21', 'Teléfono móvil con pantalla AMOLED de 6.2 pulgadas y cámara de 64 MP.', 799.99, 50, 1, '2024-11-15'),
(2, 'Camisa Casual Hombre', 'Camisa de algodón para uso diario, disponible en varios colores.', 29.99, 100, 2, '2024-11-15'),
(3, 'Set de Ollas de Acero', 'Juego de 5 ollas de acero inoxidable con tapa de vidrio.', 120.00, 30, 3, '2024-11-15'),
(4, 'Crema Hidratante', 'Crema hidratante para rostro con vitamina E, ideal para piel seca.', 19.99, 200, 4, '2024-11-15'),
(5, 'Bicicleta de Montaña', 'Bicicleta con suspensión delantera y frenos de disco, ideal para terrenos irregulares.', 499.99, 20, 5, '2024-11-15'),
(6, 'Novela "El Alquimista"', 'Libro de Paulo Coelho, una historia inspiradora de superación personal.', 14.99, 150, 6, '2024-11-15'),
(7, 'Aceite de Motor 10W40', 'Aceite sintético para motor con protección de alto rendimiento.', 45.50, 80, 7, '2024-11-15'),
(8, 'Juego de Bloques de Construcción', 'Set de bloques de construcción para niños mayores de 5 años.', 24.99, 300, 8, '2024-11-15'),
(9, 'Tablet iPad Air', 'Tablet con pantalla Retina de 10.9 pulgadas y chip A14 Bionic.', 649.99, 40, 9, '2024-11-15'),
(10, 'Laptop HP Envy', 'Portátil con procesador Intel Core i7 y pantalla de 15 pulgadas.', 999.99, 25, 10, '2024-11-15'),
(11, 'Audífonos Bluetooth', 'Audífonos inalámbricos con cancelación activa de ruido.', 89.99, 70, 11, '2024-11-15'),
(12, 'Consola PlayStation 5', 'Consola de última generación con 825 GB de almacenamiento.', 499.99, 15, 12, '2024-11-15'),
(13, 'Memoria RAM DDR4 16GB', 'Módulo de memoria RAM de alta velocidad para gaming.', 79.99, 60, 13, '2024-11-15'),
(14, 'Licencia de Office 365', 'Software de productividad para uso personal y profesional.', 69.99, 500, 14, '2024-11-15'),
(15, 'Pantalón de Vestir', 'Pantalón formal de hombre, disponible en negro y azul.', 39.99, 50, 15, '2024-11-15'),
(16, 'Vestido Elegante', 'Vestido largo de noche con detalles en encaje.', 89.99, 30, 16, '2024-11-15'),
(17, 'Chaqueta Infantil', 'Chaqueta acolchada para niños, ideal para invierno.', 49.99, 100, 17, '2024-11-15'),
(18, 'Collar de Plata', 'Collar con dije en forma de corazón, ideal para regalo.', 59.99, 80, 18, '2024-11-15'),
(19, 'Paquete Promocional de Champú', 'Dos champús con descuento especial.', 14.99, 150, 19, '2024-11-15'),
(20, 'Caja de Galletas', 'Galletas artesanales con chispas de chocolate.', 4.99, 500, 20, '2024-11-15'),
(21, 'Detergente Líquido', 'Detergente para ropa con fragancia floral.', 7.99, 300, 21, '2024-11-15'),
(22, 'Alimento para Perros', 'Saco de alimento balanceado para perros adultos.', 29.99, 120, 22, '2024-11-15'),
(23, 'Jabón Líquido Antibacterial', 'Jabón para manos con fórmula antibacteriana.', 3.99, 400, 23, '2024-11-15'),
(24, 'Escritorio Ajustable', 'Escritorio ergonómico con altura regulable.', 249.99, 20, 24, '2024-11-15'),
(25, 'Proyector HD', 'Proyector portátil con resolución HD y conexión HDMI.', 199.99, 30, 25, '2024-11-15'),
(26, 'Marcadores Permanentes', 'Set de 12 marcadores en colores surtidos.', 9.99, 200, 26, '2024-11-15'),
(27, 'Mochila Escolar', 'Mochila resistente con compartimentos múltiples.', 24.99, 150, 27, '2024-11-15'),
(28, 'Bolsa Reutilizable', 'Bolsa ecológica de algodón para compras.', 2.99, 300, 28, '2024-11-15'),
(29, 'Vasija de Barro Artesanal', 'Hecha a mano, ideal para decoración.', 39.99, 50, 29, '2024-11-15'),
(30, 'Multivitamínico', 'Suplemento diario con vitaminas esenciales.', 19.99, 200, 30, '2024-11-15'),
(31, 'Smartwatch', 'Reloj inteligente con monitoreo de actividad y sueño.', 149.99, 100, 31, '2024-11-15'),
(32, 'Altavoz Inteligente', 'Altavoz con control por voz y asistente virtual.', 129.99, 60, 32, '2024-11-15'),
(33, 'Paquete de Productos de Limpieza', 'Kit de limpieza con descuento.', 14.99, 150, 33, '2024-11-15'),
(34, 'Taza Personalizada', 'Taza con diseño y texto personalizados.', 12.99, 100, 34, '2024-11-15'),
(35, 'Envío Gratuito en Electrónica', 'Promoción válida en productos seleccionados.', 0.00, 0, 35, '2024-11-15');

--agregar datos del inventario, producto y actualizacion de surtir
INSERT INTO INVENTARIO VALUES (1, 1, '2024-11-15');
INSERT INTO INVENTARIO VALUES (2, 2, '2024-11-15');
INSERT INTO INVENTARIO VALUES (3, 3, '2024-11-15');
INSERT INTO INVENTARIO VALUES (4, 4, '2024-11-15');
INSERT INTO INVENTARIO VALUES (5, 5, '2024-11-15');
INSERT INTO INVENTARIO VALUES (6, 6, '2024-11-15');
INSERT INTO INVENTARIO VALUES (7, 7, '2024-11-15');
INSERT INTO INVENTARIO VALUES (8, 8, '2024-11-15');
INSERT INTO INVENTARIO VALUES (9, 9, '2024-11-15');
INSERT INTO INVENTARIO VALUES (10, 10, '2024-11-15');
INSERT INTO INVENTARIO VALUES (11, 11, '2024-11-15');
INSERT INTO INVENTARIO VALUES (12, 12, '2024-11-15');
INSERT INTO INVENTARIO VALUES (13, 13, '2024-11-15');
INSERT INTO INVENTARIO VALUES (14, 14, '2024-11-15');
INSERT INTO INVENTARIO VALUES (15, 15, '2024-11-15');
INSERT INTO INVENTARIO VALUES (16, 16, '2024-11-15');
INSERT INTO INVENTARIO VALUES (17, 17, '2024-11-15');
INSERT INTO INVENTARIO VALUES (18, 18, '2024-11-15');
INSERT INTO INVENTARIO VALUES (19, 19, '2024-11-15');
INSERT INTO INVENTARIO VALUES (20, 20, '2024-11-15');
INSERT INTO INVENTARIO VALUES (21, 21, '2024-11-15');
INSERT INTO INVENTARIO VALUES (22, 22, '2024-11-15');
INSERT INTO INVENTARIO VALUES (23, 23, '2024-11-15');
INSERT INTO INVENTARIO VALUES (24, 24, '2024-11-15');
INSERT INTO INVENTARIO VALUES (25, 25, '2024-11-15');
INSERT INTO INVENTARIO VALUES (26, 26, '2024-11-15');
INSERT INTO INVENTARIO VALUES (27, 27, '2024-11-15');
INSERT INTO INVENTARIO VALUES (28, 28, '2024-11-15');
INSERT INTO INVENTARIO VALUES (29, 29, '2024-11-15');
INSERT INTO INVENTARIO VALUES (30, 30, '2024-11-15');
INSERT INTO INVENTARIO VALUES (31, 31, '2024-11-15');
INSERT INTO INVENTARIO VALUES (32, 32, '2024-11-15');
INSERT INTO INVENTARIO VALUES (33, 33, '2024-11-15');
INSERT INTO INVENTARIO VALUES (34, 34, '2024-11-15');
INSERT INTO INVENTARIO VALUES (35, 35, '2024-11-15');
--metodos de pago
INSERT INTO PAGOS VALUES (1, 'Tarjeta de crédito');
INSERT INTO PAGOS VALUES (2, 'PayPal');
INSERT INTO PAGOS VALUES (3, 'Transferencia bancaria');
INSERT INTO PAGOS VALUES (4, 'Pago Oxxo');

--pedidos y la fecha en que se pagaron
INSERT INTO PEDIDO VALUES (1, 1, '2024-11-01', 799.99);
INSERT INTO PEDIDO VALUES (2, 2, '2024-11-05', 129.99);
INSERT INTO PEDIDO VALUES (3, 3, '2024-08-07', 49.99);
INSERT INTO PEDIDO VALUES (4, 3, '2024-09-07', 49.99);
INSERT INTO PEDIDO VALUES (5, 3, '2024-10-07', 49.99);
INSERT INTO PEDIDO VALUES (6, 3, '2024-12-07', 49.99);

--pedidos de uno o varios productos
INSERT INTO PEDIDOSPRODUCTOS VALUES (1, 1, 1, 1,5, 799.99);
INSERT INTO PEDIDOSPRODUCTOS VALUES (2, 15, 2, 3,3, 39.99);
INSERT INTO PEDIDOSPRODUCTOS VALUES (3, 18, 3, 2,4, 24.99);
--entrega de los productos
INSERT INTO ENTREGA VALUES (1, 1, '2024-11-03', 'Juan Pérez', 'Entregado');
INSERT INTO ENTREGA VALUES (2, 2, '2024-11-06', 'María López', 'Entregado');
INSERT INTO ENTREGA VALUES (3, 3, '2024-11-10', 'Carlos García', 'En tránsito');
--devoluciones
INSERT INTO DEVOLUCION VALUES (1, 1, '2024-11-04', 'Producto defectuoso', 'Aceptado', '2024-11-07', 'Se procesó el reembolso', 1, 1)
INSERT INTO DEVOLUCION VALUES (2, 3, '2024-11-12', 'No cumplió expectativas', 'Pendiente', NULL, 'En espera de revisión', 3, 18)
--comentarios y calificacion
INSERT INTO COMENTARIO VALUES (1,1, 1, 'Excelente smartphone, funciona perfecto.', '2024-11-08', 5)
INSERT INTO COMENTARIO VALUES (2,2, 15, 'Buena calidad, pero algo ajustado en la talla.', '2024-11-09', 4)
INSERT INTO COMENTARIO VALUES (3,3, 18, 'Producto bonito pero algo caro.', '2024-11-10', 3)

--PRODUCTO CARTESIANO
--recupera la id del pedidoproducto, el precio de un articulo, su nombre, la cantidad, el total, fecha de pago y el cliente
select PED.ID_PEDIDOPRODUCTO,P.PRECIO,P.NOMBRE,PED.CANTIDAD,(PED.CANTIDAD*P.PRECIO) AS TOTAL,PE.FECHAPEDIDO,U.NOMBRE from PEDIDOSPRODUCTOS PED,PRODUCTOS P,PEDIDO PE,USUARIOS U where u.ID_USUARIO = PE.ID_USUARIO AND PED.ID_PRODUCTO = P.ID_PRODUCTO AND PED.ID_PEDIDO = PE.ID_PEDIDO
--Recupera al usuario, el comentario y el producto que comento
select c.COMENTARIO,u.NOMBRE,p.NOMBRE as producto,c.CALIFICACION from COMENTARIO c, USUARIOS u,PRODUCTOS p where u.ID_USUARIO = c.ID_USUARIO and p.ID_PRODUCTO = c.ID_PRODUCTO
--recupera los productos con su categoria y la ultmima fecha que se surtio el inventario
select P.NOMBRE,C.CATEGORIA,I.ACTUALIZACION from PRODUCTOS P, INVENTARIO I, CATEGORIAS C where p.ID_CATEGORIA = C.ID_CATEGORIA and I.ID_PRODUCTO = P.ID_PRODUCTO
--INNER JOIN

--recupera la fecha en la que los usuarios realizaron su pedido
SELECT u.id_usuario, u.nombre, p.id_pedido, p.FECHAPEDIDO FROM USUARIOS u INNER JOIN PEDIDO p ON u.id_usuario = p.id_usuario
--recupera el producto y su categoria por las id
SELECT pr.nombre AS producto, c.CATEGORIA AS categoria FROM PRODUCTOS pr INNER JOIN CATEGORIAS c ON pr.id_categoria = c.id_categoria
--Muestra la id del pedido, fecha de pago, fecha de entrega y el comprador
SELECT p.id_pedido, p.FECHAPEDIDO, e.FECHAENTREGA, u.nombre AS cliente FROM PEDIDO p INNER JOIN ENTREGA e ON p.id_pedido = e.id_pedido INNER JOIN USUARIOS u ON p.id_usuario = u.id_usuario

select * from PEDIDOSPRODUCTOS
--contar todos los usuarios del estado de chihuahua
select count(ID_USUARIO) from USUARIOS U where u.ESTADO ='Chihuahua'
--obtener el dinero de todos los productos vendidos
select sum(CANTIDAD*PRECIO) as [total ventas] from PEDIDOSPRODUCTOS
--obtener el promedio del precio de todos los productos
select avg(PRECIO)as[promedio de todos los productos] from PRODUCTOS




