.model small
.stack 100h 
.data

msg1 dw "Enter a lower case: $"
msg2 dw "In its upper case: $"
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h
   
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,0Ah
    int 21h
    mov dl,0Dh
    int 21h
            
     mov ah,9
    lea dx,msg2
    int 21h        
    mov ah,2
    mov dl,bl
    sub dl,32
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main
    