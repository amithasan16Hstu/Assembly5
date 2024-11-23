.model small
.stack 100h
.data
 msg1 dw "HSTU CSE $"
 
 .code
     main proc
        mov ax,@data
        mov ds,ax
        
        mov ah,9
        lea dx,msg1
        int 21h
        
        mov ah,4ch
        int 21h
        main endp
     end main
 