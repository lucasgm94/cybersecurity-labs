-- 1. Crear tabla de usuarios y sus roles asignados en el ERP
CREATE TABLE Accesos_ERP (
    ID_Usuario TEXT,
    Nombre TEXT,
    Departamento TEXT,
    Rol_Asignado TEXT
);

INSERT INTO Accesos_ERP VALUES
('U01', 'Ana Gómez', 'Finanzas', 'Aprobar_Pagos'),
('U01', 'Ana Gómez', 'Finanzas', 'Crear_Proveedores'), -- ¡CONFLICTO DE FRAUDE!
('U02', 'Leonel Vangioni', 'Compras', 'Crear_Proveedores'),
('U03', 'Nicolás Paz', 'RRHH', 'Gestionar_Nominas'),
('U04', 'Franco Mastantuono', 'Sistemas', 'Admin_Base_Datos'),
('U04', 'Franco Mastantuono', 'Sistemas', 'Aprobar_Pagos'); -- ¡CONFLICTO DE PRIVILEGIOS!

-- 2. Crear tabla de reglas de Segregación de Funciones (Matriz de Riesgos SoD)
CREATE TABLE Reglas_SoD (
    ID_Regla TEXT,
    Rol_1 TEXT,
    Rol_2 TEXT,
    Nivel_Riesgo TEXT,
    Descripcion_Riesgo TEXT
);

INSERT INTO Reglas_SoD VALUES
('SOD-01', 'Crear_Proveedores', 'Aprobar_Pagos', 'CRÍTICO', 'Riesgo de creación de proveedores fantasma y auto-aprobación de pagos.'),
('SOD-02', 'Admin_Base_Datos', 'Aprobar_Pagos', 'ALTO', 'Usuario técnico con capacidad de alterar registros financieros y aprobar pagos.');