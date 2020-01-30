; stack practice
assume cs: code, ds: data, ss: stack

data segment
    db 100 dup(0)
data ends

stack segment
    db 10 dup(3)
stack ends

code segment
start:   

mov ax, data
mov ds, ax

mov ax, stack
mov ss, ax
          
; 设置（初始化）栈顶指针          
mov sp, 10

mov ax, 1122h
mov bx, 3344h

; 把 ax 的数据压入栈中
push ax
push bx

; 把 栈顶（sp 指向的位置）的数据赋值给 ax
pop ax
pop bx
       
; 正常退出程序      
mov ax, 4c00h
int 21h

code ends

end start