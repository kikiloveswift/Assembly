; call

assume ss: stack, ds: data, cs: code

stack segment 
    db 10 dup(0)
stack ends

data segment 
    str db 'Hello World!$'   
data ends

code segment
start:
mov ax, data
mov ds, ax

mov ax, stack
mov ss, ax
mov sp, 10

call print

mov ax, 4c00h
int 21h

; 打印函数
print:
mov dx, offset str
mov ah, 9
int 21h
; 回到调用函数的位置继续往下执行，也即是继续执行 call print 的下一行代码
; 如果不加的话，那么 24 行代码以后不会执行了
ret

code ends

end start