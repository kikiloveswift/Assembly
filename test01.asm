mov ax, 2357H
mov bx, 3421H
; 34 + 57 = 8B ax = 238B
add al, bh              
; 8B + 34 = BF21 
add bh, al


; set data into memory 1000H:33
          
mov ax, 3456H         
mov cx, 1000H
mov ds, cx 
; mov ds:[0h], ax
mov [0h], ax  
; mov word ptr [02h], 67h
; change 03h to 00
; mov byte ptr [02h], 67h
; only change 02h memory value 
mov [02h], 67h 