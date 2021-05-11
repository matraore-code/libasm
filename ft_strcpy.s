global _ft_strcpy

_ft_strcpy:
	xor rcx, rcx

loop:
	cmp	BYTE[rsi + rcx], 0
	jz	return
	mov	dl, [rsi + rcx]
	mov	[rdi + rcx], dl
	inc	rcx
	jmp	loop

return:
	mov	BYTE[rdi + rcx], 0
	mov	rax, rdi
	ret
