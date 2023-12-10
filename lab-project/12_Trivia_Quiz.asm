.MODEL SMALL
.STACK 100H
.DATA

msg1 dw "Welcome to the Trivia by ZulkarNain!$"
msg2 dw "GoodLuck!$"
msg3 dw "Press Enter to Start!$"
msg4 dw "Enter Your Name: $"
name1 db 50, 0, 48 DUP('$')
msg5 dw "Welcome! $"
msg6 dw "Please Select a Topic- $"
msg7 dw "1.General-Knowledge 2.Math 3.Science $"
msg8 dw "Your selected option: $"
msg9 dw "You Choose General Knowledge.$"
msg10 dw "You Choose Math.$"
msg11 dw "You Choose Science.$"

;gk section start
gk1 dw "When is Independence Day?$"
gk1op dw "1.[26th march] 2.[21st February] 3.[16th December]$"

gk2 dw "What is BD National Fruit?$"
gk2op dw "1.[Mango] 2.[Berry] 3.[JackFruit]$"   

gk3 dw "Which Direction Muslims say their Prayer?$"
gk3op dw "1.[North] 2.[East] 3.[West]$"

gk4 dw "After what age can you vote in BD?$"
gk4op dw "1.[16] 2.[18] 3.[21]$"

gk5 dw "How many Divisions in Bangladesh?$"
gk5op dw "1.[6] 2.[7] 3.[8]$"
;gk section end

rfr dw "Do you want to play Rapid Fire Round[One Question for point Double]?$"
rfrop dw "1.[YES] 2.[NO]$" 

msg12 dw "Your Final Score: $"

rfrq1 dw "How many Districts are in BD?$"
rfrq1op dw "1.[64] 2.[65] 3.[66]$"

msg13 dw "You won the rapid fire round!$"


;mat section start
mat1 dw "What is the sum of 130+125+191?$"
mat1op dw "1.[335] 2.[456] 3.[446]$"

mat2 dw "If we minus 700 from 1500, how much do we get?$"
mat2op dw "1.[700] 2.[800] 3.[900]$"   

mat3 dw "50 times of 8 is equal to?$"
mat3op dw "1.[40] 2.[400] 3.[4000]$"

mat4 dw "110 divided by 10 is?$"
mat4op dw "1.[11] 2.[10] 3.[101]$"

mat5 dw "Solve 24/8+2?$"
mat5op dw "1.[6] 2.[8] 3.[5]$"
;mat section end

rfrq2 dw "Solve: 300 - (150x2)?$"
rfrq2op dw "1.[150] 2.[50] 3.[0]$"

;sci section start
sci1 dw "What forces maintain the planets orbiting the sun?$"
sci1op dw "1.[Gravity] 2.[Vanderwalls] 3.[Strong Force]$"

sci2 dw "What is the solar system's biggest star?$"
sci2op dw "1.[Venus] 2.[Sun] 3.[Jupitar]$"   

sci3 dw "Which organ in the human body is the largest?$"
sci3op dw "1.[Liver] 2.[Skin] 3.[Intestine]$"

sci4 dw "What is the total number of elements in the periodic table?$"
sci4op dw "1.[118] 2.[119] 3.[120]$"

sci5 dw "What illness is named after a medieval term for 'poor air'?$"
sci5op dw "1.[Dengue] 2.[Malaria] 3.[Corona]$"
;sci section end

rfrq3 dw "Which blood type is referred to as the universal donor?$"
rfrq3op dw "1.[A+] 2.[B-] 3.[O-]$"

msg14 dw "Do you want to play Again?$"
msg14op dw "1.[YES] 2.[NO, and End game]$"
msg15 dw "Your Final Score: 10$" 

