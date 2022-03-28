SELECT * FROM tb_departamento;
SELECT * FROM tb_dependente;
SELECT * FROM tb_funcionario;
SELECT * FROM tb_localizacoes_departamentos;
SELECT * FROM tb_projeto;
SELECT * FROM tb_trabalha_em;
SELECT * FROM tb_object_funcionario;
SELECT * FROM tb_object_dependente;


CREATE TABLE tb_object_departamento (
			NUMERO_DEPARTAMENTO INT NOT NULL,
			`JSON` JSON,
			PRIMARY KEY (NUMERO_DEPARTAMENTO));

SELECT * FROM tb_object_departamento;
SELECT * FROM tb_departamento;

INSERT INTO tb_object_departamento VALUES 
		(1, 
				'{
				  "Numero_Departamento": "1",
				  "Data_Inicio_Gerente": "1981-06-19",
				  "Nome_Departamento": "Matriz",
				  "Cpf_Gerente": "88866555576"
				}'
		),
        (4, 
				'{
				  "Numero_Departamento": "4",
				  "Data_Inicio_Gerente": "1995-01-01",
				  "Nome_Departamento": "Administração",
				  "Cpf_Gerente": "98765432168"
				}'
		),
        (5, 
				'{
				  "Numero_Departamento": "5",
				  "Data_Inicio_Gerente": "1988-05-22",
				  "Nome_Departamento": "Pesquisa",
				  "Cpf_Gerente": "33344555587"
				}'
		);

CREATE TABLE tb_object_dependente (
			CPF_FUNCIONARIO VARCHAR (11) NOT NULL,
			`JSON` JSON,
			PRIMARY KEY (CPF_FUNCIONARIO));

SELECT * FROM tb_object_dependente;
SELECT * FROM tb_dependente;
SELECT CPF, JSON_EXTRACT(`JSON`, "$.Dependentes") AS `JSON` FROM tb_object_funcionario;

SELECT CPF, JSON_EXTRACT(`JSON`, "$.Cpf", "$.Dependentes") AS `JSON` FROM tb_object_funcionario;

INSERT INTO tb_object_dependente VALUES 
		('12345678966', 
				'{
				"Cpf": "12345678966",
				"Dependentes": [
				{
				  "Sexo": "F",
				  "Parentesco": "Filha",
				  "Data_Nascimento": "1988-01-30T00:12:00",
				  "Nome_Dependente": "Alicia"
				},
				{
				  "Sexo": "F",
				  "Parentesco": "Esposa",
				  "Data_Nascimento": "1967-01-05T00:05:00",
				  "Nome_Dependente": "Elizabeth"
				},
				{
				  "Sexo": "M",
				  "Parentesco": "Filho",
				  "Data_Nascimento": "1988-01-01T00:04:00",
				  "Nome_Dependente": "Michael"
				}
			  ]
			}'
		);
        
