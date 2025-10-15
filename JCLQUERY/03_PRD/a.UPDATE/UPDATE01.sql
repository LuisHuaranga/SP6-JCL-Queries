--
  SELECT CODMEMB,NUMDOCIDEN,TIPDOCIDEN,NUMSEC FROM E.CDDTPPS1   
  WHERE CODMEMB IN ('2022241007',                               
                    '2023000030',                             
                    '2023000031',                             
                    '2023050173',                             
                    '2023050174',                             
                    '2023050175',                             
                    '2023050176')                             
  ORDER BY CODMEMB,NUMDOCIDEN,TIPDOCIDEN,NUMSEC ASC; 
--
  UPDATE E.CDDTPPS1
  SET 
     NUMDOCIDEN = CASE CODMEMB
                       WHEN '2022241007' THEN '563829174'
                       WHEN '2023000030' THEN '982734651'
                       WHEN '2023000031' THEN '283746519'
                       WHEN '2023050173' THEN '19284756'
                       WHEN '2023050174' THEN '65192837'
                       WHEN '2023050175' THEN '83920174'
                       WHEN '2023050176' THEN '475638291'
                       ELSE NUMDOCIDEN
                    END,
    TIPDOCIDEN = CASE CODMEMB
                       WHEN '2022241007' THEN 3
                       WHEN '2023000030' THEN 3
                       WHEN '2023000031' THEN 3
                       WHEN '2023050173' THEN 1
                       WHEN '2023050174' THEN 1
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
  SELECT CODMEMB,NUMDOCIDEN,TIPDOCIDEN,NUMSEC FROM E.CDDTPPS1   
  WHERE CODMEMB IN ('2022241007',                               
                    '2023000030',                             
                    '2023000031',                             
                    '2023050173',                             
                    '2023050174',                             
                    '2023050175',                             
                    '2023050176')                             
  ORDER BY CODMEMB,NUMDOCIDEN,TIPDOCIDEN,NUMSEC ASC;