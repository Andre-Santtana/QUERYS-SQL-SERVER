use curso_sql;

CREATE INDEX departamentos ON funcionario(departamento);


-- sera ordenado pelos 6 primeiros caracteres 
CREATE INDEX nomes ON funcionario(nome(6));
