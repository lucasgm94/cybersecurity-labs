SELECT 
    a1.ID_Usuario,
    a1.Nombre,
    a1.Departamento,
    r.ID_Regla,
    a1.Rol_Asignado AS Rol_Conflictivo_1,
    a2.Rol_Asignado AS Rol_Conflictivo_2,
    r.Nivel_Riesgo,
    r.Descripcion_Riesgo
FROM Accesos_ERP a1
JOIN Accesos_ERP a2 
    ON a1.ID_Usuario = a2.ID_Usuario 
    AND a1.Rol_Asignado <> a2.Rol_Asignado
JOIN Reglas_SoD r 
    ON a1.Rol_Asignado = r.Rol_1 
    AND a2.Rol_Asignado = r.Rol_2;