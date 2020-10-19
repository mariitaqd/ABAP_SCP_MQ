CLASS zcl_libreria_load_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_libreria_load_data IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
   out->write( 'Prueba Mariita linda').

   data: itg_acc_categ TYPE TABLE of ztb_acc_categ_mq,
         itg_catego TYPE TABLE of ztb_catego_mq,
         itg_clientes TYPE TABLE of ztb_clientes_mq,
         itg_clnts_lib TYPE TABLE of ztb_clnts_lib_mq,
         itg_libros TYPE TABLE of ztb_libros_mq.

*********** ACC CATEG*******************************************
   itg_acc_categ = VALUE #(
   ( bi_categ = 'V' tipo_acceso = 'VIP' )
   ( bi_categ = 'R' tipo_acceso = 'REG' )
   ( bi_categ = 'P' tipo_acceso = 'PRE' )
   ).

   delete from ztb_acc_categ_mq.
   insert ztb_acc_categ_mq FROM table @itg_acc_categ.


   SELECT * FROM ztb_acc_categ_mq into TABLE  @itg_acc_categ.

    out->write( 'sy-dbcnt').
    out->write( 'insertado exitosamente la tabla ztb_acc_categ_mq').

*********** ZTB_CATEGO_mq *******************************************
   itg_catego = VALUE #(
   ( bi_categ = 'V' descipcion = 'Vip' )
   ( bi_categ = 'R' descipcion = 'Regular' )
   ( bi_categ = 'P' descipcion = 'Premiun' )
    ).


   delete from ZTB_CATEGO_mq.
   insert ZTB_CATEGO_mq FROM table @itg_catego.


   SELECT * FROM ZTB_CATEGO_mq into TABLE  @itg_catego.

    out->write( 'sy-dbcnt').
    out->write( 'insertado exitosamente la tabla ZTB_CATEGO_MQ').


*********** ZTB_CLIENTES_MQ *******************************************
   itg_clientes = VALUE #(
   ( id_cliente = '000001' tipo_acceso = 'VIP' nombre = 'MARIA'   apellidos = 'QUINTERO DURAN'     email = 'MARIALEQD@GMAIL.COM' )
   ( id_cliente = '000002' tipo_acceso = 'VIP' nombre = 'ALFONZO' apellidos = 'MALFA VELASQUEZ'    email = 'ALFONSOMALFA@GMAIL.COM' )
   ( id_cliente = '000003' tipo_acceso = 'REG' nombre = 'MARCOS'  apellidos = 'CARRASCO CARRASCO'  email = 'MARCOSC@GMAIL.COM' )
   ( id_cliente = '000004' tipo_acceso = 'REG' nombre = 'IVONNE'  apellidos = 'QUINTERO DURAN'     email = 'IVONNEQD@GMAIL.COM' )
   ( id_cliente = '000005' tipo_acceso = 'PRE' nombre = 'NENA'    apellidos = 'DURAN TORRES'       email = 'NENAD@GMAIL.COM' )
   ( id_cliente = '000006' tipo_acceso = 'PRE' nombre = 'EREIDA'  apellidos = 'VELASQUEZ'          email = 'NENAD@GMAIL.COM' )
   ).

    delete from ZTB_clientes_mq.
    insert ZTB_clientes_mq FROM table @itg_clientes.

    out->write( 'sy-dbcnt').
    out->write( 'insertado exitosamente la tabla ZTB_clientes_MQ').

******** ZBT_CLNTS_LIB_MQ *************************************************

itg_clnts_lib = VALUE #(
( id_cliente = '000001' id_libro = '0001' )
( id_cliente = '000002' id_libro = '0002' )
( id_cliente = '000002' id_libro = '0001' )
( id_cliente = '000003' id_libro = '0003' )
( id_cliente = '000003' id_libro = '0006' )
( id_cliente = '000003' id_libro = '0001' )
( id_cliente = '000004' id_libro = '0006' )
( id_cliente = '000004' id_libro = '0001' )
( id_cliente = '000005' id_libro = '0005' )
( id_cliente = '000005' id_libro = '0001' )
( id_cliente = '000005' id_libro = '0004' )
( id_cliente = '000006' id_libro = '0004' )
( id_cliente = '000006' id_libro = '0001' )
 ).

   delete from ztb_clnts_lib_mq.
   insert ztb_clnts_lib_mq FROM table @itg_clnts_lib.

   out->write( 'sy-dbcnt').
   out->write( 'insertado exitosamente la tabla ztb_clnts_lib_mq').

******** ZBT_LIBROS_MQ *************************************************

 itg_libros = VALUE #(
  ( id_libro = '0001' bi_categ = 'V' titulo = 'Titulo 1' autor = 'autor 1' editorial = ' Editorial 1' idioma = 'E'
    paginas = '20' precio = '20.5' moneda = 'EUR' formato = 'D' url = '' )
  ( id_libro = '0002' bi_categ = 'V' titulo = 'Titulo 2' autor = 'autor 2' editorial = ' Editorial 2' idioma = 'E'
    paginas = '20' precio = '20.5' moneda = 'EUR' formato = 'D' url = '' )
  ( id_libro = '0003' bi_categ = 'R' titulo = 'Titulo 3' autor = 'autor 3' editorial = ' Editorial 3' idioma = 'E'
    paginas = '20' precio = '40.5' moneda = 'EUR' formato = 'D' url = '' )
  ( id_libro = '0004' bi_categ = 'P' titulo = 'Titulo 4' autor = 'autor 4' editorial = ' Editorial 4' idioma = 'E'
    paginas = '20' precio = '40.5' moneda = 'EUR' formato = 'D' url = '' )
  ( id_libro = '0005' bi_categ = 'P' titulo = 'Titulo 5' autor = 'autor 5' editorial = ' Editorial 5' idioma = 'E'
    paginas = '20' precio = '30.5' moneda = 'EUR' formato = 'D' url = '' )
  ( id_libro = '0006' bi_categ = 'R' titulo = 'Titulo 6' autor = 'autor 6' editorial = ' Editorial 6' idioma = 'E'
    paginas = '20' precio = '30.5' moneda = 'EUR' formato = 'D' url = '' )
 ).


DELETE FROM ztb_libros_mq.
insert ztb_libros_mq FROM table @itg_LIBROS.

   out->write( 'sy-dbcnt').
   out->write( 'insertado exitosamente la tabla ztb_libros_mq').

  ENDMETHOD.

ENDCLASS.
