; demo hello world

assume cs: code, ds: data

data segment
    db 'Hello World!$'
data ends

code segment
start:
; ���� data ���ݶ� 
mov ax, data
mov ds, ax

; ��ӡ�ַ���
mov dx, 0h
mov ah, 9h
int 21h  

; �����˳�����
mov ax, 4c00h
int 21h

code ends

end start