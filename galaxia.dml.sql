INSERT INTO usuario (nombre, condicion)
VALUES 
('Juan Perez', 'Requiere traje presurizado avanzado'),
('Maria Lopez', 'Sensibilidad gravitacional'),
('Carlos Gomez', 'Entrenamiento EVA limitado'),
('Ana Ruiz', 'Condiciones especiales de movilidad'),
('Luis Fernández', 'Sin condiciones especiales'),
('Patricia Martínez', 'Condiciones especiales auditivas'),
('Ricardo Sánchez', 'Requiere soporte de oxígeno'),
('Elena Gómez', 'Condiciones especiales de visión'),
('Fernando Díaz', 'Entrenamiento EVA completo'),
('Lucia Rodríguez', 'Sin condiciones especiales');

INSERT INTO medio (tipo_medio, descripcion)
VALUES 
('Email', 'Envío de notificaciones por correo electrónico'),
('SMS', 'Notificación a través de mensaje de texto'),
('Aplicación Móvil', 'Notificación mediante app móvil'),
('Teléfono', 'Notificación por llamada telefónica'),
('Correo Postal', 'Notificación por correo físico'),
('Redes Sociales', 'Notificación a través de plataformas como Facebook o Twitter'),
('Fax', 'Notificación mediante fax'),
('Notificación Push', 'Notificación directa a través de la app'),
('Correo Electrónico', 'Notificación a través de correo electrónico'),
('Llamada Automatizada', 'Llamadas automáticas para notificación');

INSERT INTO notificacion (usuario_id, medio_id, mensaje, estado, fecha_envio)
VALUES 
(1, 1, 'Recordatorio de misión', FALSE, NOW()),
(2, 2, 'Confirmación de reserva', TRUE, NOW()),
(3, 3, 'Estado de la misión', TRUE, NOW()),
(4, 4, 'Aviso de carga científica', FALSE, NOW()),
(5, 5, 'Recordatorio de misión', FALSE, NOW()),
(6, 1, 'Estado de la misión', FALSE, NOW()),
(7, 2, 'Confirmación de misión', TRUE, NOW()),
(8, 3, 'Estado de la reserva', TRUE, NOW()),
(9, 4, 'Aviso de misión', FALSE, NOW()),
(10, 5, 'Recordatorio de misión', FALSE, NOW());

INSERT INTO mision (duracion, destino, fecha_lanzamiento, estado)
VALUES 
(5, 'Luna', NOW(), FALSE),
(7, 'Marte', NOW(), TRUE),
(10, 'Venus', NOW(), TRUE),
(8, 'Jupiter', NOW(), FALSE),
(6, 'Saturno', NOW(), FALSE),
(9, 'Neptuno', NOW(), FALSE),
(4, 'Mercurio', NOW(), TRUE),
(11, 'Plutón', NOW(), TRUE),
(12, 'Ceres', NOW(), FALSE),
(14, 'Asteroides', NOW(), TRUE);

INSERT INTO reserva (usuario_id, mision_id, estado_reserva, fecha_reservas, asiento)
VALUES 
(1, 1, TRUE, NOW(), 12),
(2, 2, FALSE, NOW(), 13),
(3, 3, TRUE, NOW(), 14),
(4, 4, FALSE, NOW(), 15),
(5, 5, FALSE, NOW(), 16),
(6, 1, TRUE, NOW(), 17),
(7, 2, TRUE, NOW(), 18),
(8, 3, TRUE, NOW(), 19),
(9, 4, FALSE, NOW(), 20),
(10, 5, TRUE, NOW(), 21);

INSERT INTO nave (mision_id, nombre)
VALUES 
(1, 'Nave Alpha'),
(2, 'Nave Beta'),
(3, 'Nave Gamma'),
(4, 'Nave Delta'),
(5, 'Nave Epsilon'),
(6, 'Nave Zeta'),
(7, 'Nave Eta'),
(8, 'Nave Theta'),
(9, 'Nave Iota'),
(10, 'Nave Kappa');

INSERT INTO carga (mision_id, tipo, peso, descripcion)
VALUES 
(1, 'Científica', 1000.50, 'Experimentos para la NASA'),
(2, 'Comercial', 2000.30, 'Cargamento de suministros'),
(3, 'Científica', 1500.25, 'Experimentos en Marte'),
(4, 'Comercial', 1800.60, 'Cargamento de tecnología'),
(5, 'Científica', 1200.45, 'Cargamento de investigación lunar'),
(6, 'Comercial', 1300.10, 'Cargamento de recursos minerales'),
(7, 'Científica', 950.00, 'Muestras de meteoritos'),
(8, 'Comercial', 2200.80, 'Cargamento de equipos de telecomunicaciones'),
(9, 'Científica', 1100.20, 'Investigación en atmósferas planetarias'),
(10, 'Comercial', 1600.50, 'Suministros para estaciones espaciales');