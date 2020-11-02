.model small
.data
a db 30h
b db 25h
c db ?
.code
mov ax,@data
mov ds,ax
mov bl,a
mov al,b
sub bl,al
mov c,bl
mov ah,4ch
int 21h
end
