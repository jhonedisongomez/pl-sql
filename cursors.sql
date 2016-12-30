DECLARE
CURSOR cur_usuarios is select LOGINUSR,PASSWORD from USUARIOS;
  
  vca_loginUsr varchar(30);
  vca_password varchar(30);
  
  BEGIN
  
    OPEN cur_usuarios;
    
      LOOP
        
        FETCH cur_usuarios into vca_loginUsr,vca_password;
        DBMS_OUTPUT.PUT_LINE(vca_loginUsr || '' || vca_password);
        EXIT WHEN cur_usuarios%NOTFOUND;
        
      END LOOP;
    
    CLOSE cur_usuarios;
  
  END;
  
  /*SELECT * FROM USUARIOS;*/
    
      
  
  