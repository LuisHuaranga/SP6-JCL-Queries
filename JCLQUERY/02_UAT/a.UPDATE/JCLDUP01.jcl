//X13924LH JOB ,LHG,CLASS=T,REGION=0M,
//          MSGCLASS=S,MSGLEVEL=(1,1)
//*
//         INCLUDE MEMBER=LIBPARML
//         INCLUDE MEMBER=VARPARML
//*----------------------------------------------------------------
//S01PIEFB EXEC PGM=IEFBR14,COND=(04,LT)                           
//DATO01   DD DSN=&AMB..PPS.G01SN.PPS.UPDATE.PPST001,
//            DISP=(MOD,DELETE),UNIT=SYSDA,SPACE=(TRK,0) 
//*----------------------------------------------------------------
//* CDDTPPS01 - ACTUALIZAR CAMPOS EN DESARROLLO
//*----------------------------------------------------------------
//S02PIKJE  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT)
//SYSUDUMP DD SYSOUT=S                                             
//SYSTSPRT DD SYSOUT=S                                             
//SYSOUT   DD SYSOUT=*    
//SYSPRINT DD DSN=&AMB..PPS.G01SN.PPS.UPDATE.PPST001,            
//            DISP=(NEW,CATLG,DELETE),                             
//            SPACE=(CYL,(1,1),RLSE),UNIT=SYSDA,          
//            DCB=(RECFM=FB,DSORG=PS)   
//SYSTSIN  DD DISP=SHR,DSN=&PARMLIB(DSNTEP2)
//SYSIN    DD DSN=A.PPS.G01SN.PPS.QUERYDES.UPDATE.PPST001,
//            DISP=SHR
//*