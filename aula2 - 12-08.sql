set serveroutput on --ativar o servidor de print(saida de dados em tela)
set verify off --desabilitar retorno old new


-- AULA 12/08 
-- ESTRUTURAS DE DECIS�O

-- IF <condi��o> THEN
--      <instru��es>;

-- ELSIF <condi��o> THEN
--      <instru��es>;

-- ELSE
--      <instru��es>;

-- END IF;


-- NUMERO PAR OU IMPAR
DECLARE
    v_n number(2) := 15;
    
BEGIN    
    IF MOD(v_n, 2) = 0 THEN
        dbms_output.put_Line('O n�mero ' || v_n || ' � PAR');
    ELSE 
        dbms_output.put_Line('O n�mero ' || v_n || ' � IMPAR');
    END IF;
END;





-- EXERC�CIO PARA TOMADA DE DECIS�O
DECLARE
    v_sexo CHAR(1) := UPPER('&sexo'); -- CAMPOS NAO NUMERICOS USE O ''
    
BEGIN    
    IF v_sexo = 'M' THEN
        dbms_output.put_Line('VOC� � HOMEM');
    ELSIF v_sexo = 'F' THEN
        dbms_output.put_Line('VOC� � MULHER');
    ELSE
        dbms_output.put_Line('INSIRA UM SEXO V�LIDO');
    END IF;
END;



-- EX 1
DECLARE
    v_valor_carro number(8,2) := &valor_carro * 0.8;
    v_opcao_parcelas number(2) := &opcao_parcela;
BEGIN 
    IF v_opcao_parcelas = 6 THEN
        dbms_output.put_line('Em 6x - R$' || v_valor_carro * 1.1 / 6);
    ELSIF v_opcao_parcelas = 12 THEN
        dbms_output.put_line('Em 12x - R$' || v_valor_carro * 1.1 / 12);
    ELSIF v_opcao_parcelas = 18 THEN
        dbms_output.put_line('Em 18x - R$' || v_valor_carro * 1.1 / 18);
    ELSE 
        dbms_output.put_line('Insira uma opcao v�lida');
    END IF;
END;



-- EX 2 - MEDIA ARITMETICA 
DECLARE        
    v_media number(12,2) := (&valor_nota1 + &valor_nota2 + &valor_nota3 + &valor_nota4)/4;
    
BEGIN
    dbms_output.put_line('Sua m�dia �: ' || v_media);
    
    IF v_media >= 6 THEN
        dbms_output.put_line('APROVADO');
    ELSE 
        dbms_output.put_line('REPROVADO');
    END IF;
END;


-- EX 3 - MEDIA MELHORADA
DECLARE        
    v_media number(12,2) := (&valor_nota1 + &valor_nota2 + &valor_nota3 + &valor_nota4)/4;
    
BEGIN
    dbms_output.put_line('Sua m�dia �: ' || v_media);
    
    IF v_media >= 6 THEN
        dbms_output.put_line('APROVADO');
    ELSIF (v_media >= 4) AND (v_media <= 5.9) THEN
        dbms_output.put_line('RECUPERA��O');
    ELSE   
        dbms_output.put_line('REPROVADO');
    END IF;
END;








-- SISTEMA FIAP DE NOTAS E FALTAS
DECLARE        
    v_media number(12,2) := (&valor_nota1 + &valor_nota2 + &valor_nota3 + &valor_nota4)/4;
    v_carga_horaria
BEGIN
    dbms_output.put_line('Sua m�dia �: ' || v_media);
    
    IF v_media >= 6 THEN
        dbms_output.put_line('APROVADO');
    ELSIF (v_media >= 4) AND (v_media <= 5.9) THEN
        dbms_output.put_line('RECUPERA��O');
    ELSE   
        dbms_output.put_line('REPROVADO');
    END IF;
END;
