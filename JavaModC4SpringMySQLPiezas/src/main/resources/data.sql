DROP TABLE IF EXISTS suministra;
DROP TABLE IF EXISTS piezas;
DROP TABLE IF EXISTS proveedores;


CREATE TABLE IF NOT EXISTS piezas (
						codigo INT AUTO_INCREMENT,
						nombre VARCHAR(100) DEFAULT NULL,
						PRIMARY KEY(codigo)
						);
                        
CREATE TABLE IF NOT EXISTS proveedores (
						id CHAR(4),
						nombre VARCHAR(100) DEFAULT NULL,
						PRIMARY KEY(id)
						);
                        
CREATE TABLE IF NOT EXISTS suministra (
						id INT AUTO_INCREMENT,
						codigopieza INT,
                        idproveedor CHAR(4), 
                        precio INT DEFAULT NULL,
                        PRIMARY KEY(id),
						KEY(codigopieza, idproveedor),
						CONSTRAINT piezas_fk FOREIGN KEY (codigopieza) REFERENCES piezas (codigo)
                        ON DELETE CASCADE ON UPDATE CASCADE,
                        CONSTRAINT proveedores_fk FOREIGN KEY (idproveedor) REFERENCES proveedores (id)
                        ON DELETE CASCADE ON UPDATE CASCADE
						);





INSERT INTO piezas (nombre) VALUES ('Tuerca');
INSERT INTO piezas (nombre) VALUES ('Perno');
INSERT INTO piezas (nombre) VALUES ('Arandela');
INSERT INTO piezas (nombre) VALUES ('Cable');
INSERT INTO piezas (nombre) VALUES ('Resorte');
INSERT INTO piezas (nombre) VALUES ('Tornillo');
INSERT INTO piezas (nombre) VALUES ('Correa');
INSERT INTO piezas (nombre) VALUES ('Valvula');
INSERT INTO piezas (nombre) VALUES ('Cilindro');
INSERT INTO piezas (nombre) VALUES ('Bujia');

INSERT INTO proveedores (id, nombre) VALUES ('P001', 'Proveedor 1');
INSERT INTO proveedores (id, nombre) VALUES ('P002', 'Proveedor 2');
INSERT INTO proveedores (id, nombre) VALUES ('P003', 'Proveedor 3');
INSERT INTO proveedores (id, nombre) VALUES ('P004', 'Proveedor 4');
INSERT INTO proveedores (id, nombre) VALUES ('P005', 'Proveedor 5');
INSERT INTO proveedores (id, nombre) VALUES ('P006', 'Proveedor 6');
INSERT INTO proveedores (id, nombre) VALUES ('P007', 'Proveedor 7');
INSERT INTO proveedores (id, nombre) VALUES ('P008', 'Proveedor 8');
INSERT INTO proveedores (id, nombre) VALUES ('P009', 'Proveedor 9');
INSERT INTO proveedores (id, nombre) VALUES ('P010', 'Proveedor 10');

INSERT INTO suministra (codigopieza, idproveedor, precio) VALUES (1, 'P001', 10);
INSERT INTO suministra (codigopieza, idproveedor, precio) VALUES (2, 'P002', 15);
INSERT INTO suministra (codigopieza, idproveedor, precio) VALUES (3, 'P003', 5);
INSERT INTO suministra (codigopieza, idproveedor, precio) VALUES (4, 'P004', 20);
INSERT INTO suministra (codigopieza, idproveedor, precio) VALUES (5, 'P005', 8);
INSERT INTO suministra (codigopieza, idproveedor, precio) VALUES (6, 'P006', 12);
INSERT INTO suministra (codigopieza, idproveedor, precio) VALUES (7, 'P007', 18);
INSERT INTO suministra (codigopieza, idproveedor, precio) VALUES (8, 'P008', 25);
INSERT INTO suministra (codigopieza, idproveedor, precio) VALUES (9, 'P009', 30);
INSERT INTO suministra (codigopieza, idproveedor, precio) VALUES (10, 'P010', 40);
