	global	_ft_strcmp ; int strcmp(const char *s1, const char *s2);

_ft_strcmp:
		mov	rcx, 0

ft_strcmp_loop:
		mov	dl, [rdi + rcx]
		mov	dh, [rsi + rcx]
		inc	ecx
		cmp	dl, 0
		jz	ft_strcmp_eoa
		cmp	dl, dh
		je	ft_strcmp_loop
		jb	ft_strcmp_below
		ja	ft_strcmp_above		; optionnal

ft_strcmp_above:
		mov	rax, 1
		ret

ft_strcmp_below:
		mov	rax, -1
		ret

ft_strcmp_eoa:
		cmp	dh, 0
		jnz	ft_strcmp_below
		mov	rax, 0
		ret
