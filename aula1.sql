-- Aula 1 
-- introducao a programa��o ao PL/SQL
-- configura��o do servidor para sa�da de dados em tela 


set serveroutput on --ativar o servidor de print(saida de dados em tela)
set verify off --desabilitar retorno old new


begin 
    -- dbms = sa�da de dados
    dbms_output.put_line('Programa��o PL/SQL'); 
    
end;

begin 
    -- dbms = sa�da de dados
    dbms_output.put_line('Programa��o PL/SQL'); 
    dbms_output.put_line('Oracle FIAP'); 
    
end;



-- erro de concatena��o de texto com valores
begin 
    -- dbms = sa�da de dados
    dbms_output.put_line('Resultado da soma de 10 + 10 �'  || 10 + 10);  -- || concatena��o de caracteres 
end;




-- declarando variaveis de ambiente
declare 
    v_nome varchar(10) := 'Fiap';
    v_curso varchar(10) := 'ADS';
begin 
    --concatenando string com variaveis, uso o pipe pipe(||)
    dbms_output.put_line('Faculdade ' || v_nome); 
    dbms_output.put_line('Curso ' ||  v_curso); 
end;



-- inserindo em uma mesma linha 
declare 
    v_nome varchar(10) := 'Fiap';
    v_curso varchar(10) := 'ADS';
begin 
    --concatenando string com variaveis, uso o pipe pipe(||)
    dbms_output.put_line('Faculdade ' || v_nome || ' - Curso ' ||  v_curso); 
end;







-- declarando variaveis, usando heran�a
declare 
    v_valor1 number(2) := &valor1;
    v_valor2 v_valor1%type := &valor2;
    v_res v_valor2%type;
    v_nome varchar(10) := '&nome';
    
begin 
    v_res := v_valor1 + v_valor2;
    dbms_output.put_line(v_valor1 || ' + ' || v_valor2 || ' = ' || v_res);
    dbms_output.put_line(v_nome);
end;



-- operadores aritm�ticos + - * / ()
--            relacionais > >= < <= = <> ou !=
--            l�gicos  and or not









