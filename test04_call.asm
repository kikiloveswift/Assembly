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

; ��ӡ����
print:
mov dx, offset str
mov ah, 9
int 21h
; �ص����ú�����λ�ü�������ִ�У�Ҳ���Ǽ���ִ�� call print ����һ�д���
; ������ӵĻ�����ô 24 �д����Ժ󲻻�ִ����
ret

code ends

end start