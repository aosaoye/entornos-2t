CREATE TABLE caballo(
    id_caballo NUMBER(5),
    nombre VARCHAR2(50),
    stud VARCHAR2(50),
    fecha_nacimiento DATE,
    sexo VARCHAR2(1),
    raza VARCHAR2(50),
    CONSTRAINT pk_caballo PRIMARY KEY (id_caballo),
    CONSTRAINT nn_caballo_nombre CHECK (nombre IS NOT NULL),
    CONSTRAINT nn_caballo_fecha_nacimiento CHECK (fecha_nacimiento IS NOT NULL),
    CONSTRAINT nn_caballo_stud CHECK (stud IS NOT NULL),
    CONSTRAINT ck_caballo_sexo CHECK (sexo IN ('M', 'H'))
);

CREATE TABLE jinete(
    id_jinete NUMBER(5),
    nombre VARCHAR2(50),
    dni VARCHAR2(9),
    telefono VARCHAR2(9),
    direccion VARCHAR2(50),
    CONSTRAINT pk_jinete PRIMARY KEY (id_jinete),
    CONSTRAINT nn_jinete_nombre CHECK (nombre IS NOT NULL),
    CONSTRAINT nn_jinete_dni CHECK (dni IS NOT NULL),
    CONSTRAINT nn_jinete_telefono CHECK (telefono IS NOT NULL),
    CONSTRAINT nn_jinete_direccion CHECK (direccion IS NOT NULL)
);

CREATE TABLE preparador(
    id_preparador NUMBER(5),
    nombre VARCHAR2(50),
    CONSTRAINT pk_preparador PRIMARY KEY (id_preparador),
    CONSTRAINT nn_preparador_nombre CHECK (nombre IS NOT NULL)
);

CREATE TABLE DUENIO(
    id_duenio NUMBER(5),
    nombre VARCHAR2(50),
    fecha_venta DATE,
    CONSTRAINT pk_duenio PRIMARY KEY (id_duenio),
    CONSTRAINT nn_duenio_nombre CHECK (nombre IS NOT NULL),
    CONSTRAINT nn_duenio_fecha_venta CHECK (fecha_venta IS NOT NULL)
);

CREATE TABLE CARRERA(
    id_carrera NUMBER(5),
    hora DATE,
    localizacion VARCHAR2(50),
    id_inscripcion NUMBER(5),
    CONSTRAINT pk_carrera PRIMARY KEY (id_carrera),
    CONSTRAINT nn_carrera_hora CHECK (hora IS NOT NULL),
    CONSTRAINT nn_carrera_localizacion CHECK (localizacion IS NOT NULL),
    CONSTRAINT fk_carrera_inscripcion FOREIGN KEY (id_inscripcion) REFERENCES inscripcion(id_inscripcion)
);

CREATE TABLE JORNADA(
    id_jornada NUMBER(5),
    fecha DATE,
    id_carrera NUMBER(5),
    CONSTRAINT pk_jornada PRIMARY KEY (id_jornada),
    CONSTRAINT nn_jornada_fecha CHECK (fecha IS NOT NULL),
    CONSTRAINT pk_jornada_id_carrera FOREIGN KEY (id_carrera) REFERENCES carrera (id_carrera)
);

CREATE TABLE INSCRIPCION(
    id_inscripcion NUMBER(5),
    cuota NUMBER(5,2),
    estado VARCHAR2(50),
    id_caballo NUMBER(5),
    id_jinete NUMBER(5),
    CONSTRAINT pk_inscripcion PRIMARY KEY (id_inscripcion),
    CONSTRAINT nn_inscripcion_cuota CHECK (cuota IS NOT NULL),
    CONSTRAINT nn_inscripcion_estado CHECK (estado IS NOT NULL),
    CONSTRAINT fk_inscripcion_caballo FOREIGN KEY (id_caballo) REFERENCES caballo(id_caballo),
    CONSTRAINT fk_inscripcion_jinete FOREIGN KEY (id_jinete) REFERENCES jinete(id_jinete)
);


CREATE TABLE PREPARADOR_CABALLO(
    id_preparador NUMBER(5),
    id_caballo NUMBER(5),
    fecha_inicio DATE,
    fecha_fin DATE,
    CONSTRAINT pk_preparador_caballo PRIMARY KEY (id_preparador, id_caballo),
    CONSTRAINT nn_preparador_caballo_fecha_inicio CHECK (fecha_inicio IS NOT NULL),
    CONSTRAINT nn_preparador_caballo_fecha_fin CHECK (fecha_fin IS NOT NULL)
);

CREATE TABLE CABALLO_DUENIO(
    id_caballo NUMBER(5),
    id_duenio NUMBER(5),
    fecha_adquisicion DATE,
    CONSTRAINT pk_caballo_duenio PRIMARY KEY (id_caballo, id_duenio),
    CONSTRAINT nn_caballo_duenio_fecha_adquisicion CHECK (fecha_adquisicion IS NOT NULL)
);