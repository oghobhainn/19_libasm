		global	_ft_strcpy ; char *strcpy(char *dst, const char *src)

_ft_strcpy:
		mov		rcx, 0

ft_strcpy_loop:
		mov		dl, [rsi + rcx]
		mov		[rdi + rcx], dl
		inc		rcx
		cmp		dl, 0
		jne		ft_strcpy_loop
		mov		rax, rdi
		ret
