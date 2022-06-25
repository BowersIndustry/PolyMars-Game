
@{{BLOCK(ScarletMap)

@=======================================================================
@
@	ScarletMap, 192x16@8, 
@	+ palette 256 entries, not compressed
@	+ 48 tiles Metatiled by 2x2 not compressed
@	Total size: 512 + 3072 = 3584
@
@	Time-stamp: 2022-06-23, 14:42:26
@	Exported by Cearn's GBA Image Transmogrifier, v0.8.17
@	( http://www.coranac.com/projects/#grit )
@
@=======================================================================

	.section .rodata
	.align	2
	.global ScarletMapTiles		@ 3072 unsigned chars
	.hidden ScarletMapTiles
ScarletMapTiles:
	.word 0x00000000,0x00000000,0x00000000,0x03030300,0x00000000,0x04070903,0x03000000,0x04040709
	.word 0x09030000,0x04040407,0x07030000,0x04040404,0x04030000,0x04040404,0x04030000,0x04040404
	.word 0x00000000,0x00030300,0x00030303,0x03090703,0x03040404,0x03070306,0x04040404,0x03040303
	.word 0x04040404,0x00030304,0x04040404,0x00000304,0x04040404,0x00000304,0x04040404,0x00000304
	.word 0x04030000,0x04040404,0x04030000,0x04040404,0x04030000,0x04040404,0x03000000,0x04040403
	.word 0x0B030000,0x0303030B,0x03030000,0x03030303,0x03000000,0x03030303,0x03030000,0x03030303
	.word 0x04040404,0x00000304,0x04040404,0x00000304,0x04040404,0x00000304,0x03040404,0x00000003
	.word 0x0B030303,0x0000030B,0x03030303,0x00000303,0x01010808,0x00000003,0x03030303,0x00000303

	.word 0x00000000,0x00000000,0x00000000,0x03030300,0x00000000,0x04070903,0x03000000,0x04040709
	.word 0x09030000,0x04040407,0x07030000,0x04040404,0x04030000,0x04040404,0x04030000,0x04040404
	.word 0x00000000,0x00030300,0x00030303,0x03090703,0x03040404,0x03070306,0x04040404,0x03040303
	.word 0x04040404,0x00030304,0x04040404,0x00000304,0x04040404,0x00000304,0x04040404,0x00000304
	.word 0x04030000,0x04040404,0x04030000,0x04040404,0x04030000,0x04040404,0x03000000,0x04040403
	.word 0x0B030000,0x0303030B,0x03030000,0x03030303,0x03000000,0x01080808,0x03030000,0x03030303
	.word 0x04040404,0x00000304,0x04040404,0x00000304,0x04040404,0x00000304,0x03040404,0x00000003
	.word 0x0B030303,0x0000030B,0x03030303,0x00000303,0x01010808,0x00000003,0x03030303,0x00000303

	.word 0x00000000,0x00000000,0x00000000,0x03030300,0x00000000,0x04070903,0x03000000,0x04040709
	.word 0x09030000,0x04040407,0x07030000,0x04040404,0x04030000,0x04040404,0x04030000,0x04040404
	.word 0x00000000,0x00030300,0x00030303,0x03090703,0x03040404,0x03070306,0x04040404,0x03040303
	.word 0x04040404,0x00030304,0x04040404,0x00000304,0x04040404,0x00000304,0x04040404,0x00000304
	.word 0x04030000,0x04040404,0x04030000,0x04040404,0x04030000,0x04040404,0x03000000,0x04040403
	.word 0x0B030000,0x0303030B,0x03030000,0x03030303,0x03000000,0x01080808,0x03030000,0x03030303
	.word 0x04040404,0x00000304,0x04040404,0x00000304,0x04040404,0x00000304,0x03040404,0x00000003
	.word 0x0B030303,0x0000030B,0x03030303,0x00000303,0x03030303,0x00000003,0x03030303,0x00000303

	.word 0x00030300,0x00000000,0x03070903,0x03030300,0x06030703,0x04070903,0x03030403,0x04040709
	.word 0x09030300,0x04040407,0x07030000,0x02020404,0x04030000,0x0B030504,0x04030000,0x0B030A02
	.word 0x00000000,0x00000000,0x00030303,0x00000000,0x03040404,0x00000000,0x04040404,0x00000003
	.word 0x04040404,0x00000304,0x04040202,0x00000304,0x0405030B,0x00000304,0x020A030B,0x00000304
	.word 0x04030000,0x0B0B0B0B,0x04030000,0x030B0B0B,0x04030000,0x0B0B0303,0x03000000,0x03030101
	.word 0x0B030000,0x0801030B,0x03030000,0x03030303,0x03000000,0x03030303,0x03030000,0x03030303
	.word 0x0B0B0B0B,0x00000304,0x0B0B0B03,0x00000304,0x03030B0B,0x00000304,0x01010303,0x00000003
	.word 0x0B030108,0x0000030B,0x03030303,0x00000303,0x08080801,0x00000003,0x03030303,0x00000303

	.word 0x00030300,0x00000000,0x03070903,0x03030300,0x06030703,0x04070903,0x03030403,0x04040709
	.word 0x09030300,0x04040407,0x07030000,0x02020404,0x04030000,0x0B030504,0x04030000,0x0B030A02
	.word 0x00000000,0x00000000,0x00030303,0x00000000,0x03040404,0x00000000,0x04040404,0x00000003
	.word 0x04040404,0x00000304,0x04040202,0x00000304,0x0405030B,0x00000304,0x020A030B,0x00000304
	.word 0x04030000,0x0B0B0B0B,0x04030000,0x030B0B0B,0x04030000,0x0B0B0303,0x03000000,0x03030101
	.word 0x0B030000,0x0801030B,0x03030000,0x03030303,0x03000000,0x08080101,0x03030000,0x03030303
	.word 0x0B0B0B0B,0x00000304,0x0B0B0B03,0x00000304,0x03030B0B,0x00000304,0x01010303,0x00000003
	.word 0x0B030108,0x0000030B,0x03030303,0x00000303,0x08080801,0x00000003,0x03030303,0x00000303

	.word 0x00030300,0x00000000,0x03070903,0x03030300,0x06030703,0x04070903,0x03030403,0x04040709
	.word 0x09030300,0x04040407,0x07030000,0x02020404,0x04030000,0x0B030504,0x04030000,0x0B030A02
	.word 0x00000000,0x00000000,0x00030303,0x00000000,0x03040404,0x00000000,0x04040404,0x00000003
	.word 0x04040404,0x00000304,0x04040202,0x00000304,0x0405030B,0x00000304,0x020A030B,0x00000304
	.word 0x04030000,0x0B0B0B0B,0x04030000,0x030B0B0B,0x04030000,0x0B0B0303,0x03000000,0x03030101
	.word 0x0B030000,0x0801030B,0x03030000,0x03030303,0x03000000,0x08080101,0x03030000,0x03030303
	.word 0x0B0B0B0B,0x00000304,0x0B0B0B03,0x00000304,0x03030B0B,0x00000304,0x01010303,0x00000003
	.word 0x0B030108,0x0000030B,0x03030303,0x00000303,0x03030303,0x00000003,0x03030303,0x00000303

	.word 0x00030300,0x00000000,0x03070903,0x03030300,0x06030703,0x04070903,0x03030403,0x04040709
	.word 0x09030300,0x04040407,0x07030000,0x0B040404,0x04030000,0x03050404,0x04030000,0x030A0B04
	.word 0x00000000,0x00000000,0x00030303,0x00000000,0x03040404,0x00000000,0x04040404,0x00000003
	.word 0x04040404,0x00000304,0x040B0B0B,0x00000304,0x05030B0B,0x00000304,0x0A030B0B,0x0000030B
	.word 0x04030000,0x0B0B0B04,0x04030000,0x0B0B0B0B,0x04030000,0x0B030303,0x03000000,0x03010101
	.word 0x0B030000,0x0101030B,0x03030000,0x03030303,0x00000000,0x03030303,0x03000000,0x03030303
	.word 0x0B0B0B0B,0x0000030B,0x0B0B0303,0x00000003,0x030B0B0B,0x00000000,0x03030303,0x00000003
	.word 0x03010808,0x0000030B,0x03030303,0x00000303,0x03080108,0x00000003,0x03030303,0x00000003

	.word 0x00030300,0x00000000,0x03070903,0x03030300,0x06030703,0x04070903,0x03030403,0x04040709
	.word 0x09030300,0x04040407,0x07030000,0x0B040404,0x04030000,0x03050404,0x04030000,0x030A0B04
	.word 0x00000000,0x00000000,0x00030303,0x00000000,0x03040404,0x00000000,0x04040404,0x00000003
	.word 0x04040404,0x00000304,0x040B0B0B,0x00000304,0x05030B0B,0x00000304,0x0A030B0B,0x0000030B
	.word 0x04030000,0x0B0B0B04,0x04030000,0x0B0B0B0B,0x04030000,0x0B030303,0x03000000,0x03010101
	.word 0x0B030000,0x0101030B,0x03030000,0x03030303,0x00000000,0x08010103,0x03000000,0x03030303
	.word 0x0B0B0B0B,0x0000030B,0x0B0B0303,0x00000003,0x030B0B0B,0x00000000,0x03030303,0x00000003
	.word 0x03010808,0x0000030B,0x03030303,0x00000303,0x03080108,0x00000003,0x03030303,0x00000003

	.word 0x00030300,0x00000000,0x03070903,0x03030300,0x06030703,0x04070903,0x03030403,0x04040709
	.word 0x09030300,0x04040407,0x07030000,0x0B040404,0x04030000,0x03050404,0x04030000,0x030A0B04
	.word 0x00000000,0x00000000,0x00030303,0x00000000,0x03040404,0x00000000,0x04040404,0x00000003
	.word 0x04040404,0x00000304,0x040B0B0B,0x00000304,0x05030B0B,0x00000304,0x0A030B0B,0x0000030B
	.word 0x04030000,0x0B0B0B04,0x04030000,0x0B0B0B0B,0x04030000,0x0B030303,0x03000000,0x03010101
	.word 0x0B030000,0x0101030B,0x03030000,0x03030303,0x00000000,0x08010103,0x03000000,0x03030303
	.word 0x0B0B0B0B,0x0000030B,0x0B0B0303,0x00000003,0x030B0B0B,0x00000000,0x03030303,0x00000003
	.word 0x03010808,0x0000030B,0x03030303,0x00000303,0x03030303,0x00000003,0x03030303,0x00000003

	.word 0x00000000,0x00000303,0x03000000,0x03030304,0x06030000,0x04040403,0x03000000,0x04040404
	.word 0x04030000,0x04040404,0x04030000,0x0B0B0B04,0x04030000,0x0B0B0305,0x0B030000,0x0B0B030A
	.word 0x00000000,0x00000000,0x00030303,0x00000000,0x03090704,0x00000000,0x09070404,0x00000003
	.word 0x07040404,0x00000309,0x0404040B,0x00000307,0x04040503,0x00000304,0x040B0A03,0x00000304
	.word 0x0B030000,0x0B0B0B0B,0x03000000,0x03030B0B,0x00000000,0x0B0B0B03,0x03000000,0x03030303
	.word 0x0B030000,0x08080103,0x03030000,0x03030303,0x03000000,0x03030303,0x03000000,0x03030303
	.word 0x040B0B0B,0x00000304,0x0B0B0B0B,0x00000304,0x0303030B,0x00000304,0x01010103,0x00000003
	.word 0x0B030101,0x0000030B,0x03030303,0x00000303,0x03010108,0x00000000,0x03030303,0x00000003

	.word 0x00000000,0x00000303,0x03000000,0x03030304,0x06030000,0x04040403,0x03000000,0x04040404
	.word 0x04030000,0x04040404,0x04030000,0x0B0B0B04,0x04030000,0x0B0B0305,0x0B030000,0x0B0B030A
	.word 0x00000000,0x00000000,0x00030303,0x00000000,0x03090704,0x00000000,0x09070404,0x00000003
	.word 0x07040404,0x00000309,0x0404040B,0x00000307,0x04040503,0x00000304,0x040B0A03,0x00000304
	.word 0x0B030000,0x0B0B0B0B,0x03000000,0x03030B0B,0x00000000,0x0B0B0B03,0x03000000,0x03030303
	.word 0x0B030000,0x08080103,0x03030000,0x03030303,0x03000000,0x08010803,0x03000000,0x03030303
	.word 0x040B0B0B,0x00000304,0x0B0B0B0B,0x00000304,0x0303030B,0x00000304,0x01010103,0x00000003
	.word 0x0B030101,0x0000030B,0x03030303,0x00000303,0x03010108,0x00000000,0x03030303,0x00000003

	.word 0x00000000,0x00000303,0x03000000,0x03030304,0x06030000,0x04040403,0x03000000,0x04040404
	.word 0x04030000,0x04040404,0x04030000,0x0B0B0B04,0x04030000,0x0B0B0305,0x0B030000,0x0B0B030A
	.word 0x00000000,0x00000000,0x00030303,0x00000000,0x03090704,0x00000000,0x09070404,0x00000003
	.word 0x07040404,0x00000309,0x0404040B,0x00000307,0x04040503,0x00000304,0x040B0A03,0x00000304
	.word 0x0B030000,0x0B0B0B0B,0x03000000,0x03030B0B,0x00000000,0x0B0B0B03,0x03000000,0x03030303
	.word 0x0B030000,0x08080103,0x03030000,0x03030303,0x03000000,0x08010803,0x03000000,0x03030303
	.word 0x040B0B0B,0x00000304,0x0B0B0B0B,0x00000304,0x0303030B,0x00000304,0x01010103,0x00000003
	.word 0x0B030101,0x0000030B,0x03030303,0x00000303,0x03030303,0x00000000,0x03030303,0x00000003

	.section .rodata
	.align	2
	.global ScarletMapPal		@ 512 unsigned chars
	.hidden ScarletMapPal
ScarletMapPal:
	.hword 0x0000,0x54D2,0x3EDB,0x0C43,0x6C19,0x739C,0x304C,0x741B
	.hword 0x5D17,0x7C1D,0x7FFF,0x431E,0x0000,0x0000,0x0000,0x0000
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

@}}BLOCK(ScarletMap)