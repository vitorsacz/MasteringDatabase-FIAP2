-- RM553621 VITOR CRUZ DOS SANTOS 
-- RM553640 MARCELO VIERIA JUNIOR


set serveroutput on --ativar o servidor de print(saida de dados em tela)
set verify off --desabilitar retorno old new

-- EXERCICIO 1 

DECLARE
    v_salario number(8,2) := &salario;
  
BEGIN 
    IF v_salario <= 1313.69 THEN
         dbms_output.put_line('o seu salario é igual ' || v_salario);
    ELSIF (v_salario > 1313.69) AND (v_salario <= 2625.12) THEN
        dbms_output.put_line('O seu novo salário é com os impostos é igual a  ' || v_salario * 0.85);
    ELSIF v_salario > 2625.12 THEN
        dbms_output.put_line('O seu novo salário é com os impostos é igual a  ' || v_salario * 0.725 );
    END IF;
END;



-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------

drop table T_colega;


CREATE TABLE T_COLEGA (
    Ra NUMBER PRIMARY KEY,
    nome VARCHAR2(100),
    num_falta NUMBER(3),
    situacao VARCHAR2(20)
);

INSERT INTO T_COLEGA (Ra, nome, num_falta) VALUES (1, 'João Silva', 10);
INSERT INTO T_COLEGA (Ra, nome, num_falta) VALUES (2, 'Maria Souza',40);
INSERT INTO T_COLEGA (Ra, nome, num_falta) VALUES (3, 'Carlos Pereira', 5);

DECLARE
    v_ra NUMBER;
    v_num_falta NUMBER;
    v_situacao VARCHAR2(20);
BEGIN

    v_ra := &ra_aluno;

    SELECT num_falta INTO v_num_falta FROM T_COLEGA WHERE Ra = v_ra;

    IF v_num_falta < (130 * 0.25) THEN
        v_situacao := 'Aprovado';
    ELSE
        v_situacao := 'Reprovado';
    END IF;
   
    UPDATE T_COLEGA SET situacao = v_situacao WHERE Ra = v_ra;
   
    COMMIT;
    dbms_output.put_line('Situação do Aluno RA ' || v_ra || ': ' || v_situacao);
END;

select * from T_COLEGA;


