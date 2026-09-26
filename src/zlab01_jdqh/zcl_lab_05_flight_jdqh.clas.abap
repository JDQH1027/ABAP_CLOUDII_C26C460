CLASS zcl_lab_05_flight_jdqh DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS check_flight_exists
      IMPORTING
        iv_carrid TYPE /dmo/carrier_id
        iv_connid TYPE /dmo/connection_id
      RETURNING
        VALUE(rv_exists) TYPE abap_boolean.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_lab_05_flight_jdqh IMPLEMENTATION.

  METHOD check_flight_exists.

  SELECT SINGLE FROM /dmo/flight
    FIELDS carrier_id
    WHERE carrier_id = @iv_carrid
      AND connection_id = @iv_connid
    INTO @DATA(lv_carrier_id).

  IF sy-subrc = 0.
    rv_exists = abap_true.
  ELSE.
    rv_exists = abap_false.
  ENDIF.

ENDMETHOD.

ENDCLASS.
