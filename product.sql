SELECT 
    stg.productname as mdmname,
    CONCAT("qawork-", stg.productname) as mdmdescription,
    stg.productprice as mdmunitvalue,
    CONTAINS_SUBSTR(stg.productname, 'flo') AS mdmDeleted,
    to_hex(md5(lower(CONCAT(stg.mdmTenantId,'mdmproduct{"mdmname":"', stg.productname, '"}')))) __mdmId
    --metadataNoId--
from stg_nlp_product as stg
