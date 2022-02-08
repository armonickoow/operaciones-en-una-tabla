-- Crear una base de datos con nombre “Posts”
--En pgAdmin crear la base de datos "Posts"
--Crear tabla dentro de la base de datos: Post/public/tables-query tool.
CREATE TABLE post(
id INT,
nombre_usuario VARCHAR(25),
fecha_creacion DATE,
contenido VARCHAR(255),
descripcion VARCHAR(255),
PRIMARY KEY(id));

--Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos"
INSERT INTO post(id, nombre_de_usuario, fecha_creacion, contenido, descripcion) 
VALUES(1, 'Pamela', '2022-07-02', 'Post 1 Pamela', 'Descripcion de Post 1 Pamela.');

INSERT INTO post(id, nombre_de_usuario, fecha_creacion, contenido, descripcion) 
VALUES(2, 'Pamela', '2022-07-02', 'Post 2 Pamela', 'Descripcion de Post 2 Pamela.');

INSERT INTO post(id, nombre_de_usuario, fecha_creacion, contenido, descripcion) 
VALUES(3, 'Carlos', '2022-07-02', 'Post 1 Carlos', 'Descripcion de Post 1 Carlos.');

--Modificar la tabla post, agregando la columna título.
ALTER TABLE post ADD titulo VARCHAR(255);

--Agregar título a las publicaciones ya ingresadas.
UPDATE post SET titulo = 'Titulo Generico';

--Insertar 2 post para el usuario "Pedro".
INSERT INTO post(id, nombre_usuario, fecha_creacion, contenido, descripcion, titulo) 
VALUES(4, 'Pedro', '2021-11-30', 'Post 1 Pedro', 'Descripcion de Post 1 Pedro.', 'Titulo Generico Post 1 Pedro');

INSERT INTO post(id, nombre_usuario, fecha_creacion, contenido, descripcion, titulo)
VALUES(5, 'Pedro', '2021-11-30', 'Post 2 Pedro', 'Descripcion de Post 2 Pedro.', 'Titulo Generico Post 2 Pedro');

--Eliminar el post de Carlos.
DELETE FROM post WHERE nombre_usuario = 'Carlos';

--Ingresar un nuevo post para el usuario "Carlos".
INSERT INTO post(id, nombre_usuario, fecha_creacion, contenido, descripcion, titulo)
VALUES(6, 'Carlos', '2022-07-02', 'Post 1 Carlos', 'Descripcion de Post 1 Carlos.', 'Titulo Generico Post 1 Carlos');


--PARTE 2

-- Crear una nueva tabla llamada “comentarios”, con los atributos id, fecha, hora de creación y contenido, que se relacione con la tabla posts.

CREATE TABLE comentarios(
    id SERIAL,
    fecha_hora_creacion TIMESTAMP,
    contenido VARCHAR(255),
    post_id INT,
    PRIMARY KEY(id),
    FOREIGN KEY(post_id) REFERENCES post(id)
);

--Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos".
INSERT INTO comentarios(fecha_hora_creacion, contenido, post_id) 
VALUES('2022-07-02 16:05','Contenido comentario post Pamela 1.', 1);

INSERT INTO comentarios(fecha_hora_creacion, contenido, post_id) 
VALUES('2022-07-02 18:05','Contenido comentario post Pamela 2.', 1);

INSERT INTO comentarios(fecha_hora_creacion, contenido, post_id) 
VALUES('2022-07-02 17:05','Contenido comentario post Carlos 1.', 6);

INSERT INTO comentarios(fecha_hora_creacion, contenido, post_id)
VALUES('2022-07-02 15:05','Contenido comentario post Carlos 2.', 6);

INSERT INTO comentarios(fecha_hora_creacion, contenido, post_id) 
VALUES('2022-07-02 13:05','Contenido comentario post Carlos 3.', 6);

INSERT INTO comentarios(fecha_hora_creacion, contenido, post_id) 
VALUES('2022-07-02 14:05','Contenido comentario post Carlos 4.', 6);

--Crear un nuevo post para "Margarita".
INSERT INTO post(id, nombre_usuario, fecha_creacion, contenido, descripcion, titulo) 
VALUES(7, 'Margarita', '2022-07-02', 'Post 1 Margarita', 'Descripcion de Post 1 Margarita.', 'Titulo Generico Post 1 Margarita');

--Ingresar 5 comentarios para el post de Margarita.

INSERT INTO comentarios(fecha_hora_creacion, contenido, post_id) 
VALUES('2021-12-04 16:05:00', 'Contenido comentario post Margarita 1.', 7);

INSERT INTO comentarios(fecha_hora_creacion, contenido, post_id) 
VALUES('2021-12-04 16:06:00', 'Contenido comentario post Margarita 2.', 7);

INSERT INTO comentarios(fecha_hora_creacion, contenido, post_id) 
VALUES('2021-12-04 17:05:00', 'Contenido comentario post Margarita 3.', 7);

INSERT INTO comentarios(fecha_hora_creacion, contenido, post_id) 
VALUES('2021-12-04 17:05:20', 'Contenido comentario post Margarita 4.', 7);

INSERT INTO comentarios(fecha_hora_creacion, contenido, post_id) 
VALUES('2021-12-04 17:05:30', 'Contenido comentario post Margarita 5.', 7);