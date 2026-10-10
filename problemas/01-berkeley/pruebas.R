falla(inicio)
falla(cambia("prop.table(UCBAdmissions, c(2, 3))", "prop.table(UCBAdmissions, 3)"))
falla(cambia("prop.table(UCBAdmissions, c(2, 3))", "prop.table(UCBAdmissions, c(1, 3))"))
falla(cambia('round(por_departamento["Admitted", , ], 3)', 'round(agregada["Admitted", ], 3)'))
