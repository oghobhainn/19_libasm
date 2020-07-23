	global	_ft_strlen

_ft_strlen:
	mov	rax, -1

ft_strlen_loop:
	inc	rax
	mov	dl, [rdi + rax]
	cmp	dl, 0
	jne	ft_strlen_loop
	ret
