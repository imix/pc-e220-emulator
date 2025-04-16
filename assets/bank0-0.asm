; z80dasm 1.1.3
; command line: z80dasm -l -a -g 0x0000 -t bank0.bin

	org	00000h

l0000h:
	jp l122dh		;0000	c3 2d 12 	. - . 
l0003h:
	nop			;0003	00 	. 
l0004h:
	nop			;0004	00 	. 
l0005h:
	nop			;0005	00 	. 
l0006h:
	nop			;0006	00 	. 
	nop			;0007	00 	. 
l0008h:
	nop			;0008	00 	. 
l0009h:
	nop			;0009	00 	. 
l000ah:
	nop			;000a	00 	. 
	nop			;000b	00 	. 
	nop			;000c	00 	. 
	nop			;000d	00 	. 
l000eh:
	nop			;000e	00 	. 
	nop			;000f	00 	. 
l0010h:
	ld hl,07f31h		;0010	21 31 7f 	! 1  
	res 1,(hl)		;0013	cb 8e 	. . 
	ld hl,07f18h		;0015	21 18 7f 	! .  
l0018h:
	jr l002ch		;0018	18 12 	. . 
	ld hl,07f31h		;001a	21 31 7f 	! 1  
	res 2,(hl)		;001d	cb 96 	. . 
	ld hl,07f20h		;001f	21 20 7f 	!    
l0022h:
	jr l002ch		;0022	18 08 	. . 
	ld hl,07f31h		;0024	21 31 7f 	! 1  
	res 0,(hl)		;0027	cb 86 	. . 
	ld hl,07f10h		;0029	21 10 7f 	! .  
l002ch:
	ld a,000h		;002c	3e 00 	> . 
	ld (hl),a			;002e	77 	w 
	inc l			;002f	2c 	, 
	ld (hl),a			;0030	77 	w 
	inc l			;0031	2c 	, 
	ld (hl),a			;0032	77 	w 
	inc l			;0033	2c 	, 
	ld (hl),a			;0034	77 	w 
	inc l			;0035	2c 	, 
l0036h:
	ld (hl),a			;0036	77 	w 
	inc l			;0037	2c 	, 
l0038h:
	ld (hl),a			;0038	77 	w 
	inc l			;0039	2c 	, 
	ld (hl),a			;003a	77 	w 
	inc l			;003b	2c 	, 
	ld (hl),a			;003c	77 	w 
	ret			;003d	c9 	. 
	ld hl,07f31h		;003e	21 31 7f 	! 1  
	res 1,(hl)		;0041	cb 8e 	. . 
	ld hl,07f18h		;0043	21 18 7f 	! .  
	ld b,008h		;0046	06 08 	. . 
	ld a,000h		;0048	3e 00 	> . 
l004ah:
	ld (hl),a			;004a	77 	w 
	inc l			;004b	2c 	, 
	djnz l004ah		;004c	10 fc 	. . 
	ld l,01ah		;004e	2e 1a 	. . 
l0050h:
	set 4,(hl)		;0050	cb e6 	. . 
	ret			;0052	c9 	. 
	ld hl,07f19h		;0053	21 19 7f 	! .  
l0056h:
	jr l0065h		;0056	18 0d 	. . 
	ld hl,07f21h		;0058	21 21 7f 	! !  
	jr l0065h		;005b	18 08 	. . 
	ld hl,07f29h		;005d	21 29 7f 	! )  
	jr l0065h		;0060	18 03 	. . 
	ld hl,07f11h		;0062	21 11 7f 	! .  
l0065h:
	ld a,(hl)			;0065	7e 	~ 
	and 0f0h		;0066	e6 f0 	. . 
	ld (hl),a			;0068	77 	w 
	inc l			;0069	2c 	, 
	ld b,006h		;006a	06 06 	. . 
	ld a,000h		;006c	3e 00 	> . 
l006eh:
	ld (hl),a			;006e	77 	w 
	inc l			;006f	2c 	, 
	djnz l006eh		;0070	10 fc 	. . 
	ret			;0072	c9 	. 
	ld hl,07f18h		;0073	21 18 7f 	! .  
	jr l007bh		;0076	18 03 	. . 
	ld hl,07f10h		;0078	21 10 7f 	! .  
l007bh:
	ld (hl),000h		;007b	36 00 	6 . 
l007dh:
	inc l			;007d	2c 	, 
	ld a,(hl)			;007e	7e 	~ 
	and 00fh		;007f	e6 0f 	. . 
	ld (hl),a			;0081	77 	w 
	ret			;0082	c9 	. 
	ld hl,07f31h		;0083	21 31 7f 	! 1  
	res 3,(hl)		;0086	cb 9e 	. . 
	bit 1,(hl)		;0088	cb 4e 	. N 
	jr z,l008eh		;008a	28 02 	( . 
	set 3,(hl)		;008c	cb de 	. . 
l008eh:
	ld de,07f28h		;008e	11 28 7f 	. (  
	jr l00b5h		;0091	18 22 	. " 
	ld hl,07f31h		;0093	21 31 7f 	! 1  
	res 1,(hl)		;0096	cb 8e 	. . 
	bit 3,(hl)		;0098	cb 5e 	. ^ 
	jr z,l009eh		;009a	28 02 	( . 
	set 1,(hl)		;009c	cb ce 	. . 
l009eh:
	ld de,07f18h		;009e	11 18 7f 	. .  
	ld hl,07f28h		;00a1	21 28 7f 	! (  
	jp 08119h		;00a4	c3 19 81 	. . . 
	ld hl,07f31h		;00a7	21 31 7f 	! 1  
	res 0,(hl)		;00aa	cb 86 	. . 
	bit 1,(hl)		;00ac	cb 4e 	. N 
	jr z,l00b2h		;00ae	28 02 	( . 
	set 0,(hl)		;00b0	cb c6 	. . 
l00b2h:
	ld de,07f10h		;00b2	11 10 7f 	. .  
l00b5h:
	ld hl,07f18h		;00b5	21 18 7f 	! .  
	jr l0119h		;00b8	18 5f 	. _ 
	ld hl,07f31h		;00ba	21 31 7f 	! 1  
	res 0,(hl)		;00bd	cb 86 	. . 
	bit 3,(hl)		;00bf	cb 5e 	. ^ 
l00c1h:
	jr z,l00c5h		;00c1	28 02 	( . 
	set 0,(hl)		;00c3	cb c6 	. . 
l00c5h:
	ld de,07f10h		;00c5	11 10 7f 	. .  
	ld hl,07f28h		;00c8	21 28 7f 	! (  
	jr l0119h		;00cb	18 4c 	. L 
	ld hl,07f31h		;00cd	21 31 7f 	! 1  
	res 1,(hl)		;00d0	cb 8e 	. . 
	bit 0,(hl)		;00d2	cb 46 	. F 
	jr z,l00d8h		;00d4	28 02 	( . 
	set 1,(hl)		;00d6	cb ce 	. . 
l00d8h:
	ld de,07f18h		;00d8	11 18 7f 	. .  
	jr l0116h		;00db	18 39 	. 9 
	ld hl,07f31h		;00dd	21 31 7f 	! 1  
	res 0,(hl)		;00e0	cb 86 	. . 
	bit 2,(hl)		;00e2	cb 56 	. V 
	jr z,l00e8h		;00e4	28 02 	( . 
	set 0,(hl)		;00e6	cb c6 	. . 
l00e8h:
	ld de,07f10h		;00e8	11 10 7f 	. .  
	ld hl,07f20h		;00eb	21 20 7f 	!    
	jr l0119h		;00ee	18 29 	. ) 
	ld de,07f20h		;00f0	11 20 7f 	.    
	ld hl,07f18h		;00f3	21 18 7f 	! .  
	jr l0119h		;00f6	18 21 	. ! 
	ld hl,07f31h		;00f8	21 31 7f 	! 1  
	res 2,(hl)		;00fb	cb 96 	. . 
	bit 0,(hl)		;00fd	cb 46 	. F 
l00ffh:
	jr z,l0103h		;00ff	28 02 	( . 
l0101h:
	set 2,(hl)		;0101	cb d6 	. . 
l0103h:
	ld de,07f20h		;0103	11 20 7f 	.    
	jr l0116h		;0106	18 0e 	. . 
	ld hl,07f31h		;0108	21 31 7f 	! 1  
	res 3,(hl)		;010b	cb 9e 	. . 
	bit 0,(hl)		;010d	cb 46 	. F 
	jr z,l0113h		;010f	28 02 	( . 
	set 3,(hl)		;0111	cb de 	. . 
l0113h:
	ld de,07f28h		;0113	11 28 7f 	. (  
l0116h:
	ld hl,07f10h		;0116	21 10 7f 	! .  
l0119h:
	ld bc,l0008h		;0119	01 08 00 	. . . 
	ldir		;011c	ed b0 	. . 
	ret			;011e	c9 	. 
	ld hl,07f31h		;011f	21 31 7f 	! 1  
	res 1,(hl)		;0122	cb 8e 	. . 
	bit 2,(hl)		;0124	cb 56 	. V 
	jr z,l012ah		;0126	28 02 	( . 
	set 1,(hl)		;0128	cb ce 	. . 
l012ah:
	ld de,07f18h		;012a	11 18 7f 	. .  
	ld hl,07f20h		;012d	21 20 7f 	!    
	jr l0119h		;0130	18 e7 	. . 
	ld hl,07f31h		;0132	21 31 7f 	! 1  
	res 3,(hl)		;0135	cb 9e 	. . 
	bit 2,(hl)		;0137	cb 56 	. V 
	jr z,l013dh		;0139	28 02 	( . 
	set 3,(hl)		;013b	cb de 	. . 
l013dh:
	ld de,07f28h		;013d	11 28 7f 	. (  
l0140h:
	ld hl,07f20h		;0140	21 20 7f 	!    
	jr l0119h		;0143	18 d4 	. . 
	ld hl,07f31h		;0145	21 31 7f 	! 1  
	ld a,002h		;0148	3e 02 	> . 
	and (hl)			;014a	a6 	. 
	rrca			;014b	0f 	. 
	ld c,a			;014c	4f 	O 
	ld a,001h		;014d	3e 01 	> . 
	and (hl)			;014f	a6 	. 
	rlca			;0150	07 	. 
	ld b,a			;0151	47 	G 
	ld a,0fch		;0152	3e fc 	> . 
	and (hl)			;0154	a6 	. 
	or b			;0155	b0 	. 
	or c			;0156	b1 	. 
	ld (hl),a			;0157	77 	w 
	ld de,07f10h		;0158	11 10 7f 	. .  
	ld hl,07f18h		;015b	21 18 7f 	! .  
	ld b,008h		;015e	06 08 	. . 
l0160h:
	ld c,(hl)			;0160	4e 	N 
	ld a,(de)			;0161	1a 	. 
	ld (hl),a			;0162	77 	w 
	ld a,c			;0163	79 	y 
	ld (de),a			;0164	12 	. 
	inc l			;0165	2c 	, 
	inc e			;0166	1c 	. 
	djnz l0160h		;0167	10 f7 	. . 
	ret			;0169	c9 	. 
	ld hl,07f19h		;016a	21 19 7f 	! .  
	ld a,(hl)			;016d	7e 	~ 
	and 008h		;016e	e6 08 	. . 
	rrca			;0170	0f 	. 
	rrca			;0171	0f 	. 
	ld b,a			;0172	47 	G 
	res 3,(hl)		;0173	cb 9e 	. . 
	ld hl,07f11h		;0175	21 11 7f 	! .  
	ld a,(hl)			;0178	7e 	~ 
	and 008h		;0179	e6 08 	. . 
	rrca			;017b	0f 	. 
	rrca			;017c	0f 	. 
	rrca			;017d	0f 	. 
	or b			;017e	b0 	. 
	ld (07f31h),a		;017f	32 31 7f 	2 1  
	res 3,(hl)		;0182	cb 9e 	. . 
	ld a,000h		;0184	3e 00 	> . 
	ld (07f30h),a		;0186	32 30 7f 	2 0  
	ret			;0189	c9 	. 
	ld hl,07f11h		;018a	21 11 7f 	! .  
	ld a,(hl)			;018d	7e 	~ 
	and 008h		;018e	e6 08 	. . 
	rrca			;0190	0f 	. 
	rrca			;0191	0f 	. 
	rrca			;0192	0f 	. 
	ld (07f31h),a		;0193	32 31 7f 	2 1  
	res 3,(hl)		;0196	cb 9e 	. . 
	ld a,000h		;0198	3e 00 	> . 
	ld (07f30h),a		;019a	32 30 7f 	2 0  
	ret			;019d	c9 	. 
	ld a,(07f31h)		;019e	3a 31 7f 	: 1  
	ld hl,07f19h		;01a1	21 19 7f 	! .  
	res 3,(hl)		;01a4	cb 9e 	. . 
	bit 1,a		;01a6	cb 4f 	. O 
	jr z,l01ach		;01a8	28 02 	( . 
	set 3,(hl)		;01aa	cb de 	. . 
l01ach:
	ld a,(07f31h)		;01ac	3a 31 7f 	: 1  
	ld hl,07f11h		;01af	21 11 7f 	! .  
	res 3,(hl)		;01b2	cb 9e 	. . 
	bit 0,a		;01b4	cb 47 	. G 
	jr z,l01bah		;01b6	28 02 	( . 
	set 3,(hl)		;01b8	cb de 	. . 
l01bah:
	ret			;01ba	c9 	. 
	ld hl,079bdh		;01bb	21 bd 79 	! . y 
	bit 0,(hl)		;01be	cb 46 	. F 
	jr z,l01c6h		;01c0	28 04 	( . 
	res 0,(hl)		;01c2	cb 86 	. . 
	jr l01e0h		;01c4	18 1a 	. . 
l01c6h:
	ld hl,07f17h		;01c6	21 17 7f 	! .  
	ld a,050h		;01c9	3e 50 	> P 
	add a,(hl)			;01cb	86 	. 
	daa			;01cc	27 	' 
	ld (hl),a			;01cd	77 	w 
	dec l			;01ce	2d 	- 
	ld b,006h		;01cf	06 06 	. . 
l01d1h:
	ld a,000h		;01d1	3e 00 	> . 
	adc a,(hl)			;01d3	8e 	. 
	daa			;01d4	27 	' 
	ld (hl),a			;01d5	77 	w 
	dec l			;01d6	2d 	- 
	djnz l01d1h		;01d7	10 f8 	. . 
	ld l,017h		;01d9	2e 17 	. . 
	ld (hl),000h		;01db	36 00 	6 . 
	call 082e9h		;01dd	cd e9 82 	. . . 
l01e0h:
	ld hl,07f17h		;01e0	21 17 7f 	! .  
	ld (hl),000h		;01e3	36 00 	6 . 
	ret			;01e5	c9 	. 
	nop			;01e6	00 	. 
	nop			;01e7	00 	. 
	ld hl,07f31h		;01e8	21 31 7f 	! 1  
	ld a,001h		;01eb	3e 01 	> . 
	xor (hl)			;01ed	ae 	. 
	ld (hl),a			;01ee	77 	w 
	ret			;01ef	c9 	. 
	ld de,07a70h		;01f0	11 70 7a 	. p z 
l01f3h:
	ld a,(07f31h)		;01f3	3a 31 7f 	: 1  
	ld hl,07f11h		;01f6	21 11 7f 	! .  
	res 3,(hl)		;01f9	cb 9e 	. . 
	bit 0,a		;01fb	cb 47 	. G 
	jr z,l0206h		;01fd	28 07 	( . 
	res 0,a		;01ff	cb 87 	. . 
	ld (07f31h),a		;0201	32 31 7f 	2 1  
	set 3,(hl)		;0204	cb de 	. . 
l0206h:
	ld hl,07f10h		;0206	21 10 7f 	! .  
l0209h:
	ld bc,l0008h		;0209	01 08 00 	. . . 
	ldir		;020c	ed b0 	. . 
	ld a,(07f31h)		;020e	3a 31 7f 	: 1  
	and 0feh		;0211	e6 fe 	. . 
	ld hl,07f11h		;0213	21 11 7f 	! .  
	bit 3,(hl)		;0216	cb 5e 	. ^ 
	jr z,l021eh		;0218	28 04 	( . 
	res 3,(hl)		;021a	cb 9e 	. . 
	set 0,a		;021c	cb c7 	. . 
l021eh:
	ld (07f31h),a		;021e	32 31 7f 	2 1  
	ret			;0221	c9 	. 
	ld hl,07a70h		;0222	21 70 7a 	! p z 
l0225h:
	ld de,07f10h		;0225	11 10 7f 	. .  
	jr l0209h		;0228	18 df 	. . 
	jr l01f3h		;022a	18 c7 	. . 
	jr l0225h		;022c	18 f7 	. . 
	ld de,07a68h		;022e	11 68 7a 	. h z 
	jr l01f3h		;0231	18 c0 	. . 
	ld hl,07a68h		;0233	21 68 7a 	! h z 
	jr l0225h		;0236	18 ed 	. . 
	ld de,079a8h		;0238	11 a8 79 	. . y 
	jr l01f3h		;023b	18 b6 	. . 
	ld hl,079a8h		;023d	21 a8 79 	! . y 
	jr l0225h		;0240	18 e3 	. . 
	ld de,07a60h		;0242	11 60 7a 	. ` z 
	jr l01f3h		;0245	18 ac 	. . 
	ld hl,07a60h		;0247	21 60 7a 	! ` z 
	jr l0225h		;024a	18 d9 	. . 
	ld de,07998h		;024c	11 98 79 	. . y 
	jr l01f3h		;024f	18 a2 	. . 
	ld hl,07998h		;0251	21 98 79 	! . y 
	jr l0225h		;0254	18 cf 	. . 
	ld hl,079c8h		;0256	21 c8 79 	! . y 
	jr l0225h		;0259	18 ca 	. . 
	ld de,07a70h		;025b	11 70 7a 	. p z 
l025eh:
	ld a,(07f31h)		;025e	3a 31 7f 	: 1  
	ld hl,07f19h		;0261	21 19 7f 	! .  
	res 3,(hl)		;0264	cb 9e 	. . 
	bit 1,a		;0266	cb 4f 	. O 
	jr z,l0271h		;0268	28 07 	( . 
	res 1,a		;026a	cb 8f 	. . 
	ld (07f31h),a		;026c	32 31 7f 	2 1  
	set 3,(hl)		;026f	cb de 	. . 
l0271h:
	ld hl,07f18h		;0271	21 18 7f 	! .  
l0274h:
	ld bc,l0008h		;0274	01 08 00 	. . . 
	ldir		;0277	ed b0 	. . 
	ld a,(07f31h)		;0279	3a 31 7f 	: 1  
	and 0fdh		;027c	e6 fd 	. . 
	ld hl,07f19h		;027e	21 19 7f 	! .  
	bit 3,(hl)		;0281	cb 5e 	. ^ 
	jr z,l0289h		;0283	28 04 	( . 
	res 3,(hl)		;0285	cb 9e 	. . 
	set 1,a		;0287	cb cf 	. . 
l0289h:
	ld (07f31h),a		;0289	32 31 7f 	2 1  
	ret			;028c	c9 	. 
	ld hl,07a70h		;028d	21 70 7a 	! p z 
l0290h:
	ld de,07f18h		;0290	11 18 7f 	. .  
	jr l0274h		;0293	18 df 	. . 
	ld de,07a68h		;0295	11 68 7a 	. h z 
	jr l025eh		;0298	18 c4 	. . 
	ld hl,07a68h		;029a	21 68 7a 	! h z 
	jr l0290h		;029d	18 f1 	. . 
	ld de,07a60h		;029f	11 60 7a 	. ` z 
	jr l025eh		;02a2	18 ba 	. . 
	ld hl,07a60h		;02a4	21 60 7a 	! ` z 
	jr l0290h		;02a7	18 e7 	. . 
	ld de,079a0h		;02a9	11 a0 79 	. . y 
	jr l025eh		;02ac	18 b0 	. . 
	ld hl,079a0h		;02ae	21 a0 79 	! . y 
	jr l0290h		;02b1	18 dd 	. . 
	jr l025eh		;02b3	18 a9 	. . 
	jr l0290h		;02b5	18 d9 	. . 
	ld hl,07f19h		;02b7	21 19 7f 	! .  
	jr l02c4h		;02ba	18 08 	. . 
	ld hl,07f29h		;02bc	21 29 7f 	! )  
	jr l02c4h		;02bf	18 03 	. . 
	ld hl,07f11h		;02c1	21 11 7f 	! .  
l02c4h:
	ld b,(hl)			;02c4	46 	F 
	ld a,b			;02c5	78 	x 
	and 0f0h		;02c6	e6 f0 	. . 
	ld (hl),a			;02c8	77 	w 
	ld a,b			;02c9	78 	x 
	ld b,006h		;02ca	06 06 	. . 
l02cch:
	inc l			;02cc	2c 	, 
	rrd		;02cd	ed 67 	. g 
	djnz l02cch		;02cf	10 fb 	. . 
	ret			;02d1	c9 	. 
	ld hl,07f11h		;02d2	21 11 7f 	! .  
	ld a,(hl)			;02d5	7e 	~ 
	and 00fh		;02d6	e6 0f 	. . 
	jr nz,l02e7h		;02d8	20 0d 	  . 
	inc l			;02da	2c 	, 
	ld b,006h		;02db	06 06 	. . 
l02ddh:
	ld a,(hl)			;02dd	7e 	~ 
	and 0ffh		;02de	e6 ff 	. . 
	jr nz,l02e7h		;02e0	20 05 	  . 
	inc l			;02e2	2c 	, 
	djnz l02ddh		;02e3	10 f8 	. . 
	scf			;02e5	37 	7 
	ret			;02e6	c9 	. 
l02e7h:
	and a			;02e7	a7 	. 
	ret			;02e8	c9 	. 
	call 082d2h		;02e9	cd d2 82 	. . . 
	jr c,l031fh		;02ec	38 31 	8 1 
	ld hl,07f11h		;02ee	21 11 7f 	! .  
	ld a,(hl)			;02f1	7e 	~ 
	and 00fh		;02f2	e6 0f 	. . 
	jr z,l0324h		;02f4	28 2e 	( . 
	ld a,010h		;02f6	3e 10 	> . 
	add a,(hl)			;02f8	86 	. 
	daa			;02f9	27 	' 
	ld (hl),a			;02fa	77 	w 
	dec l			;02fb	2d 	- 
	ld a,000h		;02fc	3e 00 	> . 
	adc a,(hl)			;02fe	8e 	. 
	daa			;02ff	27 	' 
l0300h:
	ld (hl),a			;0300	77 	w 
	call 082c1h		;0301	cd c1 82 	. . . 
l0304h:
	ld hl,07f10h		;0304	21 10 7f 	! .  
	ld a,(hl)			;0307	7e 	~ 
	and 0f0h		;0308	e6 f0 	. . 
	jr z,l0322h		;030a	28 16 	( . 
	cp 010h		;030c	fe 10 	. . 
	jr z,l0343h		;030e	28 33 	( 3 
	cp 080h		;0310	fe 80 	. . 
	jr z,l031fh		;0312	28 0b 	( . 
	ld a,(hl)			;0314	7e 	~ 
	and 00fh		;0315	e6 0f 	. . 
l0317h:
	jr nz,l0322h		;0317	20 09 	  . 
	inc l			;0319	2c 	, 
	ld a,(hl)			;031a	7e 	~ 
	and 0f0h		;031b	e6 f0 	. . 
	jr nz,l0322h		;031d	20 03 	  . 
l031fh:
	call 08024h		;031f	cd 24 80 	. $ . 
l0322h:
	and a			;0322	a7 	. 
	ret			;0323	c9 	. 
l0324h:
	ld l,012h		;0324	2e 12 	. . 
	ld a,(hl)			;0326	7e 	~ 
	and 0f0h		;0327	e6 f0 	. . 
	jr nz,l0304h		;0329	20 d9 	  . 
	ld l,017h		;032b	2e 17 	. . 
	ld b,006h		;032d	06 06 	. . 
	ld a,000h		;032f	3e 00 	> . 
l0331h:
	rld		;0331	ed 6f 	. o 
	dec l			;0333	2d 	- 
	djnz l0331h		;0334	10 fb 	. . 
	ld a,(hl)			;0336	7e 	~ 
	sub 010h		;0337	d6 10 	. . 
	daa			;0339	27 	' 
	ld (hl),a			;033a	77 	w 
	dec l			;033b	2d 	- 
	ld a,(hl)			;033c	7e 	~ 
	sbc a,000h		;033d	de 00 	. . 
	daa			;033f	27 	' 
	ld (hl),a			;0340	77 	w 
	jr l0324h		;0341	18 e1 	. . 
l0343h:
	ld a,020h		;0343	3e 20 	>   
	ld (07f34h),a		;0345	32 34 7f 	2 4  
	scf			;0348	37 	7 
	ret			;0349	c9 	. 
	ld a,020h		;034a	3e 20 	>   
	jr l037bh		;034c	18 2d 	. - 
	ld a,010h		;034e	3e 10 	> . 
	jr l037bh		;0350	18 29 	. ) 
	ld a,011h		;0352	3e 11 	> . 
	jr l037bh		;0354	18 25 	. % 
	ld a,031h		;0356	3e 31 	> 1 
	jr l037bh		;0358	18 21 	. ! 
	ld a,032h		;035a	3e 32 	> 2 
	jr l037bh		;035c	18 1d 	. . 
	ld a,033h		;035e	3e 33 	> 3 
	jr l037bh		;0360	18 19 	. . 
	ld a,040h		;0362	3e 40 	> @ 
	jr l037bh		;0364	18 15 	. . 
	xor a			;0366	af 	. 
	jr l037bh		;0367	18 12 	. . 
	ld a,012h		;0369	3e 12 	> . 
	jr l037bh		;036b	18 0e 	. . 
	ld a,054h		;036d	3e 54 	> T 
	jr l037bh		;036f	18 0a 	. . 
	ld a,056h		;0371	3e 56 	> V 
	jr l037bh		;0373	18 06 	. . 
	ld a,070h		;0375	3e 70 	> p 
	jr l037bh		;0377	18 02 	. . 
	ld a,010h		;0379	3e 10 	> . 
l037bh:
	ld (07f34h),a		;037b	32 34 7f 	2 4  
	scf			;037e	37 	7 
	ret			;037f	c9 	. 
	ld a,050h		;0380	3e 50 	> P 
	jr l037bh		;0382	18 f7 	. . 
	ld a,055h		;0384	3e 55 	> U 
	jr l037bh		;0386	18 f3 	. . 
	ld a,060h		;0388	3e 60 	> ` 
	jr l037bh		;038a	18 ef 	. . 
	ld a,090h		;038c	3e 90 	> . 
	jr l037bh		;038e	18 eb 	. . 
	ld a,091h		;0390	3e 91 	> . 
	jr l037bh		;0392	18 e7 	. . 
	ld a,093h		;0394	3e 93 	> . 
	jr l037bh		;0396	18 e3 	. . 
	ld a,094h		;0398	3e 94 	> . 
	jr l037bh		;039a	18 df 	. . 
	ld a,095h		;039c	3e 95 	> . 
	jr l037bh		;039e	18 db 	. . 
	ld a,096h		;03a0	3e 96 	> . 
	jr l037bh		;03a2	18 d7 	. . 
	ld a,097h		;03a4	3e 97 	> . 
	jr l037bh		;03a6	18 d3 	. . 
	ld a,021h		;03a8	3e 21 	> ! 
	jr l037bh		;03aa	18 cf 	. . 
	ld a,022h		;03ac	3e 22 	> " 
	jr l037bh		;03ae	18 cb 	. . 
	ld a,051h		;03b0	3e 51 	> Q 
	jr l037bh		;03b2	18 c7 	. . 
	push ix		;03b4	dd e5 	. . 
	pop hl			;03b6	e1 	. 
	ld ix,(07f38h)		;03b7	dd 2a 38 7f 	. * 8  
	ld (07f38h),hl		;03bb	22 38 7f 	" 8  
	ret			;03be	c9 	. 
	ld hl,07f08h		;03bf	21 08 7f 	! .  
	ld (hl),008h		;03c2	36 08 	6 . 
l03c4h:
	ld l,00eh		;03c4	2e 0e 	. . 
	rr (hl)		;03c6	cb 1e 	. . 
	call c,083f9h		;03c8	dc f9 83 	. . . 
	call 08418h		;03cb	cd 18 84 	. . . 
	call 083e1h		;03ce	cd e1 83 	. . . 
	call 083f9h		;03d1	cd f9 83 	. . . 
	call 083e1h		;03d4	cd e1 83 	. . . 
	call 08418h		;03d7	cd 18 84 	. . . 
	ld hl,07f08h		;03da	21 08 7f 	! .  
	dec (hl)			;03dd	35 	5 
	jr nz,l03c4h		;03de	20 e4 	  . 
	ret			;03e0	c9 	. 
	ld hl,07f12h		;03e1	21 12 7f 	! .  
	ld de,07f1ah		;03e4	11 1a 7f 	. .  
	ld bc,l0004h		;03e7	01 04 00 	. . . 
	ldir		;03ea	ed b0 	. . 
	ret			;03ec	c9 	. 
	ld hl,07f20h		;03ed	21 20 7f 	!    
	ld de,07f18h		;03f0	11 18 7f 	. .  
	ld bc,l0008h		;03f3	01 08 00 	. . . 
	ldir		;03f6	ed b0 	. . 
	ret			;03f8	c9 	. 
	ld hl,07f14h		;03f9	21 14 7f 	! .  
	ld de,07f1ch		;03fc	11 1c 7f 	. .  
	ld b,003h		;03ff	06 03 	. . 
	or a			;0401	b7 	. 
l0402h:
	ld a,(de)			;0402	1a 	. 
	adc a,(hl)			;0403	8e 	. 
	daa			;0404	27 	' 
	ld (hl),a			;0405	77 	w 
	dec hl			;0406	2b 	+ 
	dec de			;0407	1b 	. 
	djnz l0402h		;0408	10 f8 	. . 
	ret			;040a	c9 	. 
	ld ix,(07f1dh)		;040b	dd 2a 1d 7f 	. * .  
	jr l0415h		;040f	18 04 	. . 
	ld ix,(07f15h)		;0411	dd 2a 15 7f 	. * .  
l0415h:
	dec ix		;0415	dd 2b 	. + 
	ret			;0417	c9 	. 
	ld hl,07f12h		;0418	21 12 7f 	! .  
	ld de,07f22h		;041b	11 22 7f 	. "  
	ld b,003h		;041e	06 03 	. . 
l0420h:
	ld c,(hl)			;0420	4e 	N 
	ld a,(de)			;0421	1a 	. 
	ld (hl),a			;0422	77 	w 
	ld a,c			;0423	79 	y 
	ld (de),a			;0424	12 	. 
	inc hl			;0425	23 	# 
	inc de			;0426	13 	. 
	djnz l0420h		;0427	10 f7 	. . 
	ret			;0429	c9 	. 
	ld hl,079d8h		;042a	21 d8 79 	! . y 
	bit 4,(hl)		;042d	cb 66 	. f 
	scf			;042f	37 	7 
	ret nz			;0430	c0 	. 
	ld de,07f14h		;0431	11 14 7f 	. .  
	ld c,a			;0434	4f 	O 
	ld a,(de)			;0435	1a 	. 
	cp 0d0h		;0436	fe d0 	. . 
	ld a,c			;0438	79 	y 
	ret			;0439	c9 	. 
	sub 010h		;043a	d6 10 	. . 
	jr c,l046ch		;043c	38 2e 	8 . 
l043eh:
	cp 0e8h		;043e	fe e8 	. . 
	jr nc,l046eh		;0440	30 2c 	0 , 
	ld b,a			;0442	47 	G 
	ld a,(07932h)		;0443	3a 32 79 	: 2 y 
	bit 7,a		;0446	cb 7f 	.  
	jr nz,l044dh		;0448	20 03 	  . 
	ld a,b			;044a	78 	x 
	jr l046eh		;044b	18 21 	. ! 
l044dh:
	ld a,b			;044d	78 	x 
	cp 04ch		;044e	fe 4c 	. L 
	jr nz,l0456h		;0450	20 04 	  . 
	ld a,04ch		;0452	3e 4c 	> L 
	jr l046eh		;0454	18 18 	. . 
l0456h:
	cp 090h		;0456	fe 90 	. . 
	jr c,l046eh		;0458	38 14 	8 . 
	cp 0d0h		;045a	fe d0 	. . 
	jr c,l046eh		;045c	38 10 	8 . 
	cp 0e1h		;045e	fe e1 	. . 
	jr c,l046eh		;0460	38 0c 	8 . 
	jr l046eh		;0462	18 0a 	. . 
l0464h:
	add a,010h		;0464	c6 10 	. . 
	jr l043eh		;0466	18 d6 	. . 
	sub 020h		;0468	d6 20 	.   
	jr nc,l0464h		;046a	30 f8 	0 . 
l046ch:
	ld a,010h		;046c	3e 10 	> . 
l046eh:
	ld c,a			;046e	4f 	O 
	in a,(019h)		;046f	db 19 	. . 
	push af			;0471	f5 	. 
	ld a,004h		;0472	3e 04 	> . 
	out (019h),a		;0474	d3 19 	. . 
	ld a,e			;0476	7b 	{ 
	cp 00ch		;0477	fe 0c 	. . 
	jr nc,l04c4h		;0479	30 49 	0 I 
l047bh:
	in a,(059h)		;047b	db 59 	. Y 
	and 080h		;047d	e6 80 	. . 
	jr nz,l047bh		;047f	20 fa 	  . 
	ld a,(0790dh)		;0481	3a 0d 79 	: . y 
	add a,d			;0484	82 	. 
	or 0b8h		;0485	f6 b8 	. . 
	out (058h),a		;0487	d3 58 	. X 
	ld a,e			;0489	7b 	{ 
	add a,a			;048a	87 	. 
	add a,a			;048b	87 	. 
	add a,e			;048c	83 	. 
	or 040h		;048d	f6 40 	. @ 
	ld b,a			;048f	47 	G 
l0490h:
	in a,(059h)		;0490	db 59 	. Y 
	and 080h		;0492	e6 80 	. . 
	jr nz,l0490h		;0494	20 fa 	  . 
	ld a,b			;0496	78 	x 
	out (058h),a		;0497	d3 58 	. X 
	ld b,000h		;0499	06 00 	. . 
	ld h,b			;049b	60 	` 
	ld l,c			;049c	69 	i 
	add hl,hl			;049d	29 	) 
	add hl,hl			;049e	29 	) 
	add hl,bc			;049f	09 	. 
	ld bc,(0ffd4h)		;04a0	ed 4b d4 ff 	. K . . 
	add hl,bc			;04a4	09 	. 
	bit 2,d		;04a5	cb 52 	. R 
	jr z,l04aah		;04a7	28 01 	( . 
	dec hl			;04a9	2b 	+ 
l04aah:
	ld b,005h		;04aa	06 05 	. . 
l04ach:
	in a,(059h)		;04ac	db 59 	. Y 
	and 080h		;04ae	e6 80 	. . 
	jr nz,l04ach		;04b0	20 fa 	  . 
	ld a,(hl)			;04b2	7e 	~ 
	out (05ah),a		;04b3	d3 5a 	. Z 
	bit 2,d		;04b5	cb 52 	. R 
	jr nz,l04c1h		;04b7	20 08 	  . 
	inc hl			;04b9	23 	# 
l04bah:
	djnz l04ach		;04ba	10 f0 	. . 
	pop af			;04bc	f1 	. 
	out (019h),a		;04bd	d3 19 	. . 
	nop			;04bf	00 	. 
	ret			;04c0	c9 	. 
l04c1h:
	dec hl			;04c1	2b 	+ 
	jr l04bah		;04c2	18 f6 	. . 
l04c4h:
	ld a,017h		;04c4	3e 17 	> . 
	sub e			;04c6	93 	. 
	ld e,a			;04c7	5f 	_ 
	set 2,d		;04c8	cb d2 	. . 
	inc c			;04ca	0c 	. 
	jr l047bh		;04cb	18 ae 	. . 
	ld c,000h		;04cd	0e 00 	. . 
l04cfh:
	push hl			;04cf	e5 	. 
	push de			;04d0	d5 	. 
	push bc			;04d1	c5 	. 
	ld a,(hl)			;04d2	7e 	~ 
	call 08468h		;04d3	cd 68 84 	. h . 
	pop bc			;04d6	c1 	. 
	pop de			;04d7	d1 	. 
	pop hl			;04d8	e1 	. 
	dec b			;04d9	05 	. 
	ret z			;04da	c8 	. 
	inc hl			;04db	23 	# 
	inc e			;04dc	1c 	. 
	ld a,e			;04dd	7b 	{ 
	cp 018h		;04de	fe 18 	. . 
	jr nz,l04cfh		;04e0	20 ed 	  . 
	ld e,000h		;04e2	1e 00 	. . 
	inc d			;04e4	14 	. 
	ld a,d			;04e5	7a 	z 
	cp 004h		;04e6	fe 04 	. . 
	jr nz,l04cfh		;04e8	20 e5 	  . 
	inc c			;04ea	0c 	. 
	push hl			;04eb	e5 	. 
	push bc			;04ec	c5 	. 
	call 084f7h		;04ed	cd f7 84 	. . . 
	pop bc			;04f0	c1 	. 
	pop hl			;04f1	e1 	. 
	ld de,l0300h		;04f2	11 00 03 	. . . 
	jr l04cfh		;04f5	18 d8 	. . 
	ld hl,08528h		;04f7	21 28 85 	! ( . 
	call 08550h		;04fa	cd 50 85 	. P . 
	inc a			;04fd	3c 	< 
	and 007h		;04fe	e6 07 	. . 
l0500h:
	ld (0790dh),a		;0500	32 0d 79 	2 . y 
	call 08712h		;0503	cd 12 87 	. . . 
	call 0854dh		;0506	cd 4d 85 	. M . 
	ld l,003h		;0509	2e 03 	. . 
l050bh:
	call 08543h		;050b	cd 43 85 	. C . 
	add a,l			;050e	85 	. 
	call 0852ch		;050f	cd 2c 85 	. , . 
	ld a,040h		;0512	3e 40 	> @ 
	out (058h),a		;0514	d3 58 	. X 
	ld b,03ch		;0516	06 3c 	. < 
l0518h:
	call 08530h		;0518	cd 30 85 	. 0 . 
	xor a			;051b	af 	. 
	out (05ah),a		;051c	d3 5a 	. Z 
	djnz l0518h		;051e	10 f8 	. . 
	ld a,l			;0520	7d 	} 
	ld l,007h		;0521	2e 07 	. . 
	cp 003h		;0523	fe 03 	. . 
	jr z,l050bh		;0525	28 e4 	( . 
	ret			;0527	c9 	. 
	nop			;0528	00 	. 
	nop			;0529	00 	. 
	nop			;052a	00 	. 
	nop			;052b	00 	. 
	or 0b8h		;052c	f6 b8 	. . 
	out (058h),a		;052e	d3 58 	. X 
l0530h:
	in a,(059h)		;0530	db 59 	. Y 
	and 080h		;0532	e6 80 	. . 
	jr nz,l0530h		;0534	20 fa 	  . 
	ret			;0536	c9 	. 
l0537h:
	call 0852ch		;0537	cd 2c 85 	. , . 
	ld a,07ch		;053a	3e 7c 	> | 
	call 0852eh		;053c	cd 2e 85 	. . . 
	ld a,(hl)			;053f	7e 	~ 
	out (05ah),a		;0540	d3 5a 	. Z 
	inc hl			;0542	23 	# 
l0543h:
	in a,(059h)		;0543	db 59 	. Y 
	and 080h		;0545	e6 80 	. . 
	jr nz,l0543h		;0547	20 fa 	  . 
	ld a,(0790dh)		;0549	3a 0d 79 	: . y 
	ret			;054c	c9 	. 
	ld hl,07901h		;054d	21 01 79 	! . y 
	call 08543h		;0550	cd 43 85 	. C . 
	call 08537h		;0553	cd 37 85 	. 7 . 
	add a,003h		;0556	c6 03 	. . 
	call 08537h		;0558	cd 37 85 	. 7 . 
	add a,004h		;055b	c6 04 	. . 
	call 08537h		;055d	cd 37 85 	. 7 . 
	add a,007h		;0560	c6 07 	. . 
l0562h:
	jr l0537h		;0562	18 d3 	. . 
	ld hl,07901h		;0564	21 01 79 	! . y 
	call 08543h		;0567	cd 43 85 	. C . 
l056ah:
	jr l0562h		;056a	18 f6 	. . 
	call 08530h		;056c	cd 30 85 	. 0 . 
	ld a,e			;056f	7b 	{ 
	add a,a			;0570	87 	. 
	add a,a			;0571	87 	. 
	add a,e			;0572	83 	. 
	or 040h		;0573	f6 40 	. @ 
	jr l057ch		;0575	18 05 	. . 
	call 08530h		;0577	cd 30 85 	. 0 . 
	ld a,040h		;057a	3e 40 	> @ 
l057ch:
	ld c,a			;057c	4f 	O 
	call 0852eh		;057d	cd 2e 85 	. . . 
	ld a,(0790dh)		;0580	3a 0d 79 	: . y 
	add a,d			;0583	82 	. 
	call 0852ch		;0584	cd 2c 85 	. , . 
	in a,(05bh)		;0587	db 5b 	. [ 
	ld hl,07f40h		;0589	21 40 7f 	! @  
	ld a,00ch		;058c	3e 0c 	> . 
	sub e			;058e	93 	. 
	ld b,a			;058f	47 	G 
	add a,a			;0590	87 	. 
	add a,a			;0591	87 	. 
	add a,b			;0592	80 	. 
	ld e,a			;0593	5f 	_ 
	ld b,a			;0594	47 	G 
l0595h:
	call 08530h		;0595	cd 30 85 	. 0 . 
	in a,(05bh)		;0598	db 5b 	. [ 
	ld (hl),a			;059a	77 	w 
	inc l			;059b	2c 	, 
	djnz l0595h		;059c	10 f7 	. . 
	call 08543h		;059e	cd 43 85 	. C . 
	add a,d			;05a1	82 	. 
	inc a			;05a2	3c 	< 
	call 0852ch		;05a3	cd 2c 85 	. , . 
	ld a,c			;05a6	79 	y 
	out (058h),a		;05a7	d3 58 	. X 
	ld hl,07f40h		;05a9	21 40 7f 	! @  
	ld b,e			;05ac	43 	C 
l05adh:
	call 08530h		;05ad	cd 30 85 	. 0 . 
	ld a,(hl)			;05b0	7e 	~ 
	out (05ah),a		;05b1	d3 5a 	. Z 
	inc l			;05b3	2c 	, 
	djnz l05adh		;05b4	10 f7 	. . 
	ret			;05b6	c9 	. 
	ld a,d			;05b7	7a 	z 
	cp 003h		;05b8	fe 03 	. . 
	jr nz,l05cah		;05ba	20 0e 	  . 
l05bch:
	push de			;05bc	d5 	. 
	ld a,020h		;05bd	3e 20 	>   
	call 08468h		;05bf	cd 68 84 	. h . 
	pop de			;05c2	d1 	. 
	inc e			;05c3	1c 	. 
	ld a,e			;05c4	7b 	{ 
	cp 018h		;05c5	fe 18 	. . 
	jr nz,l05bch		;05c7	20 f3 	  . 
	ret			;05c9	c9 	. 
l05cah:
	cp 002h		;05ca	fe 02 	. . 
	jr nz,l05f0h		;05cc	20 22 	  " 
l05ceh:
	push de			;05ce	d5 	. 
	ld a,e			;05cf	7b 	{ 
	cp 00ch		;05d0	fe 0c 	. . 
	jr nc,l05dbh		;05d2	30 07 	0 . 
	call 0856ch		;05d4	cd 6c 85 	. l . 
	ld e,000h		;05d7	1e 00 	. . 
	jr l05dfh		;05d9	18 04 	. . 
l05dbh:
	ld a,e			;05db	7b 	{ 
	sub 00ch		;05dc	d6 0c 	. . 
	ld e,a			;05de	5f 	_ 
l05dfh:
	ld a,d			;05df	7a 	z 
	add a,004h		;05e0	c6 04 	. . 
	and 007h		;05e2	e6 07 	. . 
	ld d,a			;05e4	57 	W 
	call 08577h		;05e5	cd 77 85 	. w . 
	pop de			;05e8	d1 	. 
	ld b,018h		;05e9	06 18 	. . 
	xor a			;05eb	af 	. 
	call 086b3h		;05ec	cd b3 86 	. . . 
	ret			;05ef	c9 	. 
l05f0h:
	cp 001h		;05f0	fe 01 	. . 
	jr nz,l0604h		;05f2	20 10 	  . 
	push de			;05f4	d5 	. 
	ld de,00200h		;05f5	11 00 02 	. . . 
	call 0856ch		;05f8	cd 6c 85 	. l . 
	ld de,00600h		;05fb	11 00 06 	. . . 
	call 08577h		;05fe	cd 77 85 	. w . 
	pop de			;0601	d1 	. 
	jr l05ceh		;0602	18 ca 	. . 
l0604h:
	push de			;0604	d5 	. 
	ld de,00200h		;0605	11 00 02 	. . . 
	call 0856ch		;0608	cd 6c 85 	. l . 
	ld de,00600h		;060b	11 00 06 	. . . 
	call 08577h		;060e	cd 77 85 	. w . 
	ld de,l00ffh+1		;0611	11 00 01 	. . . 
	call 0856ch		;0614	cd 6c 85 	. l . 
	ld de,l0500h		;0617	11 00 05 	. . . 
	call 08577h		;061a	cd 77 85 	. w . 
	pop de			;061d	d1 	. 
	jr l05ceh		;061e	18 ae 	. . 
	ld a,e			;0620	7b 	{ 
	cp 00ch		;0621	fe 0c 	. . 
	jr nc,l0642h		;0623	30 1d 	0 . 
	call 08656h		;0625	cd 56 86 	. V . 
	call 08530h		;0628	cd 30 85 	. 0 . 
	in a,(05bh)		;062b	db 5b 	. [ 
l062dh:
	call 08530h		;062d	cd 30 85 	. 0 . 
	in a,(05bh)		;0630	db 5b 	. [ 
	ld (hl),a			;0632	77 	w 
	inc hl			;0633	23 	# 
	inc e			;0634	1c 	. 
	djnz l0639h		;0635	10 02 	. . 
	dec hl			;0637	2b 	+ 
	ret			;0638	c9 	. 
l0639h:
	ld a,e			;0639	7b 	{ 
	cp 03ch		;063a	fe 3c 	. < 
	jr nz,l062dh		;063c	20 ef 	  . 
	ld e,00ch		;063e	1e 0c 	. . 
	jr l0642h		;0640	18 00 	. . 
l0642h:
	call 08667h		;0642	cd 67 86 	. g . 
	call 08530h		;0645	cd 30 85 	. 0 . 
	in a,(05bh)		;0648	db 5b 	. [ 
	push hl			;064a	e5 	. 
l064bh:
	call 08530h		;064b	cd 30 85 	. 0 . 
	in a,(05bh)		;064e	db 5b 	. [ 
	ld (hl),a			;0650	77 	w 
	dec hl			;0651	2b 	+ 
	djnz l064bh		;0652	10 f7 	. . 
	pop hl			;0654	e1 	. 
	ret			;0655	c9 	. 
	call 08543h		;0656	cd 43 85 	. C . 
	add a,d			;0659	82 	. 
	call 0852ch		;065a	cd 2c 85 	. , . 
	ld a,e			;065d	7b 	{ 
	add a,a			;065e	87 	. 
	add a,a			;065f	87 	. 
	add a,e			;0660	83 	. 
	ld e,a			;0661	5f 	_ 
	or 040h		;0662	f6 40 	. @ 
	out (058h),a		;0664	d3 58 	. X 
	ret			;0666	c9 	. 
	call 08543h		;0667	cd 43 85 	. C . 
	add a,d			;066a	82 	. 
	add a,004h		;066b	c6 04 	. . 
	call 0852ch		;066d	cd 2c 85 	. , . 
	ld a,018h		;0670	3e 18 	> . 
	sub e			;0672	93 	. 
	ld e,a			;0673	5f 	_ 
	add a,a			;0674	87 	. 
	add a,a			;0675	87 	. 
	add a,e			;0676	83 	. 
	sub b			;0677	90 	. 
	jr nc,l067dh		;0678	30 03 	0 . 
	add a,b			;067a	80 	. 
	ld b,a			;067b	47 	G 
	xor a			;067c	af 	. 
l067dh:
	or 040h		;067d	f6 40 	. @ 
	out (058h),a		;067f	d3 58 	. X 
	ld e,b			;0681	58 	X 
	ld d,000h		;0682	16 00 	. . 
	dec e			;0684	1d 	. 
	add hl,de			;0685	19 	. 
	ret			;0686	c9 	. 
	ld a,e			;0687	7b 	{ 
	cp 00ch		;0688	fe 0c 	. . 
	jr nc,l06a4h		;068a	30 18 	0 . 
	call 08656h		;068c	cd 56 86 	. V . 
l068fh:
	call 08530h		;068f	cd 30 85 	. 0 . 
	ld a,(hl)			;0692	7e 	~ 
	out (05ah),a		;0693	d3 5a 	. Z 
	inc hl			;0695	23 	# 
	inc e			;0696	1c 	. 
	djnz l069bh		;0697	10 02 	. . 
	dec hl			;0699	2b 	+ 
	ret			;069a	c9 	. 
l069bh:
	ld a,e			;069b	7b 	{ 
	cp 03ch		;069c	fe 3c 	. < 
	jr nz,l068fh		;069e	20 ef 	  . 
	ld e,00ch		;06a0	1e 0c 	. . 
	jr l06a4h		;06a2	18 00 	. . 
l06a4h:
	call 08667h		;06a4	cd 67 86 	. g . 
	push hl			;06a7	e5 	. 
l06a8h:
	call 08530h		;06a8	cd 30 85 	. 0 . 
	ld a,(hl)			;06ab	7e 	~ 
	out (05ah),a		;06ac	d3 5a 	. Z 
	dec hl			;06ae	2b 	+ 
	djnz l06a8h		;06af	10 f7 	. . 
	pop hl			;06b1	e1 	. 
	ret			;06b2	c9 	. 
	ld c,a			;06b3	4f 	O 
l06b4h:
	push de			;06b4	d5 	. 
	push bc			;06b5	c5 	. 
	ld a,c			;06b6	79 	y 
	call 08468h		;06b7	cd 68 84 	. h . 
	pop bc			;06ba	c1 	. 
	pop de			;06bb	d1 	. 
	dec b			;06bc	05 	. 
	ret z			;06bd	c8 	. 
	inc e			;06be	1c 	. 
	ld a,e			;06bf	7b 	{ 
	cp 018h		;06c0	fe 18 	. . 
	jr nz,l06b4h		;06c2	20 f0 	  . 
	ld e,000h		;06c4	1e 00 	. . 
	inc d			;06c6	14 	. 
	ld a,d			;06c7	7a 	z 
	cp 004h		;06c8	fe 04 	. . 
	jr nz,l06b4h		;06ca	20 e8 	  . 
	ret			;06cc	c9 	. 
	ld a,001h		;06cd	3e 01 	> . 
	out (01ch),a		;06cf	d3 1c 	. . 
	call 086f7h		;06d1	cd f7 86 	. . . 
	call 08530h		;06d4	cd 30 85 	. 0 . 
	ld a,03eh		;06d7	3e 3e 	> > 
	out (058h),a		;06d9	d3 58 	. X 
	xor a			;06db	af 	. 
	ld (0790dh),a		;06dc	32 0d 79 	2 . y 
	ld e,a			;06df	5f 	_ 
	ld d,a			;06e0	57 	W 
	ld b,060h		;06e1	06 60 	. ` 
	call 086b3h		;06e3	cd b3 86 	. . . 
	ld hl,08528h		;06e6	21 28 85 	! ( . 
	call 08550h		;06e9	cd 50 85 	. P . 
	call 0870fh		;06ec	cd 0f 87 	. . . 
	call 08530h		;06ef	cd 30 85 	. 0 . 
	ld a,03fh		;06f2	3e 3f 	> ? 
	out (058h),a		;06f4	d3 58 	. X 
	ret			;06f6	c9 	. 
	ld b,040h		;06f7	06 40 	. @ 
l06f9h:
	ld a,000h		;06f9	3e 00 	> . 
l06fbh:
	inc a			;06fb	3c 	< 
	cp 000h		;06fc	fe 00 	. . 
	jr nz,l06fbh		;06fe	20 fb 	  . 
	djnz l06f9h		;0700	10 f7 	. . 
	ret			;0702	c9 	. 
	call 08530h		;0703	cd 30 85 	. 0 . 
	ld a,03eh		;0706	3e 3e 	> > 
	out (058h),a		;0708	d3 58 	. X 
	ld a,000h		;070a	3e 00 	> . 
	out (01ch),a		;070c	d3 1c 	. . 
	ret			;070e	c9 	. 
	call 08543h		;070f	cd 43 85 	. C . 
	add a,a			;0712	87 	. 
	add a,a			;0713	87 	. 
	add a,a			;0714	87 	. 
	or 0c0h		;0715	f6 c0 	. . 
	out (058h),a		;0717	d3 58 	. X 
	ret			;0719	c9 	. 
	ld a,004h		;071a	3e 04 	> . 
	ld (078edh),a		;071c	32 ed 78 	2 . x 
	ld a,082h		;071f	3e 82 	> . 
	ld (078eeh),a		;0721	32 ee 78 	2 . x 
	xor a			;0724	af 	. 
	ld (0792fh),a		;0725	32 2f 79 	2 / y 
	ld a,01ah		;0728	3e 1a 	> . 
	ld (078efh),a		;072a	32 ef 78 	2 . x 
	ld a,0c9h		;072d	3e c9 	> . 
	ld (078f7h),a		;072f	32 f7 78 	2 . x 
	ld (078fah),a		;0732	32 fa 78 	2 . x 
	ld (078fdh),a		;0735	32 fd 78 	2 . x 
	ld a,050h		;0738	3e 50 	> P 
	ld (078f1h),a		;073a	32 f1 78 	2 . x 
	ld a,008h		;073d	3e 08 	> . 
	ld (078f2h),a		;073f	32 f2 78 	2 . x 
	ld a,00ah		;0742	3e 0a 	> . 
	ld (078f3h),a		;0744	32 f3 78 	2 . x 
	ld hl,l056ah		;0747	21 6a 05 	! j . 
	ld (078f4h),hl		;074a	22 f4 78 	" . x 
	ld hl,l000ah		;074d	21 0a 00 	! . . 
	ld (078e3h),hl		;0750	22 e3 78 	" . x 
	ld a,0c9h		;0753	3e c9 	> . 
	ld (l0038h),a		;0755	32 38 00 	2 8 . 
	xor a			;0758	af 	. 
	ld (07965h),a		;0759	32 65 79 	2 e y 
	ld (078f0h),a		;075c	32 f0 78 	2 . x 
	ld a,007h		;075f	3e 07 	> . 
	out (017h),a		;0761	d3 17 	. . 
	ret			;0763	c9 	. 
l0764h:
	call 0879fh		;0764	cd 9f 87 	. . . 
	push bc			;0767	c5 	. 
	ld b,a			;0768	47 	G 
	and 07fh		;0769	e6 7f 	.  
	jr z,l078ch		;076b	28 1f 	( . 
	cp 052h		;076d	fe 52 	. R 
	jr nc,l0774h		;076f	30 03 	0 . 
	ld a,b			;0771	78 	x 
	pop bc			;0772	c1 	. 
	ret			;0773	c9 	. 
l0774h:
	pop bc			;0774	c1 	. 
	cp 07ch		;0775	fe 7c 	. | 
	jr z,l0782h		;0777	28 09 	( . 
	jr c,l0764h		;0779	38 e9 	8 . 
	cp 07eh		;077b	fe 7e 	. ~ 
	jr z,l0787h		;077d	28 08 	( . 
	ld a,001h		;077f	3e 01 	> . 
	ret			;0781	c9 	. 
l0782h:
	call 0878fh		;0782	cd 8f 87 	. . . 
	jr l0764h		;0785	18 dd 	. . 
l0787h:
	call 08cf5h		;0787	cd f5 8c 	. . . 
	jr l0764h		;078a	18 d8 	. . 
l078ch:
	pop bc			;078c	c1 	. 
	jr l0764h		;078d	18 d5 	. . 
	ld a,000h		;078f	3e 00 	> . 
	ld (079f1h),a		;0791	32 f1 79 	2 . y 
	ld a,(07965h)		;0794	3a 65 79 	: e y 
	and 0e1h		;0797	e6 e1 	. . 
	ld (07965h),a		;0799	32 65 79 	2 e y 
	jp 0a9f2h		;079c	c3 f2 a9 	. . . 
	push bc			;079f	c5 	. 
	push de			;07a0	d5 	. 
	push hl			;07a1	e5 	. 
	call 078fdh		;07a2	cd fd 78 	. . x 
	ld hl,(078f4h)		;07a5	2a f4 78 	* . x 
	ld a,(07965h)		;07a8	3a 65 79 	: e y 
	ld d,a			;07ab	57 	W 
	ld a,(078f3h)		;07ac	3a f3 78 	: . x 
	ld c,a			;07af	4f 	O 
l07b0h:
	call 08881h		;07b0	cd 81 88 	. . . 
	jr nc,l0803h		;07b3	30 4e 	0 N 
	call 08d94h		;07b5	cd 94 8d 	. . . 
	jr c,l0832h		;07b8	38 78 	8 x 
	bit 0,d		;07ba	cb 42 	. B 
	jr nz,l07dbh		;07bc	20 1d 	  . 
l07beh:
	set 0,d		;07be	cb c2 	. . 
	call 08ce3h		;07c0	cd e3 8c 	. . . 
l07c3h:
	ld a,d			;07c3	7a 	z 
	ld (07965h),a		;07c4	32 65 79 	2 e y 
	ld a,b			;07c7	78 	x 
	cp 051h		;07c8	fe 51 	. Q 
	call z,08d5bh		;07ca	cc 5b 8d 	. [ . 
	cp 052h		;07cd	fe 52 	. R 
	jr z,l07d7h		;07cf	28 06 	( . 
	and 07fh		;07d1	e6 7f 	.  
	ld (07966h),a		;07d3	32 66 79 	2 f y 
	ld a,b			;07d6	78 	x 
l07d7h:
	pop hl			;07d7	e1 	. 
	pop de			;07d8	d1 	. 
	pop bc			;07d9	c1 	. 
	ret			;07da	c9 	. 
l07dbh:
	ld a,b			;07db	78 	x 
	cp 052h		;07dc	fe 52 	. R 
	jr z,l080bh		;07de	28 2b 	( + 
	ld a,(07966h)		;07e0	3a 66 79 	: f y 
	cp b			;07e3	b8 	. 
	jr z,l07efh		;07e4	28 09 	( . 
	or 080h		;07e6	f6 80 	. . 
	cp b			;07e8	b8 	. 
	jr z,l07efh		;07e9	28 04 	( . 
	res 1,d		;07eb	cb 8a 	. . 
	jr l07beh		;07ed	18 cf 	. . 
l07efh:
	bit 1,d		;07ef	cb 4a 	. J 
	jr z,l080bh		;07f1	28 18 	( . 
	bit 3,d		;07f3	cb 5a 	. Z 
	jp nz,0884fh		;07f5	c2 4f 88 	. O . 
	ld a,(0797eh)		;07f8	3a 7e 79 	: ~ y 
	or a			;07fb	b7 	. 
	jr nz,l0848h		;07fc	20 4a 	  J 
	call 08cech		;07fe	cd ec 8c 	. . . 
	jr l07c3h		;0801	18 c0 	. . 
l0803h:
	bit 0,d		;0803	cb 42 	. B 
	jr z,l083ch		;0805	28 35 	( 5 
	bit 1,d		;0807	cb 4a 	. J 
	jr z,l0836h		;0809	28 2b 	( + 
l080bh:
	res 1,d		;080b	cb 8a 	. . 
	ld a,(078f3h)		;080d	3a f3 78 	: . x 
	ld c,a			;0810	4f 	O 
l0811h:
	in a,(014h)		;0811	db 14 	. . 
	rra			;0813	1f 	. 
	jr nc,l082ah		;0814	30 14 	0 . 
	out (014h),a		;0816	d3 14 	. . 
	dec hl			;0818	2b 	+ 
	ld a,h			;0819	7c 	| 
	or l			;081a	b5 	. 
	jr nz,l0821h		;081b	20 04 	  . 
	ld b,07eh		;081d	06 7e 	. ~ 
	jr l07c3h		;081f	18 a2 	. . 
l0821h:
	bit 2,d		;0821	cb 52 	. R 
	jr z,l082ah		;0823	28 05 	( . 
	call 0886fh		;0825	cd 6f 88 	. o . 
	jr l07b0h		;0828	18 86 	. . 
l082ah:
	bit 0,d		;082a	cb 42 	. B 
	call z,0891eh		;082c	cc 1e 89 	. . . 
	jp nc,087b0h		;082f	d2 b0 87 	. . . 
l0832h:
	ld b,07dh		;0832	06 7d 	. } 
	jr l07c3h		;0834	18 8d 	. . 
l0836h:
	dec c			;0836	0d 	. 
	jp nz,087b0h		;0837	c2 b0 87 	. . . 
	res 0,d		;083a	cb 82 	. . 
l083ch:
	call 0885fh		;083c	cd 5f 88 	. _ . 
	bit 3,d		;083f	cb 5a 	. Z 
	jr z,l0811h		;0841	28 ce 	( . 
	ld b,07ch		;0843	06 7c 	. | 
	jp 087c3h		;0845	c3 c3 87 	. . . 
l0848h:
	dec a			;0848	3d 	= 
	ld (0797eh),a		;0849	32 7e 79 	2 ~ y 
	jp 087a2h		;084c	c3 a2 87 	. . . 
	in a,(014h)		;084f	db 14 	. . 
	rra			;0851	1f 	. 
	jp nc,087a2h		;0852	d2 a2 87 	. . . 
	out (014h),a		;0855	d3 14 	. . 
	bit 2,d		;0857	cb 52 	. R 
	call nz,0886fh		;0859	c4 6f 88 	. o . 
	jp 087a2h		;085c	c3 a2 87 	. . . 
	push hl			;085f	e5 	. 
	ld hl,07a9dh		;0860	21 9d 7a 	! . z 
	ld a,(hl)			;0863	7e 	~ 
	inc a			;0864	3c 	< 
	daa			;0865	27 	' 
	ld (hl),a			;0866	77 	w 
	dec hl			;0867	2b 	+ 
	ld a,(hl)			;0868	7e 	~ 
	adc a,000h		;0869	ce 00 	. . 
	daa			;086b	27 	' 
	ld (hl),a			;086c	77 	w 
	pop hl			;086d	e1 	. 
	ret			;086e	c9 	. 
	ld a,d			;086f	7a 	z 
	ld (07965h),a		;0870	32 65 79 	2 e y 
	push bc			;0873	c5 	. 
	push de			;0874	d5 	. 
	push hl			;0875	e5 	. 
	call 0927fh		;0876	cd 7f 92 	.  . 
	pop hl			;0879	e1 	. 
	pop de			;087a	d1 	. 
	pop bc			;087b	c1 	. 
	ld a,(07965h)		;087c	3a 65 79 	: e y 
	ld d,a			;087f	57 	W 
	ret			;0880	c9 	. 
	ld a,(078f0h)		;0881	3a f0 78 	: . x 
	and 0f7h		;0884	e6 f7 	. . 
	ld (078f0h),a		;0886	32 f0 78 	2 . x 
	call 088abh		;0889	cd ab 88 	. . . 
	jr nc,l08a2h		;088c	30 14 	0 . 
	ld b,a			;088e	47 	G 
	call 088abh		;088f	cd ab 88 	. . . 
	jr nc,l08a2h		;0892	30 0e 	0 . 
	cp b			;0894	b8 	. 
	jr nz,l08a2h		;0895	20 0b 	  . 
	ld a,(078f0h)		;0897	3a f0 78 	: . x 
	and 010h		;089a	e6 10 	. . 
	call nz,08ec8h		;089c	c4 c8 8e 	. . . 
	ld a,b			;089f	78 	x 
	scf			;08a0	37 	7 
	ret			;08a1	c9 	. 
l08a2h:
	ld a,(078f0h)		;08a2	3a f0 78 	: . x 
	and 020h		;08a5	e6 20 	.   
	call nz,08ecch		;08a7	c4 cc 8e 	. . . 
	ret			;08aa	c9 	. 
	in a,(01fh)		;08ab	db 1f 	. . 
	rla			;08ad	17 	. 
	jr c,l090bh		;08ae	38 5b 	8 [ 
	exx			;08b0	d9 	. 
	ld hl,l000ah		;08b1	21 0a 00 	! . . 
	ld de,l0101h		;08b4	11 01 01 	. . . 
	ld bc,0ff11h		;08b7	01 11 ff 	. . . 
l08bah:
	ld a,e			;08ba	7b 	{ 
	or h			;08bb	b4 	. 
	out (c),a		;08bc	ed 79 	. y 
	rlc e		;08be	cb 03 	. . 
	jr nc,l0917h		;08c0	30 55 	0 U 
	ld c,012h		;08c2	0e 12 	. . 
	ld h,0c0h		;08c4	26 c0 	& . 
	call 0895ch		;08c6	cd 5c 89 	. \ . 
	in a,(010h)		;08c9	db 10 	. . 
	push af			;08cb	f5 	. 
	xor a			;08cc	af 	. 
	out (011h),a		;08cd	d3 11 	. . 
	pop af			;08cf	f1 	. 
l08d0h:
	or a			;08d0	b7 	. 
	jr z,l08e3h		;08d1	28 10 	( . 
	inc b			;08d3	04 	. 
	push de			;08d4	d5 	. 
	jr nz,l08deh		;08d5	20 07 	  . 
l08d7h:
	srl a		;08d7	cb 3f 	. ? 
	jr c,l08deh		;08d9	38 03 	8 . 
	inc d			;08db	14 	. 
	jr l08d7h		;08dc	18 f9 	. . 
l08deh:
	or a			;08de	b7 	. 
	jr nz,l0907h		;08df	20 26 	  & 
	ld b,d			;08e1	42 	B 
l08e2h:
	pop de			;08e2	d1 	. 
l08e3h:
	ld a,d			;08e3	7a 	z 
	add a,008h		;08e4	c6 08 	. . 
	ld d,a			;08e6	57 	W 
	dec l			;08e7	2d 	- 
	jr nz,l08bah		;08e8	20 d0 	  . 
	ld e,000h		;08ea	1e 00 	. . 
	out (c),e		;08ec	ed 59 	. Y 
	ld a,008h		;08ee	3e 08 	> . 
	out (011h),a		;08f0	d3 11 	. . 
	call 0895ch		;08f2	cd 5c 89 	. \ . 
	in a,(013h)		;08f5	db 13 	. . 
	rra			;08f7	1f 	. 
	ld a,000h		;08f8	3e 00 	> . 
	out (011h),a		;08fa	d3 11 	. . 
	ld a,b			;08fc	78 	x 
	jr nc,l0901h		;08fd	30 02 	0 . 
	or 080h		;08ff	f6 80 	. . 
l0901h:
	exx			;0901	d9 	. 
	cp 0ffh		;0902	fe ff 	. . 
	ret c			;0904	d8 	. 
	xor a			;0905	af 	. 
	ret			;0906	c9 	. 
l0907h:
	ld b,052h		;0907	06 52 	. R 
	jr l08e2h		;0909	18 d7 	. . 
l090bh:
	call 088b0h		;090b	cd b0 88 	. . . 
	jr nc,l0913h		;090e	30 03 	0 . 
	ld a,052h		;0910	3e 52 	> R 
	ret			;0912	c9 	. 
l0913h:
	ld a,051h		;0913	3e 51 	> Q 
	scf			;0915	37 	7 
	ret			;0916	c9 	. 
l0917h:
	call 0895ch		;0917	cd 5c 89 	. \ . 
	in a,(010h)		;091a	db 10 	. . 
	jr l08d0h		;091c	18 b2 	. . 
	call 0870fh		;091e	cd 0f 87 	. . . 
	call 08d67h		;0921	cd 67 8d 	. g . 
	ret c			;0924	d8 	. 
	nop			;0925	00 	. 
	ld a,(078f0h)		;0926	3a f0 78 	: . x 
	and 004h		;0929	e6 04 	. . 
	ret nz			;092b	c0 	. 
	ld a,0ffh		;092c	3e ff 	> . 
	out (011h),a		;092e	d3 11 	. . 
	ld a,003h		;0930	3e 03 	> . 
	out (012h),a		;0932	d3 12 	. . 
	ld a,00fh		;0934	3e 0f 	> . 
	out (016h),a		;0936	d3 16 	. . 
	call 0895ch		;0938	cd 5c 89 	. \ . 
	in a,(016h)		;093b	db 16 	. . 
	and 00fh		;093d	e6 0f 	. . 
	jr nz,l0958h		;093f	20 17 	  . 
	in a,(013h)		;0941	db 13 	. . 
	rra			;0943	1f 	. 
	jr c,l0950h		;0944	38 0a 	8 . 
	ld a,0ffh		;0946	3e ff 	> . 
	ld i,a		;0948	ed 47 	. G 
	ld r,a		;094a	ed 4f 	. O 
	ei			;094c	fb 	. 
	halt			;094d	76 	v 
	di			;094e	f3 	. 
	di			;094f	f3 	. 
l0950h:
	ld a,0c0h		;0950	3e c0 	> . 
	out (012h),a		;0952	d3 12 	. . 
	xor a			;0954	af 	. 
	out (011h),a		;0955	d3 11 	. . 
	ret			;0957	c9 	. 
l0958h:
	out (016h),a		;0958	d3 16 	. . 
	jr l0950h		;095a	18 f4 	. . 
	push bc			;095c	c5 	. 
	ld bc,0001ch		;095d	01 1c 00 	. . . 
l0960h:
	call 0896bh		;0960	cd 6b 89 	. k . 
	pop bc			;0963	c1 	. 
	ret			;0964	c9 	. 
	push bc			;0965	c5 	. 
	ld bc,l007dh		;0966	01 7d 00 	. } . 
	jr l0960h		;0969	18 f5 	. . 
	push af			;096b	f5 	. 
	dec bc			;096c	0b 	. 
	ld a,c			;096d	79 	y 
	or b			;096e	b0 	. 
	jp nz,0896ch		;096f	c2 6c 89 	. l . 
	pop af			;0972	f1 	. 
	ret			;0973	c9 	. 
	nop			;0974	00 	. 
	nop			;0975	00 	. 
	nop			;0976	00 	. 
	nop			;0977	00 	. 
	nop			;0978	00 	. 
	nop			;0979	00 	. 
	ld b,000h		;097a	06 00 	. . 
	ld b,000h		;097c	06 00 	. . 
	ld b,000h		;097e	06 00 	. . 
	ld (hl),c			;0980	71 	q 
	nop			;0981	00 	. 
	ld hl,05100h		;0982	21 00 51 	! . Q 
	nop			;0985	00 	. 
	ld (hl),a			;0986	77 	w 
	nop			;0987	00 	. 
	ld (05700h),hl		;0988	22 00 57 	" . W 
	nop			;098b	00 	. 
	ld h,l			;098c	65 	e 
	nop			;098d	00 	. 
	inc hl			;098e	23 	# 
	nop			;098f	00 	. 
	ld b,l			;0990	45 	E 
	nop			;0991	00 	. 
	ld (hl),d			;0992	72 	r 
	nop			;0993	00 	. 
	inc h			;0994	24 	$ 
	nop			;0995	00 	. 
	ld d,d			;0996	52 	R 
	nop			;0997	00 	. 
	ld (hl),h			;0998	74 	t 
	nop			;0999	00 	. 
	dec h			;099a	25 	% 
	nop			;099b	00 	. 
	ld d,h			;099c	54 	T 
	nop			;099d	00 	. 
	ld a,c			;099e	79 	y 
	nop			;099f	00 	. 
	ld h,000h		;09a0	26 00 	& . 
	ld e,c			;09a2	59 	Y 
	nop			;09a3	00 	. 
	ld (hl),l			;09a4	75 	u 
	nop			;09a5	00 	. 
	daa			;09a6	27 	' 
	nop			;09a7	00 	. 
	ld d,l			;09a8	55 	U 
	nop			;09a9	00 	. 
	ld h,c			;09aa	61 	a 
	nop			;09ab	00 	. 
	ld e,e			;09ac	5b 	[ 
	nop			;09ad	00 	. 
	ld b,c			;09ae	41 	A 
	nop			;09af	00 	. 
	ld (hl),e			;09b0	73 	s 
	nop			;09b1	00 	. 
	ld e,l			;09b2	5d 	] 
	nop			;09b3	00 	. 
	ld d,e			;09b4	53 	S 
	nop			;09b5	00 	. 
	ld h,h			;09b6	64 	d 
	nop			;09b7	00 	. 
	ld a,e			;09b8	7b 	{ 
	nop			;09b9	00 	. 
	ld b,h			;09ba	44 	D 
	nop			;09bb	00 	. 
	ld h,(hl)			;09bc	66 	f 
	nop			;09bd	00 	. 
	ld a,l			;09be	7d 	} 
	nop			;09bf	00 	. 
	ld b,(hl)			;09c0	46 	F 
	nop			;09c1	00 	. 
	ld h,a			;09c2	67 	g 
	nop			;09c3	00 	. 
	ld e,h			;09c4	5c 	\ 
	nop			;09c5	00 	. 
	ld b,a			;09c6	47 	G 
	nop			;09c7	00 	. 
	ld l,b			;09c8	68 	h 
	nop			;09c9	00 	. 
	ld a,h			;09ca	7c 	| 
	nop			;09cb	00 	. 
	ld c,b			;09cc	48 	H 
	nop			;09cd	00 	. 
	ld l,d			;09ce	6a 	j 
	nop			;09cf	00 	. 
	ld a,(hl)			;09d0	7e 	~ 
	nop			;09d1	00 	. 
	ld c,d			;09d2	4a 	J 
	nop			;09d3	00 	. 
	ld l,e			;09d4	6b 	k 
	nop			;09d5	00 	. 
	ld e,a			;09d6	5f 	_ 
	nop			;09d7	00 	. 
	ld c,e			;09d8	4b 	K 
	nop			;09d9	00 	. 
	ld a,d			;09da	7a 	z 
	nop			;09db	00 	. 
	cp 061h		;09dc	fe 61 	. a 
	ld e,d			;09de	5a 	Z 
	nop			;09df	00 	. 
	ld a,b			;09e0	78 	x 
	nop			;09e1	00 	. 
	cp 060h		;09e2	fe 60 	. ` 
	ld e,b			;09e4	58 	X 
	nop			;09e5	00 	. 
	ld h,e			;09e6	63 	c 
	nop			;09e7	00 	. 
	cp 012h		;09e8	fe 12 	. . 
	ld b,e			;09ea	43 	C 
	nop			;09eb	00 	. 
	halt			;09ec	76 	v 
	nop			;09ed	00 	. 
	cp 010h		;09ee	fe 10 	. . 
	ld d,(hl)			;09f0	56 	V 
	nop			;09f1	00 	. 
	ld h,d			;09f2	62 	b 
	nop			;09f3	00 	. 
	cp 014h		;09f4	fe 14 	. . 
	ld b,d			;09f6	42 	B 
	nop			;09f7	00 	. 
	ld l,(hl)			;09f8	6e 	n 
	nop			;09f9	00 	. 
	cp 023h		;09fa	fe 23 	. # 
	ld c,(hl)			;09fc	4e 	N 
	nop			;09fd	00 	. 
	ld l,l			;09fe	6d 	m 
	nop			;09ff	00 	. 
	cp 018h		;0a00	fe 18 	. . 
	ld c,l			;0a02	4d 	M 
	nop			;0a03	00 	. 
	inc l			;0a04	2c 	, 
	nop			;0a05	00 	. 
	ccf			;0a06	3f 	? 
	nop			;0a07	00 	. 
	inc l			;0a08	2c 	, 
	nop			;0a09	00 	. 
	inc bc			;0a0a	03 	. 
	nop			;0a0b	00 	. 
	ld (bc),a			;0a0c	02 	. 
	nop			;0a0d	00 	. 
	inc bc			;0a0e	03 	. 
	nop			;0a0f	00 	. 
	ld bc,0f100h		;0a10	01 00 f1 	. . . 
	nop			;0a13	00 	. 
	ld bc,01400h		;0a14	01 00 14 	. . . 
	nop			;0a17	00 	. 
	inc d			;0a18	14 	. 
	nop			;0a19	00 	. 
	inc d			;0a1a	14 	. 
	nop			;0a1b	00 	. 
	dec d			;0a1c	15 	. 
	nop			;0a1d	00 	. 
	dec d			;0a1e	15 	. 
	nop			;0a1f	00 	. 
	dec d			;0a20	15 	. 
	nop			;0a21	00 	. 
	ld a,(bc)			;0a22	0a 	. 
	nop			;0a23	00 	. 
	ld a,(bc)			;0a24	0a 	. 
	nop			;0a25	00 	. 
	ld a,(bc)			;0a26	0a 	. 
	nop			;0a27	00 	. 
	jr nz,l0a2ah		;0a28	20 00 	  . 
l0a2ah:
	jr nz,l0a2ch		;0a2a	20 00 	  . 
l0a2ch:
	jr nz,l0a2eh		;0a2c	20 00 	  . 
l0a2eh:
	rra			;0a2e	1f 	. 
	nop			;0a2f	00 	. 
	jp p,01f00h		;0a30	f2 00 1f 	. . . 
	nop			;0a33	00 	. 
	ld e,000h		;0a34	1e 00 	. . 
	di			;0a36	f3 	. 
	nop			;0a37	00 	. 
	ld e,000h		;0a38	1e 00 	. . 
	dec e			;0a3a	1d 	. 
	nop			;0a3b	00 	. 
	dec e			;0a3c	1d 	. 
	nop			;0a3d	00 	. 
	dec e			;0a3e	1d 	. 
	nop			;0a3f	00 	. 
	inc e			;0a40	1c 	. 
	nop			;0a41	00 	. 
	inc e			;0a42	1c 	. 
	nop			;0a43	00 	. 
	inc e			;0a44	1c 	. 
	nop			;0a45	00 	. 
	rla			;0a46	17 	. 
	nop			;0a47	00 	. 
	jr l0a4ah		;0a48	18 00 	. . 
l0a4ah:
	rla			;0a4a	17 	. 
	nop			;0a4b	00 	. 
	jr nc,l0a4eh		;0a4c	30 00 	0 . 
l0a4eh:
	jr nc,l0a50h		;0a4e	30 00 	0 . 
l0a50h:
	jr nc,l0a52h		;0a50	30 00 	0 . 
l0a52h:
	ld l,000h		;0a52	2e 00 	. . 
	inc de			;0a54	13 	. 
	nop			;0a55	00 	. 
	ld l,000h		;0a56	2e 00 	. . 
	call p,04500h		;0a58	f4 00 45 	. . E 
	nop			;0a5b	00 	. 
	call p,sub_2b00h		;0a5c	f4 00 2b 	. . + 
	nop			;0a5f	00 	. 
	dec hl			;0a60	2b 	+ 
	nop			;0a61	00 	. 
	dec hl			;0a62	2b 	+ 
	nop			;0a63	00 	. 
	dec c			;0a64	0d 	. 
	nop			;0a65	00 	. 
	rlca			;0a66	07 	. 
	nop			;0a67	00 	. 
	dec c			;0a68	0d 	. 
	nop			;0a69	00 	. 
	ld l,h			;0a6a	6c 	l 
	nop			;0a6b	00 	. 
	dec a			;0a6c	3d 	= 
	nop			;0a6d	00 	. 
	ld c,h			;0a6e	4c 	L 
	nop			;0a6f	00 	. 
	dec sp			;0a70	3b 	; 
	nop			;0a71	00 	. 
	ld a,(l3b00h)		;0a72	3a 00 3b 	: . ; 
	nop			;0a75	00 	. 
	add hl,bc			;0a76	09 	. 
	nop			;0a77	00 	. 
	add hl,bc			;0a78	09 	. 
	nop			;0a79	00 	. 
	add hl,bc			;0a7a	09 	. 
	nop			;0a7b	00 	. 
	ld sp,03100h		;0a7c	31 00 31 	1 . 1 
	nop			;0a7f	00 	. 
	ld sp,l3200h		;0a80	31 00 32 	1 . 2 
	nop			;0a83	00 	. 
	ld (l3200h),a		;0a84	32 00 32 	2 . 2 
	nop			;0a87	00 	. 
	inc sp			;0a88	33 	3 
	nop			;0a89	00 	. 
	inc sp			;0a8a	33 	3 
	nop			;0a8b	00 	. 
	inc sp			;0a8c	33 	3 
	nop			;0a8d	00 	. 
	dec l			;0a8e	2d 	- 
	nop			;0a8f	00 	. 
	ld d,000h		;0a90	16 00 	. . 
	dec l			;0a92	2d 	- 
	nop			;0a93	00 	. 
	ld a,(de)			;0a94	1a 	. 
	nop			;0a95	00 	. 
	dec de			;0a96	1b 	. 
	nop			;0a97	00 	. 
	ld a,(de)			;0a98	1a 	. 
	nop			;0a99	00 	. 
	ld l,c			;0a9a	69 	i 
	nop			;0a9b	00 	. 
	inc a			;0a9c	3c 	< 
	nop			;0a9d	00 	. 
	ld c,c			;0a9e	49 	I 
	nop			;0a9f	00 	. 
	ld l,a			;0aa0	6f 	o 
	nop			;0aa1	00 	. 
	ld a,000h		;0aa2	3e 00 	> . 
	ld c,a			;0aa4	4f 	O 
	nop			;0aa5	00 	. 
	ld (de),a			;0aa6	12 	. 
	nop			;0aa7	00 	. 
	ld (de),a			;0aa8	12 	. 
	nop			;0aa9	00 	. 
	ld (de),a			;0aaa	12 	. 
	nop			;0aab	00 	. 
	inc (hl)			;0aac	34 	4 
	nop			;0aad	00 	. 
	inc (hl)			;0aae	34 	4 
	nop			;0aaf	00 	. 
	inc (hl)			;0ab0	34 	4 
	nop			;0ab1	00 	. 
	dec (hl)			;0ab2	35 	5 
	nop			;0ab3	00 	. 
	dec (hl)			;0ab4	35 	5 
	nop			;0ab5	00 	. 
	dec (hl)			;0ab6	35 	5 
	nop			;0ab7	00 	. 
	ld (hl),000h		;0ab8	36 00 	6 . 
	ld (hl),000h		;0aba	36 00 	6 . 
	ld (hl),000h		;0abc	36 00 	6 . 
	ld hl,(02a00h)		;0abe	2a 00 2a 	* . * 
	nop			;0ac1	00 	. 
	ld hl,(l1900h)		;0ac2	2a 00 19 	* . . 
	nop			;0ac5	00 	. 
	ret m			;0ac6	f8 	. 
	nop			;0ac7	00 	. 
	add hl,de			;0ac8	19 	. 
	nop			;0ac9	00 	. 
	ld (hl),b			;0aca	70 	p 
	nop			;0acb	00 	. 
	ld b,b			;0acc	40 	@ 
	nop			;0acd	00 	. 
	ld d,b			;0ace	50 	P 
	nop			;0acf	00 	. 
	ex af,af'			;0ad0	08 	. 
	nop			;0ad1	00 	. 
	ex af,af'			;0ad2	08 	. 
	nop			;0ad3	00 	. 
	ex af,af'			;0ad4	08 	. 
	nop			;0ad5	00 	. 
	cp 090h		;0ad6	fe 90 	. . 
	cp 0aeh		;0ad8	fe ae 	. . 
	cp 090h		;0ada	fe 90 	. . 
	scf			;0adc	37 	7 
	nop			;0add	00 	. 
	scf			;0ade	37 	7 
	nop			;0adf	00 	. 
	scf			;0ae0	37 	7 
	nop			;0ae1	00 	. 
	jr c,l0ae4h		;0ae2	38 00 	8 . 
l0ae4h:
	jr c,l0ae6h		;0ae4	38 00 	8 . 
l0ae6h:
	jr c,l0ae8h		;0ae6	38 00 	8 . 
l0ae8h:
	add hl,sp			;0ae8	39 	9 
	nop			;0ae9	00 	. 
	add hl,sp			;0aea	39 	9 
	nop			;0aeb	00 	. 
	add hl,sp			;0aec	39 	9 
	nop			;0aed	00 	. 
	cpl			;0aee	2f 	/ 
	nop			;0aef	00 	. 
	cpl			;0af0	2f 	/ 
	nop			;0af1	00 	. 
	cpl			;0af2	2f 	/ 
	nop			;0af3	00 	. 
	add hl,hl			;0af4	29 	) 
	nop			;0af5	00 	. 
	ret p			;0af6	f0 	. 
	nop			;0af7	00 	. 
	add hl,hl			;0af8	29 	) 
	nop			;0af9	00 	. 
	push af			;0afa	f5 	. 
	nop			;0afb	00 	. 
	or 000h		;0afc	f6 00 	. . 
	push af			;0afe	f5 	. 
	nop			;0aff	00 	. 
	cp 09bh		;0b00	fe 9b 	. . 
	cp 09ch		;0b02	fe 9c 	. . 
	cp 09bh		;0b04	fe 9b 	. . 
	ld e,(hl)			;0b06	5e 	^ 
	nop			;0b07	00 	. 
	cp 083h		;0b08	fe 83 	. . 
	ld e,(hl)			;0b0a	5e 	^ 
	nop			;0b0b	00 	. 
	cp 094h		;0b0c	fe 94 	. . 
	cp 089h		;0b0e	fe 89 	. . 
	cp 094h		;0b10	fe 94 	. . 
	cp 088h		;0b12	fe 88 	. . 
	rst 30h			;0b14	f7 	. 
	nop			;0b15	00 	. 
	cp 088h		;0b16	fe 88 	. . 
	jr z,l0b1ah		;0b18	28 00 	( . 
l0b1ah:
	cp 081h		;0b1a	fe 81 	. . 
	jr z,l0b1eh		;0b1c	28 00 	( . 
l0b1eh:
	cp 087h		;0b1e	fe 87 	. . 
	cp 082h		;0b20	fe 82 	. . 
	cp 087h		;0b22	fe 87 	. . 
	cp 080h		;0b24	fe 80 	. . 
	inc b			;0b26	04 	. 
	nop			;0b27	00 	. 
	cp 080h		;0b28	fe 80 	. . 
	djnz l0b2ch		;0b2a	10 00 	. . 
l0b2ch:
	djnz l0b2eh		;0b2c	10 00 	. . 
l0b2eh:
	djnz l0b30h		;0b2e	10 00 	. . 
l0b30h:
	cp 095h		;0b30	fe 95 	. . 
	cp 09dh		;0b32	fe 9d 	. . 
	cp 095h		;0b34	fe 95 	. . 
	cp 096h		;0b36	fe 96 	. . 
	cp 09eh		;0b38	fe 9e 	. . 
	cp 096h		;0b3a	fe 96 	. . 
	cp 091h		;0b3c	fe 91 	. . 
	cp 093h		;0b3e	fe 93 	. . 
	cp 091h		;0b40	fe 91 	. . 
	cp 092h		;0b42	fe 92 	. . 
	cp 086h		;0b44	fe 86 	. . 
	cp 092h		;0b46	fe 92 	. . 
	cp 097h		;0b48	fe 97 	. . 
	cp 09fh		;0b4a	fe 9f 	. . 
	cp 097h		;0b4c	fe 97 	. . 
	rrca			;0b4e	0f 	. 
	nop			;0b4f	00 	. 
	ld c,000h		;0b50	0e 00 	. . 
	rrca			;0b52	0f 	. 
	nop			;0b53	00 	. 
	inc c			;0b54	0c 	. 
	nop			;0b55	00 	. 
	dec bc			;0b56	0b 	. 
	nop			;0b57	00 	. 
	inc c			;0b58	0c 	. 
	nop			;0b59	00 	. 
	dec b			;0b5a	05 	. 
	nop			;0b5b	00 	. 
	dec b			;0b5c	05 	. 
	nop			;0b5d	00 	. 
	dec b			;0b5e	05 	. 
	nop			;0b5f	00 	. 
	nop			;0b60	00 	. 
	nop			;0b61	00 	. 
	nop			;0b62	00 	. 
	nop			;0b63	00 	. 
	nop			;0b64	00 	. 
	nop			;0b65	00 	. 
	add hl,bc			;0b66	09 	. 
	nop			;0b67	00 	. 
	add hl,bc			;0b68	09 	. 
	nop			;0b69	00 	. 
	add hl,bc			;0b6a	09 	. 
	nop			;0b6b	00 	. 
	ld (de),a			;0b6c	12 	. 
	nop			;0b6d	00 	. 
	ld (de),a			;0b6e	12 	. 
	nop			;0b6f	00 	. 
	ld (de),a			;0b70	12 	. 
	nop			;0b71	00 	. 
	and h			;0b72	a4 	. 
	nop			;0b73	00 	. 
	ccf			;0b74	3f 	? 
	nop			;0b75	00 	. 
l0b76h:
	and h			;0b76	a4 	. 
	nop			;0b77	00 	. 
	ld de,0b000h		;0b78	11 00 b0 	. . . 
	nop			;0b7b	00 	. 
	ld de,0a100h		;0b7c	11 00 a1 	. . . 
	nop			;0b7f	00 	. 
	inc de			;0b80	13 	. 
	nop			;0b81	00 	. 
	and c			;0b82	a1 	. 
	nop			;0b83	00 	. 
	and l			;0b84	a5 	. 
	nop			;0b85	00 	. 
	and l			;0b86	a5 	. 
	nop			;0b87	00 	. 
	and l			;0b88	a5 	. 
	nop			;0b89	00 	. 
	and e			;0b8a	a3 	. 
	nop			;0b8b	00 	. 
	pop af			;0b8c	f1 	. 
	nop			;0b8d	00 	. 
	and e			;0b8e	a3 	. 
	nop			;0b8f	00 	. 
	and d			;0b90	a2 	. 
	nop			;0b91	00 	. 
	cp 081h		;0b92	fe 81 	. . 
	and d			;0b94	a2 	. 
	nop			;0b95	00 	. 
	nop			;0b96	00 	. 
	nop			;0b97	00 	. 
	ld d,c			;0b98	51 	Q 
	ld d,a			;0b99	57 	W 
	ld b,l			;0b9a	45 	E 
	ld d,d			;0b9b	52 	R 
	ld d,h			;0b9c	54 	T 
	ld e,c			;0b9d	59 	Y 
	ld d,l			;0b9e	55 	U 
	ld b,c			;0b9f	41 	A 
	ld d,e			;0ba0	53 	S 
	ld b,h			;0ba1	44 	D 
	ld b,(hl)			;0ba2	46 	F 
	ld b,a			;0ba3	47 	G 
	ld c,b			;0ba4	48 	H 
	ld c,d			;0ba5	4a 	J 
	ld c,e			;0ba6	4b 	K 
	ld e,d			;0ba7	5a 	Z 
	ld e,b			;0ba8	58 	X 
	ld b,e			;0ba9	43 	C 
	ld d,(hl)			;0baa	56 	V 
	ld b,d			;0bab	42 	B 
	ld c,(hl)			;0bac	4e 	N 
	ld c,l			;0bad	4d 	M 
	inc l			;0bae	2c 	, 
	add hl,bc			;0baf	09 	. 
	ex af,af'			;0bb0	08 	. 
	dec d			;0bb1	15 	. 
	rlca			;0bb2	07 	. 
	ld a,(bc)			;0bb3	0a 	. 
	jr nz,$+7		;0bb4	20 05 	  . 
	inc b			;0bb6	04 	. 
	rrca			;0bb7	0f 	. 
	ld c,003h		;0bb8	0e 03 	. . 
	jr nc,l0beah		;0bba	30 2e 	0 . 
	dec a			;0bbc	3d 	= 
	dec hl			;0bbd	2b 	+ 
	dec c			;0bbe	0d 	. 
	ld c,h			;0bbf	4c 	L 
	dec sp			;0bc0	3b 	; 
	inc c			;0bc1	0c 	. 
	ld sp,l3332h		;0bc2	31 32 33 	1 2 3 
	dec l			;0bc5	2d 	- 
	add hl,de			;0bc6	19 	. 
	ld c,c			;0bc7	49 	I 
	ld c,a			;0bc8	4f 	O 
	dec bc			;0bc9	0b 	. 
	inc (hl)			;0bca	34 	4 
	dec (hl)			;0bcb	35 	5 
	ld (hl),02ah		;0bcc	36 2a 	6 * 
	jr $+82		;0bce	18 50 	. P 
	rla			;0bd0	17 	. 
	ei			;0bd1	fb 	. 
	scf			;0bd2	37 	7 
	jr c,l0c0eh		;0bd3	38 39 	8 9 
	cpl			;0bd5	2f 	/ 
	add hl,hl			;0bd6	29 	) 
	sbc a,l			;0bd7	9d 	. 
	sbc a,e			;0bd8	9b 	. 
	ld e,(hl)			;0bd9	5e 	^ 
	call m,02888h		;0bda	fc 88 28 	. . ( 
	add a,a			;0bdd	87 	. 
	sbc a,(hl)			;0bde	9e 	. 
	djnz l0b76h		;0bdf	10 95 	. . 
	sub (hl)			;0be1	96 	. 
	sub c			;0be2	91 	. 
	sub d			;0be3	92 	. 
	sub a			;0be4	97 	. 
	sbc a,h			;0be5	9c 	. 
	ld (bc),a			;0be6	02 	. 
	dec b			;0be7	05 	. 
	nop			;0be8	00 	. 
	ld b,a			;0be9	47 	G 
l0beah:
	ld a,(078f0h)		;0bea	3a f0 78 	: . x 
	and 008h		;0bed	e6 08 	. . 
	ld a,b			;0bef	78 	x 
	ret nz			;0bf0	c0 	. 
	call 078fah		;0bf1	cd fa 78 	. . x 
	ld b,a			;0bf4	47 	G 
	and 07fh		;0bf5	e6 7f 	.  
	cp 053h		;0bf7	fe 53 	. S 
	ret c			;0bf9	d8 	. 
	ld a,000h		;0bfa	3e 00 	> . 
	ret			;0bfc	c9 	. 
	call 08be9h		;0bfd	cd e9 8b 	. . . 
	ret nc			;0c00	d0 	. 
	cp 018h		;0c01	fe 18 	. . 
	jr c,l0c0dh		;0c03	38 08 	8 . 
	cp 029h		;0c05	fe 29 	. ) 
	jr c,l0c23h		;0c07	38 1a 	8 . 
	cp 040h		;0c09	fe 40 	. @ 
	jr nc,l0c23h		;0c0b	30 16 	0 . 
l0c0dh:
	push de			;0c0d	d5 	. 
l0c0eh:
	push hl			;0c0e	e5 	. 
	ld de,l0004h		;0c0f	11 04 00 	. . . 
	rl b		;0c12	cb 10 	. . 
	ld bc,08974h		;0c14	01 74 89 	. t . 
	jp nc,08c9dh		;0c17	d2 9d 8c 	. . . 
	ld de,l0000h+2		;0c1a	11 02 00 	. . . 
	jr l0c9dh		;0c1d	18 7e 	. ~ 
	call 08be9h		;0c1f	cd e9 8b 	. . . 
	ret nc			;0c22	d0 	. 
l0c23h:
	push de			;0c23	d5 	. 
	push hl			;0c24	e5 	. 
	cp 01ch		;0c25	fe 1c 	. . 
	jr z,l0c35h		;0c27	28 0c 	( . 
	cp 023h		;0c29	fe 23 	. # 
	jr z,l0c35h		;0c2b	28 08 	( . 
	cp 02bh		;0c2d	fe 2b 	. + 
	jr z,l0c35h		;0c2f	28 04 	( . 
	cp 033h		;0c31	fe 33 	. 3 
	jr nz,l0c3dh		;0c33	20 08 	  . 
l0c35h:
	ld hl,07932h		;0c35	21 32 79 	! 2 y 
	bit 7,(hl)		;0c38	cb 7e 	. ~ 
	call nz,08ca8h		;0c3a	c4 a8 8c 	. . . 
l0c3dh:
	ld e,000h		;0c3d	1e 00 	. . 
	ld a,(07901h)		;0c3f	3a 01 79 	: . y 
	ld d,a			;0c42	57 	W 
	ld a,b			;0c43	78 	x 
	bit 7,a		;0c44	cb 7f 	.  
	jr z,l0c4ch		;0c46	28 04 	( . 
l0c48h:
	ld e,002h		;0c48	1e 02 	. . 
	jr l0c60h		;0c4a	18 14 	. . 
l0c4ch:
	bit 4,d		;0c4c	cb 62 	. b 
	jr nz,l0c48h		;0c4e	20 f8 	  . 
	bit 2,d		;0c50	cb 52 	. R 
	jr z,l0c5ah		;0c52	28 06 	( . 
	bit 3,d		;0c54	cb 5a 	. Z 
	jr nz,l0c60h		;0c56	20 08 	  . 
	jr l0c5eh		;0c58	18 04 	. . 
l0c5ah:
	bit 1,d		;0c5a	cb 4a 	. J 
	jr z,l0c60h		;0c5c	28 02 	( . 
l0c5eh:
	ld e,004h		;0c5e	1e 04 	. . 
l0c60h:
	and 07fh		;0c60	e6 7f 	.  
	ld bc,08974h		;0c62	01 74 89 	. t . 
	bit 2,d		;0c65	cb 52 	. R 
	ld d,000h		;0c67	16 00 	. . 
	jr z,l0c9dh		;0c69	28 32 	( 2 
	cp 018h		;0c6b	fe 18 	. . 
	jr nz,l0c75h		;0c6d	20 06 	  . 
	xor a			;0c6f	af 	. 
l0c70h:
	ld bc,08b72h		;0c70	01 72 8b 	. r . 
	jr l0c9dh		;0c73	18 28 	. ( 
l0c75h:
	cp 01ch		;0c75	fe 1c 	. . 
	jr nz,l0c7dh		;0c77	20 04 	  . 
	ld a,001h		;0c79	3e 01 	> . 
	jr l0c70h		;0c7b	18 f3 	. . 
l0c7dh:
	cp 025h		;0c7d	fe 25 	. % 
	jr nz,l0c85h		;0c7f	20 04 	  . 
	ld a,002h		;0c81	3e 02 	> . 
	jr l0c70h		;0c83	18 eb 	. . 
l0c85h:
	cp 027h		;0c85	fe 27 	. ' 
	jr nz,l0c8dh		;0c87	20 04 	  . 
	ld a,003h		;0c89	3e 03 	> . 
	jr l0c70h		;0c8b	18 e3 	. . 
l0c8dh:
	cp 040h		;0c8d	fe 40 	. @ 
	jr nz,l0c95h		;0c8f	20 04 	  . 
	ld a,004h		;0c91	3e 04 	> . 
	jr l0c70h		;0c93	18 db 	. . 
l0c95h:
	cp 046h		;0c95	fe 46 	. F 
	jr nz,l0c9dh		;0c97	20 04 	  . 
	ld a,005h		;0c99	3e 05 	> . 
	jr l0c70h		;0c9b	18 d3 	. . 
l0c9dh:
	call 08cc2h		;0c9d	cd c2 8c 	. . . 
	add hl,bc			;0ca0	09 	. 
	add hl,de			;0ca1	19 	. 
	ld a,(hl)			;0ca2	7e 	~ 
	inc hl			;0ca3	23 	# 
	ld b,(hl)			;0ca4	46 	F 
	pop hl			;0ca5	e1 	. 
	pop de			;0ca6	d1 	. 
	ret			;0ca7	c9 	. 
	cp 01ch		;0ca8	fe 1c 	. . 
	jr z,l0cb6h		;0caa	28 0a 	( . 
	cp 023h		;0cac	fe 23 	. # 
	jr z,l0cbah		;0cae	28 0a 	( . 
	cp 02bh		;0cb0	fe 2b 	. + 
	jr z,l0cbeh		;0cb2	28 0a 	( . 
l0cb4h:
	ld b,a			;0cb4	47 	G 
	ret			;0cb5	c9 	. 
l0cb6h:
	ld a,01ch		;0cb6	3e 1c 	> . 
	jr l0cb4h		;0cb8	18 fa 	. . 
l0cbah:
	ld a,023h		;0cba	3e 23 	> # 
	jr l0cb4h		;0cbc	18 f6 	. . 
l0cbeh:
	ld a,02bh		;0cbe	3e 2b 	> + 
	jr l0cb4h		;0cc0	18 f2 	. . 
	push de			;0cc2	d5 	. 
	ld h,000h		;0cc3	26 00 	& . 
	ld l,a			;0cc5	6f 	o 
	add hl,hl			;0cc6	29 	) 
	ld d,h			;0cc7	54 	T 
	ld e,l			;0cc8	5d 	] 
	add hl,hl			;0cc9	29 	) 
	add hl,de			;0cca	19 	. 
	pop de			;0ccb	d1 	. 
	ret			;0ccc	c9 	. 
	and 07fh		;0ccd	e6 7f 	.  
	cp 053h		;0ccf	fe 53 	. S 
	jr nc,l0ce0h		;0cd1	30 0d 	0 . 
	push bc			;0cd3	c5 	. 
	push hl			;0cd4	e5 	. 
	ld b,000h		;0cd5	06 00 	. . 
	ld c,a			;0cd7	4f 	O 
	ld hl,08b96h		;0cd8	21 96 8b 	! . . 
	add hl,bc			;0cdb	09 	. 
	ld a,(hl)			;0cdc	7e 	~ 
	pop hl			;0cdd	e1 	. 
	pop bc			;0cde	c1 	. 
	ret			;0cdf	c9 	. 
l0ce0h:
	ld a,000h		;0ce0	3e 00 	> . 
	ret			;0ce2	c9 	. 
	push af			;0ce3	f5 	. 
	ld a,(078f1h)		;0ce4	3a f1 78 	: . x 
	ld (0797eh),a		;0ce7	32 7e 79 	2 ~ y 
	pop af			;0cea	f1 	. 
	ret			;0ceb	c9 	. 
	push af			;0cec	f5 	. 
	ld a,(078f2h)		;0ced	3a f2 78 	: . x 
	ld (0797eh),a		;0cf0	32 7e 79 	2 ~ y 
	pop af			;0cf3	f1 	. 
	ret			;0cf4	c9 	. 
	ld a,(078f0h)		;0cf5	3a f0 78 	: . x 
	and 002h		;0cf8	e6 02 	. . 
	call z,0be32h		;0cfa	cc 32 be 	. 2 . 
	ret			;0cfd	c9 	. 
	call 08703h		;0cfe	cd 03 87 	. . . 
	call 08dd7h		;0d01	cd d7 8d 	. . . 
	ld a,002h		;0d04	3e 02 	> . 
	out (01eh),a		;0d06	d3 1e 	. . 
	ld a,00fh		;0d08	3e 0f 	> . 
	out (017h),a		;0d0a	d3 17 	. . 
	di			;0d0c	f3 	. 
	xor a			;0d0d	af 	. 
	out (018h),a		;0d0e	d3 18 	. . 
	out (011h),a		;0d10	d3 11 	. . 
	ld a,040h		;0d12	3e 40 	> @ 
	out (012h),a		;0d14	d3 12 	. . 
l0d16h:
	ld a,000h		;0d16	3e 00 	> . 
	out (01ch),a		;0d18	d3 1c 	. . 
	ld a,0ffh		;0d1a	3e ff 	> . 
	ld i,a		;0d1c	ed 47 	. G 
	ld r,a		;0d1e	ed 4f 	. O 
	halt			;0d20	76 	v 
	jr l0d16h		;0d21	18 f3 	. . 
	ld a,001h		;0d23	3e 01 	> . 
	out (011h),a		;0d25	d3 11 	. . 
	call 0895ch		;0d27	cd 5c 89 	. \ . 
	in a,(010h)		;0d2a	db 10 	. . 
	bit 0,a		;0d2c	cb 47 	. G 
	jr z,l0d37h		;0d2e	28 07 	( . 
	call 0895ch		;0d30	cd 5c 89 	. \ . 
	in a,(010h)		;0d33	db 10 	. . 
	bit 0,a		;0d35	cb 47 	. G 
l0d37h:
	ld a,000h		;0d37	3e 00 	> . 
	out (011h),a		;0d39	d3 11 	. . 
	ret			;0d3b	c9 	. 
	in a,(01fh)		;0d3c	db 1f 	. . 
	bit 7,a		;0d3e	cb 7f 	.  
	ret z			;0d40	c8 	. 
	call 08965h		;0d41	cd 65 89 	. e . 
	in a,(01fh)		;0d44	db 1f 	. . 
	bit 7,a		;0d46	cb 7f 	.  
	ret			;0d48	c9 	. 
	push af			;0d49	f5 	. 
	ld a,(07903h)		;0d4a	3a 03 79 	: . y 
	bit 0,a		;0d4d	cb 47 	. G 
	jr nz,l0d59h		;0d4f	20 08 	  . 
	ld a,013h		;0d51	3e 13 	> . 
	call 08d7ch		;0d53	cd 7c 8d 	. | . 
	call c,08d9eh		;0d56	dc 9e 8d 	. . . 
l0d59h:
	pop af			;0d59	f1 	. 
	ret			;0d5a	c9 	. 
	push af			;0d5b	f5 	. 
	call 08d94h		;0d5c	cd 94 8d 	. . . 
	jr c,l0d63h		;0d5f	38 02 	8 . 
	pop af			;0d61	f1 	. 
	ret			;0d62	c9 	. 
l0d63h:
	pop af			;0d63	f1 	. 
	ld b,07fh		;0d64	06 7f 	.  
	ret			;0d66	c9 	. 
	call 08d94h		;0d67	cd 94 8d 	. . . 
	ret c			;0d6a	d8 	. 
	ld a,(07903h)		;0d6b	3a 03 79 	: . y 
	bit 0,a		;0d6e	cb 47 	. G 
	jr nz,l0d7ah		;0d70	20 08 	  . 
	ld a,01fh		;0d72	3e 1f 	> . 
	call 08d7ch		;0d74	cd 7c 8d 	. | . 
	call c,08d9eh		;0d77	dc 9e 8d 	. . . 
l0d7ah:
	or a			;0d7a	b7 	. 
	ret			;0d7b	c9 	. 
	push af			;0d7c	f5 	. 
	ld a,001h		;0d7d	3e 01 	> . 
	out (01eh),a		;0d7f	d3 1e 	. . 
	pop af			;0d81	f1 	. 
	call 08db4h		;0d82	cd b4 8d 	. . . 
	in a,(01dh)		;0d85	db 1d 	. . 
	rra			;0d87	1f 	. 
	jr nc,l0d8fh		;0d88	30 05 	0 . 
	push hl			;0d8a	e5 	. 
	pop hl			;0d8b	e1 	. 
	in a,(01dh)		;0d8c	db 1d 	. . 
	rra			;0d8e	1f 	. 
l0d8fh:
	ld a,003h		;0d8f	3e 03 	> . 
	out (01eh),a		;0d91	d3 1e 	. . 
	ret			;0d93	c9 	. 
	in a,(01dh)		;0d94	db 1d 	. . 
	rra			;0d96	1f 	. 
	ret nc			;0d97	d0 	. 
	push hl			;0d98	e5 	. 
	pop hl			;0d99	e1 	. 
	in a,(01dh)		;0d9a	db 1d 	. . 
	rra			;0d9c	1f 	. 
	ret			;0d9d	c9 	. 
	push af			;0d9e	f5 	. 
	push hl			;0d9f	e5 	. 
	ld hl,07903h		;0da0	21 03 79 	! . y 
	set 0,(hl)		;0da3	cb c6 	. . 
l0da5h:
	call 0854dh		;0da5	cd 4d 85 	. M . 
	pop hl			;0da8	e1 	. 
	pop af			;0da9	f1 	. 
	ret			;0daa	c9 	. 
	push af			;0dab	f5 	. 
	push hl			;0dac	e5 	. 
	ld hl,07903h		;0dad	21 03 79 	! . y 
	res 0,(hl)		;0db0	cb 86 	. . 
	jr l0da5h		;0db2	18 f1 	. . 
	dec a			;0db4	3d 	= 
	jp nz,08db4h		;0db5	c2 b4 8d 	. . . 
	ret			;0db8	c9 	. 
	push af			;0db9	f5 	. 
	push bc			;0dba	c5 	. 
	xor a			;0dbb	af 	. 
	call 08dcfh		;0dbc	cd cf 8d 	. . . 
	ld a,002h		;0dbf	3e 02 	> . 
	call 08dcfh		;0dc1	cd cf 8d 	. . . 
	in a,(015h)		;0dc4	db 15 	. . 
	and 0feh		;0dc6	e6 fe 	. . 
	or 080h		;0dc8	f6 80 	. . 
	out (015h),a		;0dca	d3 15 	. . 
	pop bc			;0dcc	c1 	. 
	pop af			;0dcd	f1 	. 
	ret			;0dce	c9 	. 
	out (018h),a		;0dcf	d3 18 	. . 
	ld bc,l00ffh+1		;0dd1	01 00 01 	. . . 
	jp 0896bh		;0dd4	c3 6b 89 	. k . 
	push af			;0dd7	f5 	. 
	in a,(015h)		;0dd8	db 15 	. . 
	and 07eh		;0dda	e6 7e 	. ~ 
	out (015h),a		;0ddc	d3 15 	. . 
	xor a			;0dde	af 	. 
	out (018h),a		;0ddf	d3 18 	. . 
	pop af			;0de1	f1 	. 
	ret			;0de2	c9 	. 
	xor a			;0de3	af 	. 
	ld (07b00h),a		;0de4	32 00 7b 	2 . { 
	ld (078ech),a		;0de7	32 ec 78 	2 . x 
	push hl			;0dea	e5 	. 
	ld hl,07b00h		;0deb	21 00 7b 	! . { 
	ld (078e7h),hl		;0dee	22 e7 78 	" . x 
	pop hl			;0df1	e1 	. 
	ret			;0df2	c9 	. 
	ld hl,07b00h		;0df3	21 00 7b 	! . { 
	ld b,00ah		;0df6	06 0a 	. . 
	ld a,(078efh)		;0df8	3a ef 78 	: . x 
	ld c,a			;0dfb	4f 	O 
	ld a,(078ech)		;0dfc	3a ec 78 	: . x 
	and 00fh		;0dff	e6 0f 	. . 
	ld (078ech),a		;0e01	32 ec 78 	2 . x 
l0e04h:
	call 08fb6h		;0e04	cd b6 8f 	. . . 
	jr c,l0e37h		;0e07	38 2e 	8 . 
	or a			;0e09	b7 	. 
	jr z,l0e04h		;0e0a	28 f8 	( . 
	ld (hl),a			;0e0c	77 	w 
	inc hl			;0e0d	23 	# 
	inc b			;0e0e	04 	. 
	jr z,l0e4ah		;0e0f	28 39 	( 9 
	ld a,(078ech)		;0e11	3a ec 78 	: . x 
	and 0c0h		;0e14	e6 c0 	. . 
	jr z,l0e04h		;0e16	28 ec 	( . 
	and 080h		;0e18	e6 80 	. . 
	jr nz,l0e37h		;0e1a	20 1b 	  . 
l0e1ch:
	ld b,0fbh		;0e1c	06 fb 	. . 
l0e1eh:
	call 0911dh		;0e1e	cd 1d 91 	. . . 
	jr nc,l0e2bh		;0e21	30 08 	0 . 
	or a			;0e23	b7 	. 
	scf			;0e24	37 	7 
	jr z,l0e37h		;0e25	28 10 	( . 
	cp 0ffh		;0e27	fe ff 	. . 
	jr l0e37h		;0e29	18 0c 	. . 
l0e2bh:
	inc b			;0e2b	04 	. 
	jr z,l0e3dh		;0e2c	28 0f 	( . 
	ld (hl),a			;0e2e	77 	w 
	inc hl			;0e2f	23 	# 
	ld a,(078ech)		;0e30	3a ec 78 	: . x 
	and 080h		;0e33	e6 80 	. . 
	jr z,l0e1eh		;0e35	28 e7 	( . 
l0e37h:
	ld (hl),000h		;0e37	36 00 	6 . 
	ld hl,07b00h		;0e39	21 00 7b 	! . { 
	ret			;0e3c	c9 	. 
l0e3dh:
	ld a,002h		;0e3d	3e 02 	> . 
	out (018h),a		;0e3f	d3 18 	. . 
	ld (hl),000h		;0e41	36 00 	6 . 
	ld hl,07b00h		;0e43	21 00 7b 	! . { 
	ld a,00bh		;0e46	3e 0b 	> . 
	scf			;0e48	37 	7 
	ret			;0e49	c9 	. 
l0e4ah:
	ld a,002h		;0e4a	3e 02 	> . 
	out (018h),a		;0e4c	d3 18 	. . 
	jr l0e1ch		;0e4e	18 cc 	. . 
	push hl			;0e50	e5 	. 
	ld hl,(078e7h)		;0e51	2a e7 78 	* . x 
l0e54h:
	ld a,(hl)			;0e54	7e 	~ 
	or a			;0e55	b7 	. 
	jr nz,l0e6fh		;0e56	20 17 	  . 
	ld a,(078ech)		;0e58	3a ec 78 	: . x 
	and 080h		;0e5b	e6 80 	. . 
	jr z,l0e64h		;0e5d	28 05 	( . 
	scf			;0e5f	37 	7 
	ld a,0ffh		;0e60	3e ff 	> . 
	jr l0e71h		;0e62	18 0d 	. . 
l0e64h:
	push bc			;0e64	c5 	. 
	push de			;0e65	d5 	. 
	call 08df3h		;0e66	cd f3 8d 	. . . 
	pop de			;0e69	d1 	. 
	pop bc			;0e6a	c1 	. 
	jr nc,l0e54h		;0e6b	30 e7 	0 . 
	jr l0e71h		;0e6d	18 02 	. . 
l0e6fh:
	inc hl			;0e6f	23 	# 
	or a			;0e70	b7 	. 
l0e71h:
	ld (078e7h),hl		;0e71	22 e7 78 	" . x 
	pop hl			;0e74	e1 	. 
	ret			;0e75	c9 	. 
	push hl			;0e76	e5 	. 
	call 08e50h		;0e77	cd 50 8e 	. P . 
	ld hl,(078e7h)		;0e7a	2a e7 78 	* . x 
	dec hl			;0e7d	2b 	+ 
	ld (078e7h),hl		;0e7e	22 e7 78 	" . x 
	jr c,l0e8ch		;0e81	38 09 	8 . 
	ld hl,078efh		;0e83	21 ef 78 	! . x 
	cp (hl)			;0e86	be 	. 
	jr nz,l0e8bh		;0e87	20 02 	  . 
	ld a,01ah		;0e89	3e 1a 	> . 
l0e8bh:
	or a			;0e8b	b7 	. 
l0e8ch:
	pop hl			;0e8c	e1 	. 
	ret			;0e8d	c9 	. 
	push af			;0e8e	f5 	. 
	call 08e50h		;0e8f	cd 50 8e 	. P . 
	pop af			;0e92	f1 	. 
	ret			;0e93	c9 	. 
l0e94h:
	ld a,(hl)			;0e94	7e 	~ 
	or a			;0e95	b7 	. 
	ret z			;0e96	c8 	. 
	call 08f9ch		;0e97	cd 9c 8f 	. . . 
	ret c			;0e9a	d8 	. 
	inc hl			;0e9b	23 	# 
	jr l0e94h		;0e9c	18 f6 	. . 
	ld a,(078ech)		;0e9e	3a ec 78 	: . x 
	and 00fh		;0ea1	e6 0f 	. . 
	or 010h		;0ea3	f6 10 	. . 
	ld (078ech),a		;0ea5	32 ec 78 	2 . x 
	ld a,003h		;0ea8	3e 03 	> . 
	out (018h),a		;0eaa	d3 18 	. . 
l0each:
	call 08fbah		;0eac	cd ba 8f 	. . . 
	ret c			;0eaf	d8 	. 
	or a			;0eb0	b7 	. 
	jr z,l0each		;0eb1	28 f9 	( . 
	ld b,a			;0eb3	47 	G 
	dec de			;0eb4	1b 	. 
	ld a,d			;0eb5	7a 	z 
	or e			;0eb6	b3 	. 
	ld a,b			;0eb7	78 	x 
	jr z,l0ec4h		;0eb8	28 0a 	( . 
	ld (hl),a			;0eba	77 	w 
	inc hl			;0ebb	23 	# 
	ld a,(078ech)		;0ebc	3a ec 78 	: . x 
	and 080h		;0ebf	e6 80 	. . 
	jr z,l0each		;0ec1	28 e9 	( . 
	ret			;0ec3	c9 	. 
l0ec4h:
	scf			;0ec4	37 	7 
	ld a,009h		;0ec5	3e 09 	> . 
	ret			;0ec7	c9 	. 
	ld a,b			;0ec8	78 	x 
	jp 08f9ch		;0ec9	c3 9c 8f 	. . . 
	call 08ed2h		;0ecc	cd d2 8e 	. . . 
	jp 078f7h		;0ecf	c3 f7 78 	. . x 
	push de			;0ed2	d5 	. 
	push hl			;0ed3	e5 	. 
	ld hl,(0780eh)		;0ed4	2a 0e 78 	* . x 
	ld a,(hl)			;0ed7	7e 	~ 
	or a			;0ed8	b7 	. 
	jr nz,l0f1ch		;0ed9	20 41 	  A 
	call 08db9h		;0edb	cd b9 8d 	. . . 
	ld hl,07800h		;0ede	21 00 78 	! . x 
	exx			;0ee1	d9 	. 
	ld de,00028h		;0ee2	11 28 00 	. ( . 
	ld a,003h		;0ee5	3e 03 	> . 
	out (018h),a		;0ee7	d3 18 	. . 
	call 09129h		;0ee9	cd 29 91 	. ) . 
	ld b,a			;0eec	47 	G 
	ld a,002h		;0eed	3e 02 	> . 
	out (018h),a		;0eef	d3 18 	. . 
	jr c,l0f15h		;0ef1	38 22 	8 " 
	ld d,0fdh		;0ef3	16 fd 	. . 
l0ef5h:
	call 0911dh		;0ef5	cd 1d 91 	. . . 
	jr nc,l0f0eh		;0ef8	30 14 	0 . 
l0efah:
	ld (hl),000h		;0efa	36 00 	6 . 
	ld hl,07800h		;0efc	21 00 78 	! . x 
l0effh:
	ld a,(07965h)		;0eff	3a 65 79 	: e y 
	and 0feh		;0f02	e6 fe 	. . 
	ld (07965h),a		;0f04	32 65 79 	2 e y 
	scf			;0f07	37 	7 
l0f08h:
	ld (0780eh),hl		;0f08	22 0e 78 	" . x 
	pop hl			;0f0b	e1 	. 
	pop de			;0f0c	d1 	. 
	ret			;0f0d	c9 	. 
l0f0eh:
	inc d			;0f0e	14 	. 
	jr z,l0efah		;0f0f	28 e9 	( . 
	ld (hl),a			;0f11	77 	w 
	inc hl			;0f12	23 	# 
	jr l0ef5h		;0f13	18 e0 	. . 
l0f15h:
	ld hl,07800h		;0f15	21 00 78 	! . x 
	xor a			;0f18	af 	. 
	ld (hl),a			;0f19	77 	w 
	jr l0f08h		;0f1a	18 ec 	. . 
l0f1ch:
	ld b,a			;0f1c	47 	G 
	inc hl			;0f1d	23 	# 
	scf			;0f1e	37 	7 
	jr l0effh		;0f1f	18 de 	. . 
	exx			;0f21	d9 	. 
	ld b,a			;0f22	47 	G 
	ld a,(078edh)		;0f23	3a ed 78 	: . x 
	ld l,a			;0f26	6f 	o 
	ld a,(078eeh)		;0f27	3a ee 78 	: . x 
	ld d,a			;0f2a	57 	W 
	bit 7,d		;0f2b	cb 7a 	. z 
	jp z,08f3fh		;0f2d	ca 3f 8f 	. ? . 
	ld c,008h		;0f30	0e 08 	. . 
	ld a,b			;0f32	78 	x 
	and 0ffh		;0f33	e6 ff 	. . 
	jp pe,08f47h		;0f35	ea 47 8f 	. G . 
	ld e,000h		;0f38	1e 00 	. . 
	cpl			;0f3a	2f 	/ 
	ld b,a			;0f3b	47 	G 
	jp 08f4eh		;0f3c	c3 4e 8f 	. N . 
	ld c,007h		;0f3f	0e 07 	. . 
	ld a,b			;0f41	78 	x 
	and 07fh		;0f42	e6 7f 	.  
	jp po,08f38h		;0f44	e2 38 8f 	. 8 . 
	ld e,001h		;0f47	1e 01 	. . 
	cpl			;0f49	2f 	/ 
	ld b,a			;0f4a	47 	G 
	jp 08f4eh		;0f4b	c3 4e 8f 	. N . 
	ld a,082h		;0f4e	3e 82 	> . 
	out (018h),a		;0f50	d3 18 	. . 
	xor a			;0f52	af 	. 
	jp 08f56h		;0f53	c3 56 8f 	. V . 
	bit 0,a		;0f56	cb 47 	. G 
	bit 0,a		;0f58	cb 47 	. G 
	call 091e1h		;0f5a	cd e1 91 	. . . 
	ld a,004h		;0f5d	3e 04 	> . 
	rr b		;0f5f	cb 18 	. . 
	rra			;0f61	1f 	. 
	out (018h),a		;0f62	d3 18 	. . 
	dec c			;0f64	0d 	. 
	jp nz,08f56h		;0f65	c2 56 8f 	. V . 
	bit 6,d		;0f68	cb 72 	. r 
	jr z,l0f85h		;0f6a	28 19 	( . 
	bit 5,d		;0f6c	cb 6a 	. j 
	jr nz,l0f71h		;0f6e	20 01 	  . 
	inc e			;0f70	1c 	. 
l0f71h:
	push af			;0f71	f5 	. 
	bit 0,a		;0f72	cb 47 	. G 
	call 091ech		;0f74	cd ec 91 	. . . 
	pop af			;0f77	f1 	. 
	ld a,004h		;0f78	3e 04 	> . 
	rr e		;0f7a	cb 1b 	. . 
	rra			;0f7c	1f 	. 
	out (018h),a		;0f7d	d3 18 	. . 
	push af			;0f7f	f5 	. 
	ld a,000h		;0f80	3e 00 	> . 
	ld a,000h		;0f82	3e 00 	> . 
	pop af			;0f84	f1 	. 
l0f85h:
	inc bc			;0f85	03 	. 
	or a			;0f86	b7 	. 
	call 091e1h		;0f87	cd e1 91 	. . . 
	ld a,002h		;0f8a	3e 02 	> . 
	out (018h),a		;0f8c	d3 18 	. . 
	call 091e1h		;0f8e	cd e1 91 	. . . 
	bit 4,d		;0f91	cb 62 	. b 
	jp z,08f99h		;0f93	ca 99 8f 	. . . 
	call 091e1h		;0f96	cd e1 91 	. . . 
	xor a			;0f99	af 	. 
	exx			;0f9a	d9 	. 
	ret			;0f9b	c9 	. 
	ex af,af'			;0f9c	08 	. 
l0f9dh:
	in a,(01fh)		;0f9d	db 1f 	. . 
	and 082h		;0f9f	e6 82 	. . 
	jr z,l0f9dh		;0fa1	28 fa 	( . 
	rla			;0fa3	17 	. 
	jr c,l0faah		;0fa4	38 04 	8 . 
	ex af,af'			;0fa6	08 	. 
	jp 08f21h		;0fa7	c3 21 8f 	. ! . 
l0faah:
	ex af,af'			;0faa	08 	. 
	ld a,(07f35h)		;0fab	3a 35 7f 	: 5  
	or 020h		;0fae	f6 20 	.   
	ld (07f35h),a		;0fb0	32 35 7f 	2 5  
	xor a			;0fb3	af 	. 
	scf			;0fb4	37 	7 
	ret			;0fb5	c9 	. 
	ld a,003h		;0fb6	3e 03 	> . 
	out (018h),a		;0fb8	d3 18 	. . 
	exx			;0fba	d9 	. 
	ld bc,08408h		;0fbb	01 08 84 	. . . 
	ld e,000h		;0fbe	1e 00 	. . 
	ld a,(078ech)		;0fc0	3a ec 78 	: . x 
	ld h,a			;0fc3	67 	g 
	ld a,(078edh)		;0fc4	3a ed 78 	: . x 
	ld l,a			;0fc7	6f 	o 
l0fc8h:
	in a,(01fh)		;0fc8	db 1f 	. . 
	and b			;0fca	a0 	. 
	jp z,08fc8h		;0fcb	ca c8 8f 	. . . 
	rla			;0fce	17 	. 
	jp c,090e2h		;0fcf	da e2 90 	. . . 
	ld a,(078eeh)		;0fd2	3a ee 78 	: . x 
	ld d,a			;0fd5	57 	W 
	rla			;0fd6	17 	. 
	jr nc,l0fdah		;0fd7	30 01 	0 . 
	inc c			;0fd9	0c 	. 
l0fdah:
	in a,(01fh)		;0fda	db 1f 	. . 
	bit 2,a		;0fdc	cb 57 	. W 
	jr z,l0fc8h		;0fde	28 e8 	( . 
	xor a			;0fe0	af 	. 
	xor a			;0fe1	af 	. 
	ld b,a			;0fe2	47 	G 
	call 0918ah		;0fe3	cd 8a 91 	. . . 
	jr l0febh		;0fe6	18 03 	. . 
	call 091e1h		;0fe8	cd e1 91 	. . . 
l0febh:
	in a,(01fh)		;0feb	db 1f 	. . 
	rra			;0fed	1f 	. 
	rra			;0fee	1f 	. 
	rra			;0fef	1f 	. 
	ccf			;0ff0	3f 	? 
	jr nc,l0ff4h		;0ff1	30 01 	0 . 
	inc e			;0ff3	1c 	. 
l0ff4h:
	rr b		;0ff4	cb 18 	. . 
	dec c			;0ff6	0d 	. 
	jp nz,08fe8h		;0ff7	c2 e8 8f 	. . . 
	or a			;0ffa	b7 	. 
	ld a,b			;0ffb	78 	x 
	bit 7,d		;0ffc	cb 7a 	. z 
	jr nz,l1001h		;0ffe	20 01 	  . 
	rra			;1000	1f 	. 
l1001h:
	ld b,a			;1001	47 	G 
	bit 6,d		;1002	cb 72 	. r 
	jp z,09020h		;1004	ca 20 90 	.   . 
	call 091ech		;1007	cd ec 91 	. . . 
	in a,(01fh)		;100a	db 1f 	. . 
	bit 2,a		;100c	cb 57 	. W 
	jr nz,l1011h		;100e	20 01 	  . 
	inc e			;1010	1c 	. 
l1011h:
	bit 5,d		;1011	cb 6a 	. j 
	jr z,l1016h		;1013	28 01 	( . 
	inc e			;1015	1c 	. 
l1016h:
	rr e		;1016	cb 1b 	. . 
	jp nc,090f4h		;1018	d2 f4 90 	. . . 
	push af			;101b	f5 	. 
	push af			;101c	f5 	. 
	rra			;101d	1f 	. 
	pop af			;101e	f1 	. 
	pop af			;101f	f1 	. 
	ld a,(078efh)		;1020	3a ef 78 	: . x 
	cp b			;1023	b8 	. 
	jp nz,09030h		;1024	c2 30 90 	. 0 . 
	set 7,h		;1027	cb fc 	. . 
	ld a,002h		;1029	3e 02 	> . 
	out (018h),a		;102b	d3 18 	. . 
	jp 09036h		;102d	c3 36 90 	. 6 . 
	push af			;1030	f5 	. 
	bit 0,a		;1031	cb 47 	. G 
	ld a,000h		;1033	3e 00 	> . 
	pop af			;1035	f1 	. 
	bit 4,h		;1036	cb 64 	. d 
	jp nz,090f9h		;1038	c2 f9 90 	. . . 
	ld a,b			;103b	78 	x 
	cp 00dh		;103c	fe 0d 	. . 
	jr z,l1067h		;103e	28 27 	( ' 
	cp 00ah		;1040	fe 0a 	. . 
	jp nz,09057h		;1042	c2 57 90 	. W . 
	bit 0,d		;1045	cb 42 	. B 
	jr nz,l105eh		;1047	20 15 	  . 
	bit 5,h		;1049	cb 6c 	. l 
	jr z,l1073h		;104b	28 26 	( & 
l104dh:
	set 6,h		;104d	cb f4 	. . 
	ld a,002h		;104f	3e 02 	> . 
	out (018h),a		;1051	d3 18 	. . 
l1053h:
	or a			;1053	b7 	. 
	jp 0907ah		;1054	c3 7a 90 	. z . 
	push hl			;1057	e5 	. 
	push hl			;1058	e5 	. 
	dec hl			;1059	2b 	+ 
	pop hl			;105a	e1 	. 
	pop hl			;105b	e1 	. 
	jr l1053h		;105c	18 f5 	. . 
l105eh:
	jr l104dh		;105e	18 ed 	. . 
l1060h:
	and 000h		;1060	e6 00 	. . 
	and 000h		;1062	e6 00 	. . 
	jp 0904dh		;1064	c3 4d 90 	. M . 
l1067h:
	bit 2,d		;1067	cb 52 	. R 
	jr nz,l1060h		;1069	20 f5 	  . 
	bit 1,d		;106b	cb 4a 	. J 
	jr z,l1078h		;106d	28 09 	( . 
	ld a,000h		;106f	3e 00 	> . 
	set 5,h		;1071	cb ec 	. . 
l1073h:
	or a			;1073	b7 	. 
	ld a,000h		;1074	3e 00 	> . 
	jr l1053h		;1076	18 db 	. . 
l1078h:
	jr l1073h		;1078	18 f9 	. . 
	ld a,h			;107a	7c 	| 
	ld (078ech),a		;107b	32 ec 78 	2 . x 
	bit 5,l		;107e	cb 6d 	. m 
	jp nz,09088h		;1080	c2 88 90 	. . . 
	bit 4,l		;1083	cb 65 	. e 
	jp z,09096h		;1085	ca 96 90 	. . . 
	ld de,l0036h		;1088	11 36 00 	. 6 . 
	in a,(01fh)		;108b	db 1f 	. . 
	bit 2,a		;108d	cb 57 	. W 
	jp nz,090d7h		;108f	c2 d7 90 	. . . 
	xor a			;1092	af 	. 
	ld a,b			;1093	78 	x 
	exx			;1094	d9 	. 
	ret			;1095	c9 	. 
	push bc			;1096	c5 	. 
	bit 3,l		;1097	cb 5d 	. ] 
	jp z,090a9h		;1099	ca a9 90 	. . . 
	ld bc,l0008h		;109c	01 08 00 	. . . 
	call 0896bh		;109f	cd 6b 89 	. k . 
	ld de,0006bh		;10a2	11 6b 00 	. k . 
	pop bc			;10a5	c1 	. 
	jp 0908bh		;10a6	c3 8b 90 	. . . 
	bit 2,l		;10a9	cb 55 	. U 
	jp z,090bah		;10ab	ca ba 90 	. . . 
	ld bc,l0022h		;10ae	01 22 00 	. " . 
	call 0896bh		;10b1	cd 6b 89 	. k . 
	ld de,000d5h		;10b4	11 d5 00 	. . . 
	jp 090a5h		;10b7	c3 a5 90 	. . . 
	bit 1,l		;10ba	cb 4d 	. M 
	jp z,090cbh		;10bc	ca cb 90 	. . . 
	ld bc,l0056h		;10bf	01 56 00 	. V . 
	call 0896bh		;10c2	cd 6b 89 	. k . 
	ld de,001abh		;10c5	11 ab 01 	. . . 
	jp 090a5h		;10c8	c3 a5 90 	. . . 
	ld bc,l00c1h		;10cb	01 c1 00 	. . . 
	call 0896bh		;10ce	cd 6b 89 	. k . 
	ld de,00355h		;10d1	11 55 03 	. U . 
	jp 090a5h		;10d4	c3 a5 90 	. . . 
	dec de			;10d7	1b 	. 
	ld a,e			;10d8	7b 	{ 
	or d			;10d9	b2 	. 
	jp nz,0908bh		;10da	c2 8b 90 	. . . 
	ld a,001h		;10dd	3e 01 	> . 
	jp 090ech		;10df	c3 ec 90 	. . . 
	ld a,(07f35h)		;10e2	3a 35 7f 	: 5  
	or 020h		;10e5	f6 20 	.   
	ld (07f35h),a		;10e7	32 35 7f 	2 5  
	ld a,000h		;10ea	3e 00 	> . 
	push af			;10ec	f5 	. 
	xor a			;10ed	af 	. 
	out (018h),a		;10ee	d3 18 	. . 
	pop af			;10f0	f1 	. 
	exx			;10f1	d9 	. 
	scf			;10f2	37 	7 
	ret			;10f3	c9 	. 
	ld a,002h		;10f4	3e 02 	> . 
	jp 090ech		;10f6	c3 ec 90 	. . . 
	ld a,h			;10f9	7c 	| 
	ld (078ech),a		;10fa	32 ec 78 	2 . x 
	bit 5,l		;10fd	cb 6d 	. m 
	jp nz,09088h		;10ff	c2 88 90 	. . . 
	bit 4,l		;1102	cb 65 	. e 
	jp z,09113h		;1104	ca 13 91 	. . . 
	ld a,004h		;1107	3e 04 	> . 
	dec a			;1109	3d 	= 
	jp nz,09109h		;110a	c2 09 91 	. . . 
	ld de,l0036h		;110d	11 36 00 	. 6 . 
	jp 0908bh		;1110	c3 8b 90 	. . . 
	ld a,006h		;1113	3e 06 	> . 
	dec a			;1115	3d 	= 
	jp nz,09115h		;1116	c2 15 91 	. . . 
	xor a			;1119	af 	. 
	jp 09096h		;111a	c3 96 90 	. . . 
	exx			;111d	d9 	. 
	ld a,(078edh)		;111e	3a ed 78 	: . x 
	bit 5,a		;1121	cb 6f 	. o 
	jp z,0913ch		;1123	ca 3c 91 	. < . 
	ld de,00014h		;1126	11 14 00 	. . . 
	ld b,004h		;1129	06 04 	. . 
	in a,(01fh)		;112b	db 1f 	. . 
	and b			;112d	a0 	. 
	jp nz,0916eh		;112e	c2 6e 91 	. n . 
	dec de			;1131	1b 	. 
	ld a,e			;1132	7b 	{ 
	or d			;1133	b2 	. 
	jp nz,0912bh		;1134	c2 2b 91 	. + . 
	scf			;1137	37 	7 
	ld a,0ffh		;1138	3e ff 	> . 
	exx			;113a	d9 	. 
	ret			;113b	c9 	. 
	bit 4,a		;113c	cb 67 	. g 
	jp z,09147h		;113e	ca 47 91 	. G . 
	ld de,00028h		;1141	11 28 00 	. ( . 
	jp 09129h		;1144	c3 29 91 	. ) . 
	bit 3,a		;1147	cb 5f 	. _ 
	jp z,09152h		;1149	ca 52 91 	. R . 
	ld de,l0050h		;114c	11 50 00 	. P . 
	jp 09129h		;114f	c3 29 91 	. ) . 
	bit 2,a		;1152	cb 57 	. W 
	jp z,0915dh		;1154	ca 5d 91 	. ] . 
	ld de,l009eh+2		;1157	11 a0 00 	. . . 
	jp 09129h		;115a	c3 29 91 	. ) . 
	bit 1,a		;115d	cb 4f 	. O 
	jp z,09168h		;115f	ca 68 91 	. h . 
	ld de,l0140h		;1162	11 40 01 	. @ . 
	jp 09129h		;1165	c3 29 91 	. ) . 
	ld de,00280h		;1168	11 80 02 	. . . 
	jp 09129h		;116b	c3 29 91 	. ) . 
	ld bc,08408h		;116e	01 08 84 	. . . 
	ld e,000h		;1171	1e 00 	. . 
	ld a,(078ech)		;1173	3a ec 78 	: . x 
	ld h,a			;1176	67 	g 
	ld a,(078edh)		;1177	3a ed 78 	: . x 
	ld l,a			;117a	6f 	o 
	ld a,(078eeh)		;117b	3a ee 78 	: . x 
	ld d,a			;117e	57 	W 
	and 080h		;117f	e6 80 	. . 
	jr z,l1184h		;1181	28 01 	( . 
	inc c			;1183	0c 	. 
l1184h:
	call 0918ah		;1184	cd 8a 91 	. . . 
	jp 08febh		;1187	c3 eb 8f 	. . . 
	bit 5,l		;118a	cb 6d 	. m 
	jr z,l118fh		;118c	28 01 	( . 
	ret			;118e	c9 	. 
l118fh:
	push bc			;118f	c5 	. 
	bit 4,l		;1190	cb 65 	. e 
	jp z,091a1h		;1192	ca a1 91 	. . . 
	ld bc,l0000h+2		;1195	01 02 00 	. . . 
	call 0896bh		;1198	cd 6b 89 	. k . 
	and 0ffh		;119b	e6 ff 	. . 
	pop bc			;119d	c1 	. 
	jp 0918eh		;119e	c3 8e 91 	. . . 
	bit 3,l		;11a1	cb 5d 	. ] 
	jp z,091b2h		;11a3	ca b2 91 	. . . 
	ld bc,l000eh		;11a6	01 0e 00 	. . . 
	call 0896bh		;11a9	cd 6b 89 	. k . 
	ld b,000h		;11ac	06 00 	. . 
	or a			;11ae	b7 	. 
	jp 0919dh		;11af	c3 9d 91 	. . . 
	bit 2,l		;11b2	cb 55 	. U 
	jp z,091c2h		;11b4	ca c2 91 	. . . 
	ld bc,00028h		;11b7	01 28 00 	. ( . 
	call 0896bh		;11ba	cd 6b 89 	. k . 
	or a			;11bd	b7 	. 
	or a			;11be	b7 	. 
	jp 0919dh		;11bf	c3 9d 91 	. . . 
	bit 1,l		;11c2	cb 4d 	. M 
	jp z,091d6h		;11c4	ca d6 91 	. . . 
	ld bc,0005ch		;11c7	01 5c 00 	. \ . 
	call 0896bh		;11ca	cd 6b 89 	. k . 
	and 0ffh		;11cd	e6 ff 	. . 
	and 0ffh		;11cf	e6 ff 	. . 
	and 0ffh		;11d1	e6 ff 	. . 
	jp 0919dh		;11d3	c3 9d 91 	. . . 
	ld bc,l00c5h+2		;11d6	01 c7 00 	. . . 
	call 0896bh		;11d9	cd 6b 89 	. k . 
	dec bc			;11dc	0b 	. 
	or a			;11dd	b7 	. 
	jp 0919dh		;11de	c3 9d 91 	. . . 
	or a			;11e1	b7 	. 
	bit 0,a		;11e2	cb 47 	. G 
	bit 0,a		;11e4	cb 47 	. G 
	bit 0,a		;11e6	cb 47 	. G 
	call 091ech		;11e8	cd ec 91 	. . . 
	ret			;11eb	c9 	. 
	push bc			;11ec	c5 	. 
	ld a,l			;11ed	7d 	} 
	and 022h		;11ee	e6 22 	. " 
	jp z,09203h		;11f0	ca 03 92 	. . . 
	push af			;11f3	f5 	. 
	push af			;11f4	f5 	. 
	pop af			;11f5	f1 	. 
	pop af			;11f6	f1 	. 
l11f7h:
	dec bc			;11f7	0b 	. 
	bit 0,a		;11f8	cb 47 	. G 
	or a			;11fa	b7 	. 
	pop bc			;11fb	c1 	. 
	call 0918ah		;11fc	cd 8a 91 	. . . 
	call 0918ah		;11ff	cd 8a 91 	. . . 
	ret			;1202	c9 	. 
	ld a,l			;1203	7d 	} 
	and 018h		;1204	e6 18 	. . 
	jr z,l120eh		;1206	28 06 	( . 
	ld a,000h		;1208	3e 00 	> . 
	xor a			;120a	af 	. 
	jp 091f7h		;120b	c3 f7 91 	. . . 
l120eh:
	xor a			;120e	af 	. 
	jr l11f7h		;120f	18 e6 	. . 
	ld a,(078eeh)		;1211	3a ee 78 	: . x 
	bit 2,a		;1214	cb 57 	. W 
	jr z,l121ch		;1216	28 04 	( . 
	ld a,00dh		;1218	3e 0d 	> . 
	jr l122ah		;121a	18 0e 	. . 
l121ch:
	bit 0,a		;121c	cb 47 	. G 
	jr z,l1224h		;121e	28 04 	( . 
	ld a,00ah		;1220	3e 0a 	> . 
	jr l122ah		;1222	18 06 	. . 
l1224h:
	ld a,00dh		;1224	3e 0d 	> . 
	ld (hl),a			;1226	77 	w 
	inc hl			;1227	23 	# 
	ld a,00ah		;1228	3e 0a 	> . 
l122ah:
	ld (hl),a			;122a	77 	w 
	inc hl			;122b	23 	# 
	ret			;122c	c9 	. 
l122dh:
	im 1		;122d	ed 56 	. V 
	di			;122f	f3 	. 
	ld a,001h		;1230	3e 01 	> . 
	out (019h),a		;1232	d3 19 	. . 
	in a,(015h)		;1234	db 15 	. . 
	and 0bfh		;1236	e6 bf 	. . 
	nop			;1238	00 	. 
	nop			;1239	00 	. 
	out (015h),a		;123a	d3 15 	. . 
	jp 0fffah		;123c	c3 fa ff 	. . . 
	ld a,001h		;123f	3e 01 	> . 
	ld (07900h),a		;1241	32 00 79 	2 . y 
	out (019h),a		;1244	d3 19 	. . 
	jp 0fffdh		;1246	c3 fd ff 	. . . 
	push hl			;1249	e5 	. 
	push hl			;124a	e5 	. 
	push af			;124b	f5 	. 
	push de			;124c	d5 	. 
	ld hl,l0009h		;124d	21 09 00 	! . . 
	add hl,sp			;1250	39 	9 
	ld d,(hl)			;1251	56 	V 
	ld a,(07900h)		;1252	3a 00 79 	: . y 
	ld (hl),a			;1255	77 	w 
	dec hl			;1256	2b 	+ 
	ld e,(hl)			;1257	5e 	^ 
	dec hl			;1258	2b 	+ 
	ld a,(de)			;1259	1a 	. 
	ld (07900h),a		;125a	32 00 79 	2 . y 
	out (019h),a		;125d	d3 19 	. . 
	inc de			;125f	13 	. 
	ld (hl),092h		;1260	36 92 	6 . 
	dec hl			;1262	2b 	+ 
	ld (hl),06eh		;1263	36 6e 	6 n 
	ld a,(de)			;1265	1a 	. 
	ld l,a			;1266	6f 	o 
	inc de			;1267	13 	. 
	ld a,(de)			;1268	1a 	. 
	ld h,a			;1269	67 	g 
	pop de			;126a	d1 	. 
	pop af			;126b	f1 	. 
	ex (sp),hl			;126c	e3 	. 
	ret			;126d	c9 	. 
	push af			;126e	f5 	. 
	push hl			;126f	e5 	. 
	ld hl,l0005h		;1270	21 05 00 	! . . 
	add hl,sp			;1273	39 	9 
	ld a,(hl)			;1274	7e 	~ 
	ld (07900h),a		;1275	32 00 79 	2 . y 
	out (019h),a		;1278	d3 19 	. . 
	pop hl			;127a	e1 	. 
	pop af			;127b	f1 	. 
	inc sp			;127c	33 	3 
	inc sp			;127d	33 	3 
	ret			;127e	c9 	. 
	ld hl,07964h		;127f	21 64 79 	! d y 
	bit 7,(hl)		;1282	cb 7e 	. ~ 
	jr nz,l12a0h		;1284	20 1a 	  . 
l1286h:
	ld hl,07965h		;1286	21 65 79 	! e y 
	bit 4,(hl)		;1289	cb 66 	. f 
	jr z,l129ah		;128b	28 0d 	( . 
	res 4,(hl)		;128d	cb a6 	. . 
	ld a,(079e8h)		;128f	3a e8 79 	: . y 
l1292h:
	ld de,(07920h)		;1292	ed 5b 20 79 	. [   y 
	call 08468h		;1296	cd 68 84 	. h . 
	ret			;1299	c9 	. 
l129ah:
	set 4,(hl)		;129a	cb e6 	. . 
	ld a,0f7h		;129c	3e f7 	> . 
	jr l1292h		;129e	18 f2 	. . 
l12a0h:
	ld hl,(07ffdh)		;12a0	2a fd 7f 	* .  
	xor a			;12a3	af 	. 
	cp h			;12a4	bc 	. 
	jr nz,l1286h		;12a5	20 df 	  . 
	cp l			;12a7	bd 	. 
	jr nz,l1286h		;12a8	20 dc 	  . 
	ld a,(07965h)		;12aa	3a 65 79 	: e y 
	xor 010h		;12ad	ee 10 	. . 
	ld (07965h),a		;12af	32 65 79 	2 e y 
	bit 4,a		;12b2	cb 67 	. g 
	jr nz,l12cch		;12b4	20 16 	  . 
	ld a,020h		;12b6	3e 20 	>   
	ld de,l0000h		;12b8	11 00 00 	. . . 
	ld b,060h		;12bb	06 60 	. ` 
	call 086b3h		;12bd	cd b3 86 	. . . 
	ld hl,07f40h		;12c0	21 40 7f 	! @  
	ld de,00107h		;12c3	11 07 01 	. . . 
	ld b,02dh		;12c6	06 2d 	. - 
	call 08687h		;12c8	cd 87 86 	. . . 
	ret			;12cb	c9 	. 
l12cch:
	ld de,l0000h		;12cc	11 00 00 	. . . 
	ld a,0f7h		;12cf	3e f7 	> . 
	ld b,019h		;12d1	06 19 	. . 
	call 086b3h		;12d3	cd b3 86 	. . . 
	ld de,l0116h+1		;12d6	11 17 01 	. . . 
	ld a,0f7h		;12d9	3e f7 	> . 
	ld b,019h		;12db	06 19 	. . 
	call 086b3h		;12dd	cd b3 86 	. . . 
	ld de,00107h		;12e0	11 07 01 	. . . 
	ld hl,092ech		;12e3	21 ec 92 	! . . 
	ld b,009h		;12e6	06 09 	. . 
	call 084cdh		;12e8	cd cd 84 	. . . 
	ret			;12eb	c9 	. 
	ld b,c			;12ec	41 	A 
	ld c,h			;12ed	4c 	L 
	ld c,h			;12ee	4c 	L 
	jr nz,$+84		;12ef	20 52 	  R 
	ld b,l			;12f1	45 	E 
	ld d,e			;12f2	53 	S 
	ld b,l			;12f3	45 	E 
	ld d,h			;12f4	54 	T 
	ld hl,07901h		;12f5	21 01 79 	! . y 
	set 0,(hl)		;12f8	cb c6 	. . 
l12fah:
	call 08564h		;12fa	cd 64 85 	. d . 
	ret			;12fd	c9 	. 
	ld hl,07901h		;12fe	21 01 79 	! . y 
	res 0,(hl)		;1301	cb 86 	. . 
	jr l12fah		;1303	18 f5 	. . 
	push af			;1305	f5 	. 
	ld a,001h		;1306	3e 01 	> . 
l1308h:
	ld (07900h),a		;1308	32 00 79 	2 . y 
	out (019h),a		;130b	d3 19 	. . 
	pop af			;130d	f1 	. 
	ret			;130e	c9 	. 
	push af			;130f	f5 	. 
	ld a,002h		;1310	3e 02 	> . 
	jr l1308h		;1312	18 f4 	. . 
	push af			;1314	f5 	. 
	ld a,003h		;1315	3e 03 	> . 
	jr l1308h		;1317	18 ef 	. . 
	push af			;1319	f5 	. 
	ld a,004h		;131a	3e 04 	> . 
	jr l1308h		;131c	18 ea 	. . 
	push af			;131e	f5 	. 
	ld a,005h		;131f	3e 05 	> . 
	jr l1308h		;1321	18 e5 	. . 
	push af			;1323	f5 	. 
	ld a,007h		;1324	3e 07 	> . 
	jr l1308h		;1326	18 e0 	. . 
	ld a,(07965h)		;1328	3a 65 79 	: e y 
	and 0e0h		;132b	e6 e0 	. . 
	or 001h		;132d	f6 01 	. . 
	ld (07965h),a		;132f	32 65 79 	2 e y 
	ret			;1332	c9 	. 
	ld hl,07d00h		;1333	21 00 7d 	! . } 
	ld d,h			;1336	54 	T 
	ld e,l			;1337	5d 	] 
	inc de			;1338	13 	. 
	ld (hl),00dh		;1339	36 0d 	6 . 
	ld bc,l00ffh		;133b	01 ff 00 	. . . 
	ldir		;133e	ed b0 	. . 
	ret			;1340	c9 	. 
	ld hl,07903h		;1341	21 03 79 	! . y 
	res 1,(hl)		;1344	cb 8e 	. . 
	call 0854dh		;1346	cd 4d 85 	. M . 
	ret			;1349	c9 	. 
	call 09363h		;134a	cd 63 93 	. c . 
	in a,(01fh)		;134d	db 1f 	. . 
	jr l1359h		;134f	18 08 	. . 
	call 09363h		;1351	cd 63 93 	. c . 
	ld a,05ah		;1354	3e 5a 	> Z 
	ld (07f20h),a		;1356	32 20 7f 	2    
l1359h:
	call 0ff43h		;1359	cd 43 ff 	. C . 
	call 0ff55h		;135c	cd 55 ff 	. U . 
	call 08cfeh		;135f	cd fe 8c 	. . . 
	ret			;1362	c9 	. 
	ld hl,07f20h		;1363	21 20 7f 	!    
	ld b,008h		;1366	06 08 	. . 
	ld a,0a5h		;1368	3e a5 	> . 
l136ah:
	ld (hl),a			;136a	77 	w 
	inc hl			;136b	23 	# 
	djnz l136ah		;136c	10 fc 	. . 
	ret			;136e	c9 	. 
	call 0ff9ah		;136f	cd 9a ff 	. . . 
	jr nc,l1391h		;1372	30 1d 	0 . 
l1374h:
	ld hl,07965h		;1374	21 65 79 	! e y 
	res 1,(hl)		;1377	cb 8e 	. . 
	ret			;1379	c9 	. 
	ld hl,(07f3ah)		;137a	2a 3a 7f 	* :  
	dec hl			;137d	2b 	+ 
	ld a,(hl)			;137e	7e 	~ 
	inc a			;137f	3c 	< 
	jr z,l1374h		;1380	28 f2 	( . 
	ld (07f3ah),hl		;1382	22 3a 7f 	" :  
	call 0930fh		;1385	cd 0f 93 	. . . 
	call 0ff94h		;1388	cd 94 ff 	. . . 
	call 09305h		;138b	cd 05 93 	. . . 
	ld (07f3ah),hl		;138e	22 3a 7f 	" :  
l1391h:
	ld hl,079d9h		;1391	21 d9 79 	! . y 
	set 3,(hl)		;1394	cb de 	. . 
	ld hl,079dah		;1396	21 da 79 	! . y 
	res 5,(hl)		;1399	cb ae 	. . 
	ld hl,07965h		;139b	21 65 79 	! e y 
	set 1,(hl)		;139e	cb ce 	. . 
	call 0ffa0h		;13a0	cd a0 ff 	. . . 
	ret			;13a3	c9 	. 
	call 0a49dh		;13a4	cd 9d a4 	. . . 
	cp 023h		;13a7	fe 23 	. # 
	jr nz,l13fdh		;13a9	20 52 	  R 
	call 0a49dh		;13ab	cd 9d a4 	. . . 
	cp 052h		;13ae	fe 52 	. R 
	jr z,l13c6h		;13b0	28 14 	( . 
	cp 030h		;13b2	fe 30 	. 0 
	jp c,08379h		;13b4	da 79 83 	. y . 
	jp z,0835eh		;13b7	ca 5e 83 	. ^ . 
	cp 03ah		;13ba	fe 3a 	. : 
	jp nc,08379h		;13bc	d2 79 83 	. y . 
	cp 038h		;13bf	fe 38 	. 8 
	jp nc,0835eh		;13c1	d2 5e 83 	. ^ . 
	and 00fh		;13c4	e6 0f 	. . 
l13c6h:
	ld (079b5h),a		;13c6	32 b5 79 	2 . y 
	call 0a49dh		;13c9	cd 9d a4 	. . . 
	cp 02ch		;13cc	fe 2c 	. , 
	jp nz,08379h		;13ce	c2 79 83 	. y . 
l13d1h:
	call 0930fh		;13d1	cd 0f 93 	. . . 
	call 0fffdh		;13d4	cd fd ff 	. . . 
	call 09305h		;13d7	cd 05 93 	. . . 
	ret c			;13da	d8 	. 
	call 0930fh		;13db	cd 0f 93 	. . . 
	call 0ffcdh		;13de	cd cd ff 	. . . 
	call 09305h		;13e1	cd 05 93 	. . . 
	ret c			;13e4	d8 	. 
	ld a,(079b5h)		;13e5	3a b5 79 	: . y 
	cp 052h		;13e8	fe 52 	. R 
	jr z,l1406h		;13ea	28 1a 	( . 
	ld (07900h),a		;13ec	32 00 79 	2 . y 
	out (019h),a		;13ef	d3 19 	. . 
	ld (079b5h),ix		;13f1	dd 22 b5 79 	. " . y 
	ld hl,0940ch		;13f5	21 0c 94 	! . . 
	push hl			;13f8	e5 	. 
	ld hl,(07f18h)		;13f9	2a 18 7f 	* .  
	jp (hl)			;13fc	e9 	. 
l13fdh:
	dec ix		;13fd	dd 2b 	. + 
	ld a,001h		;13ff	3e 01 	> . 
	ld (079b5h),a		;1401	32 b5 79 	2 . y 
	jr l13d1h		;1404	18 cb 	. . 
l1406h:
	call 0930fh		;1406	cd 0f 93 	. . . 
	call 0fefbh		;1409	cd fb fe 	. . . 
	call 09305h		;140c	cd 05 93 	. . . 
	ld ix,(079b5h)		;140f	dd 2a b5 79 	. * . y 
	and a			;1413	a7 	. 
	ret			;1414	c9 	. 
	call 09305h		;1415	cd 05 93 	. . . 
	call 0b1cah		;1418	cd ca b1 	. . . 
l141bh:
	call 09314h		;141b	cd 14 93 	. . . 
	ret			;141e	c9 	. 
	call 09305h		;141f	cd 05 93 	. . . 
	call 0b02eh		;1422	cd 2e b0 	. . . 
	jr l141bh		;1425	18 f4 	. . 
	call 09305h		;1427	cd 05 93 	. . . 
	call 09bach		;142a	cd ac 9b 	. . . 
	jr l141bh		;142d	18 ec 	. . 
	call 09305h		;142f	cd 05 93 	. . . 
	call 0b1cah		;1432	cd ca b1 	. . . 
l1435h:
	call 09319h		;1435	cd 19 93 	. . . 
	ret			;1438	c9 	. 
	call 09305h		;1439	cd 05 93 	. . . 
	call 09bach		;143c	cd ac 9b 	. . . 
	jr l1435h		;143f	18 f4 	. . 
	call 09323h		;1441	cd 23 93 	. # . 
	jp 0fff9h		;1444	c3 f9 ff 	. . . 
	ld hl,07903h		;1447	21 03 79 	! . y 
	set 2,(hl)		;144a	cb d6 	. . 
	xor a			;144c	af 	. 
	ld b,008h		;144d	06 08 	. . 
	ld hl,07998h		;144f	21 98 79 	! . y 
l1452h:
	cp (hl)			;1452	be 	. 
	jr nz,l145dh		;1453	20 08 	  . 
	inc hl			;1455	23 	# 
	djnz l1452h		;1456	10 fa 	. . 
	ld hl,07903h		;1458	21 03 79 	! . y 
	res 2,(hl)		;145b	cb 96 	. . 
l145dh:
	call 0854dh		;145d	cd 4d 85 	. M . 
	call 0ac03h		;1460	cd 03 ac 	. . . 
	ld hl,(079e1h)		;1463	2a e1 79 	* . y 
	inc hl			;1466	23 	# 
	ld (07f3ah),hl		;1467	22 3a 7f 	" :  
	call 0ae9dh		;146a	cd 9d ae 	. . . 
	call 0a07eh		;146d	cd 7e a0 	. ~ . 
	ld hl,07965h		;1470	21 65 79 	! e y 
	set 0,(hl)		;1473	cb c6 	. . 
	call 0ff23h		;1475	cd 23 ff 	. # . 
	jp 094a8h		;1478	c3 a8 94 	. . . 
	cp 005h		;147b	fe 05 	. . 
	jr c,l149ah		;147d	38 1b 	8 . 
	cp 006h		;147f	fe 06 	. . 
	jr z,l14a3h		;1481	28 20 	(   
	cp 010h		;1483	fe 10 	. . 
	jp c,094d2h		;1485	da d2 94 	. . . 
	cp 012h		;1488	fe 12 	. . 
	jp z,094d2h		;148a	ca d2 94 	. . . 
	cp 015h		;148d	fe 15 	. . 
	jp nc,094d2h		;148f	d2 d2 94 	. . . 
	call 09935h		;1492	cd 35 99 	. 5 . 
	call 0854dh		;1495	cd 4d 85 	. M . 
	jr l14a8h		;1498	18 0e 	. . 
l149ah:
	cp 000h		;149a	fe 00 	. . 
	jr z,l14a8h		;149c	28 0a 	( . 
l149eh:
	call 098fah		;149e	cd fa 98 	. . . 
	jr l14a8h		;14a1	18 05 	. . 
l14a3h:
	call 09351h		;14a3	cd 51 93 	. Q . 
	jr l14a8h		;14a6	18 00 	. . 
l14a8h:
	call 0b02eh		;14a8	cd 2e b0 	. . . 
	ld a,(07906h)		;14ab	3a 06 79 	: . y 
	cp 0f0h		;14ae	fe f0 	. . 
	jr z,l149eh		;14b0	28 ec 	( . 
	cp 0f1h		;14b2	fe f1 	. . 
	jp z,0a0dfh		;14b4	ca df a0 	. . . 
	call 0ba11h		;14b7	cd 11 ba 	. . . 
	jr nc,l14a8h		;14ba	30 ec 	0 . 
	ld hl,0796eh		;14bc	21 6e 79 	! n y 
	res 7,(hl)		;14bf	cb be 	. . 
	cp 0f2h		;14c1	fe f2 	. . 
	jr z,l14a8h		;14c3	28 e3 	( . 
	cp 0f3h		;14c5	fe f3 	. . 
	jr z,l14a8h		;14c7	28 df 	( . 
	cp 0f7h		;14c9	fe f7 	. . 
	jr z,l14a8h		;14cb	28 db 	( . 
	cp 020h		;14cd	fe 20 	.   
	jp c,0947bh		;14cf	da 7b 94 	. { . 
	ld hl,07902h		;14d2	21 02 79 	! . y 
	bit 5,(hl)		;14d5	cb 6e 	. n 
	jp nz,0984ch		;14d7	c2 4c 98 	. L . 
	cp 020h		;14da	fe 20 	.   
	jp c,09717h		;14dc	da 17 97 	. . . 
	cp 0f8h		;14df	fe f8 	. . 
	jp z,09808h		;14e1	ca 08 98 	. . . 
	cp 0f4h		;14e4	fe f4 	. . 
	jp nz,094f4h		;14e6	c2 f4 94 	. . . 
	ld hl,079dah		;14e9	21 da 79 	! . y 
	bit 0,(hl)		;14ec	cb 46 	. F 
	jp z,094a8h		;14ee	ca a8 94 	. . . 
	jp 09803h		;14f1	c3 03 98 	. . . 
	ld a,(079dah)		;14f4	3a da 79 	: . y 
	bit 1,a		;14f7	cb 4f 	. O 
	jp nz,094a8h		;14f9	c2 a8 94 	. . . 
	ld hl,079dfh		;14fc	21 df 79 	! . y 
	res 0,(hl)		;14ff	cb 86 	. . 
	bit 0,a		;1501	cb 47 	. G 
	jp z,09661h		;1503	ca 61 96 	. a . 
	call 0a796h		;1506	cd 96 a7 	. . . 
	ld a,(07f14h)		;1509	3a 14 7f 	: .  
	cp 0d0h		;150c	fe d0 	. . 
	jp z,09661h		;150e	ca 61 96 	. a . 
	ld hl,07964h		;1511	21 64 79 	! d y 
	res 4,(hl)		;1514	cb a6 	. . 
	ld a,(07906h)		;1516	3a 06 79 	: . y 
	cp 02ah		;1519	fe 2a 	. * 
	jr z,l1535h		;151b	28 18 	( . 
	cp 02bh		;151d	fe 2b 	. + 
	jr z,l1535h		;151f	28 14 	( . 
	cp 02dh		;1521	fe 2d 	. - 
	jr z,l1535h		;1523	28 10 	( . 
	cp 02fh		;1525	fe 2f 	. / 
	jr z,l1535h		;1527	28 0c 	( . 
	cp 05eh		;1529	fe 5e 	. ^ 
	jr z,l1535h		;152b	28 08 	( . 
	cp 03ch		;152d	fe 3c 	. < 
	jr c,l1581h		;152f	38 50 	8 P 
	cp 03fh		;1531	fe 3f 	. ? 
	jr nc,l1581h		;1533	30 4c 	0 L 
l1535h:
	push af			;1535	f5 	. 
	call 0a7a9h		;1536	cd a9 a7 	. . . 
	pop af			;1539	f1 	. 
	inc iy		;153a	fd 23 	. # 
	ld (iy+000h),a		;153c	fd 77 00 	. w . 
	ld hl,0fefeh		;153f	21 fe fe 	! . . 
	ld (07906h),hl		;1542	22 06 79 	" . y 
	ld hl,07d00h		;1545	21 00 7d 	! . } 
	ld (07908h),hl		;1548	22 08 79 	" . y 
	push iy		;154b	fd e5 	. . 
	pop de			;154d	d1 	. 
	ex de,hl			;154e	eb 	. 
	xor a			;154f	af 	. 
	sbc hl,de		;1550	ed 52 	. R 
	ld a,l			;1552	7d 	} 
	inc a			;1553	3c 	< 
	ld (0790ah),a		;1554	32 0a 79 	2 . y 
l1557h:
	call 0a7f4h		;1557	cd f4 a7 	. . . 
l155ah:
	ld hl,079dah		;155a	21 da 79 	! . y 
	set 5,(hl)		;155d	cb ee 	. . 
	res 7,(hl)		;155f	cb be 	. . 
	ld hl,079dfh		;1561	21 df 79 	! . y 
	res 0,(hl)		;1564	cb 86 	. . 
	ld hl,079d8h		;1566	21 d8 79 	! . y 
	res 4,(hl)		;1569	cb a6 	. . 
	call 0b1cah		;156b	cd ca b1 	. . . 
	jp 094a8h		;156e	c3 a8 94 	. . . 
	and 017h		;1571	e6 17 	. . 
	jr nz,l1557h		;1573	20 e2 	  . 
	ld a,(07f35h)		;1575	3a 35 7f 	: 5  
	and 006h		;1578	e6 06 	. . 
	jr z,l155ah		;157a	28 de 	( . 
	call 0aa11h		;157c	cd 11 aa 	. . . 
	jr l155ah		;157f	18 d9 	. . 
l1581h:
	cp 0feh		;1581	fe fe 	. . 
	jp nz,09661h		;1583	c2 61 96 	. a . 
	ld a,(07907h)		;1586	3a 07 79 	: . y 
	cp 080h		;1589	fe 80 	. . 
	jp c,09661h		;158b	da 61 96 	. a . 
	jr nz,l1595h		;158e	20 05 	  . 
	ld hl,07964h		;1590	21 64 79 	! d y 
	set 4,(hl)		;1593	cb e6 	. . 
l1595h:
	cp 0bfh		;1595	fe bf 	. . 
	jr z,l15c7h		;1597	28 2e 	( . 
	cp 081h		;1599	fe 81 	. . 
	jp z,09661h		;159b	ca 61 96 	. a . 
	cp 082h		;159e	fe 82 	. . 
	jp z,09661h		;15a0	ca 61 96 	. a . 
	cp 083h		;15a3	fe 83 	. . 
	jr nz,l15c2h		;15a5	20 1b 	  . 
	call 0a7a9h		;15a7	cd a9 a7 	. . . 
	inc iy		;15aa	fd 23 	. # 
	ld a,052h		;15ac	3e 52 	> R 
	ld (iy+000h),a		;15ae	fd 77 00 	. w . 
	inc iy		;15b1	fd 23 	. # 
	ld a,04fh		;15b3	3e 4f 	> O 
	ld (iy+000h),a		;15b5	fd 77 00 	. w . 
	inc iy		;15b8	fd 23 	. # 
	ld a,054h		;15ba	3e 54 	> T 
	ld (iy+000h),a		;15bc	fd 77 00 	. w . 
	jp 0953fh		;15bf	c3 3f 95 	. ? . 
l15c2h:
	cp 0a1h		;15c2	fe a1 	. . 
	jp nc,09661h		;15c4	d2 61 96 	. a . 
l15c7h:
	call 09333h		;15c7	cd 33 93 	. 3 . 
	ld hl,07f36h		;15ca	21 36 7f 	! 6  
	res 4,(hl)		;15cd	cb a6 	. . 
	set 1,(hl)		;15cf	cb ce 	. . 
	dec hl			;15d1	2b 	+ 
	res 5,(hl)		;15d2	cb ae 	. . 
	ld a,(079dah)		;15d4	3a da 79 	: . y 
	and 0e0h		;15d7	e6 e0 	. . 
	ld (079dah),a		;15d9	32 da 79 	2 . y 
	ld hl,07965h		;15dc	21 65 79 	! e y 
	res 2,(hl)		;15df	cb 96 	. . 
	ld a,(07907h)		;15e1	3a 07 79 	: . y 
	cp 084h		;15e4	fe 84 	. . 
	ld hl,079d8h		;15e6	21 d8 79 	! . y 
	jr nz,l15f3h		;15e9	20 08 	  . 
	bit 4,(hl)		;15eb	cb 66 	. f 
	jr z,l15f3h		;15ed	28 04 	( . 
	res 4,(hl)		;15ef	cb a6 	. . 
	jr l160fh		;15f1	18 1c 	. . 
l15f3h:
	res 4,(hl)		;15f3	cb a6 	. . 
	call 0930fh		;15f5	cd 0f 93 	. . . 
	call 0ff13h		;15f8	cd 13 ff 	. . . 
	call 09305h		;15fb	cd 05 93 	. . . 
	ld ix,07d00h		;15fe	dd 21 00 7d 	. ! . } 
	jr c,l164dh		;1602	38 49 	8 I 
	call 0818ah		;1604	cd 8a 81 	. . . 
	call 081bbh		;1607	cd bb 81 	. . . 
	call 081ach		;160a	cd ac 81 	. . . 
	jr c,l164dh		;160d	38 3e 	8 > 
l160fh:
	call 0a752h		;160f	cd 52 a7 	. R . 
	ld a,(07964h)		;1612	3a 64 79 	: d y 
	ld hl,079dfh		;1615	21 df 79 	! . y 
	bit 4,a		;1618	cb 67 	. g 
	jr z,l1620h		;161a	28 04 	( . 
	bit 5,a		;161c	cb 6f 	. o 
	jr nz,l1649h		;161e	20 29 	  ) 
l1620h:
	res 0,(hl)		;1620	cb 86 	. . 
l1622h:
	ld hl,07964h		;1622	21 64 79 	! d y 
	res 4,(hl)		;1625	cb a6 	. . 
	ld hl,079dah		;1627	21 da 79 	! . y 
	set 0,(hl)		;162a	cb c6 	. . 
	ld a,(07904h)		;162c	3a 04 79 	: . y 
	push af			;162f	f5 	. 
	and 0bfh		;1630	e6 bf 	. . 
	ld (07904h),a		;1632	32 04 79 	2 . y 
	call 0a85bh		;1635	cd 5b a8 	. [ . 
	ld hl,07904h		;1638	21 04 79 	! . y 
	pop bc			;163b	c1 	. 
	ld (hl),b			;163c	70 	p 
	jr c,l164dh		;163d	38 0e 	8 . 
	ld hl,07901h		;163f	21 01 79 	! . y 
	res 0,(hl)		;1642	cb 86 	. . 
	call 0854dh		;1644	cd 4d 85 	. M . 
	jr l1655h		;1647	18 0c 	. . 
l1649h:
	set 0,(hl)		;1649	cb c6 	. . 
	jr l1622h		;164b	18 d5 	. . 
l164dh:
	call 0a65bh		;164d	cd 5b a6 	. [ . 
	jr l1655h		;1650	18 03 	. . 
l1652h:
	call 0b1cah		;1652	cd ca b1 	. . . 
l1655h:
	jp 094a8h		;1655	c3 a8 94 	. . . 
l1658h:
	ld hl,07f35h		;1658	21 35 7f 	! 5  
	bit 0,(hl)		;165b	cb 46 	. F 
	jr z,l1652h		;165d	28 f3 	( . 
	jr l1695h		;165f	18 34 	. 4 
	ld a,(079dah)		;1661	3a da 79 	: . y 
	bit 5,a		;1664	cb 6f 	. o 
	jp z,09571h		;1666	ca 71 95 	. q . 
	bit 0,a		;1669	cb 47 	. G 
	jp nz,09557h		;166b	c2 57 95 	. W . 
	bit 6,a		;166e	cb 77 	. w 
	jr nz,l1652h		;1670	20 e0 	  . 
	ld a,(07906h)		;1672	3a 06 79 	: . y 
	cp 0feh		;1675	fe fe 	. . 
	jr nz,l1652h		;1677	20 d9 	  . 
	ld a,(07907h)		;1679	3a 07 79 	: . y 
	cp 080h		;167c	fe 80 	. . 
	jr c,l1652h		;167e	38 d2 	8 . 
	jr z,l168eh		;1680	28 0c 	( . 
	cp 0bfh		;1682	fe bf 	. . 
	jr z,l168eh		;1684	28 08 	( . 
	cp 0a1h		;1686	fe a1 	. . 
	jr nc,l1652h		;1688	30 c8 	0 . 
	cp 084h		;168a	fe 84 	. . 
	jr c,l1652h		;168c	38 c4 	8 . 
l168eh:
	ld a,(07f35h)		;168e	3a 35 7f 	: 5  
	and 006h		;1691	e6 06 	. . 
	jr nz,l1658h		;1693	20 c3 	  . 
l1695h:
	call 0ae13h		;1695	cd 13 ae 	. . . 
	ld hl,07c00h		;1698	21 00 7c 	! . | 
	ld de,07d00h		;169b	11 00 7d 	. . } 
	ld bc,l00ffh+1		;169e	01 00 01 	. . . 
	ldir		;16a1	ed b0 	. . 
	ld ix,07cffh		;16a3	dd 21 ff 7c 	. ! . | 
	call 0a49dh		;16a7	cd 9d a4 	. . . 
	dec ix		;16aa	dd 2b 	. + 
	ld hl,07f18h		;16ac	21 18 7f 	! .  
	ld (hl),000h		;16af	36 00 	6 . 
l16b1h:
	inc ix		;16b1	dd 23 	. # 
	ld a,(ix+000h)		;16b3	dd 7e 00 	. ~ . 
	cp 02bh		;16b6	fe 2b 	. + 
	jr z,l16b1h		;16b8	28 f7 	( . 
	cp 02dh		;16ba	fe 2d 	. - 
	jr nz,l16c1h		;16bc	20 03 	  . 
	inc (hl)			;16be	34 	4 
	jr l16b1h		;16bf	18 f0 	. . 
l16c1h:
	cp 02eh		;16c1	fe 2e 	. . 
	jr z,l16cah		;16c3	28 05 	( . 
	call 0a4f5h		;16c5	cd f5 a4 	. . . 
	jr c,l16fch		;16c8	38 32 	8 2 
l16cah:
	dec ix		;16ca	dd 2b 	. + 
	ld hl,07f33h		;16cc	21 33 7f 	! 3  
	res 1,(hl)		;16cf	cb 8e 	. . 
	call 0930fh		;16d1	cd 0f 93 	. . . 
	call 0ff2bh		;16d4	cd 2b ff 	. + . 
	call 09305h		;16d7	cd 05 93 	. . . 
	jr c,l1706h		;16da	38 2a 	8 * 
	inc ix		;16dc	dd 23 	. # 
	ld a,(ix+000h)		;16de	dd 7e 00 	. ~ . 
	cp 00dh		;16e1	fe 0d 	. . 
	jr nz,l16fch		;16e3	20 17 	  . 
	ld hl,07f18h		;16e5	21 18 7f 	! .  
	bit 0,(hl)		;16e8	cb 46 	. F 
	jr z,l16f1h		;16ea	28 05 	( . 
	ld hl,07f11h		;16ec	21 11 7f 	! .  
	set 3,(hl)		;16ef	cb de 	. . 
l16f1h:
	call 09333h		;16f1	cd 33 93 	. 3 . 
	ld a,000h		;16f4	3e 00 	> . 
	ld (079eah),a		;16f6	32 ea 79 	2 . y 
	jp 095c7h		;16f9	c3 c7 95 	. . . 
l16fch:
	ld hl,079dah		;16fc	21 da 79 	! . y 
	set 6,(hl)		;16ff	cb f6 	. . 
	call 0b1cah		;1701	cd ca b1 	. . . 
	jr l1774h		;1704	18 6e 	. n 
l1706h:
	call 09333h		;1706	cd 33 93 	. 3 . 
	ld a,000h		;1709	3e 00 	> . 
	ld (079eah),a		;170b	32 ea 79 	2 . y 
	ld ix,07d00h		;170e	dd 21 00 7d 	. ! . } 
	call 0a65bh		;1712	cd 5b a6 	. [ . 
	jr l1774h		;1715	18 5d 	. ] 
	cp 008h		;1717	fe 08 	. . 
	jr c,l1722h		;1719	38 07 	8 . 
	cp 00ah		;171b	fe 0a 	. . 
	jr c,l1768h		;171d	38 49 	8 I 
	jp z,094f4h		;171f	ca f4 94 	. . . 
l1722h:
	cp 012h		;1722	fe 12 	. . 
	jr z,l1768h		;1724	28 42 	( B 
	cp 01ch		;1726	fe 1c 	. . 
	jr nc,l1777h		;1728	30 4d 	0 M 
	cp 019h		;172a	fe 19 	. . 
	jp nc,09808h		;172c	d2 08 98 	. . . 
	cp 00eh		;172f	fe 0e 	. . 
	jp z,097dbh		;1731	ca db 97 	. . . 
	jp z,094a8h		;1734	ca a8 94 	. . . 
	cp 00fh		;1737	fe 0f 	. . 
	jp z,094a8h		;1739	ca a8 94 	. . . 
	cp 016h		;173c	fe 16 	. . 
	jp z,097f4h		;173e	ca f4 97 	. . . 
	cp 007h		;1741	fe 07 	. . 
	jr z,l1797h		;1743	28 52 	( R 
	ld hl,079dfh		;1745	21 df 79 	! . y 
	res 0,(hl)		;1748	cb 86 	. . 
	res 1,(hl)		;174a	cb 8e 	. . 
	cp 00dh		;174c	fe 0d 	. . 
	jr nc,l17a6h		;174e	30 56 	0 V 
	cp 00bh		;1750	fe 0b 	. . 
	jr c,l17a6h		;1752	38 52 	8 R 
	cp 00bh		;1754	fe 0b 	. . 
	jr z,l1760h		;1756	28 08 	( . 
	call 09341h		;1758	cd 41 93 	. A . 
	call 0a9f2h		;175b	cd f2 a9 	. . . 
	jr l1774h		;175e	18 14 	. . 
l1760h:
	call 09341h		;1760	cd 41 93 	. A . 
	call 0a0d8h		;1763	cd d8 a0 	. . . 
	jr l1774h		;1766	18 0c 	. . 
l1768h:
	ld a,(079dah)		;1768	3a da 79 	: . y 
	bit 5,a		;176b	cb 6f 	. o 
	jr z,l1774h		;176d	28 05 	( . 
	and 003h		;176f	e6 03 	. . 
	call z,0b1cah		;1771	cc ca b1 	. . . 
l1774h:
	jp 094a8h		;1774	c3 a8 94 	. . . 
l1777h:
	ld hl,079dfh		;1777	21 df 79 	! . y 
	res 0,(hl)		;177a	cb 86 	. . 
	res 1,(hl)		;177c	cb 8e 	. . 
	cp 01eh		;177e	fe 1e 	. . 
	jr c,l1792h		;1780	38 10 	8 . 
	cp 01fh		;1782	fe 1f 	. . 
	jr z,l178dh		;1784	28 07 	( . 
	call 0997bh		;1786	cd 7b 99 	. { . 
	jr c,l1800h		;1789	38 75 	8 u 
	jr l1774h		;178b	18 e7 	. . 
l178dh:
	call 099cch		;178d	cd cc 99 	. . . 
	jr l1774h		;1790	18 e2 	. . 
l1792h:
	call 09b96h		;1792	cd 96 9b 	. . . 
	jr l1774h		;1795	18 dd 	. . 
l1797h:
	ld hl,079dfh		;1797	21 df 79 	! . y 
	res 1,(hl)		;179a	cb 8e 	. . 
	ld hl,079dah		;179c	21 da 79 	! . y 
	bit 1,(hl)		;179f	cb 4e 	. N 
	call z,0a0bbh		;17a1	cc bb a0 	. . . 
	jr l1774h		;17a4	18 ce 	. . 
l17a6h:
	ld hl,079dah		;17a6	21 da 79 	! . y 
	bit 1,(hl)		;17a9	cb 4e 	. N 
	jr nz,l1774h		;17ab	20 c7 	  . 
	cp 00dh		;17ad	fe 0d 	. . 
	jr z,l17c2h		;17af	28 11 	( . 
	cp 005h		;17b1	fe 05 	. . 
	jr z,l17c7h		;17b3	28 12 	( . 
	cp 015h		;17b5	fe 15 	. . 
	jr z,l17cch		;17b7	28 13 	( . 
	cp 018h		;17b9	fe 18 	. . 
	jr z,l17d1h		;17bb	28 14 	( . 
	call 0ff82h		;17bd	cd 82 ff 	. . . 
	jr l1774h		;17c0	18 b2 	. . 
l17c2h:
	call 09c2ah		;17c2	cd 2a 9c 	. * . 
	jr l1774h		;17c5	18 ad 	. . 
l17c7h:
	call 0a6c1h		;17c7	cd c1 a6 	. . . 
	jr l1774h		;17ca	18 a8 	. . 
l17cch:
	call 0ffe2h		;17cc	cd e2 ff 	. . . 
	jr l1774h		;17cf	18 a3 	. . 
l17d1h:
	call 0ff7fh		;17d1	cd 7f ff 	.  . 
	jr l1774h		;17d4	18 9e 	. . 
	call 0ff6ah		;17d6	cd 6a ff 	. j . 
	jr l1774h		;17d9	18 99 	. . 
	call 0b02eh		;17db	cd 2e b0 	. . . 
	ld a,(07906h)		;17de	3a 06 79 	: . y 
	cp 02eh		;17e1	fe 2e 	. . 
	jr z,l17efh		;17e3	28 0a 	( . 
	call 0a4f5h		;17e5	cd f5 a4 	. . . 
	jr c,l1800h		;17e8	38 16 	8 . 
	call 0ff7ch		;17ea	cd 7c ff 	. | . 
	jr l1849h		;17ed	18 5a 	. Z 
l17efh:
	call 0ff79h		;17ef	cd 79 ff 	. y . 
	jr l1849h		;17f2	18 55 	. U 
	ld hl,079dah		;17f4	21 da 79 	! . y 
	bit 0,(hl)		;17f7	cb 46 	. F 
	jr nz,l1803h		;17f9	20 08 	  . 
	ld a,02dh		;17fb	3e 2d 	> - 
	ld (07906h),a		;17fd	32 06 79 	2 . y 
l1800h:
	jp 094abh		;1800	c3 ab 94 	. . . 
l1803h:
	call 0ff67h		;1803	cd 67 ff 	. g . 
	jr l1849h		;1806	18 41 	. A 
	ld hl,07f35h		;1808	21 35 7f 	! 5  
	ld a,(hl)			;180b	7e 	~ 
	and 006h		;180c	e6 06 	. . 
	jr z,l181bh		;180e	28 0b 	( . 
	bit 0,(hl)		;1810	cb 46 	. F 
	jr z,l1849h		;1812	28 35 	( 5 
	ld hl,079dah		;1814	21 da 79 	! . y 
	bit 4,(hl)		;1817	cb 66 	. f 
	jr nz,l1849h		;1819	20 2e 	  . 
l181bh:
	ld hl,079dfh		;181b	21 df 79 	! . y 
	res 0,(hl)		;181e	cb 86 	. . 
	res 1,(hl)		;1820	cb 8e 	. . 
	ld hl,079dah		;1822	21 da 79 	! . y 
	bit 1,(hl)		;1825	cb 4e 	. N 
	jr nz,l1849h		;1827	20 20 	    
	ld a,(07906h)		;1829	3a 06 79 	: . y 
	cp 0f8h		;182c	fe f8 	. . 
	jr z,l1843h		;182e	28 13 	( . 
	cp 01bh		;1830	fe 1b 	. . 
	jr z,l183eh		;1832	28 0a 	( . 
	cp 01ah		;1834	fe 1a 	. . 
	jr z,l1846h		;1836	28 0e 	( . 
	call 0ff6dh		;1838	cd 6d ff 	. m . 
	jp 094a8h		;183b	c3 a8 94 	. . . 
l183eh:
	call 0ff76h		;183e	cd 76 ff 	. v . 
	jr l1849h		;1841	18 06 	. . 
l1843h:
	call 0ff70h		;1843	cd 70 ff 	. p . 
l1846h:
	call 0ff73h		;1846	cd 73 ff 	. s . 
l1849h:
	jp 094a8h		;1849	c3 a8 94 	. . . 
	cp 0feh		;184c	fe fe 	. . 
	jr z,l1854h		;184e	28 04 	( . 
	cp 0f2h		;1850	fe f2 	. . 
	jr nc,l1849h		;1852	30 f5 	0 . 
l1854h:
	cp 020h		;1854	fe 20 	.   
	jr nc,l1896h		;1856	30 3e 	0 > 
	cp 01eh		;1858	fe 1e 	. . 
	jr nc,l18b4h		;185a	30 58 	0 X 
	cp 01ch		;185c	fe 1c 	. . 
	jr nc,l18b9h		;185e	30 59 	0 Y 
	cp 00bh		;1860	fe 0b 	. . 
	jr z,l18c5h		;1862	28 61 	( a 
	cp 00ch		;1864	fe 0c 	. . 
	jr z,l18c5h		;1866	28 5d 	( ] 
	ld hl,079dah		;1868	21 da 79 	! . y 
	bit 1,(hl)		;186b	cb 4e 	. N 
	jr nz,l1849h		;186d	20 da 	  . 
	cp 017h		;186f	fe 17 	. . 
	jr nc,l1849h		;1871	30 d6 	0 . 
	cp 016h		;1873	fe 16 	. . 
	jr z,l18beh		;1875	28 47 	( G 
	cp 00eh		;1877	fe 0e 	. . 
	jr z,l1849h		;1879	28 ce 	( . 
	cp 00fh		;187b	fe 0f 	. . 
	jr z,l1849h		;187d	28 ca 	( . 
	cp 007h		;187f	fe 07 	. . 
	jr z,l18e0h		;1881	28 5d 	( ] 
	ld hl,079dfh		;1883	21 df 79 	! . y 
	res 0,(hl)		;1886	cb 86 	. . 
	res 1,(hl)		;1888	cb 8e 	. . 
	cp 00dh		;188a	fe 0d 	. . 
	jr z,l18eah		;188c	28 5c 	( \ 
	cp 005h		;188e	fe 05 	. . 
	jr z,l18efh		;1890	28 5d 	( ] 
	cp 015h		;1892	fe 15 	. . 
	jr z,l18f4h		;1894	28 5e 	( ^ 
l1896h:
	ld a,(079dah)		;1896	3a da 79 	: . y 
	bit 2,a		;1899	cb 57 	. W 
	jr nz,l18abh		;189b	20 0e 	  . 
l189dh:
	bit 1,a		;189d	cb 4f 	. O 
	jr nz,l1849h		;189f	20 a8 	  . 
l18a1h:
	ld hl,079dah		;18a1	21 da 79 	! . y 
	set 5,(hl)		;18a4	cb ee 	. . 
	call 0b1cah		;18a6	cd ca b1 	. . . 
	jr l1849h		;18a9	18 9e 	. . 
l18abh:
	bit 5,a		;18ab	cb 6f 	. o 
	jr nz,l189dh		;18ad	20 ee 	  . 
	call 0a7f4h		;18af	cd f4 a7 	. . . 
	jr l18a1h		;18b2	18 ed 	. . 
l18b4h:
	call 09af0h		;18b4	cd f0 9a 	. . . 
	jr l1849h		;18b7	18 90 	. . 
l18b9h:
	call 09bdfh		;18b9	cd df 9b 	. . . 
	jr l1849h		;18bc	18 8b 	. . 
l18beh:
	ld a,02dh		;18be	3e 2d 	> - 
	ld (07906h),a		;18c0	32 06 79 	2 . y 
	jr l1896h		;18c3	18 d1 	. . 
l18c5h:
	ld hl,079dfh		;18c5	21 df 79 	! . y 
	res 0,(hl)		;18c8	cb 86 	. . 
	res 1,(hl)		;18ca	cb 8e 	. . 
	cp 00bh		;18cc	fe 0b 	. . 
	jr z,l18d8h		;18ce	28 08 	( . 
	call 09341h		;18d0	cd 41 93 	. A . 
	call 0a9f2h		;18d3	cd f2 a9 	. . . 
	jr l18f7h		;18d6	18 1f 	. . 
l18d8h:
	call 09341h		;18d8	cd 41 93 	. A . 
	call 0a0d8h		;18db	cd d8 a0 	. . . 
	jr l18f7h		;18de	18 17 	. . 
l18e0h:
	ld hl,079dfh		;18e0	21 df 79 	! . y 
	res 1,(hl)		;18e3	cb 8e 	. . 
	call 0a0bbh		;18e5	cd bb a0 	. . . 
	jr l18f7h		;18e8	18 0d 	. . 
l18eah:
	call 09dd8h		;18ea	cd d8 9d 	. . . 
	jr l18f7h		;18ed	18 08 	. . 
l18efh:
	call 0a6c1h		;18ef	cd c1 a6 	. . . 
	jr l18f7h		;18f2	18 03 	. . 
l18f4h:
	call 0ffe2h		;18f4	cd e2 ff 	. . . 
l18f7h:
	jp 094a8h		;18f7	c3 a8 94 	. . . 
	ld hl,079dah		;18fa	21 da 79 	! . y 
	bit 1,(hl)		;18fd	cb 4e 	. N 
	ret nz			;18ff	c0 	. 
l1900h:
	cp 0f0h		;1900	fe f0 	. . 
	jr z,l192dh		;1902	28 29 	( ) 
	dec a			;1904	3d 	= 
	jr z,l1919h		;1905	28 12 	( . 
	dec a			;1907	3d 	= 
	jr z,l191dh		;1908	28 13 	( . 
	dec a			;190a	3d 	= 
	jr z,l1925h		;190b	28 18 	( . 
	call 09314h		;190d	cd 14 93 	. . . 
	call 0ffe8h		;1910	cd e8 ff 	. . . 
l1913h:
	call 09305h		;1913	cd 05 93 	. . . 
	jp 0ffcdh		;1916	c3 cd ff 	. . . 
l1919h:
	call 0a056h		;1919	cd 56 a0 	. V . 
	ret			;191c	c9 	. 
l191dh:
	call 09314h		;191d	cd 14 93 	. . . 
	call 0ffe2h		;1920	cd e2 ff 	. . . 
	jr l1913h		;1923	18 ee 	. . 
l1925h:
	call 09314h		;1925	cd 14 93 	. . . 
	call 0ffe5h		;1928	cd e5 ff 	. . . 
	jr l1913h		;192b	18 e6 	. . 
l192dh:
	call 0931eh		;192d	cd 1e 93 	. . . 
	call 0fffdh		;1930	cd fd ff 	. . . 
	jr l1913h		;1933	18 de 	. . 
	cp 013h		;1935	fe 13 	. . 
	jr z,l195ah		;1937	28 21 	( ! 
	ld hl,07901h		;1939	21 01 79 	! . y 
	cp 011h		;193c	fe 11 	. . 
	jr c,l1950h		;193e	38 10 	8 . 
	jr z,l1954h		;1940	28 12 	( . 
	bit 2,(hl)		;1942	cb 56 	. V 
	jr nz,l194ch		;1944	20 06 	  . 
	ld b,002h		;1946	06 02 	. . 
l1948h:
	ld a,(hl)			;1948	7e 	~ 
	xor b			;1949	a8 	. 
	ld (hl),a			;194a	77 	w 
	ret			;194b	c9 	. 
l194ch:
	ld b,008h		;194c	06 08 	. . 
	jr l1948h		;194e	18 f8 	. . 
l1950h:
	ld b,010h		;1950	06 10 	. . 
	jr l1948h		;1952	18 f4 	. . 
l1954h:
	ld b,004h		;1954	06 04 	. . 
	res 3,(hl)		;1956	cb 9e 	. . 
	jr l1948h		;1958	18 ee 	. . 
l195ah:
	ld a,(07903h)		;195a	3a 03 79 	: . y 
	bit 6,a		;195d	cb 77 	. w 
	jr nz,l196bh		;195f	20 0a 	  . 
	bit 5,a		;1961	cb 6f 	. o 
	jr nz,l1973h		;1963	20 0e 	  . 
	set 5,a		;1965	cb ef 	. . 
	ld (07903h),a		;1967	32 03 79 	2 . y 
	ret			;196a	c9 	. 
l196bh:
	and 09fh		;196b	e6 9f 	. . 
	or 010h		;196d	f6 10 	. . 
	ld (07903h),a		;196f	32 03 79 	2 . y 
	ret			;1972	c9 	. 
l1973h:
	set 6,a		;1973	cb f7 	. . 
	res 4,a		;1975	cb a7 	. . 
	ld (07903h),a		;1977	32 03 79 	2 . y 
	ret			;197a	c9 	. 
	ld hl,07f35h		;197b	21 35 7f 	! 5  
	bit 4,(hl)		;197e	cb 66 	. f 
	jr z,l19b7h		;1980	28 35 	( 5 
l1982h:
	ld a,(079dah)		;1982	3a da 79 	: . y 
	bit 5,a		;1985	cb 6f 	. o 
	jr z,l198dh		;1987	28 04 	( . 
	and 013h		;1989	e6 13 	. . 
	jr z,l19beh		;198b	28 31 	( 1 
l198dh:
	call 09341h		;198d	cd 41 93 	. A . 
	and a			;1990	a7 	. 
	ld hl,079d9h		;1991	21 d9 79 	! . y 
	bit 4,(hl)		;1994	cb 66 	. f 
	ret nz			;1996	c0 	. 
	ld hl,07965h		;1997	21 65 79 	! e y 
	bit 1,(hl)		;199a	cb 4e 	. N 
	ret nz			;199c	c0 	. 
	set 3,(hl)		;199d	cb de 	. . 
	call 0aad6h		;199f	cd d6 aa 	. . . 
	ld a,(07928h)		;19a2	3a 28 79 	: ( y 
	and a			;19a5	a7 	. 
	call nz,0ab39h		;19a6	c4 39 ab 	. 9 . 
	ld hl,l0317h		;19a9	21 17 03 	! . . 
	ld (07922h),hl		;19ac	22 22 79 	" " y 
	call 0b02eh		;19af	cd 2e b0 	. . . 
	call 0a9f2h		;19b2	cd f2 a9 	. . . 
	scf			;19b5	37 	7 
	ret			;19b6	c9 	. 
l19b7h:
	ld hl,079d9h		;19b7	21 d9 79 	! . y 
	bit 1,(hl)		;19ba	cb 4e 	. N 
	jr nz,l1982h		;19bc	20 c4 	  . 
l19beh:
	ld a,(079dah)		;19be	3a da 79 	: . y 
	and 017h		;19c1	e6 17 	. . 
	ret nz			;19c3	c0 	. 
	call 09c1ah		;19c4	cd 1a 9c 	. . . 
	call 0b1cah		;19c7	cd ca b1 	. . . 
	and a			;19ca	a7 	. 
	ret			;19cb	c9 	. 
	ld hl,07f35h		;19cc	21 35 7f 	! 5  
	bit 4,(hl)		;19cf	cb 66 	. f 
	jr z,l19beh		;19d1	28 eb 	( . 
	ld a,(079dah)		;19d3	3a da 79 	: . y 
	bit 5,a		;19d6	cb 6f 	. o 
	jr z,l19deh		;19d8	28 04 	( . 
	and 011h		;19da	e6 11 	. . 
	jr z,l19beh		;19dc	28 e0 	( . 
l19deh:
	call 0ff9dh		;19de	cd 9d ff 	. . . 
	ld de,07d00h		;19e1	11 00 7d 	. . } 
	ld hl,07c00h		;19e4	21 00 7c 	! . | 
	ld bc,l00ffh+1		;19e7	01 00 01 	. . . 
	ldir		;19ea	ed b0 	. . 
	ld a,(07927h)		;19ec	3a 27 79 	: ' y 
	ld (079f1h),a		;19ef	32 f1 79 	2 . y 
	ld hl,07f36h		;19f2	21 36 7f 	! 6  
	res 1,(hl)		;19f5	cb 8e 	. . 
	set 0,(hl)		;19f7	cb c6 	. . 
	ld ix,(07aa2h)		;19f9	dd 2a a2 7a 	. * . z 
	ld (07f38h),ix		;19fd	dd 22 38 7f 	. " 8  
	ld a,(07f35h)		;1a01	3a 35 7f 	: 5  
	and 00eh		;1a04	e6 0e 	. . 
	jr z,l1a72h		;1a06	28 6a 	( j 
	call 09c1ah		;1a08	cd 1a 9c 	. . . 
	jr nz,l1a6ah		;1a0b	20 5d 	  ] 
	ld hl,07f35h		;1a0d	21 35 7f 	! 5  
	bit 0,(hl)		;1a10	cb 46 	. F 
	jr z,l1a19h		;1a12	28 05 	( . 
	res 0,(hl)		;1a14	cb 86 	. . 
	jp 0a450h		;1a16	c3 50 a4 	. P . 
l1a19h:
	bit 3,(hl)		;1a19	cb 5e 	. ^ 
	jr nz,l1a5fh		;1a1b	20 42 	  B 
	xor a			;1a1d	af 	. 
	ld (07920h),a		;1a1e	32 20 79 	2   y 
	ld hl,079dah		;1a21	21 da 79 	! . y 
	bit 5,(hl)		;1a24	cb 6e 	. n 
	jr nz,l1a34h		;1a26	20 0c 	  . 
	call 0930fh		;1a28	cd 0f 93 	. . . 
	call 0ff7ch		;1a2b	cd 7c ff 	. | . 
	call 09305h		;1a2e	cd 05 93 	. . . 
	jp 0a485h		;1a31	c3 85 a4 	. . . 
l1a34h:
	call 0ab6bh		;1a34	cd 6b ab 	. k . 
	jr c,l1a5bh		;1a37	38 22 	8 " 
	ld a,(079dah)		;1a39	3a da 79 	: . y 
	and 0c0h		;1a3c	e6 c0 	. . 
	ld (079dah),a		;1a3e	32 da 79 	2 . y 
	call 0a49dh		;1a41	cd 9d a4 	. . . 
	dec ix		;1a44	dd 2b 	. + 
	cp 02ch		;1a46	fe 2c 	. , 
	jp nz,0a485h		;1a48	c2 85 a4 	. . . 
	inc ix		;1a4b	dd 23 	. # 
	call 092f5h		;1a4d	cd f5 92 	. . . 
	ld hl,07f36h		;1a50	21 36 7f 	! 6  
	res 1,(hl)		;1a53	cb 8e 	. . 
	call 0ffdch		;1a55	cd dc ff 	. . . 
	jp 0a1deh		;1a58	c3 de a1 	. . . 
l1a5bh:
	call 0a65bh		;1a5b	cd 5b a6 	. [ . 
	ret			;1a5e	c9 	. 
l1a5fh:
	ld a,(07f35h)		;1a5f	3a 35 7f 	: 5  
	and 0f1h		;1a62	e6 f1 	. . 
	ld (07f35h),a		;1a64	32 35 7f 	2 5  
	jp 0a485h		;1a67	c3 85 a4 	. . . 
l1a6ah:
	res 0,(hl)		;1a6a	cb 86 	. . 
	ld hl,07965h		;1a6c	21 65 79 	! e y 
	res 1,(hl)		;1a6f	cb 8e 	. . 
	ret			;1a71	c9 	. 
l1a72h:
	ld hl,07f35h		;1a72	21 35 7f 	! 5  
	res 0,(hl)		;1a75	cb 86 	. . 
	ld a,(079dah)		;1a77	3a da 79 	: . y 
	and 0c0h		;1a7a	e6 c0 	. . 
	ld (079dah),a		;1a7c	32 da 79 	2 . y 
	ld hl,07965h		;1a7f	21 65 79 	! e y 
	bit 1,(hl)		;1a82	cb 4e 	. N 
	jr z,l1a94h		;1a84	28 0e 	( . 
	call 092f5h		;1a86	cd f5 92 	. . . 
	call 0a144h		;1a89	cd 44 a1 	. D . 
	jr c,l1a5fh		;1a8c	38 d1 	8 . 
	ld a,000h		;1a8e	3e 00 	> . 
	ld (0797eh),a		;1a90	32 7e 79 	2 ~ y 
	ret			;1a93	c9 	. 
l1a94h:
	set 1,(hl)		;1a94	cb ce 	. . 
	call 092f5h		;1a96	cd f5 92 	. . . 
	call 0a144h		;1a99	cd 44 a1 	. D . 
	ret c			;1a9c	d8 	. 
	call 08ce3h		;1a9d	cd e3 8c 	. . . 
	ret			;1aa0	c9 	. 
l1aa1h:
	ld b,a			;1aa1	47 	G 
	ld hl,(079e1h)		;1aa2	2a e1 79 	* . y 
	inc hl			;1aa5	23 	# 
	ld a,(hl)			;1aa6	7e 	~ 
	cp 0ffh		;1aa7	fe ff 	. . 
	ld a,b			;1aa9	78 	x 
	jr z,l1acfh		;1aaa	28 23 	( # 
	cp 01fh		;1aac	fe 1f 	. . 
	jr nz,l1ad6h		;1aae	20 26 	  & 
	ld a,(07924h)		;1ab0	3a 24 79 	: $ y 
	ld b,a			;1ab3	47 	G 
	ld a,(07925h)		;1ab4	3a 25 79 	: % y 
	cp b			;1ab7	b8 	. 
	jr z,l1ae4h		;1ab8	28 2a 	( * 
	ld a,(07926h)		;1aba	3a 26 79 	: & y 
	dec a			;1abd	3d 	= 
	cp b			;1abe	b8 	. 
	jr nz,l1acfh		;1abf	20 0e 	  . 
	ld hl,(07f3ah)		;1ac1	2a 3a 7f 	* :  
	inc hl			;1ac4	23 	# 
	inc hl			;1ac5	23 	# 
	ld e,(hl)			;1ac6	5e 	^ 
	ld d,000h		;1ac7	16 00 	. . 
	add hl,de			;1ac9	19 	. 
	inc hl			;1aca	23 	# 
	ld a,(hl)			;1acb	7e 	~ 
	inc a			;1acc	3c 	< 
	jr nz,l1ae4h		;1acd	20 15 	  . 
l1acfh:
	call 09c1ah		;1acf	cd 1a 9c 	. . . 
	call 0b1cah		;1ad2	cd ca b1 	. . . 
	ret			;1ad5	c9 	. 
l1ad6h:
	ld a,(07924h)		;1ad6	3a 24 79 	: $ y 
	and a			;1ad9	a7 	. 
	jr nz,l1acfh		;1ada	20 f3 	  . 
	ld hl,(07f3ah)		;1adc	2a 3a 7f 	* :  
	dec hl			;1adf	2b 	+ 
	ld a,(hl)			;1ae0	7e 	~ 
	inc a			;1ae1	3c 	< 
	jr z,l1acfh		;1ae2	28 eb 	( . 
l1ae4h:
	ld hl,07965h		;1ae4	21 65 79 	! e y 
	bit 1,(hl)		;1ae7	cb 4e 	. N 
	res 1,(hl)		;1ae9	cb 8e 	. . 
	ret nz			;1aeb	c0 	. 
	res 2,(hl)		;1aec	cb 96 	. . 
	jr l1afeh		;1aee	18 0e 	. . 
	ld hl,079dah		;1af0	21 da 79 	! . y 
	bit 1,(hl)		;1af3	cb 4e 	. N 
	ret nz			;1af5	c0 	. 
	call 09b86h		;1af6	cd 86 9b 	. . . 
	ret nz			;1af9	c0 	. 
	bit 5,(hl)		;1afa	cb 6e 	. n 
	jr nz,l1aa1h		;1afc	20 a3 	  . 
l1afeh:
	ld hl,07f35h		;1afe	21 35 7f 	! 5  
	bit 4,(hl)		;1b01	cb 66 	. f 
	jr z,l1b28h		;1b03	28 23 	( # 
	call 09341h		;1b05	cd 41 93 	. A . 
	ld hl,079dah		;1b08	21 da 79 	! . y 
	bit 2,(hl)		;1b0b	cb 56 	. V 
	jr z,l1b21h		;1b0d	28 12 	( . 
l1b0fh:
	call 09c1ah		;1b0f	cd 1a 9c 	. . . 
l1b12h:
	ld a,(07906h)		;1b12	3a 06 79 	: . y 
	cp 01fh		;1b15	fe 1f 	. . 
	jr nz,l1b1dh		;1b17	20 04 	  . 
	call 0936fh		;1b19	cd 6f 93 	. o . 
	ret			;1b1c	c9 	. 
l1b1dh:
	call 0937ah		;1b1d	cd 7a 93 	. z . 
	ret			;1b20	c9 	. 
l1b21h:
	call 0aad6h		;1b21	cd d6 aa 	. . . 
	call 0ab4fh		;1b24	cd 4f ab 	. O . 
	ret			;1b27	c9 	. 
l1b28h:
	ld ix,(079e1h)		;1b28	dd 2a e1 79 	. * . y 
	inc ix		;1b2c	dd 23 	. # 
	ld a,(ix+000h)		;1b2e	dd 7e 00 	. ~ . 
	cp 0ffh		;1b31	fe ff 	. . 
	ret z			;1b33	c8 	. 
	call 09341h		;1b34	cd 41 93 	. A . 
	ld hl,079dah		;1b37	21 da 79 	! . y 
	bit 2,(hl)		;1b3a	cb 56 	. V 
	jr nz,l1b0fh		;1b3c	20 d1 	  . 
	ld hl,079d9h		;1b3e	21 d9 79 	! . y 
	bit 1,(hl)		;1b41	cb 4e 	. N 
	ld hl,07965h		;1b43	21 65 79 	! e y 
	jr z,l1b4eh		;1b46	28 06 	( . 
	bit 1,(hl)		;1b48	cb 4e 	. N 
	jr nz,l1b12h		;1b4a	20 c6 	  . 
	jr l1b21h		;1b4c	18 d3 	. . 
l1b4eh:
	bit 1,(hl)		;1b4e	cb 4e 	. N 
	jr nz,l1b12h		;1b50	20 c0 	  . 
	ld a,(07906h)		;1b52	3a 06 79 	: . y 
	cp 01fh		;1b55	fe 1f 	. . 
	jr z,l1b6ch		;1b57	28 13 	( . 
	ld ix,(079e3h)		;1b59	dd 2a e3 79 	. * . y 
	dec ix		;1b5d	dd 2b 	. + 
	ld (07f3ah),ix		;1b5f	dd 22 3a 7f 	. " :  
	call 0930fh		;1b63	cd 0f 93 	. . . 
	call 0ff94h		;1b66	cd 94 ff 	. . . 
	call 09305h		;1b69	cd 05 93 	. . . 
l1b6ch:
	ld hl,079d9h		;1b6c	21 d9 79 	! . y 
	set 3,(hl)		;1b6f	cb de 	. . 
	ld a,(079dah)		;1b71	3a da 79 	: . y 
	and 0c0h		;1b74	e6 c0 	. . 
	or 004h		;1b76	f6 04 	. . 
	ld (079dah),a		;1b78	32 da 79 	2 . y 
	ld (07f3ah),ix		;1b7b	dd 22 3a 7f 	. " :  
	call 0ffa0h		;1b7f	cd a0 ff 	. . . 
	call 09c20h		;1b82	cd 20 9c 	.   . 
	ret			;1b85	c9 	. 
	ld b,a			;1b86	47 	G 
	ld a,(07902h)		;1b87	3a 02 79 	: . y 
	cpl			;1b8a	2f 	/ 
	bit 3,a		;1b8b	cb 5f 	. _ 
	jr z,l1b94h		;1b8d	28 05 	( . 
	ld a,(079d9h)		;1b8f	3a d9 79 	: . y 
	bit 4,a		;1b92	cb 67 	. g 
l1b94h:
	ld a,b			;1b94	78 	x 
	ret			;1b95	c9 	. 
	ld hl,07f33h		;1b96	21 33 7f 	! 3  
	ld (hl),000h		;1b99	36 00 	6 . 
	ld hl,079d9h		;1b9b	21 d9 79 	! . y 
	res 3,(hl)		;1b9e	cb 9e 	. . 
	ld hl,079dah		;1ba0	21 da 79 	! . y 
	bit 1,(hl)		;1ba3	cb 4e 	. N 
	jr z,l1bbch		;1ba5	28 15 	( . 
l1ba7h:
	bit 5,(hl)		;1ba7	cb 6e 	. n 
	ret z			;1ba9	c8 	. 
	res 1,(hl)		;1baa	cb 8e 	. . 
	call 09341h		;1bac	cd 41 93 	. A . 
	ld a,(07f38h)		;1baf	3a 38 7f 	: 8  
	ld (079eah),a		;1bb2	32 ea 79 	2 . y 
l1bb5h:
	call 09c20h		;1bb5	cd 20 9c 	.   . 
	call 0acafh		;1bb8	cd af ac 	. . . 
	ret			;1bbb	c9 	. 
l1bbch:
	bit 5,(hl)		;1bbc	cb 6e 	. n 
	ret z			;1bbe	c8 	. 
	bit 0,(hl)		;1bbf	cb 46 	. F 
	jr z,l1bd8h		;1bc1	28 15 	( . 
	res 0,(hl)		;1bc3	cb 86 	. . 
	ld a,(07f38h)		;1bc5	3a 38 7f 	: 8  
	ld b,a			;1bc8	47 	G 
	ld a,(07906h)		;1bc9	3a 06 79 	: . y 
	cp 01ch		;1bcc	fe 1c 	. . 
	jr nz,l1bd2h		;1bce	20 02 	  . 
	ld b,000h		;1bd0	06 00 	. . 
l1bd2h:
	ld a,b			;1bd2	78 	x 
	ld (079eah),a		;1bd3	32 ea 79 	2 . y 
	jr l1bb5h		;1bd6	18 dd 	. . 
l1bd8h:
	call 09c1ah		;1bd8	cd 1a 9c 	. . . 
	call 0b1cah		;1bdb	cd ca b1 	. . . 
	ret			;1bde	c9 	. 
	ld hl,079dfh		;1bdf	21 df 79 	! . y 
	res 0,(hl)		;1be2	cb 86 	. . 
	ld hl,079d9h		;1be4	21 d9 79 	! . y 
	res 3,(hl)		;1be7	cb 9e 	. . 
	ld hl,079dah		;1be9	21 da 79 	! . y 
	bit 1,(hl)		;1bec	cb 4e 	. N 
	jr nz,l1ba7h		;1bee	20 b7 	  . 
	bit 2,(hl)		;1bf0	cb 56 	. V 
	jr z,l1c13h		;1bf2	28 1f 	( . 
	bit 5,(hl)		;1bf4	cb 6e 	. n 
	jr nz,l1c13h		;1bf6	20 1b 	  . 
	set 5,(hl)		;1bf8	cb ee 	. . 
	call 09c20h		;1bfa	cd 20 9c 	.   . 
	call 0ff29h		;1bfd	cd 29 ff 	. ) . 
	ld de,(07929h)		;1c00	ed 5b 29 79 	. [ ) y 
	ld (07920h),de		;1c04	ed 53 20 79 	. S   y 
	ld hl,07965h		;1c08	21 65 79 	! e y 
	res 4,(hl)		;1c0b	cb a6 	. . 
	set 2,(hl)		;1c0d	cb d6 	. . 
	call 0927fh		;1c0f	cd 7f 92 	.  . 
	ret			;1c12	c9 	. 
l1c13h:
	call 09c1ah		;1c13	cd 1a 9c 	. . . 
	call 0b1cah		;1c16	cd ca b1 	. . . 
	ret			;1c19	c9 	. 
	ld hl,07965h		;1c1a	21 65 79 	! e y 
	bit 1,(hl)		;1c1d	cb 4e 	. N 
	ret nz			;1c1f	c0 	. 
	call 08ce3h		;1c20	cd e3 8c 	. . . 
	ld hl,07965h		;1c23	21 65 79 	! e y 
	set 1,(hl)		;1c26	cb ce 	. . 
	xor a			;1c28	af 	. 
	ret			;1c29	c9 	. 
	call 092f5h		;1c2a	cd f5 92 	. . . 
	call 0ae13h		;1c2d	cd 13 ae 	. . . 
	ld a,(07f35h)		;1c30	3a 35 7f 	: 5  
	xor 014h		;1c33	ee 14 	. . 
	and 015h		;1c35	e6 15 	. . 
	jr nz,l1c4fh		;1c37	20 16 	  . 
	ld bc,l00ffh+1		;1c39	01 00 01 	. . . 
	ld hl,07c00h		;1c3c	21 00 7c 	! . | 
	ld de,07d00h		;1c3f	11 00 7d 	. . } 
	ldir		;1c42	ed b0 	. . 
	ld ix,(07aa2h)		;1c44	dd 2a a2 7a 	. * . z 
	ld (07f38h),ix		;1c48	dd 22 38 7f 	. " 8  
	jp 09a1dh		;1c4c	c3 1d 9a 	. . . 
l1c4fh:
	ld ix,07cffh		;1c4f	dd 21 ff 7c 	. ! . | 
	ld hl,079dah		;1c53	21 da 79 	! . y 
	bit 5,(hl)		;1c56	cb 6e 	. n 
	jr z,l1c79h		;1c58	28 1f 	( . 
	ld hl,07f35h		;1c5a	21 35 7f 	! 5  
	ld a,(hl)			;1c5d	7e 	~ 
	and 006h		;1c5e	e6 06 	. . 
	jr z,l1c7eh		;1c60	28 1c 	( . 
	ld a,(hl)			;1c62	7e 	~ 
	and 011h		;1c63	e6 11 	. . 
	cp 010h		;1c65	fe 10 	. . 
	jr nz,l1c7eh		;1c67	20 15 	  . 
	ld hl,07927h		;1c69	21 27 79 	! ' y 
	ld d,07dh		;1c6c	16 7d 	. } 
	ld e,(hl)			;1c6e	5e 	^ 
	dec de			;1c6f	1b 	. 
	push de			;1c70	d5 	. 
	pop ix		;1c71	dd e1 	. . 
	jr l1c7eh		;1c73	18 09 	. . 
l1c75h:
	call 0a65bh		;1c75	cd 5b a6 	. [ . 
	ret			;1c78	c9 	. 
l1c79h:
	call 09333h		;1c79	cd 33 93 	. 3 . 
	jr l1ca7h		;1c7c	18 29 	. ) 
l1c7eh:
	ld ix,07bffh		;1c7e	dd 21 ff 7b 	. ! . { 
	ld iy,07cffh		;1c82	fd 21 ff 7c 	. ! . | 
	ld a,(07927h)		;1c86	3a 27 79 	: ' y 
	cp 000h		;1c89	fe 00 	. . 
	jr z,l1c9ah		;1c8b	28 0d 	( . 
	ld b,a			;1c8d	47 	G 
l1c8eh:
	inc ix		;1c8e	dd 23 	. # 
	inc iy		;1c90	fd 23 	. # 
	ld a,(ix+000h)		;1c92	dd 7e 00 	. ~ . 
	ld (iy+000h),a		;1c95	fd 77 00 	. w . 
	djnz l1c8eh		;1c98	10 f4 	. . 
l1c9ah:
	call 0fff4h		;1c9a	cd f4 ff 	. . . 
	jr c,l1c75h		;1c9d	38 d6 	8 . 
	call 09d26h		;1c9f	cd 26 9d 	. & . 
	ld hl,0797dh		;1ca2	21 7d 79 	! } y 
	res 0,(hl)		;1ca5	cb 86 	. . 
l1ca7h:
	ld ix,07cffh		;1ca7	dd 21 ff 7c 	. ! . | 
	ld hl,07f35h		;1cab	21 35 7f 	! 5  
	bit 4,(hl)		;1cae	cb 66 	. f 
	jr z,l1cech		;1cb0	28 3a 	( : 
	bit 0,(hl)		;1cb2	cb 46 	. F 
	jr nz,l1cech		;1cb4	20 36 	  6 
	bit 3,(hl)		;1cb6	cb 5e 	. ^ 
	jr z,l1cdah		;1cb8	28 20 	(   
	ld a,(079dah)		;1cba	3a da 79 	: . y 
	bit 0,a		;1cbd	cb 47 	. G 
	jr nz,l1cc5h		;1cbf	20 04 	  . 
	bit 5,a		;1cc1	cb 6f 	. o 
	jr nz,l1cf5h		;1cc3	20 30 	  0 
l1cc5h:
	and 0c0h		;1cc5	e6 c0 	. . 
	ld (079dah),a		;1cc7	32 da 79 	2 . y 
	res 0,(hl)		;1cca	cb 86 	. . 
	call 0ff9dh		;1ccc	cd 9d ff 	. . . 
	ld ix,(07aa2h)		;1ccf	dd 2a a2 7a 	. * . z 
	ld (07f38h),ix		;1cd3	dd 22 38 7f 	. " 8  
	jp 09a5fh		;1cd7	c3 5f 9a 	. _ . 
l1cdah:
	bit 1,(hl)		;1cda	cb 4e 	. N 
	jr z,l1cech		;1cdc	28 0e 	( . 
	call 0ff9dh		;1cde	cd 9d ff 	. . . 
	ld ix,(07aa2h)		;1ce1	dd 2a a2 7a 	. * . z 
	ld (07f38h),ix		;1ce5	dd 22 38 7f 	. " 8  
	jp 09a1dh		;1ce9	c3 1d 9a 	. . . 
l1cech:
	ld a,(079dah)		;1cec	3a da 79 	: . y 
	xor 020h		;1cef	ee 20 	.   
	and 021h		;1cf1	e6 21 	. ! 
	jr nz,l1d1fh		;1cf3	20 2a 	  * 
l1cf5h:
	ld a,(07f36h)		;1cf5	3a 36 7f 	: 6  
	and 0efh		;1cf8	e6 ef 	. . 
	or 002h		;1cfa	f6 02 	. . 
	ld (07f36h),a		;1cfc	32 36 7f 	2 6  
	ld hl,07f35h		;1cff	21 35 7f 	! 5  
	res 5,(hl)		;1d02	cb ae 	. . 
	ld a,(079dah)		;1d04	3a da 79 	: . y 
	and 0e0h		;1d07	e6 e0 	. . 
	ld (079dah),a		;1d09	32 da 79 	2 . y 
	ld hl,07965h		;1d0c	21 65 79 	! e y 
	res 2,(hl)		;1d0f	cb 96 	. . 
	call 0adc1h		;1d11	cd c1 ad 	. . . 
	xor a			;1d14	af 	. 
	ld (07920h),a		;1d15	32 20 79 	2   y 
	ld ix,07cffh		;1d18	dd 21 ff 7c 	. ! . | 
	jp 0a13dh		;1d1c	c3 3d a1 	. = . 
l1d1fh:
	call 0a7f4h		;1d1f	cd f4 a7 	. . . 
	call 092feh		;1d22	cd fe 92 	. . . 
	ret			;1d25	c9 	. 
	push iy		;1d26	fd e5 	. . 
	pop hl			;1d28	e1 	. 
	ld b,l			;1d29	45 	E 
	ld a,0ffh		;1d2a	3e ff 	> . 
	sub b			;1d2c	90 	. 
	ret z			;1d2d	c8 	. 
	ld b,a			;1d2e	47 	G 
	ld a,00dh		;1d2f	3e 0d 	> . 
l1d31h:
	inc hl			;1d31	23 	# 
	ld (hl),a			;1d32	77 	w 
	djnz l1d31h		;1d33	10 fc 	. . 
	ret			;1d35	c9 	. 
l1d36h:
	call 0a65bh		;1d36	cd 5b a6 	. [ . 
	call 0ff1ah		;1d39	cd 1a ff 	. . . 
l1d3ch:
	call 0b02eh		;1d3c	cd 2e b0 	. . . 
	cp 00ch		;1d3f	fe 0c 	. . 
	jr z,l1d6ch		;1d41	28 29 	( ) 
	cp 00bh		;1d43	fe 0b 	. . 
	jr z,l1d71h		;1d45	28 2a 	( * 
	cp 01ch		;1d47	fe 1c 	. . 
	jr z,l1d4fh		;1d49	28 04 	( . 
	cp 01dh		;1d4b	fe 1d 	. . 
	jr nz,l1d3ch		;1d4d	20 ed 	  . 
l1d4fh:
	ld a,(079dfh)		;1d4f	3a df 79 	: . y 
	and 0fch		;1d52	e6 fc 	. . 
	ld (079dfh),a		;1d54	32 df 79 	2 . y 
	ld hl,079dah		;1d57	21 da 79 	! . y 
	res 1,(hl)		;1d5a	cb 8e 	. . 
	ld a,(07f38h)		;1d5c	3a 38 7f 	: 8  
	ld (079eah),a		;1d5f	32 ea 79 	2 . y 
	call 09c20h		;1d62	cd 20 9c 	.   . 
	call 0ac96h		;1d65	cd 96 ac 	. . . 
l1d68h:
	call 09341h		;1d68	cd 41 93 	. A . 
	ret			;1d6b	c9 	. 
l1d6ch:
	call 0a9f2h		;1d6c	cd f2 a9 	. . . 
	jr l1d74h		;1d6f	18 03 	. . 
l1d71h:
	call 0a0d8h		;1d71	cd d8 a0 	. . . 
l1d74h:
	ld hl,079dfh		;1d74	21 df 79 	! . y 
	res 0,(hl)		;1d77	cb 86 	. . 
	set 1,(hl)		;1d79	cb ce 	. . 
	jr l1d68h		;1d7b	18 eb 	. . 
l1d7dh:
	and a			;1d7d	a7 	. 
	ld hl,07902h		;1d7e	21 02 79 	! . y 
	bit 3,(hl)		;1d81	cb 5e 	. ^ 
	ret nz			;1d83	c0 	. 
	ld iy,07cffh		;1d84	fd 21 ff 7c 	. ! . | 
	dec ix		;1d88	dd 2b 	. + 
	call 0fff4h		;1d8a	cd f4 ff 	. . . 
	jr c,l1d36h		;1d8d	38 a7 	8 . 
	call 09d26h		;1d8f	cd 26 9d 	. & . 
	call 0ff1ah		;1d92	cd 1a ff 	. . . 
	ld ix,07cffh		;1d95	dd 21 ff 7c 	. ! . | 
	call 0a49dh		;1d99	cd 9d a4 	. . . 
	cp 00dh		;1d9c	fe 0d 	. . 
	jr z,l1dc4h		;1d9e	28 24 	( $ 
	cp 0feh		;1da0	fe fe 	. . 
	jr nz,l1db6h		;1da2	20 12 	  . 
	ld a,(ix+001h)		;1da4	dd 7e 01 	. ~ . 
	cp 060h		;1da7	fe 60 	. ` 
	jr z,l1db3h		;1da9	28 08 	( . 
	cp 064h		;1dab	fe 64 	. d 
	jr z,l1db3h		;1dad	28 04 	( . 
	cp 050h		;1daf	fe 50 	. P 
	jr nc,l1db6h		;1db1	30 03 	0 . 
l1db3h:
	jp 09cf5h		;1db3	c3 f5 9c 	. . . 
l1db6h:
	call 08369h		;1db6	cd 69 83 	. i . 
	push ix		;1db9	dd e5 	. . 
	call 0adc1h		;1dbb	cd c1 ad 	. . . 
	pop ix		;1dbe	dd e1 	. . 
	call 0a65bh		;1dc0	cd 5b a6 	. [ . 
	ret			;1dc3	c9 	. 
l1dc4h:
	ld a,(07902h)		;1dc4	3a 02 79 	: . y 
	bit 3,a		;1dc7	cb 5f 	. _ 
	jr nz,l1dd3h		;1dc9	20 08 	  . 
	call 0a7f4h		;1dcb	cd f4 a7 	. . . 
l1dceh:
	call 092feh		;1dce	cd fe 92 	. . . 
	xor a			;1dd1	af 	. 
	ret			;1dd2	c9 	. 
l1dd3h:
	call 0a7f0h		;1dd3	cd f0 a7 	. . . 
	jr l1dceh		;1dd6	18 f6 	. . 
	call 092f5h		;1dd8	cd f5 92 	. . . 
	ld a,(079dah)		;1ddb	3a da 79 	: . y 
	bit 5,a		;1dde	cb 6f 	. o 
	jr z,l1dc4h		;1de0	28 e2 	( . 
	call 0ae13h		;1de2	cd 13 ae 	. . . 
	ld ix,07bffh		;1de5	dd 21 ff 7b 	. ! . { 
	call 0a49dh		;1de9	cd 9d a4 	. . . 
	call 0a4f5h		;1dec	cd f5 a4 	. . . 
	jr c,l1d7dh		;1def	38 8c 	8 . 
	call 09b86h		;1df1	cd 86 9b 	. . . 
	jr nz,l1dc4h		;1df4	20 ce 	  . 
	call 0ff43h		;1df6	cd 43 ff 	. C . 
	call 08029h		;1df9	cd 29 80 	. ) . 
	ld a,(07f11h)		;1dfc	3a 11 7f 	: .  
	and 0f0h		;1dff	e6 f0 	. . 
	ld (07f11h),a		;1e01	32 11 7f 	2 .  
	ld ix,07bffh		;1e04	dd 21 ff 7b 	. ! . { 
l1e08h:
	call 0a49dh		;1e08	cd 9d a4 	. . . 
	cp 030h		;1e0b	fe 30 	. 0 
	jr z,l1e08h		;1e0d	28 f9 	( . 
	dec ix		;1e0f	dd 2b 	. + 
	ld hl,07f14h		;1e11	21 14 7f 	! .  
	ld b,006h		;1e14	06 06 	. . 
l1e16h:
	ld (07f18h),ix		;1e16	dd 22 18 7f 	. " .  
	inc ix		;1e1a	dd 23 	. # 
	ld a,(ix+000h)		;1e1c	dd 7e 00 	. ~ . 
	call 0a4f5h		;1e1f	cd f5 a4 	. . . 
	jr c,l1e63h		;1e22	38 3f 	8 ? 
	ld c,a			;1e24	4f 	O 
	ld a,b			;1e25	78 	x 
	cp 006h		;1e26	fe 06 	. . 
	jr z,l1e3bh		;1e28	28 11 	( . 
	xor a			;1e2a	af 	. 
	rld		;1e2b	ed 6f 	. o 
	dec hl			;1e2d	2b 	+ 
	rld		;1e2e	ed 6f 	. o 
	dec hl			;1e30	2b 	+ 
	rld		;1e31	ed 6f 	. o 
	ld a,(07f11h)		;1e33	3a 11 7f 	: .  
	add a,010h		;1e36	c6 10 	. . 
	ld (07f11h),a		;1e38	32 11 7f 	2 .  
l1e3bh:
	ld a,c			;1e3b	79 	y 
	and 00fh		;1e3c	e6 0f 	. . 
	ld hl,07f14h		;1e3e	21 14 7f 	! .  
	or (hl)			;1e41	b6 	. 
	ld (hl),a			;1e42	77 	w 
	djnz l1e16h		;1e43	10 d1 	. . 
l1e45h:
	ld a,041h		;1e45	3e 41 	> A 
	call 0837bh		;1e47	cd 7b 83 	. { . 
	ld hl,07902h		;1e4a	21 02 79 	! . y 
	bit 3,(hl)		;1e4d	cb 5e 	. ^ 
	ret nz			;1e4f	c0 	. 
	jp 09d36h		;1e50	c3 36 9d 	. 6 . 
l1e53h:
	inc ix		;1e53	dd 23 	. # 
	ld a,(ix+000h)		;1e55	dd 7e 00 	. ~ . 
	inc iy		;1e58	fd 23 	. # 
	ld (iy+000h),a		;1e5a	fd 77 00 	. w . 
	cp 00dh		;1e5d	fe 0d 	. . 
	jr nz,l1e53h		;1e5f	20 f2 	  . 
	jr l1eb8h		;1e61	18 55 	. U 
l1e63h:
	xor a			;1e63	af 	. 
	ld hl,07f14h		;1e64	21 14 7f 	! .  
	rld		;1e67	ed 6f 	. o 
	dec hl			;1e69	2b 	+ 
	rld		;1e6a	ed 6f 	. o 
	dec hl			;1e6c	2b 	+ 
	rld		;1e6d	ed 6f 	. o 
	djnz l1e63h		;1e6f	10 f2 	. . 
	ld ix,(07f18h)		;1e71	dd 2a 18 7f 	. * .  
	ld a,(07902h)		;1e75	3a 02 79 	: . y 
	bit 3,a		;1e78	cb 5f 	. _ 
	jr nz,l1e89h		;1e7a	20 0d 	  . 
	ld a,(ix+001h)		;1e7c	dd 7e 01 	. ~ . 
	cp 03ah		;1e7f	fe 3a 	. : 
	jr z,l1e87h		;1e81	28 04 	( . 
	cp 020h		;1e83	fe 20 	.   
	jr nz,l1e89h		;1e85	20 02 	  . 
l1e87h:
	inc ix		;1e87	dd 23 	. # 
l1e89h:
	ld (07f38h),ix		;1e89	dd 22 38 7f 	. " 8  
	call 0ac3bh		;1e8d	cd 3b ac 	. ; . 
	call 0930fh		;1e90	cd 0f 93 	. . . 
	call 0fff1h		;1e93	cd f1 ff 	. . . 
	call 09305h		;1e96	cd 05 93 	. . . 
	ld ix,(07f38h)		;1e99	dd 2a 38 7f 	. * 8  
	jr c,l1e45h		;1e9d	38 a6 	8 . 
	ld iy,07d00h		;1e9f	fd 21 00 7d 	. ! . } 
	ld hl,07902h		;1ea3	21 02 79 	! . y 
	bit 3,(hl)		;1ea6	cb 5e 	. ^ 
	jr nz,l1e53h		;1ea8	20 a9 	  . 
	ld hl,(07f18h)		;1eaa	2a 18 7f 	* .  
	push hl			;1ead	e5 	. 
	call 0ff34h		;1eae	cd 34 ff 	. 4 . 
	pop hl			;1eb1	e1 	. 
	ld (07f18h),hl		;1eb2	22 18 7f 	" .  
	jp c,09d36h		;1eb5	da 36 9d 	. 6 . 
l1eb8h:
	call 09d26h		;1eb8	cd 26 9d 	. & . 
	ld hl,07f35h		;1ebb	21 35 7f 	! 5  
	res 4,(hl)		;1ebe	cb a6 	. . 
	ld hl,07cffh		;1ec0	21 ff 7c 	! . | 
	ld (07f38h),hl		;1ec3	22 38 7f 	" 8  
	push iy		;1ec6	fd e5 	. . 
	pop bc			;1ec8	c1 	. 
	ld a,c			;1ec9	79 	y 
	ld (07f0ah),a		;1eca	32 0a 7f 	2 .  
	ld hl,(079e3h)		;1ecd	2a e3 79 	* . y 
	dec hl			;1ed0	2b 	+ 
	ld de,(079e1h)		;1ed1	ed 5b e1 79 	. [ . y 
	xor a			;1ed5	af 	. 
	sbc hl,de		;1ed6	ed 52 	. R 
	jp z,09f6eh		;1ed8	ca 6e 9f 	. n . 
	call 0930fh		;1edb	cd 0f 93 	. . . 
	call 0ffdfh		;1ede	cd df ff 	. . . 
	call 09305h		;1ee1	cd 05 93 	. . . 
	jp c,09f73h		;1ee4	da 73 9f 	. s . 
	inc ix		;1ee7	dd 23 	. # 
	inc ix		;1ee9	dd 23 	. # 
	push ix		;1eeb	dd e5 	. . 
	pop hl			;1eed	e1 	. 
	call 09febh		;1eee	cd eb 9f 	. . . 
	inc hl			;1ef1	23 	# 
	push hl			;1ef2	e5 	. 
	pop ix		;1ef3	dd e1 	. . 
	ld e,b			;1ef5	58 	X 
	ld a,(07f0ah)		;1ef6	3a 0a 7f 	: .  
	ld d,a			;1ef9	57 	W 
	cp 001h		;1efa	fe 01 	. . 
	jr nz,l1f10h		;1efc	20 12 	  . 
	ld a,b			;1efe	78 	x 
	ld d,000h		;1eff	16 00 	. . 
	add a,003h		;1f01	c6 03 	. . 
	ld e,a			;1f03	5f 	_ 
	jr nc,l1f07h		;1f04	30 01 	0 . 
	inc d			;1f06	14 	. 
l1f07h:
	ld hl,l0000h		;1f07	21 00 00 	! . . 
	and a			;1f0a	a7 	. 
	sbc hl,de		;1f0b	ed 52 	. R 
	ex de,hl			;1f0d	eb 	. 
	jr l1f18h		;1f0e	18 08 	. . 
l1f10h:
	ld a,d			;1f10	7a 	z 
	sub e			;1f11	93 	. 
	jp nc,09f91h		;1f12	d2 91 9f 	. . . 
	ld e,a			;1f15	5f 	_ 
	ld d,0ffh		;1f16	16 ff 	. . 
l1f18h:
	call 0a006h		;1f18	cd 06 a0 	. . . 
	push ix		;1f1b	dd e5 	. . 
	pop bc			;1f1d	c1 	. 
	dec bc			;1f1e	0b 	. 
	xor a			;1f1f	af 	. 
	sbc hl,bc		;1f20	ed 42 	. B 
	ld b,h			;1f22	44 	D 
	ld c,l			;1f23	4d 	M 
	push ix		;1f24	dd e5 	. . 
	pop hl			;1f26	e1 	. 
	add hl,de			;1f27	19 	. 
	ex de,hl			;1f28	eb 	. 
	push ix		;1f29	dd e5 	. . 
	pop hl			;1f2b	e1 	. 
	ldir		;1f2c	ed b0 	. . 
	dec de			;1f2e	1b 	. 
	call 0a02eh		;1f2f	cd 2e a0 	. . . 
	ld a,(07f0ah)		;1f32	3a 0a 7f 	: .  
	cp 001h		;1f35	fe 01 	. . 
	jp z,09dc4h		;1f37	ca c4 9d 	. . . 
l1f3ah:
	ld iy,(07f3ah)		;1f3a	fd 2a 3a 7f 	. * :  
	inc iy		;1f3e	fd 23 	. # 
	inc iy		;1f40	fd 23 	. # 
	ld a,(07f0ah)		;1f42	3a 0a 7f 	: .  
	ld (iy+000h),a		;1f45	fd 77 00 	. w . 
	ld c,a			;1f48	4f 	O 
	ld b,000h		;1f49	06 00 	. . 
	ld hl,07d01h		;1f4b	21 01 7d 	! . } 
	push iy		;1f4e	fd e5 	. . 
	pop de			;1f50	d1 	. 
	inc de			;1f51	13 	. 
	ldir		;1f52	ed b0 	. . 
	call 0ac3bh		;1f54	cd 3b ac 	. ; . 
	ld a,(079dah)		;1f57	3a da 79 	: . y 
	and 0c0h		;1f5a	e6 c0 	. . 
	or 004h		;1f5c	f6 04 	. . 
	ld (079dah),a		;1f5e	32 da 79 	2 . y 
	ld hl,079d9h		;1f61	21 d9 79 	! . y 
	set 3,(hl)		;1f64	cb de 	. . 
	call 0ff26h		;1f66	cd 26 ff 	. & . 
	call 092feh		;1f69	cd fe 92 	. . . 
	xor a			;1f6c	af 	. 
	ret			;1f6d	c9 	. 
	inc de			;1f6e	13 	. 
	ld (07f3ah),de		;1f6f	ed 53 3a 7f 	. S :  
	ld a,(07f0ah)		;1f73	3a 0a 7f 	: .  
	cp 001h		;1f76	fe 01 	. . 
	jp z,09dc4h		;1f78	ca c4 9d 	. . . 
	ld b,000h		;1f7b	06 00 	. . 
	add a,003h		;1f7d	c6 03 	. . 
	jr nc,l1f82h		;1f7f	30 01 	0 . 
	inc b			;1f81	04 	. 
l1f82h:
	ld hl,07f03h		;1f82	21 03 7f 	! .  
	ld (hl),001h		;1f85	36 01 	6 . 
	ld de,(07f3ah)		;1f87	ed 5b 3a 7f 	. [ :  
	ld (07f08h),de		;1f8b	ed 53 08 7f 	. S .  
	jr l1f9eh		;1f8f	18 0d 	. . 
	jr z,l1f3ah		;1f91	28 a7 	( . 
	ld hl,07f03h		;1f93	21 03 7f 	! .  
	ld (hl),000h		;1f96	36 00 	6 . 
	ld (07f08h),ix		;1f98	dd 22 08 7f 	. " .  
	ld b,000h		;1f9c	06 00 	. . 
l1f9eh:
	ld c,a			;1f9e	4f 	O 
	call 0a006h		;1f9f	cd 06 a0 	. . . 
	push hl			;1fa2	e5 	. 
	pop ix		;1fa3	dd e1 	. . 
	add hl,bc			;1fa5	09 	. 
	ld de,(079fch)		;1fa6	ed 5b fc 79 	. [ . y 
	ex de,hl			;1faa	eb 	. 
	sbc hl,de		;1fab	ed 52 	. R 
	jr z,l1fdbh		;1fad	28 2c 	( , 
	jr c,l1fdbh		;1faf	38 2a 	8 * 
	call 0a011h		;1fb1	cd 11 a0 	. . . 
	push ix		;1fb4	dd e5 	. . 
	pop hl			;1fb6	e1 	. 
	ld bc,(07f08h)		;1fb7	ed 4b 08 7f 	. K .  
	dec bc			;1fbb	0b 	. 
	xor a			;1fbc	af 	. 
	sbc hl,bc		;1fbd	ed 42 	. B 
	ld b,h			;1fbf	44 	D 
	ld c,l			;1fc0	4d 	M 
	push ix		;1fc1	dd e5 	. . 
	pop hl			;1fc3	e1 	. 
	lddr		;1fc4	ed b8 	. . 
	ld a,(07f03h)		;1fc6	3a 03 7f 	: .  
	cp 001h		;1fc9	fe 01 	. . 
	jp nz,09f3ah		;1fcb	c2 3a 9f 	. : . 
	ld hl,(07f3ah)		;1fce	2a 3a 7f 	* :  
	ld bc,(07f18h)		;1fd1	ed 4b 18 7f 	. K .  
	ld (hl),b			;1fd5	70 	p 
	inc hl			;1fd6	23 	# 
	ld (hl),c			;1fd7	71 	q 
	jp 09f3ah		;1fd8	c3 3a 9f 	. : . 
l1fdbh:
	call 08388h		;1fdb	cd 88 83 	. . . 
	ld hl,07902h		;1fde	21 02 79 	! . y 
	bit 3,(hl)		;1fe1	cb 5e 	. ^ 
	ret nz			;1fe3	c0 	. 
	ld ix,07d00h		;1fe4	dd 21 00 7d 	. ! . } 
	jp 09d36h		;1fe8	c3 36 9d 	. 6 . 
	ld b,000h		;1feb	06 00 	. . 
l1fedh:
	ld a,01fh		;1fed	3e 1f 	> . 
l1fefh:
	inc hl			;1fef	23 	# 
	inc b			;1ff0	04 	. 
	cp (hl)			;1ff1	be 	. 
	jr z,l1ffah		;1ff2	28 06 	( . 
	ld a,00dh		;1ff4	3e 0d 	> . 
	cp (hl)			;1ff6	be 	. 
	jr nz,l1fedh		;1ff7	20 f4 	  . 
	ret			;1ff9	c9 	. 
l1ffah:
	inc hl			;1ffa	23 	# 
	inc hl			;1ffb	23 	# 
	inc b			;1ffc	04 	. 
	inc b			;1ffd	04 	. 
	jr l1fefh		;1ffe	18 ef 	. . 
	ld hl,07902h		;2000	21 02 79 	! . y 
	bit 3,(hl)		;2003	cb 5e 	. ^ 
	ret			;2005	c9 	. 
	call 0a000h		;2006	cd 00 a0 	. . . 
	ld hl,(079e3h)		;2009	2a e3 79 	* . y 
	ret z			;200c	c8 	. 
	ld hl,(07975h)		;200d	2a 75 79 	* u y 
	ret			;2010	c9 	. 
	call 0a000h		;2011	cd 00 a0 	. . . 
	jr nz,l201bh		;2014	20 05 	  . 
	ld (079e3h),de		;2016	ed 53 e3 79 	. S . y 
	ret			;201a	c9 	. 
l201bh:
	ld (07975h),de		;201b	ed 53 75 79 	. S u y 
	ld hl,(07973h)		;201f	2a 73 79 	* s y 
	add hl,bc			;2022	09 	. 
	ld (07973h),hl		;2023	22 73 79 	" s y 
	ld hl,(079e3h)		;2026	2a e3 79 	* . y 
	add hl,bc			;2029	09 	. 
	ld (079e3h),hl		;202a	22 e3 79 	" . y 
	ret			;202d	c9 	. 
	call 0a000h		;202e	cd 00 a0 	. . . 
	jr nz,l2038h		;2031	20 05 	  . 
	ld (079e3h),de		;2033	ed 53 e3 79 	. S . y 
	ret			;2037	c9 	. 
l2038h:
	ld hl,(07975h)		;2038	2a 75 79 	* u y 
	ld (07975h),de		;203b	ed 53 75 79 	. S u y 
	or a			;203f	b7 	. 
	sbc hl,de		;2040	ed 52 	. R 
	ex de,hl			;2042	eb 	. 
	ld hl,(07973h)		;2043	2a 73 79 	* s y 
	or a			;2046	b7 	. 
	sbc hl,de		;2047	ed 52 	. R 
	ld (07973h),hl		;2049	22 73 79 	" s y 
	ld hl,(079e3h)		;204c	2a e3 79 	* . y 
	or a			;204f	b7 	. 
	sbc hl,de		;2050	ed 52 	. R 
	ld (079e3h),hl		;2052	22 e3 79 	" . y 
	ret			;2055	c9 	. 
	ld hl,07f35h		;2056	21 35 7f 	! 5  
	bit 4,(hl)		;2059	cb 66 	. f 
	jr z,l205fh		;205b	28 02 	( . 
	set 0,(hl)		;205d	cb c6 	. . 
l205fh:
	ld hl,07904h		;205f	21 04 79 	! . y 
	res 5,(hl)		;2062	cb ae 	. . 
	ld a,(07902h)		;2064	3a 02 79 	: . y 
	and 060h		;2067	e6 60 	. ` 
	xor 060h		;2069	ee 60 	. ` 
	ld (07902h),a		;206b	32 02 79 	2 . y 
	call 0ff9dh		;206e	cd 9d ff 	. . . 
	call 0854dh		;2071	cd 4d 85 	. M . 
	ld a,020h		;2074	3e 20 	>   
	ld de,l0000h		;2076	11 00 00 	. . . 
	ld b,060h		;2079	06 60 	. ` 
	call 086b3h		;207b	cd b3 86 	. . . 
	ld a,(07902h)		;207e	3a 02 79 	: . y 
	ld hl,0a0aah		;2081	21 aa a0 	! . . 
	and 040h		;2084	e6 40 	. @ 
	jr nz,l208bh		;2086	20 03 	  . 
	ld hl,0a0aeh		;2088	21 ae a0 	! . . 
l208bh:
	ld de,l0000h		;208b	11 00 00 	. . . 
	ld b,(hl)			;208e	46 	F 
	inc hl			;208f	23 	# 
	call 084cdh		;2090	cd cd 84 	. . . 
	inc e			;2093	1c 	. 
	inc e			;2094	1c 	. 
	ld hl,0a0b6h		;2095	21 b6 a0 	! . . 
	ld b,(hl)			;2098	46 	F 
	inc hl			;2099	23 	# 
	call 084cdh		;209a	cd cd 84 	. . . 
	xor a			;209d	af 	. 
	ld (07923h),a		;209e	32 23 79 	2 # y 
	call 0a7f4h		;20a1	cd f4 a7 	. . . 
	ld hl,079dfh		;20a4	21 df 79 	! . y 
	res 0,(hl)		;20a7	cb 86 	. . 
	ret			;20a9	c9 	. 
	inc bc			;20aa	03 	. 
	ld d,d			;20ab	52 	R 
	ld d,l			;20ac	55 	U 
	ld c,(hl)			;20ad	4e 	N 
	rlca			;20ae	07 	. 
	ld d,b			;20af	50 	P 
	ld d,d			;20b0	52 	R 
	ld c,a			;20b1	4f 	O 
	ld b,a			;20b2	47 	G 
	ld d,d			;20b3	52 	R 
	ld b,c			;20b4	41 	A 
	ld c,l			;20b5	4d 	M 
	inc b			;20b6	04 	. 
	ld c,l			;20b7	4d 	M 
	ld c,a			;20b8	4f 	O 
	ld b,h			;20b9	44 	D 
	ld b,l			;20ba	45 	E 
	call 0fff1h		;20bb	cd f1 ff 	. . . 
	ld hl,07904h		;20be	21 04 79 	! . y 
	bit 6,(hl)		;20c1	cb 76 	. v 
	jr z,l20cbh		;20c3	28 06 	( . 
	res 6,(hl)		;20c5	cb b6 	. . 
l20c7h:
	call 0854dh		;20c7	cd 4d 85 	. M . 
	ret			;20ca	c9 	. 
l20cbh:
	ld hl,079bdh		;20cb	21 bd 79 	! . y 
	bit 2,(hl)		;20ce	cb 56 	. V 
	ret z			;20d0	c8 	. 
	ld hl,07904h		;20d1	21 04 79 	! . y 
	set 6,(hl)		;20d4	cb f6 	. . 
	jr l20c7h		;20d6	18 ef 	. . 
	call 0ff85h		;20d8	cd 85 ff 	. . . 
	call 0ac03h		;20db	cd 03 ac 	. . . 
	ret			;20de	c9 	. 
	ld hl,079dah		;20df	21 da 79 	! . y 
	bit 1,(hl)		;20e2	cb 4e 	. N 
	jp nz,094a8h		;20e4	c2 a8 94 	. . . 
	call 09323h		;20e7	cd 23 93 	. # . 
	call 0fff6h		;20ea	cd f6 ff 	. . . 
	call 09305h		;20ed	cd 05 93 	. . . 
	jp c,0ffcdh		;20f0	da cd ff 	. . . 
	ld sp,07ffeh		;20f3	31 fe 7f 	1 .  
	ld hl,07901h		;20f6	21 01 79 	! . y 
	set 1,(hl)		;20f9	cb ce 	. . 
	inc hl			;20fb	23 	# 
	ld (hl),040h		;20fc	36 40 	6 @ 
	inc hl			;20fe	23 	# 
	inc hl			;20ff	23 	# 
	res 5,(hl)		;2100	cb ae 	. . 
	res 6,(hl)		;2102	cb b6 	. . 
	ld a,020h		;2104	3e 20 	>   
	ld b,018h		;2106	06 18 	. . 
	ld hl,07f10h		;2108	21 10 7f 	! .  
l210bh:
	ld (hl),a			;210b	77 	w 
	inc hl			;210c	23 	# 
	djnz l210bh		;210d	10 fc 	. . 
	call 0ac03h		;210f	cd 03 ac 	. . . 
	call 0ae9dh		;2112	cd 9d ae 	. . . 
	call 0a07eh		;2115	cd 7e a0 	. ~ . 
	ld hl,07965h		;2118	21 65 79 	! e y 
	set 0,(hl)		;211b	cb c6 	. . 
	ld de,07c00h		;211d	11 00 7c 	. . | 
	ld hl,0a136h		;2120	21 36 a1 	! 6 . 
	ld c,(hl)			;2123	4e 	N 
	ld b,000h		;2124	06 00 	. . 
	inc hl			;2126	23 	# 
	ldir		;2127	ed b0 	. . 
	ld a,00dh		;2129	3e 0d 	> . 
	ld (07906h),a		;212b	32 06 79 	2 . y 
	ld hl,079dah		;212e	21 da 79 	! . y 
	set 5,(hl)		;2131	cb ee 	. . 
	jp 094abh		;2133	c3 ab 94 	. . . 
	ld b,047h		;2136	06 47 	. G 
	ld l,031h		;2138	2e 31 	. 1 
	jr nc,$+50		;213a	30 30 	0 0 
	dec c			;213c	0d 	. 
	ld hl,07f36h		;213d	21 36 7f 	! 6  
	bit 1,(hl)		;2140	cb 4e 	. N 
	jr nz,l216dh		;2142	20 29 	  ) 
	call 0a4a7h		;2144	cd a7 a4 	. . . 
	jr nc,l214eh		;2147	30 05 	0 . 
	dec ix		;2149	dd 2b 	. + 
	jp 0a258h		;214b	c3 58 a2 	. X . 
l214eh:
	cp 027h		;214e	fe 27 	. ' 
	jr z,l215bh		;2150	28 09 	( . 
	cp 03ah		;2152	fe 3a 	. : 
	jr nz,l2170h		;2154	20 1a 	  . 
	call 0a49dh		;2156	cd 9d a4 	. . . 
	jr l214eh		;2159	18 f3 	. . 
l215bh:
	call 0930fh		;215b	cd 0f 93 	. . . 
	call 0ffeeh		;215e	cd ee ff 	. . . 
	call 09305h		;2161	cd 05 93 	. . . 
	ld (07aa0h),ix		;2164	dd 22 a0 7a 	. " . z 
	inc ix		;2168	dd 23 	. # 
	jp 0a26eh		;216a	c3 6e a2 	. n . 
l216dh:
	call 0a49dh		;216d	cd 9d a4 	. . . 
l2170h:
	cp 0fdh		;2170	fe fd 	. . 
	jp z,0a23ch		;2172	ca 3c a2 	. < . 
	cp 0feh		;2175	fe fe 	. . 
	jr nz,l218fh		;2177	20 16 	  . 
	inc ix		;2179	dd 23 	. # 
	ld a,(ix+000h)		;217b	dd 7e 00 	. ~ . 
	cp 080h		;217e	fe 80 	. . 
	jr nc,l2198h		;2180	30 16 	0 . 
	jr l21b5h		;2182	18 31 	. 1 
l2184h:
	ld hl,07f35h		;2184	21 35 7f 	! 5  
	res 4,(hl)		;2187	cb a6 	. . 
	call 0ae71h		;2189	cd 71 ae 	. q . 
	jp 0a22bh		;218c	c3 2b a2 	. + . 
l218fh:
	cp 0ffh		;218f	fe ff 	. . 
	jr z,l2184h		;2191	28 f1 	( . 
	cp 00dh		;2193	fe 0d 	. . 
	jp z,0a232h		;2195	ca 32 a2 	. 2 . 
l2198h:
	ld hl,07f36h		;2198	21 36 7f 	! 6  
	bit 1,(hl)		;219b	cb 4e 	. N 
	jr z,l21ach		;219d	28 0d 	( . 
	ld b,a			;219f	47 	G 
	xor a			;21a0	af 	. 
	ld (0796bh),a		;21a1	32 6b 79 	2 k y 
	ld hl,0797dh		;21a4	21 7d 79 	! } y 
	res 0,(hl)		;21a7	cb 86 	. . 
	res 1,(hl)		;21a9	cb 8e 	. . 
	ld a,b			;21ab	78 	x 
l21ach:
	call 0a4eeh		;21ac	cd ee a4 	. . . 
	jp nc,0a2fbh		;21af	d2 fb a2 	. . . 
	jp 0a37dh		;21b2	c3 7d a3 	. } . 
l21b5h:
	ld h,000h		;21b5	26 00 	& . 
	ld l,a			;21b7	6f 	o 
	ld d,000h		;21b8	16 00 	. . 
	ld e,a			;21ba	5f 	_ 
	sla e		;21bb	cb 23 	. # 
	rl d		;21bd	cb 12 	. . 
	add hl,de			;21bf	19 	. 
	ld de,0aeaeh		;21c0	11 ae ae 	. . . 
	add hl,de			;21c3	19 	. 
	ld a,(hl)			;21c4	7e 	~ 
	cp 000h		;21c5	fe 00 	. . 
	jr z,l2239h		;21c7	28 70 	( p 
	inc hl			;21c9	23 	# 
	ld b,a			;21ca	47 	G 
	ld a,(07f36h)		;21cb	3a 36 7f 	: 6  
	bit 1,a		;21ce	cb 4f 	. O 
	jp nz,0a421h		;21d0	c2 21 a4 	. ! . 
	ld a,b			;21d3	78 	x 
	bit 7,a		;21d4	cb 7f 	.  
	jr z,l21f0h		;21d6	28 18 	( . 
	call 0a24ch		;21d8	cd 4c a2 	. L . 
	call 09305h		;21db	cd 05 93 	. . . 
	jr c,l2235h		;21de	38 55 	8 U 
	ld a,(07f35h)		;21e0	3a 35 7f 	: 5  
	and 02eh		;21e3	e6 2e 	. . 
	jr nz,l21f5h		;21e5	20 0e 	  . 
	ld a,(07f36h)		;21e7	3a 36 7f 	: 6  
	and 060h		;21ea	e6 60 	. ` 
	jr nz,l2213h		;21ec	20 25 	  % 
	jr l2258h		;21ee	18 68 	. h 
l21f0h:
	call 08369h		;21f0	cd 69 83 	. i . 
	jr l2235h		;21f3	18 40 	. @ 
l21f5h:
	and 020h		;21f5	e6 20 	.   
	jr nz,l2208h		;21f7	20 0f 	  . 
	ld hl,07f36h		;21f9	21 36 7f 	! 6  
	res 0,(hl)		;21fc	cb 86 	. . 
	ld (07aa2h),ix		;21fe	dd 22 a2 7a 	. " . z 
	ld (07aa0h),ix		;2202	dd 22 a0 7a 	. " . z 
	jr l222eh		;2206	18 26 	. & 
l2208h:
	call 0930fh		;2208	cd 0f 93 	. . . 
	call 0ff7ch		;220b	cd 7c ff 	. | . 
	call 09305h		;220e	cd 05 93 	. . . 
	jr l2258h		;2211	18 45 	. E 
l2213h:
	ld b,a			;2213	47 	G 
	ld a,(07f36h)		;2214	3a 36 7f 	: 6  
	and 09fh		;2217	e6 9f 	. . 
	ld (07f36h),a		;2219	32 36 7f 	2 6  
	bit 5,b		;221c	cb 68 	. h 
	jp z,0a16dh		;221e	ca 6d a1 	. m . 
	jr l222bh		;2221	18 08 	. . 
	ld hl,07f35h		;2223	21 35 7f 	! 5  
	res 5,(hl)		;2226	cb ae 	. . 
	call 09328h		;2228	cd 28 93 	. ( . 
l222bh:
	call 0a7f4h		;222b	cd f4 a7 	. . . 
l222eh:
	call 092feh		;222e	cd fe 92 	. . . 
	ret			;2231	c9 	. 
l2232h:
	call 08379h		;2232	cd 79 83 	. y . 
l2235h:
	call 0a5f0h		;2235	cd f0 a5 	. . . 
	ret			;2238	c9 	. 
l2239h:
	call 08379h		;2239	cd 79 83 	. y . 
	ld hl,07f36h		;223c	21 36 7f 	! 6  
	bit 1,(hl)		;223f	cb 4e 	. N 
	jr z,l2235h		;2241	28 f2 	( . 
	jr l2248h		;2243	18 03 	. . 
	call 08379h		;2245	cd 79 83 	. y . 
l2248h:
	call 0a65bh		;2248	cd 5b a6 	. [ . 
	ret			;224b	c9 	. 
	and 00fh		;224c	e6 0f 	. . 
	ld (07900h),a		;224e	32 00 79 	2 . y 
	out (019h),a		;2251	d3 19 	. . 
	ld e,(hl)			;2253	5e 	^ 
	inc hl			;2254	23 	# 
	ld d,(hl)			;2255	56 	V 
	ex de,hl			;2256	eb 	. 
	jp (hl)			;2257	e9 	. 
l2258h:
	ld (07aa0h),ix		;2258	dd 22 a0 7a 	. " . z 
	call 0a49dh		;225c	cd 9d a4 	. . . 
	ld hl,07f36h		;225f	21 36 7f 	! 6  
	cp 03ah		;2262	fe 3a 	. : 
	jr z,l22aeh		;2264	28 48 	( H 
	cp 00dh		;2266	fe 0d 	. . 
	jr nz,l2232h		;2268	20 c8 	  . 
	bit 3,(hl)		;226a	cb 5e 	. ^ 
	jr nz,l229eh		;226c	20 30 	  0 
	inc ix		;226e	dd 23 	. # 
	ld a,(ix+000h)		;2270	dd 7e 00 	. ~ . 
	cp 0ffh		;2273	fe ff 	. . 
	jr z,l22aah		;2275	28 33 	( 3 
	inc ix		;2277	dd 23 	. # 
	inc ix		;2279	dd 23 	. # 
l227bh:
	ld hl,07f35h		;227b	21 35 7f 	! 5  
	bit 5,(hl)		;227e	cb 6e 	. n 
	jr nz,l22c4h		;2280	20 42 	  B 
	ld a,(07f36h)		;2282	3a 36 7f 	: 6  
	and 005h		;2285	e6 05 	. . 
	jr nz,l22d5h		;2287	20 4c 	  L 
	call 08d3ch		;2289	cd 3c 8d 	. < . 
	jr nz,l22c4h		;228c	20 36 	  6 
	ld a,(07931h)		;228e	3a 31 79 	: 1 y 
	add a,010h		;2291	c6 10 	. . 
	ld (07931h),a		;2293	32 31 79 	2 1 y 
	jr nc,l229bh		;2296	30 03 	0 . 
	call 08d49h		;2298	cd 49 8d 	. I . 
l229bh:
	jp 0a144h		;229b	c3 44 a1 	. D . 
l229eh:
	res 3,(hl)		;229e	cb 9e 	. . 
	ld ix,(07f3ah)		;22a0	dd 2a 3a 7f 	. * :  
	ld (07f38h),ix		;22a4	dd 22 38 7f 	. " 8  
	jr l227bh		;22a8	18 d1 	. . 
l22aah:
	dec ix		;22aa	dd 2b 	. + 
	jr l227bh		;22ac	18 cd 	. . 
l22aeh:
	bit 3,(hl)		;22ae	cb 5e 	. ^ 
	jr nz,l229eh		;22b0	20 ec 	  . 
	ld hl,07f35h		;22b2	21 35 7f 	! 5  
	bit 5,(hl)		;22b5	cb 6e 	. n 
	jr nz,l22c4h		;22b7	20 0b 	  . 
	call 08d3ch		;22b9	cd 3c 8d 	. < . 
	jr nz,l22c4h		;22bc	20 06 	  . 
	call 0a49dh		;22be	cd 9d a4 	. . . 
	jp 0a14eh		;22c1	c3 4e a1 	. N . 
l22c4h:
	ld hl,07f35h		;22c4	21 35 7f 	! 5  
	res 5,(hl)		;22c7	cb ae 	. . 
	call 09328h		;22c9	cd 28 93 	. ( . 
	ld (07aa2h),ix		;22cc	dd 22 a2 7a 	. " . z 
	call 0a6c1h		;22d0	cd c1 a6 	. . . 
	jr l22f8h		;22d3	18 23 	. # 
l22d5h:
	ld hl,07f36h		;22d5	21 36 7f 	! 6  
	res 0,(hl)		;22d8	cb 86 	. . 
	dec hl			;22da	2b 	+ 
	set 0,(hl)		;22db	cb c6 	. . 
	ld hl,079dah		;22dd	21 da 79 	! . y 
	set 2,(hl)		;22e0	cb d6 	. . 
	ld (07aa2h),ix		;22e2	dd 22 a2 7a 	. " . z 
	ld iy,07cffh		;22e6	fd 21 ff 7c 	. ! . | 
	call 0a73dh		;22ea	cd 3d a7 	. = . 
	ld (iy+001h),03ah		;22ed	fd 36 01 3a 	. 6 . : 
	ld (iy+002h),00dh		;22f1	fd 36 02 0d 	. 6 . . 
	call 0a6fch		;22f5	cd fc a6 	. . . 
l22f8h:
	jp 0a22eh		;22f8	c3 2e a2 	. . . 
	dec ix		;22fb	dd 2b 	. + 
	ld hl,07f36h		;22fd	21 36 7f 	! 6  
	bit 1,(hl)		;2300	cb 4e 	. N 
	jr z,l2321h		;2302	28 1d 	( . 
	ld hl,07904h		;2304	21 04 79 	! . y 
	bit 6,(hl)		;2307	cb 76 	. v 
	jr z,l2321h		;2309	28 16 	( . 
	call 0fff1h		;230b	cd f1 ff 	. . . 
	jr c,l2363h		;230e	38 53 	8 S 
	call 0ff8eh		;2310	cd 8e ff 	. . . 
	jp c,0a248h		;2313	da 48 a2 	. H . 
	ld ix,07cffh		;2316	dd 21 ff 7c 	. ! . | 
	ld hl,07f35h		;231a	21 35 7f 	! 5  
	bit 5,(hl)		;231d	cb 6e 	. n 
	jr nz,l22c4h		;231f	20 a3 	  . 
l2321h:
	ld (079b5h),ix		;2321	dd 22 b5 79 	. " . y 
	ld a,(07f33h)		;2325	3a 33 7f 	: 3  
	and 09fh		;2328	e6 9f 	. . 
	or 002h		;232a	f6 02 	. . 
	ld (07f33h),a		;232c	32 33 7f 	2 3  
	call 0930fh		;232f	cd 0f 93 	. . . 
	call 0ff91h		;2332	cd 91 ff 	. . . 
	call 09305h		;2335	cd 05 93 	. . . 
	jp c,0a23ch		;2338	da 3c a2 	. < . 
	ld b,a			;233b	47 	G 
	call 0a49dh		;233c	cd 9d a4 	. . . 
	cp 03dh		;233f	fe 3d 	. = 
	jr nz,l236dh		;2341	20 2a 	  * 
	call 0930fh		;2343	cd 0f 93 	. . . 
	call 0ff22h		;2346	cd 22 ff 	. " . 
	call 09305h		;2349	cd 05 93 	. . . 
	jp c,0a23ch		;234c	da 3c a2 	. < . 
	ld hl,07f36h		;234f	21 36 7f 	! 6  
	bit 1,(hl)		;2352	cb 4e 	. N 
	jp nz,0a3beh		;2354	c2 be a3 	. . . 
	call 0a49dh		;2357	cd 9d a4 	. . . 
	cp 02ch		;235a	fe 2c 	. , 
	jr z,l2321h		;235c	28 c3 	( . 
	dec ix		;235e	dd 2b 	. + 
	jp 0a258h		;2360	c3 58 a2 	. X . 
l2363h:
	ld hl,07904h		;2363	21 04 79 	! . y 
	res 6,(hl)		;2366	cb b6 	. . 
	call 0854dh		;2368	cd 4d 85 	. M . 
	jr l2321h		;236b	18 b4 	. . 
l236dh:
	ld ix,(079b5h)		;236d	dd 2a b5 79 	. * . y 
	ld hl,07f36h		;2371	21 36 7f 	! 6  
	bit 1,(hl)		;2374	cb 4e 	. N 
	jr nz,l23aeh		;2376	20 36 	  6 
	inc ix		;2378	dd 23 	. # 
l237ah:
	jp 0a232h		;237a	c3 32 a2 	. 2 . 
	ld hl,07f36h		;237d	21 36 7f 	! 6  
	bit 1,(hl)		;2380	cb 4e 	. N 
	jr z,l237ah		;2382	28 f6 	( . 
	dec ix		;2384	dd 2b 	. + 
	ld hl,07904h		;2386	21 04 79 	! . y 
	bit 6,(hl)		;2389	cb 76 	. v 
	jr z,l23aah		;238b	28 1d 	( . 
	call 0fff1h		;238d	cd f1 ff 	. . . 
	jr c,l23a2h		;2390	38 10 	8 . 
	call 0ff8eh		;2392	cd 8e ff 	. . . 
	jp c,0a248h		;2395	da 48 a2 	. H . 
	ld hl,07f35h		;2398	21 35 7f 	! 5  
	bit 5,(hl)		;239b	cb 6e 	. n 
	jr z,l23aah		;239d	28 0b 	( . 
l239fh:
	jp 0a223h		;239f	c3 23 a2 	. # . 
l23a2h:
	ld hl,07904h		;23a2	21 04 79 	! . y 
	res 6,(hl)		;23a5	cb b6 	. . 
	call 0854dh		;23a7	cd 4d 85 	. M . 
l23aah:
	ld ix,07cffh		;23aa	dd 21 ff 7c 	. ! . | 
l23aeh:
	call 0930fh		;23ae	cd 0f 93 	. . . 
	call 0fffdh		;23b1	cd fd ff 	. . . 
	call 09305h		;23b4	cd 05 93 	. . . 
	jr c,l240bh		;23b7	38 52 	8 R 
	call 0a4fch		;23b9	cd fc a4 	. . . 
	jr c,l240bh		;23bc	38 4d 	8 M 
	ld hl,079dah		;23be	21 da 79 	! . y 
	set 0,(hl)		;23c1	cb c6 	. . 
	call 0a49dh		;23c3	cd 9d a4 	. . . 
	cp 00dh		;23c6	fe 0d 	. . 
	jr z,l23f7h		;23c8	28 2d 	( - 
	cp 02ch		;23ca	fe 2c 	. , 
	jp nz,0a245h		;23cc	c2 45 a2 	. E . 
	ld hl,079bdh		;23cf	21 bd 79 	! . y 
	bit 2,(hl)		;23d2	cb 56 	. V 
	jr nz,l23deh		;23d4	20 08 	  . 
	ld hl,07904h		;23d6	21 04 79 	! . y 
	res 6,(hl)		;23d9	cb b6 	. . 
	call 0854dh		;23db	cd 4d 85 	. M . 
l23deh:
	call 0a85bh		;23de	cd 5b a8 	. [ . 
	jr c,l240bh		;23e1	38 28 	8 ( 
	ld hl,07f35h		;23e3	21 35 7f 	! 5  
	bit 5,(hl)		;23e6	cb 6e 	. n 
	jr nz,l239fh		;23e8	20 b5 	  . 
	call 0a49dh		;23ea	cd 9d a4 	. . . 
	dec ix		;23ed	dd 2b 	. + 
	call 0a4eeh		;23ef	cd ee a4 	. . . 
	jr c,l23aeh		;23f2	38 ba 	8 . 
	jp 0a321h		;23f4	c3 21 a3 	. ! . 
l23f7h:
	call 0a85bh		;23f7	cd 5b a8 	. [ . 
	jr c,l240bh		;23fa	38 0f 	8 . 
	ld hl,07f35h		;23fc	21 35 7f 	! 5  
	bit 5,(hl)		;23ff	cb 6e 	. n 
	jr nz,l239fh		;2401	20 9c 	  . 
	ld (079b5h),ix		;2403	dd 22 b5 79 	. " . y 
	call 092feh		;2407	cd fe 92 	. . . 
	ret			;240a	c9 	. 
l240bh:
	jp 0a65bh		;240b	c3 5b a6 	. [ . 
l240eh:
	ld hl,07f36h		;240e	21 36 7f 	! 6  
	bit 5,(hl)		;2411	cb 6e 	. n 
	jp z,0a248h		;2413	ca 48 a2 	. H . 
	res 5,(hl)		;2416	cb ae 	. . 
	jp 0a235h		;2418	c3 35 a2 	. 5 . 
l241bh:
	call 08369h		;241b	cd 69 83 	. i . 
	jp 0a248h		;241e	c3 48 a2 	. H . 
	bit 6,b		;2421	cb 70 	. p 
	jr z,l241bh		;2423	28 f6 	( . 
	ld a,b			;2425	78 	x 
	and 00fh		;2426	e6 0f 	. . 
	call 0a24ch		;2428	cd 4c a2 	. L . 
	call 09305h		;242b	cd 05 93 	. . . 
	jr c,l240eh		;242e	38 de 	8 . 
	ld hl,07f35h		;2430	21 35 7f 	! 5  
	bit 5,(hl)		;2433	cb 6e 	. n 
	jp nz,0a223h		;2435	c2 23 a2 	. # . 
	call 0a49dh		;2438	cd 9d a4 	. . . 
	cp 00dh		;243b	fe 0d 	. . 
	jp nz,0a245h		;243d	c2 45 a2 	. E . 
	ld hl,07f36h		;2440	21 36 7f 	! 6  
	bit 4,(hl)		;2443	cb 66 	. f 
	jr z,l2469h		;2445	28 22 	( " 
	res 1,(hl)		;2447	cb 8e 	. . 
	ld a,(07f35h)		;2449	3a 35 7f 	: 5  
	and 00eh		;244c	e6 0e 	. . 
	jr z,l2473h		;244e	28 23 	( # 
	ld a,(07f35h)		;2450	3a 35 7f 	: 5  
	and 006h		;2453	e6 06 	. . 
	jr z,l247dh		;2455	28 26 	( & 
	call 0a72eh		;2457	cd 2e a7 	. . . 
	ld h,d			;245a	62 	b 
	ld l,000h		;245b	2e 00 	. . 
	ld (07920h),hl		;245d	22 20 79 	"   y 
	ld (0792bh),hl		;2460	22 2b 79 	" + y 
	call 0aa11h		;2463	cd 11 aa 	. . . 
l2466h:
	jp 0a22eh		;2466	c3 2e a2 	. . . 
l2469h:
	ld hl,079dah		;2469	21 da 79 	! . y 
	bit 2,(hl)		;246c	cb 56 	. V 
	jr nz,l2466h		;246e	20 f6 	  . 
	jp 0a22bh		;2470	c3 2b a2 	. + . 
l2473h:
	call 0ae34h		;2473	cd 34 ae 	. 4 . 
	ld ix,(07f3ah)		;2476	dd 2a 3a 7f 	. * :  
	jp 0a144h		;247a	c3 44 a1 	. D . 
l247dh:
	ld ix,(07aa2h)		;247d	dd 2a a2 7a 	. * . z 
	ld (07f38h),ix		;2481	dd 22 38 7f 	. " 8  
	ld a,(07f35h)		;2485	3a 35 7f 	: 5  
	and 0f1h		;2488	e6 f1 	. . 
	ld (07f35h),a		;248a	32 35 7f 	2 5  
	ld hl,07f36h		;248d	21 36 7f 	! 6  
	res 1,(hl)		;2490	cb 8e 	. . 
	ld a,(079dah)		;2492	3a da 79 	: . y 
	and 0c0h		;2495	e6 c0 	. . 
	ld (079dah),a		;2497	32 da 79 	2 . y 
	jp 0a258h		;249a	c3 58 a2 	. X . 
l249dh:
	inc ix		;249d	dd 23 	. # 
	ld a,(ix+000h)		;249f	dd 7e 00 	. ~ . 
	cp 020h		;24a2	fe 20 	.   
	jr z,l249dh		;24a4	28 f7 	( . 
	ret			;24a6	c9 	. 
	call 0a49dh		;24a7	cd 9d a4 	. . . 
	cp 022h		;24aa	fe 22 	. " 
	jr nz,l24cdh		;24ac	20 1f 	  . 
l24aeh:
	inc ix		;24ae	dd 23 	. # 
	ld a,(ix+000h)		;24b0	dd 7e 00 	. ~ . 
	cp 00dh		;24b3	fe 0d 	. . 
	jr z,l24cbh		;24b5	28 14 	( . 
	cp 022h		;24b7	fe 22 	. " 
	jr nz,l24aeh		;24b9	20 f3 	  . 
l24bbh:
	call 0a49dh		;24bb	cd 9d a4 	. . . 
	cp 00dh		;24be	fe 0d 	. . 
	jr z,l24cbh		;24c0	28 09 	( . 
	cp 03ah		;24c2	fe 3a 	. : 
	jr nz,l24c9h		;24c4	20 03 	  . 
	call 0a49dh		;24c6	cd 9d a4 	. . . 
l24c9h:
	and a			;24c9	a7 	. 
	ret			;24ca	c9 	. 
l24cbh:
	scf			;24cb	37 	7 
	ret			;24cc	c9 	. 
l24cdh:
	cp 02ah		;24cd	fe 2a 	. * 
	jr nz,l24c9h		;24cf	20 f8 	  . 
	inc ix		;24d1	dd 23 	. # 
	ld a,(ix+000h)		;24d3	dd 7e 00 	. ~ . 
	call 0a4eeh		;24d6	cd ee a4 	. . . 
	jr c,l24eah		;24d9	38 0f 	8 . 
l24dbh:
	inc ix		;24db	dd 23 	. # 
	ld a,(ix+000h)		;24dd	dd 7e 00 	. ~ . 
	call 0a4eeh		;24e0	cd ee a4 	. . . 
	jr nc,l24dbh		;24e3	30 f6 	0 . 
	call 0a4f5h		;24e5	cd f5 a4 	. . . 
	jr nc,l24dbh		;24e8	30 f1 	0 . 
l24eah:
	dec ix		;24ea	dd 2b 	. + 
	jr l24bbh		;24ec	18 cd 	. . 
	cp 041h		;24ee	fe 41 	. A 
	ret c			;24f0	d8 	. 
	cp 05bh		;24f1	fe 5b 	. [ 
	ccf			;24f3	3f 	? 
	ret			;24f4	c9 	. 
	cp 030h		;24f5	fe 30 	. 0 
	ret c			;24f7	d8 	. 
	cp 03ah		;24f8	fe 3a 	. : 
	ccf			;24fa	3f 	? 
	ret			;24fb	c9 	. 
	ld a,(07f14h)		;24fc	3a 14 7f 	: .  
	cp 0d0h		;24ff	fe d0 	. . 
	jr z,l2558h		;2501	28 55 	( U 
	ld hl,07903h		;2503	21 03 79 	! . y 
	bit 3,(hl)		;2506	cb 5e 	. ^ 
	jr z,l2558h		;2508	28 4e 	( N 
	ld hl,07f11h		;250a	21 11 7f 	! .  
	res 3,(hl)		;250d	cb 9e 	. . 
	call 080cdh		;250f	cd cd 80 	. . . 
	ld hl,07990h		;2512	21 90 79 	! . y 
	call 08225h		;2515	cd 25 82 	. % . 
	ld hl,0796eh		;2518	21 6e 79 	! n y 
	bit 3,(hl)		;251b	cb 5e 	. ^ 
	call nz,08145h		;251d	c4 45 81 	. E . 
	call 0930fh		;2520	cd 0f 93 	. . . 
	ld a,(0796dh)		;2523	3a 6d 79 	: m y 
	sub 02ah		;2526	d6 2a 	. * 
	jr z,l255dh		;2528	28 33 	( 3 
	dec a			;252a	3d 	= 
	jr z,l2562h		;252b	28 35 	( 5 
	sub 002h		;252d	d6 02 	. . 
	jr z,l2567h		;252f	28 36 	( 6 
	call 0ffa0h		;2531	cd a0 ff 	. . . 
l2534h:
	call 09305h		;2534	cd 05 93 	. . . 
	ret c			;2537	d8 	. 
	call 081bbh		;2538	cd bb 81 	. . . 
	call 081ach		;253b	cd ac 81 	. . . 
	call 0a752h		;253e	cd 52 a7 	. R . 
	ld a,(07904h)		;2541	3a 04 79 	: . y 
	rla			;2544	17 	. 
	rla			;2545	17 	. 
	ret nc			;2546	d0 	. 
	call 0a56ch		;2547	cd 6c a5 	. l . 
	ret c			;254a	d8 	. 
	ld bc,l0008h		;254b	01 08 00 	. . . 
	ld de,07f10h		;254e	11 10 7f 	. .  
	ld hl,079c8h		;2551	21 c8 79 	! . y 
	ldir		;2554	ed b0 	. . 
	and a			;2556	a7 	. 
	ret			;2557	c9 	. 
l2558h:
	call 0a752h		;2558	cd 52 a7 	. R . 
	and a			;255b	a7 	. 
	ret			;255c	c9 	. 
l255dh:
	call 0ffa3h		;255d	cd a3 ff 	. . . 
	jr l2534h		;2560	18 d2 	. . 
l2562h:
	call 0ffa9h		;2562	cd a9 ff 	. . . 
	jr l2534h		;2565	18 cd 	. . 
l2567h:
	call 0ffa6h		;2567	cd a6 ff 	. . . 
	jr l2534h		;256a	18 c8 	. . 
	ld hl,07990h		;256c	21 90 79 	! . y 
	ld de,07f10h		;256f	11 10 7f 	. .  
	ld bc,l0008h		;2572	01 08 00 	. . . 
	ldir		;2575	ed b0 	. . 
	ld a,(07f33h)		;2577	3a 33 7f 	: 3  
	and 0feh		;257a	e6 fe 	. . 
	or 082h		;257c	f6 82 	. . 
	ld (07f33h),a		;257e	32 33 7f 	2 3  
	xor a			;2581	af 	. 
	ld (079e7h),a		;2582	32 e7 79 	2 . y 
	ld hl,079dfh		;2585	21 df 79 	! . y 
	res 1,(hl)		;2588	cb 8e 	. . 
	ld hl,07964h		;258a	21 64 79 	! d y 
	res 6,(hl)		;258d	cb b6 	. . 
	call 083b4h		;258f	cd b4 83 	. . . 
	ld hl,l0000h		;2592	21 00 00 	! . . 
	ld (07f0eh),hl		;2595	22 0e 7f 	" .  
	ld (07f3ch),hl		;2598	22 3c 7f 	" <  
	ld hl,079dfh		;259b	21 df 79 	! . y 
	res 0,(hl)		;259e	cb 86 	. . 
	call 0930fh		;25a0	cd 0f 93 	. . . 
	call 0ff16h		;25a3	cd 16 ff 	. . . 
	call 09305h		;25a6	cd 05 93 	. . . 
	ret c			;25a9	d8 	. 
	ld hl,079dfh		;25aa	21 df 79 	! . y 
	res 0,(hl)		;25ad	cb 86 	. . 
	push iy		;25af	fd e5 	. . 
	pop hl			;25b1	e1 	. 
	ld de,07a5fh		;25b2	11 5f 7a 	. _ z 
	sbc hl,de		;25b5	ed 52 	. R 
	ld c,l			;25b7	4d 	M 
	ld hl,07f10h		;25b8	21 10 7f 	! .  
	ld a,020h		;25bb	3e 20 	>   
	ld (hl),a			;25bd	77 	w 
	inc hl			;25be	23 	# 
	ld (hl),a			;25bf	77 	w 
	ld a,(0796eh)		;25c0	3a 6e 79 	: n y 
	bit 3,a		;25c3	cb 5f 	. _ 
	jr nz,l25cch		;25c5	20 05 	  . 
	ld a,(0796dh)		;25c7	3a 6d 79 	: m y 
	inc hl			;25ca	23 	# 
	ld (hl),a			;25cb	77 	w 
l25cch:
	inc hl			;25cc	23 	# 
	ld de,07a60h		;25cd	11 60 7a 	. ` z 
	ld b,000h		;25d0	06 00 	. . 
	ex de,hl			;25d2	eb 	. 
	ldir		;25d3	ed b0 	. . 
	ex de,hl			;25d5	eb 	. 
	ld a,(0796eh)		;25d6	3a 6e 79 	: n y 
	bit 3,a		;25d9	cb 5f 	. _ 
	jr z,l25e2h		;25db	28 05 	( . 
	ld a,(0796dh)		;25dd	3a 6d 79 	: m y 
	ld (hl),a			;25e0	77 	w 
	inc hl			;25e1	23 	# 
l25e2h:
	ld a,028h		;25e2	3e 28 	> ( 
	sub l			;25e4	95 	. 
	ld b,a			;25e5	47 	G 
	ld a,020h		;25e6	3e 20 	>   
l25e8h:
	ld (hl),a			;25e8	77 	w 
	inc hl			;25e9	23 	# 
	djnz l25e8h		;25ea	10 fc 	. . 
	call 0ffd0h		;25ec	cd d0 ff 	. . . 
	ret			;25ef	c9 	. 
	ld (07f38h),ix		;25f0	dd 22 38 7f 	. " 8  
	ld (07aa4h),ix		;25f4	dd 22 a4 7a 	. " . z 
	ld (07aa0h),ix		;25f8	dd 22 a0 7a 	. " . z 
	ld hl,07f35h		;25fc	21 35 7f 	! 5  
	res 4,(hl)		;25ff	cb a6 	. . 
	ld de,07d00h		;2601	11 00 7d 	. . } 
	ld hl,0a651h		;2604	21 51 a6 	! Q . 
	ld bc,l0006h		;2607	01 06 00 	. . . 
	ldir		;260a	ed b0 	. . 
	call 0a699h		;260c	cd 99 a6 	. . . 
	ld hl,0a657h		;260f	21 57 a6 	! W . 
	ld bc,l0004h		;2612	01 04 00 	. . . 
	ldir		;2615	ed b0 	. . 
	dec de			;2617	1b 	. 
	push de			;2618	d5 	. 
	pop iy		;2619	fd e1 	. . 
	ld (07f3ah),ix		;261b	dd 22 3a 7f 	. " :  
	call 0930fh		;261f	cd 0f 93 	. . . 
	call 0ff94h		;2622	cd 94 ff 	. . . 
	call 09305h		;2625	cd 05 93 	. . . 
	dec ix		;2628	dd 2b 	. + 
	call 0ff88h		;262a	cd 88 ff 	. . . 
	ld (iy+001h),00dh		;262d	fd 36 01 0d 	. 6 . . 
	ld hl,079d9h		;2631	21 d9 79 	! . y 
	set 1,(hl)		;2634	cb ce 	. . 
	ld a,(079dah)		;2636	3a da 79 	: . y 
	and 0c0h		;2639	e6 c0 	. . 
	or 002h		;263b	f6 02 	. . 
	ld (079dah),a		;263d	32 da 79 	2 . y 
	call 0a6fch		;2640	cd fc a6 	. . . 
l2643h:
	ld hl,07903h		;2643	21 03 79 	! . y 
	set 1,(hl)		;2646	cb ce 	. . 
	ld hl,07901h		;2648	21 01 79 	! . y 
	res 0,(hl)		;264b	cb 86 	. . 
	call 0854dh		;264d	cd 4d 85 	. M . 
	ret			;2650	c9 	. 
	ld b,l			;2651	45 	E 
	ld d,d			;2652	52 	R 
	ld d,d			;2653	52 	R 
	ld c,a			;2654	4f 	O 
	ld d,d			;2655	52 	R 
	jr nz,$+34		;2656	20 20 	    
	ld c,c			;2658	49 	I 
	ld c,(hl)			;2659	4e 	N 
	jr nz,$-49		;265a	20 cd 	  . 
	or l			;265c	b5 	. 
	and (hl)			;265d	a6 	. 
	ld (07f38h),ix		;265e	dd 22 38 7f 	. " 8  
	ld de,07f10h		;2662	11 10 7f 	. .  
	ld hl,0a651h		;2665	21 51 a6 	! Q . 
	ld bc,l0006h		;2668	01 06 00 	. . . 
	ldir		;266b	ed b0 	. . 
	call 0a699h		;266d	cd 99 a6 	. . . 
	ld hl,07f10h		;2670	21 10 7f 	! .  
	push hl			;2673	e5 	. 
	ld a,(07965h)		;2674	3a 65 79 	: e y 
	and 0e1h		;2677	e6 e1 	. . 
	ld (07965h),a		;2679	32 65 79 	2 e y 
	call 0a72eh		;267c	cd 2e a7 	. . . 
	ld e,017h		;267f	1e 17 	. . 
	ld (07922h),de		;2681	ed 53 22 79 	. S " y 
	ld e,000h		;2685	1e 00 	. . 
	ld b,018h		;2687	06 18 	. . 
	pop hl			;2689	e1 	. 
	call 084cdh		;268a	cd cd 84 	. . . 
	ld a,(079dah)		;268d	3a da 79 	: . y 
	and 0fah		;2690	e6 fa 	. . 
	or 002h		;2692	f6 02 	. . 
	ld (079dah),a		;2694	32 da 79 	2 . y 
	jr l2643h		;2697	18 aa 	. . 
	ld a,(07f34h)		;2699	3a 34 7f 	: 4  
	ld b,a			;269c	47 	G 
	rra			;269d	1f 	. 
	rra			;269e	1f 	. 
	rra			;269f	1f 	. 
	rra			;26a0	1f 	. 
	and 00fh		;26a1	e6 0f 	. . 
	or 030h		;26a3	f6 30 	. 0 
	cp 030h		;26a5	fe 30 	. 0 
	jr nz,l26abh		;26a7	20 02 	  . 
	ld a,020h		;26a9	3e 20 	>   
l26abh:
	ld (de),a			;26ab	12 	. 
	inc de			;26ac	13 	. 
	ld a,b			;26ad	78 	x 
	and 00fh		;26ae	e6 0f 	. . 
	or 030h		;26b0	f6 30 	. 0 
	ld (de),a			;26b2	12 	. 
	inc de			;26b3	13 	. 
	ret			;26b4	c9 	. 
	ld hl,07f10h		;26b5	21 10 7f 	! .  
	ld a,020h		;26b8	3e 20 	>   
	ld b,018h		;26ba	06 18 	. . 
l26bch:
	ld (hl),a			;26bc	77 	w 
	inc hl			;26bd	23 	# 
	djnz l26bch		;26be	10 fc 	. . 
	ret			;26c0	c9 	. 
	ld hl,07f35h		;26c1	21 35 7f 	! 5  
	bit 4,(hl)		;26c4	cb 66 	. f 
	ret z			;26c6	c8 	. 
	bit 0,(hl)		;26c7	cb 46 	. F 
	ret nz			;26c9	c0 	. 
l26cah:
	set 0,(hl)		;26ca	cb c6 	. . 
	call 0ae13h		;26cc	cd 13 ae 	. . . 
	ld a,(079dah)		;26cf	3a da 79 	: . y 
	and 0ddh		;26d2	e6 dd 	. . 
	or 010h		;26d4	f6 10 	. . 
	ld (079dah),a		;26d6	32 da 79 	2 . y 
	ld de,07d00h		;26d9	11 00 7d 	. . } 
	ld hl,0a6f3h		;26dc	21 f3 a6 	! . . 
	ld bc,l0009h		;26df	01 09 00 	. . . 
	ldir		;26e2	ed b0 	. . 
	dec de			;26e4	1b 	. 
	push de			;26e5	d5 	. 
	pop iy		;26e6	fd e1 	. . 
	call 0a73dh		;26e8	cd 3d a7 	. = . 
	ld (iy+001h),00dh		;26eb	fd 36 01 0d 	. 6 . . 
	call 0a6fch		;26ef	cd fc a6 	. . . 
	ret			;26f2	c9 	. 
	ld b,d			;26f3	42 	B 
	ld d,d			;26f4	52 	R 
	ld b,l			;26f5	45 	E 
	ld b,c			;26f6	41 	A 
	ld c,e			;26f7	4b 	K 
	jr nz,l2743h		;26f8	20 49 	  I 
	ld c,(hl)			;26fa	4e 	N 
	jr nz,l26cah		;26fb	20 cd 	  . 
	ld l,0a7h		;26fd	2e a7 	. . 
	ld e,000h		;26ff	1e 00 	. . 
	ld (07922h),de		;2701	ed 53 22 79 	. S " y 
	ld a,010h		;2705	3e 10 	> . 
	ld (07f08h),a		;2707	32 08 7f 	2 .  
	ld hl,07965h		;270a	21 65 79 	! e y 
	res 2,(hl)		;270d	cb 96 	. . 
	ld hl,07d00h		;270f	21 00 7d 	! . } 
	ld a,00dh		;2712	3e 0d 	> . 
	ld bc,l0018h		;2714	01 18 00 	. . . 
	cpir		;2717	ed b1 	. . 
	jr z,l271dh		;2719	28 02 	( . 
	ld l,018h		;271b	2e 18 	. . 
l271dh:
	ld b,l			;271d	45 	E 
	ld de,(07922h)		;271e	ed 5b 22 79 	. [ " y 
	dec l			;2722	2d 	- 
	ld a,l			;2723	7d 	} 
	ld (07922h),a		;2724	32 22 79 	2 " y 
	ld hl,07d00h		;2727	21 00 7d 	! . } 
	call 084cdh		;272a	cd cd 84 	. . . 
	ret			;272d	c9 	. 
	ld a,(07923h)		;272e	3a 23 79 	: # y 
	inc a			;2731	3c 	< 
	cp 004h		;2732	fe 04 	. . 
	jr c,l273bh		;2734	38 05 	8 . 
	call 084f7h		;2736	cd f7 84 	. . . 
	ld a,003h		;2739	3e 03 	> . 
l273bh:
	ld d,a			;273b	57 	W 
	ret			;273c	c9 	. 
	ld hl,(07aa0h)		;273d	2a a0 7a 	* . z 
	ld (07f3ah),hl		;2740	22 3a 7f 	" :  
l2743h:
	call 0930fh		;2743	cd 0f 93 	. . . 
	call 0ff94h		;2746	cd 94 ff 	. . . 
	call 09305h		;2749	cd 05 93 	. . . 
	dec ix		;274c	dd 2b 	. + 
	call 0ff88h		;274e	cd 88 ff 	. . . 
	ret			;2751	c9 	. 
	call 080d8h		;2752	cd d8 80 	. . . 
	call 0842ah		;2755	cd 2a 84 	. * . 
	jr nc,l278ah		;2758	30 30 	0 0 
	ld hl,07f18h		;275a	21 18 7f 	! .  
	ld de,079a0h		;275d	11 a0 79 	. . y 
	ld bc,l0008h		;2760	01 08 00 	. . . 
	ldir		;2763	ed b0 	. . 
	call 080d8h		;2765	cd d8 80 	. . . 
	ld hl,079d8h		;2768	21 d8 79 	! . y 
	bit 4,(hl)		;276b	cb 66 	. f 
	jr z,l278ah		;276d	28 1b 	( . 
	call 083b4h		;276f	cd b4 83 	. . . 
	call 0930fh		;2772	cd 0f 93 	. . . 
	call 0ff1fh		;2775	cd 1f ff 	. . . 
	call 09305h		;2778	cd 05 93 	. . . 
	call 083b4h		;277b	cd b4 83 	. . . 
	call 080d8h		;277e	cd d8 80 	. . . 
	ld hl,079a0h		;2781	21 a0 79 	! . y 
	ld de,07f10h		;2784	11 10 7f 	. .  
	call 0a79ch		;2787	cd 9c a7 	. . . 
l278ah:
	ld hl,07f18h		;278a	21 18 7f 	! .  
	ld de,079c8h		;278d	11 c8 79 	. . y 
	ld bc,l0008h		;2790	01 08 00 	. . . 
	ldir		;2793	ed b0 	. . 
	ret			;2795	c9 	. 
	ld hl,079c8h		;2796	21 c8 79 	! . y 
	ld de,07f10h		;2799	11 10 7f 	. .  
	ld bc,l0008h		;279c	01 08 00 	. . . 
	ld a,(de)			;279f	1a 	. 
	ldi		;27a0	ed a0 	. . 
	dec hl			;27a2	2b 	+ 
	ld (hl),a			;27a3	77 	w 
	inc hl			;27a4	23 	# 
	jp pe,0a79fh		;27a5	ea 9f a7 	. . . 
	ret			;27a8	c9 	. 
	call 0930fh		;27a9	cd 0f 93 	. . . 
	call 0fff7h		;27ac	cd f7 ff 	. . . 
	call 09305h		;27af	cd 05 93 	. . . 
	ld a,002h		;27b2	3e 02 	> . 
	ld (07f33h),a		;27b4	32 33 7f 	2 3  
	xor a			;27b7	af 	. 
	ld (079e7h),a		;27b8	32 e7 79 	2 . y 
	ld hl,079dfh		;27bb	21 df 79 	! . y 
	res 0,(hl)		;27be	cb 86 	. . 
	set 1,(hl)		;27c0	cb ce 	. . 
	call 0930fh		;27c2	cd 0f 93 	. . . 
	call 0fff4h		;27c5	cd f4 ff 	. . . 
	call 09305h		;27c8	cd 05 93 	. . . 
	ld hl,079dfh		;27cb	21 df 79 	! . y 
	res 1,(hl)		;27ce	cb 8e 	. . 
	ld hl,(079d2h)		;27d0	2a d2 79 	* . y 
	ld (079f8h),hl		;27d3	22 f8 79 	" . y 
	ld hl,(079d4h)		;27d6	2a d4 79 	* . y 
	ld (079fah),hl		;27d9	22 fa 79 	" . y 
	ret			;27dc	c9 	. 
	ld a,020h		;27dd	3e 20 	>   
	ld b,060h		;27df	06 60 	. ` 
	ld de,l0000h		;27e1	11 00 00 	. . . 
	call 086b3h		;27e4	cd b3 86 	. . . 
	ld a,0ffh		;27e7	3e ff 	> . 
	ld (07923h),a		;27e9	32 23 79 	2 # y 
	call 0a7f4h		;27ec	cd f4 a7 	. . . 
	ret			;27ef	c9 	. 
	ld a,03ch		;27f0	3e 3c 	> < 
	jr l27f6h		;27f2	18 02 	. . 
	ld a,03eh		;27f4	3e 3e 	> > 
l27f6h:
	push af			;27f6	f5 	. 
	ld a,(079dah)		;27f7	3a da 79 	: . y 
	and 080h		;27fa	e6 80 	. . 
	ld (079dah),a		;27fc	32 da 79 	2 . y 
	ld a,(07965h)		;27ff	3a 65 79 	: e y 
	and 0e1h		;2802	e6 e1 	. . 
	ld (07965h),a		;2804	32 65 79 	2 e y 
	ld bc,l00ffh		;2807	01 ff 00 	. . . 
	ld hl,07c00h		;280a	21 00 7c 	! . | 
	ld de,07c01h		;280d	11 01 7c 	. . | 
	ld (hl),00dh		;2810	36 0d 	6 . 
	ldir		;2812	ed b0 	. . 
	ld hl,07913h		;2814	21 13 79 	! . y 
	ld (hl),000h		;2817	36 00 	6 . 
	ld b,00ch		;2819	06 0c 	. . 
	ld a,0ffh		;281b	3e ff 	> . 
l281dh:
	inc hl			;281d	23 	# 
	ld (hl),a			;281e	77 	w 
	djnz l281dh		;281f	10 fc 	. . 
	xor a			;2821	af 	. 
	ld hl,l0000h		;2822	21 00 00 	! . . 
	ld (07924h),a		;2825	32 24 79 	2 $ y 
	ld (07925h),a		;2828	32 25 79 	2 % y 
	ld (07929h),hl		;282b	22 29 79 	" ) y 
	ld (07927h),a		;282e	32 27 79 	2 ' y 
	ld (07928h),a		;2831	32 28 79 	2 ( y 
	ld (07922h),a		;2834	32 22 79 	2 " y 
	call 0a72eh		;2837	cd 2e a7 	. . . 
	ld a,d			;283a	7a 	z 
	ld (07923h),a		;283b	32 23 79 	2 # y 
	ld h,a			;283e	67 	g 
	ld l,000h		;283f	2e 00 	. . 
	ld (07920h),hl		;2841	22 20 79 	"   y 
	ld (0792bh),hl		;2844	22 2b 79 	" + y 
	ex de,hl			;2847	eb 	. 
	pop af			;2848	f1 	. 
	call 08468h		;2849	cd 68 84 	. h . 
	ld a,0ffh		;284c	3e ff 	> . 
	ld (07926h),a		;284e	32 26 79 	2 & y 
	ld hl,0796eh		;2851	21 6e 79 	! n y 
	res 0,(hl)		;2854	cb 86 	. . 
	xor a			;2856	af 	. 
	ld (0790bh),a		;2857	32 0b 79 	2 . y 
	ret			;285a	c9 	. 
	call 0842ah		;285b	cd 2a 84 	. * . 
	jr nc,l28d3h		;285e	30 73 	0 s 
	ld hl,07964h		;2860	21 64 79 	! d y 
	bit 0,(hl)		;2863	cb 46 	. F 
	jr z,l286bh		;2865	28 04 	( . 
	call 0a937h		;2867	cd 37 a9 	. 7 . 
	ret c			;286a	d8 	. 
l286bh:
	ld hl,07a60h		;286b	21 60 7a 	! ` z 
	ld a,020h		;286e	3e 20 	>   
	ld b,018h		;2870	06 18 	. . 
l2872h:
	ld (hl),a			;2872	77 	w 
	inc hl			;2873	23 	# 
	djnz l2872h		;2874	10 fc 	. . 
	ld a,(07f33h)		;2876	3a 33 7f 	: 3  
	and 0f8h		;2879	e6 f8 	. . 
	or 080h		;287b	f6 80 	. . 
	ld (07f33h),a		;287d	32 33 7f 	2 3  
	xor a			;2880	af 	. 
	ld (079e7h),a		;2881	32 e7 79 	2 . y 
	ld hl,079dfh		;2884	21 df 79 	! . y 
	res 1,(hl)		;2887	cb 8e 	. . 
	call 0930fh		;2889	cd 0f 93 	. . . 
	call 0fff4h		;288c	cd f4 ff 	. . . 
	call 09305h		;288f	cd 05 93 	. . . 
	ret c			;2892	d8 	. 
	ld hl,07a60h		;2893	21 60 7a 	! ` z 
	ld de,07f10h		;2896	11 10 7f 	. .  
	ld bc,l0018h		;2899	01 18 00 	. . . 
	ldir		;289c	ed b0 	. . 
	ld hl,07904h		;289e	21 04 79 	! . y 
	bit 6,(hl)		;28a1	cb 76 	. v 
	jr z,l28a9h		;28a3	28 04 	( . 
	call 0ffd0h		;28a5	cd d0 ff 	. . . 
	ret c			;28a8	d8 	. 
l28a9h:
	ld a,(079dah)		;28a9	3a da 79 	: . y 
	rra			;28ac	1f 	. 
	ret nc			;28ad	d0 	. 
	ld (07f38h),ix		;28ae	dd 22 38 7f 	. " 8  
	call 0a72eh		;28b2	cd 2e a7 	. . . 
	ld e,017h		;28b5	1e 17 	. . 
	ld (07922h),de		;28b7	ed 53 22 79 	. S " y 
	ld e,000h		;28bb	1e 00 	. . 
	ld b,018h		;28bd	06 18 	. . 
	ld hl,07f10h		;28bf	21 10 7f 	! .  
	call 084cdh		;28c2	cd cd 84 	. . . 
l28c5h:
	ld ix,(07f38h)		;28c5	dd 2a 38 7f 	. * 8  
	ld a,(07964h)		;28c9	3a 64 79 	: d y 
	rra			;28cc	1f 	. 
	ret nc			;28cd	d0 	. 
	call 0a9c3h		;28ce	cd c3 a9 	. . . 
	xor a			;28d1	af 	. 
	ret			;28d2	c9 	. 
l28d3h:
	ld (07f38h),ix		;28d3	dd 22 38 7f 	. " 8  
	call 0a9dah		;28d7	cd da a9 	. . . 
	inc ix		;28da	dd 23 	. # 
	ld a,(ix+000h)		;28dc	dd 7e 00 	. ~ . 
	push af			;28df	f5 	. 
	ld (ix+000h),00dh		;28e0	dd 36 00 0d 	. 6 . . 
	ld hl,07904h		;28e4	21 04 79 	! . y 
	bit 6,(hl)		;28e7	cb 76 	. v 
	jr z,l2902h		;28e9	28 17 	( . 
	ld a,010h		;28eb	3e 10 	> . 
	ld (07f08h),a		;28ed	32 08 7f 	2 .  
	ld ix,(079cdh)		;28f0	dd 2a cd 79 	. * . y 
	dec ix		;28f4	dd 2b 	. + 
	call 0ffc7h		;28f6	cd c7 ff 	. . . 
	jr c,l2932h		;28f9	38 37 	8 7 
	ld hl,07f35h		;28fb	21 35 7f 	! 5  
	bit 5,(hl)		;28fe	cb 6e 	. n 
	jr nz,l2929h		;2900	20 27 	  ' 
l2902h:
	ld a,(079dah)		;2902	3a da 79 	: . y 
	rra			;2905	1f 	. 
	jr nc,l2929h		;2906	30 21 	0 ! 
	ld hl,07965h		;2908	21 65 79 	! e y 
	res 2,(hl)		;290b	cb 96 	. . 
	call 0a72eh		;290d	cd 2e a7 	. . . 
	ld e,000h		;2910	1e 00 	. . 
	ld hl,(079cdh)		;2912	2a cd 79 	* . y 
	ld a,(079cfh)		;2915	3a cf 79 	: . y 
	and a			;2918	a7 	. 
	jr z,l2934h		;2919	28 19 	( . 
	cp 061h		;291b	fe 61 	. a 
	jr c,l2921h		;291d	38 02 	8 . 
	ld a,060h		;291f	3e 60 	> ` 
l2921h:
	ld b,a			;2921	47 	G 
	call 084cdh		;2922	cd cd 84 	. . . 
	ld (07922h),de		;2925	ed 53 22 79 	. S " y 
l2929h:
	call 0a9dah		;2929	cd da a9 	. . . 
	pop de			;292c	d1 	. 
	ld (ix+001h),d		;292d	dd 72 01 	. r . 
	jr l28c5h		;2930	18 93 	. . 
l2932h:
	pop de			;2932	d1 	. 
	ret			;2933	c9 	. 
l2934h:
	inc a			;2934	3c 	< 
	jr l2921h		;2935	18 ea 	. . 
	ld a,(079dfh)		;2937	3a df 79 	: . y 
	rra			;293a	1f 	. 
	jr c,l2998h		;293b	38 5b 	8 [ 
	ld hl,07964h		;293d	21 64 79 	! d y 
	res 5,(hl)		;2940	cb ae 	. . 
	ld a,(07f10h)		;2942	3a 10 7f 	: .  
	cp 000h		;2945	fe 00 	. . 
	jr z,l298fh		;2947	28 46 	( F 
	and 0f0h		;2949	e6 f0 	. . 
	cp 090h		;294b	fe 90 	. . 
	jr nz,l2998h		;294d	20 49 	  I 
	ld a,(07f10h)		;294f	3a 10 7f 	: .  
	cp 099h		;2952	fe 99 	. . 
	jr nz,l298ah		;2954	20 34 	  4 
	call 0a9cch		;2956	cd cc a9 	. . . 
	ld b,a			;2959	47 	G 
	ld a,015h		;295a	3e 15 	> . 
	sub b			;295c	90 	. 
	cp 00bh		;295d	fe 0b 	. . 
	jr c,l29abh		;295f	38 4a 	8 J 
	jr nz,l298ah		;2961	20 27 	  ' 
	ld a,(07f12h)		;2963	3a 12 7f 	: .  
	cp 050h		;2966	fe 50 	. P 
	jr c,l298ah		;2968	38 20 	8   
l296ah:
	ld hl,07f17h		;296a	21 17 7f 	! .  
	xor a			;296d	af 	. 
	ld b,005h		;296e	06 05 	. . 
l2970h:
	ld (hl),a			;2970	77 	w 
	dec hl			;2971	2b 	+ 
	djnz l2970h		;2972	10 fc 	. . 
	ld (hl),010h		;2974	36 10 	6 . 
	dec hl			;2976	2b 	+ 
	ld a,010h		;2977	3e 10 	> . 
	add a,(hl)			;2979	86 	. 
	daa			;297a	27 	' 
	ld (hl),a			;297b	77 	w 
	dec hl			;297c	2b 	+ 
	ld a,(hl)			;297d	7e 	~ 
	adc a,000h		;297e	ce 00 	. . 
	daa			;2980	27 	' 
	ld (hl),a			;2981	77 	w 
	cp 010h		;2982	fe 10 	. . 
	jr nz,l29b6h		;2984	20 30 	  0 
	call 0834ah		;2986	cd 4a 83 	. J . 
	ret			;2989	c9 	. 
l298ah:
	call 08029h		;298a	cd 29 80 	. ) . 
	jr l29b6h		;298d	18 27 	. ' 
l298fh:
	call 0a9cch		;298f	cd cc a9 	. . . 
	cp 00bh		;2992	fe 0b 	. . 
	jr c,l29a7h		;2994	38 11 	8 . 
	jr l29b6h		;2996	18 1e 	. . 
l2998h:
	ld hl,07964h		;2998	21 64 79 	! d y 
	set 5,(hl)		;299b	cb ee 	. . 
	ld hl,079f8h		;299d	21 f8 79 	! . y 
	set 3,(hl)		;29a0	cb de 	. . 
	inc hl			;29a2	23 	# 
	ld (hl),002h		;29a3	36 02 	6 . 
	inc hl			;29a5	23 	# 
	ld a,(hl)			;29a6	7e 	~ 
l29a7h:
	ld b,a			;29a7	47 	G 
	ld a,00bh		;29a8	3e 0b 	> . 
	sub b			;29aa	90 	. 
l29abh:
	call 0930fh		;29ab	cd 0f 93 	. . . 
	call 0ff37h		;29ae	cd 37 ff 	. 7 . 
	call 09305h		;29b1	cd 05 93 	. . . 
	jr c,l296ah		;29b4	38 b4 	8 . 
l29b6h:
	ld hl,07f10h		;29b6	21 10 7f 	! .  
	ld de,07988h		;29b9	11 88 79 	. . y 
	ld bc,l0008h		;29bc	01 08 00 	. . . 
	ldir		;29bf	ed b0 	. . 
	and a			;29c1	a7 	. 
	ret			;29c2	c9 	. 
	ld hl,079f8h		;29c3	21 f8 79 	! . y 
	res 3,(hl)		;29c6	cb 9e 	. . 
	inc hl			;29c8	23 	# 
	ld (hl),00bh		;29c9	36 0b 	6 . 
	ret			;29cb	c9 	. 
	ld a,(07f11h)		;29cc	3a 11 7f 	: .  
	and 0f0h		;29cf	e6 f0 	. . 
	rrca			;29d1	0f 	. 
	rrca			;29d2	0f 	. 
	rrca			;29d3	0f 	. 
	rrca			;29d4	0f 	. 
	ld hl,079fah		;29d5	21 fa 79 	! . y 
	add a,(hl)			;29d8	86 	. 
	ret			;29d9	c9 	. 
	ld ix,(079cdh)		;29da	dd 2a cd 79 	. * . y 
	dec ix		;29de	dd 2b 	. + 
	ld a,(079cfh)		;29e0	3a cf 79 	: . y 
	ld b,000h		;29e3	06 00 	. . 
	ld c,a			;29e5	4f 	O 
	add ix,bc		;29e6	dd 09 	. . 
	ret			;29e8	c9 	. 
l29e9h:
	call 0a7ddh		;29e9	cd dd a7 	. . . 
	ld hl,079dfh		;29ec	21 df 79 	! . y 
	res 0,(hl)		;29ef	cb 86 	. . 
	ret			;29f1	c9 	. 
	ld a,(079d7h)		;29f2	3a d7 79 	: . y 
	and 0cah		;29f5	e6 ca 	. . 
	ld (079d7h),a		;29f7	32 d7 79 	2 . y 
	ld a,(07f33h)		;29fa	3a 33 7f 	: 3  
	and 08fh		;29fd	e6 8f 	. . 
	ld (07f33h),a		;29ff	32 33 7f 	2 3  
	ld a,(07f35h)		;2a02	3a 35 7f 	: 5  
	bit 4,a		;2a05	cb 67 	. g 
	jr z,l29e9h		;2a07	28 e0 	( . 
	bit 0,a		;2a09	cb 47 	. G 
	jr nz,l29e9h		;2a0b	20 dc 	  . 
	and 006h		;2a0d	e6 06 	. . 
	jr z,l29e9h		;2a0f	28 d8 	( . 
	ld h,07ch		;2a11	26 7c 	& | 
	ld a,(07927h)		;2a13	3a 27 79 	: ' y 
	ld l,a			;2a16	6f 	o 
	ld a,(07925h)		;2a17	3a 25 79 	: % y 
	sub l			;2a1a	95 	. 
	inc a			;2a1b	3c 	< 
	ld b,a			;2a1c	47 	G 
	ld a,00dh		;2a1d	3e 0d 	> . 
l2a1fh:
	ld (hl),a			;2a1f	77 	w 
	inc hl			;2a20	23 	# 
	djnz l2a1fh		;2a21	10 fc 	. . 
	ld a,(07927h)		;2a23	3a 27 79 	: ' y 
	ld (07924h),a		;2a26	32 24 79 	2 $ y 
	ld (07925h),a		;2a29	32 25 79 	2 % y 
	call 0b733h		;2a2c	cd 33 b7 	. 3 . 
	call 0b75bh		;2a2f	cd 5b b7 	. [ . 
	dec hl			;2a32	2b 	+ 
	ld h,(hl)			;2a33	66 	f 
	ld a,l			;2a34	7d 	} 
	sub 013h		;2a35	d6 13 	. . 
	ld l,a			;2a37	6f 	o 
	ld a,(07925h)		;2a38	3a 25 79 	: % y 
	sub h			;2a3b	94 	. 
	ld h,a			;2a3c	67 	g 
	ld (07929h),hl		;2a3d	22 29 79 	" ) y 
	ld a,(07927h)		;2a40	3a 27 79 	: ' y 
	cp 000h		;2a43	fe 00 	. . 
	jr nz,l2a62h		;2a45	20 1b 	  . 
	ld de,(0792bh)		;2a47	ed 5b 2b 79 	. [ + y 
	ld a,03fh		;2a4b	3e 3f 	> ? 
	call 08468h		;2a4d	cd 68 84 	. h . 
	xor a			;2a50	af 	. 
	ld (07928h),a		;2a51	32 28 79 	2 ( y 
	ld a,(079dah)		;2a54	3a da 79 	: . y 
	and 0c0h		;2a57	e6 c0 	. . 
	ld (079dah),a		;2a59	32 da 79 	2 . y 
	ld de,(0792bh)		;2a5c	ed 5b 2b 79 	. [ + y 
	jr l2a9dh		;2a60	18 3b 	. ; 
l2a62h:
	inc a			;2a62	3c 	< 
	ld b,a			;2a63	47 	G 
	ld de,(0792bh)		;2a64	ed 5b 2b 79 	. [ + y 
	ld hl,07c00h		;2a68	21 00 7c 	! . | 
	call 084cdh		;2a6b	cd cd 84 	. . . 
	ld a,(0792ch)		;2a6e	3a 2c 79 	: , y 
	sub c			;2a71	91 	. 
	jr nc,l2a75h		;2a72	30 01 	0 . 
	xor a			;2a74	af 	. 
l2a75h:
	ld (0792ch),a		;2a75	32 2c 79 	2 , y 
	push de			;2a78	d5 	. 
	ld a,05fh		;2a79	3e 5f 	> _ 
	call 08468h		;2a7b	cd 68 84 	. h . 
	ld b,000h		;2a7e	06 00 	. . 
	ld a,(07927h)		;2a80	3a 27 79 	: ' y 
	inc a			;2a83	3c 	< 
	ld hl,07917h		;2a84	21 17 79 	! . y 
l2a87h:
	cp (hl)			;2a87	be 	. 
	jr c,l2a8eh		;2a88	38 04 	8 . 
	inc b			;2a8a	04 	. 
	inc hl			;2a8b	23 	# 
	jr l2a87h		;2a8c	18 f9 	. . 
l2a8eh:
	ld a,b			;2a8e	78 	x 
	ld (07928h),a		;2a8f	32 28 79 	2 ( y 
	ld a,(079dah)		;2a92	3a da 79 	: . y 
	and 0c0h		;2a95	e6 c0 	. . 
	or 020h		;2a97	f6 20 	.   
	ld (079dah),a		;2a99	32 da 79 	2 . y 
	pop de			;2a9c	d1 	. 
l2a9dh:
	ld hl,07965h		;2a9d	21 65 79 	! e y 
	res 2,(hl)		;2aa0	cb 96 	. . 
	ld (07920h),de		;2aa2	ed 53 20 79 	. S   y 
	ld hl,(07922h)		;2aa6	2a 22 79 	* " y 
	ld (07922h),de		;2aa9	ed 53 22 79 	. S " y 
	ld a,h			;2aad	7c 	| 
	sub d			;2aae	92 	. 
	ret c			;2aaf	d8 	. 
	jr nz,l2ac7h		;2ab0	20 15 	  . 
	ld a,l			;2ab2	7d 	} 
	sub e			;2ab3	93 	. 
	ret z			;2ab4	c8 	. 
	ccf			;2ab5	3f 	? 
	ret nc			;2ab6	d0 	. 
l2ab7h:
	ld b,a			;2ab7	47 	G 
	inc e			;2ab8	1c 	. 
	ld a,017h		;2ab9	3e 17 	> . 
	cp e			;2abb	bb 	. 
	jr nc,l2ac1h		;2abc	30 03 	0 . 
	ld e,000h		;2abe	1e 00 	. . 
	inc d			;2ac0	14 	. 
l2ac1h:
	ld a,020h		;2ac1	3e 20 	>   
	call 086b3h		;2ac3	cd b3 86 	. . . 
	ret			;2ac6	c9 	. 
l2ac7h:
	ld b,a			;2ac7	47 	G 
	ld a,0e8h		;2ac8	3e e8 	> . 
l2acah:
	add a,018h		;2aca	c6 18 	. . 
	djnz l2acah		;2acc	10 fc 	. . 
	ld b,a			;2ace	47 	G 
	ld a,018h		;2acf	3e 18 	> . 
	sub e			;2ad1	93 	. 
	add a,l			;2ad2	85 	. 
	add a,b			;2ad3	80 	. 
	jr l2ab7h		;2ad4	18 e1 	. . 
	ld hl,(07aa0h)		;2ad6	2a a0 7a 	* . z 
	ld (07f3ah),hl		;2ad9	22 3a 7f 	" :  
	ld hl,079d9h		;2adc	21 d9 79 	! . y 
	set 3,(hl)		;2adf	cb de 	. . 
	ld a,(079dah)		;2ae1	3a da 79 	: . y 
	and 0c0h		;2ae4	e6 c0 	. . 
	or 024h		;2ae6	f6 24 	. $ 
	ld (079dah),a		;2ae8	32 da 79 	2 . y 
	call 09c20h		;2aeb	cd 20 9c 	.   . 
	call 0930fh		;2aee	cd 0f 93 	. . . 
	call 0ff94h		;2af1	cd 94 ff 	. . . 
	call 09305h		;2af4	cd 05 93 	. . . 
	ld de,(07f3ah)		;2af7	ed 5b 3a 7f 	. [ :  
	push ix		;2afb	dd e5 	. . 
	pop hl			;2afd	e1 	. 
	inc hl			;2afe	23 	# 
	inc hl			;2aff	23 	# 
sub_2b00h:
	inc hl			;2b00	23 	# 
	call 0ad9eh		;2b01	cd 9e ad 	. . . 
	ld (079eah),a		;2b04	32 ea 79 	2 . y 
	ld (07f3ah),ix		;2b07	dd 22 3a 7f 	. " :  
	call 0ffa0h		;2b0b	cd a0 ff 	. . . 
	ld hl,(07f04h)		;2b0e	2a 04 7f 	* .  
	ld (07922h),hl		;2b11	22 22 79 	" " y 
	ld a,(07924h)		;2b14	3a 24 79 	: $ y 
	ld l,a			;2b17	6f 	o 
	ld h,07ch		;2b18	26 7c 	& | 
	ld a,(hl)			;2b1a	7e 	~ 
	ld (079e8h),a		;2b1b	32 e8 79 	2 . y 
	ld de,(07920h)		;2b1e	ed 5b 20 79 	. [   y 
	ld hl,07965h		;2b22	21 65 79 	! e y 
	cp 00dh		;2b25	fe 0d 	. . 
	jr z,l2b33h		;2b27	28 0a 	( . 
	set 4,(hl)		;2b29	cb e6 	. . 
	set 2,(hl)		;2b2b	cb d6 	. . 
	ld a,0f7h		;2b2d	3e f7 	> . 
l2b2fh:
	call 08468h		;2b2f	cd 68 84 	. h . 
	ret			;2b32	c9 	. 
l2b33h:
	res 2,(hl)		;2b33	cb 96 	. . 
	ld a,05fh		;2b35	3e 5f 	> _ 
	jr l2b2fh		;2b37	18 f6 	. . 
	ld hl,07bffh		;2b39	21 ff 7b 	! . { 
	ld b,000h		;2b3c	06 00 	. . 
	ld a,03ah		;2b3e	3e 3a 	> : 
l2b40h:
	inc b			;2b40	04 	. 
	inc hl			;2b41	23 	# 
	cp (hl)			;2b42	be 	. 
	jr nz,l2b40h		;2b43	20 fb 	  . 
	ld hl,07c00h		;2b45	21 00 7c 	! . | 
	ld de,l0000h		;2b48	11 00 00 	. . . 
	call 084cdh		;2b4b	cd cd 84 	. . . 
	ret			;2b4e	c9 	. 
	ld hl,07bffh		;2b4f	21 ff 7b 	! . { 
	ld e,0ffh		;2b52	1e ff 	. . 
	ld a,03ah		;2b54	3e 3a 	> : 
l2b56h:
	inc e			;2b56	1c 	. 
	inc hl			;2b57	23 	# 
	cp (hl)			;2b58	be 	. 
	jr nz,l2b56h		;2b59	20 fb 	  . 
	ld (hl),020h		;2b5b	36 20 	6   
	ld a,(07928h)		;2b5d	3a 28 79 	: ( y 
	cp 000h		;2b60	fe 00 	. . 
	ret nz			;2b62	c0 	. 
	ld d,000h		;2b63	16 00 	. . 
	ld a,020h		;2b65	3e 20 	>   
	call 08468h		;2b67	cd 68 84 	. h . 
	ret			;2b6a	c9 	. 
	ld (07f38h),ix		;2b6b	dd 22 38 7f 	. " 8  
	ld (079b5h),ix		;2b6f	dd 22 b5 79 	. " . y 
	ld a,(07927h)		;2b73	3a 27 79 	: ' y 
	ld l,a			;2b76	6f 	o 
	ld h,07dh		;2b77	26 7d 	& } 
	dec hl			;2b79	2b 	+ 
	push hl			;2b7a	e5 	. 
	pop ix		;2b7b	dd e1 	. . 
	ld a,(ix+001h)		;2b7d	dd 7e 01 	. ~ . 
	cp 00dh		;2b80	fe 0d 	. . 
	jr nz,l2b92h		;2b82	20 0e 	  . 
	ld ix,(07f38h)		;2b84	dd 2a 38 7f 	. * 8  
	call 0930fh		;2b88	cd 0f 93 	. . . 
	call 0ff7ch		;2b8b	cd 7c ff 	. | . 
	call 09305h		;2b8e	cd 05 93 	. . . 
	ret			;2b91	c9 	. 
l2b92h:
	ld iy,(079eeh)		;2b92	fd 2a ee 79 	. * . y 
	ld hl,07f35h		;2b96	21 35 7f 	! 5  
	bit 2,(hl)		;2b99	cb 56 	. V 
	jr z,l2bd4h		;2b9b	28 37 	( 7 
	ld a,(079f0h)		;2b9d	3a f0 79 	: . y 
	ld b,a			;2ba0	47 	G 
	or a			;2ba1	b7 	. 
	jr nz,l2bach		;2ba2	20 08 	  . 
	inc iy		;2ba4	fd 23 	. # 
	ld (iy+000h),0f5h		;2ba6	fd 36 00 f5 	. 6 . . 
	ld b,007h		;2baa	06 07 	. . 
l2bach:
	push ix		;2bac	dd e5 	. . 
	pop hl			;2bae	e1 	. 
l2bafh:
	inc hl			;2baf	23 	# 
	ld a,(hl)			;2bb0	7e 	~ 
	cp 022h		;2bb1	fe 22 	. " 
	jr z,l2bceh		;2bb3	28 19 	( . 
	cp 00dh		;2bb5	fe 0d 	. . 
	jr z,l2bceh		;2bb7	28 15 	( . 
	inc iy		;2bb9	fd 23 	. # 
	ld (iy+000h),a		;2bbb	fd 77 00 	. w . 
	djnz l2bafh		;2bbe	10 ef 	. . 
l2bc0h:
	ld ix,(07f38h)		;2bc0	dd 2a 38 7f 	. * 8  
	ld a,(07f35h)		;2bc4	3a 35 7f 	: 5  
	and 0f1h		;2bc7	e6 f1 	. . 
	ld (07f35h),a		;2bc9	32 35 7f 	2 5  
	and a			;2bcc	a7 	. 
	ret			;2bcd	c9 	. 
l2bceh:
	ld (iy+001h),000h		;2bce	fd 36 01 00 	. 6 . . 
	jr l2bc0h		;2bd2	18 ec 	. . 
l2bd4h:
	call 0930fh		;2bd4	cd 0f 93 	. . . 
	call 0fffdh		;2bd7	cd fd ff 	. . . 
	call 09305h		;2bda	cd 05 93 	. . . 
	ret c			;2bdd	d8 	. 
	ld a,(ix+001h)		;2bde	dd 7e 01 	. ~ . 
	cp 00dh		;2be1	fe 0d 	. . 
	jr nz,l2bffh		;2be3	20 1a 	  . 
	ld a,(07f14h)		;2be5	3a 14 7f 	: .  
	cp 0d0h		;2be8	fe d0 	. . 
	jr nc,l2bffh		;2bea	30 13 	0 . 
	ld de,(079eeh)		;2bec	ed 5b ee 79 	. [ . y 
	inc de			;2bf0	13 	. 
	ld hl,07f10h		;2bf1	21 10 7f 	! .  
	ld bc,l0008h		;2bf4	01 08 00 	. . . 
	ldir		;2bf7	ed b0 	. . 
	ld ix,(079b5h)		;2bf9	dd 2a b5 79 	. * . y 
	and a			;2bfd	a7 	. 
	ret			;2bfe	c9 	. 
l2bffh:
	call 0838ch		;2bff	cd 8c 83 	. . . 
	ret			;2c02	c9 	. 
	ld hl,07f36h		;2c03	21 36 7f 	! 6  
	res 2,(hl)		;2c06	cb 96 	. . 
	xor a			;2c08	af 	. 
	ld (07964h),a		;2c09	32 64 79 	2 d y 
	ld hl,07980h		;2c0c	21 80 79 	! . y 
	ld b,008h		;2c0f	06 08 	. . 
l2c11h:
	ld (hl),a			;2c11	77 	w 
	inc hl			;2c12	23 	# 
	djnz l2c11h		;2c13	10 fc 	. . 
	call 0a7ddh		;2c15	cd dd a7 	. . . 
	ld a,(07901h)		;2c18	3a 01 79 	: . y 
	and 006h		;2c1b	e6 06 	. . 
	ld (07901h),a		;2c1d	32 01 79 	2 . y 
	ld a,(07902h)		;2c20	3a 02 79 	: . y 
	and 078h		;2c23	e6 78 	. x 
	ld (07902h),a		;2c25	32 02 79 	2 . y 
	ld a,(07903h)		;2c28	3a 03 79 	: . y 
	and 07dh		;2c2b	e6 7d 	. } 
	ld (07903h),a		;2c2d	32 03 79 	2 . y 
	ld a,(07904h)		;2c30	3a 04 79 	: . y 
	and 060h		;2c33	e6 60 	. ` 
	ld (07904h),a		;2c35	32 04 79 	2 . y 
	call 0854dh		;2c38	cd 4d 85 	. M . 
	ld a,(07f35h)		;2c3b	3a 35 7f 	: 5  
	and 0c0h		;2c3e	e6 c0 	. . 
	ld (07f35h),a		;2c40	32 35 7f 	2 5  
	ld a,(07f37h)		;2c43	3a 37 7f 	: 7  
	and 03fh		;2c46	e6 3f 	. ? 
	ld (07f37h),a		;2c48	32 37 7f 	2 7  
	ld a,(07965h)		;2c4b	3a 65 79 	: e y 
	and 0e1h		;2c4e	e6 e1 	. . 
	ld (07965h),a		;2c50	32 65 79 	2 e y 
	xor a			;2c53	af 	. 
	ld (0797dh),a		;2c54	32 7d 79 	2 } y 
	ld (07931h),a		;2c57	32 31 79 	2 1 y 
	ld a,(079d7h)		;2c5a	3a d7 79 	: . y 
	and 0f3h		;2c5d	e6 f3 	. . 
	ld (079d7h),a		;2c5f	32 d7 79 	2 . y 
	ld a,(079d8h)		;2c62	3a d8 79 	: . y 
	and 0cah		;2c65	e6 ca 	. . 
	or 002h		;2c67	f6 02 	. . 
	ld (079d8h),a		;2c69	32 d8 79 	2 . y 
	ld hl,l0000h		;2c6c	21 00 00 	! . . 
	ld (079e5h),hl		;2c6f	22 e5 79 	" . y 
	ld a,(079d9h)		;2c72	3a d9 79 	: . y 
	and 0f9h		;2c75	e6 f9 	. . 
	ld (079d9h),a		;2c77	32 d9 79 	2 . y 
	ld hl,079dah		;2c7a	21 da 79 	! . y 
	res 6,(hl)		;2c7d	cb b6 	. . 
	call 0ac8ch		;2c7f	cd 8c ac 	. . . 
	ld hl,(079e1h)		;2c82	2a e1 79 	* . y 
	inc hl			;2c85	23 	# 
	inc hl			;2c86	23 	# 
	inc hl			;2c87	23 	# 
	ld (079feh),hl		;2c88	22 fe 79 	" . y 
	ret			;2c8b	c9 	. 
	ld hl,l0000h		;2c8c	21 00 00 	! . . 
	ld (079f8h),hl		;2c8f	22 f8 79 	" . y 
	ld (079fah),hl		;2c92	22 fa 79 	" . y 
	ret			;2c95	c9 	. 
	call 0a72eh		;2c96	cd 2e a7 	. . . 
	ld e,000h		;2c99	1e 00 	. . 
	push de			;2c9b	d5 	. 
	ld hl,0796eh		;2c9c	21 6e 79 	! n y 
	res 0,(hl)		;2c9f	cb 86 	. . 
	ld hl,07bffh		;2ca1	21 ff 7b 	! . { 
	call 09febh		;2ca4	cd eb 9f 	. . . 
	ld a,(079eah)		;2ca7	3a ea 79 	: . y 
	ld (07924h),a		;2caa	32 24 79 	2 $ y 
	jr l2cf2h		;2cad	18 43 	. C 
	call 0a72eh		;2caf	cd 2e a7 	. . . 
	ld e,000h		;2cb2	1e 00 	. . 
	push de			;2cb4	d5 	. 
	ld hl,07d00h		;2cb5	21 00 7d 	! . } 
	ld a,(079eah)		;2cb8	3a ea 79 	: . y 
	ld e,a			;2cbb	5f 	_ 
	ld d,h			;2cbc	54 	T 
	call 0ad9eh		;2cbd	cd 9e ad 	. . . 
	ld (079eah),a		;2cc0	32 ea 79 	2 . y 
	ld hl,0796eh		;2cc3	21 6e 79 	! n y 
	res 0,(hl)		;2cc6	cb 86 	. . 
	ld ix,07cffh		;2cc8	dd 21 ff 7c 	. ! . | 
	ld iy,07bffh		;2ccc	fd 21 ff 7b 	. ! . { 
	ld a,(07927h)		;2cd0	3a 27 79 	: ' y 
	cp 000h		;2cd3	fe 00 	. . 
	jr z,l2ce4h		;2cd5	28 0d 	( . 
	ld b,a			;2cd7	47 	G 
l2cd8h:
	inc ix		;2cd8	dd 23 	. # 
	inc iy		;2cda	fd 23 	. # 
	ld a,(ix+000h)		;2cdc	dd 7e 00 	. ~ . 
	ld (iy+000h),a		;2cdf	fd 77 00 	. w . 
	djnz l2cd8h		;2ce2	10 f4 	. . 
l2ce4h:
	call 0ff97h		;2ce4	cd 97 ff 	. . . 
	cp 0ffh		;2ce7	fe ff 	. . 
	jr nz,l2cech		;2ce9	20 01 	  . 
	dec a			;2ceb	3d 	= 
l2cech:
	ld (07924h),a		;2cec	32 24 79 	2 $ y 
	push iy		;2cef	fd e5 	. . 
	pop hl			;2cf1	e1 	. 
l2cf2h:
	ld a,l			;2cf2	7d 	} 
	ld (07925h),a		;2cf3	32 25 79 	2 % y 
	ld c,018h		;2cf6	0e 18 	. . 
	call 0ff91h		;2cf8	cd 91 ff 	. . . 
	call 0ff94h		;2cfb	cd 94 ff 	. . . 
	pop de			;2cfe	d1 	. 
	ld (0792bh),de		;2cff	ed 53 2b 79 	. S + y 
	ld a,(0792ah)		;2d03	3a 2a 79 	: * y 
	cp 004h		;2d06	fe 04 	. . 
	jr nc,l2d62h		;2d08	30 58 	0 X 
	xor a			;2d0a	af 	. 
	ld (07928h),a		;2d0b	32 28 79 	2 ( y 
	ld a,(07925h)		;2d0e	3a 25 79 	: % y 
	inc a			;2d11	3c 	< 
	and a			;2d12	a7 	. 
	jr z,l2d5fh		;2d13	28 4a 	( J 
l2d15h:
	cp 061h		;2d15	fe 61 	. a 
	jr c,l2d1bh		;2d17	38 02 	8 . 
	ld a,060h		;2d19	3e 60 	> ` 
l2d1bh:
	ld b,a			;2d1b	47 	G 
	ld hl,07c00h		;2d1c	21 00 7c 	! . | 
	call 084cdh		;2d1f	cd cd 84 	. . . 
	ld a,(0792ch)		;2d22	3a 2c 79 	: , y 
	sub c			;2d25	91 	. 
	ld (0792ch),a		;2d26	32 2c 79 	2 , y 
l2d29h:
	ld (07922h),de		;2d29	ed 53 22 79 	. S " y 
	ld de,(07929h)		;2d2d	ed 5b 29 79 	. [ ) y 
	ld a,(0792ch)		;2d31	3a 2c 79 	: , y 
	add a,d			;2d34	82 	. 
	ld hl,07928h		;2d35	21 28 79 	! ( y 
	sub (hl)			;2d38	96 	. 
	ld d,a			;2d39	57 	W 
	ld (07920h),de		;2d3a	ed 53 20 79 	. S   y 
	ld a,(07924h)		;2d3e	3a 24 79 	: $ y 
	ld hl,07925h		;2d41	21 25 79 	! % y 
	cp (hl)			;2d44	be 	. 
	ld a,(07965h)		;2d45	3a 65 79 	: e y 
	jr z,l2d91h		;2d48	28 47 	( G 
	or 014h		;2d4a	f6 14 	. . 
	ld (07965h),a		;2d4c	32 65 79 	2 e y 
	ld a,(07924h)		;2d4f	3a 24 79 	: $ y 
	ld l,a			;2d52	6f 	o 
	ld h,07ch		;2d53	26 7c 	& | 
	ld a,(hl)			;2d55	7e 	~ 
	ld (079e8h),a		;2d56	32 e8 79 	2 . y 
	ld a,0f7h		;2d59	3e f7 	> . 
l2d5bh:
	call 08468h		;2d5b	cd 68 84 	. h . 
	ret			;2d5e	c9 	. 
l2d5fh:
	dec a			;2d5f	3d 	= 
	jr l2d15h		;2d60	18 b3 	. . 
l2d62h:
	sub 003h		;2d62	d6 03 	. . 
	ld (07928h),a		;2d64	32 28 79 	2 ( y 
	add a,013h		;2d67	c6 13 	. . 
	ld l,a			;2d69	6f 	o 
	ld h,079h		;2d6a	26 79 	& y 
	ld l,(hl)			;2d6c	6e 	n 
	ld h,07ch		;2d6d	26 7c 	& | 
	ld a,l			;2d6f	7d 	} 
	add a,060h		;2d70	c6 60 	. ` 
	jr c,l2d7fh		;2d72	38 0b 	8 . 
	ld b,060h		;2d74	06 60 	. ` 
	call 084cdh		;2d76	cd cd 84 	. . . 
l2d79h:
	xor a			;2d79	af 	. 
	ld (0792ch),a		;2d7a	32 2c 79 	2 , y 
	jr l2d29h		;2d7d	18 aa 	. . 
l2d7fh:
	push af			;2d7f	f5 	. 
	ld b,a			;2d80	47 	G 
	ld a,060h		;2d81	3e 60 	> ` 
	sub b			;2d83	90 	. 
	ld b,a			;2d84	47 	G 
	call 084cdh		;2d85	cd cd 84 	. . . 
	pop bc			;2d88	c1 	. 
	inc b			;2d89	04 	. 
	ld a,020h		;2d8a	3e 20 	>   
	call 086b3h		;2d8c	cd b3 86 	. . . 
	jr l2d79h		;2d8f	18 e8 	. . 
l2d91h:
	and 0fbh		;2d91	e6 fb 	. . 
	ld (07965h),a		;2d93	32 65 79 	2 e y 
	ld (07922h),de		;2d96	ed 53 22 79 	. S " y 
	ld a,05fh		;2d9a	3e 5f 	> _ 
	jr l2d5bh		;2d9c	18 bd 	. . 
	ld c,l			;2d9e	4d 	M 
l2d9fh:
	push hl			;2d9f	e5 	. 
	xor a			;2da0	af 	. 
	sbc hl,de		;2da1	ed 52 	. R 
	pop hl			;2da3	e1 	. 
	jr nc,l2db7h		;2da4	30 11 	0 . 
	ld a,(hl)			;2da6	7e 	~ 
	cp 00dh		;2da7	fe 0d 	. . 
	jr z,l2dbbh		;2da9	28 10 	( . 
	ld c,l			;2dab	4d 	M 
	cp 01fh		;2dac	fe 1f 	. . 
	jr z,l2dbdh		;2dae	28 0d 	( . 
	cp 0feh		;2db0	fe fe 	. . 
	jr z,l2dbeh		;2db2	28 0a 	( . 
l2db4h:
	inc hl			;2db4	23 	# 
	jr l2d9fh		;2db5	18 e8 	. . 
l2db7h:
	jr z,l2dbbh		;2db7	28 02 	( . 
	ld a,c			;2db9	79 	y 
	ret			;2dba	c9 	. 
l2dbbh:
	ld a,l			;2dbb	7d 	} 
	ret			;2dbc	c9 	. 
l2dbdh:
	inc hl			;2dbd	23 	# 
l2dbeh:
	inc hl			;2dbe	23 	# 
	jr l2db4h		;2dbf	18 f3 	. . 
	ld ix,07cffh		;2dc1	dd 21 ff 7c 	. ! . | 
	ld iy,07bffh		;2dc5	fd 21 ff 7b 	. ! . { 
	call 0ff97h		;2dc9	cd 97 ff 	. . . 
	push iy		;2dcc	fd e5 	. . 
	pop bc			;2dce	c1 	. 
	inc c			;2dcf	0c 	. 
	ld b,c			;2dd0	41 	A 
	ld de,(0792bh)		;2dd1	ed 5b 2b 79 	. [ + y 
	ld hl,07c00h		;2dd5	21 00 7c 	! . | 
	call 084cdh		;2dd8	cd cd 84 	. . . 
	ld bc,(07922h)		;2ddb	ed 4b 22 79 	. K " y 
	ld (07922h),de		;2ddf	ed 53 22 79 	. S " y 
	inc e			;2de3	1c 	. 
	ld a,e			;2de4	7b 	{ 
	cp 018h		;2de5	fe 18 	. . 
	jr c,l2dech		;2de7	38 03 	8 . 
	ld e,000h		;2de9	1e 00 	. . 
	inc d			;2deb	14 	. 
l2dech:
	ld a,b			;2dec	78 	x 
	sub d			;2ded	92 	. 
	ret c			;2dee	d8 	. 
	jr nz,l2dfch		;2def	20 0b 	  . 
	ld a,c			;2df1	79 	y 
	sub e			;2df2	93 	. 
	ret c			;2df3	d8 	. 
	inc a			;2df4	3c 	< 
	ld b,a			;2df5	47 	G 
l2df6h:
	ld a,020h		;2df6	3e 20 	>   
	call 086b3h		;2df8	cd b3 86 	. . . 
	ret			;2dfb	c9 	. 
l2dfch:
	ld l,a			;2dfc	6f 	o 
	ld a,d			;2dfd	7a 	z 
	cp 004h		;2dfe	fe 04 	. . 
	ret nc			;2e00	d0 	. 
	xor a			;2e01	af 	. 
l2e02h:
	dec l			;2e02	2d 	- 
	jr z,l2e09h		;2e03	28 04 	( . 
	add a,018h		;2e05	c6 18 	. . 
	jr l2e02h		;2e07	18 f9 	. . 
l2e09h:
	ld b,a			;2e09	47 	G 
	ld a,018h		;2e0a	3e 18 	> . 
	sub e			;2e0c	93 	. 
	add a,b			;2e0d	80 	. 
	add a,c			;2e0e	81 	. 
	ld b,a			;2e0f	47 	G 
	inc b			;2e10	04 	. 
	jr l2df6h		;2e11	18 e3 	. . 
	ld a,(079dah)		;2e13	3a da 79 	: . y 
	xor 020h		;2e16	ee 20 	.   
	and 023h		;2e18	e6 23 	. # 
	ret nz			;2e1a	c0 	. 
	ld hl,07965h		;2e1b	21 65 79 	! e y 
	bit 2,(hl)		;2e1e	cb 56 	. V 
	jr z,l2e30h		;2e20	28 0e 	( . 
	bit 4,(hl)		;2e22	cb 66 	. f 
	ret z			;2e24	c8 	. 
	ld a,(079e8h)		;2e25	3a e8 79 	: . y 
l2e28h:
	ld de,(07920h)		;2e28	ed 5b 20 79 	. [   y 
	call 08468h		;2e2c	cd 68 84 	. h . 
	ret			;2e2f	c9 	. 
l2e30h:
	ld a,020h		;2e30	3e 20 	>   
	jr l2e28h		;2e32	18 f4 	. . 
	call 0ae41h		;2e34	cd 41 ae 	. A . 
	ld hl,(07f3ah)		;2e37	2a 3a 7f 	* :  
	ld (07f38h),hl		;2e3a	22 38 7f 	" 8  
	call 083b4h		;2e3d	cd b4 83 	. . . 
	ret			;2e40	c9 	. 
	ld a,(079dah)		;2e41	3a da 79 	: . y 
	and 0c0h		;2e44	e6 c0 	. . 
	ld (079dah),a		;2e46	32 da 79 	2 . y 
	ld hl,079d7h		;2e49	21 d7 79 	! . y 
	res 4,(hl)		;2e4c	cb a6 	. . 
	ld a,(079d9h)		;2e4e	3a d9 79 	: . y 
	and 07dh		;2e51	e6 7d 	. } 
	ld (079d9h),a		;2e53	32 d9 79 	2 . y 
	ld a,(079d8h)		;2e56	3a d8 79 	: . y 
	and 0ceh		;2e59	e6 ce 	. . 
	ld (079d8h),a		;2e5b	32 d8 79 	2 . y 
	ld a,(07f35h)		;2e5e	3a 35 7f 	: 5  
	and 0d0h		;2e61	e6 d0 	. . 
	or 010h		;2e63	f6 10 	. . 
	ld (07f35h),a		;2e65	32 35 7f 	2 5  
	ld a,(07f36h)		;2e68	3a 36 7f 	: 6  
	and 014h		;2e6b	e6 14 	. . 
	ld (07f36h),a		;2e6d	32 36 7f 	2 6  
	ret			;2e70	c9 	. 
	ld a,(0796bh)		;2e71	3a 6b 79 	: k y 
	cp 000h		;2e74	fe 00 	. . 
	jr z,l2e91h		;2e76	28 19 	( . 
	ld c,a			;2e78	4f 	O 
	ld b,000h		;2e79	06 00 	. . 
	ld hl,07938h		;2e7b	21 38 79 	! 8 y 
	ld de,07f10h		;2e7e	11 10 7f 	. .  
	ldir		;2e81	ed b0 	. . 
	ld b,a			;2e83	47 	G 
	ld a,018h		;2e84	3e 18 	> . 
	sub b			;2e86	90 	. 
	ld b,a			;2e87	47 	G 
	ld a,020h		;2e88	3e 20 	>   
l2e8ah:
	ld (de),a			;2e8a	12 	. 
	inc de			;2e8b	13 	. 
	djnz l2e8ah		;2e8c	10 fc 	. . 
	call 0bde1h		;2e8e	cd e1 bd 	. . . 
l2e91h:
	call 0ae9dh		;2e91	cd 9d ae 	. . . 
	ld a,(0797dh)		;2e94	3a 7d 79 	: } y 
	and 0f8h		;2e97	e6 f8 	. . 
	ld (0797dh),a		;2e99	32 7d 79 	2 } y 
	ret			;2e9c	c9 	. 
	ld b,018h		;2e9d	06 18 	. . 
	ld a,020h		;2e9f	3e 20 	>   
	ld hl,07938h		;2ea1	21 38 79 	! 8 y 
l2ea4h:
	ld (hl),a			;2ea4	77 	w 
	inc hl			;2ea5	23 	# 
	djnz l2ea4h		;2ea6	10 fc 	. . 
	ld hl,0796bh		;2ea8	21 6b 79 	! k y 
	ld (hl),000h		;2eab	36 00 	6 . 
	ret			;2ead	c9 	. 
	nop			;2eae	00 	. 
	nop			;2eaf	00 	. 
	nop			;2eb0	00 	. 
	nop			;2eb1	00 	. 
	nop			;2eb2	00 	. 
	nop			;2eb3	00 	. 
	nop			;2eb4	00 	. 
	nop			;2eb5	00 	. 
	nop			;2eb6	00 	. 
	nop			;2eb7	00 	. 
	nop			;2eb8	00 	. 
	nop			;2eb9	00 	. 
	nop			;2eba	00 	. 
	nop			;2ebb	00 	. 
	nop			;2ebc	00 	. 
	nop			;2ebd	00 	. 
	nop			;2ebe	00 	. 
	nop			;2ebf	00 	. 
	nop			;2ec0	00 	. 
	nop			;2ec1	00 	. 
	nop			;2ec2	00 	. 
	nop			;2ec3	00 	. 
	nop			;2ec4	00 	. 
	nop			;2ec5	00 	. 
	nop			;2ec6	00 	. 
	nop			;2ec7	00 	. 
	nop			;2ec8	00 	. 
	nop			;2ec9	00 	. 
	nop			;2eca	00 	. 
	nop			;2ecb	00 	. 
	nop			;2ecc	00 	. 
	nop			;2ecd	00 	. 
	nop			;2ece	00 	. 
	nop			;2ecf	00 	. 
	nop			;2ed0	00 	. 
	nop			;2ed1	00 	. 
	nop			;2ed2	00 	. 
	nop			;2ed3	00 	. 
	nop			;2ed4	00 	. 
	nop			;2ed5	00 	. 
	nop			;2ed6	00 	. 
	nop			;2ed7	00 	. 
	nop			;2ed8	00 	. 
	nop			;2ed9	00 	. 
	nop			;2eda	00 	. 
	ld b,e			;2edb	43 	C 
	ex de,hl			;2edc	eb 	. 
	rst 38h			;2edd	ff 	. 
	ld b,d			;2ede	42 	B 
	ld c,a			;2edf	4f 	O 
	rst 38h			;2ee0	ff 	. 
	ld b,c			;2ee1	41 	A 
	and e			;2ee2	a3 	. 
	rst 38h			;2ee3	ff 	. 
	ld b,d			;2ee4	42 	B 
	ld (hl),b			;2ee5	70 	p 
	rst 38h			;2ee6	ff 	. 
	ld b,c			;2ee7	41 	A 
	and (hl)			;2ee8	a6 	. 
	rst 38h			;2ee9	ff 	. 
	ld b,c			;2eea	41 	A 
	xor c			;2eeb	a9 	. 
	rst 38h			;2eec	ff 	. 
	ld b,c			;2eed	41 	A 
	xor h			;2eee	ac 	. 
	rst 38h			;2eef	ff 	. 
	ld b,c			;2ef0	41 	A 
	xor a			;2ef1	af 	. 
	rst 38h			;2ef2	ff 	. 
	ld b,c			;2ef3	41 	A 
	or d			;2ef4	b2 	. 
	rst 38h			;2ef5	ff 	. 
	ld b,h			;2ef6	44 	D 
	xor 0ffh		;2ef7	ee ff 	. . 
	nop			;2ef9	00 	. 
	nop			;2efa	00 	. 
	nop			;2efb	00 	. 
	nop			;2efc	00 	. 
	nop			;2efd	00 	. 
	nop			;2efe	00 	. 
	ld b,c			;2eff	41 	A 
	or l			;2f00	b5 	. 
	rst 38h			;2f01	ff 	. 
	ld b,h			;2f02	44 	D 
	ex de,hl			;2f03	eb 	. 
	rst 38h			;2f04	ff 	. 
	nop			;2f05	00 	. 
	nop			;2f06	00 	. 
	nop			;2f07	00 	. 
	nop			;2f08	00 	. 
	nop			;2f09	00 	. 
	nop			;2f0a	00 	. 
	nop			;2f0b	00 	. 
	nop			;2f0c	00 	. 
	nop			;2f0d	00 	. 
	pop bc			;2f0e	c1 	. 
	cp b			;2f0f	b8 	. 
	rst 38h			;2f10	ff 	. 
	pop bc			;2f11	c1 	. 
	ld b,(hl)			;2f12	46 	F 
	rst 38h			;2f13	ff 	. 
	pop bc			;2f14	c1 	. 
	ld c,c			;2f15	49 	I 
	rst 38h			;2f16	ff 	. 
	ld b,h			;2f17	44 	D 
	call p,l00ffh		;2f18	f4 ff 00 	. . . 
	nop			;2f1b	00 	. 
	nop			;2f1c	00 	. 
	jp nz,0ff3dh		;2f1d	c2 3d ff 	. = . 
	jp nz,0ff40h		;2f20	c2 40 ff 	. @ . 
	jp nz,0ff43h		;2f23	c2 43 ff 	. C . 
	jp nz,0ff46h		;2f26	c2 46 ff 	. F . 
	pop bc			;2f29	c1 	. 
	cp e			;2f2a	bb 	. 
	rst 38h			;2f2b	ff 	. 
	jp nz,0ff49h		;2f2c	c2 49 ff 	. I . 
	jp nz,0ff4ch		;2f2f	c2 4c ff 	. L . 
	pop bc			;2f32	c1 	. 
	cp (hl)			;2f33	be 	. 
	rst 38h			;2f34	ff 	. 
	pop bc			;2f35	c1 	. 
	pop bc			;2f36	c1 	. 
	rst 38h			;2f37	ff 	. 
	jp nz,0ff8bh		;2f38	c2 8b ff 	. . . 
	jp nz,0ff52h		;2f3b	c2 52 ff 	. R . 
	pop bc			;2f3e	c1 	. 
	call nz,0c1ffh		;2f3f	c4 ff c1 	. . . 
	and h			;2f42	a4 	. 
	sub e			;2f43	93 	. 
	pop bc			;2f44	c1 	. 
	jp z,l00ffh		;2f45	ca ff 00 	. . . 
	nop			;2f48	00 	. 
	nop			;2f49	00 	. 
	nop			;2f4a	00 	. 
	nop			;2f4b	00 	. 
	nop			;2f4c	00 	. 
	nop			;2f4d	00 	. 
	nop			;2f4e	00 	. 
	nop			;2f4f	00 	. 
	nop			;2f50	00 	. 
	nop			;2f51	00 	. 
	nop			;2f52	00 	. 
	nop			;2f53	00 	. 
	nop			;2f54	00 	. 
	nop			;2f55	00 	. 
	nop			;2f56	00 	. 
	nop			;2f57	00 	. 
	nop			;2f58	00 	. 
	nop			;2f59	00 	. 
	nop			;2f5a	00 	. 
	nop			;2f5b	00 	. 
	nop			;2f5c	00 	. 
	nop			;2f5d	00 	. 
	nop			;2f5e	00 	. 
	ld b,h			;2f5f	44 	D 
	rst 30h			;2f60	f7 	. 
	rst 38h			;2f61	ff 	. 
	ld b,h			;2f62	44 	D 
	jp m,l00ffh		;2f63	fa ff 00 	. . . 
	nop			;2f66	00 	. 
	nop			;2f67	00 	. 
	nop			;2f68	00 	. 
	nop			;2f69	00 	. 
	nop			;2f6a	00 	. 
	nop			;2f6b	00 	. 
	nop			;2f6c	00 	. 
	nop			;2f6d	00 	. 
	nop			;2f6e	00 	. 
	nop			;2f6f	00 	. 
	nop			;2f70	00 	. 
	nop			;2f71	00 	. 
	nop			;2f72	00 	. 
	nop			;2f73	00 	. 
	nop			;2f74	00 	. 
	nop			;2f75	00 	. 
	nop			;2f76	00 	. 
	nop			;2f77	00 	. 
	nop			;2f78	00 	. 
	nop			;2f79	00 	. 
	nop			;2f7a	00 	. 
	nop			;2f7b	00 	. 
	nop			;2f7c	00 	. 
	jp nz,0ff5bh		;2f7d	c2 5b ff 	. [ . 
	nop			;2f80	00 	. 
	nop			;2f81	00 	. 
	nop			;2f82	00 	. 
	nop			;2f83	00 	. 
	nop			;2f84	00 	. 
	nop			;2f85	00 	. 
	nop			;2f86	00 	. 
	nop			;2f87	00 	. 
	nop			;2f88	00 	. 
	nop			;2f89	00 	. 
	nop			;2f8a	00 	. 
	nop			;2f8b	00 	. 
	nop			;2f8c	00 	. 
	nop			;2f8d	00 	. 
	nop			;2f8e	00 	. 
	nop			;2f8f	00 	. 
	nop			;2f90	00 	. 
	nop			;2f91	00 	. 
	nop			;2f92	00 	. 
	nop			;2f93	00 	. 
	nop			;2f94	00 	. 
	nop			;2f95	00 	. 
	nop			;2f96	00 	. 
	nop			;2f97	00 	. 
	nop			;2f98	00 	. 
	nop			;2f99	00 	. 
	nop			;2f9a	00 	. 
	nop			;2f9b	00 	. 
	nop			;2f9c	00 	. 
	nop			;2f9d	00 	. 
	add a,d			;2f9e	82 	. 
	ld e,(hl)			;2f9f	5e 	^ 
	rst 38h			;2fa0	ff 	. 
	add a,d			;2fa1	82 	. 
	ld h,c			;2fa2	61 	a 
	rst 38h			;2fa3	ff 	. 
	add a,c			;2fa4	81 	. 
	ld a,c			;2fa5	79 	y 
	add a,e			;2fa6	83 	. 
	add a,c			;2fa7	81 	. 
	ld a,c			;2fa8	79 	y 
	add a,e			;2fa9	83 	. 
	add a,d			;2faa	82 	. 
	ld a,c			;2fab	79 	y 
	add a,e			;2fac	83 	. 
	add a,d			;2fad	82 	. 
	ld h,a			;2fae	67 	g 
	rst 38h			;2faf	ff 	. 
	add a,d			;2fb0	82 	. 
	ld l,d			;2fb1	6a 	j 
	rst 38h			;2fb2	ff 	. 
	add a,c			;2fb3	81 	. 
	out (0ffh),a		;2fb4	d3 ff 	. . 
	add a,d			;2fb6	82 	. 
	ld l,l			;2fb7	6d 	m 
	rst 38h			;2fb8	ff 	. 
	add a,d			;2fb9	82 	. 
	xor 0ffh		;2fba	ee ff 	. . 
	add a,d			;2fbc	82 	. 
	ld (hl),e			;2fbd	73 	s 
	rst 38h			;2fbe	ff 	. 
	add a,c			;2fbf	81 	. 
	sub 0ffh		;2fc0	d6 ff 	. . 
	add a,d			;2fc2	82 	. 
	halt			;2fc3	76 	v 
	rst 38h			;2fc4	ff 	. 
	add a,d			;2fc5	82 	. 
	ld a,c			;2fc6	79 	y 
	rst 38h			;2fc7	ff 	. 
	add a,d			;2fc8	82 	. 
	ld a,h			;2fc9	7c 	| 
	rst 38h			;2fca	ff 	. 
	nop			;2fcb	00 	. 
	nop			;2fcc	00 	. 
	nop			;2fcd	00 	. 
	pop bc			;2fce	c1 	. 
	exx			;2fcf	d9 	. 
	rst 38h			;2fd0	ff 	. 
	add a,c			;2fd1	81 	. 
	call c,082ffh		;2fd2	dc ff 82 	. . . 
	ld a,a			;2fd5	7f 	 
	rst 38h			;2fd6	ff 	. 
	nop			;2fd7	00 	. 
	nop			;2fd8	00 	. 
	nop			;2fd9	00 	. 
	pop bc			;2fda	c1 	. 
	rst 18h			;2fdb	df 	. 
	rst 38h			;2fdc	ff 	. 
	add a,d			;2fdd	82 	. 
	ld h,h			;2fde	64 	d 
	rst 38h			;2fdf	ff 	. 
	add a,d			;2fe0	82 	. 
	add a,d			;2fe1	82 	. 
	rst 38h			;2fe2	ff 	. 
	nop			;2fe3	00 	. 
	nop			;2fe4	00 	. 
	nop			;2fe5	00 	. 
	nop			;2fe6	00 	. 
	nop			;2fe7	00 	. 
	nop			;2fe8	00 	. 
	nop			;2fe9	00 	. 
	nop			;2fea	00 	. 
	nop			;2feb	00 	. 
	nop			;2fec	00 	. 
	nop			;2fed	00 	. 
	nop			;2fee	00 	. 
	nop			;2fef	00 	. 
	nop			;2ff0	00 	. 
	nop			;2ff1	00 	. 
	nop			;2ff2	00 	. 
	nop			;2ff3	00 	. 
	nop			;2ff4	00 	. 
	nop			;2ff5	00 	. 
	nop			;2ff6	00 	. 
	nop			;2ff7	00 	. 
	nop			;2ff8	00 	. 
	nop			;2ff9	00 	. 
	nop			;2ffa	00 	. 
	nop			;2ffb	00 	. 
	nop			;2ffc	00 	. 
	nop			;2ffd	00 	. 
	nop			;2ffe	00 	. 
	nop			;2fff	00 	. 
	nop			;3000	00 	. 
	nop			;3001	00 	. 
	nop			;3002	00 	. 
	nop			;3003	00 	. 
	nop			;3004	00 	. 
	nop			;3005	00 	. 
	nop			;3006	00 	. 
	nop			;3007	00 	. 
	nop			;3008	00 	. 
	nop			;3009	00 	. 
	nop			;300a	00 	. 
	nop			;300b	00 	. 
	nop			;300c	00 	. 
	nop			;300d	00 	. 
	nop			;300e	00 	. 
	nop			;300f	00 	. 
	nop			;3010	00 	. 
	nop			;3011	00 	. 
	nop			;3012	00 	. 
	nop			;3013	00 	. 
	nop			;3014	00 	. 
	nop			;3015	00 	. 
	nop			;3016	00 	. 
	nop			;3017	00 	. 
	nop			;3018	00 	. 
	nop			;3019	00 	. 
	nop			;301a	00 	. 
	nop			;301b	00 	. 
	nop			;301c	00 	. 
	nop			;301d	00 	. 
	nop			;301e	00 	. 
	nop			;301f	00 	. 
	nop			;3020	00 	. 
	nop			;3021	00 	. 
	nop			;3022	00 	. 
	nop			;3023	00 	. 
	nop			;3024	00 	. 
	nop			;3025	00 	. 
	nop			;3026	00 	. 
	nop			;3027	00 	. 
	nop			;3028	00 	. 
	nop			;3029	00 	. 
	nop			;302a	00 	. 
	nop			;302b	00 	. 
	nop			;302c	00 	. 
	nop			;302d	00 	. 
	ld hl,0790ch		;302e	21 0c 79 	! . y 
	ld (hl),000h		;3031	36 00 	6 . 
	ld hl,07901h		;3033	21 01 79 	! . y 
	bit 2,(hl)		;3036	cb 56 	. V 
	jr nz,l30a0h		;3038	20 66 	  f 
	ld a,(0790bh)		;303a	3a 0b 79 	: . y 
	cp 000h		;303d	fe 00 	. . 
	jr nz,l3048h		;303f	20 07 	  . 
	call 0b1abh		;3041	cd ab b1 	. . . 
	cp 0feh		;3044	fe fe 	. . 
	jr z,l3053h		;3046	28 0b 	( . 
l3048h:
	call 0b16bh		;3048	cd 6b b1 	. k . 
	ret			;304b	c9 	. 
l304ch:
	ld c,a			;304c	4f 	O 
	push bc			;304d	c5 	. 
	call 0b187h		;304e	cd 87 b1 	. . . 
	pop bc			;3051	c1 	. 
	ld a,c			;3052	79 	y 
l3053h:
	call 0b172h		;3053	cd 72 b1 	. r . 
	call 0fff7h		;3056	cd f7 ff 	. . . 
	ld (07908h),de		;3059	ed 53 08 79 	. S . y 
	ld a,b			;305d	78 	x 
	ld (0790ah),a		;305e	32 0a 79 	2 . y 
	ld hl,(07906h)		;3061	2a 06 79 	* . y 
	ld a,l			;3064	7d 	} 
	ld b,h			;3065	44 	D 
	ret			;3066	c9 	. 
l3067h:
	push af			;3067	f5 	. 
	call 0b187h		;3068	cd 87 b1 	. . . 
	pop hl			;306b	e1 	. 
	ld a,(07906h)		;306c	3a 06 79 	: . y 
	and 0dfh		;306f	e6 df 	. . 
	cp 04eh		;3071	fe 4e 	. N 
	ld a,h			;3073	7c 	| 
	jr nz,l3048h		;3074	20 d2 	  . 
	cp 027h		;3076	fe 27 	. ' 
	jr z,l308bh		;3078	28 11 	( . 
	cp 00dh		;307a	fe 0d 	. . 
	jr z,l3082h		;307c	28 04 	( . 
	cp 020h		;307e	fe 20 	.   
	jr c,l3048h		;3080	38 c6 	8 . 
l3082h:
	ld (0790bh),a		;3082	32 0b 79 	2 . y 
	ld a,0ddh		;3085	3e dd 	> . 
	call 0b170h		;3087	cd 70 b1 	. p . 
	ret			;308a	c9 	. 
l308bh:
	ld a,0ddh		;308b	3e dd 	> . 
	jr l3048h		;308d	18 b9 	. . 
l308fh:
	call 0b16bh		;308f	cd 6b b1 	. k . 
	call 0b179h		;3092	cd 79 b1 	. y . 
	jr nc,l3103h		;3095	30 6c 	0 l 
	ret			;3097	c9 	. 
l3098h:
	call 09935h		;3098	cd 35 99 	. 5 . 
	call 0854dh		;309b	cd 4d 85 	. M . 
	jr l30aah		;309e	18 0a 	. . 
l30a0h:
	ld a,(0790bh)		;30a0	3a 0b 79 	: . y 
	cp 000h		;30a3	fe 00 	. . 
	jr nz,l308fh		;30a5	20 e8 	  . 
	ld (07906h),a		;30a7	32 06 79 	2 . y 
l30aah:
	call 0b1abh		;30aa	cd ab b1 	. . . 
	cp 058h		;30ad	fe 58 	. X 
	jr z,l30aah		;30af	28 f9 	( . 
	cp 078h		;30b1	fe 78 	. x 
	jr z,l30aah		;30b3	28 f5 	( . 
	cp 0feh		;30b5	fe fe 	. . 
	jr z,l304ch		;30b7	28 93 	( . 
	cp 014h		;30b9	fe 14 	. . 
	jr z,l3098h		;30bb	28 db 	( . 
	call 0b179h		;30bd	cd 79 b1 	. y . 
	jr c,l3067h		;30c0	38 a5 	8 . 
	ld b,a			;30c2	47 	G 
	ld hl,07906h		;30c3	21 06 79 	! . y 
	ld a,(hl)			;30c6	7e 	~ 
	cp 000h		;30c7	fe 00 	. . 
	jr z,l30d2h		;30c9	28 07 	( . 
	inc hl			;30cb	23 	# 
	ld a,(hl)			;30cc	7e 	~ 
	cp 000h		;30cd	fe 00 	. . 
	jr z,l30d2h		;30cf	28 01 	( . 
	inc hl			;30d1	23 	# 
l30d2h:
	ld (hl),b			;30d2	70 	p 
	inc hl			;30d3	23 	# 
	ld (hl),000h		;30d4	36 00 	6 . 
	ld hl,07906h		;30d6	21 06 79 	! . y 
	call 09319h		;30d9	cd 19 93 	. . . 
	call 0ffd6h		;30dc	cd d6 ff 	. . . 
	call 09305h		;30df	cd 05 93 	. . . 
	jr nc,l30f8h		;30e2	30 14 	0 . 
	cp 000h		;30e4	fe 00 	. . 
	jr z,l30f1h		;30e6	28 09 	( . 
	ld hl,07907h		;30e8	21 07 79 	! . y 
	ld a,(hl)			;30eb	7e 	~ 
	ld (0790bh),a		;30ec	32 0b 79 	2 . y 
	ld (hl),000h		;30ef	36 00 	6 . 
l30f1h:
	call 0b187h		;30f1	cd 87 b1 	. . . 
	ld a,(07906h)		;30f4	3a 06 79 	: . y 
	ret			;30f7	c9 	. 
l30f8h:
	cp 000h		;30f8	fe 00 	. . 
	jr nz,l3157h		;30fa	20 5b 	  [ 
	ld a,(0790ch)		;30fc	3a 0c 79 	: . y 
	cp 000h		;30ff	fe 00 	. . 
	jr nz,l311fh		;3101	20 1c 	  . 
l3103h:
	ld a,(07921h)		;3103	3a 21 79 	: ! y 
	cp 003h		;3106	fe 03 	. . 
	ld d,003h		;3108	16 03 	. . 
	ld a,002h		;310a	3e 02 	> . 
	jr nz,l3112h		;310c	20 04 	  . 
	ld d,000h		;310e	16 00 	. . 
	ld a,001h		;3110	3e 01 	> . 
l3112h:
	ld (0790ch),a		;3112	32 0c 79 	2 . y 
	ld e,013h		;3115	1e 13 	. . 
	ld b,019h		;3117	06 19 	. . 
	ld hl,07f40h		;3119	21 40 7f 	! @  
	call 08620h		;311c	cd 20 86 	.   . 
l311fh:
	ld hl,07907h		;311f	21 07 79 	! . y 
	ld bc,l0003h		;3122	01 03 00 	. . . 
	xor a			;3125	af 	. 
l3126h:
	cpi		;3126	ed a1 	. . 
	jr nz,l3126h		;3128	20 fc 	  . 
	ld b,c			;312a	41 	A 
l312bh:
	ld (hl),a			;312b	77 	w 
	inc hl			;312c	23 	# 
	djnz l312bh		;312d	10 fc 	. . 
l312fh:
	ld a,(0790ch)		;312f	3a 0c 79 	: . y 
	dec a			;3132	3d 	= 
	jr z,l3137h		;3133	28 02 	( . 
	ld a,003h		;3135	3e 03 	> . 
l3137h:
	ld d,a			;3137	57 	W 
	ld e,014h		;3138	1e 14 	. . 
	ld b,003h		;313a	06 03 	. . 
	ld hl,07906h		;313c	21 06 79 	! . y 
	push de			;313f	d5 	. 
	call 084cdh		;3140	cd cd 84 	. . . 
	pop de			;3143	d1 	. 
	ld e,013h		;3144	1e 13 	. . 
	ld a,05bh		;3146	3e 5b 	> [ 
	push de			;3148	d5 	. 
	call 08468h		;3149	cd 68 84 	. h . 
	pop de			;314c	d1 	. 
	ld e,017h		;314d	1e 17 	. . 
	ld a,05dh		;314f	3e 5d 	> ] 
	call 08468h		;3151	cd 68 84 	. h . 
	jp 0b0aah		;3154	c3 aa b0 	. . . 
l3157h:
	ld c,a			;3157	4f 	O 
	ld b,000h		;3158	06 00 	. . 
	ld hl,07906h		;315a	21 06 79 	! . y 
	ld d,h			;315d	54 	T 
	ld e,l			;315e	5d 	] 
	add hl,bc			;315f	09 	. 
	ld a,(hl)			;3160	7e 	~ 
	ex de,hl			;3161	eb 	. 
	ld (hl),a			;3162	77 	w 
	inc hl			;3163	23 	# 
	ld (hl),000h		;3164	36 00 	6 . 
	inc hl			;3166	23 	# 
	ld (hl),000h		;3167	36 00 	6 . 
	jr l312fh		;3169	18 c4 	. . 
	ld hl,0790bh		;316b	21 0b 79 	! . y 
	ld (hl),000h		;316e	36 00 	6 . 
	ld b,000h		;3170	06 00 	. . 
	ld hl,07906h		;3172	21 06 79 	! . y 
	ld (hl),a			;3175	77 	w 
	inc hl			;3176	23 	# 
	ld (hl),b			;3177	70 	p 
	ret			;3178	c9 	. 
	cp 041h		;3179	fe 41 	. A 
	ret c			;317b	d8 	. 
	cp 05bh		;317c	fe 5b 	. [ 
	ccf			;317e	3f 	? 
	ret nc			;317f	d0 	. 
	cp 061h		;3180	fe 61 	. a 
	ret c			;3182	d8 	. 
	cp 07bh		;3183	fe 7b 	. { 
	ccf			;3185	3f 	? 
	ret			;3186	c9 	. 
	ld hl,07901h		;3187	21 01 79 	! . y 
	res 3,(hl)		;318a	cb 9e 	. . 
	call 0854dh		;318c	cd 4d 85 	. M . 
	ld a,(0790ch)		;318f	3a 0c 79 	: . y 
	cp 000h		;3192	fe 00 	. . 
	ret z			;3194	c8 	. 
	dec a			;3195	3d 	= 
	ld d,003h		;3196	16 03 	. . 
	jr nz,l319ch		;3198	20 02 	  . 
	ld d,000h		;319a	16 00 	. . 
l319ch:
	ld e,013h		;319c	1e 13 	. . 
	ld b,019h		;319e	06 19 	. . 
	ld hl,07f40h		;31a0	21 40 7f 	! @  
	call 08687h		;31a3	cd 87 86 	. . . 
	xor a			;31a6	af 	. 
	ld (0790ch),a		;31a7	32 0c 79 	2 . y 
	ret			;31aa	c9 	. 
	call 08764h		;31ab	cd 64 87 	. d . 
	call 08c1fh		;31ae	cd 1f 8c 	. . . 
	cp 010h		;31b1	fe 10 	. . 
	ret z			;31b3	c8 	. 
	cp 0f5h		;31b4	fe f5 	. . 
	ret z			;31b6	c8 	. 
	cp 0f6h		;31b7	fe f6 	. . 
	ret z			;31b9	c8 	. 
	ld hl,07901h		;31ba	21 01 79 	! . y 
	bit 4,(hl)		;31bd	cb 66 	. f 
	ret z			;31bf	c8 	. 
	res 4,(hl)		;31c0	cb a6 	. . 
	push af			;31c2	f5 	. 
	push bc			;31c3	c5 	. 
	call 0854dh		;31c4	cd 4d 85 	. M . 
	pop bc			;31c7	c1 	. 
	pop af			;31c8	f1 	. 
	ret			;31c9	c9 	. 
	ld a,(07906h)		;31ca	3a 06 79 	: . y 
	cp 020h		;31cd	fe 20 	.   
	jp c,0b2b5h		;31cf	da b5 b2 	. . . 
	cp 0feh		;31d2	fe fe 	. . 
	jr z,l3240h		;31d4	28 6a 	( j 
	ld b,a			;31d6	47 	G 
	ld a,(07907h)		;31d7	3a 07 79 	: . y 
	cp 000h		;31da	fe 00 	. . 
	jr nz,l322dh		;31dc	20 4f 	  O 
	ld a,b			;31de	78 	x 
	ld hl,07924h		;31df	21 24 79 	! $ y 
	ld l,(hl)			;31e2	6e 	n 
	ld h,07ch		;31e3	26 7c 	& | 
	ld (hl),a			;31e5	77 	w 
	ld de,(07920h)		;31e6	ed 5b 20 79 	. [   y 
	ld (079e8h),a		;31ea	32 e8 79 	2 . y 
	call 08468h		;31ed	cd 68 84 	. h . 
	ld a,(07924h)		;31f0	3a 24 79 	: $ y 
	ld hl,07925h		;31f3	21 25 79 	! % y 
	cp (hl)			;31f6	be 	. 
	jr nz,l321bh		;31f7	20 22 	  " 
	inc a			;31f9	3c 	< 
	ld (07925h),a		;31fa	32 25 79 	2 % y 
	ld a,(07920h)		;31fd	3a 20 79 	:   y 
l3200h:
	cp 017h		;3200	fe 17 	. . 
	jr nz,l321bh		;3202	20 17 	  . 
	call 0b733h		;3204	cd 33 b7 	. 3 . 
	ld a,(0796eh)		;3207	3a 6e 79 	: n y 
	rra			;320a	1f 	. 
	jr nc,l321bh		;320b	30 0e 	0 . 
	ld a,(07921h)		;320d	3a 21 79 	: ! y 
	cp 003h		;3210	fe 03 	. . 
	jr z,l321bh		;3212	28 07 	( . 
	ld d,a			;3214	57 	W 
	inc d			;3215	14 	. 
	ld e,000h		;3216	1e 00 	. . 
	call 085b7h		;3218	cd b7 85 	. . . 
l321bh:
	call 0b522h		;321b	cd 22 b5 	. " . 
	ld hl,07925h		;321e	21 25 79 	! % y 
	ld a,(07924h)		;3221	3a 24 79 	: $ y 
	cp (hl)			;3224	be 	. 
	ret nz			;3225	c0 	. 
	ld hl,(07920h)		;3226	2a 20 79 	*   y 
	ld (07922h),hl		;3229	22 22 79 	" " y 
	ret			;322c	c9 	. 
l322dh:
	xor a			;322d	af 	. 
	ld c,a			;322e	4f 	O 
	ld hl,07906h		;322f	21 06 79 	! . y 
l3232h:
	cp (hl)			;3232	be 	. 
	jr z,l3239h		;3233	28 04 	( . 
	inc hl			;3235	23 	# 
	inc c			;3236	0c 	. 
	jr l3232h		;3237	18 f9 	. . 
l3239h:
	ld b,000h		;3239	06 00 	. . 
	ld hl,07906h		;323b	21 06 79 	! . y 
	jr l3249h		;323e	18 09 	. . 
l3240h:
	ld a,(0790ah)		;3240	3a 0a 79 	: . y 
	ld c,a			;3243	4f 	O 
	ld b,000h		;3244	06 00 	. . 
	ld hl,(07908h)		;3246	2a 08 79 	* . y 
l3249h:
	ld a,(07924h)		;3249	3a 24 79 	: $ y 
	ld e,a			;324c	5f 	_ 
	ld d,07ch		;324d	16 7c 	. | 
	ld a,(07926h)		;324f	3a 26 79 	: & y 
l3252h:
	ldi		;3252	ed a0 	. . 
	jp po,0b25ah		;3254	e2 5a b2 	. Z . 
	cp e			;3257	bb 	. 
	jr nz,l3252h		;3258	20 f8 	  . 
	ld a,e			;325a	7b 	{ 
	ld (07f13h),a		;325b	32 13 7f 	2 .  
	ld hl,07925h		;325e	21 25 79 	! % y 
	cp (hl)			;3261	be 	. 
	jr c,l326ah		;3262	38 06 	8 . 
	jr z,l326ah		;3264	28 04 	( . 
	ld (hl),a			;3266	77 	w 
	call 0b71dh		;3267	cd 1d b7 	. . . 
l326ah:
	ld hl,(07922h)		;326a	2a 22 79 	* " y 
	push hl			;326d	e5 	. 
	call 0b2f8h		;326e	cd f8 b2 	. . . 
	pop hl			;3271	e1 	. 
	ld (07922h),hl		;3272	22 22 79 	" " y 
	ld a,(07924h)		;3275	3a 24 79 	: $ y 
	ld (07f12h),a		;3278	32 12 7f 	2 .  
	ld a,(07f13h)		;327b	3a 13 7f 	: .  
	ld (07924h),a		;327e	32 24 79 	2 $ y 
	ld hl,07925h		;3281	21 25 79 	! % y 
	cp (hl)			;3284	be 	. 
	jr c,l32aah		;3285	38 23 	8 # 
	jr z,l3290h		;3287	28 07 	( . 
	ld a,(07f13h)		;3289	3a 13 7f 	: .  
	ld (hl),a			;328c	77 	w 
	call 0b733h		;328d	cd 33 b7 	. 3 . 
l3290h:
	ld a,(07924h)		;3290	3a 24 79 	: $ y 
	ld hl,07926h		;3293	21 26 79 	! & y 
	cp (hl)			;3296	be 	. 
	jr nz,l32aah		;3297	20 11 	  . 
	dec a			;3299	3d 	= 
	ld (07924h),a		;329a	32 24 79 	2 $ y 
	call 0b399h		;329d	cd 99 b3 	. . . 
	ld (07929h),bc		;32a0	ed 43 29 79 	. C ) y 
	call 0b6e2h		;32a4	cd e2 b6 	. . . 
	jp 0b21eh		;32a7	c3 1e b2 	. . . 
l32aah:
	ld hl,07965h		;32aa	21 65 79 	! e y 
	res 4,(hl)		;32ad	cb a6 	. . 
	call 0b5cch		;32af	cd cc b5 	. . . 
	jp 0b21eh		;32b2	c3 1e b2 	. . . 
	cp 008h		;32b5	fe 08 	. . 
	ret c			;32b7	d8 	. 
	cp 00dh		;32b8	fe 0d 	. . 
	jr c,l32dbh		;32ba	38 1f 	8 . 
	cp 012h		;32bc	fe 12 	. . 
	jr z,l32d6h		;32be	28 16 	( . 
	cp 01ch		;32c0	fe 1c 	. . 
	ret c			;32c2	d8 	. 
	sub 01ch		;32c3	d6 1c 	. . 
	ld hl,0b2efh		;32c5	21 ef b2 	! . . 
l32c8h:
	ld c,a			;32c8	4f 	O 
	sla c		;32c9	cb 21 	. ! 
	ld b,000h		;32cb	06 00 	. . 
	add hl,bc			;32cd	09 	. 
	ld e,(hl)			;32ce	5e 	^ 
	inc hl			;32cf	23 	# 
	ld d,(hl)			;32d0	56 	V 
	ex de,hl			;32d1	eb 	. 
l32d2h:
	call 0b2e2h		;32d2	cd e2 b2 	. . . 
	ret			;32d5	c9 	. 
l32d6h:
	ld hl,0b456h		;32d6	21 56 b4 	! V . 
	jr l32d2h		;32d9	18 f7 	. . 
l32dbh:
	sub 008h		;32db	d6 08 	. . 
	ld hl,0b2e3h		;32dd	21 e3 b2 	! . . 
	jr l32c8h		;32e0	18 e6 	. . 
	jp (hl)			;32e2	e9 	. 
	rra			;32e3	1f 	. 
	or h			;32e4	b4 	. 
	ld a,(0bfb4h)		;32e5	3a b4 bf 	: . . 
	or h			;32e8	b4 	. 
	rst 30h			;32e9	f7 	. 
	or d			;32ea	b2 	. 
	rst 30h			;32eb	f7 	. 
	or d			;32ec	b2 	. 
	ld d,(hl)			;32ed	56 	V 
	or h			;32ee	b4 	. 
	ld (04cb5h),hl		;32ef	22 b5 4c 	" . L 
	or l			;32f2	b5 	. 
	ld h,b			;32f3	60 	` 
	or l			;32f4	b5 	. 
	adc a,c			;32f5	89 	. 
	or l			;32f6	b5 	. 
	ret			;32f7	c9 	. 
	ld a,(07924h)		;32f8	3a 24 79 	: $ y 
	call 0b399h		;32fb	cd 99 b3 	. . . 
	ld (07929h),bc		;32fe	ed 43 29 79 	. C ) y 
	ld hl,0792ah		;3302	21 2a 79 	! * y 
	ld a,(07928h)		;3305	3a 28 79 	: ( y 
	cp (hl)			;3308	be 	. 
	jr z,l330dh		;3309	28 02 	( . 
	jr nc,l3332h		;330b	30 25 	0 % 
l330dh:
	add a,003h		;330d	c6 03 	. . 
	ld b,a			;330f	47 	G 
	ld a,(0792ch)		;3310	3a 2c 79 	: , y 
	ld c,a			;3313	4f 	O 
	ld a,b			;3314	78 	x 
	sub c			;3315	91 	. 
	cp (hl)			;3316	be 	. 
	jr c,l335ah		;3317	38 41 	8 A 
	ld a,(07928h)		;3319	3a 28 79 	: ( y 
	ld b,a			;331c	47 	G 
	ld a,(0792ch)		;331d	3a 2c 79 	: , y 
	sub b			;3320	90 	. 
	add a,(hl)			;3321	86 	. 
	ld d,a			;3322	57 	W 
	ld a,(07929h)		;3323	3a 29 79 	: ) y 
	ld e,a			;3326	5f 	_ 
	ld hl,07c00h		;3327	21 00 7c 	! . | 
	ld a,(07924h)		;332a	3a 24 79 	: $ y 
	ld l,a			;332d	6f 	o 
l332eh:
	call 0b3c2h		;332e	cd c2 b3 	. . . 
	ret			;3331	c9 	. 
l3332h:
	sub (hl)			;3332	96 	. 
	ld b,a			;3333	47 	G 
	ld a,(07928h)		;3334	3a 28 79 	: ( y 
	sub b			;3337	90 	. 
	ld (07928h),a		;3338	32 28 79 	2 ( y 
	push hl			;333b	e5 	. 
	and a			;333c	a7 	. 
	call 0b76bh		;333d	cd 6b b7 	. k . 
	ld a,018h		;3340	3e 18 	> . 
	sub b			;3342	90 	. 
	ld e,a			;3343	5f 	_ 
	ld d,000h		;3344	16 00 	. . 
	pop hl			;3346	e1 	. 
	ld a,(hl)			;3347	7e 	~ 
	call 0b38eh		;3348	cd 8e b3 	. . . 
	push de			;334b	d5 	. 
	push hl			;334c	e5 	. 
	ld e,000h		;334d	1e 00 	. . 
	ld a,020h		;334f	3e 20 	>   
	ld b,018h		;3351	06 18 	. . 
	call 086b3h		;3353	cd b3 86 	. . . 
	pop hl			;3356	e1 	. 
	pop de			;3357	d1 	. 
	jr l3368h		;3358	18 0e 	. . 
l335ah:
	ld a,(hl)			;335a	7e 	~ 
	cp 003h		;335b	fe 03 	. . 
	jr c,l3370h		;335d	38 11 	8 . 
	sub 003h		;335f	d6 03 	. . 
	call 0b38bh		;3361	cd 8b b3 	. . . 
	ld (0792bh),de		;3364	ed 53 2b 79 	. S + y 
l3368h:
	ld a,(07925h)		;3368	3a 25 79 	: % y 
	ld (07f13h),a		;336b	32 13 7f 	2 .  
	jr l332eh		;336e	18 be 	. . 
l3370h:
	ld a,003h		;3370	3e 03 	> . 
	sub (hl)			;3372	96 	. 
	ld hl,0792ch		;3373	21 2c 79 	! , y 
l3376h:
	cp (hl)			;3376	be 	. 
	jr z,l3383h		;3377	28 0a 	( . 
	push af			;3379	f5 	. 
	push hl			;337a	e5 	. 
	call 084f7h		;337b	cd f7 84 	. . . 
	pop hl			;337e	e1 	. 
	inc (hl)			;337f	34 	4 
	pop af			;3380	f1 	. 
	jr l3376h		;3381	18 f3 	. . 
l3383h:
	ld d,(hl)			;3383	56 	V 
	ld e,000h		;3384	1e 00 	. . 
	ld hl,07913h		;3386	21 13 79 	! . y 
	jr l3368h		;3389	18 dd 	. . 
	ld de,l0000h		;338b	11 00 00 	. . . 
	ld hl,07913h		;338e	21 13 79 	! . y 
	add a,l			;3391	85 	. 
	ld l,a			;3392	6f 	o 
	ld a,(hl)			;3393	7e 	~ 
	ld hl,07c00h		;3394	21 00 7c 	! . | 
	ld l,a			;3397	6f 	o 
	ret			;3398	c9 	. 
	ld b,000h		;3399	06 00 	. . 
	ld hl,07913h		;339b	21 13 79 	! . y 
l339eh:
	cp (hl)			;339e	be 	. 
	jr c,l33a5h		;339f	38 04 	8 . 
	inc b			;33a1	04 	. 
	inc hl			;33a2	23 	# 
	jr l339eh		;33a3	18 f9 	. . 
l33a5h:
	dec b			;33a5	05 	. 
	dec hl			;33a6	2b 	+ 
	sub (hl)			;33a7	96 	. 
	ld c,a			;33a8	4f 	O 
	ld a,b			;33a9	78 	x 
	cp 000h		;33aa	fe 00 	. . 
	jr z,l33b7h		;33ac	28 09 	( . 
	ld hl,0796eh		;33ae	21 6e 79 	! n y 
	bit 0,(hl)		;33b1	cb 46 	. F 
	ret z			;33b3	c8 	. 
	inc c			;33b4	0c 	. 
	inc c			;33b5	0c 	. 
	ret			;33b6	c9 	. 
l33b7h:
	ld a,(0792bh)		;33b7	3a 2b 79 	: + y 
	add a,c			;33ba	81 	. 
	ld c,a			;33bb	4f 	O 
	sub 018h		;33bc	d6 18 	. . 
	ret c			;33be	d8 	. 
	ld c,a			;33bf	4f 	O 
	inc b			;33c0	04 	. 
	ret			;33c1	c9 	. 
l33c2h:
	ld a,(07f13h)		;33c2	3a 13 7f 	: .  
	ld b,a			;33c5	47 	G 
	ld a,017h		;33c6	3e 17 	> . 
	add a,l			;33c8	85 	. 
	jr c,l33f5h		;33c9	38 2a 	8 * 
	sub e			;33cb	93 	. 
	cp b			;33cc	b8 	. 
	jr nc,l33f5h		;33cd	30 26 	0 & 
	ld a,018h		;33cf	3e 18 	> . 
	sub e			;33d1	93 	. 
	ld b,a			;33d2	47 	G 
	ld a,d			;33d3	7a 	z 
	cp 003h		;33d4	fe 03 	. . 
	jr z,l3402h		;33d6	28 2a 	( * 
	call 084cdh		;33d8	cd cd 84 	. . . 
	inc d			;33db	14 	. 
	ld e,000h		;33dc	1e 00 	. . 
	ld a,(0796eh)		;33de	3a 6e 79 	: n y 
	bit 0,a		;33e1	cb 47 	. G 
	jr z,l33f2h		;33e3	28 0d 	( . 
	ld b,002h		;33e5	06 02 	. . 
	ld a,020h		;33e7	3e 20 	>   
	push hl			;33e9	e5 	. 
	push de			;33ea	d5 	. 
	call 086b3h		;33eb	cd b3 86 	. . . 
	pop de			;33ee	d1 	. 
	pop hl			;33ef	e1 	. 
	ld e,002h		;33f0	1e 02 	. . 
l33f2h:
	inc hl			;33f2	23 	# 
	jr l33c2h		;33f3	18 cd 	. . 
l33f5h:
	ld a,(07f13h)		;33f5	3a 13 7f 	: .  
	sub l			;33f8	95 	. 
	ld b,a			;33f9	47 	G 
	jr z,l3401h		;33fa	28 05 	( . 
	add a,e			;33fc	83 	. 
	cp 017h		;33fd	fe 17 	. . 
	jr nc,l3402h		;33ff	30 01 	0 . 
l3401h:
	inc b			;3401	04 	. 
l3402h:
	push hl			;3402	e5 	. 
	ld a,l			;3403	7d 	} 
	add a,b			;3404	80 	. 
	jr nc,l340ch		;3405	30 05 	0 . 
	ld c,a			;3407	4f 	O 
	inc c			;3408	0c 	. 
	ld a,b			;3409	78 	x 
	sub c			;340a	91 	. 
	ld b,a			;340b	47 	G 
l340ch:
	ld a,b			;340c	78 	x 
	add a,e			;340d	83 	. 
	sub 018h		;340e	d6 18 	. . 
	jr c,l3416h		;3410	38 04 	8 . 
	ld l,a			;3412	6f 	o 
	ld a,b			;3413	78 	x 
	sub l			;3414	95 	. 
	ld b,a			;3415	47 	G 
l3416h:
	pop hl			;3416	e1 	. 
	call 084cdh		;3417	cd cd 84 	. . . 
	ld (07922h),de		;341a	ed 53 22 79 	. S " y 
	ret			;341e	c9 	. 
	ld h,07ch		;341f	26 7c 	& | 
	ld a,(07924h)		;3421	3a 24 79 	: $ y 
	ld l,a			;3424	6f 	o 
	ld a,(07927h)		;3425	3a 27 79 	: ' y 
	cp l			;3428	bd 	. 
	ret z			;3429	c8 	. 
	ld a,(07925h)		;342a	3a 25 79 	: % y 
	sub l			;342d	95 	. 
	inc a			;342e	3c 	< 
	ld c,a			;342f	4f 	O 
	ld a,(07924h)		;3430	3a 24 79 	: $ y 
	dec a			;3433	3d 	= 
	ld (07924h),a		;3434	32 24 79 	2 $ y 
	dec hl			;3437	2b 	+ 
	jr l3446h		;3438	18 0c 	. . 
	ld a,(07924h)		;343a	3a 24 79 	: $ y 
	ld h,07ch		;343d	26 7c 	& | 
	ld l,a			;343f	6f 	o 
	ld a,(07925h)		;3440	3a 25 79 	: % y 
	sub l			;3443	95 	. 
	ret z			;3444	c8 	. 
	ld c,a			;3445	4f 	O 
l3446h:
	ld b,000h		;3446	06 00 	. . 
	ld d,h			;3448	54 	T 
	ld e,l			;3449	5d 	] 
	inc hl			;344a	23 	# 
	ldir		;344b	ed b0 	. . 
	ld a,(07925h)		;344d	3a 25 79 	: % y 
	dec a			;3450	3d 	= 
	ld (07925h),a		;3451	32 25 79 	2 % y 
	jr l347fh		;3454	18 29 	. ) 
	ld h,07ch		;3456	26 7c 	& | 
	ld a,(07924h)		;3458	3a 24 79 	: $ y 
	ld l,a			;345b	6f 	o 
	ld a,(07925h)		;345c	3a 25 79 	: % y 
	sub l			;345f	95 	. 
	ld c,a			;3460	4f 	O 
	ld b,000h		;3461	06 00 	. . 
	cp 000h		;3463	fe 00 	. . 
	ret z			;3465	c8 	. 
	ld d,h			;3466	54 	T 
	ld a,(07925h)		;3467	3a 25 79 	: % y 
	ld l,a			;346a	6f 	o 
	ld e,a			;346b	5f 	_ 
	dec l			;346c	2d 	- 
	push de			;346d	d5 	. 
	lddr		;346e	ed b8 	. . 
	ld a,020h		;3470	3e 20 	>   
	ld (de),a			;3472	12 	. 
	pop de			;3473	d1 	. 
	ld a,(07926h)		;3474	3a 26 79 	: & y 
	cp e			;3477	bb 	. 
	jr z,l34bah		;3478	28 40 	( @ 
	inc e			;347a	1c 	. 
	ld a,e			;347b	7b 	{ 
	ld (07925h),a		;347c	32 25 79 	2 % y 
l347fh:
	ld hl,(07922h)		;347f	2a 22 79 	* " y 
	push hl			;3482	e5 	. 
	call 0b71dh		;3483	cd 1d b7 	. . . 
	ld a,(07925h)		;3486	3a 25 79 	: % y 
	ld (07f13h),a		;3489	32 13 7f 	2 .  
	call 0b2f8h		;348c	cd f8 b2 	. . . 
	call 0b6e2h		;348f	cd e2 b6 	. . . 
	pop hl			;3492	e1 	. 
	ld de,(07922h)		;3493	ed 5b 22 79 	. [ " y 
	ld a,h			;3497	7c 	| 
	sub d			;3498	92 	. 
	ret c			;3499	d8 	. 
	jr z,l34b4h		;349a	28 18 	( . 
	ld b,a			;349c	47 	G 
	xor a			;349d	af 	. 
l349eh:
	add a,018h		;349e	c6 18 	. . 
	djnz l349eh		;34a0	10 fc 	. . 
	add a,l			;34a2	85 	. 
	sub e			;34a3	93 	. 
l34a4h:
	ld b,a			;34a4	47 	G 
	inc e			;34a5	1c 	. 
	ld a,e			;34a6	7b 	{ 
	cp 018h		;34a7	fe 18 	. . 
	jr c,l34aeh		;34a9	38 03 	8 . 
	ld e,000h		;34ab	1e 00 	. . 
	inc d			;34ad	14 	. 
l34aeh:
	ld a,020h		;34ae	3e 20 	>   
	call 086b3h		;34b0	cd b3 86 	. . . 
	ret			;34b3	c9 	. 
l34b4h:
	ld a,l			;34b4	7d 	} 
	sub e			;34b5	93 	. 
	ret c			;34b6	d8 	. 
	ret z			;34b7	c8 	. 
	jr l34a4h		;34b8	18 ea 	. . 
l34bah:
	ld a,00dh		;34ba	3e 0d 	> . 
	ld (de),a			;34bc	12 	. 
	jr l347fh		;34bd	18 c0 	. . 
	ld a,(07905h)		;34bf	3a 05 79 	: . y 
	ld b,a			;34c2	47 	G 
	ld a,(07924h)		;34c3	3a 24 79 	: $ y 
	ld c,a			;34c6	4f 	O 
l34c7h:
	sub b			;34c7	90 	. 
	jr nc,l34c7h		;34c8	30 fd 	0 . 
	neg		;34ca	ed 44 	. D 
	add a,c			;34cc	81 	. 
	jr c,l34d1h		;34cd	38 02 	8 . 
	jr nz,l34d4h		;34cf	20 03 	  . 
l34d1h:
	ld a,(07926h)		;34d1	3a 26 79 	: & y 
l34d4h:
	ld hl,07926h		;34d4	21 26 79 	! & y 
	cp (hl)			;34d7	be 	. 
	jr c,l34deh		;34d8	38 04 	8 . 
	ld a,(07926h)		;34da	3a 26 79 	: & y 
	dec a			;34dd	3d 	= 
l34deh:
	ld hl,07925h		;34de	21 25 79 	! % y 
	cp (hl)			;34e1	be 	. 
	jr z,l34e6h		;34e2	28 02 	( . 
	jr nc,l34f1h		;34e4	30 0b 	0 . 
l34e6h:
	ld b,a			;34e6	47 	G 
	ld hl,07924h		;34e7	21 24 79 	! $ y 
	ld a,(hl)			;34ea	7e 	~ 
	ld (07f12h),a		;34eb	32 12 7f 	2 .  
	ld (hl),b			;34ee	70 	p 
	jr l355eh		;34ef	18 6d 	. m 
l34f1h:
	sub (hl)			;34f1	96 	. 
	ld b,a			;34f2	47 	G 
	ld h,07ch		;34f3	26 7c 	& | 
	ld a,(07925h)		;34f5	3a 25 79 	: % y 
	ld l,a			;34f8	6f 	o 
	ld a,020h		;34f9	3e 20 	>   
l34fbh:
	ld (hl),a			;34fb	77 	w 
	inc hl			;34fc	23 	# 
	djnz l34fbh		;34fd	10 fc 	. . 
	ld (hl),00dh		;34ff	36 0d 	6 . 
	ld a,(07924h)		;3501	3a 24 79 	: $ y 
	ld (07f12h),a		;3504	32 12 7f 	2 .  
	ld a,(07925h)		;3507	3a 25 79 	: % y 
	ld (07924h),a		;350a	32 24 79 	2 $ y 
	ld a,l			;350d	7d 	} 
	ld (07925h),a		;350e	32 25 79 	2 % y 
	ld (07f13h),a		;3511	32 13 7f 	2 .  
	call 0b71dh		;3514	cd 1d b7 	. . . 
	call 0b2f8h		;3517	cd f8 b2 	. . . 
	ld a,(07925h)		;351a	3a 25 79 	: % y 
	ld (07924h),a		;351d	32 24 79 	2 $ y 
	jr l355eh		;3520	18 3c 	. < 
	ld a,(07924h)		;3522	3a 24 79 	: $ y 
	ld hl,07925h		;3525	21 25 79 	! % y 
	cp (hl)			;3528	be 	. 
	jr z,l3546h		;3529	28 1b 	( . 
	inc a			;352b	3c 	< 
	ld hl,07926h		;352c	21 26 79 	! & y 
	cp (hl)			;352f	be 	. 
	jr z,l353bh		;3530	28 09 	( . 
	ld (07924h),a		;3532	32 24 79 	2 $ y 
	dec a			;3535	3d 	= 
	ld (07f12h),a		;3536	32 12 7f 	2 .  
	jr l355eh		;3539	18 23 	. # 
l353bh:
	dec a			;353b	3d 	= 
	call 0b399h		;353c	cd 99 b3 	. . . 
	ld (07929h),bc		;353f	ed 43 29 79 	. C ) y 
	call 0b6e2h		;3543	cd e2 b6 	. . . 
l3546h:
	ld hl,07965h		;3546	21 65 79 	! e y 
	res 1,(hl)		;3549	cb 8e 	. . 
	ret			;354b	c9 	. 
	ld a,(07924h)		;354c	3a 24 79 	: $ y 
	ld hl,07927h		;354f	21 27 79 	! ' y 
	cp (hl)			;3552	be 	. 
	jr z,l3546h		;3553	28 f1 	( . 
	jr c,l3546h		;3555	38 ef 	8 . 
	ld (07f12h),a		;3557	32 12 7f 	2 .  
	dec a			;355a	3d 	= 
	ld (07924h),a		;355b	32 24 79 	2 $ y 
l355eh:
	jr l35cch		;355e	18 6c 	. l 
	ld a,(07924h)		;3560	3a 24 79 	: $ y 
	ld hl,07927h		;3563	21 27 79 	! ' y 
	cp (hl)			;3566	be 	. 
	jr z,l3546h		;3567	28 dd 	( . 
	ld (07f12h),a		;3569	32 12 7f 	2 .  
	sub 016h		;356c	d6 16 	. . 
	jr c,l3581h		;356e	38 11 	8 . 
	ld hl,0796eh		;3570	21 6e 79 	! n y 
	bit 0,(hl)		;3573	cb 46 	. F 
	jr nz,l357bh		;3575	20 04 	  . 
	sub 002h		;3577	d6 02 	. . 
	jr c,l3581h		;3579	38 06 	8 . 
l357bh:
	ld hl,07927h		;357b	21 27 79 	! ' y 
	cp (hl)			;357e	be 	. 
	jr nc,l3584h		;357f	30 03 	0 . 
l3581h:
	ld a,(07927h)		;3581	3a 27 79 	: ' y 
l3584h:
	ld (07924h),a		;3584	32 24 79 	2 $ y 
	jr l35cch		;3587	18 43 	. C 
	ld a,(07924h)		;3589	3a 24 79 	: $ y 
	ld hl,07925h		;358c	21 25 79 	! % y 
	cp (hl)			;358f	be 	. 
	jr z,l3546h		;3590	28 b4 	( . 
	inc a			;3592	3c 	< 
	ld hl,07926h		;3593	21 26 79 	! & y 
	cp (hl)			;3596	be 	. 
	jr z,l353bh		;3597	28 a2 	( . 
	dec a			;3599	3d 	= 
	ld (07f12h),a		;359a	32 12 7f 	2 .  
	add a,018h		;359d	c6 18 	. . 
	jp c,0b5c6h		;359f	da c6 b5 	. . . 
	ld hl,0796eh		;35a2	21 6e 79 	! n y 
	bit 0,(hl)		;35a5	cb 46 	. F 
	jr z,l35afh		;35a7	28 06 	( . 
	cp 01ah		;35a9	fe 1a 	. . 
	jr c,l35c2h		;35ab	38 15 	8 . 
	sub 002h		;35ad	d6 02 	. . 
l35afh:
	ld hl,07925h		;35af	21 25 79 	! % y 
	cp (hl)			;35b2	be 	. 
	jr c,l35b6h		;35b3	38 01 	8 . 
	ld a,(hl)			;35b5	7e 	~ 
l35b6h:
	ld hl,07926h		;35b6	21 26 79 	! & y 
	cp (hl)			;35b9	be 	. 
	jr nz,l35bdh		;35ba	20 01 	  . 
	dec a			;35bc	3d 	= 
l35bdh:
	ld (07924h),a		;35bd	32 24 79 	2 $ y 
	jr l35cch		;35c0	18 0a 	. . 
l35c2h:
	ld a,018h		;35c2	3e 18 	> . 
	jr l35afh		;35c4	18 e9 	. . 
	ld a,(07926h)		;35c6	3a 26 79 	: & y 
	dec a			;35c9	3d 	= 
	jr l35afh		;35ca	18 e3 	. . 
l35cch:
	ld hl,07924h		;35cc	21 24 79 	! $ y 
	ld a,(07f12h)		;35cf	3a 12 7f 	: .  
	cp (hl)			;35d2	be 	. 
	ret z			;35d3	c8 	. 
	call 0b7a2h		;35d4	cd a2 b7 	. . . 
	ld a,(07f12h)		;35d7	3a 12 7f 	: .  
	call 0b399h		;35da	cd 99 b3 	. . . 
	ld (07f28h),bc		;35dd	ed 43 28 7f 	. C (  
	ld a,(07924h)		;35e1	3a 24 79 	: $ y 
	call 0b399h		;35e4	cd 99 b3 	. . . 
	ld (07929h),bc		;35e7	ed 43 29 79 	. C ) y 
	ld a,(07f29h)		;35eb	3a 29 7f 	: )  
	sub b			;35ee	90 	. 
	jr z,l3649h		;35ef	28 58 	( X 
	jr nc,l3650h		;35f1	30 5d 	0 ] 
	neg		;35f3	ed 44 	. D 
	cp 004h		;35f5	fe 04 	. . 
	jp nc,0b69ah		;35f7	d2 9a b6 	. . . 
	ld hl,07928h		;35fa	21 28 79 	! ( y 
	ld a,(0792ah)		;35fd	3a 2a 79 	: * y 
	sub (hl)			;3600	96 	. 
	ld b,a			;3601	47 	G 
	ld hl,0792ch		;3602	21 2c 79 	! , y 
	ld a,003h		;3605	3e 03 	> . 
	sub (hl)			;3607	96 	. 
	cp b			;3608	b8 	. 
	jr nc,l3649h		;3609	30 3e 	0 > 
	ld a,(0792ch)		;360b	3a 2c 79 	: , y 
	add a,b			;360e	80 	. 
	sub 003h		;360f	d6 03 	. . 
	ld b,a			;3611	47 	G 
l3612h:
	push bc			;3612	c5 	. 
	call 084f7h		;3613	cd f7 84 	. . . 
	ld hl,0792ch		;3616	21 2c 79 	! , y 
	xor a			;3619	af 	. 
	cp (hl)			;361a	be 	. 
	jr nz,l364dh		;361b	20 30 	  0 
	ld hl,07928h		;361d	21 28 79 	! ( y 
	inc (hl)			;3620	34 	4 
l3621h:
	ld l,014h		;3621	2e 14 	. . 
	call 0b768h		;3623	cd 68 b7 	. h . 
	call 0b6ddh		;3626	cd dd b6 	. . . 
	ld d,003h		;3629	16 03 	. . 
	call 0b780h		;362b	cd 80 b7 	. . . 
	ld a,(07928h)		;362e	3a 28 79 	: ( y 
	add a,003h		;3631	c6 03 	. . 
	ld hl,0792ch		;3633	21 2c 79 	! , y 
	sub (hl)			;3636	96 	. 
	ld hl,07913h		;3637	21 13 79 	! . y 
	add a,l			;363a	85 	. 
	ld l,a			;363b	6f 	o 
	ld l,(hl)			;363c	6e 	n 
	ld h,07ch		;363d	26 7c 	& | 
	call 084cdh		;363f	cd cd 84 	. . . 
	pop bc			;3642	c1 	. 
	djnz l3612h		;3643	10 cd 	. . 
l3645h:
	ld (07922h),de		;3645	ed 53 22 79 	. S " y 
l3649h:
	call 0b6e2h		;3649	cd e2 b6 	. . . 
	ret			;364c	c9 	. 
l364dh:
	dec (hl)			;364d	35 	5 
	jr l3621h		;364e	18 d1 	. . 
l3650h:
	cp 004h		;3650	fe 04 	. . 
	jr nc,l3692h		;3652	30 3e 	0 > 
	ld hl,07928h		;3654	21 28 79 	! ( y 
	ld a,(0792ah)		;3657	3a 2a 79 	: * y 
	sub (hl)			;365a	96 	. 
	ld b,a			;365b	47 	G 
	ld hl,0792ch		;365c	21 2c 79 	! , y 
	ld a,003h		;365f	3e 03 	> . 
	sub (hl)			;3661	96 	. 
	sub b			;3662	90 	. 
	jr nc,l3649h		;3663	30 e4 	0 . 
	ld a,b			;3665	78 	x 
	neg		;3666	ed 44 	. D 
	ld b,a			;3668	47 	G 
l3669h:
	push bc			;3669	c5 	. 
	ld de,l0000h		;366a	11 00 00 	. . . 
	call 085b7h		;366d	cd b7 85 	. . . 
	ld hl,07928h		;3670	21 28 79 	! ( y 
	dec (hl)			;3673	35 	5 
	ld a,(hl)			;3674	7e 	~ 
	ld hl,07913h		;3675	21 13 79 	! . y 
	add a,l			;3678	85 	. 
	ld l,a			;3679	6f 	o 
	push hl			;367a	e5 	. 
	call 0b768h		;367b	cd 68 b7 	. h . 
	call 0b6ddh		;367e	cd dd b6 	. . . 
	ld d,000h		;3681	16 00 	. . 
	pop hl			;3683	e1 	. 
	ld l,(hl)			;3684	6e 	n 
	ld h,07ch		;3685	26 7c 	& | 
	call 084cdh		;3687	cd cd 84 	. . . 
	pop bc			;368a	c1 	. 
	djnz l3669h		;368b	10 dc 	. . 
	ld de,l0317h		;368d	11 17 03 	. . . 
	jr l3645h		;3690	18 b3 	. . 
l3692h:
	ld a,(0792ah)		;3692	3a 2a 79 	: * y 
	ld (07928h),a		;3695	32 28 79 	2 ( y 
	jr l36a3h		;3698	18 09 	. . 
	ld a,(0792ah)		;369a	3a 2a 79 	: * y 
	ld b,003h		;369d	06 03 	. . 
	sub b			;369f	90 	. 
	ld (07928h),a		;36a0	32 28 79 	2 ( y 
l36a3h:
	ld d,000h		;36a3	16 00 	. . 
l36a5h:
	push de			;36a5	d5 	. 
	ld hl,0796eh		;36a6	21 6e 79 	! n y 
	bit 0,(hl)		;36a9	cb 46 	. F 
	jr z,l36b6h		;36ab	28 09 	( . 
	ld e,000h		;36ad	1e 00 	. . 
	ld a,020h		;36af	3e 20 	>   
	ld b,002h		;36b1	06 02 	. . 
	call 086b3h		;36b3	cd b3 86 	. . . 
l36b6h:
	pop de			;36b6	d1 	. 
	push de			;36b7	d5 	. 
	ld a,(07928h)		;36b8	3a 28 79 	: ( y 
	add a,d			;36bb	82 	. 
	ld hl,07913h		;36bc	21 13 79 	! . y 
	add a,l			;36bf	85 	. 
	ld l,a			;36c0	6f 	o 
	push hl			;36c1	e5 	. 
	call 0b768h		;36c2	cd 68 b7 	. h . 
	call 0b6ddh		;36c5	cd dd b6 	. . . 
	call 0b780h		;36c8	cd 80 b7 	. . . 
	pop hl			;36cb	e1 	. 
	ld l,(hl)			;36cc	6e 	n 
	ld h,07ch		;36cd	26 7c 	& | 
	call 084cdh		;36cf	cd cd 84 	. . . 
	pop de			;36d2	d1 	. 
	inc d			;36d3	14 	. 
	ld a,d			;36d4	7a 	z 
	cp 004h		;36d5	fe 04 	. . 
	jr c,l36a5h		;36d7	38 cc 	8 . 
	dec d			;36d9	15 	. 
	jp 0b645h		;36da	c3 45 b6 	. E . 
	ld a,018h		;36dd	3e 18 	> . 
	sub b			;36df	90 	. 
	ld e,a			;36e0	5f 	_ 
	ret			;36e1	c9 	. 
	ld de,(07929h)		;36e2	ed 5b 29 79 	. [ ) y 
	ld hl,07928h		;36e6	21 28 79 	! ( y 
	ld a,(0792ch)		;36e9	3a 2c 79 	: , y 
	add a,d			;36ec	82 	. 
	sub (hl)			;36ed	96 	. 
	ld d,a			;36ee	57 	W 
	ld (07920h),de		;36ef	ed 53 20 79 	. S   y 
	ld hl,07924h		;36f3	21 24 79 	! $ y 
	ld a,(07925h)		;36f6	3a 25 79 	: % y 
	cp (hl)			;36f9	be 	. 
	ld hl,07965h		;36fa	21 65 79 	! e y 
	jr nz,l3715h		;36fd	20 16 	  . 
	res 2,(hl)		;36ff	cb 96 	. . 
	ld (07922h),de		;3701	ed 53 22 79 	. S " y 
	ld a,05fh		;3705	3e 5f 	> _ 
l3707h:
	call 08468h		;3707	cd 68 84 	. h . 
	ld a,(07924h)		;370a	3a 24 79 	: $ y 
	ld l,a			;370d	6f 	o 
	ld h,07ch		;370e	26 7c 	& | 
	ld a,(hl)			;3710	7e 	~ 
	ld (079e8h),a		;3711	32 e8 79 	2 . y 
	ret			;3714	c9 	. 
l3715h:
	ld a,014h		;3715	3e 14 	> . 
	or (hl)			;3717	b6 	. 
	ld (hl),a			;3718	77 	w 
	ld a,0f7h		;3719	3e f7 	> . 
	jr l3707h		;371b	18 ea 	. . 
	call 0b75bh		;371d	cd 5b b7 	. [ . 
	push de			;3720	d5 	. 
	call 0b736h		;3721	cd 36 b7 	. 6 . 
	pop de			;3724	d1 	. 
	ex de,hl			;3725	eb 	. 
	and a			;3726	a7 	. 
	sbc hl,de		;3727	ed 52 	. R 
	ret nc			;3729	d0 	. 
	ld hl,0796eh		;372a	21 6e 79 	! n y 
	bit 0,(hl)		;372d	cb 46 	. F 
	call nz,0b791h		;372f	c4 91 b7 	. . . 
	ret			;3732	c9 	. 
	call 0b75bh		;3733	cd 5b b7 	. [ . 
l3736h:
	dec hl			;3736	2b 	+ 
	ld a,(07925h)		;3737	3a 25 79 	: % y 
	cp (hl)			;373a	be 	. 
	ret z			;373b	c8 	. 
l373ch:
	ld d,h			;373c	54 	T 
	ld e,l			;373d	5d 	] 
	call 0b768h		;373e	cd 68 b7 	. h . 
	ex de,hl			;3741	eb 	. 
	ld a,(hl)			;3742	7e 	~ 
	add a,b			;3743	80 	. 
	ret c			;3744	d8 	. 
	ld b,a			;3745	47 	G 
	ld a,(07925h)		;3746	3a 25 79 	: % y 
	cp b			;3749	b8 	. 
	jr c,l3751h		;374a	38 05 	8 . 
	inc hl			;374c	23 	# 
	ld (hl),b			;374d	70 	p 
	jr nz,l373ch		;374e	20 ec 	  . 
	ret			;3750	c9 	. 
l3751h:
	ld b,(hl)			;3751	46 	F 
	ld a,(07925h)		;3752	3a 25 79 	: % y 
	cp b			;3755	b8 	. 
	ret nc			;3756	d0 	. 
	ld (hl),0ffh		;3757	36 ff 	6 . 
	jr l3736h		;3759	18 db 	. . 
	ld hl,07912h		;375b	21 12 79 	! . y 
	ld a,0ffh		;375e	3e ff 	> . 
l3760h:
	inc hl			;3760	23 	# 
	cp (hl)			;3761	be 	. 
	jr nz,l3760h		;3762	20 fc 	  . 
	ld d,h			;3764	54 	T 
	ld e,l			;3765	5d 	] 
	dec de			;3766	1b 	. 
	ret			;3767	c9 	. 
	ld a,013h		;3768	3e 13 	> . 
	cp l			;376a	bd 	. 
	jr z,l3778h		;376b	28 0b 	( . 
	ld b,018h		;376d	06 18 	. . 
	ld hl,0796eh		;376f	21 6e 79 	! n y 
	bit 0,(hl)		;3772	cb 46 	. F 
	ret z			;3774	c8 	. 
	ld b,016h		;3775	06 16 	. . 
	ret			;3777	c9 	. 
l3778h:
	ld hl,0792bh		;3778	21 2b 79 	! + y 
	ld a,018h		;377b	3e 18 	> . 
	sub (hl)			;377d	96 	. 
	ld b,a			;377e	47 	G 
	ret			;377f	c9 	. 
	ld hl,07913h		;3780	21 13 79 	! . y 
	ld a,(0792ah)		;3783	3a 2a 79 	: * y 
	add a,l			;3786	85 	. 
	ld l,a			;3787	6f 	o 
	ld a,(hl)			;3788	7e 	~ 
	add a,b			;3789	80 	. 
	ret nc			;378a	d0 	. 
	inc a			;378b	3c 	< 
	ld l,a			;378c	6f 	o 
	ld a,b			;378d	78 	x 
	sub l			;378e	95 	. 
	ld b,a			;378f	47 	G 
	ret			;3790	c9 	. 
	call 0b75bh		;3791	cd 5b b7 	. [ . 
	ld a,e			;3794	7b 	{ 
	sub 013h		;3795	d6 13 	. . 
	ld b,a			;3797	47 	G 
	sub 004h		;3798	d6 04 	. . 
	ret nc			;379a	d0 	. 
	ld d,b			;379b	50 	P 
	ld e,000h		;379c	1e 00 	. . 
	call 085b7h		;379e	cd b7 85 	. . . 
	ret			;37a1	c9 	. 
	ld a,(07f12h)		;37a2	3a 12 7f 	: .  
	ld hl,07925h		;37a5	21 25 79 	! % y 
	cp (hl)			;37a8	be 	. 
	jr z,l37bdh		;37a9	28 12 	( . 
	ld a,(07965h)		;37ab	3a 65 79 	: e y 
	cpl			;37ae	2f 	/ 
	and 014h		;37af	e6 14 	. . 
	ret nz			;37b1	c0 	. 
	ld a,(079e8h)		;37b2	3a e8 79 	: . y 
l37b5h:
	ld de,(07920h)		;37b5	ed 5b 20 79 	. [   y 
	call 08468h		;37b9	cd 68 84 	. h . 
	ret			;37bc	c9 	. 
l37bdh:
	ld a,020h		;37bd	3e 20 	>   
	jr l37b5h		;37bf	18 f4 	. . 
	call 0b985h		;37c1	cd 85 b9 	. . . 
	call 0b9c4h		;37c4	cd c4 b9 	. . . 
	call 0b9a7h		;37c7	cd a7 b9 	. . . 
	call 0b02eh		;37ca	cd 2e b0 	. . . 
	ld hl,07903h		;37cd	21 03 79 	! . y 
	bit 1,(hl)		;37d0	cb 4e 	. N 
	jr nz,l37deh		;37d2	20 0a 	  . 
	cp 0f0h		;37d4	fe f0 	. . 
	jp z,0992dh		;37d6	ca 2d 99 	. - . 
	cp 0f1h		;37d9	fe f1 	. . 
	jp z,0a0dfh		;37db	ca df a0 	. . . 
l37deh:
	call 0b9a7h		;37de	cd a7 b9 	. . . 
	ld hl,0b7c7h		;37e1	21 c7 b7 	! . . 
	push hl			;37e4	e5 	. 
	call 0ba11h		;37e5	cd 11 ba 	. . . 
	ret nc			;37e8	d0 	. 
	cp 0feh		;37e9	fe fe 	. . 
	jr z,l37f0h		;37eb	28 03 	( . 
	cp 0f0h		;37ed	fe f0 	. . 
	ret nc			;37ef	d0 	. 
l37f0h:
	cp 020h		;37f0	fe 20 	.   
	jr nc,l3833h		;37f2	30 3f 	0 ? 
	cp 01eh		;37f4	fe 1e 	. . 
	jp nc,09af0h		;37f6	d2 f0 9a 	. . . 
	cp 01ch		;37f9	fe 1c 	. . 
	jp nc,09bdfh		;37fb	d2 df 9b 	. . . 
	cp 00bh		;37fe	fe 0b 	. . 
	jr z,l385fh		;3800	28 5d 	( ] 
	cp 00ch		;3802	fe 0c 	. . 
	jr z,l385fh		;3804	28 59 	( Y 
	cp 006h		;3806	fe 06 	. . 
	jr z,l386eh		;3808	28 64 	( d 
	ld hl,079dah		;380a	21 da 79 	! . y 
	bit 1,(hl)		;380d	cb 4e 	. N 
	ret nz			;380f	c0 	. 
	cp 015h		;3810	fe 15 	. . 
	ret nc			;3812	d0 	. 
	cp 012h		;3813	fe 12 	. . 
	jr z,l3833h		;3815	28 1c 	( . 
	cp 010h		;3817	fe 10 	. . 
	jr nc,l3859h		;3819	30 3e 	0 > 
	cp 00eh		;381b	fe 0e 	. . 
	ret nc			;381d	d0 	. 
	cp 00dh		;381e	fe 0d 	. . 
	jr z,l3885h		;3820	28 63 	( c 
	cp 008h		;3822	fe 08 	. . 
	jr nc,l3833h		;3824	30 0d 	0 . 
	cp 007h		;3826	fe 07 	. . 
	jp z,0a0bbh		;3828	ca bb a0 	. . . 
	cp 005h		;382b	fe 05 	. . 
	jr c,l3877h		;382d	38 48 	8 H 
	pop hl			;382f	e1 	. 
	jp 0b995h		;3830	c3 95 b9 	. . . 
l3833h:
	ld hl,079dah		;3833	21 da 79 	! . y 
	bit 2,(hl)		;3836	cb 56 	. V 
	jr nz,l384bh		;3838	20 11 	  . 
l383ah:
	bit 1,(hl)		;383a	cb 4e 	. N 
	ret nz			;383c	c0 	. 
l383dh:
	set 5,(hl)		;383d	cb ee 	. . 
	call 0b8f4h		;383f	cd f4 b8 	. . . 
	call 0b1cah		;3842	cd ca b1 	. . . 
	ld a,007h		;3845	3e 07 	> . 
	ld (07905h),a		;3847	32 05 79 	2 . y 
	ret			;384a	c9 	. 
l384bh:
	bit 5,(hl)		;384b	cb 6e 	. n 
	jr nz,l383ah		;384d	20 eb 	  . 
	push af			;384f	f5 	. 
	call 0a7f0h		;3850	cd f0 a7 	. . . 
	pop af			;3853	f1 	. 
	ld hl,079dah		;3854	21 da 79 	! . y 
	jr l383dh		;3857	18 e4 	. . 
l3859h:
	call 09935h		;3859	cd 35 99 	. 5 . 
	jp 0854dh		;385c	c3 4d 85 	. M . 
l385fh:
	call 09341h		;385f	cd 41 93 	. A . 
	call 0a7ddh		;3862	cd dd a7 	. . . 
	ld de,(07920h)		;3865	ed 5b 20 79 	. [   y 
	ld a,03ch		;3869	3e 3c 	> < 
	jp 08468h		;386b	c3 68 84 	. h . 
l386eh:
	call 0b9a7h		;386e	cd a7 b9 	. . . 
	call 09351h		;3871	cd 51 93 	. Q . 
	jp 0b9a7h		;3874	c3 a7 b9 	. . . 
l3877h:
	call 0b9a7h		;3877	cd a7 b9 	. . . 
	cp 001h		;387a	fe 01 	. . 
	jp z,09913h		;387c	ca 13 99 	. . . 
	call 098fah		;387f	cd fa 98 	. . . 
	jp 0b9a7h		;3882	c3 a7 b9 	. . . 
l3885h:
	ld hl,079dah		;3885	21 da 79 	! . y 
	bit 5,(hl)		;3888	cb 6e 	. n 
	jr z,l38cfh		;388a	28 43 	( C 
	call 09dd8h		;388c	cd d8 9d 	. . . 
	jr c,l38ebh		;388f	38 5a 	8 Z 
	or a			;3891	b7 	. 
	ret z			;3892	c8 	. 
	push hl			;3893	e5 	. 
	ld hl,07965h		;3894	21 65 79 	! e y 
	res 2,(hl)		;3897	cb 96 	. . 
	pop hl			;3899	e1 	. 
	push af			;389a	f5 	. 
	call 092feh		;389b	cd fe 92 	. . . 
	call 0ff1ah		;389e	cd 1a ff 	. . . 
	pop af			;38a1	f1 	. 
	nop			;38a2	00 	. 
	nop			;38a3	00 	. 
	nop			;38a4	00 	. 
	nop			;38a5	00 	. 
	cp 04ch		;38a6	fe 4c 	. L 
	jr z,l38c4h		;38a8	28 1a 	( . 
	cp 052h		;38aa	fe 52 	. R 
	jr z,l38d7h		;38ac	28 29 	( ) 
	jr l3907h		;38ae	18 57 	. W 
	call 0ff2ch		;38b0	cd 2c ff 	. , . 
	jr nc,l38cfh		;38b3	30 1a 	0 . 
	ld a,(07f34h)		;38b5	3a 34 7f 	: 4  
	cp 010h		;38b8	fe 10 	. . 
	ld de,0b963h		;38ba	11 63 b9 	. c . 
	jr z,l38c2h		;38bd	28 03 	( . 
	ld de,0b973h		;38bf	11 73 b9 	. s . 
l38c2h:
	jr l390ah		;38c2	18 46 	. F 
l38c4h:
	call 0ff8bh		;38c4	cd 8b ff 	. . . 
	jr c,l38d2h		;38c7	38 09 	8 . 
	ld hl,079dah		;38c9	21 da 79 	! . y 
	bit 2,(hl)		;38cc	cb 56 	. V 
	ret nz			;38ce	c0 	. 
l38cfh:
	jp 0a7f0h		;38cf	c3 f0 a7 	. . . 
l38d2h:
	ld de,0b97ah		;38d2	11 7a b9 	. z . 
	jr l390ah		;38d5	18 33 	. 3 
l38d7h:
	call 0ff2fh		;38d7	cd 2f ff 	. / . 
	jr nc,l38cfh		;38da	30 f3 	0 . 
	ld a,(07f34h)		;38dc	3a 34 7f 	: 4  
	cp 010h		;38df	fe 10 	. . 
	ld de,0b963h		;38e1	11 63 b9 	. c . 
	jr z,l38e9h		;38e4	28 03 	( . 
	ld de,0b96ah		;38e6	11 6a b9 	. j . 
l38e9h:
	jr l390ah		;38e9	18 1f 	. . 
l38ebh:
	ld a,(07f34h)		;38eb	3a 34 7f 	: 4  
	cp 060h		;38ee	fe 60 	. ` 
	jr z,l3919h		;38f0	28 27 	( ' 
	jr l3907h		;38f2	18 13 	. . 
	cp 00ah		;38f4	fe 0a 	. . 
	ret nz			;38f6	c0 	. 
	push af			;38f7	f5 	. 
	ld a,(07924h)		;38f8	3a 24 79 	: $ y 
	cp 008h		;38fb	fe 08 	. . 
	ld a,007h		;38fd	3e 07 	> . 
	jr nc,l3902h		;38ff	30 01 	0 . 
	inc a			;3901	3c 	< 
l3902h:
	ld (07905h),a		;3902	32 05 79 	2 . y 
	pop af			;3905	f1 	. 
	ret			;3906	c9 	. 
l3907h:
	ld de,0b94eh		;3907	11 4e b9 	. N . 
l390ah:
	call 0b921h		;390a	cd 21 b9 	. ! . 
	call 0b944h		;390d	cd 44 b9 	. D . 
l3910h:
	ld hl,07b20h		;3910	21 20 7b 	!   { 
	call 0a673h		;3913	cd 73 a6 	. s . 
	jp 0ff1ah		;3916	c3 1a ff 	. . . 
l3919h:
	ld de,0b957h		;3919	11 57 b9 	. W . 
	call 0b921h		;391c	cd 21 b9 	. ! . 
	jr l3910h		;391f	18 ef 	. . 
	push de			;3921	d5 	. 
	ld bc,l00ffh+1		;3922	01 00 01 	. . . 
	ld de,07d00h		;3925	11 00 7d 	. . } 
	ld hl,07c00h		;3928	21 00 7c 	! . | 
	ldir		;392b	ed b0 	. . 
	pop de			;392d	d1 	. 
	ld hl,07b20h		;392e	21 20 7b 	!   { 
	ld b,018h		;3931	06 18 	. . 
l3933h:
	ld (hl),000h		;3933	36 00 	6 . 
	inc hl			;3935	23 	# 
	djnz l3933h		;3936	10 fb 	. . 
	ex de,hl			;3938	eb 	. 
	ld de,07b21h		;3939	11 21 7b 	. ! { 
l393ch:
	ld a,(hl)			;393c	7e 	~ 
	inc hl			;393d	23 	# 
	or a			;393e	b7 	. 
	ret z			;393f	c8 	. 
	ld (de),a			;3940	12 	. 
	inc de			;3941	13 	. 
	jr l393ch		;3942	18 f8 	. . 
	inc de			;3944	13 	. 
	ld hl,0b97fh		;3945	21 7f b9 	!  . 
	ld bc,l0005h		;3948	01 05 00 	. . . 
	ldir		;394b	ed b0 	. . 
	ret			;394d	c9 	. 
	ld c,h			;394e	4c 	L 
	ld c,c			;394f	49 	I 
	ld c,(hl)			;3950	4e 	N 
	ld b,l			;3951	45 	E 
	jr nz,$+80		;3952	20 4e 	  N 
	ld c,a			;3954	4f 	O 
	ld l,000h		;3955	2e 00 	. . 
	ld c,l			;3957	4d 	M 
	ld b,l			;3958	45 	E 
	ld c,l			;3959	4d 	M 
	ld c,a			;395a	4f 	O 
	ld d,d			;395b	52 	R 
	ld e,c			;395c	59 	Y 
	jr nz,l39aeh		;395d	20 4f 	  O 
	ld d,(hl)			;395f	56 	V 
	ld b,l			;3960	45 	E 
	ld d,d			;3961	52 	R 
	nop			;3962	00 	. 
	ld d,e			;3963	53 	S 
	ld e,c			;3964	59 	Y 
	ld c,(hl)			;3965	4e 	N 
	ld d,h			;3966	54 	T 
	ld b,c			;3967	41 	A 
	ld e,b			;3968	58 	X 
	nop			;3969	00 	. 
	ld d,d			;396a	52 	R 
	ld b,l			;396b	45 	E 
	ld c,(hl)			;396c	4e 	N 
	ld d,l			;396d	55 	U 
	ld c,l			;396e	4d 	M 
	ld b,d			;396f	42 	B 
	ld b,l			;3970	45 	E 
	ld d,d			;3971	52 	R 
	nop			;3972	00 	. 
	ld b,h			;3973	44 	D 
	ld b,l			;3974	45 	E 
	ld c,h			;3975	4c 	L 
	ld b,l			;3976	45 	E 
	ld d,h			;3977	54 	T 
	ld b,l			;3978	45 	E 
	nop			;3979	00 	. 
	ld c,h			;397a	4c 	L 
	ld c,c			;397b	49 	I 
	ld d,e			;397c	53 	S 
	ld d,h			;397d	54 	T 
	nop			;397e	00 	. 
	ld b,l			;397f	45 	E 
	ld d,d			;3980	52 	R 
	ld d,d			;3981	52 	R 
	ld c,a			;3982	4f 	O 
	ld d,d			;3983	52 	R 
	nop			;3984	00 	. 
	ld bc,l0010h		;3985	01 10 00 	. . . 
	ld de,07b00h		;3988	11 00 7b 	. . { 
	ld hl,079d0h		;398b	21 d0 79 	! . y 
	ldir		;398e	ed b0 	. . 
	ld hl,07f30h		;3990	21 30 7f 	! 0  
	jr l39a3h		;3993	18 0e 	. . 
	ld bc,l0010h		;3995	01 10 00 	. . . 
	ld de,079d0h		;3998	11 d0 79 	. . y 
	ld hl,07b00h		;399b	21 00 7b 	! . { 
	ldir		;399e	ed b0 	. . 
	ld de,07f30h		;39a0	11 30 7f 	. 0  
l39a3h:
	ld c,010h		;39a3	0e 10 	. . 
	ldir		;39a5	ed b0 	. . 
	ld de,(079e1h)		;39a7	ed 5b e1 79 	. [ . y 
	ld hl,(07973h)		;39ab	2a 73 79 	* s y 
l39aeh:
	ld (079e1h),hl		;39ae	22 e1 79 	" . y 
	ld (07973h),de		;39b1	ed 53 73 79 	. S s y 
	ld de,(079e3h)		;39b5	ed 5b e3 79 	. [ . y 
	ld hl,(07975h)		;39b9	2a 75 79 	* u y 
	ld (079e3h),hl		;39bc	22 e3 79 	" . y 
	ld (07975h),de		;39bf	ed 53 75 79 	. S u y 
	ret			;39c3	c9 	. 
	ld hl,(079e1h)		;39c4	2a e1 79 	* . y 
	inc hl			;39c7	23 	# 
	ld (07f3ah),hl		;39c8	22 3a 7f 	" :  
	ld hl,079d9h		;39cb	21 d9 79 	! . y 
	res 1,(hl)		;39ce	cb 8e 	. . 
	res 3,(hl)		;39d0	cb 9e 	. . 
	xor a			;39d2	af 	. 
	ld (079dah),a		;39d3	32 da 79 	2 . y 
	ld (07f35h),a		;39d6	32 35 7f 	2 5  
	ld a,020h		;39d9	3e 20 	>   
	ld b,060h		;39db	06 60 	. ` 
	ld de,l0000h		;39dd	11 00 00 	. . . 
	call 086b3h		;39e0	cd b3 86 	. . . 
	ld b,00bh		;39e3	06 0b 	. . 
	ld de,l0000h		;39e5	11 00 00 	. . . 
	ld hl,0b9f5h		;39e8	21 f5 b9 	! . . 
	call 084cdh		;39eb	cd cd 84 	. . . 
	xor a			;39ee	af 	. 
	ld (07923h),a		;39ef	32 23 79 	2 # y 
	jp 0a7f0h		;39f2	c3 f0 a7 	. . . 
	ld d,h			;39f5	54 	T 
	ld b,l			;39f6	45 	E 
	ld e,b			;39f7	58 	X 
	ld d,h			;39f8	54 	T 
	jr nz,$+71		;39f9	20 45 	  E 
	ld b,h			;39fb	44 	D 
	ld c,c			;39fc	49 	I 
	ld d,h			;39fd	54 	T 
	ld c,a			;39fe	4f 	O 
	ld d,d			;39ff	52 	R 
	push af			;3a00	f5 	. 
	pop iy		;3a01	fd e1 	. . 
	in a,(019h)		;3a03	db 19 	. . 
	push af			;3a05	f5 	. 
	push iy		;3a06	fd e5 	. . 
	pop af			;3a08	f1 	. 
	out (019h),a		;3a09	d3 19 	. . 
	ldir		;3a0b	ed b0 	. . 
	pop af			;3a0d	f1 	. 
	out (019h),a		;3a0e	d3 19 	. . 
	ret			;3a10	c9 	. 
	ld hl,0796eh		;3a11	21 6e 79 	! n y 
	cp 0feh		;3a14	fe fe 	. . 
	jr nz,l3a51h		;3a16	20 39 	  9 
	ld a,(07907h)		;3a18	3a 07 79 	: . y 
	cp 098h		;3a1b	fe 98 	. . 
	jr nc,l3a41h		;3a1d	30 22 	0 " 
	cp 095h		;3a1f	fe 95 	. . 
	jr c,l3a5fh		;3a21	38 3c 	8 < 
	bit 7,(hl)		;3a23	cb 7e 	. ~ 
	jr z,l3a5fh		;3a25	28 38 	( 8 
	sbc a,00bh		;3a27	de 0b 	. . 
l3a29h:
	res 7,(hl)		;3a29	cb be 	. . 
	ld (07907h),a		;3a2b	32 07 79 	2 . y 
	ld b,a			;3a2e	47 	G 
	call 0bee9h		;3a2f	cd e9 be 	. . . 
	ld (07908h),de		;3a32	ed 53 08 79 	. S . y 
	ld a,b			;3a36	78 	x 
	ld (0790ah),a		;3a37	32 0a 79 	2 . y 
	ld a,0feh		;3a3a	3e fe 	> . 
	ld hl,0796eh		;3a3c	21 6e 79 	! n y 
	jr l3a62h		;3a3f	18 21 	. ! 
l3a41h:
	cp 0a0h		;3a41	fe a0 	. . 
	jr nc,l3a5fh		;3a43	30 1a 	0 . 
	cp 09dh		;3a45	fe 9d 	. . 
	jr c,l3a5fh		;3a47	38 16 	8 . 
	bit 7,(hl)		;3a49	cb 7e 	. ~ 
	jr z,l3a5fh		;3a4b	28 12 	( . 
	sbc a,010h		;3a4d	de 10 	. . 
	jr l3a29h		;3a4f	18 d8 	. . 
l3a51h:
	cp 0f5h		;3a51	fe f5 	. . 
	jr z,l3a59h		;3a53	28 04 	( . 
	cp 0f6h		;3a55	fe f6 	. . 
	jr nz,l3a62h		;3a57	20 09 	  . 
l3a59h:
	ld a,(hl)			;3a59	7e 	~ 
	xor 080h		;3a5a	ee 80 	. . 
	ld (hl),a			;3a5c	77 	w 
	xor a			;3a5d	af 	. 
	ret			;3a5e	c9 	. 
l3a5fh:
	ld a,(07906h)		;3a5f	3a 06 79 	: . y 
l3a62h:
	scf			;3a62	37 	7 
	ret			;3a63	c9 	. 
	nop			;3a64	00 	. 
	nop			;3a65	00 	. 
	nop			;3a66	00 	. 
	nop			;3a67	00 	. 
	nop			;3a68	00 	. 
	nop			;3a69	00 	. 
	nop			;3a6a	00 	. 
	nop			;3a6b	00 	. 
	nop			;3a6c	00 	. 
	nop			;3a6d	00 	. 
	nop			;3a6e	00 	. 
	nop			;3a6f	00 	. 
	nop			;3a70	00 	. 
	nop			;3a71	00 	. 
	nop			;3a72	00 	. 
	nop			;3a73	00 	. 
	nop			;3a74	00 	. 
	nop			;3a75	00 	. 
	nop			;3a76	00 	. 
	nop			;3a77	00 	. 
	nop			;3a78	00 	. 
	nop			;3a79	00 	. 
	nop			;3a7a	00 	. 
	nop			;3a7b	00 	. 
	nop			;3a7c	00 	. 
	nop			;3a7d	00 	. 
	nop			;3a7e	00 	. 
	nop			;3a7f	00 	. 
	nop			;3a80	00 	. 
	nop			;3a81	00 	. 
	nop			;3a82	00 	. 
	nop			;3a83	00 	. 
	nop			;3a84	00 	. 
	nop			;3a85	00 	. 
	nop			;3a86	00 	. 
	nop			;3a87	00 	. 
	nop			;3a88	00 	. 
	nop			;3a89	00 	. 
	nop			;3a8a	00 	. 
	nop			;3a8b	00 	. 
	nop			;3a8c	00 	. 
	nop			;3a8d	00 	. 
	nop			;3a8e	00 	. 
	nop			;3a8f	00 	. 
	nop			;3a90	00 	. 
	nop			;3a91	00 	. 
	nop			;3a92	00 	. 
	nop			;3a93	00 	. 
	nop			;3a94	00 	. 
	nop			;3a95	00 	. 
	nop			;3a96	00 	. 
	nop			;3a97	00 	. 
	nop			;3a98	00 	. 
	nop			;3a99	00 	. 
	nop			;3a9a	00 	. 
	nop			;3a9b	00 	. 
	nop			;3a9c	00 	. 
	nop			;3a9d	00 	. 
	nop			;3a9e	00 	. 
	nop			;3a9f	00 	. 
	nop			;3aa0	00 	. 
	nop			;3aa1	00 	. 
	nop			;3aa2	00 	. 
	nop			;3aa3	00 	. 
	nop			;3aa4	00 	. 
	nop			;3aa5	00 	. 
	nop			;3aa6	00 	. 
	nop			;3aa7	00 	. 
	nop			;3aa8	00 	. 
	nop			;3aa9	00 	. 
	nop			;3aaa	00 	. 
	nop			;3aab	00 	. 
	nop			;3aac	00 	. 
	nop			;3aad	00 	. 
	nop			;3aae	00 	. 
	nop			;3aaf	00 	. 
	nop			;3ab0	00 	. 
	nop			;3ab1	00 	. 
	nop			;3ab2	00 	. 
	nop			;3ab3	00 	. 
	nop			;3ab4	00 	. 
	nop			;3ab5	00 	. 
	nop			;3ab6	00 	. 
	nop			;3ab7	00 	. 
	nop			;3ab8	00 	. 
	nop			;3ab9	00 	. 
	nop			;3aba	00 	. 
	nop			;3abb	00 	. 
	nop			;3abc	00 	. 
	nop			;3abd	00 	. 
	nop			;3abe	00 	. 
	nop			;3abf	00 	. 
	nop			;3ac0	00 	. 
	nop			;3ac1	00 	. 
	nop			;3ac2	00 	. 
	nop			;3ac3	00 	. 
	nop			;3ac4	00 	. 
	nop			;3ac5	00 	. 
	nop			;3ac6	00 	. 
	nop			;3ac7	00 	. 
	nop			;3ac8	00 	. 
	nop			;3ac9	00 	. 
	nop			;3aca	00 	. 
	nop			;3acb	00 	. 
	nop			;3acc	00 	. 
	nop			;3acd	00 	. 
	nop			;3ace	00 	. 
	nop			;3acf	00 	. 
	nop			;3ad0	00 	. 
	nop			;3ad1	00 	. 
	nop			;3ad2	00 	. 
	nop			;3ad3	00 	. 
	nop			;3ad4	00 	. 
	nop			;3ad5	00 	. 
	nop			;3ad6	00 	. 
	nop			;3ad7	00 	. 
	nop			;3ad8	00 	. 
	nop			;3ad9	00 	. 
	nop			;3ada	00 	. 
	nop			;3adb	00 	. 
	nop			;3adc	00 	. 
	nop			;3add	00 	. 
	nop			;3ade	00 	. 
	nop			;3adf	00 	. 
	nop			;3ae0	00 	. 
	nop			;3ae1	00 	. 
	nop			;3ae2	00 	. 
	nop			;3ae3	00 	. 
	nop			;3ae4	00 	. 
	nop			;3ae5	00 	. 
	nop			;3ae6	00 	. 
	nop			;3ae7	00 	. 
	nop			;3ae8	00 	. 
	nop			;3ae9	00 	. 
	nop			;3aea	00 	. 
	nop			;3aeb	00 	. 
	nop			;3aec	00 	. 
	nop			;3aed	00 	. 
	nop			;3aee	00 	. 
	nop			;3aef	00 	. 
	nop			;3af0	00 	. 
	nop			;3af1	00 	. 
	nop			;3af2	00 	. 
	nop			;3af3	00 	. 
	nop			;3af4	00 	. 
	nop			;3af5	00 	. 
	nop			;3af6	00 	. 
	nop			;3af7	00 	. 
	nop			;3af8	00 	. 
	nop			;3af9	00 	. 
	nop			;3afa	00 	. 
	nop			;3afb	00 	. 
	nop			;3afc	00 	. 
	nop			;3afd	00 	. 
	nop			;3afe	00 	. 
	nop			;3aff	00 	. 
l3b00h:
	nop			;3b00	00 	. 
	nop			;3b01	00 	. 
	nop			;3b02	00 	. 
	nop			;3b03	00 	. 
	nop			;3b04	00 	. 
	nop			;3b05	00 	. 
	nop			;3b06	00 	. 
	nop			;3b07	00 	. 
	nop			;3b08	00 	. 
	nop			;3b09	00 	. 
	nop			;3b0a	00 	. 
	nop			;3b0b	00 	. 
	nop			;3b0c	00 	. 
	nop			;3b0d	00 	. 
	nop			;3b0e	00 	. 
	nop			;3b0f	00 	. 
	nop			;3b10	00 	. 
	nop			;3b11	00 	. 
	nop			;3b12	00 	. 
	nop			;3b13	00 	. 
	nop			;3b14	00 	. 
	nop			;3b15	00 	. 
	nop			;3b16	00 	. 
	nop			;3b17	00 	. 
	nop			;3b18	00 	. 
	nop			;3b19	00 	. 
	nop			;3b1a	00 	. 
	nop			;3b1b	00 	. 
	nop			;3b1c	00 	. 
	nop			;3b1d	00 	. 
	nop			;3b1e	00 	. 
	nop			;3b1f	00 	. 
	nop			;3b20	00 	. 
	nop			;3b21	00 	. 
	nop			;3b22	00 	. 
	nop			;3b23	00 	. 
	nop			;3b24	00 	. 
	nop			;3b25	00 	. 
	nop			;3b26	00 	. 
	nop			;3b27	00 	. 
	nop			;3b28	00 	. 
	nop			;3b29	00 	. 
	nop			;3b2a	00 	. 
	nop			;3b2b	00 	. 
	nop			;3b2c	00 	. 
	nop			;3b2d	00 	. 
	nop			;3b2e	00 	. 
	nop			;3b2f	00 	. 
	nop			;3b30	00 	. 
	nop			;3b31	00 	. 
	nop			;3b32	00 	. 
	nop			;3b33	00 	. 
	nop			;3b34	00 	. 
	nop			;3b35	00 	. 
	nop			;3b36	00 	. 
	nop			;3b37	00 	. 
	nop			;3b38	00 	. 
	nop			;3b39	00 	. 
	nop			;3b3a	00 	. 
	nop			;3b3b	00 	. 
	nop			;3b3c	00 	. 
	nop			;3b3d	00 	. 
	nop			;3b3e	00 	. 
	nop			;3b3f	00 	. 
	nop			;3b40	00 	. 
	nop			;3b41	00 	. 
	nop			;3b42	00 	. 
	nop			;3b43	00 	. 
	nop			;3b44	00 	. 
	nop			;3b45	00 	. 
	nop			;3b46	00 	. 
	nop			;3b47	00 	. 
	nop			;3b48	00 	. 
	nop			;3b49	00 	. 
	nop			;3b4a	00 	. 
	nop			;3b4b	00 	. 
	nop			;3b4c	00 	. 
	nop			;3b4d	00 	. 
	nop			;3b4e	00 	. 
	nop			;3b4f	00 	. 
	nop			;3b50	00 	. 
	nop			;3b51	00 	. 
	nop			;3b52	00 	. 
	nop			;3b53	00 	. 
	nop			;3b54	00 	. 
	nop			;3b55	00 	. 
	nop			;3b56	00 	. 
	nop			;3b57	00 	. 
	nop			;3b58	00 	. 
	nop			;3b59	00 	. 
	nop			;3b5a	00 	. 
	nop			;3b5b	00 	. 
	nop			;3b5c	00 	. 
	nop			;3b5d	00 	. 
	nop			;3b5e	00 	. 
	nop			;3b5f	00 	. 
	nop			;3b60	00 	. 
	nop			;3b61	00 	. 
	nop			;3b62	00 	. 
	nop			;3b63	00 	. 
	nop			;3b64	00 	. 
	nop			;3b65	00 	. 
	nop			;3b66	00 	. 
	nop			;3b67	00 	. 
	nop			;3b68	00 	. 
	nop			;3b69	00 	. 
	nop			;3b6a	00 	. 
	nop			;3b6b	00 	. 
	nop			;3b6c	00 	. 
	nop			;3b6d	00 	. 
	nop			;3b6e	00 	. 
	nop			;3b6f	00 	. 
	nop			;3b70	00 	. 
	nop			;3b71	00 	. 
	nop			;3b72	00 	. 
	nop			;3b73	00 	. 
	nop			;3b74	00 	. 
	nop			;3b75	00 	. 
	nop			;3b76	00 	. 
	nop			;3b77	00 	. 
	nop			;3b78	00 	. 
	nop			;3b79	00 	. 
	nop			;3b7a	00 	. 
	nop			;3b7b	00 	. 
	nop			;3b7c	00 	. 
	nop			;3b7d	00 	. 
	nop			;3b7e	00 	. 
	nop			;3b7f	00 	. 
	nop			;3b80	00 	. 
	nop			;3b81	00 	. 
	nop			;3b82	00 	. 
	nop			;3b83	00 	. 
	nop			;3b84	00 	. 
	nop			;3b85	00 	. 
	nop			;3b86	00 	. 
	nop			;3b87	00 	. 
	nop			;3b88	00 	. 
	nop			;3b89	00 	. 
	nop			;3b8a	00 	. 
	nop			;3b8b	00 	. 
	nop			;3b8c	00 	. 
	nop			;3b8d	00 	. 
	nop			;3b8e	00 	. 
	nop			;3b8f	00 	. 
	nop			;3b90	00 	. 
	nop			;3b91	00 	. 
	nop			;3b92	00 	. 
	nop			;3b93	00 	. 
	nop			;3b94	00 	. 
	nop			;3b95	00 	. 
	nop			;3b96	00 	. 
	nop			;3b97	00 	. 
	nop			;3b98	00 	. 
	nop			;3b99	00 	. 
	nop			;3b9a	00 	. 
	nop			;3b9b	00 	. 
	nop			;3b9c	00 	. 
	nop			;3b9d	00 	. 
	nop			;3b9e	00 	. 
	nop			;3b9f	00 	. 
	nop			;3ba0	00 	. 
	nop			;3ba1	00 	. 
	nop			;3ba2	00 	. 
	nop			;3ba3	00 	. 
	nop			;3ba4	00 	. 
	nop			;3ba5	00 	. 
	nop			;3ba6	00 	. 
	nop			;3ba7	00 	. 
	nop			;3ba8	00 	. 
	nop			;3ba9	00 	. 
	nop			;3baa	00 	. 
	nop			;3bab	00 	. 
	nop			;3bac	00 	. 
	nop			;3bad	00 	. 
	nop			;3bae	00 	. 
	nop			;3baf	00 	. 
	nop			;3bb0	00 	. 
	nop			;3bb1	00 	. 
	nop			;3bb2	00 	. 
	nop			;3bb3	00 	. 
	nop			;3bb4	00 	. 
	nop			;3bb5	00 	. 
	nop			;3bb6	00 	. 
	nop			;3bb7	00 	. 
	nop			;3bb8	00 	. 
	nop			;3bb9	00 	. 
	nop			;3bba	00 	. 
	nop			;3bbb	00 	. 
	nop			;3bbc	00 	. 
	nop			;3bbd	00 	. 
	nop			;3bbe	00 	. 
	nop			;3bbf	00 	. 
	nop			;3bc0	00 	. 
	nop			;3bc1	00 	. 
	nop			;3bc2	00 	. 
	nop			;3bc3	00 	. 
	nop			;3bc4	00 	. 
	nop			;3bc5	00 	. 
	nop			;3bc6	00 	. 
	nop			;3bc7	00 	. 
	nop			;3bc8	00 	. 
	nop			;3bc9	00 	. 
	nop			;3bca	00 	. 
	nop			;3bcb	00 	. 
	nop			;3bcc	00 	. 
	nop			;3bcd	00 	. 
	nop			;3bce	00 	. 
	nop			;3bcf	00 	. 
	nop			;3bd0	00 	. 
	nop			;3bd1	00 	. 
	nop			;3bd2	00 	. 
	nop			;3bd3	00 	. 
	nop			;3bd4	00 	. 
	nop			;3bd5	00 	. 
	nop			;3bd6	00 	. 
	nop			;3bd7	00 	. 
	nop			;3bd8	00 	. 
	nop			;3bd9	00 	. 
	nop			;3bda	00 	. 
	nop			;3bdb	00 	. 
	nop			;3bdc	00 	. 
	nop			;3bdd	00 	. 
	nop			;3bde	00 	. 
	nop			;3bdf	00 	. 
	nop			;3be0	00 	. 
	nop			;3be1	00 	. 
	nop			;3be2	00 	. 
	nop			;3be3	00 	. 
	nop			;3be4	00 	. 
	nop			;3be5	00 	. 
	nop			;3be6	00 	. 
	nop			;3be7	00 	. 
	nop			;3be8	00 	. 
	nop			;3be9	00 	. 
	nop			;3bea	00 	. 
	nop			;3beb	00 	. 
	nop			;3bec	00 	. 
	nop			;3bed	00 	. 
	nop			;3bee	00 	. 
	nop			;3bef	00 	. 
	nop			;3bf0	00 	. 
	nop			;3bf1	00 	. 
	nop			;3bf2	00 	. 
	nop			;3bf3	00 	. 
	nop			;3bf4	00 	. 
	nop			;3bf5	00 	. 
	nop			;3bf6	00 	. 
	nop			;3bf7	00 	. 
	nop			;3bf8	00 	. 
	nop			;3bf9	00 	. 
	nop			;3bfa	00 	. 
	nop			;3bfb	00 	. 
	nop			;3bfc	00 	. 
	nop			;3bfd	00 	. 
	nop			;3bfe	00 	. 
	nop			;3bff	00 	. 
	nop			;3c00	00 	. 
	nop			;3c01	00 	. 
	nop			;3c02	00 	. 
	nop			;3c03	00 	. 
	nop			;3c04	00 	. 
	nop			;3c05	00 	. 
	nop			;3c06	00 	. 
	nop			;3c07	00 	. 
	nop			;3c08	00 	. 
	nop			;3c09	00 	. 
	nop			;3c0a	00 	. 
	nop			;3c0b	00 	. 
	nop			;3c0c	00 	. 
	nop			;3c0d	00 	. 
	nop			;3c0e	00 	. 
	nop			;3c0f	00 	. 
	nop			;3c10	00 	. 
	nop			;3c11	00 	. 
	nop			;3c12	00 	. 
	nop			;3c13	00 	. 
	nop			;3c14	00 	. 
	nop			;3c15	00 	. 
	nop			;3c16	00 	. 
	nop			;3c17	00 	. 
	nop			;3c18	00 	. 
	nop			;3c19	00 	. 
	nop			;3c1a	00 	. 
	nop			;3c1b	00 	. 
	nop			;3c1c	00 	. 
	nop			;3c1d	00 	. 
	nop			;3c1e	00 	. 
	nop			;3c1f	00 	. 
	nop			;3c20	00 	. 
	nop			;3c21	00 	. 
	nop			;3c22	00 	. 
	nop			;3c23	00 	. 
	nop			;3c24	00 	. 
	nop			;3c25	00 	. 
	nop			;3c26	00 	. 
	nop			;3c27	00 	. 
	nop			;3c28	00 	. 
	nop			;3c29	00 	. 
	nop			;3c2a	00 	. 
	nop			;3c2b	00 	. 
	nop			;3c2c	00 	. 
	nop			;3c2d	00 	. 
	nop			;3c2e	00 	. 
	nop			;3c2f	00 	. 
	nop			;3c30	00 	. 
	nop			;3c31	00 	. 
	nop			;3c32	00 	. 
	nop			;3c33	00 	. 
	nop			;3c34	00 	. 
	nop			;3c35	00 	. 
	nop			;3c36	00 	. 
	nop			;3c37	00 	. 
	nop			;3c38	00 	. 
	nop			;3c39	00 	. 
	nop			;3c3a	00 	. 
	nop			;3c3b	00 	. 
	nop			;3c3c	00 	. 
	nop			;3c3d	00 	. 
	nop			;3c3e	00 	. 
	nop			;3c3f	00 	. 
	nop			;3c40	00 	. 
	nop			;3c41	00 	. 
	nop			;3c42	00 	. 
	nop			;3c43	00 	. 
	nop			;3c44	00 	. 
	nop			;3c45	00 	. 
	nop			;3c46	00 	. 
	nop			;3c47	00 	. 
	nop			;3c48	00 	. 
	nop			;3c49	00 	. 
	nop			;3c4a	00 	. 
	nop			;3c4b	00 	. 
	nop			;3c4c	00 	. 
	nop			;3c4d	00 	. 
	nop			;3c4e	00 	. 
	call 09249h		;3c4f	cd 49 92 	. I . 
	ld (bc),a			;3c52	02 	. 
	rst 10h			;3c53	d7 	. 
	cp 0cdh		;3c54	fe cd 	. . 
	ld c,c			;3c56	49 	I 
	sub d			;3c57	92 	. 
	ld (bc),a			;3c58	02 	. 
	djnz $+1		;3c59	10 ff 	. . 
	call 09249h		;3c5b	cd 49 92 	. I . 
	ld (bc),a			;3c5e	02 	. 
	ld sp,0cdffh		;3c5f	31 ff cd 	1 . . 
	ld c,c			;3c62	49 	I 
	sub d			;3c63	92 	. 
	ld (bc),a			;3c64	02 	. 
	inc (hl)			;3c65	34 	4 
	rst 38h			;3c66	ff 	. 
	call 09249h		;3c67	cd 49 92 	. I . 
	ld (bc),a			;3c6a	02 	. 
	ld a,(0cdffh)		;3c6b	3a ff cd 	: . . 
	ld c,c			;3c6e	49 	I 
	sub d			;3c6f	92 	. 
	dec b			;3c70	05 	. 
	jp m,0cdffh		;3c71	fa ff cd 	. . . 
	ld c,c			;3c74	49 	I 
	sub d			;3c75	92 	. 
	ld (bc),a			;3c76	02 	. 
	ld d,l			;3c77	55 	U 
	rst 38h			;3c78	ff 	. 
	call 09249h		;3c79	cd 49 92 	. I . 
	ld (bc),a			;3c7c	02 	. 
	ld bc,0cdffh		;3c7d	01 ff cd 	. . . 
	ld c,c			;3c80	49 	I 
	sub d			;3c81	92 	. 
	ld (bc),a			;3c82	02 	. 
	inc b			;3c83	04 	. 
	rst 38h			;3c84	ff 	. 
	call 09249h		;3c85	cd 49 92 	. I . 
	ld (bc),a			;3c88	02 	. 
	rlca			;3c89	07 	. 
	rst 38h			;3c8a	ff 	. 
	call 09249h		;3c8b	cd 49 92 	. I . 
	ld (bc),a			;3c8e	02 	. 
	ld a,(bc)			;3c8f	0a 	. 
	rst 38h			;3c90	ff 	. 
	jp 0ba11h		;3c91	c3 11 ba 	. . . 
	call 09249h		;3c94	cd 49 92 	. I . 
	inc b			;3c97	04 	. 
	pop de			;3c98	d1 	. 
	rst 38h			;3c99	ff 	. 
	call 09249h		;3c9a	cd 49 92 	. I . 
	ld bc,0ff17h		;3c9d	01 17 ff 	. . . 
	jp 0ba00h		;3ca0	c3 00 ba 	. . . 
	call 09249h		;3ca3	cd 49 92 	. I . 
	inc b			;3ca6	04 	. 
	xor 0ffh		;3ca7	ee ff 	. . 
	call 09441h		;3ca9	cd 41 94 	. A . 
	call 0992dh		;3cac	cd 2d 99 	. - . 
	call 0a0dfh		;3caf	cd df a0 	. . . 
	call 09249h		;3cb2	cd 49 92 	. I . 
	ld (bc),a			;3cb5	02 	. 
	ret m			;3cb6	f8 	. 
	cp 0c3h		;3cb7	fe c3 	. . 
	cpl			;3cb9	2f 	/ 
	sub h			;3cba	94 	. 
	jp 09439h		;3cbb	c3 39 94 	. 9 . 
	call 09249h		;3cbe	cd 49 92 	. I . 
	inc b			;3cc1	04 	. 
	set 7,a		;3cc2	cb ff 	. . 
	call 09249h		;3cc4	cd 49 92 	. I . 
	inc bc			;3cc7	03 	. 
	cp b			;3cc8	b8 	. 
	rst 38h			;3cc9	ff 	. 
	call 09249h		;3cca	cd 49 92 	. I . 
	inc bc			;3ccd	03 	. 
	cp e			;3cce	bb 	. 
	rst 38h			;3ccf	ff 	. 
	call 09249h		;3cd0	cd 49 92 	. I . 
	inc b			;3cd3	04 	. 
	adc a,0ffh		;3cd4	ce ff 	. . 
	jp 08d04h		;3cd6	c3 04 8d 	. . . 
	jp 0a4fch		;3cd9	c3 fc a4 	. . . 
	jp 09c1ah		;3cdc	c3 1a 9c 	. . . 
	jp 0911dh		;3cdf	c3 1d 91 	. . . 
	jp 08fb6h		;3ce2	c3 b6 8f 	. . . 
	jp 08fbah		;3ce5	c3 ba 8f 	. . . 
	jp 08db9h		;3ce8	c3 b9 8d 	. . . 
	jp 08dd7h		;3ceb	c3 d7 8d 	. . . 
	jp 09211h		;3cee	c3 11 92 	. . . 
	call 09249h		;3cf1	cd 49 92 	. I . 
	inc bc			;3cf4	03 	. 
	cp (hl)			;3cf5	be 	. 
	rst 38h			;3cf6	ff 	. 
	call 09249h		;3cf7	cd 49 92 	. I . 
	inc bc			;3cfa	03 	. 
	pop bc			;3cfb	c1 	. 
	rst 38h			;3cfc	ff 	. 
	jp 0879fh		;3cfd	c3 9f 87 	. . . 
	jp 08620h		;3d00	c3 20 86 	.   . 
	call 09249h		;3d03	cd 49 92 	. I . 
	inc bc			;3d06	03 	. 
	out (0ffh),a		;3d07	d3 ff 	. . 
	call 09249h		;3d09	cd 49 92 	. I . 
	inc bc			;3d0c	03 	. 
	sub 0ffh		;3d0d	d6 ff 	. . 
	call 09249h		;3d0f	cd 49 92 	. I . 
	inc bc			;3d12	03 	. 
	exx			;3d13	d9 	. 
	rst 38h			;3d14	ff 	. 
	jp 08e9eh		;3d15	c3 9e 8e 	. . . 
	jp 08de3h		;3d18	c3 e3 8d 	. . . 
	call 09249h		;3d1b	cd 49 92 	. I . 
	ld bc,0ff37h		;3d1e	01 37 ff 	. 7 . 
	call 09249h		;3d21	cd 49 92 	. I . 
	ld bc,0ff3ah		;3d24	01 3a ff 	. : . 
	call 09249h		;3d27	cd 49 92 	. I . 
	ld bc,0ff3dh		;3d2a	01 3d ff 	. = . 
	call 09249h		;3d2d	cd 49 92 	. I . 
	ld bc,09351h		;3d30	01 51 93 	. Q . 
	jp 09341h		;3d33	c3 41 93 	. A . 
	jp 08d23h		;3d36	c3 23 8d 	. # . 
	jp 0927fh		;3d39	c3 7f 92 	.  . 
	call 09249h		;3d3c	cd 49 92 	. I . 
	inc b			;3d3f	04 	. 
	defb 0fdh,0ffh,0cdh	;illegal sequence		;3d40	fd ff cd 	. . . 
	ld c,c			;3d43	49 	I 
	sub d			;3d44	92 	. 
	ld (bc),a			;3d45	02 	. 
	cp 0feh		;3d46	fe fe 	. . 
	jp 09913h		;3d48	c3 13 99 	. . . 
	call 09249h		;3d4b	cd 49 92 	. I . 
	ld bc,0ff40h		;3d4e	01 40 ff 	. @ . 
	call 09249h		;3d51	cd 49 92 	. I . 
	ld bc,0ff43h		;3d54	01 43 ff 	. C . 
	jp 08bfdh		;3d57	c3 fd 8b 	. . . 
	call 09249h		;3d5a	cd 49 92 	. I . 
	ld (bc),a			;3d5d	02 	. 
	inc e			;3d5e	1c 	. 
	rst 38h			;3d5f	ff 	. 
	call 09249h		;3d60	cd 49 92 	. I . 
	inc b			;3d63	04 	. 
	pop af			;3d64	f1 	. 
	rst 38h			;3d65	ff 	. 
	jp 0ac8ch		;3d66	c3 8c ac 	. . . 
	call 09249h		;3d69	cd 49 92 	. I . 
	inc bc			;3d6c	03 	. 
	rst 18h			;3d6d	df 	. 
	rst 38h			;3d6e	ff 	. 
	call 09249h		;3d6f	cd 49 92 	. I . 
	ld bc,0ff4ch		;3d72	01 4c ff 	. L . 
	call 09249h		;3d75	cd 49 92 	. I . 
	ld bc,0ff4fh		;3d78	01 4f ff 	. O . 
	call 09249h		;3d7b	cd 49 92 	. I . 
	ld bc,0ff9ah		;3d7e	01 9a ff 	. . . 
	call 09249h		;3d81	cd 49 92 	. I . 
	ld bc,0ff52h		;3d84	01 52 ff 	. R . 
	call 09249h		;3d87	cd 49 92 	. I . 
	ld bc,0ff55h		;3d8a	01 55 ff 	. U . 
	call 09249h		;3d8d	cd 49 92 	. I . 
	ld bc,0ff58h		;3d90	01 58 ff 	. X . 
	call 09249h		;3d93	cd 49 92 	. I . 
	ld bc,0ff5bh		;3d96	01 5b ff 	. [ . 
	call 09249h		;3d99	cd 49 92 	. I . 
	ld bc,0ff5eh		;3d9c	01 5e ff 	. ^ . 
	call 09249h		;3d9f	cd 49 92 	. I . 
	ld bc,0ff61h		;3da2	01 61 ff 	. a . 
	call 09249h		;3da5	cd 49 92 	. I . 
	ld bc,0ff64h		;3da8	01 64 ff 	. d . 
	call 09249h		;3dab	cd 49 92 	. I . 
	ld (bc),a			;3dae	02 	. 
	ld e,(hl)			;3daf	5e 	^ 
	rst 38h			;3db0	ff 	. 
	call 09249h		;3db1	cd 49 92 	. I . 
	inc b			;3db4	04 	. 
	exx			;3db5	d9 	. 
	rst 38h			;3db6	ff 	. 
	call 09249h		;3db7	cd 49 92 	. I . 
	inc b			;3dba	04 	. 
	call c,0cdffh		;3dbb	dc ff cd 	. . . 
	ld c,c			;3dbe	49 	I 
	sub d			;3dbf	92 	. 
	inc b			;3dc0	04 	. 
	jp m,0cdffh		;3dc1	fa ff cd 	. . . 
	ld c,c			;3dc4	49 	I 
	sub d			;3dc5	92 	. 
	inc b			;3dc6	04 	. 
	rst 18h			;3dc7	df 	. 
	rst 38h			;3dc8	ff 	. 
	call 09249h		;3dc9	cd 49 92 	. I . 
	inc b			;3dcc	04 	. 
	jp po,0cdffh		;3dcd	e2 ff cd 	. . . 
	ld c,c			;3dd0	49 	I 
	sub d			;3dd1	92 	. 
	inc b			;3dd2	04 	. 
	call p,0cdffh		;3dd3	f4 ff cd 	. . . 
	ld c,c			;3dd6	49 	I 
	sub d			;3dd7	92 	. 
	inc b			;3dd8	04 	. 
	push hl			;3dd9	e5 	. 
	rst 38h			;3dda	ff 	. 
	call 09249h		;3ddb	cd 49 92 	. I . 
	inc b			;3dde	04 	. 
	ret pe			;3ddf	e8 	. 
	rst 38h			;3de0	ff 	. 
	call 09249h		;3de1	cd 49 92 	. I . 
	ld bc,0ffd0h		;3de4	01 d0 ff 	. . . 
	jp 0a796h		;3de7	c3 96 a7 	. . . 
	jp 0a7a9h		;3dea	c3 a9 a7 	. . . 
	jp 0adc1h		;3ded	c3 c1 ad 	. . . 
	jp 09328h		;3df0	c3 28 93 	. ( . 
	jp 0a7d0h		;3df3	c3 d0 a7 	. . . 
	jp 0acafh		;3df6	c3 af ac 	. . . 
	call 09249h		;3df9	cd 49 92 	. I . 
	inc bc			;3dfc	03 	. 
	xor 0ffh		;3dfd	ee ff 	. . 
	call 09249h		;3dff	cd 49 92 	. I . 
	ld bc,0ff8eh		;3e02	01 8e ff 	. . . 
	jp 0ae71h		;3e05	c3 71 ae 	. q . 
	jp 0a65bh		;3e08	c3 5b a6 	. [ . 
	call 09249h		;3e0b	cd 49 92 	. I . 
	ld bc,0ff20h		;3e0e	01 20 ff 	.   . 
	call 09249h		;3e11	cd 49 92 	. I . 
	ld bc,0ff1dh		;3e14	01 1d ff 	. . . 
	call 09249h		;3e17	cd 49 92 	. I . 
	ld (bc),a			;3e1a	02 	. 
	scf			;3e1b	37 	7 
	xor c			;3e1c	a9 	. 
	call 09249h		;3e1d	cd 49 92 	. I . 
	ld bc,0b7c1h		;3e20	01 c1 b7 	. . . 
	jp 09415h		;3e23	c3 15 94 	. . . 
	jp 0ac3bh		;3e26	c3 3b ac 	. ; . 
	jp 0ae91h		;3e29	c3 91 ae 	. . . 
	jp 098fah		;3e2c	c3 fa 98 	. . . 
	jp 0941fh		;3e2f	c3 1f 94 	. . . 
	call 09249h		;3e32	cd 49 92 	. I . 
	ld bc,0934ah		;3e35	01 4a 93 	. J . 
	jp 0a7f4h		;3e38	c3 f4 a7 	. . . 
	call 09249h		;3e3b	cd 49 92 	. I . 
	ld (bc),a			;3e3e	02 	. 
	jr z,$+1		;3e3f	28 ff 	( . 
	jp 09333h		;3e41	c3 33 93 	. 3 . 
	jp 092feh		;3e44	c3 fe 92 	. . . 
	jp 0a752h		;3e47	c3 52 a7 	. R . 
	jp 0a72eh		;3e4a	c3 2e a7 	. . . 
	call 09249h		;3e4d	cd 49 92 	. I . 
	ld (bc),a			;3e50	02 	. 
	dec hl			;3e51	2b 	+ 
	rst 38h			;3e52	ff 	. 
	jp 08881h		;3e53	c3 81 88 	. . . 
	jp 08c1fh		;3e56	c3 1f 8c 	. . . 
	jp 0b02eh		;3e59	c3 2e b0 	. . . 
	jp 09935h		;3e5c	c3 35 99 	. 5 . 
	jp 0843ah		;3e5f	c3 3a 84 	. : . 
	jp 08468h		;3e62	c3 68 84 	. h . 
	jp 085b7h		;3e65	c3 b7 85 	. . . 
	jp 0a85bh		;3e68	c3 5b a8 	. [ . 
	jp 0b3c2h		;3e6b	c3 c2 b3 	. . . 
	call 09249h		;3e6e	cd 49 92 	. I . 
	ld (bc),a			;3e71	02 	. 
	ld l,0ffh		;3e72	2e ff 	. . 
	call 09249h		;3e74	cd 49 92 	. I . 
	ld bc,0a0bbh		;3e77	01 bb a0 	. . . 
	call 09249h		;3e7a	cd 49 92 	. I . 
	ld (bc),a			;3e7d	02 	. 
	adc a,b			;3e7e	88 	. 
	rst 38h			;3e7f	ff 	. 
	call 09249h		;3e80	cd 49 92 	. I . 
	ld bc,0ffe5h		;3e83	01 e5 ff 	. . . 
	call 09249h		;3e86	cd 49 92 	. I . 
	ld bc,0ff9dh		;3e89	01 9d ff 	. . . 
	call 09249h		;3e8c	cd 49 92 	. I . 
	ld bc,0ffebh		;3e8f	01 eb ff 	. . . 
	jp 08ccdh		;3e92	c3 cd 8c 	. . . 
	call 09249h		;3e95	cd 49 92 	. I . 
	ld (bc),a			;3e98	02 	. 
	adc a,e			;3e99	8b 	. 
	rst 38h			;3e9a	ff 	. 
	call 09249h		;3e9b	cd 49 92 	. I . 
	ld (bc),a			;3e9e	02 	. 
	adc a,(hl)			;3e9f	8e 	. 
	rst 38h			;3ea0	ff 	. 
	call 09249h		;3ea1	cd 49 92 	. I . 
	ld (bc),a			;3ea4	02 	. 
	sub c			;3ea5	91 	. 
	rst 38h			;3ea6	ff 	. 
	call 09249h		;3ea7	cd 49 92 	. I . 
	ld (bc),a			;3eaa	02 	. 
	dec h			;3eab	25 	% 
	rst 38h			;3eac	ff 	. 
	call 09249h		;3ead	cd 49 92 	. I . 
	ld bc,0ffeeh		;3eb0	01 ee ff 	. . . 
	call 09249h		;3eb3	cd 49 92 	. I . 
	ld bc,0fff1h		;3eb6	01 f1 ff 	. . . 
	call 09249h		;3eb9	cd 49 92 	. I . 
	ld (bc),a			;3ebc	02 	. 
	sub a			;3ebd	97 	. 
	rst 38h			;3ebe	ff 	. 
	call 09249h		;3ebf	cd 49 92 	. I . 
	ld (bc),a			;3ec2	02 	. 
	sbc a,d			;3ec3	9a 	. 
	rst 38h			;3ec4	ff 	. 
	call 09249h		;3ec5	cd 49 92 	. I . 
	ld (bc),a			;3ec8	02 	. 
	sbc a,l			;3ec9	9d 	. 
	rst 38h			;3eca	ff 	. 
	call 09249h		;3ecb	cd 49 92 	. I . 
	ld (bc),a			;3ece	02 	. 
	and b			;3ecf	a0 	. 
	rst 38h			;3ed0	ff 	. 
	call 09249h		;3ed1	cd 49 92 	. I . 
	ld (bc),a			;3ed4	02 	. 
	and e			;3ed5	a3 	. 
	rst 38h			;3ed6	ff 	. 
	call 09249h		;3ed7	cd 49 92 	. I . 
	ld (bc),a			;3eda	02 	. 
	and (hl)			;3edb	a6 	. 
	rst 38h			;3edc	ff 	. 
	call 09249h		;3edd	cd 49 92 	. I . 
	ld (bc),a			;3ee0	02 	. 
	xor c			;3ee1	a9 	. 
	rst 38h			;3ee2	ff 	. 
	call 09249h		;3ee3	cd 49 92 	. I . 
	ld bc,0fff4h		;3ee6	01 f4 ff 	. . . 
	call 09249h		;3ee9	cd 49 92 	. I . 
	ld bc,0fff7h		;3eec	01 f7 ff 	. . . 
	call 09249h		;3eef	cd 49 92 	. I . 
	ld (bc),a			;3ef2	02 	. 
	xor h			;3ef3	ac 	. 
	rst 38h			;3ef4	ff 	. 
	call 09249h		;3ef5	cd 49 92 	. I . 
	ld (bc),a			;3ef8	02 	. 
	add a,l			;3ef9	85 	. 
	rst 38h			;3efa	ff 	. 
	call 09249h		;3efb	cd 49 92 	. I . 
	ld (bc),a			;3efe	02 	. 
	xor a			;3eff	af 	. 
	rst 38h			;3f00	ff 	. 
	call 09249h		;3f01	cd 49 92 	. I . 
	ld (bc),a			;3f04	02 	. 
	or d			;3f05	b2 	. 
	rst 38h			;3f06	ff 	. 
	call 09249h		;3f07	cd 49 92 	. I . 
	ld (bc),a			;3f0a	02 	. 
	or l			;3f0b	b5 	. 
	rst 38h			;3f0c	ff 	. 
	call 09249h		;3f0d	cd 49 92 	. I . 
	ld (bc),a			;3f10	02 	. 
	cp b			;3f11	b8 	. 
	rst 38h			;3f12	ff 	. 
	call 09249h		;3f13	cd 49 92 	. I . 
	ld (bc),a			;3f16	02 	. 
	cp e			;3f17	bb 	. 
	rst 38h			;3f18	ff 	. 
	call 09249h		;3f19	cd 49 92 	. I . 
	ld (bc),a			;3f1c	02 	. 
	cp (hl)			;3f1d	be 	. 
	rst 38h			;3f1e	ff 	. 
	call 09249h		;3f1f	cd 49 92 	. I . 
	ld (bc),a			;3f22	02 	. 
	call nz,0cdffh		;3f23	c4 ff cd 	. . . 
	ld c,c			;3f26	49 	I 
	sub d			;3f27	92 	. 
	ld (bc),a			;3f28	02 	. 
	pop bc			;3f29	c1 	. 
	rst 38h			;3f2a	ff 	. 
	call 09249h		;3f2b	cd 49 92 	. I . 
	ld (bc),a			;3f2e	02 	. 
	ld a,h			;3f2f	7c 	| 
	rst 38h			;3f30	ff 	. 
	call 09249h		;3f31	cd 49 92 	. I . 
	ld (bc),a			;3f34	02 	. 
	jp z,0cdffh		;3f35	ca ff cd 	. . . 
	ld c,c			;3f38	49 	I 
	sub d			;3f39	92 	. 
	ld (bc),a			;3f3a	02 	. 
	call 0cdffh		;3f3b	cd ff cd 	. . . 
	ld c,c			;3f3e	49 	I 
	sub d			;3f3f	92 	. 
	ld (bc),a			;3f40	02 	. 
	ret nc			;3f41	d0 	. 
	rst 38h			;3f42	ff 	. 
	call 09249h		;3f43	cd 49 92 	. I . 
	ld (bc),a			;3f46	02 	. 
	out (0ffh),a		;3f47	d3 ff 	. . 
	call 09249h		;3f49	cd 49 92 	. I . 
	ld (bc),a			;3f4c	02 	. 
	sub 0ffh		;3f4d	d6 ff 	. . 
	call 09249h		;3f4f	cd 49 92 	. I . 
	ld (bc),a			;3f52	02 	. 
	exx			;3f53	d9 	. 
	rst 38h			;3f54	ff 	. 
	call 09249h		;3f55	cd 49 92 	. I . 
	ld (bc),a			;3f58	02 	. 
	call c,0cdffh		;3f59	dc ff cd 	. . . 
	ld c,c			;3f5c	49 	I 
	sub d			;3f5d	92 	. 
	ld (bc),a			;3f5e	02 	. 
	rst 18h			;3f5f	df 	. 
	rst 38h			;3f60	ff 	. 
	call 09249h		;3f61	cd 49 92 	. I . 
	ld (bc),a			;3f64	02 	. 
	jp po,0cdffh		;3f65	e2 ff cd 	. . . 
	ld c,c			;3f68	49 	I 
	sub d			;3f69	92 	. 
	ld (bc),a			;3f6a	02 	. 
	push hl			;3f6b	e5 	. 
	rst 38h			;3f6c	ff 	. 
	call 09249h		;3f6d	cd 49 92 	. I . 
	ld (bc),a			;3f70	02 	. 
	ret pe			;3f71	e8 	. 
	rst 38h			;3f72	ff 	. 
	call 09249h		;3f73	cd 49 92 	. I . 
	ld (bc),a			;3f76	02 	. 
	ex de,hl			;3f77	eb 	. 
	rst 38h			;3f78	ff 	. 
	call 09249h		;3f79	cd 49 92 	. I . 
	ld (bc),a			;3f7c	02 	. 
	xor 0ffh		;3f7d	ee ff 	. . 
	call 09249h		;3f7f	cd 49 92 	. I . 
	ld (bc),a			;3f82	02 	. 
	pop af			;3f83	f1 	. 
	rst 38h			;3f84	ff 	. 
	call 09249h		;3f85	cd 49 92 	. I . 
	ld (bc),a			;3f88	02 	. 
	call p,0cdffh		;3f89	f4 ff cd 	. . . 
	ld c,c			;3f8c	49 	I 
	sub d			;3f8d	92 	. 
	ld (bc),a			;3f8e	02 	. 
	rst 30h			;3f8f	f7 	. 
	rst 38h			;3f90	ff 	. 
	call 09249h		;3f91	cd 49 92 	. I . 
	ld (bc),a			;3f94	02 	. 
	jp m,0cdffh		;3f95	fa ff cd 	. . . 
	ld c,c			;3f98	49 	I 
	sub d			;3f99	92 	. 
	inc bc			;3f9a	03 	. 
	pop af			;3f9b	f1 	. 
	rst 38h			;3f9c	ff 	. 
	call 09249h		;3f9d	cd 49 92 	. I . 
	inc bc			;3fa0	03 	. 
	call p,0c3ffh		;3fa1	f4 ff c3 	. . . 
	adc a,(hl)			;3fa4	8e 	. 
	adc a,(hl)			;3fa5	8e 	. 
	jp 08d49h		;3fa6	c3 49 8d 	. I . 
	jp 08e76h		;3fa9	c3 76 8e 	. v . 
	jp 08e50h		;3fac	c3 50 8e 	. P . 
	jp 08f9ch		;3faf	c3 9c 8f 	. . . 
	jp 08e94h		;3fb2	c3 94 8e 	. . . 
	jp 08d3ch		;3fb5	c3 3c 8d 	. < . 
	jp 09447h		;3fb8	c3 47 94 	. G . 
	call 09249h		;3fbb	cd 49 92 	. I . 
	ld (bc),a			;3fbe	02 	. 
	defb 0fdh,0ffh,0c3h	;illegal sequence		;3fbf	fd ff c3 	. . . 
	dec l			;3fc2	2d 	- 
	add a,a			;3fc3	87 	. 
	jp 0871ah		;3fc4	c3 1a 87 	. . . 
	jp 0872dh		;3fc7	c3 2d 87 	. - . 
	jp 092f5h		;3fca	c3 f5 92 	. . . 
	jp 08764h		;3fcd	c3 64 87 	. d . 
	jp 08687h		;3fd0	c3 87 86 	. . . 
	jp 086ech		;3fd3	c3 ec 86 	. . . 
	jp 086cdh		;3fd6	c3 cd 86 	. . . 
	jp 09427h		;3fd9	c3 27 94 	. ' . 
	jp 0aa11h		;3fdc	c3 11 aa 	. . . 
	jp 0b1cah		;3fdf	c3 ca b1 	. . . 
	jp 0a7ddh		;3fe2	c3 dd a7 	. . . 
	jp 0ae13h		;3fe5	c3 13 ae 	. . . 
	jp 0854dh		;3fe8	c3 4d 85 	. M . 
	jp 084f7h		;3feb	c3 f7 84 	. . . 
	jp 086b3h		;3fee	c3 b3 86 	. . . 
	jp 084cdh		;3ff1	c3 cd 84 	. . . 
	jp 0923fh		;3ff4	c3 3f 92 	. ? . 
	jp 0ac03h		;3ff7	c3 03 ac 	. . . 
	jp 088abh		;3ffa	c3 ab 88 	. . . 
	dec bc			;3ffd	0b 	. 
	ld e,000h		;3ffe	1e 00 	. . 
