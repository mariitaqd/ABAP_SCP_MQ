@AbapCatalog.sqlViewName: 'ZV_LIBROSMQL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Basico MQ'
@Metadata.allowExtensions: true
define view z_b_libros_mq_l
  as select from    ztb_libros_mq as libros
    inner join      ztb_catego_mq as categ  on libros.bi_categ = categ.bi_categ
    left outer join Z_b_ventas    as ventas on libros.id_libro = ventas.id_libro
  association [0..*] to Z_B_CLIENTES_MQ_L as _clientes on $projection.Idlibro = _clientes.Idcliente

{


      //libros
  key libros.id_libro as Idlibro,
      titulo          as Titulo,
      libros.bi_categ as Categoria,
      autor           as Autor,
      editorial       as Editorial,
      idioma          as Idioma,
      paginas         as paginas,
      @Semantics.amount.currencyCode: 'moneda'
      precio          as Precio,
      case
      when ventas.Vendidos < 1 then 0
      when ventas.Vendidos = 1 then 1
      when ventas.Vendidos = 2 then 2
      when ventas.Vendidos > 2 then 3
      else 0
      end           as Ventas,
      case ventas.Vendidos
      when 0 then ''
      else ''
      end             as Text,

      @Semantics.currencyCode
      moneda          as MOneda,
      formato         as Formato,
      url             as imagen,
      _clientes


}
