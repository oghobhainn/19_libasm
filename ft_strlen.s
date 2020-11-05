	global	_ft_strlen ; char *strdup(const char *s1)

_ft_strlen:
	mov	rax,	-1

loop:
	inc	rax
	cmp byte [rdi + rax], 0
	jne loop
	ret
