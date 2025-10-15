--
  SELECT CODMEMB,NUMDOCIDEN,TIPDOCIDEN,NUMSEC FROM A.CDDTPPS1   
  WHERE CODMEMB IN ('2022241007',                               
                    '2023000030',                             
                    '2023000031',                             
                    '2023050173',                             
                    '2023050174',                             
                    '2023050175',                             
                    '2023050176')                             
  ORDER BY CODMEMB,NUMDOCIDEN,TIPDOCIDEN,NUMSEC ASC; 
--
  UPDATE A.CDDTPPS1
  SET 
     NUMDOCIDEN = CASE CODMEMB
                       WHEN '2022241007' THEN '769251304'
                       WHEN '2023000030' THEN '91172721'
                       WHEN '2023000031' THEN '345871692'
                       WHEN '2023050173' THEN '45105305'
                       WHEN '2023050174' THEN '20220824'
                       WHEN '2023050175' THEN '18050199'
                       WHEN '2023050176' THEN '20220821'
                       ELSE NUMDOCIDEN
                    END,
    TIPDOCIDEN = CASE CODMEMB
                       WHEN '2022241007' THEN 3
                       WHEN '2023000030' THEN 1
                       WHEN '2023000031' THEN 3
                       WHEN '2023050173' THEN 1
                       WHEN '2023050174' THEN 3
                       WHEN '2023050175' THEN 1
                       WHEN '2023050176' THEN 3
                       ELSE TIPDOCIDEN
                    END
  WHERE CODMEMB IN ('2022241007',
                    '2023000030',
                    '2023000031',
                    '2023050173',
                    '2023050174',
                    '2023050175',
                    '2023050176');
--
  SELECT CODMEMB,NUMDOCIDEN,TIPDOCIDEN,NUMSEC FROM A.CDDTPPS1   
  WHERE CODMEMB IN ('2022241007',                               
                    '2023000030',                             
                    '2023000031',                             
                    '2023050173',                             
                    '2023050174',                             
                    '2023050175',                             
                    '2023050176')                             
  ORDER BY CODMEMB,NUMDOCIDEN,TIPDOCIDEN,NUMSEC ASC;