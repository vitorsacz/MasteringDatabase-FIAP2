-- AULA 10 SOBRE MATRIZES E CURSORES

set serveroutput on --ativar o servidor de print(saida de dados em tela)
 set verify off --desabilitar retorno old new

-- Cursores implícitos -> DELETE E UPDATE possuem cursosres automáticos (fazem processamento de dados) 
-- Cursores Explícitos -> Todo cursor está declarado no declare


INSERT INTO FUNCIONARIO(cd_fun, nm_fun, salario, dt_adm) VALUES(1, 'Marcel', 16000, '17-04-2000' )Declare
    CURSOR NOME_DO_CURSOR IS SELECT COL_1, COL_2, COL_3 FROM TABELA_N;

-- PROPRIEDADES

-- 1- OPEN -> abre o cursor 
-- 2- FETCH -> carregamento de dados da tabela, sobrescrevendo de linha em linha
-- 3- CLOSED -> fecha o cursor

-- VN_Registro -> Estructed 

-- para manipular dados é preciso criar uma variavel do tipo registro.
-- NOME_DO_CURSOR%ROWTYPE -> herda o tipo e tamanho da outra variável. 


-- CURSOR EXPLÍCITO

DECLARE 
    CURSOR C_ALUNO IS 
    SELECT RA, NOME, FROM ALUNO;
    
    V_ALUNO C_ALUNO%ROWTYPE;
    

-- nome_do_cursor%FOUND
    -- retorna TRUE, caso o FETCH retorne uma linha vazia ou FALSE, retorna null e para a aplicação 

-- nome_do_cursor%NOTFOUND
-- retorna FAlse, caso o FETCH retorne uma linha com itens ou TRUE.

-- nome_do_cursor%ROWCOUNT
-- numero de linhas processadas

-- nome_do_cursor%ISOPEN
-- se o cursor estiver aberto ou fechado 

-- COMO SABER A DATA DO SISTEMA
SELECT SYSDATE FROM DUAL;

-- EXERCICIOS

CREATE TABLE FUNCIONARIO(
    CD_FUN NUMBER(2) PRIMARY KEY,
    NM_FUN VARCHAR2(255),
    SALARIO NUMBER(10,2),
    DT_ADM DATE
)

BEGIN
    INSERT INTO FUNCIONARIO(cd_fun, nm_fun, salario, dt_adm) VALUES(1, 'Marcel', 10000, '17-04-2000' );
    INSERT INTO FUNCIONARIO(cd_fun, nm_fun, salario, dt_adm) VALUES(2, 'Claudia', 16000, '02-10-1998');
    INSERT INTO FUNCIONARIO(cd_fun, nm_fun, salario, dt_adm) VALUES(3, 'Joaquim', 5500, '10-07-2010' );
    INSERT INTO FUNCIONARIO(cd_fun, nm_fun, salario, dt_adm) VALUES(4, 'Valéria', 7300, '08-06-2015' );
COMMIT;
END;

SELECT * FROM FUNCIONARIO;

DROP TABLE FUNCIONARIO;



-- USAR CURSOR PARA PEGAR O NOME DOS FUNCIONARIOS E SEUS SALARIOS

DECLARE
    CURSOR C_EXIBE IS SELECT NM_FUN, SALARIO FROM FUNCIONARIO; -- criando o cursor 
    V_EXIBE C_EXIBE%ROWTYPE; -- criando a variavel de registro
    
BEGIN
    OPEN C_EXIBE; -- abrindo o cursor
    LOOP -- abrindo o loop
        FETCH C_EXIBE INTO V_EXIBE; -- carregando a variavel com os valores do cursor
    EXIT WHEN C_EXIBE%NOTFOUND; -- ate nao achar nenhuma linha 
    
    dbms_output.put_line('Nome: ' || v_exibe.nm_fun || ' - Salario: ' || V_exibe.salario); -- exibindo o resultado
    END LOOP; -- fechando o loop
    CLOSE C_EXIBE; -- fechando o cursor
END;





DECLARE
    CURSOR C_EXIBE IS SELECT NM_FUN, SALARIO FROM FUNCIONARIO; -- criando o cursor 

BEGIN
    FOR V_EXIBE IN C_EXIBE LOOP
        dbms_output.put_line('Nome: ' || v_exibe.nm_fun || ' - Salário: ' || V_EXIBE.SALARIO);
    END LOOP;
END;





