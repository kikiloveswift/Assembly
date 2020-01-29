; demo hello world
; 无任何含义只为提醒开发者
assume cs: code, ds: data

data segment
    ; db 代表 databyte 1 个字节
    ; dw 代表 data word 2 个字节
    db 11h, 'Hello World!$' 
    age db 20   
    ; 生成10个连续的 6
    db 10 dup(6)
data ends

code segment
start:
; 关联 data 数据段 
mov ax, data
mov ds, ax

; 打印字符串
mov dx, 01h
mov ah, 9h
int 21h  

; 正常退出程序
mov ax, 4c00h
int 21h

code ends

end start