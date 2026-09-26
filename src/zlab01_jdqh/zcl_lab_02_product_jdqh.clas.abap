CLASS zcl_lab_02_product_jdqh DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS set_product
      IMPORTING
        iv_product TYPE matnr.

    METHODS set_creationdate
      IMPORTING
        iv_creation_date TYPE zdatejdqh.
  PROTECTED SECTION.
  PRIVATE SECTION.

  DATA product        TYPE matnr.
  DATA creation_date  TYPE zdatejdqh.

ENDCLASS.



CLASS zcl_lab_02_product_jdqh IMPLEMENTATION.
  METHOD set_creationdate.
  creation_date = iv_creation_date.

  ENDMETHOD.

  METHOD set_product.
  product = iv_product.

  ENDMETHOD.

ENDCLASS.
