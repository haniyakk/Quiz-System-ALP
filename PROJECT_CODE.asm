.model small
.stack 100h

.data
welcomeMsg db 0Dh,0Ah, '---- WELCOME TO THE QUIZ SYSTEM ----', 0Dh,0Ah, '$'    
introMsg db 0DH, 0Ah, '    Test Your General Knowledge     ', 0Dh,0Ah, '$'
msgName     db 0dh,0ah, 'Enter your Name: $'
msgReg      db 0dh,0ah, 'Enter your Registration Number: $'
msgWelcome  db 0dh,0ah, 'Welcome, $'
msgStartbr    db ' (', '$'
msgEndBr    db ')', 0dh,0ah, '$'    
 
msgSpace    db 0dh,0ah, '$'

menuHeader db 0Dh,0Ah, '---- MAIN MENU ----', 0Dh,0Ah, '$'
opt1        db 0dh,0ah,'1. Take Quiz$'
opt2        db 0dh,0ah,'2. View Score$'
opt3        db 0dh,0ah,'3. View Profile$'
opt4        db 0dh,0ah,'4. Exit$'
msgChoice   db 0dh,0ah,'Enter your choice: $'
invalidMsg  db 0dh,0ah,'Invalid choice! Please try again.$'   
msgOutro    db 0dh,0ah,'---- EXITING QUIZ SYSTEM ----$'                                
                     
QuizHeader db 0Dh,0Ah, '---- QUIZ MENU ----', 0Dh,0Ah, '$'
opti1        db 0dh,0ah,'1. Take Quiz 01$'
opti2        db 0dh,0ah,'2. Take Quiz 02$'                        
                         
Q1Head db 0Dh,0Ah, '---- QUIZ 01 ----$'                      
q1 db 0Dh,0Ah, '1) Symbol of Carbon Dioxide?$'
q2 db 0Dh,0Ah, '2) Largest planet in the Solar System?$'
q3 db 0Dh,0Ah, '3) Capital of France?$'
q4 db 0Dh,0Ah, '4) Chemical symbol for Sodium?$'
q5 db 0Dh,0Ah, '5) Fastest land animal?$' 
q6 db 0Dh,0Ah, '6) Red Planet is?$'
q7 db 0Dh,0Ah, '7) Chemical symbol of Water?$'
q8 db 0Dh,0Ah, '8) Father of Computer?$'
q9 db 0Dh,0Ah, '9) Largest ocean on Earth?$'
q10 db 0Dh,0Ah,'10) Binary of decimal 2?$'

questions dw q1, q2, q3, q4, q5, q6, q7, q8, q9, q10

o1 db 0Dh,0Ah, 'a) CO2    b) H2O    c) NaCl    d) HCl$',0
o2 db 0Dh,0Ah, 'a) Earth  b) Mars   c) Jupiter d) Venus$',0
o3 db 0Dh,0Ah, 'a) Paris  b) Rome   c) Berlin  d) Madrid$',0
o4 db 0Dh,0Ah, 'a) S      b) Na     c) So      d) Sn$',0
o5 db 0Dh,0Ah, 'a) Cheetah b) Lion  c) Tiger   d) Leopard$',0 
o6  db 0Dh,0Ah, 'a) Mars   b) Venus  c) Earth  d) Jupiter$',0
o7  db 0Dh,0Ah, 'a) CO2    b) H2O    c) O2     d) Na$',0
o8  db 0Dh,0Ah, 'a) Newton b) Edison c) Charles Babbage d) Turing$',0
o9  db 0Dh,0Ah, 'a) Atlantic b) Indian c) Pacific d) Arctic$',0
o10 db 0Dh,0Ah, 'a) 10     b) 11     c) 01     d) 00$',0

options dw o1, o2, o3, o4, o5, o6, o7, o8, o9, o10

corrA db 'A','C','A','B','A','A','B','C','C','A'
correctAnswers db 'a','c','a','b','a','a','b','c','c','a'    

