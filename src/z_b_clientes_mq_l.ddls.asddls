@AbapCatalog.sqlViewName: 'ZV_CLIENTESMQL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes'
@Metadata.allowExtensions: true



define view Z_B_CLIENTES_MQ_L
  as select from ztb_clientes_mq  as clientes
    inner join   ztb_clnts_lib_mq as clnts on clientes.id_cliente = clnts.id_cliente
{
      //clnts

  key id_libro            as Idlibro,
      //clientes
  key clientes.id_cliente as Idcliente,
  key tipo_acceso         as Acceso,
      nombre              as Nombre,
      apellidos           as Apellidos,
      email               as Email,
      url                 as Imagen,
      concat_with_space(nombre, apellidos , 1) as NombreCompleto
      

}
