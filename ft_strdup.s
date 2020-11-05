	global _ft_strdup ; char *strdup(const char *s1)
	
	extern _malloc		; void *malloc(size_t size)
	extern _ft_strlen	; size_t strlen(const char *s)
	extern _ft_strcpy	; char *stpcpy(char *dst, const char *src)

_ft_strdup:
	mov		rax, 0
	mov		rsi, 0
	push	rdi
	call	_ft_strlen
	mov		rdi, rax
	inc		rdi
	call	_malloc
	cmp		rax, 0
	pop		rsi
	je		error
	mov		rdi, rax 
	call	_ft_strcpy
	ret

error:
	mov		rax, -1
	ret