Q2Head db 0Dh,0Ah, '---- QUIZ 02 ----$'                      
q11 db 0Dh,0Ah, '1) H2SO4 is the chemical formula of?$'
q12 db 0Dh,0Ah, '2) Planet with 90+ moons?$'
q13 db 0Dh,0Ah, '3) Data type to store whole numbers?$'
q14 db 0Dh,0Ah, '4) SI unit of temperature?$'
q15 db 0Dh,0Ah, '5) Speed of light?$' 
q16 db 0Dh,0Ah, '6) Capital of Malaysia?$'
q17 db 0Dh,0Ah, '7) Independence day of Pakistan?$'
q18 db 0Dh,0Ah, '8) Powerhouse of the cell?$'
q19 db 0Dh,0Ah, '9) Algorithms are?$'
q20 db 0Dh,0Ah,'10) Bread is a source of?$'

questions2 dw q11, q12, q13, q14, q15, q16, q17, q18, q19, q20

o11 db 0Dh,0Ah, 'a) Citric Acid     b) Hydrochloric Acid    c) Nitric Acid    d) Sulfuric Acid$',0
o12 db 0Dh,0Ah, 'a) Earth  b) Mars   c) Jupiter d) Venus$',0
o13 db 0Dh,0Ah, 'a) String  b) Integer   c) Char  d) Double$',0
o14 db 0Dh,0Ah, 'a) Mass      b) Ampere     c) Kelvin      d) Length$',0
o15 db 0Dh,0Ah, 'a) 3x10^8 b) 2x10^7  c) 4x10^2   d) 1x10^9$',0 
o16 db 0Dh,0Ah, 'a) Kuala Lumpur   b) Islamabad  c) Moscow  d) Washington DC$',0
o17 db 0Dh,0Ah, 'a) 12 August    b) 13 August    c) 15 August     d) 14 August$',0
o18 db 0Dh,0Ah, 'a) Ribosome b) Nucleus c) Cytoplasm d) Mitochondria$',0
o19 db 0Dh,0Ah, 'a) Computer programs b) Programming languages c) Step-by-step instructions d) Hardware device$',0
o20 db 0Dh,0Ah, 'a) Protein     b) Carbohydrates     c) Vitamins     d) Fat$',0

options2 dw o11, o12, o13, o14, o15, o16, o17, o18, o19, o20

corrA2 db 'D','C','B','C','A','A','D','D','C','B'
correctAnswers2 db 'd','c','b','c','a','a','d','d','c','b' 

viewUserMsg db 0Dh,0Ah, 'User: $'
viewScoreMsg db 0Dh,0Ah, 'Quiz 01 Score: $'
viewScore2Msg db 0Dh,0Ah, 'Quiz 02 Score: $'

profileHead db 0Dh,0Ah, '---- USER PROFILE ----', 0Dh,0Ah, '$' 
viewNameMsg db 0Dh,0Ah, 'Name: $'
viewRollMsg db 0Dh,0Ah, 'Registration Number: $'
opti01        db 0dh,0Ah,'1. Change Name$'
opti02        db 0dh,0Ah,'2. Change Registration Number$'
opti03        db 0dh,0Ah,'3. Exit$'        
newN db 0Dh, 0Ah, 'Enter New Name: $'
newE db 0Dh, 0Ah, 'Enter New Registration Number: $'
successN db 0Dh, 0Ah, 'Name changed successfully to: $'
successE db 0Dh, 0Ah, 'Registration Number changed successfully to: $'

enterAnswer db 0Dh,0Ah, 'Enter your answer (or S to skip): $'

correctMsg db 0Dh,0Ah, 'Correct!$'
wrongMsg   db 0Dh,0Ah, 'Wrong!$'

scoreMsg   db 0Dh,0Ah, 'Your total score: $' 


marks db 0  
marks2 db 0
nameInput   db 30       
            db ?         
            db 30 dup(0) 

regInput    db 30
            db ?
            db 30 dup(0)  
            
tickStart dw 0
tickNow   dw 0
TIME_LIMIT equ 180

timeoutMsg db 0Dh,0Ah, 'Time is up!$'             

