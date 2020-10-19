@AbapCatalog.sqlViewName: 'ZV_VENTASMQL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Ventas por libro'
define view Z_b_ventas
  as select from ztb_clnts_lib_mq
{

  key id_libro,
      count( distinct id_cliente) as Vendidos
}

group by
  id_libro
