DECLARE 
    CURSOR cur_country IS
    select CO_COUNTRY, DESCRIPTION, CONTINENT 
    from country
    FOR UPDATE;
    co_country VARCHAR2(3);
    description VARCHAR2(50);
    continent VARCHAR2(25);
BEGIN
    OPEN cur_country;
    FETCH cur_country INTO co_country,description,continent;
    WHILE cur_country%found
    LOOP 
	UPDATE country 
        SET CONTINENT= CONTINENT || '.'
        WHERE CURRENT OF cur_country;

        FETCH cur_country INTO co_country,description,continent;
    END LOOP; 
    CLOSE cur_country;
    COMMIT;

END;