.code
main proc
    mov ax, @data
    mov ds, ax

    mov dx, offset welcomeMsg
    mov ah, 09h
    int 21h
           
    mov dx, offset introMsg
    mov ah, 09h
    int 21h
    
    mov dx, offset msgName
    mov ah, 09h
    int 21h

    mov dx, offset nameInput
    mov ah, 0Ah
    int 21h

    lea si, nameInput       
    mov cl, [si+1]         
    xor ch, ch
    mov di, si
    add di, 2              
    add di, cx             
    mov byte ptr [di], '$'  

    mov dx, offset msgReg
    mov ah, 09h
    int 21h

    mov dx, offset regInput
    mov ah, 0Ah
    int 21h
    
    lea si, regInput
    mov cl, [si+1]
    xor ch, ch
    mov di, si
    add di, 2
    add di, cx
    mov byte ptr [di], '$'

    mov dx, offset msgWelcome
    mov ah, 09h
    int 21h
    
    mov dx, offset nameInput+2
    mov ah, 09h
    int 21h

    mov dx, offset msgStartBr
    mov ah, 09h
    int 21h

    mov dx, offset regInput+2
    mov ah, 09h
    int 21h

    mov dx, offset msgEndBr
    mov ah, 09h
    int 21h

    call mainMenu   

    mov dx, offset msgOutro
    mov ah, 09h
    int 21h  
    
    mov ah, 4ch
    int 21h

main endp  

MainMenu proc
MenuStart:
  
    mov dx, offset menuHeader
    mov ah, 09h
    int 21h

    mov dx, offset opt1
    mov ah, 09h
    int 21h

    mov dx, offset opt2
    mov ah, 09h
    int 21h

    mov dx, offset opt3
    mov ah, 09h
    int 21h

    mov dx, offset opt4
    mov ah, 09h
    int 21h

    mov dx, offset msgChoice
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h
    mov bl, al      

    cmp bl, '1'
    je CallQuiz

    cmp bl, '2'
    je CallViewScore

    cmp bl, '3'
    je CallViewProfile

    cmp bl, '4'
    je CallExitProgram

    mov dx, offset invalidMsg
    mov ah, 09h
    int 21h

    jmp MenuStart    

CallQuiz:
    call QuizModule  
    mov dx, offset msgSpace
    mov ah, 09h
    int 21h 
    jmp MenuStart

CallViewScore:
    mov dx, offset msgSpace
    mov ah, 09h
    int 21h  
    call ViewScore
    mov dx, offset msgSpace
    mov ah, 09h
    int 21h
    jmp MenuStart

CallViewProfile: 
    mov dx, offset msgSpace
    mov ah, 09h
    int 21h 
    call ViewProfile  
    mov dx, offset msgSpace
    mov ah, 09h
    int 21h 
    jmp MenuStart

CallExitProgram:
    mov dx, offset msgSpace
    mov ah, 09h
    int 21h 
    ret

mainMenu endp   

ViewScore proc
    mov dx, offset viewUserMsg
    mov ah, 09h
    int 21h

    mov dx, offset nameInput+2
    mov ah, 09h
    int 21h

    mov dx, offset msgStartBr
    mov ah, 09h
    int 21h

    mov dx, offset regInput+2
    mov ah, 09h
    int 21h

    mov dx, offset msgEndBr
    mov ah, 09h
    int 21h
    
    mov dx, offset viewScoreMsg
    mov ah, 09h
    int 21h

    mov al, marks
    call PrintScore
    
    mov dx, offset viewScore2Msg
    mov ah, 09h
    int 21h

    mov al, marks2
    call PrintScore
    
    mov dx, offset msgSpace
    mov ah, 09h
    int 21h
    ret

    ret
ViewScore endp 

