.model small
.data
a db 4 dup(?)
b db 4 dup(?)
res db 4 dup(?)
.code
mov ax,@data
mov ds,ax
mov si,03h
mov cl,04h
clc
deciadd:
mov al,a[si]
adc al,b[si]
daa
mov res[si],al
dec si
loop deciadd
mov ah,4ch
int 21h
end
