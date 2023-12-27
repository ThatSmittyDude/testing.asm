DATA SEGMENT USE16
    MESG DB 'HELLO WORLD','$'
DATA ENDS
CODE SEGMENT USE16
         ASSUME CS:CODE,DS:DATA
    BEG: 
         MOV    AX,DATAMOV DS,AX
         MOV    AH,9
         MOV    DX, OFFSET MESG
         INT    21H
         MOV    AH,4CH
         INT    21H                 ;BACK TO DOS
CODE ENDS
END BEG