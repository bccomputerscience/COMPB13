
CalcGrade proc
; Calculates a letter grade
; Receives: EAX = numeric grade
; Returns:  AL = letter grade

Grade_A:
	cmp	eax,90
	jb	Grade_B
	mov	al,'A'
	jmp	finished

Grade_B:
	cmp	eax,80
	jb	Grade_C
	mov	al,'B'
	jmp	finished
	
Grade_C:
	cmp	eax,70
	jb	Grade_D
	mov	al,'C'
	jmp	finished

Grade_D:
	cmp	eax,60
	jb	Grade_F
	mov	al,'D'
	jmp	finished

Grade_F:
	mov	al,'F'

finished:
    ret