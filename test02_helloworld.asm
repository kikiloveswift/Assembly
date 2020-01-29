; demo hello world

assume cs:code, ds:data

data segment
    db 'Hello World!$'
data ends

code segment
start:
; 关联 data 数据段 
mov ax, data
mov ds, ax

; 打印字符串
mov dx, 0h
mov ah, 9h
int 21h  

; 正常退出程序
mov ax, 4c00h
int 21h

code ends

end start