global ft_strcmp

ft_strcmp:
	xor	rcx, rcx
	xor	rax, rax

ft_compare:
	cmp	BYTE[rdi + rcx], 0
	jz	return
	cmp	BYTE[rsi + rcx], 0
	jz	return
	mov	al, BYTE[rsi + rcx]
	cmp	BYTE[rdi + rcx], al
	jnz	return
	inc	rcx
	jmp	ft_compare

return:
	movzx	rax, BYTE[rdi + rcx]
	movzx	rdx, BYTE[rsi + rcx]
	sub	rax, rdx
`	ret
	
