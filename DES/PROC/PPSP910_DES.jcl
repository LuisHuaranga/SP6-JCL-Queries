//X13924YO JOB ,,CLASS=9,REGION=0M,
//         MSGLEVEL=(1,1),MSGCLASS=P
//*
//         INCLUDE MEMBER=LIBPARML
//         INCLUDE MEMBER=VARPARML
//*
//*--------------------------------------------------------------------*
//* STEP 01: BORRADO ARCHIVO ALTAPDT.VAR.SORT                          * 
//*--------------------------------------------------------------------*
//S01PIEFB  EXEC PGM=IEFBR14,COND=(04,LT)
//SYSUT1    DD DSN=&AMB..PPS.&GRPB.SN.PPS.PPSP910.ALTAPDT.VAR.SORT,
//             DISP=(MOD,DELETE),UNIT=SYSDA,SPACE=(CYL,0)
//*
//*--------------------------------------------------------------------*
//* STEP 02: ORDENAMIENTO ARCHIVO ALTAPDT.VAR                          *     
//*--------------------------------------------------------------------*
//S02PSORT  EXEC PGM=SORT,COND=(04,LT)
//SYSOUT    DD SYSOUT=&OUTS
//SYSPRINT  DD SYSOUT=&OUTS
//SORTIN    DD DSN=D.PPS.G01SN.PPS.PPSP438.ALTAPDT.VARIABLE,
//             DISP=SHR
//SORTOUT   DD DSN=&AMB..PPS.&GRPB.SN.PPS.PPSP910.ALTAPDT.VAR.SORT,
//             DCB=(LRECL=121,RECFM=FB,DSORG=PS,BLKSIZE=0),
//             UNIT=SYSDA,SPACE=(CYL,(900,500),RLSE),
//             DISP=(,CATLG,DELETE)
//SYSIN     DD DSN=&PARMLIB(PPSS910A),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* STEP 03: BORRADO ARCHIVO PPST001.UNL.SORT                          *
//*--------------------------------------------------------------------*
//S03PIEFB  EXEC PGM=IEFBR14,COND=(04,LT)
//SYSUT1    DD DSN=&AMB..PPS.&GRPB.SN.PPS.PPSP910.PPST001.UNL.SORT,
//             DISP=(MOD,DELETE),UNIT=SYSDA,SPACE=(CYL,0)
//*
//*--------------------------------------------------------------------*
//* STEP 04: ORDENAMIENTO ARCHIVO PPST001.UNLOAD                       * 
//*--------------------------------------------------------------------*
//S04PSORT  EXEC PGM=SORT,COND=(04,LT)
//SYSOUT    DD SYSOUT=&OUTS
//SYSPRINT  DD SYSOUT=&OUTS
//SORTIN    DD DSN=D.PPS.G01SN.PPS.PPSP170.PPST001.UNLOAD,DISP=SHR
//SORTOUT   DD DSN=&AMB..PPS.&GRPB.SN.PPS.PPSP910.PPST001.UNL.SORT,
//             DCB=(LRECL=305,RECFM=FB,DSORG=PS,BLKSIZE=0),
//             UNIT=SYSDA,SPACE=(CYL,(800,200),RLSE),
//             DISP=(,CATLG,DELETE)
//SYSIN     DD DSN=&PARMLIB(PPSS910B),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* STEP 05: BORRADO ARCHIVO SAL01.PCHOST                              *  
//*--------------------------------------------------------------------*
//S05PIEFB  EXEC PGM=IEFBR14,COND=(04,LT)
//SYSUT1    DD DSN=&AMB..PPS.&GRPB.SN.PPS.PPSP910.SAL01.PCHOST,
//             DISP=(MOD,DELETE),UNIT=SYSDA,SPACE=(CYL,0)
//*
//*--------------------------------------------------------------------*
//* STEP 06: PRIMER PROGRAMA - VALIDACION DNI Y MEMBRESIA              *
//*--------------------------------------------------------------------*
//S06PB910  EXEC PGM=PPSB910,COND=(04,LT)
//SYSOUT    DD SYSOUT=&OUTS
//SYSPRINT  DD SYSOUT=&OUTS
//ALTAPDTI  DD DSN=&AMB..PPS.&GRPB.SN.PPS.PPSP910.ALTAPDT.VAR.SORT,
//             DISP=SHR
//PPST001I  DD DSN=&AMB..PPS.&GRPB.SN.PPS.PPSP910.PPST001.UNL.SORT,
//             DISP=SHR
//SALIDA1O  DD DSN=&AMB..PPS.&GRPB.SN.PPS.PPSP910.SAL01.PCHOST,
//             DCB=(LRECL=69,RECFM=FB,DSORG=PS,BLKSIZE=0),
//             UNIT=SYSDA,SPACE=(CYL,(200,100),RLSE),
//             DISP=(,CATLG,DELETE)
//*
//*--------------------------------------------------------------------*
//* STEP 07: BORRADO ARCHIVO SAL01.PCH.SORT                            *
//*--------------------------------------------------------------------*
//S07PIEFB  EXEC PGM=IEFBR14,COND=(04,LT)
//SYSUT1    DD DSN=&AMB..PPS.&GRPB.SN.PPS.PPSP910.SAL01.PCH.SORT,
//             DISP=(MOD,DELETE),UNIT=SYSDA,SPACE=(CYL,0)
//*
//*--------------------------------------------------------------------*
//* STEP 08: ORDENAMIENTO ARCHIVO SAL01.PCH.SORT                       *
//*--------------------------------------------------------------------*
//S08PSORT  EXEC PGM=SORT,COND=(04,LT)
//SYSOUT    DD SYSOUT=&OUTS
//SYSPRINT  DD SYSOUT=&OUTS
//SORTIN    DD DSN=&AMB..PPS.&GRPB.SN.PPS.PPSP910.SAL01.PCHOST,
//             DISP=SHR
//SORTOUT   DD DSN=&AMB..PPS.&GRPB.SN.PPS.PPSP910.SAL01.PCH.SORT,
//             DCB=(LRECL=69,RECFM=FB,DSORG=PS,BLKSIZE=0),
//             UNIT=SYSDA,SPACE=(CYL,(200,100),RLSE),
//             DISP=(,CATLG,DELETE)
//SYSIN     DD DSN=&PARMLIB(PPSS910C),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* STEP 11: BORRADO ARCHIVO PPST002.UNL.SORT                          *
//*--------------------------------------------------------------------*
//S11PIEFB  EXEC PGM=IEFBR14,COND=(04,LT)
//SYSUT1    DD DSN=&AMB..PPS.&GRPB.SN.PPS.PPSP910.PPST002.UNL.SORT,
//             DISP=(MOD,DELETE),UNIT=SYSDA,SPACE=(CYL,0)
//*
//*--------------------------------------------------------------------*
//* STEP 12: ORDENAMIENTO ARCHIVO PPST002.UNLOAD                       *
//*--------------------------------------------------------------------*
//S12PSORT  EXEC PGM=SORT,COND=(04,LT)
//SYSOUT    DD SYSOUT=&OUTS
//SYSPRINT  DD SYSOUT=&OUTS
//SORTIN    DD DSN=D.PPS.G01SN.PPS.PPSP436.PPST002.UNLOAD,DISP=SHR
//SORTOUT   DD DSN=&AMB..PPS.&GRPB.SN.PPS.PPSP910.PPST002.UNL.SORT,
//             DCB=(LRECL=186,RECFM=FB,DSORG=PS,BLKSIZE=0),
//             UNIT=SYSDA,SPACE=(CYL,(800,200),RLSE),
//             DISP=(,CATLG,DELETE)
//SYSIN     DD DSN=&PARMLIB(PPSS910D),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* STEP 13: BORRADO SAL02.PCHOST                                     *
//*--------------------------------------------------------------------*
//S13PIEFB  EXEC PGM=IEFBR14,COND=(04,LT)
//SYSUT1    DD DSN=&AMB..PPS.&GRPB.SN.PPS.PPSP910.SAL02.PCHOST,
//             DISP=(MOD,DELETE),UNIT=SYSDA,SPACE=(CYL,0)
//*
//*--------------------------------------------------------------------*
//* STEP 14: SEGUNDO PROGRAMA - AGREGA CAMPOS ADICIONALES A SALIDA 01  *
//*--------------------------------------------------------------------*
//S14PB912  EXEC PGM=PPSB912,COND=(04,LT)
//SYSOUT    DD SYSOUT=&OUTS
//SYSPRINT  DD SYSOUT=&OUTS
//INCMEMBI  DD DSN=&AMB..PPS.&GRPB.SN.PPS.PPSP910.SAL01.PCH.SORT,
//             DISP=SHR
//PPST002I  DD DSN=&AMB..PPS.&GRPB.SN.PPS.PPSP910.PPST002.UNL.SORT,
//             DISP=SHR
//SALIDA2O  DD DSN=&AMB..PPS.&GRPB.SN.PPS.PPSP910.SAL02.PCHOST,
//             DCB=(LRECL=91,RECFM=FB,DSORG=PS,BLKSIZE=0),
//             UNIT=SYSDA,SPACE=(CYL,(200,100),RLSE),
//             DISP=(,CATLG,DELETE)
//*-------------------------- FIN PPSP910 -----------------------------*