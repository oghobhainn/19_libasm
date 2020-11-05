		global	_ft_read ; ssize_t read(int fildes, void *buf, size_t nbyte);

		extern	___error

_ft_read:
	mov	rax, 0x2000003
	syscall
	jc	error ; if there's an error, it'll be put into rax and jc will jump
	ret

error:
	push	rax
	call	___error ; returns add. loc of errno into rax
	pop		rdx
	mov		[rax], rdx ; puts error value at error add. loc
	mov		rax, -1
	ret
