
DECLARE
  flag NUMBER;
BEGIN
  flag :=1 ;
  IF (flag = 1) THEN
     GOTO paso2;     
  END IF;
<<paso1>>
         dbms_output.put_line('Ejecucion de paso 1');
<<paso2>>
         dbms_output.put_line('Ejecucion de paso 2');
END;