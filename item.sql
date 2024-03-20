select
  stg.cod_emitente as mdmproducttype,
  CASE
   WHEN stg.cod_emitente = '987' THEN stg.cidade
    ELSE CAST(10 as STRING)
  END as mdmtotalvalue
  --stg.id as mdmproducttype,
  --stg.name as mdmname
  --metadata--
from `2aa8a1209af3469bb51a54d4c172605b.stg_datasul_item` as stg
