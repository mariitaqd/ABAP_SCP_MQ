@AbapCatalog.sqlViewName: 'ZV_CATEGMQL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Categirias'
define view z_b_categ_mq_l
  as select from ztb_catego_mq
{

      //ZTB_CATEGO_MQ
  key bi_categ   as Bicateg,
      descipcion as Descripcion
}
