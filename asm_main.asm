;This will be my assembly program Goal Is to try to access the value of length in this program 



section .data ;This is for Inilized data 
msg1: db "Current Count: %d",10,0

section .bss ;This is For unilized data 



section .text ;This is for the actual assembly Code 
extern printf ; Just in case I want to use it 
extern input ;This function gives me What ever they inputted 

global asm_main ;Making asm_main global to other programs

asm_main:

;Creating a Stack Frame 
push ebp ;Saving ebp og value
mov ebp, esp ;Moving og esp into ebp as  a place holder 

mov eax, 0 ;Zeroing out eax 

call input ;Let see what this does let see if it displays the msg here 
;SO NOW I HAVE THE VALUE THE USER ENTERED IN My EAX REGISTER :D 

;Let me create a quick loop Using Dot Notation so my program knows That its a local within a local 
mov ecx, 0 ;Going to compare ecx with this 

.Loop1:
cmp ecx, eax ; This is doing ECX - EAX and u can compare this with a lot of stuff 
je .done ;IF they equal each other we are done 
;ELSE RUN THE LOOP {

push eax ; PERSERVING ITS VALUE 

push ecx ;Pushing the first number on to stack SO ZERO CAN Make it be 1 If I inc Ecx Before 
push msg1 ;Now im pushing our Next MSG SO CURRENTLY ON TOP OF STACK 
call printf ;NOW IT WILL PRINT OUR MSG 
pop ecx ;NOW IM POPING OFF THE MSG 
pop ecx ;AND IM poping off the Number in the counter and putting it back 

pop eax ;RESTORING EAX 

inc ecx ;NOW IM incrementing ecx 
jmp .Loop1 ;AND NOW Im jumping back to our While Loop 
;}





.done:
;Destroying stack frame 

mov esp, ebp ;Getting back its og value 
pop ebp ;Getting back its og value as well

ret ;Return back to the instruction in which we called OR RETURN WHAT EVER IN eax 















