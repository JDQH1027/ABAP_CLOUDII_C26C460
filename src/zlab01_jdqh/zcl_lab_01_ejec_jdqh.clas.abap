CLASS zcl_lab_01_ejec_jdqh DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
  DATA gs_elem_objects TYPE zcl_lab_06_elements_jdqh=>ty_elem_objects.
ENDCLASS.


CLASS zcl_lab_01_ejec_jdqh IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    " ============================================
    " PUNTO 5: Métodos de instancia - ZCL_LAB_04_PERSON_JDQH
    " ============================================

*    " 1. Declarar una referencia a la clase ZCL_LAB_04_PERSON_JDQH
*    DATA lo_person TYPE REF TO zcl_lab_04_person_jdqh.
*
*    " 2. Instanciar el objeto
*    lo_person = NEW zcl_lab_04_person_jdqh( ).
*
*    " 3. Variable para recibir la edad devuelta por GET_AGE
*    DATA lv_age TYPE i.
*
*    " 4. Llamar al primer método con tu edad como parámetro
*    lo_person->set_age( iv_age = 44 ).
*
*    " 5. Llamar al segundo método para recuperar el valor
*    lo_person->get_age( IMPORTING ev_age = lv_age ).
*
*    " 6. Mostrar el valor por pantalla
*    out->write( lv_age ).


    " ============================================
    " PUNTO 6: Método funcional - ZCL_LAB_05_FLIGHT_JDQH
    " ============================================

*    " 1. Declarar referencia e instanciar el objeto
*    DATA(lo_flight) = NEW zcl_lab_05_flight_jdqh( ).
*
*    " 2. Invocar el método funcional directamente
*    DATA(lv_existe) = lo_flight->check_flight_exists(
*                         iv_carrid = 'AA'
*                         iv_connid = '0017' ).
*
*    " 3. Mostrar el resultado por pantalla
*    IF lv_existe = abap_true.
*      out->write( 'El vuelo SI existe' ).
*    ELSE.
*      out->write( 'El vuelo NO existe' ).
*    ENDIF.
*
*    " ============================================
*    " PUNTO 7: Tipos de datos en clases - ZCL_LAB_06_ELEMENTS_JDQH
*    " ============================================
*
*    DATA(lo_elements) = NEW zcl_lab_06_elements_jdqh( ).
*
*    lo_elements->set_object(
*      iv_class     = 'ZCL_LAB_06_ELEMENTS_JDQH'
*      iv_instance  = 'LO_ELEMENTS'
*      iv_reference = 'Referencia a objeto de tipo ZCL_LAB_06_ELEMENTS_JDQH' ).
*
*    gs_elem_objects = lo_elements->ms_object.
*
*    out->write( gs_elem_objects ).

*" ============================================
*" PUNTO 8: Constantes en clases - ZCL_LAB_06_ELEMENTS_JDQH
*" ============================================
*
*out->write( zcl_lab_06_elements_jdqh=>co_class ).
*out->write( zcl_lab_06_elements_jdqh=>co_instance ).
*out->write( zcl_lab_06_elements_jdqh=>co_reference ).
*out->write( zcl_lab_06_elements_jdqh=>co_version ).


*" ============================================
*" PUNTO 9: READ-ONLY - ZCL_LAB_07_STUDENT_JDQH
*" ============================================
*
*" 1. Declarar la referencia e instanciar el objeto
*DATA(lo_student) = NEW zcl_lab_07_student_jdqh( ).
*
*" 2. Actualizar el atributo mediante el método (única vía permitida)
*lo_student->set_birth_date( iv_birth_date = '19950101' ).
*
*" 3. Mostrar el valor (lectura sí está permitida)
*out->write( lo_student->birth_date ).

" ============================================
" PUNTO 10: Parámetro opcional - ZCL_LAB_08_WORK_RECORD
" ============================================

*" Llamada CON el parámetro opcional (surname incluido)
*zcl_lab_08_work_record=>open_new_record(
*  iv_date       = '19950101'
*  iv_first_name = 'Juan'
*  iv_last_name  = 'Pérez'
*  iv_surname    = 'De la Torre' ).
*
*out->write( 'Registro creado (con surname)' ).
*
*" Llamada SIN el parámetro opcional (surname omitido)
*zcl_lab_08_work_record=>open_new_record(
*  iv_date       = '20000615'
*  iv_first_name = 'Ana'
*  iv_last_name  = 'Gómez' ).
*
*out->write( 'Registro creado (sin surname)' ).

*" ============================================
*" PUNTO 11: Autorreferencia (me) - ZCL_LAB_09_ACCOUNT_JDQH
*" ============================================
*
*" 1. Declarar e instanciar el objeto
*DATA(lo_account) = NEW zcl_lab_09_account_jdqh( ).
*
*" 2. Variable local para recibir el valor exportado por GET
*DATA lv_iban TYPE string.
*
*" 3. Llamar a SET para asignar un valor al atributo IBAN
*lo_account->set( iban = 'ES9121000418450200051332' ).
*
*" 4. Llamar a GET para recuperar el valor
*lo_account->get( IMPORTING iban = lv_iban ).
*
*" 5. Mostrar el resultado en consola
*out->write( lv_iban ).

" ============================================
"  TALLER INSTANCIAS - PUNTO 1: Constructores - ZCL_LAB_10_CONSTRUCTOR_JDQH
" ============================================

" 1. Instanciar el objeto (esto dispara ambos constructores)
DATA(lo_constructor) = NEW zcl_lab_10_constructor_jdqh( ).

" 2. Mostrar el LOG para ver el orden de ejecución
out->write( zcl_lab_10_constructor_jdqh=>log ).

" 3. Instanciar un SEGUNDO objeto de la misma clase
DATA(lo_constructor_2) = NEW zcl_lab_10_constructor_jdqh( ).

" 4. Mostrar el LOG de nuevo
out->write( zcl_lab_10_constructor_jdqh=>log ).



  ENDMETHOD.

ENDCLASS.
