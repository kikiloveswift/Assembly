; stack practice
assume cs: code, ds: data, ss: stack

data segment
    db 100 dup(0)
data ends

stack segment
    db 200 dup(0)
stack ends

code segment
start:   

mov ax, 1122h
mov bx, 3344h
; �� ax ������ѹ��ջ��
push ax
push bx
; �� ջ����sp ָ���λ�ã������ݸ�ֵ�� ax
pop ax
pop bx
       
; �����˳�����      
mov ax, 4c00h
int 21h

code ends

end start