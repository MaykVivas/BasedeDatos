CREATE TABLE Estudiante (
    id_estudiante integer primary key auto_increment,
    nombre varchar(50),
    codigo_est integer(10)
); 

CREATE TABLE Profesor (
    id_profesor integer primary key auto_increment,
    nombre varchar(50),
    codigo_doc varchar(10)
); 

CREATE TABLE Facultad (
    id_facultad integer primary key auto_increment,
    nombre varchar(50),
    codigo varchar(4)
); 

CREATE TABLE Programa (
    id_programa integer primary key auto_increment,
    nombre varchar(50),
    sigla varchar(4),
    codigo varchar(4),
    idfacultad integer,
    FOREIGN KEY (idfacultad) REFERENCES Facultad(id_facultad)
);

CREATE TABLE Asignatura (
    id_asignatura integer primary key auto_increment,
    nombre varchar(50),
    idprofesor integer,
    FOREIGN KEY (idprofesor) REFERENCES Profesor(id_profesor)
);

CREATE TABLE Malla (
    id_malla integer primary key auto_increment,
    idasignatura integer,
    idprograma integer,
    FOREIGN KEY (idasignatura) REFERENCES Asignatura(id_asignatura),
    FOREIGN KEY (idprograma) REFERENCES Programa(id_programa)
);

CREATE TABLE MatriculaAcademica (
    id_matriculaacademica integer primary key auto_increment,
    idestudiante integer,
    idasignatura integer,
    fecha_registro date,
    FOREIGN KEY (idestudiante) REFERENCES Estudiante(id_estudiante),
    FOREIGN KEY (idasignatura) REFERENCES Asignatura(id_asignatura)
);