.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 

    
    MOV AH,9
    MOV DX, OFFSET msg1
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET msg2
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET msg3
    INT 21H
    
    ;print symbol
    MOV AH,2
    MOV DL,10h
    INT 21H
    ;print Symbol
    
    MOV AH,1
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break 
    
    MOV AH,9
    MOV DX, OFFSET msg4
    INT 21H
    
    
    
    LEA DX, name1                       
    MOV AH, 0AH                               
    INT 21h
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET msg5
    INT 21H
     
    MOV AH,09h                      
    LEA DX,name1+2                                
    INT 21H    
           
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    rerun:
    
    MOV AH,9
    MOV DX, OFFSET msg6
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET msg7
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
                   
    MOV AH,9
    MOV DX, OFFSET msg8
    INT 21H               
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
     
    MOV CH,'0' ; CH tracking score 
    
    CMP CL,'1'
    JE GenK

    CMP CL,'2'
    JE Math 

    CMP CL,'3'
    JE Sci
             
            
             
    GenK:
    MOV AH,9
    MOV DX, OFFSET msg9
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET gk1
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET gk1op
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'1'
    JE CA_gk1
    JMP gk2q
    
    
    
    CA_gk1:
    inc CH 
    
    
    gk2q:
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET gk2
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET gk2op
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'3'
    JE CA_gk2
    JMP gk3q
    
    CA_gk2:
    inc CH
     
     
    gk3q:
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET gk3
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET gk3op
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'3'
    JE CA_gk3
    JMP gk4q
    
    CA_gk3:
    inc CH
    
    gk4q:
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET gk4
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET gk4op
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'2'
    JE CA_gk4
    JMP gk5q
    
    CA_gk4:
    inc CH
    
    gk5q:
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET gk5
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET gk5op
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'3'
    JE CA_gk5
    JMP gkend
    
    CA_gk5:
    inc CH
    
    gkend:
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET rfr
    INT 21H
   
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET rfrop
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'1'
    JE RF1
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET msg12
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    ;------------------
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET msg14
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET msg14op
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'1'
    JE rerun
    JMP EXIT
    
    ;-------------------
    
    JMP EXIT
    
    RF1:
    MOV AH,9
    MOV DX, OFFSET rfrq1
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET rfrq1op
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'1'
    JE  RFR_WIN
    
    dec CH
    
    MOV AH,9
    MOV DX, OFFSET msg12
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    ;------------------
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET msg14
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET msg14op
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'1'
    JE rerun
    JMP EXIT
    
    ;-------------------
    
    RFR_WIN:
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET msg13
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    SUB CH,30H
    
    MOV AX,2H
    MOV BL,CH
    MUL BL
    
    MOV CX,AX
    CMP CX,10
    JE HS
    CMP CX,10
    JG OF
    JMP CONT
    
    HS:
    MOV AH,9
    MOV DX, OFFSET msg15
    INT 21H
    JMP CONT2
    
    OF:
    SUB CX,10H
    
    
    
    
    CONT:    
    ADD CX,30H
    
    MOV AH,9
    MOV DX, OFFSET msg12
    INT 21H
    
    MOV AH,2
    MOV DX,CX
    INT 21H
    
    CONT2:
    
    ;------------------
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET msg14
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET msg14op
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'1'
    JE rerun
    JMP EXIT
    
    ;-------------------
    
    
    
    
    
    
    
    JMP EXIT
    
    Math:
    MOV AH,9
    MOV DX, OFFSET msg10
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET mat1
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET mat1op
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'3'
    JE CA_mat1
    JMP mat2q
    
    
    
    CA_mat1:
    inc CH 
    
    
    mat2q:
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET mat2
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET mat2op
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'2'
    JE CA_mat2
    JMP mat3q
    
    CA_mat2:
    inc CH
     
     
    mat3q:
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET mat3
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET mat3op
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'2'
    JE CA_mat3
    JMP mat4q
    
    CA_mat3:
    inc CH
    
    mat4q:
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET mat4
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET mat4op
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'1'
    JE CA_mat4
    JMP mat5q
    
    CA_mat4:
    inc CH
    
    mat5q:
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET mat5
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET mat5op
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'3'
    JE CA_mat5
    JMP matend
    
    CA_mat5:
    inc CH
    
    matend:
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET rfr
    INT 21H
   
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET rfrop
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'1'
    JE RF2
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET msg12
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    ;------------------
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET msg14
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET msg14op
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'1'
    JE rerun
    JMP EXIT
    
    ;-------------------
    
    JMP EXIT
    
    RF2:
    MOV AH,9
    MOV DX, OFFSET rfrq2
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET rfrq2op
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'3'
    JE  RFR_WIN2
    
    dec CH
    
    MOV AH,9
    MOV DX, OFFSET msg12
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    ;------------------
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET msg14
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET msg14op
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'1'
    JE rerun
    JMP EXIT
    
    ;-------------------
    
    RFR_WIN2:
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET msg13
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    SUB CH,30H
    
    MOV AX,2H
    MOV BL,CH
    MUL BL
    
    MOV CX,AX
    CMP CX,10
    JE HS2
    CMP CX,10
    JG OF2
    JMP CONTi
    
    HS2:
    MOV AH,9
    MOV DX, OFFSET msg15
    INT 21H
    JMP CONT2i
    
    OF2:
    SUB CX,10H
    
    
    
    
    CONTi:    
    ADD CX,30H
    
    MOV AH,9
    MOV DX, OFFSET msg12
    INT 21H
    
    MOV AH,2
    MOV DX,CX
    INT 21H
    
    CONT2i:
    
    
    ;------------------
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET msg14
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET msg14op
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'1'
    JE rerun
    JMP EXIT
    
    ;-------------------
    
     
    JMP EXIT
    
    
    Sci:
    MOV AH,9
    MOV DX, OFFSET msg11
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET sci1
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET sci1op
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'1'
    JE CA_sci1
    JMP sci2q
    
    
    
    CA_sci1:
    inc CH 
    
    
    sci2q:
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET sci2
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET sci2op
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'2'
    JE CA_sci2
    JMP sci3q
    
    CA_sci2:
    inc CH
     
     
    sci3q:
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET sci3
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET sci3op
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'2'
    JE CA_sci3
    JMP sci4q
    
    CA_sci3:
    inc CH
    
    sci4q:
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET sci4
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET sci4op
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'1'
    JE CA_sci4
    JMP sci5q
    
    CA_sci4:
    inc CH
    
    sci5q:
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET sci5
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET sci5op
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'2'
    JE CA_sci5
    JMP sciend
    
    CA_sci5:
    inc CH
    
    sciend:
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET rfr
    INT 21H
   
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET rfrop
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'1'
    JE RF3
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET msg12
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    ;------------------
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET msg14
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET msg14op
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'1'
    JE rerun
    JMP EXIT
    
    ;-------------------
    
    JMP EXIT
    
    RF3:
    MOV AH,9
    MOV DX, OFFSET rfrq3
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET rfrq3op
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'3'
    JE  RFR_WIN3
    
    dec CH
    
    MOV AH,9
    MOV DX, OFFSET msg12
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    ;------------------
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET msg14
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET msg14op
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'1'
    JE rerun
    JMP EXIT
    
    ;-------------------
    
    RFR_WIN3:
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET msg13
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    SUB CH,30H
    
    MOV AX,2H
    MOV BL,CH
    MUL BL
    
    MOV CX,AX
    CMP CX,10
    JE HS3
    CMP CX,10
    JG OF3
    JMP CONTii
    
    HS3:
    MOV AH,9
    MOV DX, OFFSET msg15
    INT 21H
    JMP CONT2ii
    
    OF3:
    SUB CX,10H
    
    
    
    
    CONTii:    
    ADD CX,30H
    
    MOV AH,9
    MOV DX, OFFSET msg12
    INT 21H
    
    MOV AH,2
    MOV DX,CX
    INT 21H
    
    CONT2ii:
    
    
    ;------------------
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET msg14
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,9
    MOV DX, OFFSET msg14op
    INT 21H
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    ;for line break
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    ;for line break
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    CMP CL,'1'
    JE rerun
    JMP EXIT
    
    ;-------------------
    
    JMP EXIT
    
    
            
    EXIT:
    
    

    MAIN ENDP
END MAIN
