
CREATE TABLE usuario (
    usuario_id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    condicion VARCHAR(200) NOT NULL
);


CREATE TABLE medio (
    medio_id SERIAL PRIMARY KEY,
    tipo_medio VARCHAR(50) NOT NULL,
    descripcion VARCHAR(100)
);

CREATE TABLE notificacion (
    usuario_id INT NOT NULL,
    medio_id INT NOT NULL,
    mensaje VARCHAR(300) NOT NULL,
    estado BOOLEAN,
    fecha_envio TIMESTAMP,
    PRIMARY KEY (usuario_id, medio_id),
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
    FOREIGN KEY (medio_id) REFERENCES medio(medio_id)
);


CREATE TABLE mision (
    mision_id SERIAL PRIMARY KEY,
    duracion INT,
    destino VARCHAR(20),
    fecha_lanzamiento TIMESTAMP,
    estado BOOLEAN
);

CREATE TABLE reserva (
    usuario_id INT NOT NULL,
    mision_id INT NOT NULL,
    estado_reserva BOOLEAN,
    fecha_reservas TIMESTAMP,
    asiento INT,
    PRIMARY KEY (usuario_id, mision_id),
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
    FOREIGN KEY (mision_id) REFERENCES mision(mision_id)
);


CREATE TABLE nave (
    nave_id SERIAL PRIMARY KEY,
    mision_id INT,
    nombre VARCHAR(100),
    FOREIGN KEY (mision_id) REFERENCES mision(mision_id)
);


CREATE TABLE carga (
    carga_id SERIAL PRIMARY KEY,
    mision_id INT NOT NULL,
    tipo VARCHAR(20),
    peso DECIMAL(10,2) NOT NULL,
    descripcion VARCHAR(300),
    FOREIGN KEY (mision_id) REFERENCES mision(mision_id)
);