# lteo - a "Hello World" program in mips64(el) asm

	.data			# variables and other declarables go in this section
	.align	3		# align next (lteo) to 8-byte boundary
lteo:	.asciiz	"This is a program, if you know what I mean.\n"	# NULL-terminated

	.text			# program goes in this section
	.globl	main		# main is a global function
	.align	2		# align next (main) to 4-byte boudnary
	.ent	main		# go to (enter) main and start execution

main:
	dla	$a0, lteo	# double load address, because we're 64-bit
	li	$v0, 4		# this says "we want to print a string"
	syscall			# do the above
	li	$v0, 10		# says "we're done, give control back to the OS"
	syscall			# do it
	.end	main		# end of program
