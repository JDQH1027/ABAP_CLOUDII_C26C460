CLASS zcl_lab_06_elements_jdqh DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES:
      BEGIN OF ty_elem_objects,
        class     TYPE string,
        instance  TYPE string,
        reference TYPE string,
      END OF ty_elem_objects.

    DATA ms_object TYPE ty_elem_objects.

    CONSTANTS:
      co_class     TYPE string VALUE 'ZCL_LAB_06_ELEMENTS_JDQH',
      co_instance  TYPE string VALUE 'LO_ELEMENTS',
      co_reference TYPE string VALUE 'Referencia a objeto de tipo ZCL_LAB_06_ELEMENTS_JDQH',
      co_version   TYPE string VALUE 'v1.0'.

    METHODS set_object
      IMPORTING
        iv_class     TYPE string
        iv_instance  TYPE string
        iv_reference TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_lab_06_elements_jdqh IMPLEMENTATION.

  METHOD set_object.
    ms_object-class     = iv_class.
    ms_object-instance  = iv_instance.
    ms_object-reference = iv_reference.
  ENDMETHOD.

ENDCLASS.
