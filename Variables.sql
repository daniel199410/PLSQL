SET SERVEROUTPUT ON;
DECLARE
  --Constantes
  PI CONSTANT NUMBER := 3.141559;
  --Definición de funciones y variables
  salario NUMBER := 1500;
  nombreEmpleado NVARCHAR2(100);
  activo BOOLEAN;
  fecha DATE;
   
  area NUMBER;
  radio NUMBER;
  roundedArea NUMBER;
BEGIN
  nombreEmpleado := 'Daniel';
  activo := true;
  fecha := SYSDATE;
  DBMS_OUTPUT.PUT_LINE(salario);
  DBMS_OUTPUT.PUT_LINE(nombreEmpleado);
  DBMS_OUTPUT.PUT_LINE(CASE WHEN activo THEN 'True' ELSE 'False' END);
  DBMS_OUTPUT.PUT_LINE(fecha);
  
  radio := 5;
  area := PI * (radio * radio);
  DBMS_OUTPUT.PUT_LINE('Área: ' || area);
  --Redondeo
  roundedArea := round(area, 2);
  DBMS_OUTPUT.PUT_LINE('Área redondeada: ' || roundedArea);
END;
/