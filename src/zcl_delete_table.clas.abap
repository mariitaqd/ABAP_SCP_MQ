CLASS zcl_delete_table DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_delete_table IMPLEMENTATION.
 METHOD if_oo_adt_classrun~main.
 DELETE FROM  ZTB_ACC_CATEG_MQ.
 if sy-subrc eq 0.
 out->write( 'ALL DATA DELETE' ).
 ENDIF.
 ENDMETHOD.
ENDCLASS.