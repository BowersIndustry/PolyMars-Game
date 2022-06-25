
@{{BLOCK(Hearts)

@=======================================================================
@
@	Hearts, 32x16@8, 
@	Transparent color : FF,00,F6
@	+ palette 256 entries, not compressed
@	+ 8 tiles Metatiled by 2x2 not compressed
@	Total size: 512 + 512 = 1024
@
@	Time-stamp: 2022-06-24, 14:43:57
@	Exported by Cearn's GBA Image Transmogrifier, v0.8.17
@	( http://www.coranac.com/projects/#grit )
@
@=======================================================================

	.section .rodata
	.align	2
	.global HeartsTiles		@ 512 unsigned chars
	.hidden HeartsTiles
HeartsTiles:
	.word 0x02020000,0x00000202,0x03030200,0x00020103,0x03030302,0x02010303,0x03030302,0x03030303
	.word 0x03030302,0x03030303,0x03030302,0x03030303,0x03030302,0x03030303,0x03030302,0x03030303
	.word 0x02020000,0x00000202,0x03030200,0x00020103,0x03030302,0x02010303,0x03030303,0x02010303
	.word 0x03030303,0x02010303,0x03030303,0x02010303,0x03030303,0x02010303,0x03030303,0x02010303
	.word 0x03030302,0x03030303,0x03030200,0x03030303,0x03020000,0x03030303,0x02000000,0x03030303
	.word 0x00000000,0x03030302,0x00000000,0x03030200,0x00000000,0x03020000,0x00000000,0x02000000
	.word 0x03030303,0x02010303,0x03030303,0x00020103,0x03030303,0x00000201,0x01030303,0x00000002
	.word 0x02010303,0x00000000,0x00020103,0x00000000,0x00000201,0x00000000,0x00000002,0x00000000

	.word 0x02020000,0x00000202,0x00000200,0x00020000,0x00000002,0x02000000,0x00000002,0x00000000
	.word 0x00000002,0x00000000,0x00000002,0x00000000,0x00000002,0x00000000,0x00000002,0x00000000
	.word 0x02020000,0x00000202,0x00000200,0x00020000,0x00000002,0x02000000,0x00000000,0x02000000
	.word 0x00000000,0x02000000,0x00000000,0x02000000,0x00000000,0x02000000,0x00000000,0x02000000
	.word 0x00000002,0x00000000,0x00000200,0x00000000,0x00020000,0x00000000,0x02000000,0x00000000
	.word 0x00000000,0x00000002,0x00000000,0x00000200,0x00000000,0x00020000,0x00000000,0x02000000
	.word 0x00000000,0x02000000,0x00000000,0x00020000,0x00000000,0x00000200,0x00000000,0x00000002
	.word 0x02000000,0x00000000,0x00020000,0x00000000,0x00000200,0x00000000,0x00000002,0x00000000

	.section .rodata
	.align	2
	.global HeartsPal		@ 512 unsigned chars
	.hidden HeartsPal
HeartsPal:
	.hword 0x7C1F,0x0016,0x7FFF,0x001F,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

@}}BLOCK(Hearts)