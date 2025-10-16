--
  SELECT CODMEMB,NUMDOCIDEN,TIPDOCIDEN,NUMSEC FROM A.CDDTPPS1   
  WHERE CODMEMB IN ('1041453802',                               
                    '2000500012',                             
                    '2000500020',                             
                    '2023050084',                                                          
                    '2023050176')                             
  ORDER BY CODMEMB,NUMDOCIDEN,TIPDOCIDEN,NUMSEC ASC; 
--
  UPDATE A.CDDTPPS1
  SET 
     NUMDOCIDEN = CASE CODMEMB
                       WHEN '1041453802' THEN '80000561'
                       WHEN '2000500012' THEN '10119444'
                       WHEN '2000500020' THEN '80111742'
                       WHEN '2023050084' THEN '96125843'
                       WHEN '2023050176' THEN '28690821'
                       ELSE NUMDOCIDEN
                    END,
    TIPDOCIDEN = CASE CODMEMB
                       WHEN '1041453802' THEN 1
                       WHEN '2000500012' THEN 1
                       WHEN '2000500020' THEN 1
                       WHEN '2023050084' THEN 3
                       WHEN '2023050176' THEN 3
                       ELSE TIPDOCIDEN
                    END      
  WHERE CODMEMB IN ('1041453802',
                    '2000500012',
                    '2000500020',
                    '2023050084',
                    '2023050176'); 
--
  SELECT CODMEMB,NUMDOCIDEN,TIPDOCIDEN,NUMSEC FROM A.CDDTPPS1   
  WHERE CODMEMB IN ('1041453802',                               
                    '2000500012',                             
                    '2000500020',                             
                    '2023050084',                                                         
                    '2023050176')                             
  ORDER BY CODMEMB,NUMDOCIDEN,TIPDOCIDEN,NUMSEC ASC;