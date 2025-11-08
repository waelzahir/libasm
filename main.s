	.file	"main.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"1222"
.LC1:
	.string	" \n%d\n%d\n"
.LC2:
	.string	""
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR [rbp-8], OFFSET FLAT:.LC0
	mov	esi, 0
	mov	edi, -55
	call	ft_putnbr_base
	mov	DWORD PTR [rbp-12], eax
	mov	rax, QWORD PTR [rbp-8]
	mov	edx, eax
	mov	eax, DWORD PTR [rbp-12]
	mov	esi, eax
	mov	edi, OFFSET FLAT:.LC1
	mov	eax, 0
	call	printf
	mov	edi, OFFSET FLAT:.LC2
	call	perror
	mov	eax, 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (GNU) 14.3.0"
	.section	.note.GNU-stack,"",@progbits