QuizModule proc
 Start: 
    mov dx, offset msgSpace
    mov ah, 09h
    int 21h 
    mov dx, offset QuizHeader
    mov ah, 09h
    int 21h

    mov dx, offset opti1
    mov ah, 09h
    int 21h

    mov dx, offset opti2
    mov ah, 09h
    int 21h   
    
    mov dx, offset opti03
    mov ah, 09h
    int 21h
    
    mov dx, offset msgChoice
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h
    mov bl, al      

    cmp bl, '1'
    je CallQuiz1

    cmp bl, '2'
    je CallQuiz2
    
    cmp bl, '3'
    je ExiQuizModule 
    
    mov dx, offset invalidMsg
    mov ah, 09h
    int 21h

    jmp Start 
    
ExiQuizModule:
    ret
    
CallQuiz1: 
    mov dx, offset msgSpace
    mov ah, 09h
    int 21h 
    call Quiz1Module  
    mov dx, offset msgSpace
    mov ah, 09h
    int 21h 
    jmp Start

CallQuiz2:   
    mov dx, offset msgSpace
    mov ah, 09h
    int 21h 
    call Quiz2Module
    mov dx, offset msgSpace
    mov ah, 09h
    int 21h
    jmp Start      

Quiz1Module proc 
    mov dx, offset msgSpace
    mov ah, 09h
    int 21h  
    mov dx, offset Q1Head
    mov ah, 09h
    int 21h
StartQuiz:
    mov marks, 0    
    mov si, 0       

NextQuestion:
    cmp si, 10
    je ShowScore

    mov dx, offset msgSpace
    mov ah, 09h
    int 21h

    mov bx, si
    shl bx, 1       
    mov dx, questions[bx]
    mov ah, 09h
    int 21h
    mov dx, options[bx]
    mov ah, 09h
    int 21h

    mov dx, offset enterAnswer
    mov ah, 09h
    int 21h 
    
    mov ah, 00h
    int 1Ah
    mov tickStart, dx  
    
TimedInput:
    mov ah, 01h
    int 16h
    jz CheckTime

    mov ah, 00h
    int 16h
    mov bl, al
    
    mov dl, bl
    mov ah, 2h
    int 21h

    cmp bl, 's'
    je SkipQ
    cmp bl, 'S'
    je SkipQ

    mov al, correctAnswers[si]
    cmp bl, al
    je CorrectAns
    mov al, corrA[si]
    cmp bl, al
    je CorrectAns

    jmp WrongAns

CheckTime:
    mov ah, 00h
    int 1Ah
    mov tickNow, dx

    mov ax, tickNow
    sub ax, tickStart
    cmp ax, TIME_LIMIT
    jb TimedInput

    mov dx, offset timeoutMsg
    mov ah, 09h
    int 21h
    jmp SkipQ

WrongAns:
    mov dx, offset wrongMsg
    mov ah, 09h
    int 21h
    jmp ContinueQuiz

CorrectAns:
    mov dx, offset correctMsg
    mov ah, 09h
    int 21h
    inc marks

ContinueQuiz:
    inc si
    jmp NextQuestion

SkipQ:
    inc si
    jmp NextQuestion
ShowScore:
    mov dx, offset scoreMsg
    mov ah, 09h
    int 21h

    mov al, marks
    call PrintScore
    
    mov dx, offset msgSpace
    mov ah, 09h
    int 21h
    ret

Quiz1Module endp  

Quiz2Module proc 
    mov dx, offset msgSpace
    mov ah, 09h
    int 21h  
    mov dx, offset Q2Head
    mov ah, 09h
    int 21h
StartQuiz2:
    mov marks2, 0    
    mov si, 0       

NextQuestion2:
    cmp si, 10
    je ShowScore2

    mov dx, offset msgSpace
    mov ah, 09h
    int 21h

    mov bx, si
    shl bx, 1       
    mov dx, questions2[bx]
    mov ah, 09h
    int 21h
    mov dx, options2[bx]
    mov ah, 09h
    int 21h

    mov dx, offset enterAnswer
    mov ah, 09h
    int 21h
    mov ah, 00h
    int 1Ah
    mov tickStart, dx

