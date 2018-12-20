SET SERVEROUTPUT ON;
DECLARE
  --Constantes
  --Definición de funciones y variables
  usuario VARCHAR2(100);
  nombre VARCHAR2(100) := ' Dcatano ';
  apellido VARCHAR2(100) := 'Catano';
  today DATE := SYSDATE;
  nullValue VARCHAR2(100);
BEGIN
  SELECT user INTO usuario FROM dual;
  --String functions
  DBMS_OUTPUT.put_line('Usuario:' || usuario);
  DBMS_OUTPUT.PUT_LINE('Largo: ' || LENGTH(nombre));
  DBMS_OUTPUT.PUT_LINE('Trim: ' || LENGTH(TRIM(nombre)));
  DBMS_OUTPUT.PUT_LINE('Lower case: ' || LOWER(nombre));
  DBMS_OUTPUT.PUT_LINE('Upper case: ' || UPPER(nombre));
  nombre := TRIM(nombre);
  DBMS_OUTPUT.PUT_LINE('Cortar: ' || SUBSTR(nombre, 1, 3)); --A partir de la posición 1, cojer tres caracteres
  DBMS_OUTPUT.PUT_LINE('Replace: ' || REPLACE(nombre, 'a', 'H'));
  --Date functions
  DBMS_OUTPUT.PUT_LINE('Today: ' || today);
  DBMS_OUTPUT.PUT_LINE('Agregar mes: ' || ADD_MONTHS(today, 1));
  DBMS_OUTPUT.PUT_LINE('Agregar día: ' || (today + 1));
  DBMS_OUTPUT.PUT_LINE('Día: ' || TO_CHAR(today, 'dd'));
  DBMS_OUTPUT.PUT_LINE('Día/Mes: ' || TO_CHAR(today, 'dd-MM'));
  DBMS_OUTPUT.PUT_LINE('Año: ' || TO_CHAR(today, 'yyyy'));
  DBMS_OUTPUT.PUT_LINE('Año: ' || NVL(nullValue, 'Null'));
END;
/