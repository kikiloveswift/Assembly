; demo hello world
; ���κκ���ֻΪ���ѿ�����
assume cs: code, ds: data

data segment
    ; db ���� databyte 1 ���ֽ�
    ; dw ���� data word 2 ���ֽ�
    db 11h, 'Hello World!$' 
    age db 20   
    ; ����10�������� 6
    db 10 dup(6)
data ends

code segment
start:
; ���� data ���ݶ� 
mov ax, data
mov ds, ax

; ��ӡ�ַ���
mov dx, 01h
mov ah, 9h
int 21h  

; �����˳�����
mov ax, 4c00h
int 21h

code ends

end start