TimedInput2:
    mov ah, 01h
    int 16h
    jz CheckTime2

    mov ah, 00h
    int 16h
    mov bl, al 
    
    mov dl, bl
    mov ah, 2h
    int 21h

    cmp bl, 's'
    je SkipQ2
    cmp bl, 'S'
    je SkipQ2

    mov al, correctAnswers2[si]
    cmp bl, al
    je CorrectAns2
    mov al, corrA2[si]
    cmp bl, al
    je CorrectAns2

    jmp WrongAns2
CheckTime2:
    mov ah, 00h
    int 1Ah
    mov tickNow, dx

    mov ax, tickNow
    sub ax, tickStart
    cmp ax, TIME_LIMIT
    jb TimedInput2

    mov dx, offset timeoutMsg
    mov ah, 09h
    int 21h
    jmp SkipQ2

WrongAns2:
    mov dx, offset wrongMsg
    mov ah, 09h
    int 21h
    jmp ContinueQuiz2

CorrectAns2:
    mov dx, offset correctMsg
    mov ah, 09h
    int 21h
    inc marks2

ContinueQuiz2:
    inc si
    jmp NextQuestion2

SkipQ2:
    inc si
    jmp NextQuestion2  
    
ShowScore2:
    mov dx, offset scoreMsg
    mov ah, 09h
    int 21h

    mov al, marks2
    call PrintScore
    
    mov dx, offset msgSpace
    mov ah, 09h
    int 21h
    ret

Quiz2Module endp

ViewProfile proc 
    mov dx, offset profileHead
    mov ah, 09h
    int 21h
    
    mov dx, offset viewNameMsg
    mov ah, 09h
    int 21h
      
    mov dx, offset nameInput+2
    mov ah, 09h
    int 21h

    mov dx, offset viewRollMsg
    mov ah, 09h
    int 21h

    mov dx, offset regInput+2
    mov ah, 09h
    int 21h    
    
PStart: 
    mov dx, offset msgSpace
    mov ah, 09h
    int 21h 
    
    mov dx, offset opti01
    mov ah, 09h
    int 21h

    mov dx, offset opti02
    mov ah, 09h
    int 21h 
    
    mov dx, offset opti03
    mov ah, 09h
    int 21h

    mov dx, offset msgChoice
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h
    mov bl, al      

    cmp bl, '1'
    je EditName

    cmp bl, '2'
    je EditRoll   
    
    cmp bl, '3'
    je CallExitProgram 
    
    mov dx, offset invalidMsg
    mov ah, 09h
    int 21h

    jmp PStart
    
EditName:
    mov dx, offset msgSpace
    mov ah, 09h  
    int 21h  
       
    mov dx, offset newN
    mov ah, 09h
    int 21h 
    
    mov dx, offset nameInput
    mov ah, 0Ah
    int 21h

    lea si, nameInput       
    mov cl, [si+1]         
    xor ch, ch
    mov di, si
    add di, 2              
    add di, cx             
    mov byte ptr [di], '$' 
    
    mov dx, offset successN
    mov ah, 09h
    int 21h  
    mov dx, offset nameInput+2
    mov ah, 09h
    int 21h

    jmp PStart

EditRoll:
    mov dx, offset msgSpace
    mov ah, 09h
    int 21h 
    
    mov dx, offset newE
    mov ah, 09h
    int 21h  

    mov dx, offset regInput
    mov ah, 0Ah
    int 21h
    
    lea si, regInput
    mov cl, [si+1]
    xor ch, ch
    mov di, si
    add di, 2
    add di, cx
    mov byte ptr [di], '$'
    
    mov dx, offset successE
    mov ah, 09h
    int 21h    
    mov dx, offset regInput+2
    mov ah, 09h
    int 21h
    
    jmp PStart

ViewProfile endp
                  
PrintScore proc
    cmp al, 10
    jne SingleDigit

    mov dl, '1'
    mov ah, 02h
    int 21h

    mov dl, '0'
    mov ah, 02h
    int 21h
    ret

SingleDigit:
    add al, 30h
    mov dl, al
    mov ah, 02h
    int 21h
    ret
PrintScore endp

end main            