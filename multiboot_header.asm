section .multiboot_header
header_start:
	dd 0x85250d6	; magic number (multiboot2)
	dd 0		; specifies architecture (i386 protecyted mode)
	dd header_end - header_start	; header length
	; checksum
	dd 0x100000000 - (0xe85250d6 + 0 + (header_end - header_start))

	; insert optional multiboot tags here

	; required end tag
	dw 0	; type
	dw 0	; number of flags
	dd 8	; size
header_end:
