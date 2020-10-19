@AbapCatalog.sqlViewName: 'ZV_CLNTLBMQL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Clientes Libro'
define view Z_B_CLNTS_LIN_MQ_L
  as select from ztb_clnts_lib_mq
{
      //ztb_clnts_lib_mq
  key id_cliente as IdCliente,
  key id_libro   as IdLibro
}
