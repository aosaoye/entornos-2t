CREATE TABLE caballos(
    id_caballo NUMBER PRIMARY KEY,
    nombre VARCHAR2(50),
    fecha_nacimiento DATE,
    sexo VARCHAR2(1),
    raza VARCHAR2(50)
);

CREATE TABLE jockeys(
    id_jockey NUMBER PRIMARY KEY,
    nombre VARCHAR2(50),
    fecha_nacimiento DATE,
    sexo VARCHAR2(1),
    nacionalidad VARCHAR2(50)
);