INSERT INTO tb_object_dependente VALUES
		('33344555587',
			'{
				"Cpf": "33344555587",
				"Dependentes": [
					{
					"Sexo": "F",
					"Parentesco": "Filha",
					"Data_Nascimento": "1986-01-05T00:04:00",
					"Nome_Dependente": "Alicia"
					},
					{
					  "Sexo": "F",
					  "Parentesco": "Esposa",
					  "Data_Nascimento": "1958-01-03T00:05:00",
					  "Nome_Dependente": "Janaína"
					},
					{
					  "Sexo": "M",
					  "Parentesco": "Filho",
					  "Data_Nascimento": "1983-01-25T00:10:00",
					  "Nome_Dependente": "Tiago"
					}
				]		
			}'
		),
        ('44111555587',
			'{
				"Cpf": "44111555587",
				"Dependentes":
					[
						{
							"Sexo": "F",
                            "Parentesco": "Esposa",
                            "Data_Nascimento": "1986-01-07T00:12:00", 
                            "Nome_Dependente": "Joaquina"
						}
					]
			}'
		),
        ('44222555587', 
			'{
				"Cpf": "44222555587",
				"Dependentes": 
					[
						{
						  "Sexo": "M",
						  "Parentesco": "Filho",
						  "Data_Nascimento": "2007-01-21T00:12:00",
						  "Nome_Dependente": "Claudio"
						},
						{
						  "Sexo": "M",
						  "Parentesco": "Marido",
						  "Data_Nascimento": "1977-01-12T00:03:00",
						  "Nome_Dependente": "Juvenal"
						}
					]
			}'
		),
        ('44333555587',
			'{
				"Cpf": "44333555587",
				"Dependentes": 
					[
						{
							"Sexo": "F", 
                            "Parentesco": "Esposa", 
                            "Data_Nascimento": "1979-01-12T00:11:00", 
                            "Nome_Dependente": "Katia"
						}, 
                        {
							"Sexo": "F", 
                            "Parentesco": "Filha", 
                            "Data_Nascimento": "2003-01-12T00:11:00", 
                            "Nome_Dependente": "Marcela"
                            }, 
						{
							"Sexo": "F", 
							"Parentesco": "Filha", 
							"Data_Nascimento": "2005-01-12T00:11:00", 
							"Nome_Dependente": "Maria"
                        }, 
                        {
							"Sexo": "M", 
							"Parentesco": "Filho", 
                            "Data_Nascimento": "2009-01-01T00:08:00", 
                            "Nome_Dependente": "Rodrigo"
						}
					]
				}'
			),
		('44444555587',
			'{
				"Cpf": "44444555587", 
                "Dependentes": 
					[
						{"Sexo": "M", 
							"Parentesco": "Marido", 
							"Data_Nascimento": "1981-01-14T00:06:00", 
							"Nome_Dependente": "Jonas"
                        }, 
                        {
							"Sexo": "M", 
							"Parentesco": "Filho", 
							"Data_Nascimento": "2006-01-12T00:04:00", 
							"Nome_Dependente": "Orlando"
                        }
					]
			}'
		),
        ('44777555587',
			'{
				"Cpf": "44777555587", 
                "Dependentes": 
					[
						{
							"Sexo": "F", 
							"Parentesco": "Esposa", 
							"Data_Nascimento": "1991-01-02T00:04:00", 
							"Nome_Dependente": "Priscila"
                        }
					]
			}'
		),
        ('44888555587',
			'{
				"Cpf": "44888555587", 
                "Dependentes": 
					[
						{
							"Sexo": "M", 
                            "Parentesco": "Marido", 
                            "Data_Nascimento": "1988-01-04T00:05:00", 
                            "Nome_Dependente": "Clecio"
						}
					]
			}'
		),
        ('45345345376',
			'{
				"Cpf": "45345345376", 
                "Dependentes": 
					[
                    ]
			}'
		),
        ('55599922122',
			'{
				"Cpf": "55599922122", 
				"Dependentes": 
					[
						{
							"Sexo": "M", 
                            "Parentesco": "Marido", 
                            "Data_Nascimento": "1976-01-13T00:03:00", 
                            "Nome_Dependente": "Clovis"
						}
					]
			}'
		),
        ('66688444476',
			'{
				"Cpf": "66688444476", 
                "Dependentes": 
					[
                    ]
			}'
		),
        ('66699922122',
			'{
				"Cpf": "66699922122", 
				"Dependentes": 
					[
						{
							"Sexo": "M", 
                            "Parentesco": "Marido", 
                            "Data_Nascimento": "1981-01-08T00:12:00", 
                            "Nome_Dependente": "Milton"
						}
					]
			}'
		),
        ('77799922122',
			'{
				"Cpf": "77799922122", 
                "Dependentes": 
					[
						{
							"Sexo": "M", 
                            "Parentesco": "Filho", 
                            "Data_Nascimento": "1993-01-12T00:12:00", 
                            "Nome_Dependente": "Havelar"
						}, 
                        {
							"Sexo": "M", 
                            "Parentesco": "Marido", 
                            "Data_Nascimento": "1967-01-22T00:10:00", 
                            "Nome_Dependente": "Marcio"
						}, 
                        {
							"Sexo": "M", 
                            "Parentesco": "Filho", 
                            "Data_Nascimento": "1992-01-17T00:06:00", 
                            "Nome_Dependente": "Tulio"
						}
					]
			}'
		),
        ('88866555576',
			'{
				"Cpf": "88866555576", 
                "Dependentes": 
					[
                    ]
			}'
		),
        ('98722332168',
			'{
				"Cpf": "98722332168", 
                "Dependentes": 
					[
						{
							"Sexo": "M", 
                            "Parentesco": "Marido", 
                            "Data_Nascimento": "1987-01-22T00:10:00", 
                            "Nome_Dependente": "Rodinei"
						}
					]
			}'
		),
        ('98733332168',
			'{
				"Cpf": "98733332168", 
                "Dependentes": 
					[
						{
							"Sexo": "F", 
							"Parentesco": "Neta", 
							"Data_Nascimento": "2016-01-21T00:10:00", 
                            "Nome_Dependente": "Cristina"
						},
                        {
							"Sexo": "M", 
                            "Parentesco": "Marido", 
                            "Data_Nascimento": "1957-01-22T00:10:00", 
                            "Nome_Dependente": "Marcio"
						},
                        {
							"Sexo": "M", 
							"Parentesco": "Filho", 
                            "Data_Nascimento": "1993-01-12T00:05:00", 
                            "Nome_Dependente": "Rubens"
						},
                        {
							"Sexo": "M", 
							"Parentesco": "Filho", 
                            "Data_Nascimento": "1992-01-11T00:12:00", 
                            "Nome_Dependente": "Trauco"
						}
					]
			}'
		),
		('98743232168',
			'{
				"Cpf": "98743232168", 
                "Dependentes": 
					[
						{
							"Sexo": "F", 
                            "Parentesco": "Filha", 
                            "Data_Nascimento": "2016-01-01T00:12:00", 
                            "Nome_Dependente": "Hilda"
						},
                        {
							"Sexo": "F", 
                            "Parentesco": "Esposa", 
							"Data_Nascimento": "1992-01-26T00:12:00", 
                            "Nome_Dependente": "Maria"
						}
					]
			}'
		),
		('98765432168',
			'{
				"Cpf": "98765432168", 
                "Dependentes": 
					[
						{
							"Sexo": "M", 
                            "Parentesco": "Marido", 
                            "Data_Nascimento": "1942-01-18T00:02:00", 
                            "Nome_Dependente": "Antonio"
						}
					]
			}'
		),
        ('98798798733',
			'{
				"Cpf": "98798798733", 
                "Dependentes": 
					[
                    ]
			}'
		),
        ('99965555667',
			'{
				"Cpf": "99965555667", 
				"Dependentes": 
					[
						{
							"Sexo": "F", 
                            "Parentesco": "Esposa", 
                            "Data_Nascimento": "1977-01-26T00:12:00", 
                            "Nome_Dependente": "Fátima"
						},
						{	
							"Sexo": "M", 
                            "Parentesco": "Filho", 
                            "Data_Nascimento": "2001-01-25T00:10:00", 
                            "Nome_Dependente": "Trauco"
						}
					]
			}'
		),
        ('99966666667',
			'{
				"Cpf": "99966666667", 
                "Dependentes": 
					[
						{	
							"Sexo": "F", 
							"Parentesco": "Filha", 
							"Data_Nascimento": "2002-01-25T00:10:00", 
							"Nome_Dependente": "Marcela"
                        },
                        {	
							"Sexo": "F", 
                            "Parentesco": "Esposa", 
                            "Data_Nascimento": "1970-01-26T00:09:00", 
                            "Nome_Dependente": "Marcia"
						},
                        {
							"Sexo": "M", 
                            "Parentesco": "Filho", 
                            "Data_Nascimento": "2006-01-18T00:08:00", 
                            "Nome_Dependente": "Marcos"
						}
					]
			}'
		),
        ('99968855667',
			'{
				"Cpf": "99968855667",
				"Dependentes": 
					[
						{
							  "Sexo": "M",
							  "Parentesco": "Marido",
							  "Data_Nascimento": "1978-01-22T00:10:00",
							  "Nome_Dependente": "Claudio"
						},
						{
							  "Sexo": "F",
							  "Parentesco": "Filha",
							  "Data_Nascimento": "2005-01-11T00:10:00",
							  "Nome_Dependente": "Janaina"
						},
						{
							  "Sexo": "F",
							  "Parentesco": "Filha",
							  "Data_Nascimento": "2007-01-12T00:06:00",
							  "Nome_Dependente": "Tania"
						}
					]
			}'
		),
        ('99988666667',
			'{
				"Cpf": "99988666667", 
                "Dependentes": 
					[
						{
							"Sexo": "F", 
							"Parentesco": "Esposa", 
							"Data_Nascimento": "1973-01-26T00:12:00", 
                            "Nome_Dependente": "Katia"
						},
                        {
							"Sexo": "M", 
                            "Parentesco": "Filho", 
                            "Data_Nascimento": "2002-01-25T00:10:00", 
                            "Nome_Dependente": "Roberto"
						},
                        {
							"Sexo": "M", 
                            "Parentesco": "Filho", 
                            "Data_Nascimento": "2003-01-18T00:12:00", \
                            "Nome_Dependente": "Rogerio"
						},
						{
							"Sexo": "M", 
                            "Parentesco": "Filho", 
                            "Data_Nascimento": "2005-01-18T00:11:00", 
                            "Nome_Dependente": "Ronaldo"
						}
					]
			}'
		),
        ('99988777767',
			'{
				"Cpf": "99988777767", 
                "Dependentes": 
					[
                    ]
			}'
		);
        
SELECT * FROM tb_object_dependente;