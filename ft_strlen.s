global _ft_strlen

_ft_strlen:
	xor rcx, rcx			

_loop:
	cmp BYTE [rdi + rcx], 0
	je	_return
	inc rcx
	jmp _loop				
_return:
	mov rax, rcx
	ret
