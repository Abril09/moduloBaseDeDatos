-- Generado por Oracle SQL Developer Data Modeler 20.2.0.167.1538
--   en:        2020-07-21 21:57:44 CLT
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE alternativas (
    alternativas_id           INTEGER NOT NULL,
    descripcion               VARCHAR2(1000),
    porcentaje                FLOAT,
    preguntas_preguntas_id    NUMBER NOT NULL,
    porcentaje_porcentaje_id  INTEGER NOT NULL
);

ALTER TABLE alternativas ADD CONSTRAINT alternativas_pk PRIMARY KEY ( alternativas_id );

CREATE TABLE alumno (
    alumno_id       NUMBER NOT NULL,
    nombre          VARCHAR2(250),
    curso_curso_id  NUMBER NOT NULL
);

ALTER TABLE alumno ADD CONSTRAINT alumno_pk PRIMARY KEY ( alumno_id );

CREATE TABLE curso (
    curso_id  NUMBER NOT NULL,
    nombre    VARCHAR2(300)
);

ALTER TABLE curso ADD CONSTRAINT curso_pk PRIMARY KEY ( curso_id );

CREATE TABLE evaluacion (
    evaluacion_id     INTEGER NOT NULL,
    fecha             DATE,
    alumno_alumno_id  NUMBER NOT NULL
);

ALTER TABLE evaluacion ADD CONSTRAINT evaluacion_pk PRIMARY KEY ( evaluacion_id );

CREATE TABLE preguntas (
    preguntas_id  NUMBER NOT NULL,
    enunciado     VARCHAR2(6000),
    puntaje       FLOAT,
    test_test_id  NUMBER NOT NULL
);

ALTER TABLE preguntas ADD CONSTRAINT preguntas_pk PRIMARY KEY ( preguntas_id );

CREATE TABLE respuestas (
    respuestas_id                 INTEGER NOT NULL,
    alternativas_alternativas_id  INTEGER NOT NULL,
    evaluacion_evaluacion_id      INTEGER NOT NULL
);

ALTER TABLE respuestas ADD CONSTRAINT respuestas_pk PRIMARY KEY ( respuestas_id );

CREATE TABLE test (
    test_id           NUMBER NOT NULL,
    autor             VARCHAR2(500),
    fecha             DATE,
    unidad_unidad_id  NUMBER NOT NULL
);

ALTER TABLE test ADD CONSTRAINT test_pk PRIMARY KEY ( test_id );

CREATE TABLE unidad (
    unidad_id  NUMBER NOT NULL,
    nombre     VARCHAR2(200)
);

ALTER TABLE unidad ADD CONSTRAINT unidad_pk PRIMARY KEY ( unidad_id );

ALTER TABLE alternativas
    ADD CONSTRAINT alternativas_preguntas_fk FOREIGN KEY ( preguntas_preguntas_id )
        REFERENCES preguntas ( preguntas_id );

ALTER TABLE alumno
    ADD CONSTRAINT alumno_curso_fk FOREIGN KEY ( curso_curso_id )
        REFERENCES curso ( curso_id );

ALTER TABLE evaluacion
    ADD CONSTRAINT evaluacion_alumno_fk FOREIGN KEY ( alumno_alumno_id )
        REFERENCES alumno ( alumno_id );

ALTER TABLE preguntas
    ADD CONSTRAINT preguntas_test_fk FOREIGN KEY ( test_test_id )
        REFERENCES test ( test_id );

ALTER TABLE respuestas
    ADD CONSTRAINT respuestas_alternativas_fk FOREIGN KEY ( alternativas_alternativas_id )
        REFERENCES alternativas ( alternativas_id );

ALTER TABLE respuestas
    ADD CONSTRAINT respuestas_evaluacion_fk FOREIGN KEY ( evaluacion_evaluacion_id )
        REFERENCES evaluacion ( evaluacion_id );

ALTER TABLE test
    ADD CONSTRAINT test_unidad_fk FOREIGN KEY ( unidad_unidad_id )
        REFERENCES unidad ( unidad_id );

CREATE SEQUENCE alumno_alumno_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER alumno_alumno_id_trg BEFORE
    INSERT ON alumno
    FOR EACH ROW
    WHEN ( new.alumno_id IS NULL )
BEGIN
    :new.alumno_id := alumno_alumno_id_seq.nextval;
END;
/

CREATE SEQUENCE curso_curso_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER curso_curso_id_trg BEFORE
    INSERT ON curso
    FOR EACH ROW
    WHEN ( new.curso_id IS NULL )
BEGIN
    :new.curso_id := curso_curso_id_seq.nextval;
END;
/

CREATE SEQUENCE preguntas_preguntas_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER preguntas_preguntas_id_trg BEFORE
    INSERT ON preguntas
    FOR EACH ROW
    WHEN ( new.preguntas_id IS NULL )
BEGIN
    :new.preguntas_id := preguntas_preguntas_id_seq.nextval;
END;
/

CREATE SEQUENCE test_test_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER test_test_id_trg BEFORE
    INSERT ON test
    FOR EACH ROW
    WHEN ( new.test_id IS NULL )
BEGIN
    :new.test_id := test_test_id_seq.nextval;
END;
/

CREATE SEQUENCE unidad_unidad_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER unidad_unidad_id_trg BEFORE
    INSERT ON unidad
    FOR EACH ROW
    WHEN ( new.unidad_id IS NULL )
BEGIN
    :new.unidad_id := unidad_unidad_id_seq.nextval;
END;
/



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             8
-- CREATE INDEX                             0
-- ALTER TABLE                             15
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           5
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          5
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
