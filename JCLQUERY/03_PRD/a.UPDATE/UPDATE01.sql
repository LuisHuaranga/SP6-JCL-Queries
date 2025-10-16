--
  SELECT CODMEMB,NUMDOCIDEN,TIPDOCIDEN,NUMSEC FROM E.CDDTPPS1   
  WHERE CODMEMB IN ('1079139679',                               
                    '1080358581',                             
                    '1086374228',                             
                    '1087340962',                             
                    '1088571078',                             
                    '1090033679',                             
                    '1098395633',                             
                    '1102436589')                             
  ORDER BY CODMEMB,NUMDOCIDEN,TIPDOCIDEN,NUMSEC ASC; 
--
  UPDATE E.CDDTPPS1
  SET 
     NUMDOCIDEN = CASE CODMEMB
                       WHEN '1079139679' THEN '001407423'
                       WHEN '1080358581' THEN '20220551'
                       WHEN '1086374228' THEN '003736053'
                       WHEN '1087340962' THEN '004941835'
                       WHEN '1088571078' THEN '001093804'
                       WHEN '1090033679' THEN '001437633'
                       WHEN '1098395633' THEN '002298227'
                       WHEN '1102436589' THEN '001363300'
                       ELSE NUMDOCIDEN
                    END,
    TIPDOCIDEN = CASE CODMEMB
                       WHEN '1079139679' THEN 3
                       WHEN '1080358581' THEN 3
                       WHEN '1086374228' THEN 3
                       WHEN '1087340962' THEN 3
                       WHEN '1088571078' THEN 3
                       WHEN '1090033679' THEN 3
                       WHEN '1098395633' THEN 3
                       WHEN '1102436589' THEN 3
                       ELSE TIPDOCIDEN
                    END      
  WHERE CODMEMB IN ('1079139679',
                    '1080358581',
                    '1086374228',
                    '1087340962',
                    '1088571078',
                    '1090033679',
                    '1098395633',
                    '1102436589'); 
--
  SELECT CODMEMB,NUMDOCIDEN,TIPDOCIDEN,NUMSEC FROM E.CDDTPPS1   
  WHERE CODMEMB IN ('1079139679',                               
                    '1080358581',                             
                    '1086374228',                             
                    '1087340962',                             
                    '1088571078',                             
                    '1090033679',                             
                    '1098395633',                             
                    '1102436589')                             
  ORDER BY CODMEMB,NUMDOCIDEN,TIPDOCIDEN,NUMSEC ASC;