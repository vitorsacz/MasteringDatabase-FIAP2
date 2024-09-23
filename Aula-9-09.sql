
 set serveroutput on --ativar o servidor de print(saida de dados em tela)
 set verify off --desabilitar retorno old new
 
 
 DECLARE
    v_num number(3) := &numero;
    v_tabu number(3) := 0;
 BEGIN
    LOOP dbms_output.put_line(v_num || ' X ' || v_tabu || ' = ' || v_num * v_tabu);
    v_tabu := v_tabu + 1;
    EXIT WHEN  v_tabu > 10;
    END LOOP;
 END;
 
 
 
 DECLARE
    v_num number(3) := &numero;
    v_tabu number(3) := 0;
 BEGIN
    WHILE (v_tabu < 11) LOOP dbms_output.put_line(v_num || ' X ' || v_tabu || ' = ' || v_num * v_tabu);
    v_tabu := v_tabu + 1;
    END LOOP;
 END;
 
 
 
 DECLARE
    v_valor int(3) := &numero;
 BEGIN
    FOR CONTADOR IN 0..10 LOOP
        dbms_output.put_line(v_valor || ' X ' || CONTADOR || ' = ' || (v_valor  * CONTADOR));
    END LOOP;
 END;
 
 
 
 DECLARE
    v_intervalo int(3) := &intervalo;
    v_contador int(3) := 0;
    v_acumulador int(3) := 0;
    
 BEGIN
    WHILE (v_contador < v_intervalo) LOOP 
    
        IF MOD(v_contador, 2) = 0 THEN
            v_acumulador := v_acumulador + 1;
        END IF;
        v_contador := v_contador + 1;  
    END LOOP;
    
    dbms_output.put_line('Possui ' || v_acumulador || ' pares nesse intervalo');
 END;
 
 
 
 
 
 
 
  DECLARE
    v_intervalo int(3) := &intervalo;
    v_contador int(3) := 0;
    v_acumulador int(3) := 0;
    v_somadora int(3) := 0;
    v_media number(3) := 0;
    
 BEGIN
    WHILE (v_contador <= v_intervalo) LOOP 
    
        IF MOD(v_contador, 2) = 0 THEN
            v_acumulador := v_acumulador + 1;
            v_somadora := v_somadora + v_contador;
        END IF;
        v_contador := v_contador + 1;  
    END LOOP;
    
    IF v_acumulador > 0 THEN
        v_media := v_somadora / v_acumulador;
        dbms_output.put_line('A média dos valores pares é igual a ' || v_media);
    ELSE
        dbms_output.put_line('Nenhum número par encontrado no intervalo.');
    END IF;
 END;
 
 
 
 
