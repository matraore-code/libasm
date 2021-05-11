global _ft_strdup
extern _malloc
extern _ft_strlen
extern _ft_strcpy
extern ___error


_ft_strdup:
	call	_ft_strlen
	push	rdi			
	inc	rax
	mov	rdi, rax
	call	_malloc
	cmp	rax, 0
	je	error	
	mov	rdi, rax		
	pop	rsi	
	call	_ft_strcpy
	ret

error:
	mov rax, 0		
	ret				
