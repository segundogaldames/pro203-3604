CREATE Table empleados(
  id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  rut VARCHAR(20) not NULL,
  nombre VARCHAR(200) not null,
  email VARCHAR(100) not null,
  fecha_nacimiento date not null,
  rol_id int not NULL,
  especialidad_id int not NULL,
  created_at DATETIME,
  update_at DATETIME
);

SELECT
  e.id,
  e.nombre,
  r.nombre as rol,
  es.nombre as especialidad
FROM
  empleados e
  INNER JOIN roles r ON r.id = e.rol_id
  INNER JOIN especialidades es ON e.especialidad_id = es.id;

  SELECT
  e.id,
  e.rut,
  e.nombre,
  e.email,
  e.created_at,
  e.updated_at,
  r.nombre as rol,
  es.nombre as especialidad
FROM
  empleados e
  INNER JOIN roles r ON r.id = e.rol_id
  INNER JOIN especialidades es ON e.especialidad_id = es.id
WHERE
  e.id = 1;

  desc empleados;

  alter table empleados change update_at updated_at DATETIME;