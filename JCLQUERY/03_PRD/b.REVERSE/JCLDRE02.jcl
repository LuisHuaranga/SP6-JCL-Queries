//S38457LH JOB ,LHG,CLASS=U,REGION=0M,
//          MSGCLASS=S,MSGLEVEL=(1,1)
//*
//         INCLUDE MEMBER=LIBPARML
//         INCLUDE MEMBER=VARPARML
//*----------------------------------------------------------------
//S01PIEFB EXEC PGM=IEFBR14,COND=(04,LT)                           
//DATO01   DD DSN=&AMB..PPS.G01SN.PPS.REVERSE.PPST002,
//            DISP=(MOD,DELETE),UNIT=SYSDA,SPACE=(TRK,0)           
//*----------------------------------------------------------------
//* CDDTPPS01 - REVERTIR CAMBIOS EN DESARROLLO
//*----------------------------------------------------------------
//S02PIKJE  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT)
//SYSUDUMP DD SYSOUT=S                                             
//SYSTSPRT DD SYSOUT=S                                             
//SYSOUT   DD SYSOUT=*    
//SYSPRINT DD DSN=&AMB..PPS.G01SN.PPS.REVERSE.PPST002,            
//            DISP=(NEW,CATLG,DELETE),                             
//            SPACE=(CYL,(1,1),RLSE),UNIT=SYSDA,          
//            DCB=(RECFM=FB,DSORG=PS)   
//SYSTSIN  DD DISP=SHR,DSN=&PARMLIB(DSNTEP2)
//SYSIN    DD DSN=X.PPS.G01SN.PPS.QUERYPRD.REVERSE.PPST002,
//            DISP=SHR
//*