@AbapCatalog.sqlViewName: 'ZV_ACCMQL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'acc_cat'
define view z_b_acc_cat_mq_l
  as select from ztb_acc_categ_mq
{
      //ZTB_ACC_CATEG_MQ
  key bi_categ    as Bicateg,
  key tipo_acceso as TipoAcceso
}
