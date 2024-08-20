set serveroutput on --ativar o servidor de print(saida de dados em tela)
set verify off --desabilitar retorno old new



-- ex1
DECLARE
    v_salario number(8,2) := &salario;
    v_acrescimo v_salario%type := 1.25;
    
    v_salario_com_acrescimo v_salario%type := (v_salario * v_acrescimo);
BEGIN 
    dbms_output.put_line('O seu novo salário é ' || v_salario_com_acrescimo);
END;


-- ex2
DECLARE
    v_dolar number(8,2) := &dolar;
    v_reais v_dolar%type := 5.60;
    
    v_dolar_em_reais v_reais%type := (v_dolar * v_reais);
BEGIN 
    dbms_output.put_line('O valor em reais é ' || v_dolar_em_reais);
END;


--ex3
DECLARE
    v_reais number(8,2) := &reais;
    v_dolar v_reais%type := 5.60;
    
    v_reais_em_dolares v_dolar%type := (v_reais / v_dolar);
BEGIN 
    dbms_output.put_line('O valor em dolares é ' || v_reais_em_dolares);
END;



-- ex4

DECLARE
    v_valor_carro number(8,2) := &valor_carro;
    
    v_parcelas v_valor_carro%type := (valor_carro / 10);
    v_valor_final_carro v_parcelas%type := 
BEGIN 
    dbms_output.put_line('O valor em dolares é ' || v_reais_em_dolares);
END;


-- ex5 
DECLARE
    v_valor_carro number(8,2) := &valor_carro * 0.8;
BEGIN 
    dbms_output.put_line('Em 6x - R$' || v_valor_carro * 1.1 / 6);
    dbms_output.put_line('Em 12x - R$' || v_valor_carro * 1.1 / 12);
    dbms_output.put_line('Em 18x - R$' || v_valor_carro * 1.1 / 18);
END;











