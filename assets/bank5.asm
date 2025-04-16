; z80dasm 1.1.3
; command line: z80dasm -l -a -S symbols.sym -b bank5.blk -g 0xC000 -t bank5.bin

	org	0c000h
charout:	equ 0x8468

lc000h:
	ld a,(07965h)		;c000	3a 65 79 	: e y 
	and 001h		;c003	e6 01 	. . 
	ld (07965h),a		;c005	32 65 79 	2 e y 
lc008h:
	call sub_c118h		;c008	cd 18 c1 	. . . 
	call sub_c13fh		;c00b	cd 3f c1 	. ? . 
	ld d,(ix+04ah)		;c00e	dd 56 4a 	. V J 
	ld e,(ix+04bh)		;c011	dd 5e 4b 	. ^ K 
	call sub_c288h		;c014	cd 88 c2 	. . . 
	ld d,(ix+002h)		;c017	dd 56 02 	. V . 
	ld e,(ix+003h)		;c01a	dd 5e 03 	. ^ . 
	call sub_c2a4h		;c01d	cd a4 c2 	. . . 
	call sub_c1d3h		;c020	cd d3 c1 	. . . 
	ld hl,00000h		;c023	21 00 00 	! . . 
	add hl,sp			;c026	39 	9 
	ld (ix+00ah),h		;c027	dd 74 0a 	. t . 
	ld (ix+00bh),l		;c02a	dd 75 0b 	. u . 
	call sub_c249h		;c02d	cd 49 c2 	. I . 
	ret c			;c030	d8 	. 
	ld a,00bh		;c031	3e 0b 	> . 
	call sub_e345h		;c033	cd 45 e3 	. E . 
	call sub_c20ch		;c036	cd 0c c2 	. . . 
	ld a,007h		;c039	3e 07 	> . 
	jr nc,lc045h		;c03b	30 08 	0 . 
	call sub_e345h		;c03d	cd 45 e3 	. E . 
lc040h:
	call sub_d5f1h		;c040	cd f1 d5 	. . . 
	jr lc040h		;c043	18 fb 	. . 
lc045h:
	bit 2,(ix+04eh)		;c045	dd cb 4e 56 	. . N V 
	jr z,lc053h		;c049	28 08 	( . 
	ld a,015h		;c04b	3e 15 	> . 
	call sub_d6c3h		;c04d	cd c3 d6 	. . . 
	jp c,lde79h		;c050	da 79 de 	. y . 
lc053h:
	ld a,00ch		;c053	3e 0c 	> . 
	call sub_e4c0h		;c055	cd c0 e4 	. . . 
	call sub_c2b4h		;c058	cd b4 c2 	. . . 
	set 0,(ix+04ch)		;c05b	dd cb 4c c6 	. . L . 
	bit 2,(ix+04eh)		;c05f	dd cb 4e 56 	. . N V 
	jr nz,lc06bh		;c063	20 06 	  . 
	bit 3,(ix+04eh)		;c065	dd cb 4e 5e 	. . N ^ 
	jr z,lc070h		;c069	28 05 	( . 
lc06bh:
	ld a,00fh		;c06b	3e 0f 	> . 
	call sub_e4c0h		;c06d	cd c0 e4 	. . . 
lc070h:
	call sub_c1d3h		;c070	cd d3 c1 	. . . 
	call sub_c20ch		;c073	cd 0c c2 	. . . 
	call sub_dc7dh		;c076	cd 7d dc 	. } . 
	call sub_c2b4h		;c079	cd b4 c2 	. . . 
	bit 0,(ix+04eh)		;c07c	dd cb 4e 46 	. . N F 
	jr z,lc0c6h		;c080	28 44 	( D 
	call sub_dd83h		;c082	cd 83 dd 	. . . 
	ld a,00dh		;c085	3e 0d 	> . 
	call sub_e345h		;c087	cd 45 e3 	. E . 
	ld h,(ix+039h)		;c08a	dd 66 39 	. f 9 
	ld l,(ix+03ah)		;c08d	dd 6e 3a 	. n : 
	ld a,h			;c090	7c 	| 
	or l			;c091	b5 	. 
	jr nz,lc0bch		;c092	20 28 	  ( 
lc094h:
	ld a,030h		;c094	3e 30 	> 0 
	call sub_d6c3h		;c096	cd c3 d6 	. . . 
	cp 050h		;c099	fe 50 	. P 
	jr z,lc0a6h		;c09b	28 09 	( . 
	cp 0d0h		;c09d	fe d0 	. . 
	jr z,lc0a6h		;c09f	28 05 	( . 
	call sub_d5f4h		;c0a1	cd f4 d5 	. . . 
	jr lc094h		;c0a4	18 ee 	. . 
lc0a6h:
	ld a,00dh		;c0a6	3e 0d 	> . 
	ld (ix+001h),a		;c0a8	dd 77 01 	. w . 
	ld sp,07ffeh		;c0ab	31 fe 7f 	1 .  
	push ix		;c0ae	dd e5 	. . 
	ld a,009h		;c0b0	3e 09 	> . 
	call sub_d6c3h		;c0b2	cd c3 d6 	. . . 
	pop ix		;c0b5	dd e1 	. . 
	ld a,000h		;c0b7	3e 00 	> . 
	call sub_d6c3h		;c0b9	cd c3 d6 	. . . 
lc0bch:
	ld a,030h		;c0bc	3e 30 	> 0 
	call sub_d6c3h		;c0be	cd c3 d6 	. . . 
	call sub_d5f4h		;c0c1	cd f4 d5 	. . . 
	jr lc0bch		;c0c4	18 f6 	. . 
lc0c6h:
	call sub_dc6bh		;c0c6	cd 6b dc 	. k . 
	call sub_de47h		;c0c9	cd 47 de 	. G . 
	call sub_d6efh		;c0cc	cd ef d6 	. . . 
	call sub_dd83h		;c0cf	cd 83 dd 	. . . 
	bit 1,(ix+04eh)		;c0d2	dd cb 4e 4e 	. . N N 
	jr nz,lc106h		;c0d6	20 2e 	  . 
	ld a,00dh		;c0d8	3e 0d 	> . 
	call sub_e345h		;c0da	cd 45 e3 	. E . 
	bit 2,(ix+04eh)		;c0dd	dd cb 4e 56 	. . N V 
	jr nz,lc0ebh		;c0e1	20 08 	  . 
	bit 3,(ix+04eh)		;c0e3	dd cb 4e 5e 	. . N ^ 
	jr nz,lc0ebh		;c0e7	20 02 	  . 
	jr lc106h		;c0e9	18 1b 	. . 
lc0ebh:
	call sub_dc6bh		;c0eb	cd 6b dc 	. k . 
	call sub_de47h		;c0ee	cd 47 de 	. G . 
	call sub_de47h		;c0f1	cd 47 de 	. G . 
	call sub_d6efh		;c0f4	cd ef d6 	. . . 
	call sub_d6efh		;c0f7	cd ef d6 	. . . 
	res 2,(ix+04eh)		;c0fa	dd cb 4e 96 	. . N . 
	res 3,(ix+04eh)		;c0fe	dd cb 4e 9e 	. . N . 
	set 1,(ix+04eh)		;c102	dd cb 4e ce 	. . N . 
lc106h:
	ld a,00dh		;c106	3e 0d 	> . 
	call sub_e345h		;c108	cd 45 e3 	. E . 
lc10bh:
	ld a,(07965h)		;c10b	3a 65 79 	: e y 
	res 1,a		;c10e	cb 8f 	. . 
	ld (07965h),a		;c110	32 65 79 	2 e y 
	call sub_d5f1h		;c113	cd f1 d5 	. . . 
	jr lc10bh		;c116	18 f3 	. . 
sub_c118h:
	ld ix,(079e3h)		;c118	dd 2a e3 79 	. * . y 
	ld hl,(079fch)		;c11c	2a fc 79 	* . y 
	push ix		;c11f	dd e5 	. . 
	pop bc			;c121	c1 	. 
	scf			;c122	37 	7 
	sbc hl,bc		;c123	ed 42 	. B 
	jr c,lc12eh		;c125	38 07 	8 . 
	or a			;c127	b7 	. 
	ld bc,00132h		;c128	01 32 01 	. 2 . 
	sbc hl,bc		;c12b	ed 42 	. B 
	ret nc			;c12d	d0 	. 
lc12eh:
	ld de,07c00h		;c12e	11 00 7c 	. . | 
	call sub_c2a4h		;c131	cd a4 c2 	. . . 
	ld de,07c33h		;c134	11 33 7c 	. 3 | 
	call sub_c288h		;c137	cd 88 c2 	. . . 
	ld a,011h		;c13a	3e 11 	> . 
	call sub_e345h		;c13c	cd 45 e3 	. E . 
sub_c13fh:
	ld ix,(079e3h)		;c13f	dd 2a e3 79 	. * . y 
	inc ix		;c143	dd 23 	. # 
	ld hl,(079fch)		;c145	2a fc 79 	* . y 
	dec hl			;c148	2b 	+ 
	ld (ix+01ah),h		;c149	dd 74 1a 	. t . 
	ld (ix+01bh),l		;c14c	dd 75 1b 	. u . 
	ld hl,00088h		;c14f	21 88 00 	! . . 
	push ix		;c152	dd e5 	. . 
	pop bc			;c154	c1 	. 
	or a			;c155	b7 	. 
	adc hl,bc		;c156	ed 4a 	. J 
	ld (ix+022h),h		;c158	dd 74 22 	. t " 
	ld (ix+023h),l		;c15b	dd 75 23 	. u # 
	ld hl,000a9h		;c15e	21 a9 00 	! . . 
	adc hl,bc		;c161	ed 4a 	. J 
	ld (ix+042h),h		;c163	dd 74 42 	. t B 
	ld (ix+043h),l		;c166	dd 75 43 	. u C 
	ld hl,000cah		;c169	21 ca 00 	! . . 
	adc hl,bc		;c16c	ed 4a 	. J 
	ld (ix+044h),h		;c16e	dd 74 44 	. t D 
	ld (ix+045h),l		;c171	dd 75 45 	. u E 
	ld hl,00051h		;c174	21 51 00 	! Q . 
	adc hl,bc		;c177	ed 4a 	. J 
	ld (ix+033h),h		;c179	dd 74 33 	. t 3 
	ld (ix+034h),l		;c17c	dd 75 34 	. u 4 
	ld hl,00053h		;c17f	21 53 00 	! S . 
	adc hl,bc		;c182	ed 4a 	. J 
	ld (ix+035h),h		;c184	dd 74 35 	. t 5 
	ld (ix+036h),l		;c187	dd 75 36 	. u 6 
	ld hl,00055h		;c18a	21 55 00 	! U . 
	adc hl,bc		;c18d	ed 4a 	. J 
	ld (ix+002h),h		;c18f	dd 74 02 	. t . 
	ld (ix+003h),l		;c192	dd 75 03 	. u . 
	ld hl,000ebh		;c195	21 eb 00 	! . . 
	adc hl,bc		;c198	ed 4a 	. J 
	ld (ix+04ah),h		;c19a	dd 74 4a 	. t J 
	ld (ix+04bh),l		;c19d	dd 75 4b 	. u K 
	ld hl,07f10h		;c1a0	21 10 7f 	! .  
	ld (ix+046h),h		;c1a3	dd 74 46 	. t F 
	ld (ix+047h),l		;c1a6	dd 75 47 	. u G 
	xor a			;c1a9	af 	. 
	ld (ix+020h),a		;c1aa	dd 77 20 	. w   
	ld (ix+021h),a		;c1ad	dd 77 21 	. w ! 
	res 0,(ix+04ch)		;c1b0	dd cb 4c 86 	. . L . 
	ld a,(07930h)		;c1b4	3a 30 79 	: 0 y 
	cp 060h		;c1b7	fe 60 	. ` 
	jr z,lc1c4h		;c1b9	28 09 	( . 
	cp 040h		;c1bb	fe 40 	. @ 
	jr z,lc1c9h		;c1bd	28 0a 	( . 
	ld hl,0ffffh		;c1bf	21 ff ff 	! . . 
	jr lc1cch		;c1c2	18 08 	. . 
lc1c4h:
	ld hl,09fffh		;c1c4	21 ff 9f 	! . . 
	jr lc1cch		;c1c7	18 03 	. . 
lc1c9h:
	ld hl,0bfffh		;c1c9	21 ff bf 	! . . 
lc1cch:
	ld (ix+040h),h		;c1cc	dd 74 40 	. t @ 
	ld (ix+041h),l		;c1cf	dd 75 41 	. u A 
	ret			;c1d2	c9 	. 
sub_c1d3h:
	ld hl,00100h		;c1d3	21 00 01 	! . . 
	ld (ix+004h),h		;c1d6	dd 74 04 	. t . 
	ld (ix+005h),l		;c1d9	dd 75 05 	. u . 
	ld (ix+006h),h		;c1dc	dd 74 06 	. t . 
	ld (ix+007h),l		;c1df	dd 75 07 	. u . 
	ld (ix+008h),h		;c1e2	dd 74 08 	. t . 
	ld (ix+009h),l		;c1e5	dd 75 09 	. u . 
	ld (ix+016h),h		;c1e8	dd 74 16 	. t . 
	ld (ix+017h),l		;c1eb	dd 75 17 	. u . 
	xor a			;c1ee	af 	. 
	ld (ix+038h),a		;c1ef	dd 77 38 	. w 8 
	ld (ix+039h),a		;c1f2	dd 77 39 	. w 9 
	ld (ix+03ah),a		;c1f5	dd 77 3a 	. w : 
	ld (ix+03eh),a		;c1f8	dd 77 3e 	. w > 
	res 1,(ix+04ch)		;c1fb	dd cb 4c 8e 	. . L . 
	res 5,(ix+04ch)		;c1ff	dd cb 4c ae 	. . L . 
	set 4,(ix+04eh)		;c203	dd cb 4e e6 	. . N . 
	ld (ix+050h),000h		;c207	dd 36 50 00 	. 6 P . 
	ret			;c20b	c9 	. 
sub_c20ch:
	ld hl,(07975h)		;c20c	2a 75 79 	* u y 
	ld (ix+010h),h		;c20f	dd 74 10 	. t . 
	ld (ix+011h),l		;c212	dd 75 11 	. u . 
	ld hl,(07973h)		;c215	2a 73 79 	* s y 
	ld (ix+00eh),h		;c218	dd 74 0e 	. t . 
	ld (ix+00fh),l		;c21b	dd 75 0f 	. u . 
	inc hl			;c21e	23 	# 
	ld a,(hl)			;c21f	7e 	~ 
	ld (ix+03bh),a		;c220	dd 77 3b 	. w ; 
	inc hl			;c223	23 	# 
	ld a,(hl)			;c224	7e 	~ 
	ld (ix+03ch),a		;c225	dd 77 3c 	. w < 
	inc hl			;c228	23 	# 
	cp 0ffh		;c229	fe ff 	. . 
	jr nz,lc236h		;c22b	20 09 	  . 
	ld a,(ix+03bh)		;c22d	dd 7e 3b 	. ~ ; 
	cp 0ffh		;c230	fe ff 	. . 
	jr nz,lc236h		;c232	20 02 	  . 
	scf			;c234	37 	7 
	ret			;c235	c9 	. 
lc236h:
	ld a,(hl)			;c236	7e 	~ 
	ld (ix+03dh),a		;c237	dd 77 3d 	. w = 
	inc hl			;c23a	23 	# 
	ld (ix+012h),h		;c23b	dd 74 12 	. t . 
	ld (ix+013h),l		;c23e	dd 75 13 	. u . 
	ld (ix+014h),h		;c241	dd 74 14 	. t . 
	ld (ix+015h),l		;c244	dd 75 15 	. u . 
	or a			;c247	b7 	. 
	ret			;c248	c9 	. 
sub_c249h:
	ld hl,00131h		;c249	21 31 01 	! 1 . 
	push ix		;c24c	dd e5 	. . 
	pop bc			;c24e	c1 	. 
	add hl,bc			;c24f	09 	. 
	ld (ix+018h),h		;c250	dd 74 18 	. t . 
	ld (ix+019h),l		;c253	dd 75 19 	. u . 
	ld (ix+01ch),h		;c256	dd 74 1c 	. t . 
	ld (ix+01dh),l		;c259	dd 75 1d 	. u . 
	ld b,h			;c25c	44 	D 
	ld c,l			;c25d	4d 	M 
	ld h,(ix+01ah)		;c25e	dd 66 1a 	. f . 
	ld l,(ix+01bh)		;c261	dd 6e 1b 	. n . 
	scf			;c264	37 	7 
	sbc hl,bc		;c265	ed 42 	. B 
	jr nc,lc26ch		;c267	30 03 	0 . 
	jp lc12eh		;c269	c3 2e c1 	. . . 
lc26ch:
	ld (ix+01eh),h		;c26c	dd 74 1e 	. t . 
	ld (ix+01fh),l		;c26f	dd 75 1f 	. u . 
	ld b,(ix+01eh)		;c272	dd 46 1e 	. F . 
	ld c,(ix+01fh)		;c275	dd 4e 1f 	. N . 
	ld h,(ix+01ch)		;c278	dd 66 1c 	. f . 
	ld l,(ix+01dh)		;c27b	dd 6e 1d 	. n . 
lc27eh:
	ld (hl),000h		;c27e	36 00 	6 . 
	inc hl			;c280	23 	# 
	ld a,b			;c281	78 	x 
	or c			;c282	b1 	. 
	ret z			;c283	c8 	. 
	dec bc			;c284	0b 	. 
	jr lc27eh		;c285	18 f7 	. . 
	ret			;c287	c9 	. 
sub_c288h:
	ld hl,leb05h		;c288	21 05 eb 	! . . 
	ld bc,leac0h		;c28b	01 c0 ea 	. . . 
	or a			;c28e	b7 	. 
	sbc hl,bc		;c28f	ed 42 	. B 
	push hl			;c291	e5 	. 
	pop bc			;c292	c1 	. 
	ld hl,leac0h		;c293	21 c0 ea 	! . . 
	push de			;c296	d5 	. 
	ldir		;c297	ed b0 	. . 
	pop de			;c299	d1 	. 
	ld hl,00080h		;c29a	21 80 00 	! . . 
	ld (hl),0cdh		;c29d	36 cd 	6 . 
	inc hl			;c29f	23 	# 
	ld (hl),e			;c2a0	73 	s 
	inc hl			;c2a1	23 	# 
	ld (hl),d			;c2a2	72 	r 
	ret			;c2a3	c9 	. 
sub_c2a4h:
	ld bc,00011h		;c2a4	01 11 00 	. . . 
	push bc			;c2a7	c5 	. 
	pop hl			;c2a8	e1 	. 
	add hl,bc			;c2a9	09 	. 
	add hl,bc			;c2aa	09 	. 
	push hl			;c2ab	e5 	. 
	pop bc			;c2ac	c1 	. 
	ld hl,leb10h		;c2ad	21 10 eb 	! . . 
	ldir		;c2b0	ed b0 	. . 
	ret			;c2b2	c9 	. 
	rst 38h			;c2b3	ff 	. 
sub_c2b4h:
	call sub_d5aeh		;c2b4	cd ae d5 	. . . 
	bit 1,(ix+04ch)		;c2b7	dd cb 4c 4e 	. . L N 
	ret nz			;c2bb	c0 	. 
	xor a			;c2bc	af 	. 
	ld (ix+02bh),a		;c2bd	dd 77 2b 	. w + 
	ld (ix+02fh),a		;c2c0	dd 77 2f 	. w / 
	ld (ix+04dh),a		;c2c3	dd 77 4d 	. w M 
	res 2,(ix+04ch)		;c2c6	dd cb 4c 96 	. . L . 
	res 3,(ix+04ch)		;c2ca	dd cb 4c 9e 	. . L . 
	res 4,(ix+04ch)		;c2ce	dd cb 4c a6 	. . L . 
	res 6,(ix+04ch)		;c2d2	dd cb 4c b6 	. . L . 
	res 2,(ix+04fh)		;c2d6	dd cb 4f 96 	. . O . 
	ld hl,00000h		;c2da	21 00 00 	! . . 
	add hl,sp			;c2dd	39 	9 
	ld (ix+00ch),h		;c2de	dd 74 0c 	. t . 
	ld (ix+00dh),l		;c2e1	dd 75 0d 	. u . 
	ld h,(ix+004h)		;c2e4	dd 66 04 	. f . 
	ld l,(ix+005h)		;c2e7	dd 6e 05 	. n . 
	ld (ix+016h),h		;c2ea	dd 74 16 	. t . 
	ld (ix+017h),l		;c2ed	dd 75 17 	. u . 
	bit 0,(ix+04ch)		;c2f0	dd cb 4c 46 	. . L F 
	jr z,lc2fdh		;c2f4	28 07 	( . 
	bit 0,(ix+04eh)		;c2f6	dd cb 4e 46 	. . N F 
	call z,sub_dc9ah		;c2fa	cc 9a dc 	. . . 
lc2fdh:
	call sub_c56ch		;c2fd	cd 6c c5 	. l . 
	cp 020h		;c300	fe 20 	.   
	jr z,lc34ah		;c302	28 46 	( F 
	cp 009h		;c304	fe 09 	. . 
	jr z,lc34ah		;c306	28 42 	( B 
	call sub_c581h		;c308	cd 81 c5 	. . . 
	call sub_c419h		;c30b	cd 19 c4 	. . . 
	cp 000h		;c30e	fe 00 	. . 
	jr z,lc38bh		;c310	28 79 	( y 
	cp 004h		;c312	fe 04 	. . 
	jr z,lc31fh		;c314	28 09 	( . 
	cp 005h		;c316	fe 05 	. . 
	jr z,lc31fh		;c318	28 05 	( . 
	cp 006h		;c31a	fe 06 	. . 
	jp nz,lc3c3h		;c31c	c2 c3 c3 	. . . 
lc31fh:
	ld h,(ix+022h)		;c31f	dd 66 22 	. f " 
	ld l,(ix+023h)		;c322	dd 6e 23 	. n # 
	ld d,(ix+042h)		;c325	dd 56 42 	. V B 
	ld e,(ix+043h)		;c328	dd 5e 43 	. ^ C 
	call sub_e037h		;c32b	cd 37 e0 	. 7 . 
	call sub_c419h		;c32e	cd 19 c4 	. . . 
	cp 03ah		;c331	fe 3a 	. : 
	jr nz,lc33bh		;c333	20 06 	  . 
	set 2,(ix+04ch)		;c335	dd cb 4c d6 	. . L . 
	jr lc34ah		;c339	18 0f 	. . 
lc33bh:
	ld a,(ix+025h)		;c33b	dd 7e 25 	. ~ % 
	cp 004h		;c33e	fe 04 	. . 
	jp nz,lc3c3h		;c340	c2 c3 c3 	. . . 
	call sub_c581h		;c343	cd 81 c5 	. . . 
	set 3,(ix+04ch)		;c346	dd cb 4c de 	. . L . 
lc34ah:
	bit 2,(ix+04ch)		;c34a	dd cb 4c 56 	. . L V 
	jr nz,lc356h		;c34e	20 06 	  . 
	bit 3,(ix+04ch)		;c350	dd cb 4c 5e 	. . L ^ 
	jr z,lc377h		;c354	28 21 	( ! 
lc356h:
	ld d,(ix+042h)		;c356	dd 56 42 	. V B 
	ld e,(ix+043h)		;c359	dd 5e 43 	. ^ C 
	push de			;c35c	d5 	. 
lc35dh:
	ld a,(de)			;c35d	1a 	. 
	or a			;c35e	b7 	. 
	jr z,lc369h		;c35f	28 08 	( . 
	call sub_c5d8h		;c361	cd d8 c5 	. . . 
	jr c,lc3c3h		;c364	38 5d 	8 ] 
	inc de			;c366	13 	. 
	jr lc35dh		;c367	18 f4 	. . 
lc369h:
	pop de			;c369	d1 	. 
	call sub_c604h		;c36a	cd 04 c6 	. . . 
	jr c,lc377h		;c36d	38 08 	8 . 
	cp 005h		;c36f	fe 05 	. . 
	jr z,lc377h		;c371	28 04 	( . 
	cp 004h		;c373	fe 04 	. . 
	jr nz,lc3c3h		;c375	20 4c 	  L 
lc377h:
	call sub_c419h		;c377	cd 19 c4 	. . . 
	cp 005h		;c37a	fe 05 	. . 
	jr z,lc3cah		;c37c	28 4c 	( L 
	cp 004h		;c37e	fe 04 	. . 
	jr z,lc3cfh		;c380	28 4d 	( M 
	cp 000h		;c382	fe 00 	. . 
	jr z,lc38bh		;c384	28 05 	( . 
	ld a,003h		;c386	3e 03 	> . 
	jp ldbf9h		;c388	c3 f9 db 	. . . 
lc38bh:
	bit 2,(ix+04ch)		;c38b	dd cb 4c 56 	. . L V 
	jr z,lc3bdh		;c38f	28 2c 	( , 
	ld d,(ix+042h)		;c391	dd 56 42 	. V B 
	ld e,(ix+043h)		;c394	dd 5e 43 	. ^ C 
	push de			;c397	d5 	. 
lc398h:
	ld a,(de)			;c398	1a 	. 
	or a			;c399	b7 	. 
	jr z,lc3a4h		;c39a	28 08 	( . 
	call sub_c5d8h		;c39c	cd d8 c5 	. . . 
	jr c,lc3c3h		;c39f	38 22 	8 " 
	inc de			;c3a1	13 	. 
	jr lc398h		;c3a2	18 f4 	. . 
lc3a4h:
	pop de			;c3a4	d1 	. 
	call sub_c604h		;c3a5	cd 04 c6 	. . . 
	jr c,lc3b2h		;c3a8	38 08 	8 . 
	cp 005h		;c3aa	fe 05 	. . 
	jr z,lc3b2h		;c3ac	28 04 	( . 
	cp 004h		;c3ae	fe 04 	. . 
	jr nz,lc3c3h		;c3b0	20 11 	  . 
lc3b2h:
	ld h,(ix+004h)		;c3b2	dd 66 04 	. f . 
	ld l,(ix+005h)		;c3b5	dd 6e 05 	. n . 
	call sub_c655h		;c3b8	cd 55 c6 	. U . 
	jr lc3fch		;c3bb	18 3f 	. ? 
lc3bdh:
	bit 3,(ix+04ch)		;c3bd	dd cb 4c 5e 	. . L ^ 
	jr z,lc3fch		;c3c1	28 39 	( 9 
lc3c3h:
	ld a,002h		;c3c3	3e 02 	> . 
	ld b,004h		;c3c5	06 04 	. . 
	jp ldbf9h		;c3c7	c3 f9 db 	. . . 
lc3cah:
	call sub_d700h		;c3ca	cd 00 d7 	. . . 
	jr lc3eeh		;c3cd	18 1f 	. . 
lc3cfh:
	bit 3,(ix+04ch)		;c3cf	dd cb 4c 5e 	. . L ^ 
	jr z,lc3dch		;c3d3	28 07 	( . 
	ld a,002h		;c3d5	3e 02 	> . 
	ld b,004h		;c3d7	06 04 	. . 
	jp ldbf9h		;c3d9	c3 f9 db 	. . . 
lc3dch:
	bit 2,(ix+04ch)		;c3dc	dd cb 4c 56 	. . L V 
	jr z,lc3ebh		;c3e0	28 09 	( . 
	ld h,(ix+004h)		;c3e2	dd 66 04 	. f . 
	ld l,(ix+005h)		;c3e5	dd 6e 05 	. n . 
	call sub_c655h		;c3e8	cd 55 c6 	. U . 
lc3ebh:
	call sub_c720h		;c3eb	cd 20 c7 	.   . 
lc3eeh:
	call sub_c419h		;c3ee	cd 19 c4 	. . . 
	cp 000h		;c3f1	fe 00 	. . 
	jr z,lc3fch		;c3f3	28 07 	( . 
	ld a,002h		;c3f5	3e 02 	> . 
	ld b,003h		;c3f7	06 03 	. . 
	jp ldbf9h		;c3f9	c3 f9 db 	. . . 
lc3fch:
	bit 1,(ix+04dh)		;c3fc	dd cb 4d 4e 	. . M N 
	jr z,lc406h		;c400	28 04 	( . 
	ld a,000h		;c402	3e 00 	> . 
	jr lc410h		;c404	18 0a 	. . 
lc406h:
	bit 0,(ix+04dh)		;c406	dd cb 4d 46 	. . M F 
	jr z,lc413h		;c40a	28 07 	( . 
	ld a,004h		;c40c	3e 04 	> . 
	ld b,005h		;c40e	06 05 	. . 
lc410h:
	jp ldbf9h		;c410	c3 f9 db 	. . . 
lc413h:
	call sub_c58eh		;c413	cd 8e c5 	. . . 
	jp sub_c2b4h		;c416	c3 b4 c2 	. . . 
sub_c419h:
	ld (ix+024h),000h		;c419	dd 36 24 00 	. 6 $ . 
	ld (ix+025h),000h		;c41d	dd 36 25 00 	. 6 % . 
	call 0df51h		;c421	cd 51 df 	. Q . 
	ld h,(ix+012h)		;c424	dd 66 12 	. f . 
	ld l,(ix+013h)		;c427	dd 6e 13 	. n . 
	ld (ix+028h),h		;c42a	dd 74 28 	. t ( 
	ld (ix+029h),l		;c42d	dd 75 29 	. u ) 
	ld a,(hl)			;c430	7e 	~ 
	cp 00dh		;c431	fe 0d 	. . 
	jr z,lc487h		;c433	28 52 	( R 
	cp 03bh		;c435	fe 3b 	. ; 
	jr z,lc487h		;c437	28 4e 	( N 
	cp 027h		;c439	fe 27 	. ' 
	jr z,lc4afh		;c43b	28 72 	( r 
	cp 009h		;c43d	fe 09 	. . 
	jp z,lc512h		;c43f	ca 12 c5 	. . . 
	cp 05bh		;c442	fe 5b 	. [ 
	jp z,lc512h		;c444	ca 12 c5 	. . . 
	cp 05dh		;c447	fe 5d 	. ] 
	jp z,lc512h		;c449	ca 12 c5 	. . . 
	cp 040h		;c44c	fe 40 	. @ 
	jp z,lc512h		;c44e	ca 12 c5 	. . . 
	cp 03fh		;c451	fe 3f 	. ? 
	jp z,lc512h		;c453	ca 12 c5 	. . . 
	cp 05fh		;c456	fe 5f 	. _ 
	jp z,lc512h		;c458	ca 12 c5 	. . . 
	cp 001h		;c45b	fe 01 	. . 
	jr c,lc464h		;c45d	38 05 	8 . 
	cp 020h		;c45f	fe 20 	.   
	jp c,lc497h		;c461	da 97 c4 	. . . 
lc464h:
	cp 021h		;c464	fe 21 	. ! 
	jr c,lc46ch		;c466	38 04 	8 . 
	cp 030h		;c468	fe 30 	. 0 
	jr c,lc48ch		;c46a	38 20 	8   
lc46ch:
	cp 03ah		;c46c	fe 3a 	. : 
	jr c,lc474h		;c46e	38 04 	8 . 
	cp 041h		;c470	fe 41 	. A 
	jr c,lc48ch		;c472	38 18 	8 . 
lc474h:
	cp 05bh		;c474	fe 5b 	. [ 
	jr c,lc47ch		;c476	38 04 	8 . 
	cp 061h		;c478	fe 61 	. a 
	jr c,lc48ch		;c47a	38 10 	8 . 
lc47ch:
	cp 07bh		;c47c	fe 7b 	. { 
	jr c,lc484h		;c47e	38 04 	8 . 
	cp 07fh		;c480	fe 7f 	.  
	jr c,lc48ch		;c482	38 08 	8 . 
lc484h:
	jp lc512h		;c484	c3 12 c5 	. . . 
lc487h:
	ld (ix+025h),a		;c487	dd 77 25 	. w % 
	ld a,000h		;c48a	3e 00 	> . 
lc48ch:
	inc hl			;c48c	23 	# 
	ld (ix+012h),h		;c48d	dd 74 12 	. t . 
	ld (ix+013h),l		;c490	dd 75 13 	. u . 
	ld (ix+024h),a		;c493	dd 77 24 	. w $ 
	ret			;c496	c9 	. 
lc497h:
	ld a,(hl)			;c497	7e 	~ 
	ld (ix+024h),a		;c498	dd 77 24 	. w $ 
	ld (ix+028h),h		;c49b	dd 74 28 	. t ( 
	ld (ix+029h),l		;c49e	dd 75 29 	. u ) 
	inc hl			;c4a1	23 	# 
	ld (ix+012h),h		;c4a2	dd 74 12 	. t . 
	ld (ix+013h),l		;c4a5	dd 75 13 	. u . 
	ld a,002h		;c4a8	3e 02 	> . 
	ld b,002h		;c4aa	06 02 	. . 
	jp ldbf9h		;c4ac	c3 f9 db 	. . . 
lc4afh:
	ld d,(ix+044h)		;c4af	dd 56 44 	. V D 
	ld e,(ix+045h)		;c4b2	dd 5e 45 	. ^ E 
	ld b,000h		;c4b5	06 00 	. . 
lc4b7h:
	ld a,b			;c4b7	78 	x 
	cp 021h		;c4b8	fe 21 	. ! 
	jr z,lc505h		;c4ba	28 49 	( I 
	inc hl			;c4bc	23 	# 
	ld a,(hl)			;c4bd	7e 	~ 
	cp 027h		;c4be	fe 27 	. ' 
	jr z,lc4cbh		;c4c0	28 09 	( . 
	cp 00dh		;c4c2	fe 0d 	. . 
	jr z,lc4f9h		;c4c4	28 33 	( 3 
lc4c6h:
	ld (de),a			;c4c6	12 	. 
	inc de			;c4c7	13 	. 
	inc b			;c4c8	04 	. 
	jr lc4b7h		;c4c9	18 ec 	. . 
lc4cbh:
	inc hl			;c4cb	23 	# 
	cp (hl)			;c4cc	be 	. 
	jr z,lc4c6h		;c4cd	28 f7 	( . 
	ld (ix+012h),h		;c4cf	dd 74 12 	. t . 
	ld (ix+013h),l		;c4d2	dd 75 13 	. u . 
	xor a			;c4d5	af 	. 
	ld (de),a			;c4d6	12 	. 
	ld h,(ix+044h)		;c4d7	dd 66 44 	. f D 
	ld l,(ix+045h)		;c4da	dd 6e 45 	. n E 
	sbc hl,de		;c4dd	ed 52 	. R 
	jr nz,lc4f3h		;c4df	20 12 	  . 
	ld d,(ix+022h)		;c4e1	dd 56 22 	. V " 
	ld e,(ix+023h)		;c4e4	dd 5e 23 	. ^ # 
	ld a,030h		;c4e7	3e 30 	> 0 
	ld (de),a			;c4e9	12 	. 
	inc de			;c4ea	13 	. 
	xor a			;c4eb	af 	. 
	ld (de),a			;c4ec	12 	. 
	ld a,007h		;c4ed	3e 07 	> . 
	ld (ix+024h),a		;c4ef	dd 77 24 	. w $ 
	ret			;c4f2	c9 	. 
lc4f3h:
	ld a,008h		;c4f3	3e 08 	> . 
	ld (ix+024h),a		;c4f5	dd 77 24 	. w $ 
	ret			;c4f8	c9 	. 
lc4f9h:
	ld (ix+012h),h		;c4f9	dd 74 12 	. t . 
	ld (ix+013h),l		;c4fc	dd 75 13 	. u . 
	ld a,002h		;c4ff	3e 02 	> . 
	ld b,006h		;c501	06 06 	. . 
	jr lc50fh		;c503	18 0a 	. . 
lc505h:
	ld (ix+012h),h		;c505	dd 74 12 	. t . 
	ld (ix+013h),l		;c508	dd 75 13 	. u . 
	ld a,004h		;c50b	3e 04 	> . 
	ld b,004h		;c50d	06 04 	. . 
lc50fh:
	jp ldbf9h		;c50f	c3 f9 db 	. . . 
lc512h:
	ld b,000h		;c512	06 00 	. . 
	ld d,(ix+022h)		;c514	dd 56 22 	. V " 
	ld e,(ix+023h)		;c517	dd 5e 23 	. ^ # 
	cp 030h		;c51a	fe 30 	. 0 
	jr c,lc52ch		;c51c	38 0e 	8 . 
	cp 03ah		;c51e	fe 3a 	. : 
	jr nc,lc52ch		;c520	30 0a 	0 . 
	ld (de),a			;c522	12 	. 
	inc b			;c523	04 	. 
	inc de			;c524	13 	. 
	inc hl			;c525	23 	# 
	ld a,007h		;c526	3e 07 	> . 
	ld (ix+024h),a		;c528	dd 77 24 	. w $ 
	ld a,(hl)			;c52b	7e 	~ 
lc52ch:
	call sub_c5d8h		;c52c	cd d8 c5 	. . . 
	jr c,lc53dh		;c52f	38 0c 	8 . 
	ld (de),a			;c531	12 	. 
	inc b			;c532	04 	. 
	ld a,b			;c533	78 	x 
	cp 021h		;c534	fe 21 	. ! 
	jr nc,lc545h		;c536	30 0d 	0 . 
	inc de			;c538	13 	. 
	inc hl			;c539	23 	# 
	ld a,(hl)			;c53a	7e 	~ 
	jr lc52ch		;c53b	18 ef 	. . 
lc53dh:
	ld (ix+012h),h		;c53d	dd 74 12 	. t . 
	ld (ix+013h),l		;c540	dd 75 13 	. u . 
	jr lc54ch		;c543	18 07 	. . 
lc545h:
	ld a,002h		;c545	3e 02 	> . 
	ld b,007h		;c547	06 07 	. . 
	jp ldbf9h		;c549	c3 f9 db 	. . . 
lc54ch:
	xor a			;c54c	af 	. 
	ld (de),a			;c54d	12 	. 
	ld h,(ix+022h)		;c54e	dd 66 22 	. f " 
	ld l,(ix+023h)		;c551	dd 6e 23 	. n # 
	call sub_df6eh		;c554	cd 6e df 	. n . 
	ld d,(ix+022h)		;c557	dd 56 22 	. V " 
	ld e,(ix+023h)		;c55a	dd 5e 23 	. ^ # 
	call sub_c604h		;c55d	cd 04 c6 	. . . 
	ret nc			;c560	d0 	. 
	ld a,(ix+024h)		;c561	dd 7e 24 	. ~ $ 
	or a			;c564	b7 	. 
	ret nz			;c565	c0 	. 
	ld a,006h		;c566	3e 06 	> . 
	ld (ix+024h),a		;c568	dd 77 24 	. w $ 
	ret			;c56b	c9 	. 
sub_c56ch:
	ld h,(ix+012h)		;c56c	dd 66 12 	. f . 
	ld l,(ix+013h)		;c56f	dd 6e 13 	. n . 
	ld (ix+028h),h		;c572	dd 74 28 	. t ( 
	ld (ix+029h),l		;c575	dd 75 29 	. u ) 
	ld a,(hl)			;c578	7e 	~ 
	inc hl			;c579	23 	# 
	ld (ix+012h),h		;c57a	dd 74 12 	. t . 
	ld (ix+013h),l		;c57d	dd 75 13 	. u . 
	ret			;c580	c9 	. 
sub_c581h:
	ld h,(ix+028h)		;c581	dd 66 28 	. f ( 
	ld l,(ix+029h)		;c584	dd 6e 29 	. n ) 
	ld (ix+012h),h		;c587	dd 74 12 	. t . 
	ld (ix+013h),l		;c58a	dd 75 13 	. u . 
	ret			;c58d	c9 	. 
sub_c58eh:
	bit 0,(ix+04ch)		;c58e	dd cb 4c 46 	. . L F 
	jr z,lc5a7h		;c592	28 13 	( . 
	bit 0,(ix+04eh)		;c594	dd cb 4e 46 	. . N F 
	jr nz,lc5a7h		;c598	20 0d 	  . 
	set 4,(ix+04eh)		;c59a	dd cb 4e e6 	. . N . 
	call sub_dcc6h		;c59e	cd c6 dc 	. . . 
	call sub_de47h		;c5a1	cd 47 de 	. G . 
	call sub_dd0ah		;c5a4	cd 0a dd 	. . . 
lc5a7h:
	ld h,(ix+014h)		;c5a7	dd 66 14 	. f . 
	ld l,(ix+015h)		;c5aa	dd 6e 15 	. n . 
	ld d,000h		;c5ad	16 00 	. . 
	ld e,(ix+03dh)		;c5af	dd 5e 3d 	. ^ = 
	add hl,de			;c5b2	19 	. 
	ld a,(hl)			;c5b3	7e 	~ 
	cp 0ffh		;c5b4	fe ff 	. . 
	jr nz,lc5bdh		;c5b6	20 05 	  . 
	set 1,(ix+04ch)		;c5b8	dd cb 4c ce 	. . L . 
	ret			;c5bc	c9 	. 
lc5bdh:
	ld (ix+03bh),a		;c5bd	dd 77 3b 	. w ; 
	inc hl			;c5c0	23 	# 
	ld a,(hl)			;c5c1	7e 	~ 
	ld (ix+03ch),a		;c5c2	dd 77 3c 	. w < 
	inc hl			;c5c5	23 	# 
	ld a,(hl)			;c5c6	7e 	~ 
	ld (ix+03dh),a		;c5c7	dd 77 3d 	. w = 
	inc hl			;c5ca	23 	# 
	ld (ix+012h),h		;c5cb	dd 74 12 	. t . 
	ld (ix+013h),l		;c5ce	dd 75 13 	. u . 
	ld (ix+014h),h		;c5d1	dd 74 14 	. t . 
	ld (ix+015h),l		;c5d4	dd 75 15 	. u . 
	ret			;c5d7	c9 	. 
sub_c5d8h:
	cp 05bh		;c5d8	fe 5b 	. [ 
	ret z			;c5da	c8 	. 
	cp 05dh		;c5db	fe 5d 	. ] 
	ret z			;c5dd	c8 	. 
	cp 040h		;c5de	fe 40 	. @ 
	ret z			;c5e0	c8 	. 
	cp 03fh		;c5e1	fe 3f 	. ? 
	ret z			;c5e3	c8 	. 
	cp 05fh		;c5e4	fe 5f 	. _ 
	ret z			;c5e6	c8 	. 
	cp 030h		;c5e7	fe 30 	. 0 
	jr c,lc5ffh		;c5e9	38 14 	8 . 
	cp 03ah		;c5eb	fe 3a 	. : 
	jr c,lc601h		;c5ed	38 12 	8 . 
	cp 041h		;c5ef	fe 41 	. A 
	jr c,lc5ffh		;c5f1	38 0c 	8 . 
	cp 05bh		;c5f3	fe 5b 	. [ 
	jr c,lc601h		;c5f5	38 0a 	8 . 
	cp 061h		;c5f7	fe 61 	. a 
	jr c,lc5ffh		;c5f9	38 04 	8 . 
	cp 07bh		;c5fb	fe 7b 	. { 
	jr c,lc601h		;c5fd	38 02 	8 . 
lc5ffh:
	scf			;c5ff	37 	7 
	ret			;c600	c9 	. 
lc601h:
	or a			;c601	b7 	. 
	ret			;c602	c9 	. 
	rst 38h			;c603	ff 	. 
sub_c604h:
	push hl			;c604	e5 	. 
	push de			;c605	d5 	. 
	call sub_dfc5h		;c606	cd c5 df 	. . . 
	jr nc,lc612h		;c609	30 07 	0 . 
	pop de			;c60b	d1 	. 
	pop hl			;c60c	e1 	. 
	ld a,00ah		;c60d	3e 0a 	> . 
	jp ldbf9h		;c60f	c3 f9 db 	. . . 
lc612h:
	push hl			;c612	e5 	. 
	pop bc			;c613	c1 	. 
	ld hl,lec00h		;c614	21 00 ec 	! . . 
lc617h:
	ld a,0ffh		;c617	3e ff 	> . 
	cp (hl)			;c619	be 	. 
	jr nz,lc621h		;c61a	20 05 	  . 
	inc hl			;c61c	23 	# 
	cp (hl)			;c61d	be 	. 
	jr z,lc64eh		;c61e	28 2e 	( . 
	dec hl			;c620	2b 	+ 
lc621h:
	ld a,(hl)			;c621	7e 	~ 
	cp c			;c622	b9 	. 
	jr nz,lc646h		;c623	20 21 	  ! 
	inc hl			;c625	23 	# 
	ld a,(hl)			;c626	7e 	~ 
	cp b			;c627	b8 	. 
	jr nz,lc645h		;c628	20 1b 	  . 
	inc hl			;c62a	23 	# 
	pop de			;c62b	d1 	. 
	push de			;c62c	d5 	. 
	call sub_dfa2h		;c62d	cd a2 df 	. . . 
	jr c,lc644h		;c630	38 12 	8 . 
	ld de,00005h		;c632	11 05 00 	. . . 
	or a			;c635	b7 	. 
	adc hl,de		;c636	ed 5a 	. Z 
	ld a,(hl)			;c638	7e 	~ 
	ld (ix+024h),a		;c639	dd 77 24 	. w $ 
	inc hl			;c63c	23 	# 
	ld a,(hl)			;c63d	7e 	~ 
	ld (ix+025h),a		;c63e	dd 77 25 	. w % 
	or a			;c641	b7 	. 
	jr lc64fh		;c642	18 0b 	. . 
lc644h:
	dec hl			;c644	2b 	+ 
lc645h:
	dec hl			;c645	2b 	+ 
lc646h:
	ld de,00009h		;c646	11 09 00 	. . . 
	or a			;c649	b7 	. 
	adc hl,de		;c64a	ed 5a 	. Z 
	jr lc617h		;c64c	18 c9 	. . 
lc64eh:
	scf			;c64e	37 	7 
lc64fh:
	pop de			;c64f	d1 	. 
	pop hl			;c650	e1 	. 
	ld a,(ix+024h)		;c651	dd 7e 24 	. ~ $ 
	ret			;c654	c9 	. 
sub_c655h:
	push hl			;c655	e5 	. 
	ld h,(ix+042h)		;c656	dd 66 42 	. f B 
	ld l,(ix+043h)		;c659	dd 6e 43 	. n C 
	call sub_dfb8h		;c65c	cd b8 df 	. . . 
	cp 007h		;c65f	fe 07 	. . 
	jr c,lc66ah		;c661	38 07 	8 . 
	ld a,002h		;c663	3e 02 	> . 
	ld b,005h		;c665	06 05 	. . 
	jp ldbf9h		;c667	c3 f9 db 	. . . 
lc66ah:
	ex de,hl			;c66a	eb 	. 
	call sub_c6dbh		;c66b	cd db c6 	. . . 
	jr c,lc688h		;c66e	38 18 	8 . 
	bit 0,(ix+04ch)		;c670	dd cb 4c 46 	. . L F 
	jr z,lc680h		;c674	28 0a 	( . 
	ld a,(de)			;c676	1a 	. 
	and 080h		;c677	e6 80 	. . 
	jr z,lc686h		;c679	28 0b 	( . 
	ld a,001h		;c67b	3e 01 	> . 
	jp ldbf9h		;c67d	c3 f9 db 	. . . 
lc680h:
	ld a,(de)			;c680	1a 	. 
	or 080h		;c681	f6 80 	. . 
	ld (de),a			;c683	12 	. 
	jr lc686h		;c684	18 00 	. . 
lc686h:
	pop hl			;c686	e1 	. 
	ret			;c687	c9 	. 
lc688h:
	ld a,009h		;c688	3e 09 	> . 
	call sub_e049h		;c68a	cd 49 e0 	. I . 
	jr nc,lc6a6h		;c68d	30 17 	0 . 
lc68fh:
	set 2,(ix+04dh)		;c68f	dd cb 4d d6 	. . M . 
	set 0,(ix+04ch)		;c693	dd cb 4c c6 	. . L . 
	ld a,0f0h		;c697	3e f0 	> . 
	and (ix+04eh)		;c699	dd a6 4e 	. . N 
	or 001h		;c69c	f6 01 	. . 
	ld (ix+04eh),a		;c69e	dd 77 4e 	. w N 
	ld a,005h		;c6a1	3e 05 	> . 
	jp ldbf9h		;c6a3	c3 f9 db 	. . . 
lc6a6h:
	push hl			;c6a6	e5 	. 
	ld h,(ix+01ah)		;c6a7	dd 66 1a 	. f . 
	ld l,(ix+01bh)		;c6aa	dd 6e 1b 	. n . 
	ld d,(ix+01ch)		;c6ad	dd 56 1c 	. V . 
	ld e,(ix+01dh)		;c6b0	dd 5e 1d 	. ^ . 
	or a			;c6b3	b7 	. 
	sbc hl,de		;c6b4	ed 52 	. R 
	jr z,lc68fh		;c6b6	28 d7 	( . 
	pop hl			;c6b8	e1 	. 
	ld d,(ix+042h)		;c6b9	dd 56 42 	. V B 
	ld e,(ix+043h)		;c6bc	dd 5e 43 	. ^ C 
	ex de,hl			;c6bf	eb 	. 
	call sub_e037h		;c6c0	cd 37 e0 	. 7 . 
	ex de,hl			;c6c3	eb 	. 
	ld de,00007h		;c6c4	11 07 00 	. . . 
	add hl,de			;c6c7	19 	. 
	pop de			;c6c8	d1 	. 
	ld (hl),d			;c6c9	72 	r 
	inc hl			;c6ca	23 	# 
	ld (hl),e			;c6cb	73 	s 
	ld h,(ix+020h)		;c6cc	dd 66 20 	. f   
	ld l,(ix+021h)		;c6cf	dd 6e 21 	. n ! 
	inc hl			;c6d2	23 	# 
	ld (ix+020h),h		;c6d3	dd 74 20 	. t   
	ld (ix+021h),l		;c6d6	dd 75 21 	. u ! 
	or a			;c6d9	b7 	. 
	ret			;c6da	c9 	. 
sub_c6dbh:
	ld h,(ix+018h)		;c6db	dd 66 18 	. f . 
	ld l,(ix+019h)		;c6de	dd 6e 19 	. n . 
lc6e1h:
	ld a,(hl)			;c6e1	7e 	~ 
	or a			;c6e2	b7 	. 
	jr z,lc712h		;c6e3	28 2d 	( - 
	push hl			;c6e5	e5 	. 
	ld b,(ix+01ah)		;c6e6	dd 46 1a 	. F . 
	ld c,(ix+01bh)		;c6e9	dd 4e 1b 	. N . 
	sbc hl,bc		;c6ec	ed 42 	. B 
	pop hl			;c6ee	e1 	. 
	jr nc,lc712h		;c6ef	30 21 	0 ! 
	ld b,(hl)			;c6f1	46 	F 
	push bc			;c6f2	c5 	. 
	ld a,07fh		;c6f3	3e 7f 	>  
	and b			;c6f5	a0 	. 
	ld (hl),a			;c6f6	77 	w 
	call sub_dfa2h		;c6f7	cd a2 df 	. . . 
	pop bc			;c6fa	c1 	. 
	ld (hl),b			;c6fb	70 	p 
	jr c,lc70ch		;c6fc	38 0e 	8 . 
	push hl			;c6fe	e5 	. 
	pop de			;c6ff	d1 	. 
	push de			;c700	d5 	. 
	ld bc,00007h		;c701	01 07 00 	. . . 
	add hl,bc			;c704	09 	. 
	ld d,(hl)			;c705	56 	V 
	inc hl			;c706	23 	# 
	ld e,(hl)			;c707	5e 	^ 
	ex de,hl			;c708	eb 	. 
	pop de			;c709	d1 	. 
	or a			;c70a	b7 	. 
	ret			;c70b	c9 	. 
lc70ch:
	ld bc,00009h		;c70c	01 09 00 	. . . 
	add hl,bc			;c70f	09 	. 
	jr lc6e1h		;c710	18 cf 	. . 
lc712h:
	scf			;c712	37 	7 
	ret			;c713	c9 	. 
	rst 38h			;c714	ff 	. 
	rst 38h			;c715	ff 	. 
	rst 38h			;c716	ff 	. 
	rst 38h			;c717	ff 	. 
	rst 38h			;c718	ff 	. 
	rst 38h			;c719	ff 	. 
	rst 38h			;c71a	ff 	. 
	rst 38h			;c71b	ff 	. 
	rst 38h			;c71c	ff 	. 
	rst 38h			;c71d	ff 	. 
	rst 38h			;c71e	ff 	. 
	rst 38h			;c71f	ff 	. 
sub_c720h:
	ld a,(ix+025h)		;c720	dd 7e 25 	. ~ % 
	push af			;c723	f5 	. 
	call sub_d405h		;c724	cd 05 d4 	. . . 
	ld (ix+02ah),a		;c727	dd 77 2a 	. w * 
	pop af			;c72a	f1 	. 
	call sub_e08dh		;c72b	cd 8d e0 	. . . 
	ld b,e			;c72e	43 	C 
	cp d			;c72f	ba 	. 
	rst 0			;c730	c7 	. 
	sub c			;c731	91 	. 
	jp z,lca95h		;c732	ca 95 ca 	. . . 
	ret nc			;c735	d0 	. 
	jp z,ld215h		;c736	ca 15 d2 	. . . 
	ld l,0d2h		;c739	2e d2 	. . 
	inc sp			;c73b	33 	3 
	jp nc,ld238h		;c73c	d2 38 d2 	. 8 . 
	dec a			;c73f	3d 	= 
	jp nc,ld242h		;c740	d2 42 d2 	. B . 
	ld b,a			;c743	47 	G 
	jp nc,ld24ch		;c744	d2 4c d2 	. L . 
	ld d,c			;c747	51 	Q 
	jp nc,lcb59h		;c748	d2 59 cb 	. Y . 
	inc a			;c74b	3c 	< 
	call z,sub_ccf2h		;c74c	cc f2 cc 	. . . 
	ld b,c			;c74f	41 	A 
	call z,sub_ccf6h		;c750	cc f6 cc 	. . . 
	ld h,h			;c753	64 	d 
	call sub_cd68h		;c754	cd 68 cd 	. h . 
	ld l,h			;c757	6c 	l 
	call sub_cd70h		;c758	cd 70 cd 	. p . 
	ld (hl),l			;c75b	75 	u 
	call sub_d1f6h		;c75c	cd f6 d1 	. . . 
	jp m,056d1h		;c75f	fa d1 56 	. . V 
	jp nc,ld1feh		;c762	d2 fe d1 	. . . 
	ld (bc),a			;c765	02 	. 
	jp nc,ld206h		;c766	d2 06 d2 	. . . 
	add hl,bc			;c769	09 	. 
	jp nc,ld20dh		;c76a	d2 0d d2 	. . . 
	ld de,le8d2h		;c76d	11 d2 e8 	. . . 
	call sub_d1e6h		;c770	cd e6 d1 	. . . 
	jp pe,leed1h		;c773	ea d1 ee 	. . . 
	pop de			;c776	d1 	. 
	jp p,031d1h		;c777	f2 d1 31 	. . 1 
	adc a,035h		;c77a	ce 35 	. 5 
	adc a,039h		;c77c	ce 39 	. 9 
	adc a,03dh		;c77e	ce 3d 	. = 
	adc a,041h		;c780	ce 41 	. A 
	adc a,045h		;c782	ce 45 	. E 
	adc a,049h		;c784	ce 49 	. I 
	adc a,05bh		;c786	ce 5b 	. [ 
	jp nc,ld260h		;c788	d2 60 d2 	. ` . 
	add a,l			;c78b	85 	. 
	adc a,089h		;c78c	ce 89 	. . 
	adc a,08dh		;c78e	ce 8d 	. . 
	adc a,020h		;c790	ce 20 	.   
	rst 8			;c792	cf 	. 
	sub l			;c793	95 	. 
	rst 8			;c794	cf 	. 
	inc e			;c795	1c 	. 
	ret nc			;c796	d0 	. 
	ld d,l			;c797	55 	U 
	ret nc			;c798	d0 	. 
	xor a			;c799	af 	. 
	ret nc			;c79a	d0 	. 
	ld h,l			;c79b	65 	e 
	jp nc,ld26ah		;c79c	d2 6a d2 	. j . 
	push hl			;c79f	e5 	. 
	ret nc			;c7a0	d0 	. 
	jr $-45		;c7a1	18 d1 	. . 
	ld l,a			;c7a3	6f 	o 
	jp nc,ld274h		;c7a4	d2 74 d2 	. t . 
	ld a,c			;c7a7	79 	y 
	jp nc,ld27eh		;c7a8	d2 7e d2 	. ~ . 
	ld a,a			;c7ab	7f 	 
	pop de			;c7ac	d1 	. 
	add a,e			;c7ad	83 	. 
	jp nc,ld288h		;c7ae	d2 88 d2 	. . . 
	adc a,l			;c7b1	8d 	. 
	jp nc,ld292h		;c7b2	d2 92 d2 	. . . 
	ld a,003h		;c7b5	3e 03 	> . 
	jp ldbf9h		;c7b7	c3 f9 db 	. . . 
	ld a,(ix+02ah)		;c7ba	dd 7e 2a 	. ~ * 
	cp 002h		;c7bd	fe 02 	. . 
	jr z,lc7c8h		;c7bf	28 07 	( . 
	ld a,002h		;c7c1	3e 02 	> . 
	ld b,003h		;c7c3	06 03 	. . 
	jp ldbf9h		;c7c5	c3 f9 db 	. . . 
lc7c8h:
	ld a,(ix+02bh)		;c7c8	dd 7e 2b 	. ~ + 
	cp 001h		;c7cb	fe 01 	. . 
	jr z,lc7e0h		;c7cd	28 11 	( . 
	cp 002h		;c7cf	fe 02 	. . 
	jp z,lc8eah		;c7d1	ca ea c8 	. . . 
	cp 00bh		;c7d4	fe 0b 	. . 
	jp z,lc9a0h		;c7d6	ca a0 c9 	. . . 
	cp 00ah		;c7d9	fe 0a 	. . 
	jp z,lca15h		;c7db	ca 15 ca 	. . . 
	jr lc850h		;c7de	18 70 	. p 
lc7e0h:
	ld a,(ix+02ch)		;c7e0	dd 7e 2c 	. ~ , 
	cp 006h		;c7e3	fe 06 	. . 
	jr z,lc7edh		;c7e5	28 06 	( . 
	cp 008h		;c7e7	fe 08 	. . 
	jr z,lc7edh		;c7e9	28 02 	( . 
	jr lc812h		;c7eb	18 25 	. % 
lc7edh:
	ld a,(ix+02fh)		;c7ed	dd 7e 2f 	. ~ / 
	cp 001h		;c7f0	fe 01 	. . 
	jr nz,lc850h		;c7f2	20 5c 	  \ 
	ld a,(ix+030h)		;c7f4	dd 7e 30 	. ~ 0 
	cp 007h		;c7f7	fe 07 	. . 
	jr z,lc7fdh		;c7f9	28 02 	( . 
	jr lc850h		;c7fb	18 53 	. S 
lc7fdh:
	ld a,0edh		;c7fd	3e ed 	> . 
	call sub_db46h		;c7ff	cd 46 db 	. F . 
	ld a,(ix+02ch)		;c802	dd 7e 2c 	. ~ , 
	cp 006h		;c805	fe 06 	. . 
	jr z,lc80dh		;c807	28 04 	( . 
	ld a,04fh		;c809	3e 4f 	> O 
	jr lc80fh		;c80b	18 02 	. . 
lc80dh:
	ld a,047h		;c80d	3e 47 	> G 
lc80fh:
	jp ld22ah		;c80f	c3 2a d2 	. * . 
lc812h:
	ld a,(ix+02fh)		;c812	dd 7e 2f 	. ~ / 
	cp 001h		;c815	fe 01 	. . 
	jr z,lc829h		;c817	28 10 	( . 
	cp 00bh		;c819	fe 0b 	. . 
	jr z,lc877h		;c81b	28 5a 	( Z 
	cp 00ah		;c81d	fe 0a 	. . 
	jp z,lc8beh		;c81f	ca be c8 	. . . 
	cp 009h		;c822	fe 09 	. . 
	jp z,lc8d4h		;c824	ca d4 c8 	. . . 
	jr lc850h		;c827	18 27 	. ' 
lc829h:
	ld a,(ix+030h)		;c829	dd 7e 30 	. ~ 0 
	cp 006h		;c82c	fe 06 	. . 
	jr z,lc836h		;c82e	28 06 	( . 
	cp 008h		;c830	fe 08 	. . 
	jr z,lc849h		;c832	28 15 	( . 
	jr lc861h		;c834	18 2b 	. + 
lc836h:
	ld a,(ix+02ch)		;c836	dd 7e 2c 	. ~ , 
	cp 007h		;c839	fe 07 	. . 
	jr z,lc83fh		;c83b	28 02 	( . 
	jr lc850h		;c83d	18 11 	. . 
lc83fh:
	ld a,0edh		;c83f	3e ed 	> . 
	call sub_db46h		;c841	cd 46 db 	. F . 
	ld a,057h		;c844	3e 57 	> W 
	jp ld22ah		;c846	c3 2a d2 	. * . 
lc849h:
	ld a,(ix+02ch)		;c849	dd 7e 2c 	. ~ , 
	cp 007h		;c84c	fe 07 	. . 
	jr z,lc857h		;c84e	28 07 	( . 
lc850h:
	ld a,004h		;c850	3e 04 	> . 
	ld b,001h		;c852	06 01 	. . 
	jp ldbf9h		;c854	c3 f9 db 	. . . 
lc857h:
	ld a,0edh		;c857	3e ed 	> . 
	call sub_db46h		;c859	cd 46 db 	. F . 
	ld a,05fh		;c85c	3e 5f 	> _ 
	jp ld22ah		;c85e	c3 2a d2 	. * . 
lc861h:
	ld a,002h		;c861	3e 02 	> . 
	call sub_d2e0h		;c863	cd e0 d2 	. . . 
	ld b,a			;c866	47 	G 
	push bc			;c867	c5 	. 
	ld a,001h		;c868	3e 01 	> . 
	call sub_d2e0h		;c86a	cd e0 d2 	. . . 
	call sub_d5a1h		;c86d	cd a1 d5 	. . . 
	pop bc			;c870	c1 	. 
	add a,b			;c871	80 	. 
	add a,040h		;c872	c6 40 	. @ 
	jp ld22ah		;c874	c3 2a d2 	. * . 
lc877h:
	ld a,(ix+030h)		;c877	dd 7e 30 	. ~ 0 
	cp 00bh		;c87a	fe 0b 	. . 
	jr z,lc8a6h		;c87c	28 28 	( ( 
	cp 00dh		;c87e	fe 0d 	. . 
	jr z,lc8a6h		;c880	28 24 	( $ 
	cp 00eh		;c882	fe 0e 	. . 
	jr z,lc8a6h		;c884	28 20 	(   
	ld a,(ix+02ch)		;c886	dd 7e 2c 	. ~ , 
	cp 007h		;c889	fe 07 	. . 
	jr z,lc88fh		;c88b	28 02 	( . 
	jr lc850h		;c88d	18 c1 	. . 
lc88fh:
	ld a,(ix+030h)		;c88f	dd 7e 30 	. ~ 0 
	cp 009h		;c892	fe 09 	. . 
	jr z,lc89ch		;c894	28 06 	( . 
	cp 00ah		;c896	fe 0a 	. . 
	jr z,lc8a1h		;c898	28 07 	( . 
	jr lc850h		;c89a	18 b4 	. . 
lc89ch:
	ld a,00ah		;c89c	3e 0a 	> . 
	jp ld22ah		;c89e	c3 2a d2 	. * . 
lc8a1h:
	ld a,01ah		;c8a1	3e 1a 	> . 
	jp ld22ah		;c8a3	c3 2a d2 	. * . 
lc8a6h:
	ld a,002h		;c8a6	3e 02 	> . 
	call sub_d389h		;c8a8	cd 89 d3 	. . . 
	ld a,001h		;c8ab	3e 01 	> . 
	call sub_d2e0h		;c8ad	cd e0 d2 	. . . 
	call sub_d5a1h		;c8b0	cd a1 d5 	. . . 
	add a,046h		;c8b3	c6 46 	. F 
	call sub_db46h		;c8b5	cd 46 db 	. F . 
	ld a,002h		;c8b8	3e 02 	> . 
	call sub_d39dh		;c8ba	cd 9d d3 	. . . 
	ret			;c8bd	c9 	. 
lc8beh:
	ld a,(ix+02ch)		;c8be	dd 7e 2c 	. ~ , 
	cp 007h		;c8c1	fe 07 	. . 
	jr z,lc8c7h		;c8c3	28 02 	( . 
	jr lc850h		;c8c5	18 89 	. . 
lc8c7h:
	ld a,03ah		;c8c7	3e 3a 	> : 
	call sub_db46h		;c8c9	cd 46 db 	. F . 
	ld a,002h		;c8cc	3e 02 	> . 
	call sub_d3f3h		;c8ce	cd f3 d3 	. . . 
	jp ld2a6h		;c8d1	c3 a6 d2 	. . . 
lc8d4h:
	ld a,001h		;c8d4	3e 01 	> . 
	call sub_d2e0h		;c8d6	cd e0 d2 	. . . 
	call sub_d5a1h		;c8d9	cd a1 d5 	. . . 
	add a,006h		;c8dc	c6 06 	. . 
	call sub_db46h		;c8de	cd 46 db 	. F . 
	ld a,002h		;c8e1	3e 02 	> . 
	call sub_d3f3h		;c8e3	cd f3 d3 	. . . 
	ld a,l			;c8e6	7d 	} 
	jp ld22ah		;c8e7	c3 2a d2 	. * . 
lc8eah:
	ld a,(ix+02fh)		;c8ea	dd 7e 2f 	. ~ / 
	cp 002h		;c8ed	fe 02 	. . 
	jr z,lc8fbh		;c8ef	28 0a 	( . 
	cp 009h		;c8f1	fe 09 	. . 
	jr z,lc91fh		;c8f3	28 2a 	( * 
	cp 00ah		;c8f5	fe 0a 	. . 
	jr z,lc942h		;c8f7	28 49 	( I 
	jr lc95dh		;c8f9	18 62 	. b 
lc8fbh:
	ld a,(ix+02ch)		;c8fb	dd 7e 2c 	. ~ , 
	cp 00ch		;c8fe	fe 0c 	. . 
	jr z,lc904h		;c900	28 02 	( . 
	jr lc913h		;c902	18 0f 	. . 
lc904h:
	ld a,(ix+030h)		;c904	dd 7e 30 	. ~ 0 
	cp 00bh		;c907	fe 0b 	. . 
	jr z,lc915h		;c909	28 0a 	( . 
	cp 00dh		;c90b	fe 0d 	. . 
	jr z,lc915h		;c90d	28 06 	( . 
	cp 00eh		;c90f	fe 0e 	. . 
	jr z,lc915h		;c911	28 02 	( . 
lc913h:
	jr lc95dh		;c913	18 48 	. H 
lc915h:
	ld a,002h		;c915	3e 02 	> . 
	call sub_d389h		;c917	cd 89 d3 	. . . 
	ld a,0f9h		;c91a	3e f9 	> . 
	jp ld22ah		;c91c	c3 2a d2 	. * . 
lc91fh:
	ld a,(ix+02ch)		;c91f	dd 7e 2c 	. ~ , 
	cp 00fh		;c922	fe 0f 	. . 
	jr nz,lc928h		;c924	20 02 	  . 
	jr lc95dh		;c926	18 35 	. 5 
lc928h:
	ld a,001h		;c928	3e 01 	> . 
	call sub_d389h		;c92a	cd 89 d3 	. . . 
	ld a,001h		;c92d	3e 01 	> . 
	call sub_d31dh		;c92f	cd 1d d3 	. . . 
	call sub_d59fh		;c932	cd 9f d5 	. . . 
	add a,001h		;c935	c6 01 	. . 
	call sub_db46h		;c937	cd 46 db 	. F . 
	ld a,002h		;c93a	3e 02 	> . 
	call sub_d3f3h		;c93c	cd f3 d3 	. . . 
	jp ld2a6h		;c93f	c3 a6 d2 	. . . 
lc942h:
	ld a,(ix+02ch)		;c942	dd 7e 2c 	. ~ , 
	cp 00bh		;c945	fe 0b 	. . 
	jr z,lc964h		;c947	28 1b 	( . 
	cp 00dh		;c949	fe 0d 	. . 
	jr z,lc964h		;c94b	28 17 	( . 
	cp 00eh		;c94d	fe 0e 	. . 
	jr z,lc964h		;c94f	28 13 	( . 
	cp 009h		;c951	fe 09 	. . 
	jr z,lc976h		;c953	28 21 	( ! 
	cp 00ah		;c955	fe 0a 	. . 
	jr z,lc984h		;c957	28 2b 	( + 
	cp 00ch		;c959	fe 0c 	. . 
	jr z,lc992h		;c95b	28 35 	( 5 
lc95dh:
	ld a,004h		;c95d	3e 04 	> . 
	ld b,001h		;c95f	06 01 	. . 
	jp ldbf9h		;c961	c3 f9 db 	. . . 
lc964h:
	ld a,001h		;c964	3e 01 	> . 
	call sub_d389h		;c966	cd 89 d3 	. . . 
	ld a,02ah		;c969	3e 2a 	> * 
	call sub_db46h		;c96b	cd 46 db 	. F . 
	ld a,002h		;c96e	3e 02 	> . 
	call sub_d3f3h		;c970	cd f3 d3 	. . . 
	jp ld2a6h		;c973	c3 a6 d2 	. . . 
lc976h:
	ld hl,04bedh		;c976	21 ed 4b 	! . K 
	call sub_dbf0h		;c979	cd f0 db 	. . . 
	ld a,002h		;c97c	3e 02 	> . 
	call sub_d3f3h		;c97e	cd f3 d3 	. . . 
	jp ld2a6h		;c981	c3 a6 d2 	. . . 
lc984h:
	ld hl,05bedh		;c984	21 ed 5b 	! . [ 
	call sub_dbf0h		;c987	cd f0 db 	. . . 
	ld a,002h		;c98a	3e 02 	> . 
	call sub_d3f3h		;c98c	cd f3 d3 	. . . 
	jp ld2a6h		;c98f	c3 a6 d2 	. . . 
lc992h:
	ld hl,07bedh		;c992	21 ed 7b 	! . { 
	call sub_dbf0h		;c995	cd f0 db 	. . . 
	ld a,002h		;c998	3e 02 	> . 
	call sub_d3f3h		;c99a	cd f3 d3 	. . . 
	jp ld2a6h		;c99d	c3 a6 d2 	. . . 
lc9a0h:
	ld a,(ix+02ch)		;c9a0	dd 7e 2c 	. ~ , 
	cp 00bh		;c9a3	fe 0b 	. . 
	jr z,lc9dbh		;c9a5	28 34 	( 4 
	cp 00dh		;c9a7	fe 0d 	. . 
	jr z,lc9dbh		;c9a9	28 30 	( 0 
	cp 00eh		;c9ab	fe 0e 	. . 
	jr z,lc9dbh		;c9ad	28 2c 	( , 
	ld a,(ix+02fh)		;c9af	dd 7e 2f 	. ~ / 
	cp 001h		;c9b2	fe 01 	. . 
	jr nz,lc9bdh		;c9b4	20 07 	  . 
	ld a,(ix+030h)		;c9b6	dd 7e 30 	. ~ 0 
	cp 007h		;c9b9	fe 07 	. . 
	jr z,lc9c0h		;c9bb	28 03 	( . 
lc9bdh:
	jp lca41h		;c9bd	c3 41 ca 	. A . 
lc9c0h:
	ld a,(ix+02ch)		;c9c0	dd 7e 2c 	. ~ , 
	cp 009h		;c9c3	fe 09 	. . 
	jr z,lc9d2h		;c9c5	28 0b 	( . 
	cp 00ah		;c9c7	fe 0a 	. . 
	jr z,lc9d6h		;c9c9	28 0b 	( . 
	ld a,004h		;c9cb	3e 04 	> . 
	ld b,001h		;c9cd	06 01 	. . 
	jp ldbf9h		;c9cf	c3 f9 db 	. . . 
lc9d2h:
	ld a,002h		;c9d2	3e 02 	> . 
	jr lc9d8h		;c9d4	18 02 	. . 
lc9d6h:
	ld a,012h		;c9d6	3e 12 	> . 
lc9d8h:
	jp ld22ah		;c9d8	c3 2a d2 	. * . 
lc9dbh:
	ld a,(ix+02fh)		;c9db	dd 7e 2f 	. ~ / 
	cp 001h		;c9de	fe 01 	. . 
	jr z,lc9e8h		;c9e0	28 06 	( . 
	cp 009h		;c9e2	fe 09 	. . 
	jr z,lc9fdh		;c9e4	28 17 	( . 
	jr lca41h		;c9e6	18 59 	. Y 
lc9e8h:
	ld a,001h		;c9e8	3e 01 	> . 
	call sub_d389h		;c9ea	cd 89 d3 	. . . 
	ld a,002h		;c9ed	3e 02 	> . 
	call sub_d2e0h		;c9ef	cd e0 d2 	. . . 
	add a,070h		;c9f2	c6 70 	. p 
	call sub_db46h		;c9f4	cd 46 db 	. F . 
	ld a,001h		;c9f7	3e 01 	> . 
	call sub_d39dh		;c9f9	cd 9d d3 	. . . 
	ret			;c9fc	c9 	. 
lc9fdh:
	ld a,001h		;c9fd	3e 01 	> . 
	call sub_d389h		;c9ff	cd 89 d3 	. . . 
	ld a,036h		;ca02	3e 36 	> 6 
	call sub_db46h		;ca04	cd 46 db 	. F . 
	ld a,001h		;ca07	3e 01 	> . 
	call sub_d39dh		;ca09	cd 9d d3 	. . . 
	ld a,002h		;ca0c	3e 02 	> . 
	call sub_d3f3h		;ca0e	cd f3 d3 	. . . 
	ld a,l			;ca11	7d 	} 
	jp ld22ah		;ca12	c3 2a d2 	. * . 
lca15h:
	ld a,(ix+02fh)		;ca15	dd 7e 2f 	. ~ / 
	cp 001h		;ca18	fe 01 	. . 
	jr z,lca22h		;ca1a	28 06 	( . 
	cp 002h		;ca1c	fe 02 	. . 
	jr z,lca22h		;ca1e	28 02 	( . 
	jr lca41h		;ca20	18 1f 	. . 
lca22h:
	ld a,(ix+030h)		;ca22	dd 7e 30 	. ~ 0 
	cp 007h		;ca25	fe 07 	. . 
	jr z,lca48h		;ca27	28 1f 	( . 
	cp 009h		;ca29	fe 09 	. . 
	jr z,lca55h		;ca2b	28 28 	( ( 
	cp 00ah		;ca2d	fe 0a 	. . 
	jr z,lca63h		;ca2f	28 32 	( 2 
	cp 00ch		;ca31	fe 0c 	. . 
	jr z,lca71h		;ca33	28 3c 	( < 
	cp 00bh		;ca35	fe 0b 	. . 
	jr z,lca7fh		;ca37	28 46 	( F 
	cp 00dh		;ca39	fe 0d 	. . 
	jr z,lca7fh		;ca3b	28 42 	( B 
	cp 00eh		;ca3d	fe 0e 	. . 
	jr z,lca7fh		;ca3f	28 3e 	( > 
lca41h:
	ld a,004h		;ca41	3e 04 	> . 
	ld b,001h		;ca43	06 01 	. . 
	jp ldbf9h		;ca45	c3 f9 db 	. . . 
lca48h:
	ld a,032h		;ca48	3e 32 	> 2 
	call sub_db46h		;ca4a	cd 46 db 	. F . 
	ld a,001h		;ca4d	3e 01 	> . 
	call sub_d3f3h		;ca4f	cd f3 d3 	. . . 
	jp ld2a6h		;ca52	c3 a6 d2 	. . . 
lca55h:
	ld hl,043edh		;ca55	21 ed 43 	! . C 
	call sub_dbf0h		;ca58	cd f0 db 	. . . 
	ld a,001h		;ca5b	3e 01 	> . 
	call sub_d3f3h		;ca5d	cd f3 d3 	. . . 
	jp ld2a6h		;ca60	c3 a6 d2 	. . . 
lca63h:
	ld hl,053edh		;ca63	21 ed 53 	! . S 
	call sub_dbf0h		;ca66	cd f0 db 	. . . 
	ld a,001h		;ca69	3e 01 	> . 
	call sub_d3f3h		;ca6b	cd f3 d3 	. . . 
	jp ld2a6h		;ca6e	c3 a6 d2 	. . . 
lca71h:
	ld hl,073edh		;ca71	21 ed 73 	! . s 
	call sub_dbf0h		;ca74	cd f0 db 	. . . 
	ld a,001h		;ca77	3e 01 	> . 
	call sub_d3f3h		;ca79	cd f3 d3 	. . . 
	jp ld2a6h		;ca7c	c3 a6 d2 	. . . 
lca7fh:
	ld a,002h		;ca7f	3e 02 	> . 
	call sub_d389h		;ca81	cd 89 d3 	. . . 
	ld a,022h		;ca84	3e 22 	> " 
	call sub_db46h		;ca86	cd 46 db 	. F . 
	ld a,001h		;ca89	3e 01 	> . 
	call sub_d3f3h		;ca8b	cd f3 d3 	. . . 
	jp ld2a6h		;ca8e	c3 a6 d2 	. . . 
	ld b,0c5h		;ca91	06 c5 	. . 
	jr lca97h		;ca93	18 02 	. . 
lca95h:
	ld b,0c1h		;ca95	06 c1 	. . 
lca97h:
	ld a,(ix+02ah)		;ca97	dd 7e 2a 	. ~ * 
	cp 001h		;ca9a	fe 01 	. . 
	jr z,lcaa5h		;ca9c	28 07 	( . 
	ld a,002h		;ca9e	3e 02 	> . 
	ld b,003h		;caa0	06 03 	. . 
	jp ldbf9h		;caa2	c3 f9 db 	. . . 
lcaa5h:
	ld a,(ix+02bh)		;caa5	dd 7e 2b 	. ~ + 
	cp 002h		;caa8	fe 02 	. . 
	jr nz,lcab5h		;caaa	20 09 	  . 
	ld a,(ix+02ch)		;caac	dd 7e 2c 	. ~ , 
	cp 00ch		;caaf	fe 0c 	. . 
	jr nz,lcabch		;cab1	20 09 	  . 
	jr lca41h		;cab3	18 8c 	. . 
lcab5h:
	ld a,004h		;cab5	3e 04 	> . 
	ld b,001h		;cab7	06 01 	. . 
	jp ldbf9h		;cab9	c3 f9 db 	. . . 
lcabch:
	ld a,001h		;cabc	3e 01 	> . 
	push bc			;cabe	c5 	. 
	call sub_d389h		;cabf	cd 89 d3 	. . . 
	ld a,001h		;cac2	3e 01 	> . 
	call sub_d31dh		;cac4	cd 1d d3 	. . . 
	pop bc			;cac7	c1 	. 
	call sub_d59fh		;cac8	cd 9f d5 	. . . 
	add a,b			;cacb	80 	. 
	call sub_db46h		;cacc	cd 46 db 	. F . 
	ret			;cacf	c9 	. 
	ld a,(ix+02ah)		;cad0	dd 7e 2a 	. ~ * 
	cp 002h		;cad3	fe 02 	. . 
	jr z,lcadeh		;cad5	28 07 	( . 
	ld a,002h		;cad7	3e 02 	> . 
	ld b,003h		;cad9	06 03 	. . 
	jp ldbf9h		;cadb	c3 f9 db 	. . . 
lcadeh:
	ld a,(ix+02bh)		;cade	dd 7e 2b 	. ~ + 
	cp 002h		;cae1	fe 02 	. . 
	jr z,lcaebh		;cae3	28 06 	( . 
	cp 00bh		;cae5	fe 0b 	. . 
	jr z,lcb2bh		;cae7	28 42 	( B 
	jr lcb48h		;cae9	18 5d 	. ] 
lcaebh:
	ld a,(ix+02ch)		;caeb	dd 7e 2c 	. ~ , 
	cp 00fh		;caee	fe 0f 	. . 
	jr z,lcaf8h		;caf0	28 06 	( . 
	cp 00ah		;caf2	fe 0a 	. . 
	jr z,lcb14h		;caf4	28 1e 	( . 
	jr lcb48h		;caf6	18 50 	. P 
lcaf8h:
	ld a,(ix+02fh)		;caf8	dd 7e 2f 	. ~ / 
	cp 002h		;cafb	fe 02 	. . 
	jr z,lcb01h		;cafd	28 02 	( . 
	jr lcb0dh		;caff	18 0c 	. . 
lcb01h:
	ld a,(ix+030h)		;cb01	dd 7e 30 	. ~ 0 
	cp 019h		;cb04	fe 19 	. . 
	jr nz,lcb0dh		;cb06	20 05 	  . 
	ld a,008h		;cb08	3e 08 	> . 
	jp ld22ah		;cb0a	c3 2a d2 	. * . 
lcb0dh:
	ld a,004h		;cb0d	3e 04 	> . 
	ld b,001h		;cb0f	06 01 	. . 
	jp ldbf9h		;cb11	c3 f9 db 	. . . 
lcb14h:
	ld a,(ix+02fh)		;cb14	dd 7e 2f 	. ~ / 
	cp 002h		;cb17	fe 02 	. . 
	jr z,lcb1dh		;cb19	28 02 	( . 
	jr lcb48h		;cb1b	18 2b 	. + 
lcb1dh:
	ld a,(ix+030h)		;cb1d	dd 7e 30 	. ~ 0 
	cp 00bh		;cb20	fe 0b 	. . 
	jr z,lcb26h		;cb22	28 02 	( . 
	jr lcb48h		;cb24	18 22 	. " 
lcb26h:
	ld a,0ebh		;cb26	3e eb 	> . 
	jp ld22ah		;cb28	c3 2a d2 	. * . 
lcb2bh:
	ld a,(ix+02ch)		;cb2b	dd 7e 2c 	. ~ , 
	cp 00ch		;cb2e	fe 0c 	. . 
	jr nz,lcb48h		;cb30	20 16 	  . 
	ld a,(ix+02fh)		;cb32	dd 7e 2f 	. ~ / 
	cp 002h		;cb35	fe 02 	. . 
	jr nz,lcb48h		;cb37	20 0f 	  . 
	ld a,(ix+030h)		;cb39	dd 7e 30 	. ~ 0 
	cp 00bh		;cb3c	fe 0b 	. . 
	jr z,lcb4fh		;cb3e	28 0f 	( . 
	cp 00dh		;cb40	fe 0d 	. . 
	jr z,lcb4fh		;cb42	28 0b 	( . 
	cp 00eh		;cb44	fe 0e 	. . 
	jr z,lcb4fh		;cb46	28 07 	( . 
lcb48h:
	ld a,004h		;cb48	3e 04 	> . 
	ld b,001h		;cb4a	06 01 	. . 
	jp ldbf9h		;cb4c	c3 f9 db 	. . . 
lcb4fh:
	ld a,002h		;cb4f	3e 02 	> . 
	call sub_d389h		;cb51	cd 89 d3 	. . . 
	ld a,0e3h		;cb54	3e e3 	> . 
	jp ld22ah		;cb56	c3 2a d2 	. * . 
lcb59h:
	ld a,(ix+02ah)		;cb59	dd 7e 2a 	. ~ * 
	cp 002h		;cb5c	fe 02 	. . 
	jr z,lcb67h		;cb5e	28 07 	( . 
	ld a,002h		;cb60	3e 02 	> . 
	ld b,003h		;cb62	06 03 	. . 
	jp ldbf9h		;cb64	c3 f9 db 	. . . 
lcb67h:
	ld a,(ix+02bh)		;cb67	dd 7e 2b 	. ~ + 
	cp 001h		;cb6a	fe 01 	. . 
	jr z,lcb75h		;cb6c	28 07 	( . 
	cp 002h		;cb6e	fe 02 	. . 
	jr z,lcbceh		;cb70	28 5c 	( \ 
	jp lcc23h		;cb72	c3 23 cc 	. # . 
lcb75h:
	ld a,(ix+02ch)		;cb75	dd 7e 2c 	. ~ , 
	cp 007h		;cb78	fe 07 	. . 
	jr z,lcb7fh		;cb7a	28 03 	( . 
	jp lcc23h		;cb7c	c3 23 cc 	. # . 
lcb7fh:
	ld a,(ix+02fh)		;cb7f	dd 7e 2f 	. ~ / 
	cp 001h		;cb82	fe 01 	. . 
	jr z,lcb91h		;cb84	28 0b 	( . 
	cp 00bh		;cb86	fe 0b 	. . 
	jr z,lcb9bh		;cb88	28 11 	( . 
	cp 009h		;cb8a	fe 09 	. . 
	jr z,lcbbeh		;cb8c	28 30 	( 0 
	jp lcc23h		;cb8e	c3 23 cc 	. # . 
lcb91h:
	ld a,002h		;cb91	3e 02 	> . 
	call sub_d2e0h		;cb93	cd e0 d2 	. . . 
	or 080h		;cb96	f6 80 	. . 
	jp ld22ah		;cb98	c3 2a d2 	. * . 
lcb9bh:
	ld a,(ix+030h)		;cb9b	dd 7e 30 	. ~ 0 
	cp 00bh		;cb9e	fe 0b 	. . 
	jr z,lcbach		;cba0	28 0a 	( . 
	cp 00dh		;cba2	fe 0d 	. . 
	jr z,lcbach		;cba4	28 06 	( . 
	cp 00eh		;cba6	fe 0e 	. . 
	jr z,lcbach		;cba8	28 02 	( . 
	jr lcc23h		;cbaa	18 77 	. w 
lcbach:
	ld a,002h		;cbac	3e 02 	> . 
	call sub_d389h		;cbae	cd 89 d3 	. . . 
	ld a,006h		;cbb1	3e 06 	> . 
	or 080h		;cbb3	f6 80 	. . 
	call sub_db46h		;cbb5	cd 46 db 	. F . 
	ld a,002h		;cbb8	3e 02 	> . 
	call sub_d39dh		;cbba	cd 9d d3 	. . . 
	ret			;cbbd	c9 	. 
lcbbeh:
	ld a,046h		;cbbe	3e 46 	> F 
	or 080h		;cbc0	f6 80 	. . 
	call sub_db46h		;cbc2	cd 46 db 	. F . 
	ld a,002h		;cbc5	3e 02 	> . 
	call sub_d3f3h		;cbc7	cd f3 d3 	. . . 
	ld a,l			;cbca	7d 	} 
	jp ld22ah		;cbcb	c3 2a d2 	. * . 
lcbceh:
	ld a,(ix+02fh)		;cbce	dd 7e 2f 	. ~ / 
	cp 002h		;cbd1	fe 02 	. . 
	jr nz,lcc23h		;cbd3	20 4e 	  N 
	ld a,(ix+02ch)		;cbd5	dd 7e 2c 	. ~ , 
	cp 00bh		;cbd8	fe 0b 	. . 
	jr z,lcbe6h		;cbda	28 0a 	( . 
	cp 00dh		;cbdc	fe 0d 	. . 
	jr z,lcbfbh		;cbde	28 1b 	( . 
	cp 00eh		;cbe0	fe 0e 	. . 
	jr z,lcc10h		;cbe2	28 2c 	( , 
	jr lcc23h		;cbe4	18 3d 	. = 
lcbe6h:
	ld a,(ix+030h)		;cbe6	dd 7e 30 	. ~ 0 
	cp 009h		;cbe9	fe 09 	. . 
	jr z,lcc2ah		;cbeb	28 3d 	( = 
	cp 00ah		;cbed	fe 0a 	. . 
	jr z,lcc2ah		;cbef	28 39 	( 9 
	cp 00bh		;cbf1	fe 0b 	. . 
	jr z,lcc2ah		;cbf3	28 35 	( 5 
	cp 00ch		;cbf5	fe 0c 	. . 
	jr z,lcc2ah		;cbf7	28 31 	( 1 
	jr lcc23h		;cbf9	18 28 	. ( 
lcbfbh:
	ld a,(ix+030h)		;cbfb	dd 7e 30 	. ~ 0 
	cp 009h		;cbfe	fe 09 	. . 
	jr z,lcc2ah		;cc00	28 28 	( ( 
	cp 00ah		;cc02	fe 0a 	. . 
	jr z,lcc2ah		;cc04	28 24 	( $ 
	cp 00ch		;cc06	fe 0c 	. . 
	jr z,lcc2ah		;cc08	28 20 	(   
	cp 00dh		;cc0a	fe 0d 	. . 
	jr z,lcc2ah		;cc0c	28 1c 	( . 
	jr lcc23h		;cc0e	18 13 	. . 
lcc10h:
	ld a,(ix+030h)		;cc10	dd 7e 30 	. ~ 0 
	cp 009h		;cc13	fe 09 	. . 
	jr z,lcc2ah		;cc15	28 13 	( . 
	cp 00ah		;cc17	fe 0a 	. . 
	jr z,lcc2ah		;cc19	28 0f 	( . 
	cp 00ch		;cc1b	fe 0c 	. . 
	jr z,lcc2ah		;cc1d	28 0b 	( . 
	cp 00eh		;cc1f	fe 0e 	. . 
	jr z,lcc2ah		;cc21	28 07 	( . 
lcc23h:
	ld a,004h		;cc23	3e 04 	> . 
	ld b,001h		;cc25	06 01 	. . 
	jp ldbf9h		;cc27	c3 f9 db 	. . . 
lcc2ah:
	ld a,001h		;cc2a	3e 01 	> . 
	call sub_d389h		;cc2c	cd 89 d3 	. . . 
	ld a,002h		;cc2f	3e 02 	> . 
	call sub_d31dh		;cc31	cd 1d d3 	. . . 
	call sub_d59fh		;cc34	cd 9f d5 	. . . 
	or 009h		;cc37	f6 09 	. . 
	jp ld22ah		;cc39	c3 2a d2 	. * . 
	ld bc,0884ah		;cc3c	01 4a 88 	. J . 
	jr lcc44h		;cc3f	18 03 	. . 
	ld bc,09842h		;cc41	01 42 98 	. B . 
lcc44h:
	ld a,(ix+02ah)		;cc44	dd 7e 2a 	. ~ * 
	cp 002h		;cc47	fe 02 	. . 
	jr z,lcc52h		;cc49	28 07 	( . 
	ld a,002h		;cc4b	3e 02 	> . 
	ld b,003h		;cc4d	06 03 	. . 
	jp ldbf9h		;cc4f	c3 f9 db 	. . . 
lcc52h:
	ld a,(ix+02bh)		;cc52	dd 7e 2b 	. ~ + 
	cp 001h		;cc55	fe 01 	. . 
	jr z,lcc5fh		;cc57	28 06 	( . 
	cp 002h		;cc59	fe 02 	. . 
	jr z,lccb7h		;cc5b	28 5a 	( Z 
	jr lccd8h		;cc5d	18 79 	. y 
lcc5fh:
	ld a,(ix+02ch)		;cc5f	dd 7e 2c 	. ~ , 
	cp 007h		;cc62	fe 07 	. . 
	jr z,lcc68h		;cc64	28 02 	( . 
	jr lccd8h		;cc66	18 70 	. p 
lcc68h:
	ld a,(ix+02fh)		;cc68	dd 7e 2f 	. ~ / 
	cp 001h		;cc6b	fe 01 	. . 
	jr z,lcc79h		;cc6d	28 0a 	( . 
	cp 00bh		;cc6f	fe 0b 	. . 
	jr z,lcc84h		;cc71	28 11 	( . 
	cp 009h		;cc73	fe 09 	. . 
	jr z,lcca8h		;cc75	28 31 	( 1 
	jr lccd8h		;cc77	18 5f 	. _ 
lcc79h:
	push bc			;cc79	c5 	. 
	ld a,002h		;cc7a	3e 02 	> . 
	call sub_d2e0h		;cc7c	cd e0 d2 	. . . 
	pop bc			;cc7f	c1 	. 
	add a,b			;cc80	80 	. 
	jp ld22ah		;cc81	c3 2a d2 	. * . 
lcc84h:
	ld a,(ix+030h)		;cc84	dd 7e 30 	. ~ 0 
	cp 00bh		;cc87	fe 0b 	. . 
	jr z,lcc95h		;cc89	28 0a 	( . 
	cp 00dh		;cc8b	fe 0d 	. . 
	jr z,lcc95h		;cc8d	28 06 	( . 
	cp 00eh		;cc8f	fe 0e 	. . 
	jr z,lcc95h		;cc91	28 02 	( . 
	jr lccd8h		;cc93	18 43 	. C 
lcc95h:
	push bc			;cc95	c5 	. 
	ld a,002h		;cc96	3e 02 	> . 
	call sub_d389h		;cc98	cd 89 d3 	. . . 
	pop bc			;cc9b	c1 	. 
	ld a,006h		;cc9c	3e 06 	> . 
	add a,b			;cc9e	80 	. 
	call sub_db46h		;cc9f	cd 46 db 	. F . 
	ld a,002h		;cca2	3e 02 	> . 
	call sub_d39dh		;cca4	cd 9d d3 	. . . 
	ret			;cca7	c9 	. 
lcca8h:
	ld a,046h		;cca8	3e 46 	> F 
	add a,b			;ccaa	80 	. 
	call sub_db46h		;ccab	cd 46 db 	. F . 
	ld a,002h		;ccae	3e 02 	> . 
	call sub_d3f3h		;ccb0	cd f3 d3 	. . . 
	ld a,l			;ccb3	7d 	} 
	jp ld22ah		;ccb4	c3 2a d2 	. * . 
lccb7h:
	ld a,(ix+02ch)		;ccb7	dd 7e 2c 	. ~ , 
	cp 00bh		;ccba	fe 0b 	. . 
	jr nz,lccd8h		;ccbc	20 1a 	  . 
	ld a,(ix+02fh)		;ccbe	dd 7e 2f 	. ~ / 
	cp 00bh		;ccc1	fe 0b 	. . 
	jr z,lccd8h		;ccc3	28 13 	( . 
	ld a,(ix+030h)		;ccc5	dd 7e 30 	. ~ 0 
	cp 009h		;ccc8	fe 09 	. . 
	jr z,lccdfh		;ccca	28 13 	( . 
	cp 00ah		;cccc	fe 0a 	. . 
	jr z,lccdfh		;ccce	28 0f 	( . 
	cp 00bh		;ccd0	fe 0b 	. . 
	jr z,lccdfh		;ccd2	28 0b 	( . 
	cp 00ch		;ccd4	fe 0c 	. . 
	jr z,lccdfh		;ccd6	28 07 	( . 
lccd8h:
	ld a,004h		;ccd8	3e 04 	> . 
	ld b,001h		;ccda	06 01 	. . 
	jp ldbf9h		;ccdc	c3 f9 db 	. . . 
lccdfh:
	push bc			;ccdf	c5 	. 
	ld a,0edh		;cce0	3e ed 	> . 
	call sub_db46h		;cce2	cd 46 db 	. F . 
	ld a,002h		;cce5	3e 02 	> . 
	call sub_d31dh		;cce7	cd 1d d3 	. . . 
	call sub_d59fh		;ccea	cd 9f d5 	. . . 
	pop bc			;cced	c1 	. 
	add a,c			;ccee	81 	. 
	jp ld22ah		;ccef	c3 2a d2 	. * . 
sub_ccf2h:
	ld b,090h		;ccf2	06 90 	. . 
	jr lccf8h		;ccf4	18 02 	. . 
sub_ccf6h:
	ld b,0a0h		;ccf6	06 a0 	. . 
lccf8h:
	ld a,(ix+02ah)		;ccf8	dd 7e 2a 	. ~ * 
	cp 001h		;ccfb	fe 01 	. . 
	jr z,lcd06h		;ccfd	28 07 	( . 
	ld a,002h		;ccff	3e 02 	> . 
	ld b,003h		;cd01	06 03 	. . 
	jp ldbf9h		;cd03	c3 f9 db 	. . . 
lcd06h:
	ld a,(ix+02bh)		;cd06	dd 7e 2b 	. ~ + 
	cp 001h		;cd09	fe 01 	. . 
	jr z,lcd17h		;cd0b	28 0a 	( . 
	cp 00bh		;cd0d	fe 0b 	. . 
	jr z,lcd22h		;cd0f	28 11 	( . 
	cp 009h		;cd11	fe 09 	. . 
	jr z,lcd51h		;cd13	28 3c 	( < 
	jr lcd31h		;cd15	18 1a 	. . 
lcd17h:
	push bc			;cd17	c5 	. 
	ld a,001h		;cd18	3e 01 	> . 
	call sub_d2e0h		;cd1a	cd e0 d2 	. . . 
	pop bc			;cd1d	c1 	. 
	or b			;cd1e	b0 	. 
	jp ld22ah		;cd1f	c3 2a d2 	. * . 
lcd22h:
	ld a,(ix+02ch)		;cd22	dd 7e 2c 	. ~ , 
	cp 00bh		;cd25	fe 0b 	. . 
	jr z,lcd38h		;cd27	28 0f 	( . 
	cp 00dh		;cd29	fe 0d 	. . 
	jr z,lcd38h		;cd2b	28 0b 	( . 
	cp 00eh		;cd2d	fe 0e 	. . 
	jr z,lcd38h		;cd2f	28 07 	( . 
lcd31h:
	ld a,004h		;cd31	3e 04 	> . 
	ld b,001h		;cd33	06 01 	. . 
	jp ldbf9h		;cd35	c3 f9 db 	. . . 
lcd38h:
	push bc			;cd38	c5 	. 
	ld a,001h		;cd39	3e 01 	> . 
	call sub_d389h		;cd3b	cd 89 d3 	. . . 
	pop bc			;cd3e	c1 	. 
	ld a,b			;cd3f	78 	x 
	add a,006h		;cd40	c6 06 	. . 
	call sub_db46h		;cd42	cd 46 db 	. F . 
	ld a,(ix+02ch)		;cd45	dd 7e 2c 	. ~ , 
	cp 00bh		;cd48	fe 0b 	. . 
	ret z			;cd4a	c8 	. 
	ld a,001h		;cd4b	3e 01 	> . 
	call sub_d39dh		;cd4d	cd 9d d3 	. . . 
	ret			;cd50	c9 	. 
lcd51h:
	ld a,040h		;cd51	3e 40 	> @ 
	or b			;cd53	b0 	. 
	add a,006h		;cd54	c6 06 	. . 
	call sub_db46h		;cd56	cd 46 db 	. F . 
	ld h,(ix+033h)		;cd59	dd 66 33 	. f 3 
	ld l,(ix+034h)		;cd5c	dd 6e 34 	. n 4 
	inc hl			;cd5f	23 	# 
	ld a,(hl)			;cd60	7e 	~ 
	jp ld22ah		;cd61	c3 2a d2 	. * . 
	ld b,0b0h		;cd64	06 b0 	. . 
	jr lccf8h		;cd66	18 90 	. . 
sub_cd68h:
	ld b,0a8h		;cd68	06 a8 	. . 
	jr lccf8h		;cd6a	18 8c 	. . 
	ld b,0b8h		;cd6c	06 b8 	. . 
	jr lccf8h		;cd6e	18 88 	. . 
sub_cd70h:
	ld bc,00403h		;cd70	01 03 04 	. . . 
	jr lcd78h		;cd73	18 03 	. . 
	ld bc,0050bh		;cd75	01 0b 05 	. . . 
lcd78h:
	ld a,(ix+02ah)		;cd78	dd 7e 2a 	. ~ * 
	cp 001h		;cd7b	fe 01 	. . 
	jr z,lcd86h		;cd7d	28 07 	( . 
	ld a,002h		;cd7f	3e 02 	> . 
	ld b,003h		;cd81	06 03 	. . 
	jp ldbf9h		;cd83	c3 f9 db 	. . . 
lcd86h:
	ld a,(ix+02bh)		;cd86	dd 7e 2b 	. ~ + 
	cp 001h		;cd89	fe 01 	. . 
	jr z,lcd97h		;cd8b	28 0a 	( . 
	cp 002h		;cd8d	fe 02 	. . 
	jr z,lcda5h		;cd8f	28 14 	( . 
	cp 00bh		;cd91	fe 0b 	. . 
	jr z,lcdbfh		;cd93	28 2a 	( * 
	jr lcdceh		;cd95	18 37 	. 7 
lcd97h:
	push bc			;cd97	c5 	. 
	ld a,001h		;cd98	3e 01 	> . 
	call sub_d2e0h		;cd9a	cd e0 d2 	. . . 
	call sub_d5a1h		;cd9d	cd a1 d5 	. . . 
	pop bc			;cda0	c1 	. 
	add a,b			;cda1	80 	. 
	jp ld22ah		;cda2	c3 2a d2 	. * . 
lcda5h:
	ld a,(ix+02ch)		;cda5	dd 7e 2c 	. ~ , 
	cp 00fh		;cda8	fe 0f 	. . 
	jr z,lcdceh		;cdaa	28 22 	( " 
	push bc			;cdac	c5 	. 
	ld a,001h		;cdad	3e 01 	> . 
	call sub_d389h		;cdaf	cd 89 d3 	. . . 
	ld a,001h		;cdb2	3e 01 	> . 
	call sub_d31dh		;cdb4	cd 1d d3 	. . . 
	call sub_d59fh		;cdb7	cd 9f d5 	. . . 
	pop bc			;cdba	c1 	. 
	add a,c			;cdbb	81 	. 
	jp ld22ah		;cdbc	c3 2a d2 	. * . 
lcdbfh:
	ld a,(ix+02ch)		;cdbf	dd 7e 2c 	. ~ , 
	cp 00bh		;cdc2	fe 0b 	. . 
	jr z,lcdd5h		;cdc4	28 0f 	( . 
	cp 00dh		;cdc6	fe 0d 	. . 
	jr z,lcdd5h		;cdc8	28 0b 	( . 
	cp 00eh		;cdca	fe 0e 	. . 
	jr z,lcdd5h		;cdcc	28 07 	( . 
lcdceh:
	ld a,004h		;cdce	3e 04 	> . 
	ld b,001h		;cdd0	06 01 	. . 
	jp ldbf9h		;cdd2	c3 f9 db 	. . . 
lcdd5h:
	push bc			;cdd5	c5 	. 
	ld a,001h		;cdd6	3e 01 	> . 
	call sub_d389h		;cdd8	cd 89 d3 	. . . 
	pop bc			;cddb	c1 	. 
	ld a,b			;cddc	78 	x 
	add a,030h		;cddd	c6 30 	. 0 
	call sub_db46h		;cddf	cd 46 db 	. F . 
	ld a,001h		;cde2	3e 01 	> . 
	call sub_d39dh		;cde4	cd 9d d3 	. . . 
	ret			;cde7	c9 	. 
	ld a,(ix+02ah)		;cde8	dd 7e 2a 	. ~ * 
	cp 001h		;cdeb	fe 01 	. . 
	jr z,lcdf6h		;cded	28 07 	( . 
	ld a,002h		;cdef	3e 02 	> . 
	ld b,003h		;cdf1	06 03 	. . 
	jp ldbf9h		;cdf3	c3 f9 db 	. . . 
lcdf6h:
	ld a,(ix+02bh)		;cdf6	dd 7e 2b 	. ~ + 
	cp 009h		;cdf9	fe 09 	. . 
	jr z,lce04h		;cdfb	28 07 	( . 
	ld a,004h		;cdfd	3e 04 	> . 
	ld b,001h		;cdff	06 01 	. . 
	jp ldbf9h		;ce01	c3 f9 db 	. . . 
lce04h:
	ld a,001h		;ce04	3e 01 	> . 
	call sub_d3f3h		;ce06	cd f3 d3 	. . . 
	ld a,l			;ce09	7d 	} 
	or a			;ce0a	b7 	. 
	jr z,lce1ch		;ce0b	28 0f 	( . 
	cp 001h		;ce0d	fe 01 	. . 
	jr z,lce20h		;ce0f	28 0f 	( . 
	cp 002h		;ce11	fe 02 	. . 
	jr z,lce24h		;ce13	28 0f 	( . 
	ld a,004h		;ce15	3e 04 	> . 
	ld b,003h		;ce17	06 03 	. . 
	jp ldbf9h		;ce19	c3 f9 db 	. . . 
lce1ch:
	ld b,046h		;ce1c	06 46 	. F 
	jr lce26h		;ce1e	18 06 	. . 
lce20h:
	ld b,056h		;ce20	06 56 	. V 
	jr lce26h		;ce22	18 02 	. . 
lce24h:
	ld b,05eh		;ce24	06 5e 	. ^ 
lce26h:
	ld a,0edh		;ce26	3e ed 	> . 
	push bc			;ce28	c5 	. 
	call sub_db46h		;ce29	cd 46 db 	. F . 
	pop bc			;ce2c	c1 	. 
	ld a,b			;ce2d	78 	x 
	jp ld22ah		;ce2e	c3 2a d2 	. * . 
	ld b,000h		;ce31	06 00 	. . 
	jr lce4bh		;ce33	18 16 	. . 
	ld b,010h		;ce35	06 10 	. . 
	jr lce4bh		;ce37	18 12 	. . 
	ld b,008h		;ce39	06 08 	. . 
	jr lce4bh		;ce3b	18 0e 	. . 
	ld b,018h		;ce3d	06 18 	. . 
	jr lce4bh		;ce3f	18 0a 	. . 
	ld b,020h		;ce41	06 20 	.   
	jr lce4bh		;ce43	18 06 	. . 
	ld b,028h		;ce45	06 28 	. ( 
	jr lce4bh		;ce47	18 02 	. . 
	ld b,038h		;ce49	06 38 	. 8 
lce4bh:
	ld a,(ix+02ah)		;ce4b	dd 7e 2a 	. ~ * 
	cp 001h		;ce4e	fe 01 	. . 
	jr z,lce59h		;ce50	28 07 	( . 
	ld a,002h		;ce52	3e 02 	> . 
	ld b,003h		;ce54	06 03 	. . 
	jp ldbf9h		;ce56	c3 f9 db 	. . . 
lce59h:
	ld a,(ix+02bh)		;ce59	dd 7e 2b 	. ~ + 
	cp 001h		;ce5c	fe 01 	. . 
	jr z,lce6bh		;ce5e	28 0b 	( . 
	cp 00bh		;ce60	fe 0b 	. . 
	jr z,lce6bh		;ce62	28 07 	( . 
	ld a,004h		;ce64	3e 04 	> . 
	ld b,001h		;ce66	06 01 	. . 
	jp ldbf9h		;ce68	c3 f9 db 	. . . 
lce6bh:
	push bc			;ce6b	c5 	. 
	ld a,001h		;ce6c	3e 01 	> . 
	call sub_d389h		;ce6e	cd 89 d3 	. . . 
	ld a,0cbh		;ce71	3e cb 	> . 
	call sub_db46h		;ce73	cd 46 db 	. F . 
	ld a,001h		;ce76	3e 01 	> . 
	call sub_d39dh		;ce78	cd 9d d3 	. . . 
	ld a,001h		;ce7b	3e 01 	> . 
	call sub_d2e0h		;ce7d	cd e0 d2 	. . . 
	pop bc			;ce80	c1 	. 
	or b			;ce81	b0 	. 
	jp ld22ah		;ce82	c3 2a d2 	. * . 
	ld b,040h		;ce85	06 40 	. @ 
	jr lce8fh		;ce87	18 06 	. . 
	ld b,0c0h		;ce89	06 c0 	. . 
	jr lce8fh		;ce8b	18 02 	. . 
	ld b,080h		;ce8d	06 80 	. . 
lce8fh:
	ld a,(ix+02ah)		;ce8f	dd 7e 2a 	. ~ * 
	cp 002h		;ce92	fe 02 	. . 
	jr z,lce9dh		;ce94	28 07 	( . 
	ld a,002h		;ce96	3e 02 	> . 
	ld b,003h		;ce98	06 03 	. . 
	jp ldbf9h		;ce9a	c3 f9 db 	. . . 
lce9dh:
	ld a,(ix+02bh)		;ce9d	dd 7e 2b 	. ~ + 
	cp 009h		;cea0	fe 09 	. . 
	jr nz,lceafh		;cea2	20 0b 	  . 
	ld a,(ix+02fh)		;cea4	dd 7e 2f 	. ~ / 
	cp 001h		;cea7	fe 01 	. . 
	jr z,lceb6h		;cea9	28 0b 	( . 
	cp 00bh		;ceab	fe 0b 	. . 
	jr z,lceb6h		;cead	28 07 	( . 
lceafh:
	ld a,004h		;ceaf	3e 04 	> . 
	ld b,001h		;ceb1	06 01 	. . 
	jp ldbf9h		;ceb3	c3 f9 db 	. . . 
lceb6h:
	push bc			;ceb6	c5 	. 
	ld a,002h		;ceb7	3e 02 	> . 
	call sub_d389h		;ceb9	cd 89 d3 	. . . 
	ld a,0cbh		;cebc	3e cb 	> . 
	call sub_db46h		;cebe	cd 46 db 	. F . 
	ld a,002h		;cec1	3e 02 	> . 
	call sub_d39dh		;cec3	cd 9d d3 	. . . 
	ld a,(ix+02dh)		;cec6	dd 7e 2d 	. ~ - 
	or a			;cec9	b7 	. 
	jr nz,lced7h		;ceca	20 0b 	  . 
	ld a,(ix+02eh)		;cecc	dd 7e 2e 	. ~ . 
	cp 000h		;cecf	fe 00 	. . 
	jr c,lced7h		;ced1	38 04 	8 . 
	cp 008h		;ced3	fe 08 	. . 
	jr c,lcedeh		;ced5	38 07 	8 . 
lced7h:
	ld a,004h		;ced7	3e 04 	> . 
	ld b,003h		;ced9	06 03 	. . 
	jp ldbf9h		;cedb	c3 f9 db 	. . . 
lcedeh:
	ld a,(ix+02fh)		;cede	dd 7e 2f 	. ~ / 
	cp 001h		;cee1	fe 01 	. . 
	jr z,lcefbh		;cee3	28 16 	( . 
	ld a,(ix+030h)		;cee5	dd 7e 30 	. ~ 0 
	cp 00bh		;cee8	fe 0b 	. . 
	jr z,lcf11h		;ceea	28 25 	( % 
	cp 00dh		;ceec	fe 0d 	. . 
	jr z,lcf11h		;ceee	28 21 	( ! 
	cp 00eh		;cef0	fe 0e 	. . 
	jr z,lcf11h		;cef2	28 1d 	( . 
	ld a,004h		;cef4	3e 04 	> . 
	ld b,001h		;cef6	06 01 	. . 
	jp ldbf9h		;cef8	c3 f9 db 	. . . 
lcefbh:
	ld a,(ix+02eh)		;cefb	dd 7e 2e 	. ~ . 
	and 007h		;cefe	e6 07 	. . 
	call sub_d5a1h		;cf00	cd a1 d5 	. . . 
	pop bc			;cf03	c1 	. 
	add a,b			;cf04	80 	. 
	ld b,a			;cf05	47 	G 
	push bc			;cf06	c5 	. 
	ld a,002h		;cf07	3e 02 	> . 
	call sub_d2e0h		;cf09	cd e0 d2 	. . . 
	pop bc			;cf0c	c1 	. 
	add a,b			;cf0d	80 	. 
	jp ld22ah		;cf0e	c3 2a d2 	. * . 
lcf11h:
	ld a,(ix+02eh)		;cf11	dd 7e 2e 	. ~ . 
	and 007h		;cf14	e6 07 	. . 
	call sub_d5a1h		;cf16	cd a1 d5 	. . . 
	pop bc			;cf19	c1 	. 
	add a,b			;cf1a	80 	. 
	add a,006h		;cf1b	c6 06 	. . 
	jp ld22ah		;cf1d	c3 2a d2 	. * . 
	ld a,(ix+02ah)		;cf20	dd 7e 2a 	. ~ * 
	cp 001h		;cf23	fe 01 	. . 
	jr z,lcf32h		;cf25	28 0b 	( . 
	cp 002h		;cf27	fe 02 	. . 
	jr z,lcf67h		;cf29	28 3c 	( < 
	ld a,002h		;cf2b	3e 02 	> . 
	ld b,003h		;cf2d	06 03 	. . 
	jp ldbf9h		;cf2f	c3 f9 db 	. . . 
lcf32h:
	ld a,(ix+02bh)		;cf32	dd 7e 2b 	. ~ + 
	cp 009h		;cf35	fe 09 	. . 
	jr z,lcf3fh		;cf37	28 06 	( . 
	cp 00bh		;cf39	fe 0b 	. . 
	jr z,lcf4ch		;cf3b	28 0f 	( . 
	jr lcf72h		;cf3d	18 33 	. 3 
lcf3fh:
	ld a,0c3h		;cf3f	3e c3 	> . 
	call sub_db46h		;cf41	cd 46 db 	. F . 
	ld a,001h		;cf44	3e 01 	> . 
	call sub_d3f3h		;cf46	cd f3 d3 	. . . 
	jp ld2a6h		;cf49	c3 a6 d2 	. . . 
lcf4ch:
	ld a,(ix+02ch)		;cf4c	dd 7e 2c 	. ~ , 
	cp 00bh		;cf4f	fe 0b 	. . 
	jr z,lcf5dh		;cf51	28 0a 	( . 
	cp 00dh		;cf53	fe 0d 	. . 
	jr z,lcf5dh		;cf55	28 06 	( . 
	cp 00eh		;cf57	fe 0e 	. . 
	jr z,lcf5dh		;cf59	28 02 	( . 
	jr lcf72h		;cf5b	18 15 	. . 
lcf5dh:
	ld a,001h		;cf5d	3e 01 	> . 
	call sub_d389h		;cf5f	cd 89 d3 	. . . 
	ld a,0e9h		;cf62	3e e9 	> . 
	jp ld22ah		;cf64	c3 2a d2 	. * . 
lcf67h:
	ld a,(ix+02bh)		;cf67	dd 7e 2b 	. ~ + 
	cp 001h		;cf6a	fe 01 	. . 
	jr z,lcf79h		;cf6c	28 0b 	( . 
	cp 008h		;cf6e	fe 08 	. . 
	jr z,lcf79h		;cf70	28 07 	( . 
lcf72h:
	ld a,004h		;cf72	3e 04 	> . 
	ld b,001h		;cf74	06 01 	. . 
	jp ldbf9h		;cf76	c3 f9 db 	. . . 
lcf79h:
	ld a,(ix+02fh)		;cf79	dd 7e 2f 	. ~ / 
	cp 009h		;cf7c	fe 09 	. . 
	jr nz,lcf72h		;cf7e	20 f2 	  . 
	ld a,001h		;cf80	3e 01 	> . 
	call sub_d359h		;cf82	cd 59 d3 	. Y . 
	call sub_d5a1h		;cf85	cd a1 d5 	. . . 
	add a,0c2h		;cf88	c6 c2 	. . 
	call sub_db46h		;cf8a	cd 46 db 	. F . 
	ld a,002h		;cf8d	3e 02 	> . 
	call sub_d3f3h		;cf8f	cd f3 d3 	. . . 
	jp ld2a6h		;cf92	c3 a6 d2 	. . . 
	ld a,(ix+02ah)		;cf95	dd 7e 2a 	. ~ * 
	cp 001h		;cf98	fe 01 	. . 
	jr z,lcfa7h		;cf9a	28 0b 	( . 
	cp 002h		;cf9c	fe 02 	. . 
	jr z,lcfbch		;cf9e	28 1c 	( . 
	ld a,002h		;cfa0	3e 02 	> . 
	ld b,003h		;cfa2	06 03 	. . 
	jp ldbf9h		;cfa4	c3 f9 db 	. . . 
lcfa7h:
	ld a,(ix+02bh)		;cfa7	dd 7e 2b 	. ~ + 
	cp 009h		;cfaa	fe 09 	. . 
	jr z,lcfb0h		;cfac	28 02 	( . 
	jr lcfd0h		;cfae	18 20 	.   
lcfb0h:
	ld a,018h		;cfb0	3e 18 	> . 
	call sub_db46h		;cfb2	cd 46 db 	. F . 
	ld a,001h		;cfb5	3e 01 	> . 
	call sub_d3f3h		;cfb7	cd f3 d3 	. . . 
	jr ld00ch		;cfba	18 50 	. P 
lcfbch:
	ld a,(ix+02bh)		;cfbc	dd 7e 2b 	. ~ + 
	cp 001h		;cfbf	fe 01 	. . 
	jr z,lcfc9h		;cfc1	28 06 	( . 
	cp 008h		;cfc3	fe 08 	. . 
	jr z,lcfc9h		;cfc5	28 02 	( . 
	jr lcfd0h		;cfc7	18 07 	. . 
lcfc9h:
	ld a,(ix+02fh)		;cfc9	dd 7e 2f 	. ~ / 
	cp 009h		;cfcc	fe 09 	. . 
	jr z,lcfd7h		;cfce	28 07 	( . 
lcfd0h:
	ld a,004h		;cfd0	3e 04 	> . 
	ld b,001h		;cfd2	06 01 	. . 
	jp ldbf9h		;cfd4	c3 f9 db 	. . . 
lcfd7h:
	ld a,(ix+02ch)		;cfd7	dd 7e 2c 	. ~ , 
	cp 001h		;cfda	fe 01 	. . 
	jr z,lcff6h		;cfdc	28 18 	( . 
	cp 012h		;cfde	fe 12 	. . 
	jr z,lcffah		;cfe0	28 18 	( . 
	cp 011h		;cfe2	fe 11 	. . 
	jr z,lcffeh		;cfe4	28 18 	( . 
	cp 010h		;cfe6	fe 10 	. . 
	jr z,ld002h		;cfe8	28 18 	( . 
	ld a,018h		;cfea	3e 18 	> . 
	call sub_db46h		;cfec	cd 46 db 	. F . 
	ld a,004h		;cfef	3e 04 	> . 
	ld b,002h		;cff1	06 02 	. . 
	jp ldbf9h		;cff3	c3 f9 db 	. . . 
lcff6h:
	ld a,038h		;cff6	3e 38 	> 8 
	jr ld004h		;cff8	18 0a 	. . 
lcffah:
	ld a,030h		;cffa	3e 30 	> 0 
	jr ld004h		;cffc	18 06 	. . 
lcffeh:
	ld a,028h		;cffe	3e 28 	> ( 
	jr ld004h		;d000	18 02 	. . 
ld002h:
	ld a,020h		;d002	3e 20 	>   
ld004h:
	call sub_db46h		;d004	cd 46 db 	. F . 
	ld a,002h		;d007	3e 02 	> . 
	call sub_d3f3h		;d009	cd f3 d3 	. . . 
ld00ch:
	ld d,(ix+004h)		;d00c	dd 56 04 	. V . 
	ld e,(ix+005h)		;d00f	dd 5e 05 	. ^ . 
	inc de			;d012	13 	. 
	or a			;d013	b7 	. 
	sbc hl,de		;d014	ed 52 	. R 
	call sub_d3b1h		;d016	cd b1 d3 	. . . 
	jp ld22ah		;d019	c3 2a d2 	. * . 
	ld a,(ix+02ah)		;d01c	dd 7e 2a 	. ~ * 
	cp 001h		;d01f	fe 01 	. . 
	jr z,ld02ah		;d021	28 07 	( . 
	ld a,002h		;d023	3e 02 	> . 
	ld b,003h		;d025	06 03 	. . 
	jp ldbf9h		;d027	c3 f9 db 	. . . 
ld02ah:
	ld a,(ix+02bh)		;d02a	dd 7e 2b 	. ~ + 
	cp 009h		;d02d	fe 09 	. . 
	jr z,ld038h		;d02f	28 07 	( . 
	ld a,004h		;d031	3e 04 	> . 
	ld b,001h		;d033	06 01 	. . 
	jp ldbf9h		;d035	c3 f9 db 	. . . 
ld038h:
	ld a,001h		;d038	3e 01 	> . 
	call sub_d3f3h		;d03a	cd f3 d3 	. . . 
	ld d,(ix+004h)		;d03d	dd 56 04 	. V . 
	ld e,(ix+005h)		;d040	dd 5e 05 	. ^ . 
	inc de			;d043	13 	. 
	inc de			;d044	13 	. 
	or a			;d045	b7 	. 
	sbc hl,de		;d046	ed 52 	. R 
	call sub_d3b1h		;d048	cd b1 d3 	. . . 
	ld b,a			;d04b	47 	G 
	ld a,010h		;d04c	3e 10 	> . 
	call sub_db46h		;d04e	cd 46 db 	. F . 
	ld a,b			;d051	78 	x 
	jp ld22ah		;d052	c3 2a d2 	. * . 
	ld a,(ix+02ah)		;d055	dd 7e 2a 	. ~ * 
	cp 001h		;d058	fe 01 	. . 
	jr z,ld067h		;d05a	28 0b 	( . 
	cp 002h		;d05c	fe 02 	. . 
	jr z,ld07dh		;d05e	28 1d 	( . 
	ld a,002h		;d060	3e 02 	> . 
	ld b,003h		;d062	06 03 	. . 
	jp ldbf9h		;d064	c3 f9 db 	. . . 
ld067h:
	ld a,(ix+02bh)		;d067	dd 7e 2b 	. ~ + 
	cp 009h		;d06a	fe 09 	. . 
	jr z,ld070h		;d06c	28 02 	( . 
	jr ld08ch		;d06e	18 1c 	. . 
ld070h:
	ld a,0cdh		;d070	3e cd 	> . 
	call sub_db46h		;d072	cd 46 db 	. F . 
	ld a,001h		;d075	3e 01 	> . 
	call sub_d3f3h		;d077	cd f3 d3 	. . . 
	jp ld2a6h		;d07a	c3 a6 d2 	. . . 
ld07dh:
	ld a,(ix+02bh)		;d07d	dd 7e 2b 	. ~ + 
	cp 001h		;d080	fe 01 	. . 
	jr z,ld093h		;d082	28 0f 	( . 
	cp 008h		;d084	fe 08 	. . 
	jr z,ld093h		;d086	28 0b 	( . 
	cp 009h		;d088	fe 09 	. . 
	jr z,ld093h		;d08a	28 07 	( . 
ld08ch:
	ld a,004h		;d08c	3e 04 	> . 
	ld b,001h		;d08e	06 01 	. . 
	jp ldbf9h		;d090	c3 f9 db 	. . . 
ld093h:
	ld a,(ix+02fh)		;d093	dd 7e 2f 	. ~ / 
	cp 009h		;d096	fe 09 	. . 
	jr nz,ld08ch		;d098	20 f2 	  . 
	ld a,001h		;d09a	3e 01 	> . 
	call sub_d359h		;d09c	cd 59 d3 	. Y . 
	call sub_d5a1h		;d09f	cd a1 d5 	. . . 
	add a,0c4h		;d0a2	c6 c4 	. . 
	call sub_db46h		;d0a4	cd 46 db 	. F . 
	ld a,002h		;d0a7	3e 02 	> . 
	call sub_d3f3h		;d0a9	cd f3 d3 	. . . 
	jp ld2a6h		;d0ac	c3 a6 d2 	. . . 
	ld a,(ix+02ah)		;d0af	dd 7e 2a 	. ~ * 
	or a			;d0b2	b7 	. 
	jr z,ld0c0h		;d0b3	28 0b 	( . 
	cp 001h		;d0b5	fe 01 	. . 
	jr z,ld0c5h		;d0b7	28 0c 	( . 
	ld a,002h		;d0b9	3e 02 	> . 
	ld b,003h		;d0bb	06 03 	. . 
	jp ldbf9h		;d0bd	c3 f9 db 	. . . 
ld0c0h:
	ld a,0c9h		;d0c0	3e c9 	> . 
	jp ld22ah		;d0c2	c3 2a d2 	. * . 
ld0c5h:
	ld a,(ix+02bh)		;d0c5	dd 7e 2b 	. ~ + 
	cp 008h		;d0c8	fe 08 	. . 
	jr z,ld0d7h		;d0ca	28 0b 	( . 
	cp 001h		;d0cc	fe 01 	. . 
	jr z,ld0d7h		;d0ce	28 07 	( . 
	ld a,004h		;d0d0	3e 04 	> . 
	ld b,002h		;d0d2	06 02 	. . 
	jp ldbf9h		;d0d4	c3 f9 db 	. . . 
ld0d7h:
	ld a,001h		;d0d7	3e 01 	> . 
	call sub_d359h		;d0d9	cd 59 d3 	. Y . 
	call sub_d5a1h		;d0dc	cd a1 d5 	. . . 
	ld b,0c0h		;d0df	06 c0 	. . 
	add a,b			;d0e1	80 	. 
	jp ld22ah		;d0e2	c3 2a d2 	. * . 
	ld a,(ix+02ah)		;d0e5	dd 7e 2a 	. ~ * 
	cp 001h		;d0e8	fe 01 	. . 
	jr z,ld0f3h		;d0ea	28 07 	( . 
	ld a,002h		;d0ec	3e 02 	> . 
	ld b,003h		;d0ee	06 03 	. . 
	jp ldbf9h		;d0f0	c3 f9 db 	. . . 
ld0f3h:
	ld a,(ix+02bh)		;d0f3	dd 7e 2b 	. ~ + 
	cp 009h		;d0f6	fe 09 	. . 
	jr z,ld101h		;d0f8	28 07 	( . 
	ld a,004h		;d0fa	3e 04 	> . 
	ld b,001h		;d0fc	06 01 	. . 
	jp ldbf9h		;d0fe	c3 f9 db 	. . . 
ld101h:
	ld a,001h		;d101	3e 01 	> . 
	call sub_d3f3h		;d103	cd f3 d3 	. . . 
	ld a,0c7h		;d106	3e c7 	> . 
	and l			;d108	a5 	. 
	jr z,ld112h		;d109	28 07 	( . 
	ld a,004h		;d10b	3e 04 	> . 
	ld b,003h		;d10d	06 03 	. . 
	jp ldbf9h		;d10f	c3 f9 db 	. . . 
ld112h:
	ld a,0c7h		;d112	3e c7 	> . 
	add a,l			;d114	85 	. 
	jp ld22ah		;d115	c3 2a d2 	. * . 
	ld a,(ix+02ah)		;d118	dd 7e 2a 	. ~ * 
	cp 002h		;d11b	fe 02 	. . 
	jr z,ld126h		;d11d	28 07 	( . 
	ld a,002h		;d11f	3e 02 	> . 
	ld b,003h		;d121	06 03 	. . 
	jp ldbf9h		;d123	c3 f9 db 	. . . 
ld126h:
	ld a,(ix+02fh)		;d126	dd 7e 2f 	. ~ / 
	cp 00ah		;d129	fe 0a 	. . 
	jr z,ld133h		;d12b	28 06 	( . 
	cp 00bh		;d12d	fe 0b 	. . 
	jr z,ld151h		;d12f	28 20 	(   
	jr ld158h		;d131	18 25 	. % 
ld133h:
	ld a,(ix+02bh)		;d133	dd 7e 2b 	. ~ + 
	cp 001h		;d136	fe 01 	. . 
	jr nz,ld158h		;d138	20 1e 	  . 
	ld a,(ix+02ch)		;d13a	dd 7e 2c 	. ~ , 
	cp 007h		;d13d	fe 07 	. . 
	jr z,ld143h		;d13f	28 02 	( . 
	jr ld158h		;d141	18 15 	. . 
ld143h:
	ld a,0dbh		;d143	3e db 	> . 
	call sub_db46h		;d145	cd 46 db 	. F . 
	ld a,002h		;d148	3e 02 	> . 
	call sub_d3f3h		;d14a	cd f3 d3 	. . . 
	ld a,l			;d14d	7d 	} 
	jp ld22ah		;d14e	c3 2a d2 	. * . 
ld151h:
	ld a,(ix+02bh)		;d151	dd 7e 2b 	. ~ + 
	cp 001h		;d154	fe 01 	. . 
	jr z,ld15fh		;d156	28 07 	( . 
ld158h:
	ld a,004h		;d158	3e 04 	> . 
	ld b,001h		;d15a	06 01 	. . 
	jp ldbf9h		;d15c	c3 f9 db 	. . . 
ld15fh:
	ld a,(ix+030h)		;d15f	dd 7e 30 	. ~ 0 
	cp 001h		;d162	fe 01 	. . 
	jr z,ld16dh		;d164	28 07 	( . 
	ld a,004h		;d166	3e 04 	> . 
	ld b,001h		;d168	06 01 	. . 
	jp ldbf9h		;d16a	c3 f9 db 	. . . 
ld16dh:
	ld a,0edh		;d16d	3e ed 	> . 
	call sub_db46h		;d16f	cd 46 db 	. F . 
	ld a,001h		;d172	3e 01 	> . 
	call sub_d2e0h		;d174	cd e0 d2 	. . . 
	call sub_d5a1h		;d177	cd a1 d5 	. . . 
	add a,040h		;d17a	c6 40 	. @ 
	jp ld22ah		;d17c	c3 2a d2 	. * . 
	ld a,(ix+02ah)		;d17f	dd 7e 2a 	. ~ * 
	cp 002h		;d182	fe 02 	. . 
	jr z,ld18dh		;d184	28 07 	( . 
	ld a,002h		;d186	3e 02 	> . 
	ld b,003h		;d188	06 03 	. . 
	jp ldbf9h		;d18a	c3 f9 db 	. . . 
ld18dh:
	ld a,(ix+02bh)		;d18d	dd 7e 2b 	. ~ + 
	cp 00ah		;d190	fe 0a 	. . 
	jr z,ld19ah		;d192	28 06 	( . 
	cp 00bh		;d194	fe 0b 	. . 
	jr z,ld1b8h		;d196	28 20 	(   
	jr ld1bfh		;d198	18 25 	. % 
ld19ah:
	ld a,(ix+02fh)		;d19a	dd 7e 2f 	. ~ / 
	cp 001h		;d19d	fe 01 	. . 
	jr nz,ld1bfh		;d19f	20 1e 	  . 
	ld a,(ix+030h)		;d1a1	dd 7e 30 	. ~ 0 
	cp 007h		;d1a4	fe 07 	. . 
	jr z,ld1aah		;d1a6	28 02 	( . 
	jr ld1bfh		;d1a8	18 15 	. . 
ld1aah:
	ld a,0d3h		;d1aa	3e d3 	> . 
	call sub_db46h		;d1ac	cd 46 db 	. F . 
	ld a,001h		;d1af	3e 01 	> . 
	call sub_d3f3h		;d1b1	cd f3 d3 	. . . 
	ld a,l			;d1b4	7d 	} 
	jp ld22ah		;d1b5	c3 2a d2 	. * . 
ld1b8h:
	ld a,(ix+02fh)		;d1b8	dd 7e 2f 	. ~ / 
	cp 001h		;d1bb	fe 01 	. . 
	jr z,ld1c6h		;d1bd	28 07 	( . 
ld1bfh:
	ld a,004h		;d1bf	3e 04 	> . 
	ld b,001h		;d1c1	06 01 	. . 
	jp ldbf9h		;d1c3	c3 f9 db 	. . . 
ld1c6h:
	ld a,(ix+02ch)		;d1c6	dd 7e 2c 	. ~ , 
	cp 001h		;d1c9	fe 01 	. . 
	jr z,ld1d4h		;d1cb	28 07 	( . 
	ld a,004h		;d1cd	3e 04 	> . 
	ld b,001h		;d1cf	06 01 	. . 
	jp ldbf9h		;d1d1	c3 f9 db 	. . . 
ld1d4h:
	ld a,0edh		;d1d4	3e ed 	> . 
	call sub_db46h		;d1d6	cd 46 db 	. F . 
	ld a,002h		;d1d9	3e 02 	> . 
	call sub_d2e0h		;d1db	cd e0 d2 	. . . 
	call sub_d5a1h		;d1de	cd a1 d5 	. . . 
	add a,041h		;d1e1	c6 41 	. A 
	jp ld22ah		;d1e3	c3 2a d2 	. * . 
sub_d1e6h:
	ld a,007h		;d1e6	3e 07 	> . 
	jr ld219h		;d1e8	18 2f 	. / 
	ld a,017h		;d1ea	3e 17 	> . 
	jr ld219h		;d1ec	18 2b 	. + 
	ld a,00fh		;d1ee	3e 0f 	> . 
	jr ld219h		;d1f0	18 27 	. ' 
	ld a,01fh		;d1f2	3e 1f 	> . 
	jr ld219h		;d1f4	18 23 	. # 
sub_d1f6h:
	ld a,027h		;d1f6	3e 27 	> ' 
	jr ld219h		;d1f8	18 1f 	. . 
	ld a,02fh		;d1fa	3e 2f 	> / 
	jr ld219h		;d1fc	18 1b 	. . 
ld1feh:
	ld a,03fh		;d1fe	3e 3f 	> ? 
	jr ld219h		;d200	18 17 	. . 
	ld a,037h		;d202	3e 37 	> 7 
	jr ld219h		;d204	18 13 	. . 
ld206h:
	xor a			;d206	af 	. 
	jr ld219h		;d207	18 10 	. . 
	ld a,076h		;d209	3e 76 	> v 
	jr ld219h		;d20b	18 0c 	. . 
ld20dh:
	ld a,0f3h		;d20d	3e f3 	> . 
	jr ld219h		;d20f	18 08 	. . 
	ld a,0fbh		;d211	3e fb 	> . 
	jr ld219h		;d213	18 04 	. . 
ld215h:
	ld a,0d9h		;d215	3e d9 	> . 
	jr ld219h		;d217	18 00 	. . 
ld219h:
	push af			;d219	f5 	. 
	ld a,(ix+02ah)		;d21a	dd 7e 2a 	. ~ * 
	or a			;d21d	b7 	. 
	jr nz,ld223h		;d21e	20 03 	  . 
	pop af			;d220	f1 	. 
	jr ld22ah		;d221	18 07 	. . 
ld223h:
	ld a,002h		;d223	3e 02 	> . 
	ld b,003h		;d225	06 03 	. . 
	jp ldbf9h		;d227	c3 f9 db 	. . . 
ld22ah:
	call sub_db46h		;d22a	cd 46 db 	. F . 
	ret			;d22d	c9 	. 
	ld hl,0a0edh		;d22e	21 ed a0 	! . . 
	jr ld295h		;d231	18 62 	. b 
	ld hl,0b0edh		;d233	21 ed b0 	! . . 
	jr ld295h		;d236	18 5d 	. ] 
ld238h:
	ld hl,0a8edh		;d238	21 ed a8 	! . . 
	jr ld295h		;d23b	18 58 	. X 
	ld hl,0b8edh		;d23d	21 ed b8 	! . . 
	jr ld295h		;d240	18 53 	. S 
ld242h:
	ld hl,0a1edh		;d242	21 ed a1 	! . . 
	jr ld295h		;d245	18 4e 	. N 
	ld hl,0b1edh		;d247	21 ed b1 	! . . 
	jr ld295h		;d24a	18 49 	. I 
ld24ch:
	ld hl,0a9edh		;d24c	21 ed a9 	! . . 
	jr ld295h		;d24f	18 44 	. D 
	ld hl,0b9edh		;d251	21 ed b9 	! . . 
	jr ld295h		;d254	18 3f 	. ? 
	ld hl,044edh		;d256	21 ed 44 	! . D 
	jr ld295h		;d259	18 3a 	. : 
	ld hl,06fedh		;d25b	21 ed 6f 	! . o 
	jr ld295h		;d25e	18 35 	. 5 
ld260h:
	ld hl,067edh		;d260	21 ed 67 	! . g 
	jr ld295h		;d263	18 30 	. 0 
	ld hl,04dedh		;d265	21 ed 4d 	! . M 
	jr ld295h		;d268	18 2b 	. + 
ld26ah:
	ld hl,045edh		;d26a	21 ed 45 	! . E 
	jr ld295h		;d26d	18 26 	. & 
	ld hl,0a2edh		;d26f	21 ed a2 	! . . 
	jr ld295h		;d272	18 21 	. ! 
ld274h:
	ld hl,0b2edh		;d274	21 ed b2 	! . . 
	jr ld295h		;d277	18 1c 	. . 
	ld hl,0aaedh		;d279	21 ed aa 	! . . 
	jr ld295h		;d27c	18 17 	. . 
ld27eh:
	ld hl,0baedh		;d27e	21 ed ba 	! . . 
	jr ld295h		;d281	18 12 	. . 
	ld hl,0a3edh		;d283	21 ed a3 	! . . 
	jr ld295h		;d286	18 0d 	. . 
ld288h:
	ld hl,0b3edh		;d288	21 ed b3 	! . . 
	jr ld295h		;d28b	18 08 	. . 
	ld hl,0abedh		;d28d	21 ed ab 	! . . 
	jr ld295h		;d290	18 03 	. . 
ld292h:
	ld hl,0bbedh		;d292	21 ed bb 	! . . 
ld295h:
	push af			;d295	f5 	. 
	ld a,(ix+02ah)		;d296	dd 7e 2a 	. ~ * 
	or a			;d299	b7 	. 
	jr nz,ld29fh		;d29a	20 03 	  . 
	pop af			;d29c	f1 	. 
	jr ld2a6h		;d29d	18 07 	. . 
ld29fh:
	ld a,002h		;d29f	3e 02 	> . 
	ld b,003h		;d2a1	06 03 	. . 
	jp ldbf9h		;d2a3	c3 f9 db 	. . . 
ld2a6h:
	call sub_dbf0h		;d2a6	cd f0 db 	. . . 
	ret			;d2a9	c9 	. 
	rst 38h			;d2aa	ff 	. 
	rst 38h			;d2ab	ff 	. 
	rst 38h			;d2ac	ff 	. 
	rst 38h			;d2ad	ff 	. 
	rst 38h			;d2ae	ff 	. 
	rst 38h			;d2af	ff 	. 
	rst 38h			;d2b0	ff 	. 
	rst 38h			;d2b1	ff 	. 
	rst 38h			;d2b2	ff 	. 
	rst 38h			;d2b3	ff 	. 
	rst 38h			;d2b4	ff 	. 
	rst 38h			;d2b5	ff 	. 
	rst 38h			;d2b6	ff 	. 
	rst 38h			;d2b7	ff 	. 
	rst 38h			;d2b8	ff 	. 
	rst 38h			;d2b9	ff 	. 
	rst 38h			;d2ba	ff 	. 
	rst 38h			;d2bb	ff 	. 
	rst 38h			;d2bc	ff 	. 
	rst 38h			;d2bd	ff 	. 
	rst 38h			;d2be	ff 	. 
	rst 38h			;d2bf	ff 	. 
	rst 38h			;d2c0	ff 	. 
	rst 38h			;d2c1	ff 	. 
	rst 38h			;d2c2	ff 	. 
	rst 38h			;d2c3	ff 	. 
	rst 38h			;d2c4	ff 	. 
	rst 38h			;d2c5	ff 	. 
	rst 38h			;d2c6	ff 	. 
	rst 38h			;d2c7	ff 	. 
	rst 38h			;d2c8	ff 	. 
	rst 38h			;d2c9	ff 	. 
	rst 38h			;d2ca	ff 	. 
	rst 38h			;d2cb	ff 	. 
	rst 38h			;d2cc	ff 	. 
	rst 38h			;d2cd	ff 	. 
	rst 38h			;d2ce	ff 	. 
	rst 38h			;d2cf	ff 	. 
	rst 38h			;d2d0	ff 	. 
	rst 38h			;d2d1	ff 	. 
	rst 38h			;d2d2	ff 	. 
	rst 38h			;d2d3	ff 	. 
	rst 38h			;d2d4	ff 	. 
	rst 38h			;d2d5	ff 	. 
	rst 38h			;d2d6	ff 	. 
	rst 38h			;d2d7	ff 	. 
	rst 38h			;d2d8	ff 	. 
	rst 38h			;d2d9	ff 	. 
	rst 38h			;d2da	ff 	. 
	rst 38h			;d2db	ff 	. 
	rst 38h			;d2dc	ff 	. 
	rst 38h			;d2dd	ff 	. 
	rst 38h			;d2de	ff 	. 
	rst 38h			;d2df	ff 	. 
sub_d2e0h:
	ld b,a			;d2e0	47 	G 
	call sub_d3dah		;d2e1	cd da d3 	. . . 
	cp 001h		;d2e4	fe 01 	. . 
	jr z,ld2edh		;d2e6	28 05 	( . 
	cp 00bh		;d2e8	fe 0b 	. . 
	jr z,ld303h		;d2ea	28 17 	( . 
	ret			;d2ec	c9 	. 
ld2edh:
	ld a,b			;d2ed	78 	x 
	call sub_d3e6h		;d2ee	cd e6 d3 	. . . 
	cp 006h		;d2f1	fe 06 	. . 
	jr z,ld2fch		;d2f3	28 07 	( . 
	cp 000h		;d2f5	fe 00 	. . 
	jr c,ld2fch		;d2f7	38 03 	8 . 
	cp 008h		;d2f9	fe 08 	. . 
	ret c			;d2fb	d8 	. 
ld2fch:
	ld a,004h		;d2fc	3e 04 	> . 
	ld b,001h		;d2fe	06 01 	. . 
	jp ldbf9h		;d300	c3 f9 db 	. . . 
ld303h:
	ld a,b			;d303	78 	x 
	call sub_d3e6h		;d304	cd e6 d3 	. . . 
	cp 00bh		;d307	fe 0b 	. . 
	jr z,ld31ah		;d309	28 0f 	( . 
	cp 00dh		;d30b	fe 0d 	. . 
	jr z,ld31ah		;d30d	28 0b 	( . 
	cp 00eh		;d30f	fe 0e 	. . 
	jr z,ld31ah		;d311	28 07 	( . 
	ld a,004h		;d313	3e 04 	> . 
	ld b,001h		;d315	06 01 	. . 
	jp ldbf9h		;d317	c3 f9 db 	. . . 
ld31ah:
	ld a,006h		;d31a	3e 06 	> . 
	ret			;d31c	c9 	. 
sub_d31dh:
	ld b,a			;d31d	47 	G 
	call sub_d3dah		;d31e	cd da d3 	. . . 
	cp 002h		;d321	fe 02 	. . 
	jr z,ld327h		;d323	28 02 	( . 
	xor a			;d325	af 	. 
	ret			;d326	c9 	. 
ld327h:
	ld a,b			;d327	78 	x 
	call sub_d3e6h		;d328	cd e6 d3 	. . . 
	cp 009h		;d32b	fe 09 	. . 
	jr z,ld34eh		;d32d	28 1f 	( . 
	cp 00ah		;d32f	fe 0a 	. . 
	jr z,ld350h		;d331	28 1d 	( . 
	cp 00bh		;d333	fe 0b 	. . 
	jr z,ld353h		;d335	28 1c 	( . 
	cp 00dh		;d337	fe 0d 	. . 
	jr z,ld353h		;d339	28 18 	( . 
	cp 00eh		;d33b	fe 0e 	. . 
	jr z,ld353h		;d33d	28 14 	( . 
	cp 00ch		;d33f	fe 0c 	. . 
	jr z,ld356h		;d341	28 13 	( . 
	cp 00fh		;d343	fe 0f 	. . 
	jr z,ld356h		;d345	28 0f 	( . 
	ld a,004h		;d347	3e 04 	> . 
	ld b,001h		;d349	06 01 	. . 
	jp ldbf9h		;d34b	c3 f9 db 	. . . 
ld34eh:
	xor a			;d34e	af 	. 
	ret			;d34f	c9 	. 
ld350h:
	ld a,001h		;d350	3e 01 	> . 
	ret			;d352	c9 	. 
ld353h:
	ld a,002h		;d353	3e 02 	> . 
	ret			;d355	c9 	. 
ld356h:
	ld a,003h		;d356	3e 03 	> . 
	ret			;d358	c9 	. 
sub_d359h:
	ld b,a			;d359	47 	G 
	call sub_d3dah		;d35a	cd da d3 	. . . 
	cp 008h		;d35d	fe 08 	. . 
	jr z,ld36ch		;d35f	28 0b 	( . 
	cp 001h		;d361	fe 01 	. . 
	jr z,ld36ch		;d363	28 07 	( . 
	ld a,004h		;d365	3e 04 	> . 
	ld b,002h		;d367	06 02 	. . 
	jp ldbf9h		;d369	c3 f9 db 	. . . 
ld36ch:
	ld a,b			;d36c	78 	x 
	call sub_d3e6h		;d36d	cd e6 d3 	. . . 
	cp 001h		;d370	fe 01 	. . 
	jr z,ld386h		;d372	28 12 	( . 
	cp 010h		;d374	fe 10 	. . 
	jr c,ld37ch		;d376	38 04 	8 . 
	cp 018h		;d378	fe 18 	. . 
	jr c,ld383h		;d37a	38 07 	8 . 
ld37ch:
	ld a,004h		;d37c	3e 04 	> . 
	ld b,002h		;d37e	06 02 	. . 
	jp ldbf9h		;d380	c3 f9 db 	. . . 
ld383h:
	sub 010h		;d383	d6 10 	. . 
	ret			;d385	c9 	. 
ld386h:
	ld a,003h		;d386	3e 03 	> . 
	ret			;d388	c9 	. 
sub_d389h:
	call sub_d3e6h		;d389	cd e6 d3 	. . . 
	cp 00dh		;d38c	fe 0d 	. . 
	jr z,ld397h		;d38e	28 07 	( . 
	cp 00eh		;d390	fe 0e 	. . 
	ret nz			;d392	c0 	. 
	ld a,0fdh		;d393	3e fd 	> . 
	jr ld399h		;d395	18 02 	. . 
ld397h:
	ld a,0ddh		;d397	3e dd 	> . 
ld399h:
	call sub_db46h		;d399	cd 46 db 	. F . 
	ret			;d39c	c9 	. 
sub_d39dh:
	ld b,a			;d39d	47 	G 
	call sub_d3e6h		;d39e	cd e6 d3 	. . . 
	cp 00dh		;d3a1	fe 0d 	. . 
	jr z,ld3a8h		;d3a3	28 03 	( . 
	cp 00eh		;d3a5	fe 0e 	. . 
	ret nz			;d3a7	c0 	. 
ld3a8h:
	ld a,b			;d3a8	78 	x 
	call sub_d3f3h		;d3a9	cd f3 d3 	. . . 
	ld a,l			;d3ac	7d 	} 
	call sub_db46h		;d3ad	cd 46 db 	. F . 
	ret			;d3b0	c9 	. 
sub_d3b1h:
	bit 0,(ix+04ch)		;d3b1	dd cb 4c 46 	. . L F 
	ret z			;d3b5	c8 	. 
	ld a,0ffh		;d3b6	3e ff 	> . 
	xor h			;d3b8	ac 	. 
	jr z,ld3c1h		;d3b9	28 06 	( . 
	xor a			;d3bb	af 	. 
	cp h			;d3bc	bc 	. 
	jr z,ld3cfh		;d3bd	28 10 	( . 
	jr ld3d3h		;d3bf	18 12 	. . 
ld3c1h:
	ld a,l			;d3c1	7d 	} 
	neg		;d3c2	ed 44 	. D 
	cp 080h		;d3c4	fe 80 	. . 
	jr c,ld3cch		;d3c6	38 04 	8 . 
	jr z,ld3cch		;d3c8	28 02 	( . 
	jr nc,ld3d3h		;d3ca	30 07 	0 . 
ld3cch:
	neg		;d3cc	ed 44 	. D 
	ret			;d3ce	c9 	. 
ld3cfh:
	ld a,l			;d3cf	7d 	} 
	cp 080h		;d3d0	fe 80 	. . 
	ret c			;d3d2	d8 	. 
ld3d3h:
	ld a,004h		;d3d3	3e 04 	> . 
	ld b,003h		;d3d5	06 03 	. . 
	jp ldbf9h		;d3d7	c3 f9 db 	. . . 
sub_d3dah:
	cp 002h		;d3da	fe 02 	. . 
	jr z,ld3e2h		;d3dc	28 04 	( . 
	ld a,(ix+02bh)		;d3de	dd 7e 2b 	. ~ + 
	ret			;d3e1	c9 	. 
ld3e2h:
	ld a,(ix+02fh)		;d3e2	dd 7e 2f 	. ~ / 
	ret			;d3e5	c9 	. 
sub_d3e6h:
	cp 002h		;d3e6	fe 02 	. . 
	jr z,ld3efh		;d3e8	28 05 	( . 
	ld a,(ix+02ch)		;d3ea	dd 7e 2c 	. ~ , 
	jr ld3f2h		;d3ed	18 03 	. . 
ld3efh:
	ld a,(ix+030h)		;d3ef	dd 7e 30 	. ~ 0 
ld3f2h:
	ret			;d3f2	c9 	. 
sub_d3f3h:
	cp 002h		;d3f3	fe 02 	. . 
	jr z,ld3feh		;d3f5	28 07 	( . 
	ld h,(ix+02dh)		;d3f7	dd 66 2d 	. f - 
	ld l,(ix+02eh)		;d3fa	dd 6e 2e 	. n . 
	ret			;d3fd	c9 	. 
ld3feh:
	ld h,(ix+031h)		;d3fe	dd 66 31 	. f 1 
	ld l,(ix+032h)		;d401	dd 6e 32 	. n 2 
	ret			;d404	c9 	. 
sub_d405h:
	ld (ix+02ah),a		;d405	dd 77 2a 	. w * 
	push ix		;d408	dd e5 	. . 
	pop bc			;d40a	c1 	. 
	ld hl,0002bh		;d40b	21 2b 00 	! + . 
	add hl,bc			;d40e	09 	. 
	ld (ix+000h),h		;d40f	dd 74 00 	. t . 
	ld (ix+001h),l		;d412	dd 75 01 	. u . 
	ld b,002h		;d415	06 02 	. . 
	push bc			;d417	c5 	. 
	call sub_c419h		;d418	cd 19 c4 	. . . 
	call sub_c581h		;d41b	cd 81 c5 	. . . 
	ld a,(ix+024h)		;d41e	dd 7e 24 	. ~ $ 
	cp 000h		;d421	fe 00 	. . 
	jr nz,ld428h		;d423	20 03 	  . 
	pop bc			;d425	c1 	. 
	xor a			;d426	af 	. 
	ret			;d427	c9 	. 
ld428h:
	pop bc			;d428	c1 	. 
ld429h:
	push bc			;d429	c5 	. 
	call sub_c419h		;d42a	cd 19 c4 	. . . 
	cp 02ch		;d42d	fe 2c 	. , 
	jr z,ld44ch		;d42f	28 1b 	( . 
	cp 000h		;d431	fe 00 	. . 
	jr z,ld44ch		;d433	28 17 	( . 
	cp 001h		;d435	fe 01 	. . 
	jr z,ld453h		;d437	28 1a 	( . 
	cp 002h		;d439	fe 02 	. . 
	jr z,ld453h		;d43b	28 16 	( . 
	cp 003h		;d43d	fe 03 	. . 
	jr z,ld456h		;d43f	28 15 	( . 
	cp 008h		;d441	fe 08 	. . 
	jr z,ld479h		;d443	28 34 	( 4 
	cp 028h		;d445	fe 28 	. ( 
	jr z,ld4aah		;d447	28 61 	( a 
	jp ld52fh		;d449	c3 2f d5 	. / . 
ld44ch:
	ld a,004h		;d44c	3e 04 	> . 
	ld b,001h		;d44e	06 01 	. . 
	jp ldbf9h		;d450	c3 f9 db 	. . . 
ld453h:
	ex af,af'			;d453	08 	. 
	jr ld459h		;d454	18 03 	. . 
ld456h:
	ld a,008h		;d456	3e 08 	> . 
	ex af,af'			;d458	08 	. 
ld459h:
	ld b,(ix+025h)		;d459	dd 46 25 	. F % 
	push bc			;d45c	c5 	. 
	ld a,b			;d45d	78 	x 
	cp 00fh		;d45e	fe 0f 	. . 
	jr nz,ld472h		;d460	20 10 	  . 
	call sub_c56ch		;d462	cd 6c c5 	. l . 
	cp 027h		;d465	fe 27 	. ' 
	jr nz,ld46fh		;d467	20 06 	  . 
	pop bc			;d469	c1 	. 
	ld b,019h		;d46a	06 19 	. . 
	push bc			;d46c	c5 	. 
	jr ld472h		;d46d	18 03 	. . 
ld46fh:
	call sub_c581h		;d46f	cd 81 c5 	. . . 
ld472h:
	ex af,af'			;d472	08 	. 
	pop bc			;d473	c1 	. 
	ld c,000h		;d474	0e 00 	. . 
	jp ld544h		;d476	c3 44 d5 	. D . 
ld479h:
	call sub_c581h		;d479	cd 81 c5 	. . . 
	call sub_d960h		;d47c	cd 60 d9 	. ` . 
	jr nc,ld48bh		;d47f	30 0a 	0 . 
	or a			;d481	b7 	. 
	jr z,ld48bh		;d482	28 07 	( . 
	ld a,002h		;d484	3e 02 	> . 
	ld b,002h		;d486	06 02 	. . 
	jp ldbf9h		;d488	c3 f9 db 	. . . 
ld48bh:
	ld h,(ix+044h)		;d48b	dd 66 44 	. f D 
	ld l,(ix+045h)		;d48e	dd 6e 45 	. n E 
	call sub_dfb8h		;d491	cd b8 df 	. . . 
	cp 003h		;d494	fe 03 	. . 
	jr c,ld4a1h		;d496	38 09 	8 . 
	ld a,00ch		;d498	3e 0c 	> . 
	ld b,000h		;d49a	06 00 	. . 
	ld c,000h		;d49c	0e 00 	. . 
	jp ld544h		;d49e	c3 44 d5 	. D . 
ld4a1h:
	ld a,009h		;d4a1	3e 09 	> . 
	ld b,000h		;d4a3	06 00 	. . 
	ld c,001h		;d4a5	0e 01 	. . 
	jp ld544h		;d4a7	c3 44 d5 	. D . 
ld4aah:
	call sub_c419h		;d4aa	cd 19 c4 	. . . 
	cp 029h		;d4ad	fe 29 	. ) 
	jr z,ld4bbh		;d4af	28 0a 	( . 
	cp 001h		;d4b1	fe 01 	. . 
	jr z,ld4c2h		;d4b3	28 0d 	( . 
	cp 002h		;d4b5	fe 02 	. . 
	jr z,ld4c2h		;d4b7	28 09 	( . 
	jr ld506h		;d4b9	18 4b 	. K 
ld4bbh:
	ld a,004h		;d4bb	3e 04 	> . 
	ld b,001h		;d4bd	06 01 	. . 
	jp ldbf9h		;d4bf	c3 f9 db 	. . . 
ld4c2h:
	ld a,(ix+025h)		;d4c2	dd 7e 25 	. ~ % 
	cp 00dh		;d4c5	fe 0d 	. . 
	jr z,ld4cdh		;d4c7	28 04 	( . 
	cp 00eh		;d4c9	fe 0e 	. . 
	jr nz,ld4fdh		;d4cb	20 30 	  0 
ld4cdh:
	ld b,(ix+025h)		;d4cd	dd 46 25 	. F % 
	push bc			;d4d0	c5 	. 
	call sub_c419h		;d4d1	cd 19 c4 	. . . 
	cp 029h		;d4d4	fe 29 	. ) 
	jr z,ld4e9h		;d4d6	28 11 	( . 
	cp 02bh		;d4d8	fe 2b 	. + 
	jr z,ld4e2h		;d4da	28 06 	( . 
	cp 02dh		;d4dc	fe 2d 	. - 
	jr z,ld4e2h		;d4de	28 02 	( . 
	jr ld528h		;d4e0	18 46 	. F 
ld4e2h:
	ld a,(ix+02ah)		;d4e2	dd 7e 2a 	. ~ * 
	cp 031h		;d4e5	fe 31 	. 1 
	jr z,ld528h		;d4e7	28 3f 	( ? 
ld4e9h:
	call sub_c581h		;d4e9	cd 81 c5 	. . . 
	call sub_d960h		;d4ec	cd 60 d9 	. ` . 
	jr nc,ld4f8h		;d4ef	30 07 	0 . 
	ld a,002h		;d4f1	3e 02 	> . 
	ld b,002h		;d4f3	06 02 	. . 
	jp ldbf9h		;d4f5	c3 f9 db 	. . . 
ld4f8h:
	pop bc			;d4f8	c1 	. 
	ld c,001h		;d4f9	0e 01 	. . 
	jr ld502h		;d4fb	18 05 	. . 
ld4fdh:
	ld b,(ix+025h)		;d4fd	dd 46 25 	. F % 
	ld c,000h		;d500	0e 00 	. . 
ld502h:
	ld a,00bh		;d502	3e 0b 	> . 
	jr ld51bh		;d504	18 15 	. . 
ld506h:
	call sub_c581h		;d506	cd 81 c5 	. . . 
	call sub_d960h		;d509	cd 60 d9 	. ` . 
	jr nc,ld515h		;d50c	30 07 	0 . 
	ld a,002h		;d50e	3e 02 	> . 
	ld b,002h		;d510	06 02 	. . 
	jp ldbf9h		;d512	c3 f9 db 	. . . 
ld515h:
	ld a,00ah		;d515	3e 0a 	> . 
	ld b,000h		;d517	06 00 	. . 
	ld c,001h		;d519	0e 01 	. . 
ld51bh:
	ex af,af'			;d51b	08 	. 
	push bc			;d51c	c5 	. 
	call sub_c419h		;d51d	cd 19 c4 	. . . 
	cp 029h		;d520	fe 29 	. ) 
	jr nz,ld528h		;d522	20 04 	  . 
	ex af,af'			;d524	08 	. 
	pop bc			;d525	c1 	. 
	jr ld544h		;d526	18 1c 	. . 
ld528h:
	ld a,004h		;d528	3e 04 	> . 
	ld b,001h		;d52a	06 01 	. . 
	jp ldbf9h		;d52c	c3 f9 db 	. . . 
ld52fh:
	call sub_c581h		;d52f	cd 81 c5 	. . . 
	call sub_d960h		;d532	cd 60 d9 	. ` . 
	jr nc,ld53eh		;d535	30 07 	0 . 
	ld a,002h		;d537	3e 02 	> . 
	ld b,002h		;d539	06 02 	. . 
	jp ldbf9h		;d53b	c3 f9 db 	. . . 
ld53eh:
	ld a,009h		;d53e	3e 09 	> . 
	ld b,000h		;d540	06 00 	. . 
	ld c,001h		;d542	0e 01 	. . 
ld544h:
	call sub_d570h		;d544	cd 70 d5 	. p . 
	call sub_c419h		;d547	cd 19 c4 	. . . 
	cp 02ch		;d54a	fe 2c 	. , 
	jr z,ld559h		;d54c	28 0b 	( . 
	cp 000h		;d54e	fe 00 	. . 
	jr z,ld567h		;d550	28 15 	( . 
	ld a,002h		;d552	3e 02 	> . 
	ld b,001h		;d554	06 01 	. . 
	jp ldbf9h		;d556	c3 f9 db 	. . . 
ld559h:
	pop bc			;d559	c1 	. 
	dec b			;d55a	05 	. 
	xor a			;d55b	af 	. 
	or b			;d55c	b0 	. 
	jp nz,ld429h		;d55d	c2 29 d4 	. ) . 
	ld a,002h		;d560	3e 02 	> . 
	ld b,003h		;d562	06 03 	. . 
	jp ldbf9h		;d564	c3 f9 db 	. . . 
ld567h:
	call sub_c581h		;d567	cd 81 c5 	. . . 
	pop bc			;d56a	c1 	. 
	dec b			;d56b	05 	. 
	ld a,002h		;d56c	3e 02 	> . 
	sub b			;d56e	90 	. 
	ret			;d56f	c9 	. 
sub_d570h:
	push af			;d570	f5 	. 
	push bc			;d571	c5 	. 
	push de			;d572	d5 	. 
	push hl			;d573	e5 	. 
	ld d,(ix+000h)		;d574	dd 56 00 	. V . 
	ld e,(ix+001h)		;d577	dd 5e 01 	. ^ . 
	ld (de),a			;d57a	12 	. 
	inc de			;d57b	13 	. 
	ld a,b			;d57c	78 	x 
	ld (de),a			;d57d	12 	. 
	inc de			;d57e	13 	. 
	xor a			;d57f	af 	. 
	or c			;d580	b1 	. 
	jr z,ld590h		;d581	28 0d 	( . 
	ld h,(ix+033h)		;d583	dd 66 33 	. f 3 
	ld l,(ix+034h)		;d586	dd 6e 34 	. n 4 
	ld bc,00002h		;d589	01 02 00 	. . . 
	ldir		;d58c	ed b0 	. . 
	jr ld594h		;d58e	18 04 	. . 
ld590h:
	ld (de),a			;d590	12 	. 
	inc de			;d591	13 	. 
	ld (de),a			;d592	12 	. 
	inc de			;d593	13 	. 
ld594h:
	ld (ix+000h),d		;d594	dd 72 00 	. r . 
	ld (ix+001h),e		;d597	dd 73 01 	. s . 
	pop hl			;d59a	e1 	. 
	pop de			;d59b	d1 	. 
	pop bc			;d59c	c1 	. 
	pop af			;d59d	f1 	. 
	ret			;d59e	c9 	. 
sub_d59fh:
	sla a		;d59f	cb 27 	. ' 
sub_d5a1h:
	sla a		;d5a1	cb 27 	. ' 
	sla a		;d5a3	cb 27 	. ' 
	sla a		;d5a5	cb 27 	. ' 
	ret			;d5a7	c9 	. 
sub_d5a8h:
	ld a,030h		;d5a8	3e 30 	> 0 
	call sub_d6c3h		;d5aa	cd c3 d6 	. . . 
	ret			;d5ad	c9 	. 
sub_d5aeh:
	ld a,02dh		;d5ae	3e 2d 	> - 
	call sub_d6c3h		;d5b0	cd c3 d6 	. . . 
	ret nc			;d5b3	d0 	. 
	cp 051h		;d5b4	fe 51 	. Q 
	jr z,ld5bbh		;d5b6	28 03 	( . 
	cp 0d1h		;d5b8	fe d1 	. . 
	ret nz			;d5ba	c0 	. 
ld5bbh:
	bit 0,(ix+04ch)		;d5bb	dd cb 4c 46 	. . L F 
	jr z,ld5e4h		;d5bf	28 23 	( # 
	bit 3,(ix+04eh)		;d5c1	dd cb 4e 5e 	. . N ^ 
	jr nz,ld5cfh		;d5c5	20 08 	  . 
	bit 2,(ix+04eh)		;d5c7	dd cb 4e 56 	. . N V 
	jr nz,ld5d7h		;d5cb	20 0a 	  . 
	jr ld5e4h		;d5cd	18 15 	. . 
ld5cfh:
	call sub_d6efh		;d5cf	cd ef d6 	. . . 
	call sub_d6efh		;d5d2	cd ef d6 	. . . 
	jr ld5e4h		;d5d5	18 0d 	. . 
ld5d7h:
	call sub_dc6bh		;d5d7	cd 6b dc 	. k . 
	ld a,012h		;d5da	3e 12 	> . 
	call sub_d6c3h		;d5dc	cd c3 d6 	. . . 
	ld a,012h		;d5df	3e 12 	> . 
	call sub_d6c3h		;d5e1	cd c3 d6 	. . . 
ld5e4h:
	ld a,00eh		;d5e4	3e 0e 	> . 
	call sub_e345h		;d5e6	cd 45 e3 	. E . 
ld5e9h:
	call sub_d5a8h		;d5e9	cd a8 d5 	. . . 
	call sub_d5f8h		;d5ec	cd f8 d5 	. . . 
	jr ld5e9h		;d5ef	18 f8 	. . 
sub_d5f1h:
	call sub_d5a8h		;d5f1	cd a8 d5 	. . . 
sub_d5f4h:
	cp 051h		;d5f4	fe 51 	. Q 
	jr z,ld665h		;d5f6	28 6d 	( m 
sub_d5f8h:
	cp 01ah		;d5f8	fe 1a 	. . 
	jr z,ld64eh		;d5fa	28 52 	( R 
	cp 099h		;d5fc	fe 99 	. . 
	jr z,ld652h		;d5fe	28 52 	( R 
	cp 09ah		;d600	fe 9a 	. . 
	jr z,ld680h		;d602	28 7c 	( | 
	cp 09ah		;d604	fe 9a 	. . 
	jr z,ld680h		;d606	28 78 	( x 
	cp 048h		;d608	fe 48 	. H 
	jr z,ld65dh		;d60a	28 51 	( Q 
	cp 0c8h		;d60c	fe c8 	. . 
	jr z,ld684h		;d60e	28 74 	( t 
	cp 050h		;d610	fe 50 	. P 
	jr z,ld665h		;d612	28 51 	( Q 
	cp 0d0h		;d614	fe d0 	. . 
	jr z,ld665h		;d616	28 4d 	( M 
	cp 001h		;d618	fe 01 	. . 
	jr z,ld67ch		;d61a	28 60 	( ` 
	cp 081h		;d61c	fe 81 	. . 
	jr z,ld67ch		;d61e	28 5c 	( \ 
	cp 07dh		;d620	fe 7d 	. } 
	jr z,ld67ch		;d622	28 58 	( X 
	cp 07eh		;d624	fe 7e 	. ~ 
	jr z,ld67ch		;d626	28 54 	( T 
	cp 049h		;d628	fe 49 	. I 
	jr z,ld688h		;d62a	28 5c 	( \ 
	cp 0c9h		;d62c	fe c9 	. . 
	jr z,ld688h		;d62e	28 58 	( X 
	jp leb5dh		;d630	c3 5d eb 	. ] . 
	nop			;d633	00 	. 
	ld a,(079dah)		;d634	3a da 79 	: . y 
	and 0feh		;d637	e6 fe 	. . 
	ld a,003h		;d639	3e 03 	> . 
	jp 0be2ch		;d63b	c3 2c be 	. , . 
ld63eh:
	push af			;d63e	f5 	. 
	ld a,(07901h)		;d63f	3a 01 79 	: . y 
	and 0efh		;d642	e6 ef 	. . 
	ld (07901h),a		;d644	32 01 79 	2 . y 
	ld a,01eh		;d647	3e 1e 	> . 
	call sub_d6c3h		;d649	cd c3 d6 	. . . 
	pop af			;d64c	f1 	. 
	ret			;d64d	c9 	. 
ld64eh:
	jp leb43h		;d64e	c3 43 eb 	. C . 
	nop			;d651	00 	. 
ld652h:
	nop			;d652	00 	. 
	nop			;d653	00 	. 
	nop			;d654	00 	. 
	nop			;d655	00 	. 
	nop			;d656	00 	. 
	nop			;d657	00 	. 
	nop			;d658	00 	. 
ld659h:
	ld a,003h		;d659	3e 03 	> . 
	jr ld696h		;d65b	18 39 	. 9 
ld65dh:
	ld a,(07901h)		;d65d	3a 01 79 	: . y 
	and 010h		;d660	e6 10 	. . 
	jr nz,ld684h		;d662	20 20 	    
	ret			;d664	c9 	. 
ld665h:
	ld a,(07901h)		;d665	3a 01 79 	: . y 
	and 0efh		;d668	e6 ef 	. . 
	ld (07901h),a		;d66a	32 01 79 	2 . y 
	ld a,01eh		;d66d	3e 1e 	> . 
	call sub_d6c3h		;d66f	cd c3 d6 	. . . 
	ld h,(ix+00ah)		;d672	dd 66 0a 	. f . 
	ld l,(ix+00bh)		;d675	dd 6e 0b 	. n . 
	ld sp,hl			;d678	f9 	. 
	jp lc008h		;d679	c3 08 c0 	. . . 
ld67ch:
	ld a,006h		;d67c	3e 06 	> . 
	jr ld696h		;d67e	18 16 	. . 
ld680h:
	ld a,00ch		;d680	3e 0c 	> . 
	jr ld696h		;d682	18 12 	. . 
ld684h:
	ld a,00fh		;d684	3e 0f 	> . 
	jr ld696h		;d686	18 0e 	. . 
ld688h:
	ld a,(07901h)		;d688	3a 01 79 	: . y 
	xor 010h		;d68b	ee 10 	. . 
	ld (07901h),a		;d68d	32 01 79 	2 . y 
	ld a,01eh		;d690	3e 1e 	> . 
	call sub_d6c3h		;d692	cd c3 d6 	. . . 
	ret			;d695	c9 	. 
ld696h:
	push af			;d696	f5 	. 
	ld a,(07901h)		;d697	3a 01 79 	: . y 
	and 0efh		;d69a	e6 ef 	. . 
	ld (07901h),a		;d69c	32 01 79 	2 . y 
	ld a,01eh		;d69f	3e 1e 	> . 
	call sub_d6c3h		;d6a1	cd c3 d6 	. . . 
	pop af			;d6a4	f1 	. 
	jp sub_d6c3h		;d6a5	c3 c3 d6 	. . . 
sub_d6a8h:
	push af			;d6a8	f5 	. 
	push bc			;d6a9	c5 	. 
	ld b,004h		;d6aa	06 04 	. . 
ld6ach:
	push bc			;d6ac	c5 	. 
	ld a,027h		;d6ad	3e 27 	> ' 
	call sub_d6c3h		;d6af	cd c3 d6 	. . . 
	pop bc			;d6b2	c1 	. 
	djnz ld6ach		;d6b3	10 f7 	. . 
	pop bc			;d6b5	c1 	. 
	pop af			;d6b6	f1 	. 
	ld (ix+03eh),000h		;d6b7	dd 36 3e 00 	. 6 > . 
	ret			;d6bb	c9 	. 
sub_d6bch:
	exx			;d6bc	d9 	. 
	ld hl,07c00h		;d6bd	21 00 7c 	! . | 
	jp ld6cah		;d6c0	c3 ca d6 	. . . 
sub_d6c3h:
	exx			;d6c3	d9 	. 
	ld h,(ix+002h)		;d6c4	dd 66 02 	. f . 
	ld l,(ix+003h)		;d6c7	dd 6e 03 	. n . 
ld6cah:
	ld b,000h		;d6ca	06 00 	. . 
	ld c,a			;d6cc	4f 	O 
	add hl,bc			;d6cd	09 	. 
	ld a,(hl)			;d6ce	7e 	~ 
	inc hl			;d6cf	23 	# 
	ld d,(hl)			;d6d0	56 	V 
	inc hl			;d6d1	23 	# 
	ld e,(hl)			;d6d2	5e 	^ 
	ld hl,00080h		;d6d3	21 80 00 	! . . 
	ld bc,00003h		;d6d6	01 03 00 	. . . 
	add hl,bc			;d6d9	09 	. 
	ld (hl),a			;d6da	77 	w 
	inc hl			;d6db	23 	# 
	ld (hl),e			;d6dc	73 	s 
	inc hl			;d6dd	23 	# 
	ld (hl),d			;d6de	72 	r 
	exx			;d6df	d9 	. 
	ex af,af'			;d6e0	08 	. 
	push bc			;d6e1	c5 	. 
	push de			;d6e2	d5 	. 
	push hl			;d6e3	e5 	. 
	push ix		;d6e4	dd e5 	. . 
	call 00080h		;d6e6	cd 80 00 	. . . 
	pop ix		;d6e9	dd e1 	. . 
	pop hl			;d6eb	e1 	. 
	pop de			;d6ec	d1 	. 
	pop bc			;d6ed	c1 	. 
	ret			;d6ee	c9 	. 
sub_d6efh:
	bit 3,(ix+04eh)		;d6ef	dd cb 4e 5e 	. . N ^ 
	ret z			;d6f3	c8 	. 
	ld a,01bh		;d6f4	3e 1b 	> . 
	call sub_d6c3h		;d6f6	cd c3 d6 	. . . 
	ret			;d6f9	c9 	. 
	rst 38h			;d6fa	ff 	. 
	rst 38h			;d6fb	ff 	. 
	rst 38h			;d6fc	ff 	. 
	rst 38h			;d6fd	ff 	. 
	rst 38h			;d6fe	ff 	. 
	rst 38h			;d6ff	ff 	. 
sub_d700h:
	ld a,(ix+025h)		;d700	dd 7e 25 	. ~ % 
	call sub_e08dh		;d703	cd 8d e0 	. . . 
	ld b,014h		;d706	06 14 	. . 
	rst 10h			;d708	d7 	. 
	ld c,a			;d709	4f 	O 
	rst 10h			;d70a	d7 	. 
	xor b			;d70b	a8 	. 
	rst 10h			;d70c	d7 	. 
	defb 0ddh,0d7h,0f5h	;illegal sequence		;d70d	dd d7 f5 	. . . 
	rst 10h			;d710	d7 	. 
	scf			;d711	37 	7 
	ret c			;d712	d8 	. 
	ret			;d713	c9 	. 
	call sub_d940h		;d714	cd 40 d9 	. @ . 
ld717h:
	call sub_d960h		;d717	cd 60 d9 	. ` . 
	jr nc,ld734h		;d71a	30 18 	0 . 
	or a			;d71c	b7 	. 
	jr nz,ld75ah		;d71d	20 3b 	  ; 
	ld h,(ix+044h)		;d71f	dd 66 44 	. f D 
	ld l,(ix+045h)		;d722	dd 6e 45 	. n E 
	push hl			;d725	e5 	. 
	call sub_dfb8h		;d726	cd b8 df 	. . . 
	ld b,a			;d729	47 	G 
	pop hl			;d72a	e1 	. 
ld72bh:
	ld a,(hl)			;d72b	7e 	~ 
	call sub_db46h		;d72c	cd 46 db 	. F . 
	inc hl			;d72f	23 	# 
	djnz ld72bh		;d730	10 f9 	. . 
	jr ld73fh		;d732	18 0b 	. . 
ld734h:
	ld h,(ix+033h)		;d734	dd 66 33 	. f 3 
	ld l,(ix+034h)		;d737	dd 6e 34 	. n 4 
	inc hl			;d73a	23 	# 
	ld a,(hl)			;d73b	7e 	~ 
	call sub_db46h		;d73c	cd 46 db 	. F . 
ld73fh:
	call sub_c419h		;d73f	cd 19 c4 	. . . 
	ld a,(ix+024h)		;d742	dd 7e 24 	. ~ $ 
	cp 02ch		;d745	fe 2c 	. , 
	jr z,ld717h		;d747	28 ce 	( . 
	cp 000h		;d749	fe 00 	. . 
	jr z,ld7a4h		;d74b	28 57 	( W 
	jr ld7a2h		;d74d	18 53 	. S 
	call sub_d940h		;d74f	cd 40 d9 	. @ . 
ld752h:
	call sub_d960h		;d752	cd 60 d9 	. ` . 
	jr nc,ld784h		;d755	30 2d 	0 - 
	or a			;d757	b7 	. 
	jr z,ld761h		;d758	28 07 	( . 
ld75ah:
	ld a,002h		;d75a	3e 02 	> . 
	ld b,002h		;d75c	06 02 	. . 
	jp ldbf9h		;d75e	c3 f9 db 	. . . 
ld761h:
	ld h,(ix+044h)		;d761	dd 66 44 	. f D 
	ld l,(ix+045h)		;d764	dd 6e 45 	. n E 
	call sub_dfb8h		;d767	cd b8 df 	. . . 
	cp 003h		;d76a	fe 03 	. . 
	jr c,ld775h		;d76c	38 07 	8 . 
ld76eh:
	ld a,004h		;d76e	3e 04 	> . 
	ld b,004h		;d770	06 04 	. . 
	jp ldbf9h		;d772	c3 f9 db 	. . . 
ld775h:
	ld de,00000h		;d775	11 00 00 	. . . 
	ld h,(ix+044h)		;d778	dd 66 44 	. f D 
	ld l,(ix+045h)		;d77b	dd 6e 45 	. n E 
	cp 001h		;d77e	fe 01 	. . 
	jr z,ld78fh		;d780	28 0d 	( . 
	jr ld78dh		;d782	18 09 	. . 
ld784h:
	ld de,00000h		;d784	11 00 00 	. . . 
	ld h,(ix+033h)		;d787	dd 66 33 	. f 3 
	ld l,(ix+034h)		;d78a	dd 6e 34 	. n 4 
ld78dh:
	ld d,(hl)			;d78d	56 	V 
	inc hl			;d78e	23 	# 
ld78fh:
	ld e,(hl)			;d78f	5e 	^ 
	ex de,hl			;d790	eb 	. 
	call sub_dbf0h		;d791	cd f0 db 	. . . 
	call sub_c419h		;d794	cd 19 c4 	. . . 
	ld a,(ix+024h)		;d797	dd 7e 24 	. ~ $ 
	cp 02ch		;d79a	fe 2c 	. , 
	jr z,ld752h		;d79c	28 b4 	( . 
	cp 000h		;d79e	fe 00 	. . 
	jr z,ld7a4h		;d7a0	28 02 	( . 
ld7a2h:
	jr ld7c3h		;d7a2	18 1f 	. . 
ld7a4h:
	call sub_c581h		;d7a4	cd 81 c5 	. . . 
	ret			;d7a7	c9 	. 
	call sub_d940h		;d7a8	cd 40 d9 	. @ . 
	set 4,(ix+04ch)		;d7ab	dd cb 4c e6 	. . L . 
	call sub_d960h		;d7af	cd 60 d9 	. ` . 
	jr nc,ld7b9h		;d7b2	30 05 	0 . 
	or a			;d7b4	b7 	. 
	jr nz,ld75ah		;d7b5	20 a3 	  . 
	jr ld76eh		;d7b7	18 b5 	. . 
ld7b9h:
	call sub_c419h		;d7b9	cd 19 c4 	. . . 
	call sub_c581h		;d7bc	cd 81 c5 	. . . 
	cp 000h		;d7bf	fe 00 	. . 
	jr z,ld7cah		;d7c1	28 07 	( . 
ld7c3h:
	ld a,002h		;d7c3	3e 02 	> . 
	ld b,001h		;d7c5	06 01 	. . 
	jp ldbf9h		;d7c7	c3 f9 db 	. . . 
ld7cah:
	ld h,(ix+033h)		;d7ca	dd 66 33 	. f 3 
	ld l,(ix+034h)		;d7cd	dd 6e 34 	. n 4 
	ld b,(hl)			;d7d0	46 	F 
	inc hl			;d7d1	23 	# 
	ld c,(hl)			;d7d2	4e 	N 
ld7d3h:
	ld a,b			;d7d3	78 	x 
	or c			;d7d4	b1 	. 
	ret z			;d7d5	c8 	. 
	xor a			;d7d6	af 	. 
	call sub_db46h		;d7d7	cd 46 db 	. F . 
	dec bc			;d7da	0b 	. 
	jr ld7d3h		;d7db	18 f6 	. . 
	bit 2,(ix+04ch)		;d7dd	dd cb 4c 56 	. . L V 
	jr z,ld7eah		;d7e1	28 07 	( . 
ld7e3h:
	ld a,002h		;d7e3	3e 02 	> . 
	ld b,004h		;d7e5	06 04 	. . 
	jp ldbf9h		;d7e7	c3 f9 db 	. . . 
ld7eah:
	bit 3,(ix+04ch)		;d7ea	dd cb 4c 5e 	. . L ^ 
	jr nz,ld7e3h		;d7ee	20 f3 	  . 
	set 1,(ix+04ch)		;d7f0	dd cb 4c ce 	. . L . 
	ret			;d7f4	c9 	. 
	bit 3,(ix+04ch)		;d7f5	dd cb 4c 5e 	. . L ^ 
	jr nz,ld802h		;d7f9	20 07 	  . 
	ld a,002h		;d7fb	3e 02 	> . 
	ld b,004h		;d7fd	06 04 	. . 
	jp ldbf9h		;d7ff	c3 f9 db 	. . . 
ld802h:
	set 4,(ix+04ch)		;d802	dd cb 4c e6 	. . L . 
	call sub_d960h		;d806	cd 60 d9 	. ` . 
	jr nc,ld829h		;d809	30 1e 	0 . 
	or a			;d80b	b7 	. 
	jr z,ld815h		;d80c	28 07 	( . 
	ld a,002h		;d80e	3e 02 	> . 
	ld b,002h		;d810	06 02 	. . 
	jp ldbf9h		;d812	c3 f9 db 	. . . 
ld815h:
	ld h,(ix+044h)		;d815	dd 66 44 	. f D 
	ld l,(ix+045h)		;d818	dd 6e 45 	. n E 
	call sub_dfb8h		;d81b	cd b8 df 	. . . 
	cp 003h		;d81e	fe 03 	. . 
	jr c,ld829h		;d820	38 07 	8 . 
	ld a,004h		;d822	3e 04 	> . 
	ld b,004h		;d824	06 04 	. . 
	jp ldbf9h		;d826	c3 f9 db 	. . . 
ld829h:
	ld h,(ix+033h)		;d829	dd 66 33 	. f 3 
	ld l,(ix+034h)		;d82c	dd 6e 34 	. n 4 
	ld d,(hl)			;d82f	56 	V 
	inc hl			;d830	23 	# 
	ld e,(hl)			;d831	5e 	^ 
	ex de,hl			;d832	eb 	. 
	call sub_c655h		;d833	cd 55 c6 	. U . 
	ret			;d836	c9 	. 
	bit 2,(ix+04ch)		;d837	dd cb 4c 56 	. . L V 
	jr nz,ld843h		;d83b	20 06 	  . 
	bit 3,(ix+04ch)		;d83d	dd cb 4c 5e 	. . L ^ 
	jr z,ld84ah		;d841	28 07 	( . 
ld843h:
	ld a,002h		;d843	3e 02 	> . 
	ld b,004h		;d845	06 04 	. . 
	jp ldbf9h		;d847	c3 f9 db 	. . . 
ld84ah:
	set 4,(ix+04ch)		;d84a	dd cb 4c e6 	. . L . 
	call sub_d960h		;d84e	cd 60 d9 	. ` . 
	jr nc,ld86ah		;d851	30 17 	0 . 
	or a			;d853	b7 	. 
	jr z,ld85dh		;d854	28 07 	( . 
ld856h:
	ld a,002h		;d856	3e 02 	> . 
	ld b,002h		;d858	06 02 	. . 
	jp ldbf9h		;d85a	c3 f9 db 	. . . 
ld85dh:
	ld h,(ix+044h)		;d85d	dd 66 44 	. f D 
	ld l,(ix+045h)		;d860	dd 6e 45 	. n E 
	call sub_dfb8h		;d863	cd b8 df 	. . . 
	cp 003h		;d866	fe 03 	. . 
	jr nc,ld856h		;d868	30 ec 	0 . 
ld86ah:
	call sub_c419h		;d86a	cd 19 c4 	. . . 
	cp 02ch		;d86d	fe 2c 	. , 
	jr z,ld8a2h		;d86f	28 31 	( 1 
	cp 000h		;d871	fe 00 	. . 
	jr z,ld87ch		;d873	28 07 	( . 
ld875h:
	ld a,002h		;d875	3e 02 	> . 
	ld b,001h		;d877	06 01 	. . 
	jp ldbf9h		;d879	c3 f9 db 	. . . 
ld87ch:
	call sub_d8e8h		;d87c	cd e8 d8 	. . . 
	ld h,(ix+008h)		;d87f	dd 66 08 	. f . 
	ld l,(ix+009h)		;d882	dd 6e 09 	. n . 
	ld (ix+004h),h		;d885	dd 74 04 	. t . 
	ld (ix+005h),l		;d888	dd 75 05 	. u . 
	ld (ix+016h),h		;d88b	dd 74 16 	. t . 
	ld (ix+017h),l		;d88e	dd 75 17 	. u . 
	bit 0,(ix+04ch)		;d891	dd cb 4c 46 	. . L F 
	jr z,ld89eh		;d895	28 07 	( . 
	bit 0,(ix+04eh)		;d897	dd cb 4e 46 	. . N F 
	call z,sub_dc9ah		;d89b	cc 9a dc 	. . . 
ld89eh:
	call sub_c581h		;d89e	cd 81 c5 	. . . 
	ret			;d8a1	c9 	. 
ld8a2h:
	ld h,(ix+033h)		;d8a2	dd 66 33 	. f 3 
	ld l,(ix+034h)		;d8a5	dd 6e 34 	. n 4 
	ld b,(hl)			;d8a8	46 	F 
	inc hl			;d8a9	23 	# 
	ld c,(hl)			;d8aa	4e 	N 
	push bc			;d8ab	c5 	. 
	call sub_d960h		;d8ac	cd 60 d9 	. ` . 
	pop bc			;d8af	c1 	. 
	jr nc,ld8c2h		;d8b0	30 10 	0 . 
	or a			;d8b2	b7 	. 
	jr nz,ld856h		;d8b3	20 a1 	  . 
	ld h,(ix+044h)		;d8b5	dd 66 44 	. f D 
	ld l,(ix+045h)		;d8b8	dd 6e 45 	. n E 
	call sub_dfb8h		;d8bb	cd b8 df 	. . . 
	cp 003h		;d8be	fe 03 	. . 
	jr nc,ld856h		;d8c0	30 94 	0 . 
ld8c2h:
	call sub_c419h		;d8c2	cd 19 c4 	. . . 
	cp 000h		;d8c5	fe 00 	. . 
	jr nz,ld875h		;d8c7	20 ac 	  . 
	call sub_c581h		;d8c9	cd 81 c5 	. . . 
	call sub_d8e8h		;d8cc	cd e8 d8 	. . . 
	ld (ix+004h),b		;d8cf	dd 70 04 	. p . 
	ld (ix+005h),c		;d8d2	dd 71 05 	. q . 
	ld (ix+016h),b		;d8d5	dd 70 16 	. p . 
	ld (ix+017h),c		;d8d8	dd 71 17 	. q . 
	bit 0,(ix+04ch)		;d8db	dd cb 4c 46 	. . L F 
	ret z			;d8df	c8 	. 
	bit 0,(ix+04eh)		;d8e0	dd cb 4e 46 	. . N F 
	call z,sub_dc9ah		;d8e4	cc 9a dc 	. . . 
	ret			;d8e7	c9 	. 
sub_d8e8h:
	ld h,(ix+033h)		;d8e8	dd 66 33 	. f 3 
	ld l,(ix+034h)		;d8eb	dd 6e 34 	. n 4 
	ld d,(hl)			;d8ee	56 	V 
	inc hl			;d8ef	23 	# 
	ld e,(hl)			;d8f0	5e 	^ 
	ex de,hl			;d8f1	eb 	. 
	ld de,00090h		;d8f2	11 90 00 	. . . 
	sbc hl,de		;d8f5	ed 52 	. R 
	jr c,ld939h		;d8f7	38 40 	8 @ 
	bit 5,(ix+04ch)		;d8f9	dd cb 4c 6e 	. . L n 
	jr z,ld914h		;d8fd	28 15 	( . 
	ld h,(ix+033h)		;d8ff	dd 66 33 	. f 3 
	ld l,(ix+034h)		;d902	dd 6e 34 	. n 4 
	ld d,(hl)			;d905	56 	V 
	inc hl			;d906	23 	# 
	ld e,(hl)			;d907	5e 	^ 
	ex de,hl			;d908	eb 	. 
	ld d,(ix+008h)		;d909	dd 56 08 	. V . 
	ld e,(ix+009h)		;d90c	dd 5e 09 	. ^ . 
	or a			;d90f	b7 	. 
	sbc hl,de		;d910	ed 52 	. R 
	jr c,ld939h		;d912	38 25 	8 % 
ld914h:
	ld h,(ix+033h)		;d914	dd 66 33 	. f 3 
	ld l,(ix+034h)		;d917	dd 6e 34 	. n 4 
	ld a,(hl)			;d91a	7e 	~ 
	ld (ix+008h),a		;d91b	dd 77 08 	. w . 
	inc hl			;d91e	23 	# 
	ld a,(hl)			;d91f	7e 	~ 
	ld (ix+009h),a		;d920	dd 77 09 	. w . 
	ld d,(ix+008h)		;d923	dd 56 08 	. V . 
	ld e,(ix+009h)		;d926	dd 5e 09 	. ^ . 
	bit 5,(ix+04ch)		;d929	dd cb 4c 6e 	. . L n 
	ret nz			;d92d	c0 	. 
	ld (ix+006h),d		;d92e	dd 72 06 	. r . 
	ld (ix+007h),e		;d931	dd 73 07 	. s . 
	set 5,(ix+04ch)		;d934	dd cb 4c ee 	. . L . 
	ret			;d938	c9 	. 
ld939h:
	ld a,004h		;d939	3e 04 	> . 
	ld b,003h		;d93b	06 03 	. . 
	jp ldbf9h		;d93d	c3 f9 db 	. . . 
sub_d940h:
	bit 3,(ix+04ch)		;d940	dd cb 4c 5e 	. . L ^ 
	jr z,ld94dh		;d944	28 07 	( . 
	ld a,002h		;d946	3e 02 	> . 
	ld b,004h		;d948	06 04 	. . 
	jp ldbf9h		;d94a	c3 f9 db 	. . . 
ld94dh:
	bit 2,(ix+04ch)		;d94d	dd cb 4c 56 	. . L V 
	ret z			;d951	c8 	. 
	ld h,(ix+004h)		;d952	dd 66 04 	. f . 
	ld l,(ix+005h)		;d955	dd 6e 05 	. n . 
	call sub_c655h		;d958	cd 55 c6 	. U . 
	ret			;d95b	c9 	. 
	rst 38h			;d95c	ff 	. 
	rst 38h			;d95d	ff 	. 
	rst 38h			;d95e	ff 	. 
	rst 38h			;d95f	ff 	. 
sub_d960h:
	ld (ix+037h),000h		;d960	dd 36 37 00 	. 6 7 . 
	ld h,(ix+033h)		;d964	dd 66 33 	. f 3 
	ld l,(ix+034h)		;d967	dd 6e 34 	. n 4 
	ld (hl),000h		;d96a	36 00 	6 . 
	inc hl			;d96c	23 	# 
	ld (hl),000h		;d96d	36 00 	6 . 
	call sub_d9b1h		;d96f	cd b1 d9 	. . . 
	ld h,(ix+033h)		;d972	dd 66 33 	. f 3 
	ld l,(ix+034h)		;d975	dd 6e 34 	. n 4 
	ld (hl),b			;d978	70 	p 
	inc hl			;d979	23 	# 
	ld (hl),c			;d97a	71 	q 
	ret c			;d97b	d8 	. 
ld97ch:
	call sub_c419h		;d97c	cd 19 c4 	. . . 
	ld a,(ix+024h)		;d97f	dd 7e 24 	. ~ $ 
	cp 02bh		;d982	fe 2b 	. + 
	jr z,ld997h		;d984	28 11 	( . 
	cp 02dh		;d986	fe 2d 	. - 
	jr z,ld997h		;d988	28 0d 	( . 
	cp 02ah		;d98a	fe 2a 	. * 
	jr z,ld997h		;d98c	28 09 	( . 
	cp 02fh		;d98e	fe 2f 	. / 
	jr z,ld997h		;d990	28 05 	( . 
	call sub_c581h		;d992	cd 81 c5 	. . . 
	xor a			;d995	af 	. 
	ret			;d996	c9 	. 
ld997h:
	ld (ix+037h),a		;d997	dd 77 37 	. w 7 
	call sub_d9b1h		;d99a	cd b1 d9 	. . . 
	jr nc,ld9a3h		;d99d	30 04 	0 . 
	ld a,001h		;d99f	3e 01 	> . 
	scf			;d9a1	37 	7 
	ret			;d9a2	c9 	. 
ld9a3h:
	ld h,(ix+035h)		;d9a3	dd 66 35 	. f 5 
	ld l,(ix+036h)		;d9a6	dd 6e 36 	. n 6 
	ld (hl),b			;d9a9	70 	p 
	inc hl			;d9aa	23 	# 
	ld (hl),c			;d9ab	71 	q 
	call sub_daebh		;d9ac	cd eb da 	. . . 
	jr ld97ch		;d9af	18 cb 	. . 
sub_d9b1h:
	res 0,(ix+04fh)		;d9b1	dd cb 4f 86 	. . O . 
	res 1,(ix+04fh)		;d9b5	dd cb 4f 8e 	. . O . 
ld9b9h:
	call sub_c419h		;d9b9	cd 19 c4 	. . . 
	ld a,(ix+024h)		;d9bc	dd 7e 24 	. ~ $ 
	cp 008h		;d9bf	fe 08 	. . 
	jr z,lda16h		;d9c1	28 53 	( S 
	cp 006h		;d9c3	fe 06 	. . 
	jp z,lda9ah		;d9c5	ca 9a da 	. . . 
	cp 004h		;d9c8	fe 04 	. . 
	jp z,lda9ah		;d9ca	ca 9a da 	. . . 
	cp 005h		;d9cd	fe 05 	. . 
	jp z,lda9ah		;d9cf	ca 9a da 	. . . 
	cp 007h		;d9d2	fe 07 	. . 
	jp z,ldac6h		;d9d4	ca c6 da 	. . . 
	cp 02bh		;d9d7	fe 2b 	. + 
	jr nz,ld9e1h		;d9d9	20 06 	  . 
	set 1,(ix+04fh)		;d9db	dd cb 4f ce 	. . O . 
	jr ld9b9h		;d9df	18 d8 	. . 
ld9e1h:
	cp 02dh		;d9e1	fe 2d 	. - 
	jr nz,ld9f3h		;d9e3	20 0e 	  . 
	set 1,(ix+04fh)		;d9e5	dd cb 4f ce 	. . O . 
	ld a,001h		;d9e9	3e 01 	> . 
	xor (ix+04fh)		;d9eb	dd ae 4f 	. . O 
	ld (ix+04fh),a		;d9ee	dd 77 4f 	. w O 
	jr ld9b9h		;d9f1	18 c6 	. . 
ld9f3h:
	cp 028h		;d9f3	fe 28 	. ( 
	jr z,ld9fbh		;d9f5	28 04 	( . 
	cp 029h		;d9f7	fe 29 	. ) 
	jr z,lda02h		;d9f9	28 07 	( . 
ld9fbh:
	ld a,004h		;d9fb	3e 04 	> . 
	ld b,006h		;d9fd	06 06 	. . 
	jp ldbf9h		;d9ff	c3 f9 db 	. . . 
lda02h:
	bit 1,(ix+04fh)		;da02	dd cb 4f 4e 	. . O N 
	jr nz,ld9fbh		;da06	20 f3 	  . 
	ld a,(ix+037h)		;da08	dd 7e 37 	. ~ 7 
	or a			;da0b	b7 	. 
	jr nz,ld9fbh		;da0c	20 ed 	  . 
	ld bc,00000h		;da0e	01 00 00 	. . . 
	call sub_c581h		;da11	cd 81 c5 	. . . 
	xor a			;da14	af 	. 
	ret			;da15	c9 	. 
lda16h:
	call sub_c419h		;da16	cd 19 c4 	. . . 
	call sub_c581h		;da19	cd 81 c5 	. . . 
	bit 0,(ix+04fh)		;da1c	dd cb 4f 46 	. . O F 
	jr nz,lda58h		;da20	20 36 	  6 
	ld a,(ix+024h)		;da22	dd 7e 24 	. ~ $ 
	cp 02bh		;da25	fe 2b 	. + 
	jr z,lda58h		;da27	28 2f 	( / 
	cp 02dh		;da29	fe 2d 	. - 
	jr z,lda58h		;da2b	28 2b 	( + 
	cp 02ah		;da2d	fe 2a 	. * 
	jr z,lda58h		;da2f	28 27 	( ' 
	cp 02fh		;da31	fe 2f 	. / 
	jr z,lda58h		;da33	28 23 	( # 
	ld a,(ix+037h)		;da35	dd 7e 37 	. ~ 7 
	or a			;da38	b7 	. 
	jr nz,lda58h		;da39	20 1d 	  . 
	ld h,(ix+044h)		;da3b	dd 66 44 	. f D 
	ld l,(ix+045h)		;da3e	dd 6e 45 	. n E 
	call sub_dfb8h		;da41	cd b8 df 	. . . 
	ld bc,00000h		;da44	01 00 00 	. . . 
	cp 001h		;da47	fe 01 	. . 
	jr z,lda54h		;da49	28 09 	( . 
	cp 002h		;da4b	fe 02 	. . 
	jr nz,lda55h		;da4d	20 06 	  . 
	ld b,(hl)			;da4f	46 	F 
	inc hl			;da50	23 	# 
	ld c,(hl)			;da51	4e 	N 
	jr lda55h		;da52	18 01 	. . 
lda54h:
	ld c,(hl)			;da54	4e 	N 
lda55h:
	xor a			;da55	af 	. 
	scf			;da56	37 	7 
	ret			;da57	c9 	. 
lda58h:
	ld h,(ix+044h)		;da58	dd 66 44 	. f D 
	ld l,(ix+045h)		;da5b	dd 6e 45 	. n E 
	call sub_dfb8h		;da5e	cd b8 df 	. . . 
	cp 001h		;da61	fe 01 	. . 
	jr z,lda70h		;da63	28 0b 	( . 
	cp 002h		;da65	fe 02 	. . 
	jr z,lda8ah		;da67	28 21 	( ! 
	ld a,004h		;da69	3e 04 	> . 
	ld b,004h		;da6b	06 04 	. . 
	jp ldbf9h		;da6d	c3 f9 db 	. . . 
lda70h:
	ld d,(ix+044h)		;da70	dd 56 44 	. V D 
	ld e,(ix+045h)		;da73	dd 5e 45 	. ^ E 
	ld a,(de)			;da76	1a 	. 
	ld b,000h		;da77	06 00 	. . 
	ld c,a			;da79	4f 	O 
	bit 0,(ix+04fh)		;da7a	dd cb 4f 46 	. . O F 
	ret z			;da7e	c8 	. 
	ld a,c			;da7f	79 	y 
	neg		;da80	ed 44 	. D 
	ld c,a			;da82	4f 	O 
	bit 7,c		;da83	cb 79 	. y 
	ret z			;da85	c8 	. 
	ld b,0ffh		;da86	06 ff 	. . 
	xor a			;da88	af 	. 
	ret			;da89	c9 	. 
lda8ah:
	ld d,(ix+044h)		;da8a	dd 56 44 	. V D 
	ld e,(ix+045h)		;da8d	dd 5e 45 	. ^ E 
	ld a,(de)			;da90	1a 	. 
	ld b,a			;da91	47 	G 
	inc de			;da92	13 	. 
	ld a,(de)			;da93	1a 	. 
	ld c,a			;da94	4f 	O 
	call sub_dadeh		;da95	cd de da 	. . . 
	xor a			;da98	af 	. 
	ret			;da99	c9 	. 
lda9ah:
	bit 0,(ix+04ch)		;da9a	dd cb 4c 46 	. . L F 
	jr nz,ldaabh		;da9e	20 0b 	  . 
	bit 4,(ix+04ch)		;daa0	dd cb 4c 66 	. . L f 
	jr nz,ldaabh		;daa4	20 05 	  . 
	ld bc,00000h		;daa6	01 00 00 	. . . 
	xor a			;daa9	af 	. 
	ret			;daaa	c9 	. 
ldaabh:
	ld d,(ix+022h)		;daab	dd 56 22 	. V " 
	ld e,(ix+023h)		;daae	dd 5e 23 	. ^ # 
	call sub_c6dbh		;dab1	cd db c6 	. . . 
	jr nc,ldabfh		;dab4	30 09 	0 . 
	set 1,(ix+04dh)		;dab6	dd cb 4d ce 	. . M . 
	ld bc,00000h		;daba	01 00 00 	. . . 
	xor a			;dabd	af 	. 
	ret			;dabe	c9 	. 
ldabfh:
	push hl			;dabf	e5 	. 
	pop bc			;dac0	c1 	. 
	call sub_dadeh		;dac1	cd de da 	. . . 
	xor a			;dac4	af 	. 
	ret			;dac5	c9 	. 
ldac6h:
	ld h,(ix+022h)		;dac6	dd 66 22 	. f " 
	ld l,(ix+023h)		;dac9	dd 6e 23 	. n # 
	call sub_e0b8h		;dacc	cd b8 e0 	. . . 
	jr nc,ldad8h		;dacf	30 07 	0 . 
	ld a,004h		;dad1	3e 04 	> . 
	ld b,006h		;dad3	06 06 	. . 
	jp ldbf9h		;dad5	c3 f9 db 	. . . 
ldad8h:
	push de			;dad8	d5 	. 
	pop bc			;dad9	c1 	. 
	call sub_dadeh		;dada	cd de da 	. . . 
	ret			;dadd	c9 	. 
sub_dadeh:
	bit 0,(ix+04fh)		;dade	dd cb 4f 46 	. . O F 
	ret z			;dae2	c8 	. 
	ld a,c			;dae3	79 	y 
	cpl			;dae4	2f 	/ 
	ld c,a			;dae5	4f 	O 
	ld a,b			;dae6	78 	x 
	cpl			;dae7	2f 	/ 
	ld b,a			;dae8	47 	G 
	inc bc			;dae9	03 	. 
	ret			;daea	c9 	. 
sub_daebh:
	ld h,(ix+033h)		;daeb	dd 66 33 	. f 3 
	ld l,(ix+034h)		;daee	dd 6e 34 	. n 4 
	ld d,(hl)			;daf1	56 	V 
	inc hl			;daf2	23 	# 
	ld e,(hl)			;daf3	5e 	^ 
	inc hl			;daf4	23 	# 
	ld b,(hl)			;daf5	46 	F 
	inc hl			;daf6	23 	# 
	ld c,(hl)			;daf7	4e 	N 
	push bc			;daf8	c5 	. 
	pop hl			;daf9	e1 	. 
	ld a,(ix+037h)		;dafa	dd 7e 37 	. ~ 7 
	cp 02bh		;dafd	fe 2b 	. + 
	jr z,ldb14h		;daff	28 13 	( . 
	cp 02dh		;db01	fe 2d 	. - 
	jr z,ldb17h		;db03	28 12 	( . 
	cp 02ah		;db05	fe 2a 	. * 
	jr z,ldb1dh		;db07	28 14 	( . 
	cp 02fh		;db09	fe 2f 	. / 
	jr z,ldb22h		;db0b	28 15 	( . 
	ld a,004h		;db0d	3e 04 	> . 
	ld b,006h		;db0f	06 06 	. . 
	jp ldbf9h		;db11	c3 f9 db 	. . . 
ldb14h:
	add hl,de			;db14	19 	. 
	jr ldb36h		;db15	18 1f 	. . 
ldb17h:
	or a			;db17	b7 	. 
	ex de,hl			;db18	eb 	. 
	sbc hl,de		;db19	ed 52 	. R 
	jr ldb36h		;db1b	18 19 	. . 
ldb1dh:
	call z,sub_e1a0h		;db1d	cc a0 e1 	. . . 
	jr ldb36h		;db20	18 14 	. . 
ldb22h:
	call z,sub_e21ah		;db22	cc 1a e2 	. . . 
	jr nc,ldb36h		;db25	30 0f 	0 . 
	bit 0,(ix+04ch)		;db27	dd cb 4c 46 	. . L F 
	jr z,ldb36h		;db2b	28 09 	( . 
	set 0,(ix+04dh)		;db2d	dd cb 4d c6 	. . M . 
	ld hl,00000h		;db31	21 00 00 	! . . 
	jr ldb36h		;db34	18 00 	. . 
ldb36h:
	push hl			;db36	e5 	. 
	pop bc			;db37	c1 	. 
	ld h,(ix+033h)		;db38	dd 66 33 	. f 3 
	ld l,(ix+034h)		;db3b	dd 6e 34 	. n 4 
	ld (hl),b			;db3e	70 	p 
	inc hl			;db3f	23 	# 
	ld (hl),c			;db40	71 	q 
	ld (ix+037h),000h		;db41	dd 36 37 00 	. 6 7 . 
	ret			;db45	c9 	. 
sub_db46h:
	push hl			;db46	e5 	. 
	push de			;db47	d5 	. 
	push bc			;db48	c5 	. 
	set 5,(ix+04ch)		;db49	dd cb 4c ee 	. . L . 
	bit 0,(ix+04ch)		;db4d	dd cb 4c 46 	. . L F 
	jr z,ldb9ah		;db51	28 47 	( G 
	bit 0,(ix+04eh)		;db53	dd cb 4e 46 	. . N F 
	jr nz,ldb9ah		;db57	20 41 	  A 
	ld b,a			;db59	47 	G 
	xor a			;db5a	af 	. 
	cp (ix+04dh)		;db5b	dd be 4d 	. . M 
	jr nz,ldb9ah		;db5e	20 3a 	  : 
	ld a,b			;db60	78 	x 
	ld h,(ix+046h)		;db61	dd 66 46 	. f F 
	ld l,(ix+047h)		;db64	dd 6e 47 	. n G 
	ld de,0000dh		;db67	11 0d 00 	. . . 
	add hl,de			;db6a	19 	. 
	ld d,(ix+048h)		;db6b	dd 56 48 	. V H 
	ld e,(ix+049h)		;db6e	dd 5e 49 	. ^ I 
	or a			;db71	b7 	. 
	sbc hl,de		;db72	ed 52 	. R 
	jr nz,ldb8ch		;db74	20 16 	  . 
	push af			;db76	f5 	. 
	call sub_de47h		;db77	cd 47 de 	. G . 
	call sub_d6efh		;db7a	cd ef d6 	. . . 
	call sub_dc6bh		;db7d	cd 6b dc 	. k . 
	pop af			;db80	f1 	. 
	ld h,(ix+046h)		;db81	dd 66 46 	. f F 
	ld l,(ix+047h)		;db84	dd 6e 47 	. n G 
	ld de,00005h		;db87	11 05 00 	. . . 
	add hl,de			;db8a	19 	. 
	ex de,hl			;db8b	eb 	. 
ldb8ch:
	call sub_e2a5h		;db8c	cd a5 e2 	. . . 
	inc de			;db8f	13 	. 
	inc de			;db90	13 	. 
	ld a,020h		;db91	3e 20 	>   
	ld (de),a			;db93	12 	. 
	ld (ix+048h),d		;db94	dd 72 48 	. r H 
	ld (ix+049h),e		;db97	dd 73 49 	. s I 
ldb9ah:
	ld d,(ix+008h)		;db9a	dd 56 08 	. V . 
	ld e,(ix+009h)		;db9d	dd 5e 09 	. ^ . 
	ld hl,(07ffeh)		;dba0	2a fe 7f 	* .  
	ld b,(ix+040h)		;dba3	dd 46 40 	. F @ 
	ld c,(ix+041h)		;dba6	dd 4e 41 	. N A 
	add hl,bc			;dba9	09 	. 
	or a			;dbaa	b7 	. 
	sbc hl,de		;dbab	ed 52 	. R 
	jr c,ldbd9h		;dbad	38 2a 	8 * 
	ld hl,0008fh		;dbaf	21 8f 00 	! . . 
	sbc hl,de		;dbb2	ed 52 	. R 
	jr nc,ldbd9h		;dbb4	30 23 	0 # 
	bit 0,(ix+04eh)		;dbb6	dd cb 4e 46 	. . N F 
	jr z,ldbbdh		;dbba	28 01 	( . 
	ld (de),a			;dbbc	12 	. 
ldbbdh:
	ld a,d			;dbbd	7a 	z 
	or e			;dbbe	b3 	. 
	jr z,ldbd9h		;dbbf	28 18 	( . 
	inc de			;dbc1	13 	. 
	ld (ix+008h),d		;dbc2	dd 72 08 	. r . 
	ld (ix+009h),e		;dbc5	dd 73 09 	. s . 
	ld d,(ix+004h)		;dbc8	dd 56 04 	. V . 
	ld e,(ix+005h)		;dbcb	dd 5e 05 	. ^ . 
	inc de			;dbce	13 	. 
	ld (ix+004h),d		;dbcf	dd 72 04 	. r . 
	ld (ix+005h),e		;dbd2	dd 73 05 	. s . 
	pop bc			;dbd5	c1 	. 
	pop de			;dbd6	d1 	. 
	pop hl			;dbd7	e1 	. 
	ret			;dbd8	c9 	. 
ldbd9h:
	set 2,(ix+04dh)		;dbd9	dd cb 4d d6 	. . M . 
	set 0,(ix+04ch)		;dbdd	dd cb 4c c6 	. . L . 
	ld a,0f0h		;dbe1	3e f0 	> . 
	and (ix+04eh)		;dbe3	dd a6 4e 	. . N 
	or 001h		;dbe6	f6 01 	. . 
	ld (ix+04eh),a		;dbe8	dd 77 4e 	. w N 
	ld a,006h		;dbeb	3e 06 	> . 
	jp ldbf9h		;dbed	c3 f9 db 	. . . 
sub_dbf0h:
	ld a,l			;dbf0	7d 	} 
	call sub_db46h		;dbf1	cd 46 db 	. F . 
	ld a,h			;dbf4	7c 	| 
	call sub_db46h		;dbf5	cd 46 db 	. F . 
	ret			;dbf8	c9 	. 
ldbf9h:
	res 2,(ix+04ch)		;dbf9	dd cb 4c 96 	. . L . 
	res 3,(ix+04ch)		;dbfd	dd cb 4c 9e 	. . L . 
	bit 0,(ix+04ch)		;dc01	dd cb 4c 46 	. . L F 
	jr z,ldc5bh		;dc05	28 54 	( T 
	set 6,(ix+04ch)		;dc07	dd cb 4c f6 	. . L . 
	ld h,(ix+039h)		;dc0b	dd 66 39 	. f 9 
	ld l,(ix+03ah)		;dc0e	dd 6e 3a 	. n : 
	inc hl			;dc11	23 	# 
	ld (ix+039h),h		;dc12	dd 74 39 	. t 9 
	ld (ix+03ah),l		;dc15	dd 75 3a 	. u : 
	ld (ix+038h),b		;dc18	dd 70 38 	. p 8 
	call sub_e345h		;dc1b	cd 45 e3 	. E . 
	call sub_dc9ah		;dc1e	cd 9a dc 	. . . 
	call sub_dcc6h		;dc21	cd c6 dc 	. . . 
	ld h,(ix+046h)		;dc24	dd 66 46 	. f F 
	ld l,(ix+047h)		;dc27	dd 6e 47 	. n G 
	ld bc,00005h		;dc2a	01 05 00 	. . . 
	add hl,bc			;dc2d	09 	. 
	ld a,02ah		;dc2e	3e 2a 	> * 
	ld b,004h		;dc30	06 04 	. . 
ldc32h:
	ld (hl),a			;dc32	77 	w 
	inc hl			;dc33	23 	# 
	djnz ldc32h		;dc34	10 fc 	. . 
	bit 0,(ix+04eh)		;dc36	dd cb 4e 46 	. . N F 
	jr z,ldc5bh		;dc3a	28 1f 	( . 
	call sub_de47h		;dc3c	cd 47 de 	. G . 
	call sub_dd0ah		;dc3f	cd 0a dd 	. . . 
ldc42h:
	call sub_d5f1h		;dc42	cd f1 d5 	. . . 
	bit 2,(ix+04dh)		;dc45	dd cb 4d 56 	. . M V 
	jr nz,ldc42h		;dc49	20 f7 	  . 
	cp 01fh		;dc4b	fe 1f 	. . 
	jr z,ldc51h		;dc4d	28 02 	( . 
	jr ldc42h		;dc4f	18 f1 	. . 
ldc51h:
	ld a,(07965h)		;dc51	3a 65 79 	: e y 
	set 1,a		;dc54	cb cf 	. . 
	ld (07965h),a		;dc56	32 65 79 	2 e y 
	jr ldc5bh		;dc59	18 00 	. . 
ldc5bh:
	bit 2,(ix+04ch)		;dc5b	dd cb 4c 56 	. . L V 
	jr nz,ldc42h		;dc5f	20 e1 	  . 
	ld h,(ix+00ch)		;dc61	dd 66 0c 	. f . 
	ld l,(ix+00dh)		;dc64	dd 6e 0d 	. n . 
	ld sp,hl			;dc67	f9 	. 
	jp lc413h		;dc68	c3 13 c4 	. . . 
sub_dc6bh:
	push hl			;dc6b	e5 	. 
	push bc			;dc6c	c5 	. 
	ld h,(ix+046h)		;dc6d	dd 66 46 	. f F 
	ld l,(ix+047h)		;dc70	dd 6e 47 	. n G 
	ld b,018h		;dc73	06 18 	. . 
ldc75h:
	ld (hl),020h		;dc75	36 20 	6   
	inc hl			;dc77	23 	# 
	djnz ldc75h		;dc78	10 fb 	. . 
	pop bc			;dc7a	c1 	. 
	pop hl			;dc7b	e1 	. 
	ret			;dc7c	c9 	. 
sub_dc7dh:
	bit 0,(ix+04eh)		;dc7d	dd cb 4e 46 	. . N F 
	ret nz			;dc81	c0 	. 
	call sub_d6efh		;dc82	cd ef d6 	. . . 
	ld hl,ldf21h		;dc85	21 21 df 	! ! . 
	ld d,(ix+046h)		;dc88	dd 56 46 	. V F 
	ld e,(ix+047h)		;dc8b	dd 5e 47 	. ^ G 
	ld bc,00018h		;dc8e	01 18 00 	. . . 
	ldir		;dc91	ed b0 	. . 
	call sub_de47h		;dc93	cd 47 de 	. G . 
	call sub_d6efh		;dc96	cd ef d6 	. . . 
	ret			;dc99	c9 	. 
sub_dc9ah:
	call sub_dc6bh		;dc9a	cd 6b dc 	. k . 
	ld d,(ix+046h)		;dc9d	dd 56 46 	. V F 
	ld e,(ix+047h)		;dca0	dd 5e 47 	. ^ G 
	ld a,(ix+016h)		;dca3	dd 7e 16 	. ~ . 
	call sub_e2a5h		;dca6	cd a5 e2 	. . . 
	inc de			;dca9	13 	. 
	inc de			;dcaa	13 	. 
	ld a,(ix+017h)		;dcab	dd 7e 17 	. ~ . 
	call sub_e2a5h		;dcae	cd a5 e2 	. . . 
	inc de			;dcb1	13 	. 
	inc de			;dcb2	13 	. 
	ld a,020h		;dcb3	3e 20 	>   
	ld (de),a			;dcb5	12 	. 
	inc de			;dcb6	13 	. 
	ld (ix+048h),d		;dcb7	dd 72 48 	. r H 
	ld (ix+049h),e		;dcba	dd 73 49 	. s I 
	bit 6,(ix+04ch)		;dcbd	dd cb 4c 76 	. . L v 
	ret nz			;dcc1	c0 	. 
	call sub_def3h		;dcc2	cd f3 de 	. . . 
	ret			;dcc5	c9 	. 
sub_dcc6h:
	ld h,(ix+03bh)		;dcc6	dd 66 3b 	. f ; 
	ld l,(ix+03ch)		;dcc9	dd 6e 3c 	. n < 
	ld d,(ix+042h)		;dccc	dd 56 42 	. V B 
	ld e,(ix+043h)		;dccf	dd 5e 43 	. ^ C 
	call sub_e2ffh		;dcd2	cd ff e2 	. . . 
	ld b,000h		;dcd5	06 00 	. . 
ldcd7h:
	ld a,(de)			;dcd7	1a 	. 
	inc b			;dcd8	04 	. 
	inc de			;dcd9	13 	. 
	call sub_e2ceh		;dcda	cd ce e2 	. . . 
	push hl			;dcdd	e5 	. 
	jr nc,ldcd7h		;dcde	30 f7 	0 . 
	or a			;dce0	b7 	. 
	jr z,ldce8h		;dce1	28 05 	( . 
	ld a,00ah		;dce3	3e 0a 	> . 
	jp ldbf9h		;dce5	c3 f9 db 	. . . 
ldce8h:
	ld h,(ix+046h)		;dce8	dd 66 46 	. f F 
	ld l,(ix+047h)		;dceb	dd 6e 47 	. n G 
	ld de,00017h		;dcee	11 17 00 	. . . 
	add hl,de			;dcf1	19 	. 
ldcf2h:
	pop de			;dcf2	d1 	. 
	ld a,d			;dcf3	7a 	z 
	or e			;dcf4	b3 	. 
	jr z,ldcffh		;dcf5	28 08 	( . 
	ld a,e			;dcf7	7b 	{ 
	or a			;dcf8	b7 	. 
	jr z,ldcfdh		;dcf9	28 02 	( . 
	ld (hl),e			;dcfb	73 	s 
	dec hl			;dcfc	2b 	+ 
ldcfdh:
	ld (hl),d			;dcfd	72 	r 
	dec hl			;dcfe	2b 	+ 
ldcffh:
	djnz ldcf2h		;dcff	10 f1 	. . 
	bit 6,(ix+04ch)		;dd01	dd cb 4c 76 	. . L v 
	ret nz			;dd05	c0 	. 
	call sub_def3h		;dd06	cd f3 de 	. . . 
	ret			;dd09	c9 	. 
sub_dd0ah:
	bit 3,(ix+04eh)		;dd0a	dd cb 4e 5e 	. . N ^ 
	jr nz,ldd46h		;dd0e	20 36 	  6 
	push bc			;dd10	c5 	. 
	ld h,(ix+014h)		;dd11	dd 66 14 	. f . 
	ld l,(ix+015h)		;dd14	dd 6e 15 	. n . 
	push hl			;dd17	e5 	. 
ldd18h:
	call sub_dc6bh		;dd18	cd 6b dc 	. k . 
	ld h,(ix+046h)		;dd1b	dd 66 46 	. f F 
	ld l,(ix+047h)		;dd1e	dd 6e 47 	. n G 
	ld bc,00007h		;dd21	01 07 00 	. . . 
	add hl,bc			;dd24	09 	. 
	ex de,hl			;dd25	eb 	. 
	ld b,011h		;dd26	06 11 	. . 
	pop hl			;dd28	e1 	. 
ldd29h:
	ld a,(hl)			;dd29	7e 	~ 
	cp 00dh		;dd2a	fe 0d 	. . 
	jr z,ldd39h		;dd2c	28 0b 	( . 
	ld (de),a			;dd2e	12 	. 
	inc hl			;dd2f	23 	# 
	inc de			;dd30	13 	. 
	djnz ldd29h		;dd31	10 f6 	. . 
	push hl			;dd33	e5 	. 
	call sub_de47h		;dd34	cd 47 de 	. G . 
	jr ldd18h		;dd37	18 df 	. . 
ldd39h:
	ld a,b			;dd39	78 	x 
	cp 011h		;dd3a	fe 11 	. . 
	jr z,ldd44h		;dd3c	28 06 	( . 
	call sub_de47h		;dd3e	cd 47 de 	. G . 
	call sub_d6efh		;dd41	cd ef d6 	. . . 
ldd44h:
	pop bc			;dd44	c1 	. 
	ret			;dd45	c9 	. 
ldd46h:
	ld d,(ix+014h)		;dd46	dd 56 14 	. V . 
	ld e,(ix+015h)		;dd49	dd 5e 15 	. ^ . 
	ld h,(ix+042h)		;dd4c	dd 66 42 	. f B 
	ld l,(ix+043h)		;dd4f	dd 6e 43 	. n C 
	ld (hl),020h		;dd52	36 20 	6   
	call sub_dd72h		;dd54	cd 72 dd 	. r . 
ldd57h:
	ld a,(de)			;dd57	1a 	. 
	inc de			;dd58	13 	. 
	cp 00dh		;dd59	fe 0d 	. . 
	jr z,ldd6eh		;dd5b	28 11 	( . 
	cp 009h		;dd5d	fe 09 	. . 
	jr nz,ldd68h		;dd5f	20 07 	  . 
	ld (hl),020h		;dd61	36 20 	6   
	call sub_dd72h		;dd63	cd 72 dd 	. r . 
	jr ldd57h		;dd66	18 ef 	. . 
ldd68h:
	ld (hl),a			;dd68	77 	w 
	call sub_dd72h		;dd69	cd 72 dd 	. r . 
	jr ldd57h		;dd6c	18 e9 	. . 
ldd6eh:
	call sub_d6efh		;dd6e	cd ef d6 	. . . 
	ret			;dd71	c9 	. 
sub_dd72h:
	push bc			;dd72	c5 	. 
	push de			;dd73	d5 	. 
	push hl			;dd74	e5 	. 
	ld a,018h		;dd75	3e 18 	> . 
	ld b,001h		;dd77	06 01 	. . 
	call sub_d6c3h		;dd79	cd c3 d6 	. . . 
	call sub_d5aeh		;dd7c	cd ae d5 	. . . 
	pop hl			;dd7f	e1 	. 
	pop de			;dd80	d1 	. 
	pop bc			;dd81	c1 	. 
	ret			;dd82	c9 	. 
sub_dd83h:
	bit 0,(ix+04eh)		;dd83	dd cb 4e 46 	. . N F 
	ret nz			;dd87	c0 	. 
	ld a,(ix+020h)		;dd88	dd 7e 20 	. ~   
	or (ix+021h)		;dd8b	dd b6 21 	. . ! 
	ret z			;dd8e	c8 	. 
	ld hl,ldf39h		;dd8f	21 39 df 	! 9 . 
	ld d,(ix+046h)		;dd92	dd 56 46 	. V F 
	ld e,(ix+047h)		;dd95	dd 5e 47 	. ^ G 
	ld bc,00018h		;dd98	01 18 00 	. . . 
	ldir		;dd9b	ed b0 	. . 
	call sub_def3h		;dd9d	cd f3 de 	. . . 
	set 4,(ix+04eh)		;dda0	dd cb 4e e6 	. . N . 
	call sub_de47h		;dda4	cd 47 de 	. G . 
	call sub_d6efh		;dda7	cd ef d6 	. . . 
	ld h,(ix+018h)		;ddaa	dd 66 18 	. f . 
	ld l,(ix+019h)		;ddad	dd 6e 19 	. n . 
	bit 3,(ix+04eh)		;ddb0	dd cb 4e 5e 	. . N ^ 
	jr z,ldde6h		;ddb4	28 30 	( 0 
lddb6h:
	ld d,(ix+046h)		;ddb6	dd 56 46 	. V F 
	ld e,(ix+047h)		;ddb9	dd 5e 47 	. ^ G 
	call sub_dc6bh		;ddbc	cd 6b dc 	. k . 
	call sub_de14h		;ddbf	cd 14 de 	. . . 
	jr c,lde03h		;ddc2	38 3f 	8 ? 
	call sub_de14h		;ddc4	cd 14 de 	. . . 
	jr c,lde03h		;ddc7	38 3a 	8 : 
	push hl			;ddc9	e5 	. 
	call sub_de47h		;ddca	cd 47 de 	. G . 
	pop hl			;ddcd	e1 	. 
	ld d,(ix+046h)		;ddce	dd 56 46 	. V F 
	ld e,(ix+047h)		;ddd1	dd 5e 47 	. ^ G 
	call sub_dc6bh		;ddd4	cd 6b dc 	. k . 
	call sub_de14h		;ddd7	cd 14 de 	. . . 
	push hl			;ddda	e5 	. 
	call sub_de47h		;dddb	cd 47 de 	. G . 
	pop hl			;ddde	e1 	. 
	ld a,01bh		;dddf	3e 1b 	> . 
	call sub_d6c3h		;dde1	cd c3 d6 	. . . 
	jr lddb6h		;dde4	18 d0 	. . 
ldde6h:
	ld d,(ix+046h)		;dde6	dd 56 46 	. V F 
	ld e,(ix+047h)		;dde9	dd 5e 47 	. ^ G 
	call sub_dc6bh		;ddec	cd 6b dc 	. k . 
	call sub_de14h		;ddef	cd 14 de 	. . . 
	jr c,lde03h		;ddf2	38 0f 	8 . 
	call sub_de14h		;ddf4	cd 14 de 	. . . 
	jr c,lde03h		;ddf7	38 0a 	8 . 
	call sub_def3h		;ddf9	cd f3 de 	. . . 
	push hl			;ddfc	e5 	. 
	call sub_de47h		;ddfd	cd 47 de 	. G . 
	pop hl			;de00	e1 	. 
	jr ldde6h		;de01	18 e3 	. . 
lde03h:
	ld h,(ix+046h)		;de03	dd 66 46 	. f F 
	ld l,(ix+047h)		;de06	dd 6e 47 	. n G 
	or a			;de09	b7 	. 
	sbc hl,de		;de0a	ed 52 	. R 
	ret z			;de0c	c8 	. 
	call sub_de47h		;de0d	cd 47 de 	. G . 
	call sub_d6efh		;de10	cd ef d6 	. . . 
	ret			;de13	c9 	. 
sub_de14h:
	ld a,(hl)			;de14	7e 	~ 
	or a			;de15	b7 	. 
	jr z,lde45h		;de16	28 2d 	( - 
	and 07fh		;de18	e6 7f 	.  
	ld (hl),a			;de1a	77 	w 
	call sub_dfb8h		;de1b	cd b8 df 	. . . 
	ld b,000h		;de1e	06 00 	. . 
	ld c,a			;de20	4f 	O 
	ldir		;de21	ed b0 	. . 
	ld b,006h		;de23	06 06 	. . 
	sub b			;de25	90 	. 
	neg		;de26	ed 44 	. D 
	jr z,lde2fh		;de28	28 05 	( . 
	ld b,a			;de2a	47 	G 
lde2bh:
	inc de			;de2b	13 	. 
	inc hl			;de2c	23 	# 
	djnz lde2bh		;de2d	10 fc 	. . 
lde2fh:
	ld a,03ah		;de2f	3e 3a 	> : 
	ld (de),a			;de31	12 	. 
	inc de			;de32	13 	. 
	ld b,002h		;de33	06 02 	. . 
lde35h:
	inc hl			;de35	23 	# 
	ld a,(hl)			;de36	7e 	~ 
	call sub_e2a5h		;de37	cd a5 e2 	. . . 
	inc de			;de3a	13 	. 
	inc de			;de3b	13 	. 
	djnz lde35h		;de3c	10 f7 	. . 
	ld a,020h		;de3e	3e 20 	>   
	ld (de),a			;de40	12 	. 
	inc de			;de41	13 	. 
	inc hl			;de42	23 	# 
	or a			;de43	b7 	. 
	ret			;de44	c9 	. 
lde45h:
	scf			;de45	37 	7 
	ret			;de46	c9 	. 
sub_de47h:
	bit 4,(ix+04eh)		;de47	dd cb 4e 66 	. . N f 
	ret z			;de4b	c8 	. 
	bit 1,(ix+04eh)		;de4c	dd cb 4e 4e 	. . N N 
	jr nz,lde83h		;de50	20 31 	  1 
	bit 0,(ix+04eh)		;de52	dd cb 4e 46 	. . N F 
	jr nz,lde83h		;de56	20 2b 	  + 
	bit 3,(ix+04eh)		;de58	dd cb 4e 5e 	. . N ^ 
	jr nz,lde5eh		;de5c	20 00 	  . 
lde5eh:
	call sub_d5aeh		;de5e	cd ae d5 	. . . 
	ld a,012h		;de61	3e 12 	> . 
	bit 2,(ix+04eh)		;de63	dd cb 4e 56 	. . N V 
	jr nz,lde73h		;de67	20 0a 	  . 
	ld a,018h		;de69	3e 18 	> . 
	ld h,(ix+046h)		;de6b	dd 66 46 	. f F 
	ld l,(ix+047h)		;de6e	dd 6e 47 	. n G 
	ld b,018h		;de71	06 18 	. . 
lde73h:
	call sub_d6c3h		;de73	cd c3 d6 	. . . 
	jr c,lde79h		;de76	38 01 	8 . 
	ret			;de78	c9 	. 
lde79h:
	ld a,010h		;de79	3e 10 	> . 
	call sub_e345h		;de7b	cd 45 e3 	. E . 
lde7eh:
	call sub_d5f1h		;de7e	cd f1 d5 	. . . 
	jr lde7eh		;de81	18 fb 	. . 
lde83h:
	ld a,(ix+03eh)		;de83	dd 7e 3e 	. ~ > 
	cp 004h		;de86	fe 04 	. . 
	jr z,lde9eh		;de88	28 14 	( . 
lde8ah:
	ld d,a			;de8a	57 	W 
	ld e,000h		;de8b	1e 00 	. . 
	ld b,018h		;de8d	06 18 	. . 
	ld h,(ix+046h)		;de8f	dd 66 46 	. f F 
	ld l,(ix+047h)		;de92	dd 6e 47 	. n G 
	ld a,024h		;de95	3e 24 	> $ 
	call sub_d6c3h		;de97	cd c3 d6 	. . . 
	inc (ix+03eh)		;de9a	dd 34 3e 	. 4 > 
	ret			;de9d	c9 	. 
lde9eh:
	bit 0,(ix+04eh)		;de9e	dd cb 4e 46 	. . N F 
	ret nz			;dea2	c0 	. 
	call sub_d5f1h		;dea3	cd f1 d5 	. . . 
	cp 01fh		;dea6	fe 1f 	. . 
	jr z,ldeb0h		;dea8	28 06 	( . 
	cp 028h		;deaa	fe 28 	. ( 
	jr z,ldec6h		;deac	28 18 	( . 
	jr lde9eh		;deae	18 ee 	. . 
ldeb0h:
	ld a,(07965h)		;deb0	3a 65 79 	: e y 
	set 1,a		;deb3	cb cf 	. . 
	ld (07965h),a		;deb5	32 65 79 	2 e y 
	ld a,027h		;deb8	3e 27 	> ' 
	call sub_d6c3h		;deba	cd c3 d6 	. . . 
	dec (ix+03eh)		;debd	dd 35 3e 	. 5 > 
	srl (ix+050h)		;dec0	dd cb 50 3e 	. . P > 
	jr lde83h		;dec4	18 bd 	. . 
ldec6h:
	xor a			;dec6	af 	. 
	cp (ix+050h)		;dec7	dd be 50 	. . P 
	jr nz,lded8h		;deca	20 0c 	  . 
ldecch:
	ld (ix+03eh),0ffh		;decc	dd 36 3e ff 	. 6 > . 
	res 4,(ix+04eh)		;ded0	dd cb 4e a6 	. . N . 
	ld a,003h		;ded4	3e 03 	> . 
	jr lde8ah		;ded6	18 b2 	. . 
lded8h:
	ld a,027h		;ded8	3e 27 	> ' 
	call sub_d6c3h		;deda	cd c3 d6 	. . . 
	srl (ix+050h)		;dedd	dd cb 50 3e 	. . P > 
	dec (ix+03eh)		;dee1	dd 35 3e 	. 5 > 
	xor a			;dee4	af 	. 
	cp (ix+050h)		;dee5	dd be 50 	. . P 
	jr z,ldecch		;dee8	28 e2 	( . 
	ld a,001h		;deea	3e 01 	> . 
	and (ix+050h)		;deec	dd a6 50 	. . P 
	jr z,lded8h		;deef	28 e7 	( . 
	jr lde83h		;def1	18 90 	. . 
sub_def3h:
	ld a,(ix+03eh)		;def3	dd 7e 3e 	. ~ > 
	or a			;def6	b7 	. 
	jr z,ldf0dh		;def7	28 14 	( . 
	cp 001h		;def9	fe 01 	. . 
	jr z,ldf12h		;defb	28 15 	( . 
	cp 002h		;defd	fe 02 	. . 
	jr z,ldf17h		;deff	28 16 	( . 
	cp 003h		;df01	fe 03 	. . 
	jr z,ldf1ch		;df03	28 17 	( . 
	cp 004h		;df05	fe 04 	. . 
	ret nz			;df07	c0 	. 
	set 4,(ix+050h)		;df08	dd cb 50 e6 	. . P . 
	ret			;df0c	c9 	. 
ldf0dh:
	set 0,(ix+050h)		;df0d	dd cb 50 c6 	. . P . 
	ret			;df11	c9 	. 
ldf12h:
	set 1,(ix+050h)		;df12	dd cb 50 ce 	. . P . 
	ret			;df16	c9 	. 
ldf17h:
	set 2,(ix+050h)		;df17	dd cb 50 d6 	. . P . 
	ret			;df1b	c9 	. 
ldf1ch:
	set 3,(ix+050h)		;df1c	dd cb 50 de 	. . P . 
	ret			;df20	c9 	. 
ldf21h:
	jr nz,ldf4dh		;df21	20 2a 	  * 
	ld hl,(02a2ah)		;df23	2a 2a 2a 	* * * 
	jr nz,$+67		;df26	20 41 	  A 
	ld d,e			;df28	53 	S 
	ld d,e			;df29	53 	S 
	ld b,l			;df2a	45 	E 
	ld c,l			;df2b	4d 	M 
	ld b,d			;df2c	42 	B 
	ld c,h			;df2d	4c 	L 
	ld b,l			;df2e	45 	E 
	jr nz,ldf7dh		;df2f	20 4c 	  L 
	ld c,c			;df31	49 	I 
	ld d,e			;df32	53 	S 
	ld d,h			;df33	54 	T 
	jr nz,ldf60h		;df34	20 2a 	  * 
	ld hl,(02a2ah)		;df36	2a 2a 2a 	* * * 
ldf39h:
	jr nz,ldf65h		;df39	20 2a 	  * 
	ld hl,(02a2ah)		;df3b	2a 2a 2a 	* * * 
	jr nz,ldf93h		;df3e	20 53 	  S 
	ld e,c			;df40	59 	Y 
	ld c,l			;df41	4d 	M 
	ld b,d			;df42	42 	B 
	ld c,a			;df43	4f 	O 
	ld c,h			;df44	4c 	L 
	jr nz,ldf9bh		;df45	20 54 	  T 
ldf47h:
	ld b,c			;df47	41 	A 
	ld b,d			;df48	42 	B 
	ld c,h			;df49	4c 	L 
	ld b,l			;df4a	45 	E 
	jr nz,ldf77h		;df4b	20 2a 	  * 
ldf4dh:
	ld hl,(02a2ah)		;df4d	2a 2a 2a 	* * * 
	jr nz,ldf47h		;df50	20 f5 	  . 
	push hl			;df52	e5 	. 
	ld h,(ix+012h)		;df53	dd 66 12 	. f . 
	ld l,(ix+013h)		;df56	dd 6e 13 	. n . 
ldf59h:
	ld a,(hl)			;df59	7e 	~ 
	cp 020h		;df5a	fe 20 	.   
	jr z,ldf62h		;df5c	28 04 	( . 
	cp 009h		;df5e	fe 09 	. . 
ldf60h:
	jr nz,ldf65h		;df60	20 03 	  . 
ldf62h:
	inc hl			;df62	23 	# 
	jr ldf59h		;df63	18 f4 	. . 
ldf65h:
	ld (ix+012h),h		;df65	dd 74 12 	. t . 
	ld (ix+013h),l		;df68	dd 75 13 	. u . 
	pop hl			;df6b	e1 	. 
	pop af			;df6c	f1 	. 
	ret			;df6d	c9 	. 
sub_df6eh:
	push af			;df6e	f5 	. 
	push bc			;df6f	c5 	. 
	push de			;df70	d5 	. 
	push hl			;df71	e5 	. 
	ld bc,0617bh		;df72	01 7b 61 	. { a 
	ld a,020h		;df75	3e 20 	>   
ldf77h:
	neg		;df77	ed 44 	. D 
	ld e,a			;df79	5f 	_ 
	call ldf93h		;df7a	cd 93 df 	. . . 
ldf7dh:
	pop hl			;df7d	e1 	. 
	pop de			;df7e	d1 	. 
	pop bc			;df7f	c1 	. 
	pop af			;df80	f1 	. 
	ret			;df81	c9 	. 
	push af			;df82	f5 	. 
	push bc			;df83	c5 	. 
	push de			;df84	d5 	. 
	push hl			;df85	e5 	. 
	ld bc,0415bh		;df86	01 5b 41 	. [ A 
	ld e,020h		;df89	1e 20 	.   
	call ldf93h		;df8b	cd 93 df 	. . . 
	pop hl			;df8e	e1 	. 
	pop de			;df8f	d1 	. 
	pop bc			;df90	c1 	. 
	pop af			;df91	f1 	. 
	ret			;df92	c9 	. 
ldf93h:
	ld a,(hl)			;df93	7e 	~ 
	cp 000h		;df94	fe 00 	. . 
	ret z			;df96	c8 	. 
	cp c			;df97	b9 	. 
	jr nc,ldf9fh		;df98	30 05 	0 . 
	cp b			;df9a	b8 	. 
ldf9bh:
	jr c,ldf9fh		;df9b	38 02 	8 . 
	add a,e			;df9d	83 	. 
	ld (hl),a			;df9e	77 	w 
ldf9fh:
	inc hl			;df9f	23 	# 
	jr ldf93h		;dfa0	18 f1 	. . 
sub_dfa2h:
	push de			;dfa2	d5 	. 
	push hl			;dfa3	e5 	. 
ldfa4h:
	ld a,(de)			;dfa4	1a 	. 
	cp (hl)			;dfa5	be 	. 
	jr nz,ldfb0h		;dfa6	20 08 	  . 
	cp 000h		;dfa8	fe 00 	. . 
	jr z,ldfb5h		;dfaa	28 09 	( . 
	inc de			;dfac	13 	. 
	inc hl			;dfad	23 	# 
	jr ldfa4h		;dfae	18 f4 	. . 
ldfb0h:
	sub a			;dfb0	97 	. 
	jr c,ldfb4h		;dfb1	38 01 	8 . 
	inc a			;dfb3	3c 	< 
ldfb4h:
	scf			;dfb4	37 	7 
ldfb5h:
	pop hl			;dfb5	e1 	. 
	pop de			;dfb6	d1 	. 
	ret			;dfb7	c9 	. 
sub_dfb8h:
	push bc			;dfb8	c5 	. 
	push hl			;dfb9	e5 	. 
	sub a			;dfba	97 	. 
	ld bc,00000h		;dfbb	01 00 00 	. . . 
	cpir		;dfbe	ed b1 	. . 
	ld a,c			;dfc0	79 	y 
	cpl			;dfc1	2f 	/ 
	pop hl			;dfc2	e1 	. 
	pop bc			;dfc3	c1 	. 
	ret			;dfc4	c9 	. 
sub_dfc5h:
	push bc			;dfc5	c5 	. 
	push de			;dfc6	d5 	. 
	ld b,000h		;dfc7	06 00 	. . 
	ld h,b			;dfc9	60 	` 
	ld l,b			;dfca	68 	h 
ldfcbh:
	ld a,(de)			;dfcb	1a 	. 
	cp 000h		;dfcc	fe 00 	. . 
	jr z,ldfd7h		;dfce	28 07 	( . 
	ld c,a			;dfd0	4f 	O 
	add hl,bc			;dfd1	09 	. 
	jr c,ldfd7h		;dfd2	38 03 	8 . 
	inc de			;dfd4	13 	. 
	jr ldfcbh		;dfd5	18 f4 	. . 
ldfd7h:
	pop de			;dfd7	d1 	. 
	pop bc			;dfd8	c1 	. 
	ret			;dfd9	c9 	. 
	push hl			;dfda	e5 	. 
	ld l,030h		;dfdb	2e 30 	. 0 
	ld h,039h		;dfdd	26 39 	& 9 
	call sub_e001h		;dfdf	cd 01 e0 	. . . 
	jr nc,ldfffh		;dfe2	30 1b 	0 . 
	ld l,03fh		;dfe4	2e 3f 	. ? 
	ld h,05bh		;dfe6	26 5b 	& [ 
	call sub_e001h		;dfe8	cd 01 e0 	. . . 
	jr nc,ldfffh		;dfeb	30 12 	0 . 
	cp 05dh		;dfed	fe 5d 	. ] 
	jr z,ldfffh		;dfef	28 0e 	( . 
	cp 05fh		;dff1	fe 5f 	. _ 
	jr z,ldfffh		;dff3	28 0a 	( . 
	ld l,061h		;dff5	2e 61 	. a 
	ld h,07ah		;dff7	26 7a 	& z 
	call sub_e001h		;dff9	cd 01 e0 	. . . 
	call c,sub_e007h		;dffc	dc 07 e0 	. . . 
ldfffh:
	pop hl			;dfff	e1 	. 
	ret			;e000	c9 	. 
sub_e001h:
	cp l			;e001	bd 	. 
	ret c			;e002	d8 	. 
	inc h			;e003	24 	$ 
	cp h			;e004	bc 	. 
	ccf			;e005	3f 	? 
	ret			;e006	c9 	. 
sub_e007h:
	cp 000h		;e007	fe 00 	. . 
	jr z,le034h		;e009	28 29 	( ) 
	cp 00dh		;e00b	fe 0d 	. . 
	jr z,le034h		;e00d	28 25 	( % 
	cp 020h		;e00f	fe 20 	.   
	jr z,le034h		;e011	28 21 	( ! 
	cp 009h		;e013	fe 09 	. . 
	jr z,le034h		;e015	28 1d 	( . 
	cp 022h		;e017	fe 22 	. " 
	jr z,le034h		;e019	28 19 	( . 
	ld l,027h		;e01b	2e 27 	. ' 
	ld h,02dh		;e01d	26 2d 	& - 
	call sub_e001h		;e01f	cd 01 e0 	. . . 
	jr nc,le034h		;e022	30 10 	0 . 
	cp 02fh		;e024	fe 2f 	. / 
	jr z,le034h		;e026	28 0c 	( . 
	cp 03ah		;e028	fe 3a 	. : 
	jr z,le034h		;e02a	28 08 	( . 
	cp 03bh		;e02c	fe 3b 	. ; 
	jr z,le034h		;e02e	28 04 	( . 
	ld a,001h		;e030	3e 01 	> . 
	scf			;e032	37 	7 
	ret			;e033	c9 	. 
le034h:
	xor a			;e034	af 	. 
	scf			;e035	37 	7 
	ret			;e036	c9 	. 
sub_e037h:
	push af			;e037	f5 	. 
	push bc			;e038	c5 	. 
	push de			;e039	d5 	. 
	push hl			;e03a	e5 	. 
	call sub_dfb8h		;e03b	cd b8 df 	. . . 
	inc a			;e03e	3c 	< 
	ld b,000h		;e03f	06 00 	. . 
	ld c,a			;e041	4f 	O 
	ldir		;e042	ed b0 	. . 
	pop hl			;e044	e1 	. 
	pop de			;e045	d1 	. 
	pop bc			;e046	c1 	. 
	pop af			;e047	f1 	. 
	ret			;e048	c9 	. 
sub_e049h:
	push bc			;e049	c5 	. 
	push de			;e04a	d5 	. 
	ld b,(ix+01ch)		;e04b	dd 46 1c 	. F . 
	ld c,(ix+01dh)		;e04e	dd 4e 1d 	. N . 
	ld h,b			;e051	60 	` 
	ld l,c			;e052	69 	i 
	ld d,000h		;e053	16 00 	. . 
	ld e,a			;e055	5f 	_ 
	add hl,de			;e056	19 	. 
	jr c,le070h		;e057	38 17 	8 . 
	ld (ix+01ch),h		;e059	dd 74 1c 	. t . 
	ld (ix+01dh),l		;e05c	dd 75 1d 	. u . 
	ld h,(ix+01ah)		;e05f	dd 66 1a 	. f . 
	ld l,(ix+01bh)		;e062	dd 6e 1b 	. n . 
	ld d,(ix+01ch)		;e065	dd 56 1c 	. V . 
	ld e,(ix+01dh)		;e068	dd 5e 1d 	. ^ . 
	dec de			;e06b	1b 	. 
	sbc hl,de		;e06c	ed 52 	. R 
	ld h,b			;e06e	60 	` 
	ld l,c			;e06f	69 	i 
le070h:
	pop de			;e070	d1 	. 
	pop bc			;e071	c1 	. 
	ret			;e072	c9 	. 
	exx			;e073	d9 	. 
	pop hl			;e074	e1 	. 
	ld c,(hl)			;e075	4e 	N 
	ex de,hl			;e076	eb 	. 
	ld h,000h		;e077	26 00 	& . 
	ld l,c			;e079	69 	i 
	add hl,hl			;e07a	29 	) 
	inc hl			;e07b	23 	# 
	add hl,de			;e07c	19 	. 
	push hl			;e07d	e5 	. 
	cp c			;e07e	b9 	. 
	jr nc,le08bh		;e07f	30 0a 	0 . 
	ld h,000h		;e081	26 00 	& . 
	ld l,a			;e083	6f 	o 
	add hl,hl			;e084	29 	) 
	inc hl			;e085	23 	# 
	add hl,de			;e086	19 	. 
	ld e,(hl)			;e087	5e 	^ 
	inc hl			;e088	23 	# 
	ld d,(hl)			;e089	56 	V 
	push de			;e08a	d5 	. 
le08bh:
	exx			;e08b	d9 	. 
	ret			;e08c	c9 	. 
sub_e08dh:
	exx			;e08d	d9 	. 
	pop hl			;e08e	e1 	. 
	ld c,(hl)			;e08f	4e 	N 
	ex de,hl			;e090	eb 	. 
	ld h,000h		;e091	26 00 	& . 
	ld l,c			;e093	69 	i 
	add hl,hl			;e094	29 	) 
	inc hl			;e095	23 	# 
	add hl,de			;e096	19 	. 
	push hl			;e097	e5 	. 
	cp c			;e098	b9 	. 
	jr nc,le0a9h		;e099	30 0e 	0 . 
	ld h,000h		;e09b	26 00 	& . 
	ld l,a			;e09d	6f 	o 
	add hl,hl			;e09e	29 	) 
	inc hl			;e09f	23 	# 
	add hl,de			;e0a0	19 	. 
	ld e,(hl)			;e0a1	5e 	^ 
	inc hl			;e0a2	23 	# 
	ld d,(hl)			;e0a3	56 	V 
	push de			;e0a4	d5 	. 
	exx			;e0a5	d9 	. 
	pop hl			;e0a6	e1 	. 
	pop af			;e0a7	f1 	. 
	jp (hl)			;e0a8	e9 	. 
le0a9h:
	exx			;e0a9	d9 	. 
	ret			;e0aa	c9 	. 
	push de			;e0ab	d5 	. 
	call sub_e0b8h		;e0ac	cd b8 e0 	. . . 
	jr c,le0b6h		;e0af	38 05 	8 . 
	sub a			;e0b1	97 	. 
	cp d			;e0b2	ba 	. 
	jr c,le0b6h		;e0b3	38 01 	8 . 
	ld a,e			;e0b5	7b 	{ 
le0b6h:
	pop de			;e0b6	d1 	. 
	ret			;e0b7	c9 	. 
sub_e0b8h:
	push bc			;e0b8	c5 	. 
	push hl			;e0b9	e5 	. 
	call sub_e186h		;e0ba	cd 86 e1 	. . . 
	call sub_dfb8h		;e0bd	cd b8 df 	. . . 
	cp 001h		;e0c0	fe 01 	. . 
	jr c,le0d8h		;e0c2	38 14 	8 . 
	ld b,a			;e0c4	47 	G 
	dec a			;e0c5	3d 	= 
	ld d,000h		;e0c6	16 00 	. . 
	ld e,a			;e0c8	5f 	_ 
	ex de,hl			;e0c9	eb 	. 
	add hl,de			;e0ca	19 	. 
	ld a,(hl)			;e0cb	7e 	~ 
	ex de,hl			;e0cc	eb 	. 
	cp 048h		;e0cd	fe 48 	. H 
	jr z,le0e0h		;e0cf	28 0f 	( . 
	cp 042h		;e0d1	fe 42 	. B 
	jr z,le0dbh		;e0d3	28 06 	( . 
	call sub_e0e5h		;e0d5	cd e5 e0 	. . . 
le0d8h:
	pop hl			;e0d8	e1 	. 
	pop bc			;e0d9	c1 	. 
	ret			;e0da	c9 	. 
le0dbh:
	call sub_e0ffh		;e0db	cd ff e0 	. . . 
	jr le0d8h		;e0de	18 f8 	. . 
le0e0h:
	call sub_e11ah		;e0e0	cd 1a e1 	. . . 
	jr le0d8h		;e0e3	18 f3 	. . 
sub_e0e5h:
	call sub_e143h		;e0e5	cd 43 e1 	. C . 
	ret c			;e0e8	d8 	. 
	call sub_e135h		;e0e9	cd 35 e1 	. 5 . 
	cp 000h		;e0ec	fe 00 	. . 
	ret z			;e0ee	c8 	. 
le0efh:
	inc hl			;e0ef	23 	# 
	call sub_e143h		;e0f0	cd 43 e1 	. C . 
	ret c			;e0f3	d8 	. 
	call sub_e164h		;e0f4	cd 64 e1 	. d . 
	ret c			;e0f7	d8 	. 
	call sub_e13bh		;e0f8	cd 3b e1 	. ; . 
	ret c			;e0fb	d8 	. 
	djnz le0efh		;e0fc	10 f1 	. . 
	ret			;e0fe	c9 	. 
sub_e0ffh:
	call sub_e14bh		;e0ff	cd 4b e1 	. K . 
	ret c			;e102	d8 	. 
	call sub_e135h		;e103	cd 35 e1 	. 5 . 
	cp 001h		;e106	fe 01 	. . 
	ret z			;e108	c8 	. 
	dec b			;e109	05 	. 
le10ah:
	inc hl			;e10a	23 	# 
	call sub_e14bh		;e10b	cd 4b e1 	. K . 
	ret c			;e10e	d8 	. 
	ex de,hl			;e10f	eb 	. 
	add hl,hl			;e110	29 	) 
	ex de,hl			;e111	eb 	. 
	ret c			;e112	d8 	. 
	call sub_e13bh		;e113	cd 3b e1 	. ; . 
	ret c			;e116	d8 	. 
	djnz le10ah		;e117	10 f1 	. . 
	ret			;e119	c9 	. 
sub_e11ah:
	call sub_e153h		;e11a	cd 53 e1 	. S . 
	ret c			;e11d	d8 	. 
	call sub_e135h		;e11e	cd 35 e1 	. 5 . 
	cp 001h		;e121	fe 01 	. . 
	ret z			;e123	c8 	. 
	dec b			;e124	05 	. 
le125h:
	inc hl			;e125	23 	# 
	call sub_e153h		;e126	cd 53 e1 	. S . 
	ret c			;e129	d8 	. 
	call sub_e176h		;e12a	cd 76 e1 	. v . 
	ret c			;e12d	d8 	. 
	call sub_e13bh		;e12e	cd 3b e1 	. ; . 
	ret c			;e131	d8 	. 
	djnz le125h		;e132	10 f1 	. . 
	ret			;e134	c9 	. 
sub_e135h:
	ld d,000h		;e135	16 00 	. . 
	ld e,a			;e137	5f 	_ 
	dec b			;e138	05 	. 
	ld a,b			;e139	78 	x 
	ret			;e13a	c9 	. 
sub_e13bh:
	push hl			;e13b	e5 	. 
	ld h,000h		;e13c	26 00 	& . 
	ld l,a			;e13e	6f 	o 
	add hl,de			;e13f	19 	. 
	ex de,hl			;e140	eb 	. 
	pop hl			;e141	e1 	. 
	ret			;e142	c9 	. 
sub_e143h:
	ld a,(hl)			;e143	7e 	~ 
	sub 030h		;e144	d6 30 	. 0 
	ret c			;e146	d8 	. 
	cp 00ah		;e147	fe 0a 	. . 
	ccf			;e149	3f 	? 
	ret			;e14a	c9 	. 
sub_e14bh:
	ld a,(hl)			;e14b	7e 	~ 
	sub 030h		;e14c	d6 30 	. 0 
	ret c			;e14e	d8 	. 
	cp 002h		;e14f	fe 02 	. . 
	ccf			;e151	3f 	? 
	ret			;e152	c9 	. 
sub_e153h:
	ld a,(hl)			;e153	7e 	~ 
	cp 041h		;e154	fe 41 	. A 
	jr nc,le15ch		;e156	30 04 	0 . 
	call sub_e143h		;e158	cd 43 e1 	. C . 
	ret			;e15b	c9 	. 
le15ch:
	sub 041h		;e15c	d6 41 	. A 
	add a,00ah		;e15e	c6 0a 	. . 
	cp 010h		;e160	fe 10 	. . 
	ccf			;e162	3f 	? 
	ret			;e163	c9 	. 
sub_e164h:
	push hl			;e164	e5 	. 
	ld h,d			;e165	62 	b 
	ld l,e			;e166	6b 	k 
	add hl,hl			;e167	29 	) 
	jr c,le174h		;e168	38 0a 	8 . 
	ld d,h			;e16a	54 	T 
	ld e,l			;e16b	5d 	] 
	add hl,hl			;e16c	29 	) 
	jr c,le174h		;e16d	38 05 	8 . 
	add hl,hl			;e16f	29 	) 
	jr c,le174h		;e170	38 02 	8 . 
	add hl,de			;e172	19 	. 
	ex de,hl			;e173	eb 	. 
le174h:
	pop hl			;e174	e1 	. 
	ret			;e175	c9 	. 
sub_e176h:
	push bc			;e176	c5 	. 
	push hl			;e177	e5 	. 
	ld h,d			;e178	62 	b 
	ld l,e			;e179	6b 	k 
	ld b,003h		;e17a	06 03 	. . 
le17ch:
	add hl,hl			;e17c	29 	) 
	jr c,le183h		;e17d	38 04 	8 . 
	djnz le17ch		;e17f	10 fb 	. . 
	add hl,hl			;e181	29 	) 
	ex de,hl			;e182	eb 	. 
le183h:
	pop hl			;e183	e1 	. 
	pop bc			;e184	c1 	. 
	ret			;e185	c9 	. 
sub_e186h:
	ld a,030h		;e186	3e 30 	> 0 
	cp (hl)			;e188	be 	. 
	ret nz			;e189	c0 	. 
	ld b,0ffh		;e18a	06 ff 	. . 
le18ch:
	cp (hl)			;e18c	be 	. 
	jr nz,le192h		;e18d	20 03 	  . 
	inc hl			;e18f	23 	# 
	djnz le18ch		;e190	10 fa 	. . 
le192h:
	ld a,(hl)			;e192	7e 	~ 
	cp 042h		;e193	fe 42 	. B 
	jr z,le19eh		;e195	28 07 	( . 
	cp 048h		;e197	fe 48 	. H 
	jr z,le19eh		;e199	28 03 	( . 
	cp 000h		;e19b	fe 00 	. . 
	ret nz			;e19d	c0 	. 
le19eh:
	dec hl			;e19e	2b 	+ 
	ret			;e19f	c9 	. 
sub_e1a0h:
	push bc			;e1a0	c5 	. 
	push de			;e1a1	d5 	. 
	ld a,080h		;e1a2	3e 80 	> . 
	ld c,000h		;e1a4	0e 00 	. . 
	and d			;e1a6	a2 	. 
	cp 000h		;e1a7	fe 00 	. . 
	jr z,le1afh		;e1a9	28 04 	( . 
	call sub_e24ch		;e1ab	cd 4c e2 	. L . 
	inc c			;e1ae	0c 	. 
le1afh:
	ld a,080h		;e1af	3e 80 	> . 
	and h			;e1b1	a4 	. 
	cp 000h		;e1b2	fe 00 	. . 
	jr z,le1bah		;e1b4	28 04 	( . 
	call sub_e256h		;e1b6	cd 56 e2 	. V . 
	inc c			;e1b9	0c 	. 
le1bah:
	call sub_e1ceh		;e1ba	cd ce e1 	. . . 
le1bdh:
	push af			;e1bd	f5 	. 
	ld a,c			;e1be	79 	y 
	cp 001h		;e1bf	fe 01 	. . 
	jr nz,le1c6h		;e1c1	20 03 	  . 
	call sub_e256h		;e1c3	cd 56 e2 	. V . 
le1c6h:
	and 001h		;e1c6	e6 01 	. . 
	ld c,a			;e1c8	4f 	O 
	pop af			;e1c9	f1 	. 
	ld a,c			;e1ca	79 	y 
	pop de			;e1cb	d1 	. 
	pop bc			;e1cc	c1 	. 
	ret			;e1cd	c9 	. 
sub_e1ceh:
	push bc			;e1ce	c5 	. 
	push de			;e1cf	d5 	. 
	push ix		;e1d0	dd e5 	. . 
	push iy		;e1d2	fd e5 	. . 
	push de			;e1d4	d5 	. 
	exx			;e1d5	d9 	. 
	pop de			;e1d6	d1 	. 
	ld b,010h		;e1d7	06 10 	. . 
	exx			;e1d9	d9 	. 
	ld ix,00000h		;e1da	dd 21 00 00 	. ! . . 
	push hl			;e1de	e5 	. 
	pop iy		;e1df	fd e1 	. . 
	ld b,000h		;e1e1	06 00 	. . 
	ld c,b			;e1e3	48 	H 
	ld d,b			;e1e4	50 	P 
	ld e,b			;e1e5	58 	X 
	exx			;e1e6	d9 	. 
le1e7h:
	srl d		;e1e7	cb 3a 	. : 
	rr e		;e1e9	cb 1b 	. . 
	exx			;e1eb	d9 	. 
	jr nc,le1fah		;e1ec	30 0c 	0 . 
	push iy		;e1ee	fd e5 	. . 
	pop hl			;e1f0	e1 	. 
	add hl,de			;e1f1	19 	. 
	ex de,hl			;e1f2	eb 	. 
	push ix		;e1f3	dd e5 	. . 
	pop hl			;e1f5	e1 	. 
	adc hl,bc		;e1f6	ed 4a 	. J 
	ld b,h			;e1f8	44 	D 
	ld c,l			;e1f9	4d 	M 
le1fah:
	push iy		;e1fa	fd e5 	. . 
	pop hl			;e1fc	e1 	. 
	add hl,hl			;e1fd	29 	) 
	push hl			;e1fe	e5 	. 
	pop iy		;e1ff	fd e1 	. . 
	push ix		;e201	dd e5 	. . 
	pop hl			;e203	e1 	. 
	adc hl,hl		;e204	ed 6a 	. j 
	push hl			;e206	e5 	. 
	pop ix		;e207	dd e1 	. . 
	exx			;e209	d9 	. 
	djnz le1e7h		;e20a	10 db 	. . 
	exx			;e20c	d9 	. 
	sub a			;e20d	97 	. 
	cp b			;e20e	b8 	. 
	jr c,le212h		;e20f	38 01 	8 . 
	cp c			;e211	b9 	. 
le212h:
	ex de,hl			;e212	eb 	. 
	pop iy		;e213	fd e1 	. . 
	pop ix		;e215	dd e1 	. . 
	pop de			;e217	d1 	. 
	pop bc			;e218	c1 	. 
	ret			;e219	c9 	. 
sub_e21ah:
	push bc			;e21a	c5 	. 
	ld a,080h		;e21b	3e 80 	> . 
	ld bc,00000h		;e21d	01 00 00 	. . . 
	and d			;e220	a2 	. 
	cp 000h		;e221	fe 00 	. . 
	jr z,le22ah		;e223	28 05 	( . 
	call sub_e24ch		;e225	cd 4c e2 	. L . 
	inc b			;e228	04 	. 
	inc c			;e229	0c 	. 
le22ah:
	ld a,080h		;e22a	3e 80 	> . 
	and h			;e22c	a4 	. 
	cp 000h		;e22d	fe 00 	. . 
	jr z,le235h		;e22f	28 04 	( . 
	call sub_e256h		;e231	cd 56 e2 	. V . 
	inc c			;e234	0c 	. 
le235h:
	call sub_e260h		;e235	cd 60 e2 	. ` . 
	push af			;e238	f5 	. 
	ld a,c			;e239	79 	y 
	cp 001h		;e23a	fe 01 	. . 
	jr nz,le241h		;e23c	20 03 	  . 
	call sub_e256h		;e23e	cd 56 e2 	. V . 
le241h:
	ld a,b			;e241	78 	x 
	cp 001h		;e242	fe 01 	. . 
	jr nz,le249h		;e244	20 03 	  . 
	call sub_e24ch		;e246	cd 4c e2 	. L . 
le249h:
	pop af			;e249	f1 	. 
	pop bc			;e24a	c1 	. 
	ret			;e24b	c9 	. 
sub_e24ch:
	push hl			;e24c	e5 	. 
	ld hl,00000h		;e24d	21 00 00 	! . . 
	and a			;e250	a7 	. 
	sbc hl,de		;e251	ed 52 	. R 
	ex de,hl			;e253	eb 	. 
	pop hl			;e254	e1 	. 
	ret			;e255	c9 	. 
sub_e256h:
	push de			;e256	d5 	. 
	ex de,hl			;e257	eb 	. 
	ld hl,00000h		;e258	21 00 00 	! . . 
	and a			;e25b	a7 	. 
	sbc hl,de		;e25c	ed 52 	. R 
	pop de			;e25e	d1 	. 
	ret			;e25f	c9 	. 
sub_e260h:
	ex de,hl			;e260	eb 	. 
	sub a			;e261	97 	. 
	cp d			;e262	ba 	. 
	jr nz,le26ah		;e263	20 05 	  . 
	cp e			;e265	bb 	. 
	jr nz,le26ah		;e266	20 02 	  . 
	scf			;e268	37 	7 
	ret			;e269	c9 	. 
le26ah:
	cp h			;e26a	bc 	. 
	jr nz,le274h		;e26b	20 07 	  . 
	cp l			;e26d	bd 	. 
	jr nz,le274h		;e26e	20 04 	  . 
	ld de,00000h		;e270	11 00 00 	. . . 
	ret			;e273	c9 	. 
le274h:
	push bc			;e274	c5 	. 
	push ix		;e275	dd e5 	. . 
	push iy		;e277	fd e5 	. . 
	ld ix,00000h		;e279	dd 21 00 00 	. ! . . 
	push hl			;e27d	e5 	. 
	pop iy		;e27e	fd e1 	. . 
	ld b,010h		;e280	06 10 	. . 
le282h:
	add iy,iy		;e282	fd 29 	. ) 
	push ix		;e284	dd e5 	. . 
	pop hl			;e286	e1 	. 
	adc hl,hl		;e287	ed 6a 	. j 
	push hl			;e289	e5 	. 
	pop ix		;e28a	dd e1 	. . 
	and a			;e28c	a7 	. 
	sbc hl,de		;e28d	ed 52 	. R 
	jr c,le296h		;e28f	38 05 	8 . 
	inc iy		;e291	fd 23 	. # 
	push hl			;e293	e5 	. 
	pop ix		;e294	dd e1 	. . 
le296h:
	djnz le282h		;e296	10 ea 	. . 
	push iy		;e298	fd e5 	. . 
	pop hl			;e29a	e1 	. 
	push ix		;e29b	dd e5 	. . 
	pop de			;e29d	d1 	. 
	and a			;e29e	a7 	. 
	pop iy		;e29f	fd e1 	. . 
	pop ix		;e2a1	dd e1 	. . 
	pop bc			;e2a3	c1 	. 
	ret			;e2a4	c9 	. 
sub_e2a5h:
	push af			;e2a5	f5 	. 
	push bc			;e2a6	c5 	. 
	push de			;e2a7	d5 	. 
	ld c,a			;e2a8	4f 	O 
	srl a		;e2a9	cb 3f 	. ? 
	srl a		;e2ab	cb 3f 	. ? 
	srl a		;e2ad	cb 3f 	. ? 
	srl a		;e2af	cb 3f 	. ? 
	call sub_e2c4h		;e2b1	cd c4 e2 	. . . 
	ld (de),a			;e2b4	12 	. 
	ld a,c			;e2b5	79 	y 
	and 00fh		;e2b6	e6 0f 	. . 
	call sub_e2c4h		;e2b8	cd c4 e2 	. . . 
	inc de			;e2bb	13 	. 
	ld (de),a			;e2bc	12 	. 
	inc de			;e2bd	13 	. 
	sub a			;e2be	97 	. 
	ld (de),a			;e2bf	12 	. 
	pop de			;e2c0	d1 	. 
	pop bc			;e2c1	c1 	. 
	pop af			;e2c2	f1 	. 
	ret			;e2c3	c9 	. 
sub_e2c4h:
	cp 00ah		;e2c4	fe 0a 	. . 
	jr nc,le2cbh		;e2c6	30 03 	0 . 
	add a,030h		;e2c8	c6 30 	. 0 
	ret			;e2ca	c9 	. 
le2cbh:
	add a,037h		;e2cb	c6 37 	. 7 
	ret			;e2cd	c9 	. 
sub_e2ceh:
	push bc			;e2ce	c5 	. 
	ld h,a			;e2cf	67 	g 
	and 00fh		;e2d0	e6 0f 	. . 
	ld l,a			;e2d2	6f 	o 
	ld b,004h		;e2d3	06 04 	. . 
le2d5h:
	srl h		;e2d5	cb 3c 	. < 
	djnz le2d5h		;e2d7	10 fc 	. . 
	ld a,h			;e2d9	7c 	| 
	cp 00fh		;e2da	fe 0f 	. . 
	jr z,le2fah		;e2dc	28 1c 	( . 
	cp 00ah		;e2de	fe 0a 	. . 
	jr nc,le2f4h		;e2e0	30 12 	0 . 
	add a,030h		;e2e2	c6 30 	. 0 
	ld h,a			;e2e4	67 	g 
	ld a,l			;e2e5	7d 	} 
	cp 00ah		;e2e6	fe 0a 	. . 
	jr nc,le2efh		;e2e8	30 05 	0 . 
	add a,030h		;e2ea	c6 30 	. 0 
	ld l,a			;e2ec	6f 	o 
le2edh:
	pop bc			;e2ed	c1 	. 
	ret			;e2ee	c9 	. 
le2efh:
	ld l,b			;e2ef	68 	h 
	cp 00fh		;e2f0	fe 0f 	. . 
	jr z,le2f6h		;e2f2	28 02 	( . 
le2f4h:
	ld h,b			;e2f4	60 	` 
	inc b			;e2f5	04 	. 
le2f6h:
	ld a,b			;e2f6	78 	x 
	scf			;e2f7	37 	7 
	jr le2edh		;e2f8	18 f3 	. . 
le2fah:
	ld hl,00000h		;e2fa	21 00 00 	! . . 
	jr le2f6h		;e2fd	18 f7 	. . 
sub_e2ffh:
	push af			;e2ff	f5 	. 
	push bc			;e300	c5 	. 
	push de			;e301	d5 	. 
	push hl			;e302	e5 	. 
	ld b,d			;e303	42 	B 
	ld c,e			;e304	4b 	K 
	ex de,hl			;e305	eb 	. 
	sub a			;e306	97 	. 
	cp d			;e307	ba 	. 
	jr nz,le313h		;e308	20 09 	  . 
	cp e			;e30a	bb 	. 
	jr nz,le313h		;e30b	20 06 	  . 
	ld h,b			;e30d	60 	` 
	ld l,c			;e30e	69 	i 
	ld (hl),00fh		;e30f	36 0f 	6 . 
	jr le33ch		;e311	18 29 	. ) 
le313h:
	ld hl,000ffh		;e313	21 ff 00 	! . . 
	push hl			;e316	e5 	. 
le317h:
	ld hl,0000ah		;e317	21 0a 00 	! . . 
	call sub_e260h		;e31a	cd 60 e2 	. ` . 
	ex de,hl			;e31d	eb 	. 
	push hl			;e31e	e5 	. 
	ld a,e			;e31f	7b 	{ 
	or d			;e320	b2 	. 
	jr nz,le317h		;e321	20 f4 	  . 
	ld h,b			;e323	60 	` 
	ld l,c			;e324	69 	i 
	ld b,003h		;e325	06 03 	. . 
le327h:
	pop de			;e327	d1 	. 
	ld a,e			;e328	7b 	{ 
	rld		;e329	ed 6f 	. o 
	ld a,e			;e32b	7b 	{ 
	cp 0f0h		;e32c	fe f0 	. . 
	jr nc,le341h		;e32e	30 11 	0 . 
	pop de			;e330	d1 	. 
	ld a,e			;e331	7b 	{ 
	rld		;e332	ed 6f 	. o 
	ld a,e			;e334	7b 	{ 
	cp 0f0h		;e335	fe f0 	. . 
	jr nc,le33ch		;e337	30 03 	0 . 
	inc hl			;e339	23 	# 
	djnz le327h		;e33a	10 eb 	. . 
le33ch:
	pop hl			;e33c	e1 	. 
	pop de			;e33d	d1 	. 
	pop bc			;e33e	c1 	. 
	pop af			;e33f	f1 	. 
	ret			;e340	c9 	. 
le341h:
	rld		;e341	ed 6f 	. o 
	jr le33ch		;e343	18 f7 	. . 
sub_e345h:
	set 4,(ix+04eh)		;e345	dd cb 4e e6 	. . N . 
	push af			;e349	f5 	. 
	push bc			;e34a	c5 	. 
	push de			;e34b	d5 	. 
	push hl			;e34c	e5 	. 
	cp 00ah		;e34d	fe 0a 	. . 
	jr nz,le3bfh		;e34f	20 6e 	  n 
	ld de,00000h		;e351	11 00 00 	. . . 
	ld hl,le377h		;e354	21 77 e3 	! w . 
	call sub_e502h		;e357	cd 02 e5 	. . . 
	ld de,00100h		;e35a	11 00 01 	. . . 
	ld hl,le38fh		;e35d	21 8f e3 	! . . 
	call sub_e502h		;e360	cd 02 e5 	. . . 
	ld de,00200h		;e363	11 00 02 	. . . 
	ld hl,le3a7h		;e366	21 a7 e3 	! . . 
	call sub_e502h		;e369	cd 02 e5 	. . . 
	ld de,00300h		;e36c	11 00 03 	. . . 
	ld hl,le38fh		;e36f	21 8f e3 	! . . 
	call sub_e502h		;e372	cd 02 e5 	. . . 
	jr le3f5h		;e375	18 7e 	. ~ 
le377h:
	jr nz,le3a3h		;e377	20 2a 	  * 
	ld hl,(02a2ah)		;e379	2a 2a 2a 	* * * 
	ld hl,(04120h)		;e37c	2a 20 41 	*   A 
	ld d,e			;e37f	53 	S 
	ld d,e			;e380	53 	S 
	ld b,l			;e381	45 	E 
	ld c,l			;e382	4d 	M 
	ld b,d			;e383	42 	B 
	ld c,h			;e384	4c 	L 
	ld b,l			;e385	45 	E 
	ld d,d			;e386	52 	R 
	jr nz,le3b3h		;e387	20 2a 	  * 
	ld hl,(02a2ah)		;e389	2a 2a 2a 	* * * 
	ld hl,(02020h)		;e38c	2a 20 20 	*     
le38fh:
	jr nz,le3b1h		;e38f	20 20 	    
	jr nz,le3b3h		;e391	20 20 	    
	jr nz,le3b5h		;e393	20 20 	    
	jr nz,le3b7h		;e395	20 20 	    
	jr nz,le3b9h		;e397	20 20 	    
	jr nz,le3bbh		;e399	20 20 	    
	jr nz,le3bdh		;e39b	20 20 	    
	jr nz,le3bfh		;e39d	20 20 	    
	jr nz,le3c1h		;e39f	20 20 	    
	jr nz,le3c3h		;e3a1	20 20 	    
le3a3h:
	jr nz,le3c5h		;e3a3	20 20 	    
	jr nz,le3c7h		;e3a5	20 20 	    
le3a7h:
	jr nz,le3c9h		;e3a7	20 20 	    
	jr nz,le3cbh		;e3a9	20 20 	    
	jr nz,le3cdh		;e3ab	20 20 	    
	ld d,e			;e3ad	53 	S 
	ld e,c			;e3ae	59 	Y 
	ld d,e			;e3af	53 	S 
	ld d,h			;e3b0	54 	T 
le3b1h:
	ld b,l			;e3b1	45 	E 
	ld c,l			;e3b2	4d 	M 
le3b3h:
	jr nz,le3fah		;e3b3	20 45 	  E 
le3b5h:
	ld d,d			;e3b5	52 	R 
	ld d,d			;e3b6	52 	R 
le3b7h:
	ld c,a			;e3b7	4f 	O 
	ld d,d			;e3b8	52 	R 
le3b9h:
	jr nz,$+34		;e3b9	20 20 	    
le3bbh:
	jr nz,le3ddh		;e3bb	20 20 	    
le3bdh:
	jr nz,le3dfh		;e3bd	20 20 	    
le3bfh:
	cp 00bh		;e3bf	fe 0b 	. . 
le3c1h:
	jr z,le3edh		;e3c1	28 2a 	( * 
le3c3h:
	cp 00eh		;e3c3	fe 0e 	. . 
le3c5h:
	jr z,le3edh		;e3c5	28 26 	( & 
le3c7h:
	cp 010h		;e3c7	fe 10 	. . 
le3c9h:
	jr z,le3edh		;e3c9	28 22 	( " 
le3cbh:
	cp 007h		;e3cb	fe 07 	. . 
le3cdh:
	jr z,le3edh		;e3cd	28 1e 	( . 
	cp 011h		;e3cf	fe 11 	. . 
	jr z,le3fah		;e3d1	28 27 	( ' 
	bit 0,(ix+04eh)		;e3d3	dd cb 4e 46 	. . N F 
	jr nz,le3edh		;e3d7	20 14 	  . 
	bit 1,(ix+04eh)		;e3d9	dd cb 4e 4e 	. . N N 
le3ddh:
	jr nz,le3f2h		;e3dd	20 13 	  . 
le3dfh:
	bit 2,(ix+04eh)		;e3df	dd cb 4e 56 	. . N V 
	jr nz,le3f2h		;e3e3	20 0d 	  . 
	bit 3,(ix+04eh)		;e3e5	dd cb 4e 5e 	. . N ^ 
	jr nz,le3f2h		;e3e9	20 07 	  . 
	jr le3f5h		;e3eb	18 08 	. . 
le3edh:
	call sub_e4c0h		;e3ed	cd c0 e4 	. . . 
	jr le3f5h		;e3f0	18 03 	. . 
le3f2h:
	call sub_e8b6h		;e3f2	cd b6 e8 	. . . 
le3f5h:
	pop hl			;e3f5	e1 	. 
	pop de			;e3f6	d1 	. 
	pop bc			;e3f7	c1 	. 
	pop af			;e3f8	f1 	. 
	ret			;e3f9	c9 	. 
le3fah:
	ld hl,le65dh		;e3fa	21 5d e6 	! ] . 
	ld de,00000h		;e3fd	11 00 00 	. . . 
	call sub_e511h		;e400	cd 11 e5 	. . . 
	ld hl,le7adh		;e403	21 ad e7 	! . . 
	ld de,00100h		;e406	11 00 01 	. . . 
	call sub_e511h		;e409	cd 11 e5 	. . . 
	ld hl,le7c5h		;e40c	21 c5 e7 	! . . 
	ld de,00200h		;e40f	11 00 02 	. . . 
	call sub_e511h		;e412	cd 11 e5 	. . . 
	ld hl,le7adh		;e415	21 ad e7 	! . . 
	ld de,00300h		;e418	11 00 03 	. . . 
	call sub_e511h		;e41b	cd 11 e5 	. . . 
le41eh:
	ld a,030h		;e41e	3e 30 	> 0 
	call sub_d6bch		;e420	cd bc d6 	. . . 
	cp 01ah		;e423	fe 1a 	. . 
	jr z,le47ah		;e425	28 53 	( S 
	cp 09ah		;e427	fe 9a 	. . 
	jr z,le496h		;e429	28 6b 	( k 
	cp 099h		;e42b	fe 99 	. . 
	jr z,le47eh		;e42d	28 4f 	( O 
	cp 09ah		;e42f	fe 9a 	. . 
	jr z,le496h		;e431	28 63 	( c 
	cp 048h		;e433	fe 48 	. H 
	jr z,le489h		;e435	28 52 	( R 
	cp 0c8h		;e437	fe c8 	. . 
	jr z,le49ah		;e439	28 5f 	( _ 
	jp leb91h		;e43b	c3 91 eb 	. . . 
	nop			;e43e	00 	. 
	nop			;e43f	00 	. 
	nop			;e440	00 	. 
	nop			;e441	00 	. 
	nop			;e442	00 	. 
le443h:
	cp 001h		;e443	fe 01 	. . 
	jr z,le492h		;e445	28 4b 	( K 
	cp 081h		;e447	fe 81 	. . 
	jr z,le492h		;e449	28 47 	( G 
	cp 07dh		;e44b	fe 7d 	. } 
	jr z,le492h		;e44d	28 43 	( C 
	cp 07eh		;e44f	fe 7e 	. ~ 
	jr z,le492h		;e451	28 3f 	( ? 
	cp 049h		;e453	fe 49 	. I 
	jr z,le49eh		;e455	28 47 	( G 
	cp 0c9h		;e457	fe c9 	. . 
	jr z,le49eh		;e459	28 43 	( C 
	jp leb77h		;e45b	c3 77 eb 	. w . 
	nop			;e45e	00 	. 
	ld a,(079dah)		;e45f	3a da 79 	: . y 
	and 0feh		;e462	e6 fe 	. . 
	ld a,003h		;e464	3e 03 	> . 
	jp 0be2ch		;e466	c3 2c be 	. , . 
le469h:
	push af			;e469	f5 	. 
	ld a,(07901h)		;e46a	3a 01 79 	: . y 
	and 0efh		;e46d	e6 ef 	. . 
	ld (07901h),a		;e46f	32 01 79 	2 . y 
	ld a,01eh		;e472	3e 1e 	> . 
	call sub_d6bch		;e474	cd bc d6 	. . . 
	pop af			;e477	f1 	. 
	jr le41eh		;e478	18 a4 	. . 
le47ah:
	jp leb50h		;e47a	c3 50 eb 	. P . 
	nop			;e47d	00 	. 
le47eh:
	nop			;e47e	00 	. 
	nop			;e47f	00 	. 
	nop			;e480	00 	. 
	nop			;e481	00 	. 
	nop			;e482	00 	. 
	nop			;e483	00 	. 
	nop			;e484	00 	. 
le485h:
	ld a,003h		;e485	3e 03 	> . 
	jr le4aeh		;e487	18 25 	. % 
le489h:
	ld a,(07901h)		;e489	3a 01 79 	: . y 
	and 010h		;e48c	e6 10 	. . 
	jr nz,le49ah		;e48e	20 0a 	  . 
	jr le469h		;e490	18 d7 	. . 
le492h:
	ld a,006h		;e492	3e 06 	> . 
	jr le4aeh		;e494	18 18 	. . 
le496h:
	ld a,00ch		;e496	3e 0c 	> . 
	jr le4aeh		;e498	18 14 	. . 
le49ah:
	ld a,00fh		;e49a	3e 0f 	> . 
	jr le4aeh		;e49c	18 10 	. . 
le49eh:
	ld a,(07901h)		;e49e	3a 01 79 	: . y 
	xor 010h		;e4a1	ee 10 	. . 
	ld (07901h),a		;e4a3	32 01 79 	2 . y 
	ld a,01eh		;e4a6	3e 1e 	> . 
	call sub_d6bch		;e4a8	cd bc d6 	. . . 
	jp le41eh		;e4ab	c3 1e e4 	. . . 
le4aeh:
	push af			;e4ae	f5 	. 
	ld a,(07901h)		;e4af	3a 01 79 	: . y 
	and 0efh		;e4b2	e6 ef 	. . 
	ld (07901h),a		;e4b4	32 01 79 	2 . y 
	ld a,01eh		;e4b7	3e 1e 	> . 
	call sub_d6bch		;e4b9	cd bc d6 	. . . 
	pop af			;e4bc	f1 	. 
	jp sub_d6bch		;e4bd	c3 bc d6 	. . . 
sub_e4c0h:
	call sub_d6a8h		;e4c0	cd a8 d6 	. . . 
	cp 00dh		;e4c3	fe 0d 	. . 
	jr z,le51fh		;e4c5	28 58 	( X 
	ld hl,le65dh		;e4c7	21 5d e6 	! ] . 
	ld de,00000h		;e4ca	11 00 00 	. . . 
	call sub_e502h		;e4cd	cd 02 e5 	. . . 
	cp 00bh		;e4d0	fe 0b 	. . 
	jr z,le523h		;e4d2	28 4f 	( O 
	cp 007h		;e4d4	fe 07 	. . 
	jr c,le52ah		;e4d6	38 52 	8 R 
	ld de,00200h		;e4d8	11 00 02 	. . . 
	ld hl,0e6d5h		;e4db	21 d5 e6 	! . . 
	cp 00ch		;e4de	fe 0c 	. . 
	jr z,le4ffh		;e4e0	28 1d 	( . 
	ld hl,le765h		;e4e2	21 65 e7 	! e . 
	cp 00eh		;e4e5	fe 0e 	. . 
	jr z,le4ffh		;e4e7	28 16 	( . 
	ld hl,le77dh		;e4e9	21 7d e7 	! } . 
	cp 00fh		;e4ec	fe 0f 	. . 
	jr z,le4ffh		;e4ee	28 0f 	( . 
	ld hl,0e795h		;e4f0	21 95 e7 	! . . 
	cp 010h		;e4f3	fe 10 	. . 
	jr z,le4ffh		;e4f5	28 08 	( . 
	ld hl,le89dh		;e4f7	21 9d e8 	! . . 
	cp 007h		;e4fa	fe 07 	. . 
	jr z,le4ffh		;e4fc	28 01 	( . 
	ret			;e4fe	c9 	. 
le4ffh:
	ld de,00200h		;e4ff	11 00 02 	. . . 
sub_e502h:
	ld b,018h		;e502	06 18 	. . 
	call sub_ea2fh		;e504	cd 2f ea 	. / . 
	ld h,(ix+046h)		;e507	dd 66 46 	. f F 
	ld l,(ix+047h)		;e50a	dd 6e 47 	. n G 
	call sub_e5d6h		;e50d	cd d6 e5 	. . . 
	ret			;e510	c9 	. 
sub_e511h:
	ld b,018h		;e511	06 18 	. . 
	call sub_ea2fh		;e513	cd 2f ea 	. / . 
	ld hl,07f10h		;e516	21 10 7f 	! .  
	ld a,024h		;e519	3e 24 	> $ 
	call sub_d6bch		;e51b	cd bc d6 	. . . 
	ret			;e51e	c9 	. 
le51fh:
	call sub_e564h		;e51f	cd 64 e5 	. d . 
	ret			;e522	c9 	. 
le523h:
	call sub_e5e8h		;e523	cd e8 e5 	. . . 
	call sub_e52eh		;e526	cd 2e e5 	. . . 
	ret			;e529	c9 	. 
le52ah:
	call sub_e591h		;e52a	cd 91 e5 	. . . 
	ret			;e52d	c9 	. 
sub_e52eh:
	ld a,(ix+04eh)		;e52e	dd 7e 4e 	. ~ N 
	and 0f0h		;e531	e6 f0 	. . 
	ld (ix+04eh),a		;e533	dd 77 4e 	. w N 
le536h:
	call sub_d5f1h		;e536	cd f1 d5 	. . . 
	cp 009h		;e539	fe 09 	. . 
	jr z,le54bh		;e53b	28 0e 	( . 
	cp 00bh		;e53d	fe 0b 	. . 
	jr z,le555h		;e53f	28 14 	( . 
	cp 039h		;e541	fe 39 	. 9 
	jr z,le55ah		;e543	28 15 	( . 
	cp 029h		;e545	fe 29 	. ) 
	jr z,le55fh		;e547	28 16 	( . 
	jr le536h		;e549	18 eb 	. . 
le54bh:
	set 0,(ix+04eh)		;e54b	dd cb 4e c6 	. . N . 
	ld a,00ch		;e54f	3e 0c 	> . 
	call sub_e4c0h		;e551	cd c0 e4 	. . . 
	ret			;e554	c9 	. 
le555h:
	set 1,(ix+04eh)		;e555	dd cb 4e ce 	. . N . 
	ret			;e559	c9 	. 
le55ah:
	set 2,(ix+04eh)		;e55a	dd cb 4e d6 	. . N . 
	ret			;e55e	c9 	. 
le55fh:
	set 3,(ix+04eh)		;e55f	dd cb 4e de 	. . N . 
	ret			;e563	c9 	. 
sub_e564h:
	call sub_e926h		;e564	cd 26 e9 	. & . 
	ld b,018h		;e567	06 18 	. . 
	ld de,00000h		;e569	11 00 00 	. . . 
	ld h,(ix+046h)		;e56c	dd 66 46 	. f F 
	ld l,(ix+047h)		;e56f	dd 6e 47 	. n G 
	call sub_e5d6h		;e572	cd d6 e5 	. . . 
	call sub_e981h		;e575	cd 81 e9 	. . . 
	ld de,00100h		;e578	11 00 01 	. . . 
	call sub_e5d6h		;e57b	cd d6 e5 	. . . 
	call sub_e9dah		;e57e	cd da e9 	. . . 
	ld de,00200h		;e581	11 00 02 	. . . 
	call sub_e5d6h		;e584	cd d6 e5 	. . . 
	call sub_ea0fh		;e587	cd 0f ea 	. . . 
	ld de,00300h		;e58a	11 00 03 	. . . 
	call sub_e5d6h		;e58d	cd d6 e5 	. . . 
	ret			;e590	c9 	. 
sub_e591h:
	ld hl,0e7ddh		;e591	21 dd e7 	! . . 
	cp 000h		;e594	fe 00 	. . 
	jr z,le5c3h		;e596	28 2b 	( + 
	ld hl,0e7f5h		;e598	21 f5 e7 	! . . 
	cp 001h		;e59b	fe 01 	. . 
	jr z,le5c3h		;e59d	28 24 	( $ 
	ld hl,le80dh		;e59f	21 0d e8 	! . . 
	cp 002h		;e5a2	fe 02 	. . 
	jr z,le5ceh		;e5a4	28 28 	( ( 
	ld hl,le825h		;e5a6	21 25 e8 	! % . 
	cp 003h		;e5a9	fe 03 	. . 
	jr z,le5c3h		;e5ab	28 16 	( . 
	ld hl,le83dh		;e5ad	21 3d e8 	! = . 
	cp 004h		;e5b0	fe 04 	. . 
	jr z,le5ceh		;e5b2	28 1a 	( . 
	ld hl,le855h		;e5b4	21 55 e8 	! U . 
	cp 005h		;e5b7	fe 05 	. . 
	jr z,le5c3h		;e5b9	28 08 	( . 
	ld hl,0e86dh		;e5bb	21 6d e8 	! m . 
	cp 006h		;e5be	fe 06 	. . 
	jr z,le5c3h		;e5c0	28 01 	( . 
	ret			;e5c2	c9 	. 
le5c3h:
	call sub_ea2fh		;e5c3	cd 2f ea 	. / . 
le5c6h:
	ld (ix+03eh),001h		;e5c6	dd 36 3e 01 	. 6 > . 
	call sub_de47h		;e5ca	cd 47 de 	. G . 
	ret			;e5cd	c9 	. 
le5ceh:
	call sub_ea2fh		;e5ce	cd 2f ea 	. / . 
	call sub_ea3eh		;e5d1	cd 3e ea 	. > . 
	jr le5c6h		;e5d4	18 f0 	. . 
sub_e5d6h:
	push af			;e5d6	f5 	. 
	push bc			;e5d7	c5 	. 
	push de			;e5d8	d5 	. 
	push hl			;e5d9	e5 	. 
	push ix		;e5da	dd e5 	. . 
	ld a,024h		;e5dc	3e 24 	> $ 
	call sub_d6c3h		;e5de	cd c3 d6 	. . . 
	pop ix		;e5e1	dd e1 	. . 
	pop hl			;e5e3	e1 	. 
	pop de			;e5e4	d1 	. 
	pop bc			;e5e5	c1 	. 
	pop af			;e5e6	f1 	. 
	ret			;e5e7	c9 	. 
sub_e5e8h:
	ld de,00200h		;e5e8	11 00 02 	. . . 
	ld hl,le68dh		;e5eb	21 8d e6 	! . . 
	call sub_e502h		;e5ee	cd 02 e5 	. . . 
	ld de,00300h		;e5f1	11 00 03 	. . . 
	ld hl,0e6a5h		;e5f4	21 a5 e6 	! . . 
	call sub_e502h		;e5f7	cd 02 e5 	. . . 
	ld hl,(07ffeh)		;e5fa	2a fe 7f 	* .  
	ld d,(ix+040h)		;e5fd	dd 56 40 	. V @ 
	ld e,(ix+041h)		;e600	dd 5e 41 	. ^ A 
	add hl,de			;e603	19 	. 
	ld a,h			;e604	7c 	| 
	cp 000h		;e605	fe 00 	. . 
	jr nz,le61bh		;e607	20 12 	  . 
	ld a,l			;e609	7d 	} 
	cp 0ffh		;e60a	fe ff 	. . 
	jr nz,le61bh		;e60c	20 0d 	  . 
	push hl			;e60e	e5 	. 
	ld de,00100h		;e60f	11 00 01 	. . . 
	ld hl,le6bch+1		;e612	21 bd e6 	! . . 
	call sub_e502h		;e615	cd 02 e5 	. . . 
	pop hl			;e618	e1 	. 
	jr le638h		;e619	18 1d 	. . 
le61bh:
	push hl			;e61b	e5 	. 
	ld de,00100h		;e61c	11 00 01 	. . . 
	ld hl,le675h		;e61f	21 75 e6 	! u . 
	call sub_e502h		;e622	cd 02 e5 	. . . 
	pop hl			;e625	e1 	. 
	ld d,(ix+042h)		;e626	dd 56 42 	. V B 
	ld e,(ix+043h)		;e629	dd 5e 43 	. ^ C 
	call sub_eaafh		;e62c	cd af ea 	. . . 
	ex de,hl			;e62f	eb 	. 
	ld de,00111h		;e630	11 11 01 	. . . 
	ld b,004h		;e633	06 04 	. . 
	call sub_e5d6h		;e635	cd d6 e5 	. . . 
le638h:
	ld hl,(079e3h)		;e638	2a e3 79 	* . y 
	ex de,hl			;e63b	eb 	. 
	ld hl,(079fch)		;e63c	2a fc 79 	* . y 
	scf			;e63f	37 	7 
	sbc hl,de		;e640	ed 52 	. R 
	ld d,(ix+042h)		;e642	dd 56 42 	. V B 
	ld e,(ix+043h)		;e645	dd 5e 43 	. ^ C 
	call sub_ea85h		;e648	cd 85 ea 	. . . 
	ex de,hl			;e64b	eb 	. 
	call sub_dfb8h		;e64c	cd b8 df 	. . . 
	ld b,a			;e64f	47 	G 
	sub 005h		;e650	d6 05 	. . 
	neg		;e652	ed 44 	. D 
	ld de,0020bh		;e654	11 0b 02 	. . . 
	add a,e			;e657	83 	. 
	ld e,a			;e658	5f 	_ 
	call sub_e5d6h		;e659	cd d6 e5 	. . . 
	ret			;e65c	c9 	. 
le65dh:
	jr nz,$+44		;e65d	20 2a 	  * 
	ld hl,(02a2ah)		;e65f	2a 2a 2a 	* * * 
	ld hl,(04120h)		;e662	2a 20 41 	*   A 
	ld d,e			;e665	53 	S 
	ld d,e			;e666	53 	S 
	ld b,l			;e667	45 	E 
	ld c,l			;e668	4d 	M 
	ld b,d			;e669	42 	B 
	ld c,h			;e66a	4c 	L 
	ld b,l			;e66b	45 	E 
	ld d,d			;e66c	52 	R 
	jr nz,$+44		;e66d	20 2a 	  * 
	ld hl,(02a2ah)		;e66f	2a 2a 2a 	* * * 
	ld hl,(02020h)		;e672	2a 20 20 	*     
le675h:
	jr nz,le6ech		;e675	20 75 	  u 
	ld (hl),e			;e677	73 	s 
	ld h,l			;e678	65 	e 
	ld (hl),d			;e679	72 	r 
	jr nz,le6ddh		;e67a	20 61 	  a 
	ld (hl),d			;e67c	72 	r 
	ld h,l			;e67d	65 	e 
	ld h,c			;e67e	61 	a 
	dec a			;e67f	3d 	= 
	jr nc,le6b3h		;e680	30 31 	0 1 
	jr nc,$+50		;e682	30 30 	0 0 
	ld c,b			;e684	48 	H 
	dec l			;e685	2d 	- 
	jr nz,le6a8h		;e686	20 20 	    
	jr nz,le6aah		;e688	20 20 	    
	ld c,b			;e68a	48 	H 
	jr nz,le6adh		;e68b	20 20 	    
le68dh:
	jr nz,le706h		;e68d	20 77 	  w 
	ld l,a			;e68f	6f 	o 
	ld (hl),d			;e690	72 	r 
	ld l,e			;e691	6b 	k 
	jr nz,$+99		;e692	20 61 	  a 
	ld (hl),d			;e694	72 	r 
	ld h,l			;e695	65 	e 
	ld h,c			;e696	61 	a 
	dec a			;e697	3d 	= 
	jr nz,le6bah		;e698	20 20 	    
	jr nz,le6bch		;e69a	20 20 	    
	jr nz,$+100		;e69c	20 62 	  b 
	ld a,c			;e69e	79 	y 
	ld (hl),h			;e69f	74 	t 
	ld h,l			;e6a0	65 	e 
	ld (hl),e			;e6a1	73 	s 
	jr nz,le6c4h		;e6a2	20 20 	    
	jr nz,le6e2h		;e6a4	20 3c 	  < 
	jr nz,le6e9h		;e6a6	20 41 	  A 
le6a8h:
	ld (hl),e			;e6a8	73 	s 
	ld l,l			;e6a9	6d 	m 
le6aah:
	jr nz,$+34		;e6aa	20 20 	    
	ld b,h			;e6ac	44 	D 
le6adh:
	ld l,c			;e6ad	69 	i 
	ld (hl),e			;e6ae	73 	s 
	ld (hl),b			;e6af	70 	p 
	ld l,h			;e6b0	6c 	l 
	ld h,c			;e6b1	61 	a 
	ld a,c			;e6b2	79 	y 
le6b3h:
	jr nz,$+34		;e6b3	20 20 	    
	ld d,b			;e6b5	50 	P 
	ld (hl),d			;e6b6	72 	r 
	ld l,c			;e6b7	69 	i 
	ld l,(hl)			;e6b8	6e 	n 
	ld (hl),h			;e6b9	74 	t 
le6bah:
	jr nz,le6fah		;e6ba	20 3e 	  > 
le6bch:
	jr nz,le6deh		;e6bc	20 20 	    
	ld (hl),l			;e6be	75 	u 
	ld (hl),e			;e6bf	73 	s 
	ld h,l			;e6c0	65 	e 
	ld (hl),d			;e6c1	72 	r 
	jr nz,$+99		;e6c2	20 61 	  a 
le6c4h:
	ld (hl),d			;e6c4	72 	r 
	ld h,l			;e6c5	65 	e 
	ld h,c			;e6c6	61 	a 
	dec a			;e6c7	3d 	= 
	ld c,(hl)			;e6c8	4e 	N 
	ld c,a			;e6c9	4f 	O 
	ld d,h			;e6ca	54 	T 
	jr nz,le71fh		;e6cb	20 52 	  R 
	ld b,l			;e6cd	45 	E 
	ld d,e			;e6ce	53 	S 
	ld b,l			;e6cf	45 	E 
	ld d,d			;e6d0	52 	R 
	ld d,(hl)			;e6d1	56 	V 
	ld b,l			;e6d2	45 	E 
	ld b,h			;e6d3	44 	D 
	jr nz,le6f6h		;e6d4	20 20 	    
	jr nz,le6f8h		;e6d6	20 20 	    
	dec l			;e6d8	2d 	- 
	dec l			;e6d9	2d 	- 
	dec l			;e6da	2d 	- 
	jr nz,le73eh		;e6db	20 61 	  a 
le6ddh:
	ld (hl),e			;e6dd	73 	s 
le6deh:
	ld (hl),e			;e6de	73 	s 
	ld h,l			;e6df	65 	e 
	ld l,l			;e6e0	6d 	m 
	ld h,d			;e6e1	62 	b 
le6e2h:
	ld l,h			;e6e2	6c 	l 
	ld l,c			;e6e3	69 	i 
	ld l,(hl)			;e6e4	6e 	n 
	ld h,a			;e6e5	67 	g 
	jr nz,le715h		;e6e6	20 2d 	  - 
	dec l			;e6e8	2d 	- 
le6e9h:
	dec l			;e6e9	2d 	- 
	jr nz,$+34		;e6ea	20 20 	    
le6ech:
	jr nz,le75dh		;e6ec	20 6f 	  o 
	ld h,d			;e6ee	62 	b 
	ld l,d			;e6ef	6a 	j 
	ld h,l			;e6f0	65 	e 
	ld h,e			;e6f1	63 	c 
	ld (hl),h			;e6f2	74 	t 
	ld a,(02020h)		;e6f3	3a 20 20 	:     
le6f6h:
	jr nz,le718h		;e6f6	20 20 	    
le6f8h:
	ld c,b			;e6f8	48 	H 
	dec l			;e6f9	2d 	- 
le6fah:
	jr nz,le71ch		;e6fa	20 20 	    
	jr nz,le71eh		;e6fc	20 20 	    
	ld c,b			;e6fe	48 	H 
	jr nz,le721h		;e6ff	20 20 	    
	jr nz,$+34		;e701	20 20 	    
	jr nz,$+34		;e703	20 20 	    
le705h:
	ld (hl),e			;e705	73 	s 
le706h:
	ld l,c			;e706	69 	i 
	ld a,d			;e707	7a 	z 
	ld h,l			;e708	65 	e 
	jr nz,$+34		;e709	20 20 	    
	ld a,(02020h)		;e70b	3a 20 20 	:     
	jr nz,le730h		;e70e	20 20 	    
	ld c,b			;e710	48 	H 
	jr z,$+34		;e711	28 20 	(   
	jr nz,$+34		;e713	20 20 	    
le715h:
	jr nz,le737h		;e715	20 20 	    
	add hl,hl			;e717	29 	) 
le718h:
	ld h,d			;e718	62 	b 
	ld a,c			;e719	79 	y 
	ld (hl),h			;e71a	74 	t 
	ld h,l			;e71b	65 	e 
le71ch:
	ld (hl),e			;e71c	73 	s 
le71dh:
	ld l,h			;e71d	6c 	l 
le71eh:
	ld h,c			;e71e	61 	a 
le71fh:
	ld h,d			;e71f	62 	b 
	ld h,l			;e720	65 	e 
le721h:
	ld l,h			;e721	6c 	l 
	jr nz,le75eh		;e722	20 3a 	  : 
	jr nz,le746h		;e724	20 20 	    
	jr nz,le748h		;e726	20 20 	    
	jr nz,le74ah		;e728	20 20 	    
	jr nz,le74ch		;e72a	20 20 	    
	jr nz,le74eh		;e72c	20 20 	    
	jr nz,le750h		;e72e	20 20 	    
le730h:
	jr nz,le752h		;e730	20 20 	    
	jr nz,le754h		;e732	20 20 	    
	jr nz,le79bh		;e734	20 65 	  e 
	ld (hl),d			;e736	72 	r 
le737h:
	ld (hl),d			;e737	72 	r 
	ld l,a			;e738	6f 	o 
	ld (hl),d			;e739	72 	r 
	jr nz,le776h		;e73a	20 3a 	  : 
	jr nz,le75eh		;e73c	20 20 	    
le73eh:
	jr nz,le760h		;e73e	20 20 	    
	jr nz,le762h		;e740	20 20 	    
	jr nz,$+34		;e742	20 20 	    
	jr nz,$+34		;e744	20 20 	    
le746h:
	jr nz,$+34		;e746	20 20 	    
le748h:
	jr nz,$+34		;e748	20 20 	    
le74ah:
	jr nz,le76ch		;e74a	20 20 	    
le74ch:
	jr nz,le7b3h		;e74c	20 65 	  e 
le74eh:
	ld (hl),d			;e74e	72 	r 
	ld (hl),d			;e74f	72 	r 
le750h:
	ld l,a			;e750	6f 	o 
	ld (hl),d			;e751	72 	r 
le752h:
	jr nz,le78eh		;e752	20 3a 	  : 
le754h:
	jr nz,le776h		;e754	20 20 	    
	jr nz,$+34		;e756	20 20 	    
	jr nz,$+34		;e758	20 20 	    
	jr nz,le7bfh		;e75a	20 63 	  c 
	ld l,a			;e75c	6f 	o 
le75dh:
	ld l,l			;e75d	6d 	m 
le75eh:
	ld (hl),b			;e75e	70 	p 
	ld l,h			;e75f	6c 	l 
le760h:
	ld h,l			;e760	65 	e 
	ld (hl),h			;e761	74 	t 
le762h:
	ld h,l			;e762	65 	e 
	jr nz,le786h		;e763	20 21 	  ! 
le765h:
	jr nz,le787h		;e765	20 20 	    
	jr nz,le789h		;e767	20 20 	    
	jr nz,le798h		;e769	20 2d 	  - 
	dec l			;e76b	2d 	- 
le76ch:
	dec l			;e76c	2d 	- 
	jr nz,le7d1h		;e76d	20 62 	  b 
	ld (hl),d			;e76f	72 	r 
	ld h,l			;e770	65 	e 
	ld h,c			;e771	61 	a 
	ld l,e			;e772	6b 	k 
	jr nz,le7a2h		;e773	20 2d 	  - 
	dec l			;e775	2d 	- 
le776h:
	dec l			;e776	2d 	- 
	jr nz,le799h		;e777	20 20 	    
	jr nz,le79bh		;e779	20 20 	    
	jr nz,le79dh		;e77b	20 20 	    
le77dh:
	jr nz,le79fh		;e77d	20 20 	    
	jr nz,$+47		;e77f	20 2d 	  - 
	dec l			;e781	2d 	- 
	dec l			;e782	2d 	- 
	jr nz,le7d5h		;e783	20 50 	  P 
	ld (hl),d			;e785	72 	r 
le786h:
	ld l,c			;e786	69 	i 
le787h:
	ld l,(hl)			;e787	6e 	n 
	ld (hl),h			;e788	74 	t 
le789h:
	ld l,c			;e789	69 	i 
	ld l,(hl)			;e78a	6e 	n 
	ld h,a			;e78b	67 	g 
	jr nz,le7bbh		;e78c	20 2d 	  - 
le78eh:
	dec l			;e78e	2d 	- 
	dec l			;e78f	2d 	- 
	jr nz,$+34		;e790	20 20 	    
	jr nz,$+34		;e792	20 20 	    
	jr nz,$+44		;e794	20 2a 	  * 
	ld d,b			;e796	50 	P 
	ld d,d			;e797	52 	R 
le798h:
	ld c,c			;e798	49 	I 
le799h:
	ld c,(hl)			;e799	4e 	N 
	ld d,h			;e79a	54 	T 
le79bh:
	ld b,l			;e79b	45 	E 
	ld d,d			;e79c	52 	R 
le79dh:
	jr nz,le7e4h		;e79d	20 45 	  E 
le79fh:
	ld d,d			;e79f	52 	R 
	ld d,d			;e7a0	52 	R 
	ld c,a			;e7a1	4f 	O 
le7a2h:
	ld d,d			;e7a2	52 	R 
	jr nz,le7c5h		;e7a3	20 20 	    
	jr nz,le7c7h		;e7a5	20 20 	    
	jr nz,le7c9h		;e7a7	20 20 	    
	jr nz,le7cbh		;e7a9	20 20 	    
	jr nz,le7cdh		;e7ab	20 20 	    
le7adh:
	jr nz,$+34		;e7ad	20 20 	    
	jr nz,le7d1h		;e7af	20 20 	    
	jr nz,le7d3h		;e7b1	20 20 	    
le7b3h:
	jr nz,le7d5h		;e7b3	20 20 	    
	jr nz,le7d7h		;e7b5	20 20 	    
	jr nz,$+34		;e7b7	20 20 	    
	jr nz,$+34		;e7b9	20 20 	    
le7bbh:
	jr nz,$+34		;e7bb	20 20 	    
	jr nz,le7dfh		;e7bd	20 20 	    
le7bfh:
	jr nz,le7e1h		;e7bf	20 20 	    
	jr nz,le7e3h		;e7c1	20 20 	    
	jr nz,le7e5h		;e7c3	20 20 	    
le7c5h:
	jr nz,le7e7h		;e7c5	20 20 	    
le7c7h:
	jr nz,le7e9h		;e7c7	20 20 	    
le7c9h:
	jr nz,le822h		;e7c9	20 57 	  W 
le7cbh:
	ld c,a			;e7cb	4f 	O 
	ld d,d			;e7cc	52 	R 
le7cdh:
	ld c,e			;e7cd	4b 	K 
	jr nz,le811h		;e7ce	20 41 	  A 
	ld d,d			;e7d0	52 	R 
le7d1h:
	ld b,l			;e7d1	45 	E 
	ld b,c			;e7d2	41 	A 
le7d3h:
	jr nz,le824h		;e7d3	20 4f 	  O 
le7d5h:
	ld d,(hl)			;e7d5	56 	V 
	ld b,l			;e7d6	45 	E 
le7d7h:
	ld d,d			;e7d7	52 	R 
	jr nz,le7fah		;e7d8	20 20 	    
	jr nz,$+34		;e7da	20 20 	    
	jr nz,le808h		;e7dc	20 2a 	  * 
	ld d,l			;e7de	55 	U 
le7dfh:
	ld c,(hl)			;e7df	4e 	N 
	ld b,h			;e7e0	44 	D 
le7e1h:
	ld b,l			;e7e1	45 	E 
	ld b,(hl)			;e7e2	46 	F 
le7e3h:
	ld c,c			;e7e3	49 	I 
le7e4h:
	ld c,(hl)			;e7e4	4e 	N 
le7e5h:
	ld b,l			;e7e5	45 	E 
	ld b,h			;e7e6	44 	D 
le7e7h:
	jr nz,$+85		;e7e7	20 53 	  S 
le7e9h:
	ld e,c			;e7e9	59 	Y 
	ld c,l			;e7ea	4d 	M 
	ld b,d			;e7eb	42 	B 
	ld c,a			;e7ec	4f 	O 
	ld c,h			;e7ed	4c 	L 
	jr nz,le810h		;e7ee	20 20 	    
	jr nz,le812h		;e7f0	20 20 	    
	jr nz,le814h		;e7f2	20 20 	    
	jr nz,le820h		;e7f4	20 2a 	  * 
	ld c,l			;e7f6	4d 	M 
	ld d,l			;e7f7	55 	U 
	ld c,h			;e7f8	4c 	L 
	ld d,h			;e7f9	54 	T 
le7fah:
	ld c,c			;e7fa	49 	I 
	jr nz,le841h		;e7fb	20 44 	  D 
	ld b,l			;e7fd	45 	E 
	ld b,(hl)			;e7fe	46 	F 
	ld c,c			;e7ff	49 	I 
	ld c,(hl)			;e800	4e 	N 
	ld b,l			;e801	45 	E 
	jr nz,$+85		;e802	20 53 	  S 
	ld e,c			;e804	59 	Y 
	ld c,l			;e805	4d 	M 
	ld b,d			;e806	42 	B 
	ld c,a			;e807	4f 	O 
le808h:
	ld c,h			;e808	4c 	L 
	jr nz,le82bh		;e809	20 20 	    
	jr nz,le82dh		;e80b	20 20 	    
le80dh:
	ld hl,(04f46h)		;e80d	2a 46 4f 	* F O 
le810h:
	ld d,d			;e810	52 	R 
le811h:
	ld c,l			;e811	4d 	M 
le812h:
	ld b,c			;e812	41 	A 
	ld d,h			;e813	54 	T 
le814h:
	jr nz,$+71		;e814	20 45 	  E 
	ld d,d			;e816	52 	R 
	ld d,d			;e817	52 	R 
	ld c,a			;e818	4f 	O 
	ld d,d			;e819	52 	R 
	jr nz,$+34		;e81a	20 20 	    
	jr nz,$+34		;e81c	20 20 	    
	jr nz,le840h		;e81e	20 20 	    
le820h:
	jr nz,le842h		;e820	20 20 	    
le822h:
	jr z,le844h		;e822	28 20 	(   
le824h:
	add hl,hl			;e824	29 	) 
le825h:
	ld hl,(0504fh)		;e825	2a 4f 50 	* O P 
	ld b,l			;e828	45 	E 
	ld b,e			;e829	43 	C 
	ld c,a			;e82a	4f 	O 
le82bh:
	ld b,h			;e82b	44 	D 
	ld b,l			;e82c	45 	E 
le82dh:
	jr nz,le874h		;e82d	20 45 	  E 
	ld d,d			;e82f	52 	R 
	ld d,d			;e830	52 	R 
	ld c,a			;e831	4f 	O 
	ld d,d			;e832	52 	R 
	jr nz,le855h		;e833	20 20 	    
	jr nz,$+34		;e835	20 20 	    
	jr nz,le859h		;e837	20 20 	    
	jr nz,$+34		;e839	20 20 	    
	jr nz,le85dh		;e83b	20 20 	    
le83dh:
	ld hl,(05551h)		;e83d	2a 51 55 	* Q U 
le840h:
	ld b,l			;e840	45 	E 
le841h:
	ld d,e			;e841	53 	S 
le842h:
	ld d,h			;e842	54 	T 
	ld c,c			;e843	49 	I 
le844h:
	ld c,a			;e844	4f 	O 
	ld c,(hl)			;e845	4e 	N 
	ld b,c			;e846	41 	A 
	ld b,d			;e847	42 	B 
	ld c,h			;e848	4c 	L 
	ld b,l			;e849	45 	E 
	jr nz,le89bh		;e84a	20 4f 	  O 
	ld d,b			;e84c	50 	P 
	ld b,l			;e84d	45 	E 
	ld d,d			;e84e	52 	R 
	ld b,c			;e84f	41 	A 
	ld c,(hl)			;e850	4e 	N 
	ld b,h			;e851	44 	D 
	jr z,le874h		;e852	28 20 	(   
	add hl,hl			;e854	29 	) 
le855h:
	ld hl,(04f57h)		;e855	2a 57 4f 	* W O 
	ld d,d			;e858	52 	R 
le859h:
	ld c,e			;e859	4b 	K 
	jr nz,le89dh		;e85a	20 41 	  A 
	ld d,d			;e85c	52 	R 
le85dh:
	ld b,l			;e85d	45 	E 
	ld b,c			;e85e	41 	A 
	jr nz,le8b0h		;e85f	20 4f 	  O 
	ld d,(hl)			;e861	56 	V 
	ld b,l			;e862	45 	E 
	ld d,d			;e863	52 	R 
	jr nz,le886h		;e864	20 20 	    
	jr nz,le888h		;e866	20 20 	    
	jr nz,le88ah		;e868	20 20 	    
	jr nz,le88ch		;e86a	20 20 	    
	jr nz,$+44		;e86c	20 2a 	  * 
	ld d,l			;e86e	55 	U 
	ld d,e			;e86f	53 	S 
	ld b,l			;e870	45 	E 
	ld d,d			;e871	52 	R 
	jr nz,$+67		;e872	20 41 	  A 
le874h:
	ld d,d			;e874	52 	R 
	ld b,l			;e875	45 	E 
	ld b,c			;e876	41 	A 
	jr nz,le8c8h		;e877	20 4f 	  O 
	ld d,(hl)			;e879	56 	V 
	ld b,l			;e87a	45 	E 
	ld d,d			;e87b	52 	R 
	jr nz,$+34		;e87c	20 20 	    
	jr nz,le8a0h		;e87e	20 20 	    
	jr nz,le8a2h		;e880	20 20 	    
	jr nz,le8a4h		;e882	20 20 	    
	jr nz,le8a6h		;e884	20 20 	    
le886h:
	jr nz,le8a8h		;e886	20 20 	    
le888h:
	jr nz,le8aah		;e888	20 20 	    
le88ah:
	jr nz,le8ach		;e88a	20 20 	    
le88ch:
	jr nz,le8aeh		;e88c	20 20 	    
	jr nz,le8b0h		;e88e	20 20 	    
	jr nz,le8b2h		;e890	20 20 	    
	jr nz,le8b4h		;e892	20 20 	    
	jr nz,$+75		;e894	20 49 	  I 
	ld c,(hl)			;e896	4e 	N 
	jr nz,$+34		;e897	20 20 	    
	jr nz,$+34		;e899	20 20 	    
le89bh:
	jr nz,le8bdh		;e89b	20 20 	    
le89dh:
	ld hl,(04946h)		;e89d	2a 46 49 	* F I 
le8a0h:
	ld c,h			;e8a0	4c 	L 
	ld b,l			;e8a1	45 	E 
le8a2h:
	jr nz,le8f2h		;e8a2	20 4e 	  N 
le8a4h:
	ld c,a			;e8a4	4f 	O 
	ld d,h			;e8a5	54 	T 
le8a6h:
	jr nz,$+71		;e8a6	20 45 	  E 
le8a8h:
	ld e,b			;e8a8	58 	X 
	ld c,c			;e8a9	49 	I 
le8aah:
	ld d,e			;e8aa	53 	S 
	ld d,h			;e8ab	54 	T 
le8ach:
	jr nz,$+34		;e8ac	20 20 	    
le8aeh:
	jr nz,$+34		;e8ae	20 20 	    
le8b0h:
	jr nz,le8d2h		;e8b0	20 20 	    
le8b2h:
	jr nz,le8d4h		;e8b2	20 20 	    
le8b4h:
	jr nz,$-53		;e8b4	20 c9 	  . 
sub_e8b6h:
	cp 00dh		;e8b6	fe 0d 	. . 
	jr z,le8ech		;e8b8	28 32 	( 2 
	ld hl,0e7ddh		;e8ba	21 dd e7 	! . . 
le8bdh:
	cp 000h		;e8bd	fe 00 	. . 
le8bfh:
	jr z,le919h		;e8bf	28 58 	( X 
	ld hl,0e7f5h		;e8c1	21 f5 e7 	! . . 
	cp 001h		;e8c4	fe 01 	. . 
	jr z,le919h		;e8c6	28 51 	( Q 
le8c8h:
	ld hl,le80dh		;e8c8	21 0d e8 	! . . 
	cp 002h		;e8cb	fe 02 	. . 
	jr z,le91eh		;e8cd	28 4f 	( O 
	ld hl,le825h		;e8cf	21 25 e8 	! % . 
le8d2h:
	cp 003h		;e8d2	fe 03 	. . 
le8d4h:
	jr z,le919h		;e8d4	28 43 	( C 
	ld hl,le83dh		;e8d6	21 3d e8 	! = . 
	cp 004h		;e8d9	fe 04 	. . 
	jr z,le91eh		;e8db	28 41 	( A 
	ld hl,le855h		;e8dd	21 55 e8 	! U . 
	cp 005h		;e8e0	fe 05 	. . 
	jr z,le919h		;e8e2	28 35 	( 5 
	ld hl,0e86dh		;e8e4	21 6d e8 	! m . 
	cp 006h		;e8e7	fe 06 	. . 
	jr z,le919h		;e8e9	28 2e 	( . 
	ret			;e8eb	c9 	. 
le8ech:
	call sub_e926h		;e8ec	cd 26 e9 	. & . 
	call sub_def3h		;e8ef	cd f3 de 	. . . 
le8f2h:
	call sub_de47h		;e8f2	cd 47 de 	. G . 
	call sub_d6efh		;e8f5	cd ef d6 	. . . 
	call sub_e981h		;e8f8	cd 81 e9 	. . . 
	call sub_de47h		;e8fb	cd 47 de 	. G . 
	call sub_d6efh		;e8fe	cd ef d6 	. . . 
	call sub_e9dah		;e901	cd da e9 	. . . 
	call sub_de47h		;e904	cd 47 de 	. G . 
	call sub_d6efh		;e907	cd ef d6 	. . . 
	call sub_ea0fh		;e90a	cd 0f ea 	. . . 
	jr le90fh		;e90d	18 00 	. . 
le90fh:
	call sub_def3h		;e90f	cd f3 de 	. . . 
	call sub_de47h		;e912	cd 47 de 	. G . 
	call sub_d6efh		;e915	cd ef d6 	. . . 
	ret			;e918	c9 	. 
le919h:
	call sub_ea2fh		;e919	cd 2f ea 	. / . 
	jr le90fh		;e91c	18 f1 	. . 
le91eh:
	call sub_ea2fh		;e91e	cd 2f ea 	. / . 
	call sub_ea3eh		;e921	cd 3e ea 	. > . 
	jr le90fh		;e924	18 e9 	. . 
sub_e926h:
	push af			;e926	f5 	. 
	push bc			;e927	c5 	. 
	push de			;e928	d5 	. 
	push hl			;e929	e5 	. 
	ld hl,le6ech+1		;e92a	21 ed e6 	! . . 
	call sub_ea2fh		;e92d	cd 2f ea 	. / . 
	ld h,(ix+006h)		;e930	dd 66 06 	. f . 
	ld l,(ix+007h)		;e933	dd 6e 07 	. n . 
	ld d,(ix+042h)		;e936	dd 56 42 	. V B 
	ld e,(ix+043h)		;e939	dd 5e 43 	. ^ C 
	call sub_eaafh		;e93c	cd af ea 	. . . 
	ld h,(ix+046h)		;e93f	dd 66 46 	. f F 
	ld l,(ix+047h)		;e942	dd 6e 47 	. n G 
	ld bc,00007h		;e945	01 07 00 	. . . 
	add hl,bc			;e948	09 	. 
	ex de,hl			;e949	eb 	. 
	ld bc,00004h		;e94a	01 04 00 	. . . 
	ldir		;e94d	ed b0 	. . 
	ld h,(ix+008h)		;e94f	dd 66 08 	. f . 
	ld l,(ix+009h)		;e952	dd 6e 09 	. n . 
	push hl			;e955	e5 	. 
	ld d,(ix+006h)		;e956	dd 56 06 	. V . 
	ld e,(ix+007h)		;e959	dd 5e 07 	. ^ . 
	or a			;e95c	b7 	. 
	sbc hl,de		;e95d	ed 52 	. R 
	pop hl			;e95f	e1 	. 
	jr z,le963h		;e960	28 01 	( . 
	dec hl			;e962	2b 	+ 
le963h:
	ld d,(ix+042h)		;e963	dd 56 42 	. V B 
	ld e,(ix+043h)		;e966	dd 5e 43 	. ^ C 
	call sub_eaafh		;e969	cd af ea 	. . . 
	ld h,(ix+046h)		;e96c	dd 66 46 	. f F 
	ld l,(ix+047h)		;e96f	dd 6e 47 	. n G 
	ld bc,0000dh		;e972	01 0d 00 	. . . 
	add hl,bc			;e975	09 	. 
	ex de,hl			;e976	eb 	. 
	ld bc,00004h		;e977	01 04 00 	. . . 
	ldir		;e97a	ed b0 	. . 
	pop hl			;e97c	e1 	. 
	pop de			;e97d	d1 	. 
	pop bc			;e97e	c1 	. 
	pop af			;e97f	f1 	. 
	ret			;e980	c9 	. 
sub_e981h:
	push af			;e981	f5 	. 
	push bc			;e982	c5 	. 
	push de			;e983	d5 	. 
	push hl			;e984	e5 	. 
	ld hl,le705h		;e985	21 05 e7 	! . . 
	call sub_ea2fh		;e988	cd 2f ea 	. / . 
	ld h,(ix+008h)		;e98b	dd 66 08 	. f . 
	ld l,(ix+009h)		;e98e	dd 6e 09 	. n . 
	ld d,(ix+006h)		;e991	dd 56 06 	. V . 
	ld e,(ix+007h)		;e994	dd 5e 07 	. ^ . 
	and a			;e997	a7 	. 
	sbc hl,de		;e998	ed 52 	. R 
	push hl			;e99a	e5 	. 
	ld d,(ix+042h)		;e99b	dd 56 42 	. V B 
	ld e,(ix+043h)		;e99e	dd 5e 43 	. ^ C 
	call sub_eaafh		;e9a1	cd af ea 	. . . 
	ld h,(ix+046h)		;e9a4	dd 66 46 	. f F 
	ld l,(ix+047h)		;e9a7	dd 6e 47 	. n G 
	ld bc,00007h		;e9aa	01 07 00 	. . . 
	add hl,bc			;e9ad	09 	. 
	ex de,hl			;e9ae	eb 	. 
	ld bc,00004h		;e9af	01 04 00 	. . . 
	ldir		;e9b2	ed b0 	. . 
	pop hl			;e9b4	e1 	. 
	ld d,(ix+042h)		;e9b5	dd 56 42 	. V B 
	ld e,(ix+043h)		;e9b8	dd 5e 43 	. ^ C 
	call sub_ea85h		;e9bb	cd 85 ea 	. . . 
	ld h,(ix+046h)		;e9be	dd 66 46 	. f F 
	ld l,(ix+047h)		;e9c1	dd 6e 47 	. n G 
	ld bc,00012h		;e9c4	01 12 00 	. . . 
	add hl,bc			;e9c7	09 	. 
	ex de,hl			;e9c8	eb 	. 
	call sub_dfb8h		;e9c9	cd b8 df 	. . . 
	ld b,000h		;e9cc	06 00 	. . 
	ld c,a			;e9ce	4f 	O 
	neg		;e9cf	ed 44 	. D 
	add a,e			;e9d1	83 	. 
	ld e,a			;e9d2	5f 	_ 
	ldir		;e9d3	ed b0 	. . 
	pop hl			;e9d5	e1 	. 
	pop de			;e9d6	d1 	. 
	pop bc			;e9d7	c1 	. 
	pop af			;e9d8	f1 	. 
	ret			;e9d9	c9 	. 
sub_e9dah:
	push af			;e9da	f5 	. 
	push bc			;e9db	c5 	. 
	push de			;e9dc	d5 	. 
	push hl			;e9dd	e5 	. 
	ld hl,le71dh		;e9de	21 1d e7 	! . . 
	call sub_ea2fh		;e9e1	cd 2f ea 	. / . 
	ld h,(ix+020h)		;e9e4	dd 66 20 	. f   
	ld l,(ix+021h)		;e9e7	dd 6e 21 	. n ! 
le9eah:
	ld d,(ix+042h)		;e9ea	dd 56 42 	. V B 
	ld e,(ix+043h)		;e9ed	dd 5e 43 	. ^ C 
	call sub_ea85h		;e9f0	cd 85 ea 	. . . 
	ld h,(ix+046h)		;e9f3	dd 66 46 	. f F 
	ld l,(ix+047h)		;e9f6	dd 6e 47 	. n G 
	ld bc,0000bh		;e9f9	01 0b 00 	. . . 
	add hl,bc			;e9fc	09 	. 
	ex de,hl			;e9fd	eb 	. 
	call sub_dfb8h		;e9fe	cd b8 df 	. . . 
	ld b,000h		;ea01	06 00 	. . 
	ld c,a			;ea03	4f 	O 
	neg		;ea04	ed 44 	. D 
	add a,e			;ea06	83 	. 
	ld e,a			;ea07	5f 	_ 
	ldir		;ea08	ed b0 	. . 
	pop hl			;ea0a	e1 	. 
	pop de			;ea0b	d1 	. 
	pop bc			;ea0c	c1 	. 
	pop af			;ea0d	f1 	. 
	ret			;ea0e	c9 	. 
sub_ea0fh:
	push af			;ea0f	f5 	. 
	push bc			;ea10	c5 	. 
	push de			;ea11	d5 	. 
	push hl			;ea12	e5 	. 
	ld a,(ix+039h)		;ea13	dd 7e 39 	. ~ 9 
	ld l,(ix+03ah)		;ea16	dd 6e 3a 	. n : 
	or l			;ea19	b5 	. 
	cp 000h		;ea1a	fe 00 	. . 
	ld hl,0e735h		;ea1c	21 35 e7 	! 5 . 
	jr nz,lea24h		;ea1f	20 03 	  . 
	ld hl,le74ch+1		;ea21	21 4d e7 	! M . 
lea24h:
	call sub_ea2fh		;ea24	cd 2f ea 	. / . 
	ld h,(ix+039h)		;ea27	dd 66 39 	. f 9 
	ld l,(ix+03ah)		;ea2a	dd 6e 3a 	. n : 
	jr le9eah		;ea2d	18 bb 	. . 
sub_ea2fh:
	push bc			;ea2f	c5 	. 
	push de			;ea30	d5 	. 
	push hl			;ea31	e5 	. 
	ld de,07f10h		;ea32	11 10 7f 	. .  
	ld bc,00018h		;ea35	01 18 00 	. . . 
	ldir		;ea38	ed b0 	. . 
	pop hl			;ea3a	e1 	. 
	pop de			;ea3b	d1 	. 
	pop bc			;ea3c	c1 	. 
	ret			;ea3d	c9 	. 
sub_ea3eh:
	ld a,(ix+038h)		;ea3e	dd 7e 38 	. ~ 8 
	add a,030h		;ea41	c6 30 	. 0 
	ld hl,00016h		;ea43	21 16 00 	! . . 
	ld d,(ix+046h)		;ea46	dd 56 46 	. V F 
	ld e,(ix+047h)		;ea49	dd 5e 47 	. ^ G 
	add hl,de			;ea4c	19 	. 
	ld (hl),a			;ea4d	77 	w 
	ret			;ea4e	c9 	. 
	push bc			;ea4f	c5 	. 
	push de			;ea50	d5 	. 
	push hl			;ea51	e5 	. 
	ld h,(ix+03bh)		;ea52	dd 66 3b 	. f ; 
	ld l,(ix+03ch)		;ea55	dd 6e 3c 	. n < 
	ld d,(ix+042h)		;ea58	dd 56 42 	. V B 
	ld e,(ix+043h)		;ea5b	dd 5e 43 	. ^ C 
	call sub_ea85h		;ea5e	cd 85 ea 	. . . 
	ex de,hl			;ea61	eb 	. 
	call sub_dfb8h		;ea62	cd b8 df 	. . . 
	ld b,000h		;ea65	06 00 	. . 
	ld c,a			;ea67	4f 	O 
	neg		;ea68	ed 44 	. D 
	ld h,0ffh		;ea6a	26 ff 	& . 
	ld l,a			;ea6c	6f 	o 
	ld de,00018h		;ea6d	11 18 00 	. . . 
	add hl,de			;ea70	19 	. 
	ld d,(ix+046h)		;ea71	dd 56 46 	. V F 
	ld e,(ix+047h)		;ea74	dd 5e 47 	. ^ G 
	add hl,de			;ea77	19 	. 
	ex de,hl			;ea78	eb 	. 
	ld h,(ix+042h)		;ea79	dd 66 42 	. f B 
	ld l,(ix+043h)		;ea7c	dd 6e 43 	. n C 
	ldir		;ea7f	ed b0 	. . 
	pop hl			;ea81	e1 	. 
	pop de			;ea82	d1 	. 
	pop bc			;ea83	c1 	. 
	ret			;ea84	c9 	. 
sub_ea85h:
	push af			;ea85	f5 	. 
	push bc			;ea86	c5 	. 
	push de			;ea87	d5 	. 
	push hl			;ea88	e5 	. 
	push de			;ea89	d5 	. 
	exx			;ea8a	d9 	. 
	pop hl			;ea8b	e1 	. 
	exx			;ea8c	d9 	. 
	sub a			;ea8d	97 	. 
	ld b,005h		;ea8e	06 05 	. . 
lea90h:
	ld (de),a			;ea90	12 	. 
	inc de			;ea91	13 	. 
	djnz lea90h		;ea92	10 fc 	. . 
	call sub_e2ffh		;ea94	cd ff e2 	. . . 
	ld b,003h		;ea97	06 03 	. . 
lea99h:
	ld a,(de)			;ea99	1a 	. 
	call sub_e2ceh		;ea9a	cd ce e2 	. . . 
	ld a,h			;ea9d	7c 	| 
	exx			;ea9e	d9 	. 
	ld (hl),a			;ea9f	77 	w 
	inc hl			;eaa0	23 	# 
	exx			;eaa1	d9 	. 
	ld a,l			;eaa2	7d 	} 
	exx			;eaa3	d9 	. 
	ld (hl),a			;eaa4	77 	w 
	inc hl			;eaa5	23 	# 
	exx			;eaa6	d9 	. 
	inc de			;eaa7	13 	. 
	djnz lea99h		;eaa8	10 ef 	. . 
	pop hl			;eaaa	e1 	. 
	pop de			;eaab	d1 	. 
	pop bc			;eaac	c1 	. 
	pop af			;eaad	f1 	. 
	ret			;eaae	c9 	. 
sub_eaafh:
	push af			;eaaf	f5 	. 
	push de			;eab0	d5 	. 
	ld a,h			;eab1	7c 	| 
	call sub_e2a5h		;eab2	cd a5 e2 	. . . 
	inc de			;eab5	13 	. 
	inc de			;eab6	13 	. 
	ld a,l			;eab7	7d 	} 
	call sub_e2a5h		;eab8	cd a5 e2 	. . . 
	pop de			;eabb	d1 	. 
	pop af			;eabc	f1 	. 
	ret			;eabd	c9 	. 
	rst 38h			;eabe	ff 	. 
	rst 38h			;eabf	ff 	. 
leac0h:
	push hl			;eac0	e5 	. 
	push hl			;eac1	e5 	. 
	push af			;eac2	f5 	. 
	push de			;eac3	d5 	. 
	push bc			;eac4	c5 	. 
	ld hl,0000bh		;eac5	21 0b 00 	! . . 
	add hl,sp			;eac8	39 	9 
	ld d,(hl)			;eac9	56 	V 
	in a,(019h)		;eaca	db 19 	. . 
	ld (hl),a			;eacc	77 	w 
	dec hl			;eacd	2b 	+ 
	ld e,(hl)			;eace	5e 	^ 
	dec hl			;eacf	2b 	+ 
	ld a,(de)			;ead0	1a 	. 
	ld (07900h),a		;ead1	32 00 79 	2 . y 
	out (019h),a		;ead4	d3 19 	. . 
	inc de			;ead6	13 	. 
	push hl			;ead7	e5 	. 
	ld a,(00081h)		;ead8	3a 81 00 	: . . 
	ld l,a			;eadb	6f 	o 
	ld a,(00082h)		;eadc	3a 82 00 	: . . 
	ld h,a			;eadf	67 	g 
	ld bc,00034h		;eae0	01 34 00 	. 4 . 
	add hl,bc			;eae3	09 	. 
	push hl			;eae4	e5 	. 
	pop bc			;eae5	c1 	. 
	pop hl			;eae6	e1 	. 
	ld (hl),b			;eae7	70 	p 
	dec hl			;eae8	2b 	+ 
	ld (hl),c			;eae9	71 	q 
	ld a,(de)			;eaea	1a 	. 
	ld l,a			;eaeb	6f 	o 
	inc de			;eaec	13 	. 
	ld a,(de)			;eaed	1a 	. 
	ld h,a			;eaee	67 	g 
	pop bc			;eaef	c1 	. 
	pop de			;eaf0	d1 	. 
	pop af			;eaf1	f1 	. 
	ex (sp),hl			;eaf2	e3 	. 
	ret			;eaf3	c9 	. 
	push af			;eaf4	f5 	. 
	push hl			;eaf5	e5 	. 
	ld hl,00005h		;eaf6	21 05 00 	! . . 
	add hl,sp			;eaf9	39 	9 
	ld a,(hl)			;eafa	7e 	~ 
	ld (07900h),a		;eafb	32 00 79 	2 . y 
	out (019h),a		;eafe	d3 19 	. . 
	pop hl			;eb00	e1 	. 
	pop af			;eb01	f1 	. 
	inc sp			;eb02	33 	3 
	inc sp			;eb03	33 	3 
	ret			;eb04	c9 	. 
leb05h:
	rst 38h			;eb05	ff 	. 
	rst 38h			;eb06	ff 	. 
	rst 38h			;eb07	ff 	. 
	rst 38h			;eb08	ff 	. 
	rst 38h			;eb09	ff 	. 
	rst 38h			;eb0a	ff 	. 
	rst 38h			;eb0b	ff 	. 
	rst 38h			;eb0c	ff 	. 
	rst 38h			;eb0d	ff 	. 
	rst 38h			;eb0e	ff 	. 
	rst 38h			;eb0f	ff 	. 
leb10h:
	ld bc,048bdh		;eb10	01 bd 48 	. . H 
	inc bc			;eb13	03 	. 
	rst 38h			;eb14	ff 	. 
	jp po,0bd01h		;eb15	e2 01 bd 	. . . 
	dec l			;eb18	2d 	- 
	inc bc			;eb19	03 	. 
	rst 38h			;eb1a	ff 	. 
	ex de,hl			;eb1b	eb 	. 
	ld bc,0afbch		;eb1c	01 bc af 	. . . 
	inc bc			;eb1f	03 	. 
	rst 38h			;eb20	ff 	. 
	ret pe			;eb21	e8 	. 
	ld bc,le1bdh		;eb22	01 bd e1 	. . . 
	ld bc,0adbeh		;eb25	01 be ad 	. . . 
	ld bc,025bfh		;eb28	01 bf 25 	. . % 
	ld bc,01fbfh		;eb2b	01 bf 1f 	. . . 
	ld bc,le8bfh		;eb2e	01 bf e8 	. . . 
	ld bc,062beh		;eb31	01 be 62 	. . b 
	ld bc,lf1bfh		;eb34	01 bf f1 	. . . 
	ld bc,lebbfh		;eb37	01 bf eb 	. . . 
	ld bc,leebfh		;eb3a	01 bf ee 	. . . 
	ld bc,053beh		;eb3d	01 be 53 	. . S 
	ld bc,lfdbch		;eb40	01 bc fd 	. . . 
leb43h:
	ld a,(07901h)		;eb43	3a 01 79 	: . y 
	and 010h		;eb46	e6 10 	. . 
	jp nz,ld680h		;eb48	c2 80 d6 	. . . 
	ld a,000h		;eb4b	3e 00 	> . 
	jp ld696h		;eb4d	c3 96 d6 	. . . 
leb50h:
	ld a,(07901h)		;eb50	3a 01 79 	: . y 
	and 010h		;eb53	e6 10 	. . 
	jp nz,le496h		;eb55	c2 96 e4 	. . . 
	ld a,000h		;eb58	3e 00 	> . 
	jp le4aeh		;eb5a	c3 ae e4 	. . . 
leb5dh:
	cp 019h		;eb5d	fe 19 	. . 
	jp nz,ld63eh		;eb5f	c2 3e d6 	. > . 
	ld a,(07901h)		;eb62	3a 01 79 	: . y 
	and 010h		;eb65	e6 10 	. . 
	jp nz,ld659h		;eb67	c2 59 d6 	. Y . 
	ld a,(079dah)		;eb6a	3a da 79 	: . y 
	and 0fdh		;eb6d	e6 fd 	. . 
	ld (079dah),a		;eb6f	32 da 79 	2 . y 
	ld a,003h		;eb72	3e 03 	> . 
	jp 0be2ch		;eb74	c3 2c be 	. , . 
leb77h:
	cp 019h		;eb77	fe 19 	. . 
	jp nz,le469h		;eb79	c2 69 e4 	. i . 
	ld a,(07901h)		;eb7c	3a 01 79 	: . y 
	and 010h		;eb7f	e6 10 	. . 
	jp nz,le485h		;eb81	c2 85 e4 	. . . 
	ld a,(079dah)		;eb84	3a da 79 	: . y 
	and 0fdh		;eb87	e6 fd 	. . 
	ld (079dah),a		;eb89	32 da 79 	2 . y 
	ld a,003h		;eb8c	3e 03 	> . 
	jp 0be2ch		;eb8e	c3 2c be 	. , . 
leb91h:
	cp 050h		;eb91	fe 50 	. P 
	jr z,leb9ch		;eb93	28 07 	( . 
	cp 0d0h		;eb95	fe d0 	. . 
	jr z,leb9ch		;eb97	28 03 	( . 
	jp le443h		;eb99	c3 43 e4 	. C . 
leb9ch:
	ld a,(07901h)		;eb9c	3a 01 79 	: . y 
	and 0efh		;eb9f	e6 ef 	. . 
	ld (07901h),a		;eba1	32 01 79 	2 . y 
	jp le47ah		;eba4	c3 7a e4 	. z . 
	rst 38h			;eba7	ff 	. 
	rst 38h			;eba8	ff 	. 
	rst 38h			;eba9	ff 	. 
	rst 38h			;ebaa	ff 	. 
	rst 38h			;ebab	ff 	. 
	rst 38h			;ebac	ff 	. 
	rst 38h			;ebad	ff 	. 
	rst 38h			;ebae	ff 	. 
	rst 38h			;ebaf	ff 	. 
	rst 38h			;ebb0	ff 	. 
	rst 38h			;ebb1	ff 	. 
	rst 38h			;ebb2	ff 	. 
	rst 38h			;ebb3	ff 	. 
	rst 38h			;ebb4	ff 	. 
	rst 38h			;ebb5	ff 	. 
	rst 38h			;ebb6	ff 	. 
	rst 38h			;ebb7	ff 	. 
	rst 38h			;ebb8	ff 	. 
	rst 38h			;ebb9	ff 	. 
	rst 38h			;ebba	ff 	. 
	rst 38h			;ebbb	ff 	. 
	rst 38h			;ebbc	ff 	. 
	rst 38h			;ebbd	ff 	. 
	rst 38h			;ebbe	ff 	. 
lebbfh:
	rst 38h			;ebbf	ff 	. 
	rst 38h			;ebc0	ff 	. 
	rst 38h			;ebc1	ff 	. 
	rst 38h			;ebc2	ff 	. 
	rst 38h			;ebc3	ff 	. 
	rst 38h			;ebc4	ff 	. 
	rst 38h			;ebc5	ff 	. 
	rst 38h			;ebc6	ff 	. 
	rst 38h			;ebc7	ff 	. 
	rst 38h			;ebc8	ff 	. 
	rst 38h			;ebc9	ff 	. 
	rst 38h			;ebca	ff 	. 
	rst 38h			;ebcb	ff 	. 
	rst 38h			;ebcc	ff 	. 
	rst 38h			;ebcd	ff 	. 
	rst 38h			;ebce	ff 	. 
	rst 38h			;ebcf	ff 	. 
	rst 38h			;ebd0	ff 	. 
	rst 38h			;ebd1	ff 	. 
	rst 38h			;ebd2	ff 	. 
	rst 38h			;ebd3	ff 	. 
	rst 38h			;ebd4	ff 	. 
	rst 38h			;ebd5	ff 	. 
	rst 38h			;ebd6	ff 	. 
	rst 38h			;ebd7	ff 	. 
	rst 38h			;ebd8	ff 	. 
	rst 38h			;ebd9	ff 	. 
	rst 38h			;ebda	ff 	. 
	rst 38h			;ebdb	ff 	. 
	rst 38h			;ebdc	ff 	. 
	rst 38h			;ebdd	ff 	. 
	rst 38h			;ebde	ff 	. 
	rst 38h			;ebdf	ff 	. 
	rst 38h			;ebe0	ff 	. 
	rst 38h			;ebe1	ff 	. 
	rst 38h			;ebe2	ff 	. 
	rst 38h			;ebe3	ff 	. 
	rst 38h			;ebe4	ff 	. 
	rst 38h			;ebe5	ff 	. 
	rst 38h			;ebe6	ff 	. 
	rst 38h			;ebe7	ff 	. 
	rst 38h			;ebe8	ff 	. 
	rst 38h			;ebe9	ff 	. 
	rst 38h			;ebea	ff 	. 
	rst 38h			;ebeb	ff 	. 
	rst 38h			;ebec	ff 	. 
	rst 38h			;ebed	ff 	. 
	rst 38h			;ebee	ff 	. 
	rst 38h			;ebef	ff 	. 
	rst 38h			;ebf0	ff 	. 
	rst 38h			;ebf1	ff 	. 
	rst 38h			;ebf2	ff 	. 
	rst 38h			;ebf3	ff 	. 
	rst 38h			;ebf4	ff 	. 
	rst 38h			;ebf5	ff 	. 
	rst 38h			;ebf6	ff 	. 
	rst 38h			;ebf7	ff 	. 
	rst 38h			;ebf8	ff 	. 
	rst 38h			;ebf9	ff 	. 
	rst 38h			;ebfa	ff 	. 
	rst 38h			;ebfb	ff 	. 
	rst 38h			;ebfc	ff 	. 
	rst 38h			;ebfd	ff 	. 
	rst 38h			;ebfe	ff 	. 
	rst 38h			;ebff	ff 	. 
lec00h:
	ld b,d			;ec00	42 	B 
	nop			;ec01	00 	. 
	ld b,d			;ec02	42 	B 
	nop			;ec03	00 	. 
	nop			;ec04	00 	. 
	nop			;ec05	00 	. 
	nop			;ec06	00 	. 
	ld bc,04300h		;ec07	01 00 43 	. . C 
	nop			;ec0a	00 	. 
	ld b,e			;ec0b	43 	C 
	nop			;ec0c	00 	. 
	nop			;ec0d	00 	. 
	nop			;ec0e	00 	. 
	nop			;ec0f	00 	. 
	ld bc,04401h		;ec10	01 01 44 	. . D 
	nop			;ec13	00 	. 
	ld b,h			;ec14	44 	D 
	nop			;ec15	00 	. 
	nop			;ec16	00 	. 
	nop			;ec17	00 	. 
	nop			;ec18	00 	. 
	ld bc,04502h		;ec19	01 02 45 	. . E 
	nop			;ec1c	00 	. 
	ld b,l			;ec1d	45 	E 
	nop			;ec1e	00 	. 
	nop			;ec1f	00 	. 
	nop			;ec20	00 	. 
	nop			;ec21	00 	. 
	ld bc,04803h		;ec22	01 03 48 	. . H 
	nop			;ec25	00 	. 
	ld c,b			;ec26	48 	H 
	nop			;ec27	00 	. 
	nop			;ec28	00 	. 
	nop			;ec29	00 	. 
	nop			;ec2a	00 	. 
	ld bc,04c04h		;ec2b	01 04 4c 	. . L 
	nop			;ec2e	00 	. 
	ld c,h			;ec2f	4c 	L 
	nop			;ec30	00 	. 
	nop			;ec31	00 	. 
	nop			;ec32	00 	. 
	nop			;ec33	00 	. 
	ld bc,04105h		;ec34	01 05 41 	. . A 
	nop			;ec37	00 	. 
	ld b,c			;ec38	41 	A 
	nop			;ec39	00 	. 
	nop			;ec3a	00 	. 
	nop			;ec3b	00 	. 
	nop			;ec3c	00 	. 
	ld bc,04907h		;ec3d	01 07 49 	. . I 
	nop			;ec40	00 	. 
	ld c,c			;ec41	49 	I 
	nop			;ec42	00 	. 
	nop			;ec43	00 	. 
	nop			;ec44	00 	. 
	nop			;ec45	00 	. 
	ld bc,05206h		;ec46	01 06 52 	. . R 
	nop			;ec49	00 	. 
	ld d,d			;ec4a	52 	R 
	nop			;ec4b	00 	. 
	nop			;ec4c	00 	. 
	nop			;ec4d	00 	. 
	nop			;ec4e	00 	. 
	ld bc,08508h		;ec4f	01 08 85 	. . . 
	nop			;ec52	00 	. 
	ld b,d			;ec53	42 	B 
	ld b,e			;ec54	43 	C 
	nop			;ec55	00 	. 
	nop			;ec56	00 	. 
	nop			;ec57	00 	. 
	ld (bc),a			;ec58	02 	. 
	add hl,bc			;ec59	09 	. 
	adc a,c			;ec5a	89 	. 
	nop			;ec5b	00 	. 
	ld b,h			;ec5c	44 	D 
	ld b,l			;ec5d	45 	E 
	nop			;ec5e	00 	. 
	nop			;ec5f	00 	. 
	nop			;ec60	00 	. 
	ld (bc),a			;ec61	02 	. 
	ld a,(bc)			;ec62	0a 	. 
	sub h			;ec63	94 	. 
	nop			;ec64	00 	. 
	ld c,b			;ec65	48 	H 
	ld c,h			;ec66	4c 	L 
	nop			;ec67	00 	. 
	nop			;ec68	00 	. 
	nop			;ec69	00 	. 
	ld (bc),a			;ec6a	02 	. 
	dec bc			;ec6b	0b 	. 
	add a,a			;ec6c	87 	. 
	nop			;ec6d	00 	. 
	ld b,c			;ec6e	41 	A 
	ld b,(hl)			;ec6f	46 	F 
	nop			;ec70	00 	. 
	nop			;ec71	00 	. 
	nop			;ec72	00 	. 
	ld (bc),a			;ec73	02 	. 
	rrca			;ec74	0f 	. 
	and c			;ec75	a1 	. 
	nop			;ec76	00 	. 
	ld c,c			;ec77	49 	I 
	ld e,b			;ec78	58 	X 
	nop			;ec79	00 	. 
	nop			;ec7a	00 	. 
	nop			;ec7b	00 	. 
	ld (bc),a			;ec7c	02 	. 
	dec c			;ec7d	0d 	. 
	and d			;ec7e	a2 	. 
	nop			;ec7f	00 	. 
	ld c,c			;ec80	49 	I 
	ld e,c			;ec81	59 	Y 
	nop			;ec82	00 	. 
	nop			;ec83	00 	. 
	nop			;ec84	00 	. 
	ld (bc),a			;ec85	02 	. 
	ld c,0a3h		;ec86	0e a3 	. . 
	nop			;ec88	00 	. 
	ld d,e			;ec89	53 	S 
	ld d,b			;ec8a	50 	P 
	nop			;ec8b	00 	. 
	nop			;ec8c	00 	. 
	nop			;ec8d	00 	. 
	ld (bc),a			;ec8e	02 	. 
	inc c			;ec8f	0c 	. 
	xor b			;ec90	a8 	. 
	nop			;ec91	00 	. 
	ld c,(hl)			;ec92	4e 	N 
	ld e,d			;ec93	5a 	Z 
	nop			;ec94	00 	. 
	nop			;ec95	00 	. 
	nop			;ec96	00 	. 
	inc bc			;ec97	03 	. 
	djnz lecf4h		;ec98	10 5a 	. Z 
	nop			;ec9a	00 	. 
	ld e,d			;ec9b	5a 	Z 
	nop			;ec9c	00 	. 
	nop			;ec9d	00 	. 
	nop			;ec9e	00 	. 
	nop			;ec9f	00 	. 
	inc bc			;eca0	03 	. 
	ld de,00091h		;eca1	11 91 00 	. . . 
	ld c,(hl)			;eca4	4e 	N 
	ld b,e			;eca5	43 	C 
	nop			;eca6	00 	. 
	nop			;eca7	00 	. 
	nop			;eca8	00 	. 
	inc bc			;eca9	03 	. 
	ld (de),a			;ecaa	12 	. 
	ld b,e			;ecab	43 	C 
	nop			;ecac	00 	. 
	ld b,e			;ecad	43 	C 
	nop			;ecae	00 	. 
	nop			;ecaf	00 	. 
	nop			;ecb0	00 	. 
	nop			;ecb1	00 	. 
	inc bc			;ecb2	03 	. 
	ld bc,0009fh		;ecb3	01 9f 00 	. . . 
	ld d,b			;ecb6	50 	P 
	ld c,a			;ecb7	4f 	O 
	nop			;ecb8	00 	. 
	nop			;ecb9	00 	. 
	nop			;ecba	00 	. 
	inc bc			;ecbb	03 	. 
	inc d			;ecbc	14 	. 
	sub l			;ecbd	95 	. 
	nop			;ecbe	00 	. 
	ld d,b			;ecbf	50 	P 
	ld b,l			;ecc0	45 	E 
	nop			;ecc1	00 	. 
	nop			;ecc2	00 	. 
	nop			;ecc3	00 	. 
	inc bc			;ecc4	03 	. 
	dec d			;ecc5	15 	. 
	ld d,b			;ecc6	50 	P 
	nop			;ecc7	00 	. 
	ld d,b			;ecc8	50 	P 
	nop			;ecc9	00 	. 
	nop			;ecca	00 	. 
	nop			;eccb	00 	. 
	nop			;eccc	00 	. 
	inc bc			;eccd	03 	. 
	ld d,04dh		;ecce	16 4d 	. M 
	nop			;ecd0	00 	. 
	ld c,l			;ecd1	4d 	M 
	nop			;ecd2	00 	. 
	nop			;ecd3	00 	. 
	nop			;ecd4	00 	. 
	nop			;ecd5	00 	. 
	inc bc			;ecd6	03 	. 
	rla			;ecd7	17 	. 
	sub b			;ecd8	90 	. 
	nop			;ecd9	00 	. 
	ld c,h			;ecda	4c 	L 
	ld b,h			;ecdb	44 	D 
	nop			;ecdc	00 	. 
	nop			;ecdd	00 	. 
	nop			;ecde	00 	. 
	inc b			;ecdf	04 	. 
	nop			;ece0	00 	. 
	ld b,b			;ece1	40 	@ 
	ld bc,05550h		;ece2	01 50 55 	. P U 
	ld d,e			;ece5	53 	S 
	ld c,b			;ece6	48 	H 
	nop			;ece7	00 	. 
	inc b			;ece8	04 	. 
	ld bc,000efh		;ece9	01 ef 00 	. . . 
	ld d,b			;ecec	50 	P 
	ld c,a			;eced	4f 	O 
	ld d,b			;ecee	50 	P 
	nop			;ecef	00 	. 
	nop			;ecf0	00 	. 
	inc b			;ecf1	04 	. 
	ld (bc),a			;ecf2	02 	. 
	sbc a,l			;ecf3	9d 	. 
lecf4h:
	nop			;ecf4	00 	. 
	ld b,l			;ecf5	45 	E 
	ld e,b			;ecf6	58 	X 
	nop			;ecf7	00 	. 
	nop			;ecf8	00 	. 
	nop			;ecf9	00 	. 
	inc b			;ecfa	04 	. 
	inc bc			;ecfb	03 	. 
	push af			;ecfc	f5 	. 
	nop			;ecfd	00 	. 
	ld b,l			;ecfe	45 	E 
	ld e,b			;ecff	58 	X 
	ld e,b			;ed00	58 	X 
	nop			;ed01	00 	. 
	nop			;ed02	00 	. 
	inc b			;ed03	04 	. 
	inc b			;ed04	04 	. 
	exx			;ed05	d9 	. 
	nop			;ed06	00 	. 
	ld c,h			;ed07	4c 	L 
	ld b,h			;ed08	44 	D 
	ld c,c			;ed09	49 	I 
	nop			;ed0a	00 	. 
	nop			;ed0b	00 	. 
	inc b			;ed0c	04 	. 
	dec b			;ed0d	05 	. 
	dec hl			;ed0e	2b 	+ 
	ld bc,0444ch		;ed0f	01 4c 44 	. L D 
	ld c,c			;ed12	49 	I 
	ld d,d			;ed13	52 	R 
	nop			;ed14	00 	. 
	inc b			;ed15	04 	. 
	ld b,0d4h		;ed16	06 d4 	. . 
	nop			;ed18	00 	. 
	ld c,h			;ed19	4c 	L 
	ld b,h			;ed1a	44 	D 
	ld b,h			;ed1b	44 	D 
	nop			;ed1c	00 	. 
	nop			;ed1d	00 	. 
	inc b			;ed1e	04 	. 
	rlca			;ed1f	07 	. 
	ld h,001h		;ed20	26 01 	& . 
	ld c,h			;ed22	4c 	L 
	ld b,h			;ed23	44 	D 
	ld b,h			;ed24	44 	D 
	ld d,d			;ed25	52 	R 
	nop			;ed26	00 	. 
	inc b			;ed27	04 	. 
	ex af,af'			;ed28	08 	. 
	call c,04300h		;ed29	dc 00 43 	. . C 
	ld d,b			;ed2c	50 	P 
	ld c,c			;ed2d	49 	I 
	nop			;ed2e	00 	. 
	nop			;ed2f	00 	. 
	inc b			;ed30	04 	. 
	add hl,bc			;ed31	09 	. 
	ld l,001h		;ed32	2e 01 	. . 
	ld b,e			;ed34	43 	C 
	ld d,b			;ed35	50 	P 
	ld c,c			;ed36	49 	I 
	ld d,d			;ed37	52 	R 
	nop			;ed38	00 	. 
	inc b			;ed39	04 	. 
	ld a,(bc)			;ed3a	0a 	. 
	rst 10h			;ed3b	d7 	. 
	nop			;ed3c	00 	. 
	ld b,e			;ed3d	43 	C 
	ld d,b			;ed3e	50 	P 
	ld b,h			;ed3f	44 	D 
	nop			;ed40	00 	. 
	nop			;ed41	00 	. 
	inc b			;ed42	04 	. 
	dec bc			;ed43	0b 	. 
	add hl,hl			;ed44	29 	) 
led45h:
	ld bc,05043h		;ed45	01 43 50 	. C P 
	ld b,h			;ed48	44 	D 
	ld d,d			;ed49	52 	R 
	nop			;ed4a	00 	. 
	inc b			;ed4b	04 	. 
	inc c			;ed4c	0c 	. 
	ret			;ed4d	c9 	. 
	nop			;ed4e	00 	. 
	ld b,c			;ed4f	41 	A 
	ld b,h			;ed50	44 	D 
	ld b,h			;ed51	44 	D 
	nop			;ed52	00 	. 
	nop			;ed53	00 	. 
	inc b			;ed54	04 	. 
	dec c			;ed55	0d 	. 
	ret z			;ed56	c8 	. 
	nop			;ed57	00 	. 
	ld b,c			;ed58	41 	A 
	ld b,h			;ed59	44 	D 
	ld b,e			;ed5a	43 	C 
	nop			;ed5b	00 	. 
	nop			;ed5c	00 	. 
	inc b			;ed5d	04 	. 
	ld c,0eah		;ed5e	0e ea 	. . 
	nop			;ed60	00 	. 
	ld d,e			;ed61	53 	S 
	ld d,l			;ed62	55 	U 
	ld b,d			;ed63	42 	B 
	nop			;ed64	00 	. 
	nop			;ed65	00 	. 
	inc b			;ed66	04 	. 
	rrca			;ed67	0f 	. 
	ret c			;ed68	d8 	. 
	nop			;ed69	00 	. 
	ld d,e			;ed6a	53 	S 
	ld b,d			;ed6b	42 	B 
	ld b,e			;ed6c	43 	C 
	nop			;ed6d	00 	. 
	nop			;ed6e	00 	. 
	inc b			;ed6f	04 	. 
	djnz led45h		;ed70	10 d3 	. . 
	nop			;ed72	00 	. 
	ld b,c			;ed73	41 	A 
	ld c,(hl)			;ed74	4e 	N 
	ld b,h			;ed75	44 	D 
	nop			;ed76	00 	. 
	nop			;ed77	00 	. 
	inc b			;ed78	04 	. 
	ld de,000a1h		;ed79	11 a1 00 	. . . 
	ld c,a			;ed7c	4f 	O 
	ld d,d			;ed7d	52 	R 
	nop			;ed7e	00 	. 
	nop			;ed7f	00 	. 
	nop			;ed80	00 	. 
	inc b			;ed81	04 	. 
	ld (de),a			;ed82	12 	. 
	ld sp,hl			;ed83	f9 	. 
	nop			;ed84	00 	. 
	ld e,b			;ed85	58 	X 
	ld c,a			;ed86	4f 	O 
	ld d,d			;ed87	52 	R 
	nop			;ed88	00 	. 
	nop			;ed89	00 	. 
	inc b			;ed8a	04 	. 
	inc de			;ed8b	13 	. 
	sub e			;ed8c	93 	. 
	nop			;ed8d	00 	. 
	ld b,e			;ed8e	43 	C 
	ld d,b			;ed8f	50 	P 
	nop			;ed90	00 	. 
	nop			;ed91	00 	. 
	nop			;ed92	00 	. 
	inc b			;ed93	04 	. 
led94h:
	inc d			;ed94	14 	. 
	jp c,04900h		;ed95	da 00 49 	. . I 
	ld c,(hl)			;ed98	4e 	N 
	ld b,e			;ed99	43 	C 
	nop			;ed9a	00 	. 
	nop			;ed9b	00 	. 
	inc b			;ed9c	04 	. 
	dec d			;ed9d	15 	. 
	call z,04400h		;ed9e	cc 00 44 	. . D 
	ld b,l			;eda1	45 	E 
	ld b,e			;eda2	43 	C 
	nop			;eda3	00 	. 
	nop			;eda4	00 	. 
	inc b			;eda5	04 	. 
	ld d,0c6h		;eda6	16 c6 	. . 
	nop			;eda8	00 	. 
	ld b,h			;eda9	44 	D 
	ld b,c			;edaa	41 	A 
	ld b,c			;edab	41 	A 
	nop			;edac	00 	. 
	nop			;edad	00 	. 
	inc b			;edae	04 	. 
	rla			;edaf	17 	. 
	rst 18h			;edb0	df 	. 
	nop			;edb1	00 	. 
	ld b,e			;edb2	43 	C 
	ld d,b			;edb3	50 	P 
	ld c,h			;edb4	4c 	L 
	nop			;edb5	00 	. 
	nop			;edb6	00 	. 
	inc b			;edb7	04 	. 
	jr led94h		;edb8	18 da 	. . 
	nop			;edba	00 	. 
	ld c,(hl)			;edbb	4e 	N 
	ld b,l			;edbc	45 	E 
	ld b,a			;edbd	47 	G 
	nop			;edbe	00 	. 
	nop			;edbf	00 	. 
	inc b			;edc0	04 	. 
	add hl,de			;edc1	19 	. 
	call z,04300h		;edc2	cc 00 43 	. . C 
	ld b,e			;edc5	43 	C 
	ld b,(hl)			;edc6	46 	F 
	nop			;edc7	00 	. 
	nop			;edc8	00 	. 
	inc b			;edc9	04 	. 
	ld a,(de)			;edca	1a 	. 
	call c,05300h		;edcb	dc 00 53 	. . S 
	ld b,e			;edce	43 	C 
	ld b,(hl)			;edcf	46 	F 
	nop			;edd0	00 	. 
	nop			;edd1	00 	. 
	inc b			;edd2	04 	. 
	dec de			;edd3	1b 	. 
	defb 0edh;next byte illegal after ed		;edd4	ed 	. 
	nop			;edd5	00 	. 
	ld c,(hl)			;edd6	4e 	N 
	ld c,a			;edd7	4f 	O 
	ld d,b			;edd8	50 	P 
	nop			;edd9	00 	. 
	nop			;edda	00 	. 
	inc b			;eddb	04 	. 
	inc e			;eddc	1c 	. 
	add hl,hl			;eddd	29 	) 
	ld bc,04148h		;edde	01 48 41 	. H A 
	ld c,h			;ede1	4c 	L 
	ld d,h			;ede2	54 	T 
	nop			;ede3	00 	. 
	inc b			;ede4	04 	. 
	dec e			;ede5	1d 	. 
	adc a,l			;ede6	8d 	. 
	nop			;ede7	00 	. 
	ld b,h			;ede8	44 	D 
	ld c,c			;ede9	49 	I 
	nop			;edea	00 	. 
	nop			;edeb	00 	. 
	nop			;edec	00 	. 
	inc b			;eded	04 	. 
	ld e,08eh		;edee	1e 8e 	. . 
	nop			;edf0	00 	. 
	ld b,l			;edf1	45 	E 
	ld c,c			;edf2	49 	I 
	nop			;edf3	00 	. 
	nop			;edf4	00 	. 
	nop			;edf5	00 	. 
	inc b			;edf6	04 	. 
	rra			;edf7	1f 	. 
	sub (hl)			;edf8	96 	. 
	nop			;edf9	00 	. 
	ld c,c			;edfa	49 	I 
	ld c,l			;edfb	4d 	M 
	nop			;edfc	00 	. 
	nop			;edfd	00 	. 
	nop			;edfe	00 	. 
	inc b			;edff	04 	. 
	jr nz,lee24h		;ee00	20 22 	  " 
	ld bc,04c52h		;ee02	01 52 4c 	. R L 
	ld b,e			;ee05	43 	C 
	ld b,c			;ee06	41 	A 
	nop			;ee07	00 	. 
	inc b			;ee08	04 	. 
	ld hl,000dfh		;ee09	21 df 00 	! . . 
	ld d,d			;ee0c	52 	R 
	ld c,h			;ee0d	4c 	L 
	ld b,c			;ee0e	41 	A 
	nop			;ee0f	00 	. 
	nop			;ee10	00 	. 
	inc b			;ee11	04 	. 
	ld (00128h),hl		;ee12	22 28 01 	" ( . 
	ld d,d			;ee15	52 	R 
	ld d,d			;ee16	52 	R 
	ld b,e			;ee17	43 	C 
	ld b,c			;ee18	41 	A 
	nop			;ee19	00 	. 
	inc b			;ee1a	04 	. 
	inc hl			;ee1b	23 	# 
	push hl			;ee1c	e5 	. 
	nop			;ee1d	00 	. 
	ld d,d			;ee1e	52 	R 
	ld d,d			;ee1f	52 	R 
	ld b,c			;ee20	41 	A 
	nop			;ee21	00 	. 
	nop			;ee22	00 	. 
	inc b			;ee23	04 	. 
lee24h:
	inc h			;ee24	24 	$ 
	pop hl			;ee25	e1 	. 
	nop			;ee26	00 	. 
	ld d,d			;ee27	52 	R 
	ld c,h			;ee28	4c 	L 
	ld b,e			;ee29	43 	C 
lee2ah:
	nop			;ee2a	00 	. 
	nop			;ee2b	00 	. 
lee2ch:
	inc b			;ee2c	04 	. 
	dec h			;ee2d	25 	% 
	sbc a,(hl)			;ee2e	9e 	. 
	nop			;ee2f	00 	. 
	ld d,d			;ee30	52 	R 
	ld c,h			;ee31	4c 	L 
	nop			;ee32	00 	. 
	nop			;ee33	00 	. 
	nop			;ee34	00 	. 
	inc b			;ee35	04 	. 
	ld h,0e7h		;ee36	26 e7 	& . 
	nop			;ee38	00 	. 
	ld d,d			;ee39	52 	R 
	ld d,d			;ee3a	52 	R 
	ld b,e			;ee3b	43 	C 
	nop			;ee3c	00 	. 
	nop			;ee3d	00 	. 
	inc b			;ee3e	04 	. 
	daa			;ee3f	27 	' 
	and h			;ee40	a4 	. 
	nop			;ee41	00 	. 
	ld d,d			;ee42	52 	R 
	ld d,d			;ee43	52 	R 
	nop			;ee44	00 	. 
	nop			;ee45	00 	. 
	nop			;ee46	00 	. 
	inc b			;ee47	04 	. 
	jr z,lee2ah		;ee48	28 e0 	( . 
	nop			;ee4a	00 	. 
	ld d,e			;ee4b	53 	S 
	ld c,h			;ee4c	4c 	L 
	ld b,c			;ee4d	41 	A 
	nop			;ee4e	00 	. 
	nop			;ee4f	00 	. 
	inc b			;ee50	04 	. 
	add hl,hl			;ee51	29 	) 
	and 000h		;ee52	e6 00 	. . 
	ld d,e			;ee54	53 	S 
	ld d,d			;ee55	52 	R 
	ld b,c			;ee56	41 	A 
	nop			;ee57	00 	. 
	nop			;ee58	00 	. 
	inc b			;ee59	04 	. 
	ld hl,(000f1h)		;ee5a	2a f1 00 	* . . 
	ld d,e			;ee5d	53 	S 
	ld d,d			;ee5e	52 	R 
	ld c,h			;ee5f	4c 	L 
	nop			;ee60	00 	. 
	nop			;ee61	00 	. 
	inc b			;ee62	04 	. 
	dec hl			;ee63	2b 	+ 
	jp po,05200h		;ee64	e2 00 52 	. . R 
	ld c,h			;ee67	4c 	L 
	ld b,h			;ee68	44 	D 
	nop			;ee69	00 	. 
	nop			;ee6a	00 	. 
	inc b			;ee6b	04 	. 
	inc l			;ee6c	2c 	, 
	ret pe			;ee6d	e8 	. 
	nop			;ee6e	00 	. 
	ld d,d			;ee6f	52 	R 
	ld d,d			;ee70	52 	R 
lee71h:
	ld b,h			;ee71	44 	D 
	nop			;ee72	00 	. 
	nop			;ee73	00 	. 
	inc b			;ee74	04 	. 
	dec l			;ee75	2d 	- 
	rst 18h			;ee76	df 	. 
	nop			;ee77	00 	. 
	ld b,d			;ee78	42 	B 
	ld c,c			;ee79	49 	I 
	ld d,h			;ee7a	54 	T 
	nop			;ee7b	00 	. 
	nop			;ee7c	00 	. 
	inc b			;ee7d	04 	. 
	ld l,0ech		;ee7e	2e ec 	. . 
	nop			;ee80	00 	. 
	ld d,e			;ee81	53 	S 
	ld b,l			;ee82	45 	E 
	ld d,h			;ee83	54 	T 
	nop			;ee84	00 	. 
	nop			;ee85	00 	. 
	inc b			;ee86	04 	. 
	cpl			;ee87	2f 	/ 
	jp pe,05200h		;ee88	ea 00 52 	. . R 
	ld b,l			;ee8b	45 	E 
	ld d,e			;ee8c	53 	S 
	nop			;ee8d	00 	. 
	nop			;ee8e	00 	. 
	inc b			;ee8f	04 	. 
	jr nc,lee2ch		;ee90	30 9a 	0 . 
	nop			;ee92	00 	. 
	ld c,d			;ee93	4a 	J 
	ld d,b			;ee94	50 	P 
	nop			;ee95	00 	. 
	nop			;ee96	00 	. 
	nop			;ee97	00 	. 
	inc b			;ee98	04 	. 
	ld sp,0009ch		;ee99	31 9c 00 	1 . . 
	ld c,d			;ee9c	4a 	J 
	ld d,d			;ee9d	52 	R 
	nop			;ee9e	00 	. 
	nop			;ee9f	00 	. 
	nop			;eea0	00 	. 
	inc b			;eea1	04 	. 
	ld (00136h),a		;eea2	32 36 01 	2 6 . 
	ld b,h			;eea5	44 	D 
	ld c,d			;eea6	4a 	J 
	ld c,(hl)			;eea7	4e 	N 
	ld e,d			;eea8	5a 	Z 
	nop			;eea9	00 	. 
	inc b			;eeaa	04 	. 
	inc sp			;eeab	33 	3 
	inc e			;eeac	1c 	. 
	ld bc,04143h		;eead	01 43 41 	. C A 
	ld c,h			;eeb0	4c 	L 
	ld c,h			;eeb1	4c 	L 
	nop			;eeb2	00 	. 
	inc b			;eeb3	04 	. 
	inc (hl)			;eeb4	34 	4 
	ex de,hl			;eeb5	eb 	. 
	nop			;eeb6	00 	. 
	ld d,d			;eeb7	52 	R 
	ld b,l			;eeb8	45 	E 
	ld d,h			;eeb9	54 	T 
	nop			;eeba	00 	. 
	nop			;eebb	00 	. 
	inc b			;eebc	04 	. 
	dec (hl)			;eebd	35 	5 
	inc (hl)			;eebe	34 	4 
leebfh:
	ld bc,04552h		;eebf	01 52 45 	. R E 
	ld d,h			;eec2	54 	T 
	ld c,c			;eec3	49 	I 
	nop			;eec4	00 	. 
	inc b			;eec5	04 	. 
	ld (hl),039h		;eec6	36 39 	6 9 
	ld bc,04552h		;eec8	01 52 45 	. R E 
	ld d,h			;eecb	54 	T 
	ld c,(hl)			;eecc	4e 	N 
	nop			;eecd	00 	. 
	inc b			;eece	04 	. 
	scf			;eecf	37 	7 
	ld sp,hl			;eed0	f9 	. 
leed1h:
	nop			;eed1	00 	. 
	ld d,d			;eed2	52 	R 
	ld d,e			;eed3	53 	S 
	ld d,h			;eed4	54 	T 
	nop			;eed5	00 	. 
	nop			;eed6	00 	. 
	inc b			;eed7	04 	. 
	jr c,lee71h		;eed8	38 97 	8 . 
	nop			;eeda	00 	. 
	ld c,c			;eedb	49 	I 
	ld c,(hl)			;eedc	4e 	N 
	nop			;eedd	00 	. 
	nop			;eede	00 	. 
	nop			;eedf	00 	. 
	inc b			;eee0	04 	. 
	add hl,sp			;eee1	39 	9 
	ret po			;eee2	e0 	. 
	nop			;eee3	00 	. 
	ld c,c			;eee4	49 	I 
	ld c,(hl)			;eee5	4e 	N 
	ld c,c			;eee6	49 	I 
	nop			;eee7	00 	. 
	nop			;eee8	00 	. 
	inc b			;eee9	04 	. 
	ld a,(00132h)		;eeea	3a 32 01 	: 2 . 
	ld c,c			;eeed	49 	I 
	ld c,(hl)			;eeee	4e 	N 
	ld c,c			;eeef	49 	I 
	ld d,d			;eef0	52 	R 
	nop			;eef1	00 	. 
	inc b			;eef2	04 	. 
	dec sp			;eef3	3b 	; 
	in a,(000h)		;eef4	db 00 	. . 
	ld c,c			;eef6	49 	I 
	ld c,(hl)			;eef7	4e 	N 
	ld b,h			;eef8	44 	D 
	nop			;eef9	00 	. 
	nop			;eefa	00 	. 
	inc b			;eefb	04 	. 
	inc a			;eefc	3c 	< 
	dec l			;eefd	2d 	- 
	ld bc,04e49h		;eefe	01 49 4e 	. I N 
	ld b,h			;ef01	44 	D 
	ld d,d			;ef02	52 	R 
	nop			;ef03	00 	. 
	inc b			;ef04	04 	. 
	dec a			;ef05	3d 	= 
	ret m			;ef06	f8 	. 
	nop			;ef07	00 	. 
	ld c,a			;ef08	4f 	O 
	ld d,l			;ef09	55 	U 
	ld d,h			;ef0a	54 	T 
	nop			;ef0b	00 	. 
	nop			;ef0c	00 	. 
	inc b			;ef0d	04 	. 
	ld a,041h		;ef0e	3e 41 	> A 
	ld bc,0554fh		;ef10	01 4f 55 	. O U 
	ld d,h			;ef13	54 	T 
	ld c,c			;ef14	49 	I 
	nop			;ef15	00 	. 
	inc b			;ef16	04 	. 
	ccf			;ef17	3f 	? 
	ld a,001h		;ef18	3e 01 	> . 
	ld c,a			;ef1a	4f 	O 
	ld d,h			;ef1b	54 	T 
	ld c,c			;ef1c	49 	I 
	ld d,d			;ef1d	52 	R 
	nop			;ef1e	00 	. 
	inc b			;ef1f	04 	. 
	ld b,b			;ef20	40 	@ 
	inc a			;ef21	3c 	< 
	ld bc,0554fh		;ef22	01 4f 55 	. O U 
	ld d,h			;ef25	54 	T 
	ld b,h			;ef26	44 	D 
	nop			;ef27	00 	. 
	inc b			;ef28	04 	. 
	ld b,c			;ef29	41 	A 
	add hl,sp			;ef2a	39 	9 
	ld bc,0544fh		;ef2b	01 4f 54 	. O T 
	ld b,h			;ef2e	44 	D 
	ld d,d			;ef2f	52 	R 
	nop			;ef30	00 	. 
	inc b			;ef31	04 	. 
	ld b,d			;ef32	42 	B 
	add a,(hl)			;ef33	86 	. 
	nop			;ef34	00 	. 
	ld b,h			;ef35	44 	D 
	ld b,d			;ef36	42 	B 
	nop			;ef37	00 	. 
	nop			;ef38	00 	. 
	nop			;ef39	00 	. 
	dec b			;ef3a	05 	. 
	nop			;ef3b	00 	. 
	ld de,04401h		;ef3c	11 01 44 	. . D 
	ld b,l			;ef3f	45 	E 
	ld b,(hl)			;ef40	46 	F 
	ld b,d			;ef41	42 	B 
	nop			;ef42	00 	. 
	dec b			;ef43	05 	. 
	nop			;ef44	00 	. 
	inc e			;ef45	1c 	. 
	ld bc,04544h		;ef46	01 44 45 	. D E 
	ld b,(hl)			;ef49	46 	F 
	ld c,l			;ef4a	4d 	M 
	nop			;ef4b	00 	. 
	dec b			;ef4c	05 	. 
	nop			;ef4d	00 	. 
	sub c			;ef4e	91 	. 
	nop			;ef4f	00 	. 
	ld b,h			;ef50	44 	D 
	ld c,l			;ef51	4d 	M 
	nop			;ef52	00 	. 
	nop			;ef53	00 	. 
	nop			;ef54	00 	. 
	dec b			;ef55	05 	. 
	nop			;ef56	00 	. 
	sbc a,e			;ef57	9b 	. 
	nop			;ef58	00 	. 
	ld b,h			;ef59	44 	D 
	ld d,a			;ef5a	57 	W 
	nop			;ef5b	00 	. 
	nop			;ef5c	00 	. 
	nop			;ef5d	00 	. 
	dec b			;ef5e	05 	. 
	ld bc,00126h		;ef5f	01 26 01 	. & . 
	ld b,h			;ef62	44 	D 
	ld b,l			;ef63	45 	E 
	ld b,(hl)			;ef64	46 	F 
	ld d,a			;ef65	57 	W 
	nop			;ef66	00 	. 
	dec b			;ef67	05 	. 
	ld bc,00097h		;ef68	01 97 00 	. . . 
	ld b,h			;ef6b	44 	D 
	ld d,e			;ef6c	53 	S 
	nop			;ef6d	00 	. 
	nop			;ef6e	00 	. 
	nop			;ef6f	00 	. 
	dec b			;ef70	05 	. 
	ld (bc),a			;ef71	02 	. 
	ld (04401h),hl		;ef72	22 01 44 	" . D 
	ld b,l			;ef75	45 	E 
	ld b,(hl)			;ef76	46 	F 
	ld d,e			;ef77	53 	S 
	nop			;ef78	00 	. 
	dec b			;ef79	05 	. 
	ld (bc),a			;ef7a	02 	. 
	rst 10h			;ef7b	d7 	. 
	nop			;ef7c	00 	. 
	ld b,l			;ef7d	45 	E 
	ld c,(hl)			;ef7e	4e 	N 
	ld b,h			;ef7f	44 	D 
	nop			;ef80	00 	. 
	nop			;ef81	00 	. 
	dec b			;ef82	05 	. 
	inc bc			;ef83	03 	. 
	ex de,hl			;ef84	eb 	. 
	nop			;ef85	00 	. 
	ld b,l			;ef86	45 	E 
	ld d,c			;ef87	51 	Q 
	ld d,l			;ef88	55 	U 
	nop			;ef89	00 	. 
	nop			;ef8a	00 	. 
	dec b			;ef8b	05 	. 
	inc b			;ef8c	04 	. 
	ret pe			;ef8d	e8 	. 
	nop			;ef8e	00 	. 
	ld c,a			;ef8f	4f 	O 
	ld d,d			;ef90	52 	R 
	ld b,a			;ef91	47 	G 
	nop			;ef92	00 	. 
	nop			;ef93	00 	. 
	dec b			;ef94	05 	. 
	dec b			;ef95	05 	. 
	rst 38h			;ef96	ff 	. 
	rst 38h			;ef97	ff 	. 
	rst 38h			;ef98	ff 	. 
	rst 38h			;ef99	ff 	. 
	rst 38h			;ef9a	ff 	. 
	rst 38h			;ef9b	ff 	. 
	rst 38h			;ef9c	ff 	. 
	rst 38h			;ef9d	ff 	. 
	rst 38h			;ef9e	ff 	. 
	rst 38h			;ef9f	ff 	. 
	rst 38h			;efa0	ff 	. 
	rst 38h			;efa1	ff 	. 
	rst 38h			;efa2	ff 	. 
	rst 38h			;efa3	ff 	. 
	rst 38h			;efa4	ff 	. 
	rst 38h			;efa5	ff 	. 
	rst 38h			;efa6	ff 	. 
	rst 38h			;efa7	ff 	. 
	rst 38h			;efa8	ff 	. 
	rst 38h			;efa9	ff 	. 
	rst 38h			;efaa	ff 	. 
	rst 38h			;efab	ff 	. 
	rst 38h			;efac	ff 	. 
	rst 38h			;efad	ff 	. 
	rst 38h			;efae	ff 	. 
	rst 38h			;efaf	ff 	. 
	rst 38h			;efb0	ff 	. 
	rst 38h			;efb1	ff 	. 
	rst 38h			;efb2	ff 	. 
	rst 38h			;efb3	ff 	. 
	rst 38h			;efb4	ff 	. 
	rst 38h			;efb5	ff 	. 
	rst 38h			;efb6	ff 	. 
	rst 38h			;efb7	ff 	. 
	rst 38h			;efb8	ff 	. 
	rst 38h			;efb9	ff 	. 
	rst 38h			;efba	ff 	. 
	rst 38h			;efbb	ff 	. 
	rst 38h			;efbc	ff 	. 
	rst 38h			;efbd	ff 	. 
	rst 38h			;efbe	ff 	. 
	rst 38h			;efbf	ff 	. 
	rst 38h			;efc0	ff 	. 
	rst 38h			;efc1	ff 	. 
	rst 38h			;efc2	ff 	. 
	rst 38h			;efc3	ff 	. 
	rst 38h			;efc4	ff 	. 
	rst 38h			;efc5	ff 	. 
	rst 38h			;efc6	ff 	. 
	rst 38h			;efc7	ff 	. 
	rst 38h			;efc8	ff 	. 
	rst 38h			;efc9	ff 	. 
	rst 38h			;efca	ff 	. 
	rst 38h			;efcb	ff 	. 
	rst 38h			;efcc	ff 	. 
	rst 38h			;efcd	ff 	. 
	rst 38h			;efce	ff 	. 
	rst 38h			;efcf	ff 	. 
	rst 38h			;efd0	ff 	. 
	rst 38h			;efd1	ff 	. 
	rst 38h			;efd2	ff 	. 
	rst 38h			;efd3	ff 	. 
	rst 38h			;efd4	ff 	. 
	rst 38h			;efd5	ff 	. 
	rst 38h			;efd6	ff 	. 
	rst 38h			;efd7	ff 	. 
	rst 38h			;efd8	ff 	. 
	rst 38h			;efd9	ff 	. 
	rst 38h			;efda	ff 	. 
	rst 38h			;efdb	ff 	. 
	rst 38h			;efdc	ff 	. 
	rst 38h			;efdd	ff 	. 
	rst 38h			;efde	ff 	. 
	rst 38h			;efdf	ff 	. 
	rst 38h			;efe0	ff 	. 
	rst 38h			;efe1	ff 	. 
	rst 38h			;efe2	ff 	. 
	rst 38h			;efe3	ff 	. 
	rst 38h			;efe4	ff 	. 
	rst 38h			;efe5	ff 	. 
	rst 38h			;efe6	ff 	. 
	rst 38h			;efe7	ff 	. 
	rst 38h			;efe8	ff 	. 
	rst 38h			;efe9	ff 	. 
	rst 38h			;efea	ff 	. 
	rst 38h			;efeb	ff 	. 
	rst 38h			;efec	ff 	. 
	rst 38h			;efed	ff 	. 
	rst 38h			;efee	ff 	. 
	rst 38h			;efef	ff 	. 
	rst 38h			;eff0	ff 	. 
	rst 38h			;eff1	ff 	. 
	rst 38h			;eff2	ff 	. 
	rst 38h			;eff3	ff 	. 
	rst 38h			;eff4	ff 	. 
	rst 38h			;eff5	ff 	. 
	rst 38h			;eff6	ff 	. 
	rst 38h			;eff7	ff 	. 
	rst 38h			;eff8	ff 	. 
	rst 38h			;eff9	ff 	. 
	rst 38h			;effa	ff 	. 
	rst 38h			;effb	ff 	. 
	rst 38h			;effc	ff 	. 
	rst 38h			;effd	ff 	. 
	rst 38h			;effe	ff 	. 
	rst 38h			;efff	ff 	. 
	rst 38h			;f000	ff 	. 
	rst 38h			;f001	ff 	. 
	rst 38h			;f002	ff 	. 
	rst 38h			;f003	ff 	. 
	rst 38h			;f004	ff 	. 
	rst 38h			;f005	ff 	. 
	rst 38h			;f006	ff 	. 
	rst 38h			;f007	ff 	. 
	rst 38h			;f008	ff 	. 
	rst 38h			;f009	ff 	. 
	rst 38h			;f00a	ff 	. 
	rst 38h			;f00b	ff 	. 
	rst 38h			;f00c	ff 	. 
	rst 38h			;f00d	ff 	. 
	rst 38h			;f00e	ff 	. 
	rst 38h			;f00f	ff 	. 
	rst 38h			;f010	ff 	. 
	rst 38h			;f011	ff 	. 
	rst 38h			;f012	ff 	. 
	rst 38h			;f013	ff 	. 
	rst 38h			;f014	ff 	. 
	rst 38h			;f015	ff 	. 
	rst 38h			;f016	ff 	. 
	rst 38h			;f017	ff 	. 
	rst 38h			;f018	ff 	. 
	rst 38h			;f019	ff 	. 
	rst 38h			;f01a	ff 	. 
	rst 38h			;f01b	ff 	. 
	rst 38h			;f01c	ff 	. 
	rst 38h			;f01d	ff 	. 
	rst 38h			;f01e	ff 	. 
	rst 38h			;f01f	ff 	. 
	rst 38h			;f020	ff 	. 
	rst 38h			;f021	ff 	. 
	rst 38h			;f022	ff 	. 
	rst 38h			;f023	ff 	. 
	rst 38h			;f024	ff 	. 
	rst 38h			;f025	ff 	. 
	rst 38h			;f026	ff 	. 
	rst 38h			;f027	ff 	. 
	rst 38h			;f028	ff 	. 
	rst 38h			;f029	ff 	. 
	rst 38h			;f02a	ff 	. 
	rst 38h			;f02b	ff 	. 
	rst 38h			;f02c	ff 	. 
	rst 38h			;f02d	ff 	. 
	rst 38h			;f02e	ff 	. 
	rst 38h			;f02f	ff 	. 
	rst 38h			;f030	ff 	. 
	rst 38h			;f031	ff 	. 
	rst 38h			;f032	ff 	. 
	rst 38h			;f033	ff 	. 
	rst 38h			;f034	ff 	. 
	rst 38h			;f035	ff 	. 
	rst 38h			;f036	ff 	. 
	rst 38h			;f037	ff 	. 
	rst 38h			;f038	ff 	. 
	rst 38h			;f039	ff 	. 
	rst 38h			;f03a	ff 	. 
	rst 38h			;f03b	ff 	. 
	rst 38h			;f03c	ff 	. 
	rst 38h			;f03d	ff 	. 
	rst 38h			;f03e	ff 	. 
	rst 38h			;f03f	ff 	. 
	rst 38h			;f040	ff 	. 
	rst 38h			;f041	ff 	. 
	rst 38h			;f042	ff 	. 
	rst 38h			;f043	ff 	. 
	rst 38h			;f044	ff 	. 
	rst 38h			;f045	ff 	. 
	rst 38h			;f046	ff 	. 
	rst 38h			;f047	ff 	. 
	rst 38h			;f048	ff 	. 
	rst 38h			;f049	ff 	. 
	rst 38h			;f04a	ff 	. 
	rst 38h			;f04b	ff 	. 
	rst 38h			;f04c	ff 	. 
	rst 38h			;f04d	ff 	. 
	rst 38h			;f04e	ff 	. 
	rst 38h			;f04f	ff 	. 
	rst 38h			;f050	ff 	. 
	rst 38h			;f051	ff 	. 
	rst 38h			;f052	ff 	. 
	rst 38h			;f053	ff 	. 
	rst 38h			;f054	ff 	. 
	rst 38h			;f055	ff 	. 
	rst 38h			;f056	ff 	. 
	rst 38h			;f057	ff 	. 
	rst 38h			;f058	ff 	. 
	rst 38h			;f059	ff 	. 
	rst 38h			;f05a	ff 	. 
	rst 38h			;f05b	ff 	. 
	rst 38h			;f05c	ff 	. 
	rst 38h			;f05d	ff 	. 
	rst 38h			;f05e	ff 	. 
	rst 38h			;f05f	ff 	. 
	rst 38h			;f060	ff 	. 
	rst 38h			;f061	ff 	. 
	rst 38h			;f062	ff 	. 
	rst 38h			;f063	ff 	. 
	rst 38h			;f064	ff 	. 
	rst 38h			;f065	ff 	. 
	rst 38h			;f066	ff 	. 
	rst 38h			;f067	ff 	. 
	rst 38h			;f068	ff 	. 
	rst 38h			;f069	ff 	. 
	rst 38h			;f06a	ff 	. 
	rst 38h			;f06b	ff 	. 
	rst 38h			;f06c	ff 	. 
	rst 38h			;f06d	ff 	. 
	rst 38h			;f06e	ff 	. 
	rst 38h			;f06f	ff 	. 
	rst 38h			;f070	ff 	. 
	rst 38h			;f071	ff 	. 
	rst 38h			;f072	ff 	. 
	rst 38h			;f073	ff 	. 
	rst 38h			;f074	ff 	. 
	rst 38h			;f075	ff 	. 
	rst 38h			;f076	ff 	. 
	rst 38h			;f077	ff 	. 
	rst 38h			;f078	ff 	. 
	rst 38h			;f079	ff 	. 
	rst 38h			;f07a	ff 	. 
	rst 38h			;f07b	ff 	. 
	rst 38h			;f07c	ff 	. 
	rst 38h			;f07d	ff 	. 
	rst 38h			;f07e	ff 	. 
	rst 38h			;f07f	ff 	. 
	rst 38h			;f080	ff 	. 
	rst 38h			;f081	ff 	. 
	rst 38h			;f082	ff 	. 
	rst 38h			;f083	ff 	. 
	rst 38h			;f084	ff 	. 
	rst 38h			;f085	ff 	. 
	rst 38h			;f086	ff 	. 
	rst 38h			;f087	ff 	. 
	rst 38h			;f088	ff 	. 
	rst 38h			;f089	ff 	. 
	rst 38h			;f08a	ff 	. 
	rst 38h			;f08b	ff 	. 
	rst 38h			;f08c	ff 	. 
	rst 38h			;f08d	ff 	. 
	rst 38h			;f08e	ff 	. 
	rst 38h			;f08f	ff 	. 
	rst 38h			;f090	ff 	. 
	rst 38h			;f091	ff 	. 
	rst 38h			;f092	ff 	. 
	rst 38h			;f093	ff 	. 
	rst 38h			;f094	ff 	. 
	rst 38h			;f095	ff 	. 
	rst 38h			;f096	ff 	. 
	rst 38h			;f097	ff 	. 
	rst 38h			;f098	ff 	. 
	rst 38h			;f099	ff 	. 
	rst 38h			;f09a	ff 	. 
	rst 38h			;f09b	ff 	. 
	rst 38h			;f09c	ff 	. 
	rst 38h			;f09d	ff 	. 
	rst 38h			;f09e	ff 	. 
	rst 38h			;f09f	ff 	. 
	rst 38h			;f0a0	ff 	. 
	rst 38h			;f0a1	ff 	. 
	rst 38h			;f0a2	ff 	. 
	rst 38h			;f0a3	ff 	. 
	rst 38h			;f0a4	ff 	. 
	rst 38h			;f0a5	ff 	. 
	rst 38h			;f0a6	ff 	. 
	rst 38h			;f0a7	ff 	. 
	rst 38h			;f0a8	ff 	. 
	rst 38h			;f0a9	ff 	. 
	rst 38h			;f0aa	ff 	. 
	rst 38h			;f0ab	ff 	. 
	rst 38h			;f0ac	ff 	. 
	rst 38h			;f0ad	ff 	. 
	rst 38h			;f0ae	ff 	. 
	rst 38h			;f0af	ff 	. 
	rst 38h			;f0b0	ff 	. 
	rst 38h			;f0b1	ff 	. 
	rst 38h			;f0b2	ff 	. 
	rst 38h			;f0b3	ff 	. 
	rst 38h			;f0b4	ff 	. 
	rst 38h			;f0b5	ff 	. 
	rst 38h			;f0b6	ff 	. 
	rst 38h			;f0b7	ff 	. 
	rst 38h			;f0b8	ff 	. 
	rst 38h			;f0b9	ff 	. 
	rst 38h			;f0ba	ff 	. 
	rst 38h			;f0bb	ff 	. 
	rst 38h			;f0bc	ff 	. 
	rst 38h			;f0bd	ff 	. 
	rst 38h			;f0be	ff 	. 
	rst 38h			;f0bf	ff 	. 
	rst 38h			;f0c0	ff 	. 
	rst 38h			;f0c1	ff 	. 
	rst 38h			;f0c2	ff 	. 
	rst 38h			;f0c3	ff 	. 
	rst 38h			;f0c4	ff 	. 
	rst 38h			;f0c5	ff 	. 
	rst 38h			;f0c6	ff 	. 
	rst 38h			;f0c7	ff 	. 
	rst 38h			;f0c8	ff 	. 
	rst 38h			;f0c9	ff 	. 
	rst 38h			;f0ca	ff 	. 
	rst 38h			;f0cb	ff 	. 
	rst 38h			;f0cc	ff 	. 
	rst 38h			;f0cd	ff 	. 
	rst 38h			;f0ce	ff 	. 
	rst 38h			;f0cf	ff 	. 
	rst 38h			;f0d0	ff 	. 
	rst 38h			;f0d1	ff 	. 
	rst 38h			;f0d2	ff 	. 
	rst 38h			;f0d3	ff 	. 
	rst 38h			;f0d4	ff 	. 
	rst 38h			;f0d5	ff 	. 
	rst 38h			;f0d6	ff 	. 
	rst 38h			;f0d7	ff 	. 
	rst 38h			;f0d8	ff 	. 
	rst 38h			;f0d9	ff 	. 
	rst 38h			;f0da	ff 	. 
	rst 38h			;f0db	ff 	. 
	rst 38h			;f0dc	ff 	. 
	rst 38h			;f0dd	ff 	. 
	rst 38h			;f0de	ff 	. 
	rst 38h			;f0df	ff 	. 
	rst 38h			;f0e0	ff 	. 
	rst 38h			;f0e1	ff 	. 
	rst 38h			;f0e2	ff 	. 
	rst 38h			;f0e3	ff 	. 
	rst 38h			;f0e4	ff 	. 
	rst 38h			;f0e5	ff 	. 
	rst 38h			;f0e6	ff 	. 
	rst 38h			;f0e7	ff 	. 
	rst 38h			;f0e8	ff 	. 
	rst 38h			;f0e9	ff 	. 
	rst 38h			;f0ea	ff 	. 
	rst 38h			;f0eb	ff 	. 
	rst 38h			;f0ec	ff 	. 
	rst 38h			;f0ed	ff 	. 
	rst 38h			;f0ee	ff 	. 
	rst 38h			;f0ef	ff 	. 
	rst 38h			;f0f0	ff 	. 
	rst 38h			;f0f1	ff 	. 
	rst 38h			;f0f2	ff 	. 
	rst 38h			;f0f3	ff 	. 
	rst 38h			;f0f4	ff 	. 
	rst 38h			;f0f5	ff 	. 
	rst 38h			;f0f6	ff 	. 
	rst 38h			;f0f7	ff 	. 
	rst 38h			;f0f8	ff 	. 
	rst 38h			;f0f9	ff 	. 
	rst 38h			;f0fa	ff 	. 
	rst 38h			;f0fb	ff 	. 
	rst 38h			;f0fc	ff 	. 
	rst 38h			;f0fd	ff 	. 
	rst 38h			;f0fe	ff 	. 
	rst 38h			;f0ff	ff 	. 
	rst 38h			;f100	ff 	. 
	rst 38h			;f101	ff 	. 
	rst 38h			;f102	ff 	. 
	rst 38h			;f103	ff 	. 
	rst 38h			;f104	ff 	. 
	rst 38h			;f105	ff 	. 
	rst 38h			;f106	ff 	. 
	rst 38h			;f107	ff 	. 
	rst 38h			;f108	ff 	. 
	rst 38h			;f109	ff 	. 
	rst 38h			;f10a	ff 	. 
	rst 38h			;f10b	ff 	. 
	rst 38h			;f10c	ff 	. 
	rst 38h			;f10d	ff 	. 
	rst 38h			;f10e	ff 	. 
	rst 38h			;f10f	ff 	. 
	rst 38h			;f110	ff 	. 
	rst 38h			;f111	ff 	. 
	rst 38h			;f112	ff 	. 
	rst 38h			;f113	ff 	. 
	rst 38h			;f114	ff 	. 
	rst 38h			;f115	ff 	. 
	rst 38h			;f116	ff 	. 
	rst 38h			;f117	ff 	. 
	rst 38h			;f118	ff 	. 
	rst 38h			;f119	ff 	. 
	rst 38h			;f11a	ff 	. 
	rst 38h			;f11b	ff 	. 
	rst 38h			;f11c	ff 	. 
	rst 38h			;f11d	ff 	. 
	rst 38h			;f11e	ff 	. 
	rst 38h			;f11f	ff 	. 
	rst 38h			;f120	ff 	. 
	rst 38h			;f121	ff 	. 
	rst 38h			;f122	ff 	. 
	rst 38h			;f123	ff 	. 
	rst 38h			;f124	ff 	. 
	rst 38h			;f125	ff 	. 
	rst 38h			;f126	ff 	. 
	rst 38h			;f127	ff 	. 
	rst 38h			;f128	ff 	. 
	rst 38h			;f129	ff 	. 
	rst 38h			;f12a	ff 	. 
	rst 38h			;f12b	ff 	. 
	rst 38h			;f12c	ff 	. 
	rst 38h			;f12d	ff 	. 
	rst 38h			;f12e	ff 	. 
	rst 38h			;f12f	ff 	. 
	rst 38h			;f130	ff 	. 
	rst 38h			;f131	ff 	. 
	rst 38h			;f132	ff 	. 
	rst 38h			;f133	ff 	. 
	rst 38h			;f134	ff 	. 
	rst 38h			;f135	ff 	. 
	rst 38h			;f136	ff 	. 
	rst 38h			;f137	ff 	. 
	rst 38h			;f138	ff 	. 
	rst 38h			;f139	ff 	. 
	rst 38h			;f13a	ff 	. 
	rst 38h			;f13b	ff 	. 
	rst 38h			;f13c	ff 	. 
	rst 38h			;f13d	ff 	. 
	rst 38h			;f13e	ff 	. 
	rst 38h			;f13f	ff 	. 
	rst 38h			;f140	ff 	. 
	rst 38h			;f141	ff 	. 
	rst 38h			;f142	ff 	. 
	rst 38h			;f143	ff 	. 
	rst 38h			;f144	ff 	. 
	rst 38h			;f145	ff 	. 
	rst 38h			;f146	ff 	. 
	rst 38h			;f147	ff 	. 
	rst 38h			;f148	ff 	. 
	rst 38h			;f149	ff 	. 
	rst 38h			;f14a	ff 	. 
	rst 38h			;f14b	ff 	. 
	rst 38h			;f14c	ff 	. 
	rst 38h			;f14d	ff 	. 
	rst 38h			;f14e	ff 	. 
	rst 38h			;f14f	ff 	. 
	rst 38h			;f150	ff 	. 
	rst 38h			;f151	ff 	. 
	rst 38h			;f152	ff 	. 
	rst 38h			;f153	ff 	. 
	rst 38h			;f154	ff 	. 
	rst 38h			;f155	ff 	. 
	rst 38h			;f156	ff 	. 
	rst 38h			;f157	ff 	. 
	rst 38h			;f158	ff 	. 
	rst 38h			;f159	ff 	. 
	rst 38h			;f15a	ff 	. 
	rst 38h			;f15b	ff 	. 
	rst 38h			;f15c	ff 	. 
	rst 38h			;f15d	ff 	. 
	rst 38h			;f15e	ff 	. 
	rst 38h			;f15f	ff 	. 
	rst 38h			;f160	ff 	. 
	rst 38h			;f161	ff 	. 
	rst 38h			;f162	ff 	. 
	rst 38h			;f163	ff 	. 
	rst 38h			;f164	ff 	. 
	rst 38h			;f165	ff 	. 
	rst 38h			;f166	ff 	. 
	rst 38h			;f167	ff 	. 
	rst 38h			;f168	ff 	. 
	rst 38h			;f169	ff 	. 
	rst 38h			;f16a	ff 	. 
	rst 38h			;f16b	ff 	. 
	rst 38h			;f16c	ff 	. 
	rst 38h			;f16d	ff 	. 
	rst 38h			;f16e	ff 	. 
	rst 38h			;f16f	ff 	. 
	rst 38h			;f170	ff 	. 
	rst 38h			;f171	ff 	. 
	rst 38h			;f172	ff 	. 
	rst 38h			;f173	ff 	. 
	rst 38h			;f174	ff 	. 
	rst 38h			;f175	ff 	. 
	rst 38h			;f176	ff 	. 
	rst 38h			;f177	ff 	. 
	rst 38h			;f178	ff 	. 
	rst 38h			;f179	ff 	. 
	rst 38h			;f17a	ff 	. 
	rst 38h			;f17b	ff 	. 
	rst 38h			;f17c	ff 	. 
	rst 38h			;f17d	ff 	. 
	rst 38h			;f17e	ff 	. 
	rst 38h			;f17f	ff 	. 
	rst 38h			;f180	ff 	. 
	rst 38h			;f181	ff 	. 
	rst 38h			;f182	ff 	. 
	rst 38h			;f183	ff 	. 
	rst 38h			;f184	ff 	. 
	rst 38h			;f185	ff 	. 
	rst 38h			;f186	ff 	. 
	rst 38h			;f187	ff 	. 
	rst 38h			;f188	ff 	. 
	rst 38h			;f189	ff 	. 
	rst 38h			;f18a	ff 	. 
	rst 38h			;f18b	ff 	. 
	rst 38h			;f18c	ff 	. 
	rst 38h			;f18d	ff 	. 
	rst 38h			;f18e	ff 	. 
	rst 38h			;f18f	ff 	. 
	rst 38h			;f190	ff 	. 
	rst 38h			;f191	ff 	. 
	rst 38h			;f192	ff 	. 
	rst 38h			;f193	ff 	. 
	rst 38h			;f194	ff 	. 
	rst 38h			;f195	ff 	. 
	rst 38h			;f196	ff 	. 
	rst 38h			;f197	ff 	. 
	rst 38h			;f198	ff 	. 
	rst 38h			;f199	ff 	. 
	rst 38h			;f19a	ff 	. 
	rst 38h			;f19b	ff 	. 
	rst 38h			;f19c	ff 	. 
	rst 38h			;f19d	ff 	. 
	rst 38h			;f19e	ff 	. 
	rst 38h			;f19f	ff 	. 
	rst 38h			;f1a0	ff 	. 
	rst 38h			;f1a1	ff 	. 
	rst 38h			;f1a2	ff 	. 
	rst 38h			;f1a3	ff 	. 
	rst 38h			;f1a4	ff 	. 
	rst 38h			;f1a5	ff 	. 
	rst 38h			;f1a6	ff 	. 
	rst 38h			;f1a7	ff 	. 
	rst 38h			;f1a8	ff 	. 
	rst 38h			;f1a9	ff 	. 
	rst 38h			;f1aa	ff 	. 
	rst 38h			;f1ab	ff 	. 
	rst 38h			;f1ac	ff 	. 
	rst 38h			;f1ad	ff 	. 
	rst 38h			;f1ae	ff 	. 
	rst 38h			;f1af	ff 	. 
	rst 38h			;f1b0	ff 	. 
	rst 38h			;f1b1	ff 	. 
	rst 38h			;f1b2	ff 	. 
	rst 38h			;f1b3	ff 	. 
	rst 38h			;f1b4	ff 	. 
	rst 38h			;f1b5	ff 	. 
	rst 38h			;f1b6	ff 	. 
	rst 38h			;f1b7	ff 	. 
	rst 38h			;f1b8	ff 	. 
	rst 38h			;f1b9	ff 	. 
	rst 38h			;f1ba	ff 	. 
	rst 38h			;f1bb	ff 	. 
	rst 38h			;f1bc	ff 	. 
	rst 38h			;f1bd	ff 	. 
	rst 38h			;f1be	ff 	. 
lf1bfh:
	rst 38h			;f1bf	ff 	. 
	rst 38h			;f1c0	ff 	. 
	rst 38h			;f1c1	ff 	. 
	rst 38h			;f1c2	ff 	. 
	rst 38h			;f1c3	ff 	. 
	rst 38h			;f1c4	ff 	. 
	rst 38h			;f1c5	ff 	. 
	rst 38h			;f1c6	ff 	. 
	rst 38h			;f1c7	ff 	. 
	rst 38h			;f1c8	ff 	. 
	rst 38h			;f1c9	ff 	. 
	rst 38h			;f1ca	ff 	. 
	rst 38h			;f1cb	ff 	. 
	rst 38h			;f1cc	ff 	. 
	rst 38h			;f1cd	ff 	. 
	rst 38h			;f1ce	ff 	. 
	rst 38h			;f1cf	ff 	. 
	rst 38h			;f1d0	ff 	. 
	rst 38h			;f1d1	ff 	. 
	rst 38h			;f1d2	ff 	. 
	rst 38h			;f1d3	ff 	. 
	rst 38h			;f1d4	ff 	. 
	rst 38h			;f1d5	ff 	. 
	rst 38h			;f1d6	ff 	. 
	rst 38h			;f1d7	ff 	. 
	rst 38h			;f1d8	ff 	. 
	rst 38h			;f1d9	ff 	. 
	rst 38h			;f1da	ff 	. 
	rst 38h			;f1db	ff 	. 
	rst 38h			;f1dc	ff 	. 
	rst 38h			;f1dd	ff 	. 
	rst 38h			;f1de	ff 	. 
	rst 38h			;f1df	ff 	. 
	rst 38h			;f1e0	ff 	. 
	rst 38h			;f1e1	ff 	. 
	rst 38h			;f1e2	ff 	. 
	rst 38h			;f1e3	ff 	. 
	rst 38h			;f1e4	ff 	. 
	rst 38h			;f1e5	ff 	. 
	rst 38h			;f1e6	ff 	. 
	rst 38h			;f1e7	ff 	. 
	rst 38h			;f1e8	ff 	. 
	rst 38h			;f1e9	ff 	. 
	rst 38h			;f1ea	ff 	. 
	rst 38h			;f1eb	ff 	. 
	rst 38h			;f1ec	ff 	. 
	rst 38h			;f1ed	ff 	. 
	rst 38h			;f1ee	ff 	. 
	rst 38h			;f1ef	ff 	. 
	rst 38h			;f1f0	ff 	. 
	rst 38h			;f1f1	ff 	. 
	rst 38h			;f1f2	ff 	. 
	rst 38h			;f1f3	ff 	. 
	rst 38h			;f1f4	ff 	. 
	rst 38h			;f1f5	ff 	. 
	rst 38h			;f1f6	ff 	. 
	rst 38h			;f1f7	ff 	. 
	rst 38h			;f1f8	ff 	. 
	rst 38h			;f1f9	ff 	. 
	rst 38h			;f1fa	ff 	. 
	rst 38h			;f1fb	ff 	. 
	rst 38h			;f1fc	ff 	. 
	rst 38h			;f1fd	ff 	. 
	rst 38h			;f1fe	ff 	. 
	rst 38h			;f1ff	ff 	. 
	rst 38h			;f200	ff 	. 
	rst 38h			;f201	ff 	. 
	rst 38h			;f202	ff 	. 
	rst 38h			;f203	ff 	. 
	rst 38h			;f204	ff 	. 
	rst 38h			;f205	ff 	. 
	rst 38h			;f206	ff 	. 
	rst 38h			;f207	ff 	. 
	rst 38h			;f208	ff 	. 
	rst 38h			;f209	ff 	. 
	rst 38h			;f20a	ff 	. 
	rst 38h			;f20b	ff 	. 
	rst 38h			;f20c	ff 	. 
	rst 38h			;f20d	ff 	. 
	rst 38h			;f20e	ff 	. 
	rst 38h			;f20f	ff 	. 
	rst 38h			;f210	ff 	. 
	rst 38h			;f211	ff 	. 
	rst 38h			;f212	ff 	. 
	rst 38h			;f213	ff 	. 
	rst 38h			;f214	ff 	. 
	rst 38h			;f215	ff 	. 
	rst 38h			;f216	ff 	. 
	rst 38h			;f217	ff 	. 
	rst 38h			;f218	ff 	. 
	rst 38h			;f219	ff 	. 
	rst 38h			;f21a	ff 	. 
	rst 38h			;f21b	ff 	. 
	rst 38h			;f21c	ff 	. 
	rst 38h			;f21d	ff 	. 
	rst 38h			;f21e	ff 	. 
	rst 38h			;f21f	ff 	. 
	rst 38h			;f220	ff 	. 
	rst 38h			;f221	ff 	. 
	rst 38h			;f222	ff 	. 
	rst 38h			;f223	ff 	. 
	rst 38h			;f224	ff 	. 
	rst 38h			;f225	ff 	. 
	rst 38h			;f226	ff 	. 
	rst 38h			;f227	ff 	. 
	rst 38h			;f228	ff 	. 
	rst 38h			;f229	ff 	. 
	rst 38h			;f22a	ff 	. 
	rst 38h			;f22b	ff 	. 
	rst 38h			;f22c	ff 	. 
	rst 38h			;f22d	ff 	. 
	rst 38h			;f22e	ff 	. 
	rst 38h			;f22f	ff 	. 
	rst 38h			;f230	ff 	. 
	rst 38h			;f231	ff 	. 
	rst 38h			;f232	ff 	. 
	rst 38h			;f233	ff 	. 
	rst 38h			;f234	ff 	. 
	rst 38h			;f235	ff 	. 
	rst 38h			;f236	ff 	. 
	rst 38h			;f237	ff 	. 
	rst 38h			;f238	ff 	. 
	rst 38h			;f239	ff 	. 
	rst 38h			;f23a	ff 	. 
	rst 38h			;f23b	ff 	. 
	rst 38h			;f23c	ff 	. 
	rst 38h			;f23d	ff 	. 
	rst 38h			;f23e	ff 	. 
	rst 38h			;f23f	ff 	. 
	rst 38h			;f240	ff 	. 
	rst 38h			;f241	ff 	. 
	rst 38h			;f242	ff 	. 
	rst 38h			;f243	ff 	. 
	rst 38h			;f244	ff 	. 
	rst 38h			;f245	ff 	. 
	rst 38h			;f246	ff 	. 
	rst 38h			;f247	ff 	. 
	rst 38h			;f248	ff 	. 
	rst 38h			;f249	ff 	. 
	rst 38h			;f24a	ff 	. 
	rst 38h			;f24b	ff 	. 
	rst 38h			;f24c	ff 	. 
	rst 38h			;f24d	ff 	. 
	rst 38h			;f24e	ff 	. 
	rst 38h			;f24f	ff 	. 
	rst 38h			;f250	ff 	. 
	rst 38h			;f251	ff 	. 
	rst 38h			;f252	ff 	. 
	rst 38h			;f253	ff 	. 
	rst 38h			;f254	ff 	. 
	rst 38h			;f255	ff 	. 
	rst 38h			;f256	ff 	. 
	rst 38h			;f257	ff 	. 
	rst 38h			;f258	ff 	. 
	rst 38h			;f259	ff 	. 
	rst 38h			;f25a	ff 	. 
	rst 38h			;f25b	ff 	. 
	rst 38h			;f25c	ff 	. 
	rst 38h			;f25d	ff 	. 
	rst 38h			;f25e	ff 	. 
	rst 38h			;f25f	ff 	. 
	rst 38h			;f260	ff 	. 
	rst 38h			;f261	ff 	. 
	rst 38h			;f262	ff 	. 
	rst 38h			;f263	ff 	. 
	rst 38h			;f264	ff 	. 
	rst 38h			;f265	ff 	. 
	rst 38h			;f266	ff 	. 
	rst 38h			;f267	ff 	. 
	rst 38h			;f268	ff 	. 
	rst 38h			;f269	ff 	. 
	rst 38h			;f26a	ff 	. 
	rst 38h			;f26b	ff 	. 
	rst 38h			;f26c	ff 	. 
	rst 38h			;f26d	ff 	. 
	rst 38h			;f26e	ff 	. 
	rst 38h			;f26f	ff 	. 
	rst 38h			;f270	ff 	. 
	rst 38h			;f271	ff 	. 
	rst 38h			;f272	ff 	. 
	rst 38h			;f273	ff 	. 
	rst 38h			;f274	ff 	. 
	rst 38h			;f275	ff 	. 
	rst 38h			;f276	ff 	. 
	rst 38h			;f277	ff 	. 
	rst 38h			;f278	ff 	. 
	rst 38h			;f279	ff 	. 
	rst 38h			;f27a	ff 	. 
	rst 38h			;f27b	ff 	. 
	rst 38h			;f27c	ff 	. 
	rst 38h			;f27d	ff 	. 
	rst 38h			;f27e	ff 	. 
	rst 38h			;f27f	ff 	. 
	rst 38h			;f280	ff 	. 
	rst 38h			;f281	ff 	. 
	rst 38h			;f282	ff 	. 
	rst 38h			;f283	ff 	. 
	rst 38h			;f284	ff 	. 
	rst 38h			;f285	ff 	. 
	rst 38h			;f286	ff 	. 
	rst 38h			;f287	ff 	. 
	rst 38h			;f288	ff 	. 
	rst 38h			;f289	ff 	. 
	rst 38h			;f28a	ff 	. 
	rst 38h			;f28b	ff 	. 
	rst 38h			;f28c	ff 	. 
	rst 38h			;f28d	ff 	. 
	rst 38h			;f28e	ff 	. 
	rst 38h			;f28f	ff 	. 
	rst 38h			;f290	ff 	. 
	rst 38h			;f291	ff 	. 
	rst 38h			;f292	ff 	. 
	rst 38h			;f293	ff 	. 
	rst 38h			;f294	ff 	. 
	rst 38h			;f295	ff 	. 
	rst 38h			;f296	ff 	. 
	rst 38h			;f297	ff 	. 
	rst 38h			;f298	ff 	. 
	rst 38h			;f299	ff 	. 
	rst 38h			;f29a	ff 	. 
	rst 38h			;f29b	ff 	. 
	rst 38h			;f29c	ff 	. 
	rst 38h			;f29d	ff 	. 
	rst 38h			;f29e	ff 	. 
	rst 38h			;f29f	ff 	. 
	rst 38h			;f2a0	ff 	. 
	rst 38h			;f2a1	ff 	. 
	rst 38h			;f2a2	ff 	. 
	rst 38h			;f2a3	ff 	. 
	rst 38h			;f2a4	ff 	. 
	rst 38h			;f2a5	ff 	. 
	rst 38h			;f2a6	ff 	. 
	rst 38h			;f2a7	ff 	. 
	rst 38h			;f2a8	ff 	. 
	rst 38h			;f2a9	ff 	. 
	rst 38h			;f2aa	ff 	. 
	rst 38h			;f2ab	ff 	. 
	rst 38h			;f2ac	ff 	. 
	rst 38h			;f2ad	ff 	. 
	rst 38h			;f2ae	ff 	. 
	rst 38h			;f2af	ff 	. 
	rst 38h			;f2b0	ff 	. 
	rst 38h			;f2b1	ff 	. 
	rst 38h			;f2b2	ff 	. 
	rst 38h			;f2b3	ff 	. 
	rst 38h			;f2b4	ff 	. 
	rst 38h			;f2b5	ff 	. 
	rst 38h			;f2b6	ff 	. 
	rst 38h			;f2b7	ff 	. 
	rst 38h			;f2b8	ff 	. 
	rst 38h			;f2b9	ff 	. 
	rst 38h			;f2ba	ff 	. 
	rst 38h			;f2bb	ff 	. 
	rst 38h			;f2bc	ff 	. 
	rst 38h			;f2bd	ff 	. 
	rst 38h			;f2be	ff 	. 
	rst 38h			;f2bf	ff 	. 
	rst 38h			;f2c0	ff 	. 
	rst 38h			;f2c1	ff 	. 
	rst 38h			;f2c2	ff 	. 
	rst 38h			;f2c3	ff 	. 
	rst 38h			;f2c4	ff 	. 
	rst 38h			;f2c5	ff 	. 
	rst 38h			;f2c6	ff 	. 
	rst 38h			;f2c7	ff 	. 
	rst 38h			;f2c8	ff 	. 
	rst 38h			;f2c9	ff 	. 
	rst 38h			;f2ca	ff 	. 
	rst 38h			;f2cb	ff 	. 
	rst 38h			;f2cc	ff 	. 
	rst 38h			;f2cd	ff 	. 
	rst 38h			;f2ce	ff 	. 
	rst 38h			;f2cf	ff 	. 
	rst 38h			;f2d0	ff 	. 
	rst 38h			;f2d1	ff 	. 
	rst 38h			;f2d2	ff 	. 
	rst 38h			;f2d3	ff 	. 
	rst 38h			;f2d4	ff 	. 
	rst 38h			;f2d5	ff 	. 
	rst 38h			;f2d6	ff 	. 
	rst 38h			;f2d7	ff 	. 
	rst 38h			;f2d8	ff 	. 
	rst 38h			;f2d9	ff 	. 
	rst 38h			;f2da	ff 	. 
	rst 38h			;f2db	ff 	. 
	rst 38h			;f2dc	ff 	. 
	rst 38h			;f2dd	ff 	. 
	rst 38h			;f2de	ff 	. 
	rst 38h			;f2df	ff 	. 
	rst 38h			;f2e0	ff 	. 
	rst 38h			;f2e1	ff 	. 
	rst 38h			;f2e2	ff 	. 
	rst 38h			;f2e3	ff 	. 
	rst 38h			;f2e4	ff 	. 
	rst 38h			;f2e5	ff 	. 
	rst 38h			;f2e6	ff 	. 
	rst 38h			;f2e7	ff 	. 
	rst 38h			;f2e8	ff 	. 
	rst 38h			;f2e9	ff 	. 
	rst 38h			;f2ea	ff 	. 
	rst 38h			;f2eb	ff 	. 
	rst 38h			;f2ec	ff 	. 
	rst 38h			;f2ed	ff 	. 
	rst 38h			;f2ee	ff 	. 
	rst 38h			;f2ef	ff 	. 
	rst 38h			;f2f0	ff 	. 
	rst 38h			;f2f1	ff 	. 
	rst 38h			;f2f2	ff 	. 
	rst 38h			;f2f3	ff 	. 
	rst 38h			;f2f4	ff 	. 
	rst 38h			;f2f5	ff 	. 
	rst 38h			;f2f6	ff 	. 
	rst 38h			;f2f7	ff 	. 
	rst 38h			;f2f8	ff 	. 
	rst 38h			;f2f9	ff 	. 
	rst 38h			;f2fa	ff 	. 
	rst 38h			;f2fb	ff 	. 
	rst 38h			;f2fc	ff 	. 
	rst 38h			;f2fd	ff 	. 
	rst 38h			;f2fe	ff 	. 
	rst 38h			;f2ff	ff 	. 
	rst 38h			;f300	ff 	. 
	rst 38h			;f301	ff 	. 
	rst 38h			;f302	ff 	. 
	rst 38h			;f303	ff 	. 
	rst 38h			;f304	ff 	. 
	rst 38h			;f305	ff 	. 
	rst 38h			;f306	ff 	. 
	rst 38h			;f307	ff 	. 
	rst 38h			;f308	ff 	. 
	rst 38h			;f309	ff 	. 
	rst 38h			;f30a	ff 	. 
	rst 38h			;f30b	ff 	. 
	rst 38h			;f30c	ff 	. 
	rst 38h			;f30d	ff 	. 
	rst 38h			;f30e	ff 	. 
	rst 38h			;f30f	ff 	. 
	rst 38h			;f310	ff 	. 
	rst 38h			;f311	ff 	. 
	rst 38h			;f312	ff 	. 
	rst 38h			;f313	ff 	. 
	rst 38h			;f314	ff 	. 
	rst 38h			;f315	ff 	. 
	rst 38h			;f316	ff 	. 
	rst 38h			;f317	ff 	. 
	rst 38h			;f318	ff 	. 
	rst 38h			;f319	ff 	. 
	rst 38h			;f31a	ff 	. 
	rst 38h			;f31b	ff 	. 
	rst 38h			;f31c	ff 	. 
	rst 38h			;f31d	ff 	. 
	rst 38h			;f31e	ff 	. 
	rst 38h			;f31f	ff 	. 
	rst 38h			;f320	ff 	. 
	rst 38h			;f321	ff 	. 
	rst 38h			;f322	ff 	. 
	rst 38h			;f323	ff 	. 
	rst 38h			;f324	ff 	. 
	rst 38h			;f325	ff 	. 
	rst 38h			;f326	ff 	. 
	rst 38h			;f327	ff 	. 
	rst 38h			;f328	ff 	. 
	rst 38h			;f329	ff 	. 
	rst 38h			;f32a	ff 	. 
	rst 38h			;f32b	ff 	. 
	rst 38h			;f32c	ff 	. 
	rst 38h			;f32d	ff 	. 
	rst 38h			;f32e	ff 	. 
	rst 38h			;f32f	ff 	. 
	rst 38h			;f330	ff 	. 
	rst 38h			;f331	ff 	. 
	rst 38h			;f332	ff 	. 
	rst 38h			;f333	ff 	. 
	rst 38h			;f334	ff 	. 
	rst 38h			;f335	ff 	. 
	rst 38h			;f336	ff 	. 
	rst 38h			;f337	ff 	. 
	rst 38h			;f338	ff 	. 
	rst 38h			;f339	ff 	. 
	rst 38h			;f33a	ff 	. 
	rst 38h			;f33b	ff 	. 
	rst 38h			;f33c	ff 	. 
	rst 38h			;f33d	ff 	. 
	rst 38h			;f33e	ff 	. 
	rst 38h			;f33f	ff 	. 
	rst 38h			;f340	ff 	. 
	rst 38h			;f341	ff 	. 
	rst 38h			;f342	ff 	. 
	rst 38h			;f343	ff 	. 
	rst 38h			;f344	ff 	. 
	rst 38h			;f345	ff 	. 
	rst 38h			;f346	ff 	. 
	rst 38h			;f347	ff 	. 
	rst 38h			;f348	ff 	. 
	rst 38h			;f349	ff 	. 
	rst 38h			;f34a	ff 	. 
	rst 38h			;f34b	ff 	. 
	rst 38h			;f34c	ff 	. 
	rst 38h			;f34d	ff 	. 
	rst 38h			;f34e	ff 	. 
	rst 38h			;f34f	ff 	. 
	rst 38h			;f350	ff 	. 
	rst 38h			;f351	ff 	. 
	rst 38h			;f352	ff 	. 
	rst 38h			;f353	ff 	. 
	rst 38h			;f354	ff 	. 
	rst 38h			;f355	ff 	. 
	rst 38h			;f356	ff 	. 
	rst 38h			;f357	ff 	. 
	rst 38h			;f358	ff 	. 
	rst 38h			;f359	ff 	. 
	rst 38h			;f35a	ff 	. 
	rst 38h			;f35b	ff 	. 
	rst 38h			;f35c	ff 	. 
	rst 38h			;f35d	ff 	. 
	rst 38h			;f35e	ff 	. 
	rst 38h			;f35f	ff 	. 
	rst 38h			;f360	ff 	. 
	rst 38h			;f361	ff 	. 
	rst 38h			;f362	ff 	. 
	rst 38h			;f363	ff 	. 
	rst 38h			;f364	ff 	. 
	rst 38h			;f365	ff 	. 
	rst 38h			;f366	ff 	. 
	rst 38h			;f367	ff 	. 
	rst 38h			;f368	ff 	. 
	rst 38h			;f369	ff 	. 
	rst 38h			;f36a	ff 	. 
	rst 38h			;f36b	ff 	. 
	rst 38h			;f36c	ff 	. 
	rst 38h			;f36d	ff 	. 
	rst 38h			;f36e	ff 	. 
	rst 38h			;f36f	ff 	. 
	rst 38h			;f370	ff 	. 
	rst 38h			;f371	ff 	. 
	rst 38h			;f372	ff 	. 
	rst 38h			;f373	ff 	. 
	rst 38h			;f374	ff 	. 
	rst 38h			;f375	ff 	. 
	rst 38h			;f376	ff 	. 
	rst 38h			;f377	ff 	. 
	rst 38h			;f378	ff 	. 
	rst 38h			;f379	ff 	. 
	rst 38h			;f37a	ff 	. 
	rst 38h			;f37b	ff 	. 
	rst 38h			;f37c	ff 	. 
	rst 38h			;f37d	ff 	. 
	rst 38h			;f37e	ff 	. 
	rst 38h			;f37f	ff 	. 
	rst 38h			;f380	ff 	. 
	rst 38h			;f381	ff 	. 
	rst 38h			;f382	ff 	. 
	rst 38h			;f383	ff 	. 
	rst 38h			;f384	ff 	. 
	rst 38h			;f385	ff 	. 
	rst 38h			;f386	ff 	. 
	rst 38h			;f387	ff 	. 
	rst 38h			;f388	ff 	. 
	rst 38h			;f389	ff 	. 
	rst 38h			;f38a	ff 	. 
	rst 38h			;f38b	ff 	. 
	rst 38h			;f38c	ff 	. 
	rst 38h			;f38d	ff 	. 
	rst 38h			;f38e	ff 	. 
	rst 38h			;f38f	ff 	. 
	rst 38h			;f390	ff 	. 
	rst 38h			;f391	ff 	. 
	rst 38h			;f392	ff 	. 
	rst 38h			;f393	ff 	. 
	rst 38h			;f394	ff 	. 
	rst 38h			;f395	ff 	. 
	rst 38h			;f396	ff 	. 
	rst 38h			;f397	ff 	. 
	rst 38h			;f398	ff 	. 
	rst 38h			;f399	ff 	. 
	rst 38h			;f39a	ff 	. 
	rst 38h			;f39b	ff 	. 
	rst 38h			;f39c	ff 	. 
	rst 38h			;f39d	ff 	. 
	rst 38h			;f39e	ff 	. 
	rst 38h			;f39f	ff 	. 
	rst 38h			;f3a0	ff 	. 
	rst 38h			;f3a1	ff 	. 
	rst 38h			;f3a2	ff 	. 
	rst 38h			;f3a3	ff 	. 
	rst 38h			;f3a4	ff 	. 
	rst 38h			;f3a5	ff 	. 
	rst 38h			;f3a6	ff 	. 
	rst 38h			;f3a7	ff 	. 
	rst 38h			;f3a8	ff 	. 
	rst 38h			;f3a9	ff 	. 
	rst 38h			;f3aa	ff 	. 
	rst 38h			;f3ab	ff 	. 
	rst 38h			;f3ac	ff 	. 
	rst 38h			;f3ad	ff 	. 
	rst 38h			;f3ae	ff 	. 
	rst 38h			;f3af	ff 	. 
	rst 38h			;f3b0	ff 	. 
	rst 38h			;f3b1	ff 	. 
	rst 38h			;f3b2	ff 	. 
	rst 38h			;f3b3	ff 	. 
	rst 38h			;f3b4	ff 	. 
	rst 38h			;f3b5	ff 	. 
	rst 38h			;f3b6	ff 	. 
	rst 38h			;f3b7	ff 	. 
	rst 38h			;f3b8	ff 	. 
	rst 38h			;f3b9	ff 	. 
	rst 38h			;f3ba	ff 	. 
	rst 38h			;f3bb	ff 	. 
	rst 38h			;f3bc	ff 	. 
	rst 38h			;f3bd	ff 	. 
	rst 38h			;f3be	ff 	. 
	rst 38h			;f3bf	ff 	. 
	rst 38h			;f3c0	ff 	. 
	rst 38h			;f3c1	ff 	. 
	rst 38h			;f3c2	ff 	. 
	rst 38h			;f3c3	ff 	. 
	rst 38h			;f3c4	ff 	. 
	rst 38h			;f3c5	ff 	. 
	rst 38h			;f3c6	ff 	. 
	rst 38h			;f3c7	ff 	. 
	rst 38h			;f3c8	ff 	. 
	rst 38h			;f3c9	ff 	. 
	rst 38h			;f3ca	ff 	. 
	rst 38h			;f3cb	ff 	. 
	rst 38h			;f3cc	ff 	. 
	rst 38h			;f3cd	ff 	. 
	rst 38h			;f3ce	ff 	. 
	rst 38h			;f3cf	ff 	. 
	rst 38h			;f3d0	ff 	. 
	rst 38h			;f3d1	ff 	. 
	rst 38h			;f3d2	ff 	. 
	rst 38h			;f3d3	ff 	. 
	rst 38h			;f3d4	ff 	. 
	rst 38h			;f3d5	ff 	. 
	rst 38h			;f3d6	ff 	. 
	rst 38h			;f3d7	ff 	. 
	rst 38h			;f3d8	ff 	. 
	rst 38h			;f3d9	ff 	. 
	rst 38h			;f3da	ff 	. 
	rst 38h			;f3db	ff 	. 
	rst 38h			;f3dc	ff 	. 
	rst 38h			;f3dd	ff 	. 
	rst 38h			;f3de	ff 	. 
	rst 38h			;f3df	ff 	. 
	rst 38h			;f3e0	ff 	. 
	rst 38h			;f3e1	ff 	. 
	rst 38h			;f3e2	ff 	. 
	rst 38h			;f3e3	ff 	. 
	rst 38h			;f3e4	ff 	. 
	rst 38h			;f3e5	ff 	. 
	rst 38h			;f3e6	ff 	. 
	rst 38h			;f3e7	ff 	. 
	rst 38h			;f3e8	ff 	. 
	rst 38h			;f3e9	ff 	. 
	rst 38h			;f3ea	ff 	. 
	rst 38h			;f3eb	ff 	. 
	rst 38h			;f3ec	ff 	. 
	rst 38h			;f3ed	ff 	. 
	rst 38h			;f3ee	ff 	. 
	rst 38h			;f3ef	ff 	. 
	rst 38h			;f3f0	ff 	. 
	rst 38h			;f3f1	ff 	. 
	rst 38h			;f3f2	ff 	. 
	rst 38h			;f3f3	ff 	. 
	rst 38h			;f3f4	ff 	. 
	rst 38h			;f3f5	ff 	. 
	rst 38h			;f3f6	ff 	. 
	rst 38h			;f3f7	ff 	. 
	rst 38h			;f3f8	ff 	. 
	rst 38h			;f3f9	ff 	. 
	rst 38h			;f3fa	ff 	. 
	rst 38h			;f3fb	ff 	. 
	rst 38h			;f3fc	ff 	. 
	rst 38h			;f3fd	ff 	. 
	rst 38h			;f3fe	ff 	. 
	rst 38h			;f3ff	ff 	. 
	rst 38h			;f400	ff 	. 
	rst 38h			;f401	ff 	. 
	rst 38h			;f402	ff 	. 
	rst 38h			;f403	ff 	. 
	rst 38h			;f404	ff 	. 
	rst 38h			;f405	ff 	. 
	rst 38h			;f406	ff 	. 
	rst 38h			;f407	ff 	. 
	rst 38h			;f408	ff 	. 
	rst 38h			;f409	ff 	. 
	rst 38h			;f40a	ff 	. 
	rst 38h			;f40b	ff 	. 
	rst 38h			;f40c	ff 	. 
	rst 38h			;f40d	ff 	. 
	rst 38h			;f40e	ff 	. 
	rst 38h			;f40f	ff 	. 
	rst 38h			;f410	ff 	. 
	rst 38h			;f411	ff 	. 
	rst 38h			;f412	ff 	. 
	rst 38h			;f413	ff 	. 
	rst 38h			;f414	ff 	. 
	rst 38h			;f415	ff 	. 
	rst 38h			;f416	ff 	. 
	rst 38h			;f417	ff 	. 
	rst 38h			;f418	ff 	. 
	rst 38h			;f419	ff 	. 
	rst 38h			;f41a	ff 	. 
	rst 38h			;f41b	ff 	. 
	rst 38h			;f41c	ff 	. 
	rst 38h			;f41d	ff 	. 
	rst 38h			;f41e	ff 	. 
	rst 38h			;f41f	ff 	. 
	rst 38h			;f420	ff 	. 
	rst 38h			;f421	ff 	. 
	rst 38h			;f422	ff 	. 
	rst 38h			;f423	ff 	. 
	rst 38h			;f424	ff 	. 
	rst 38h			;f425	ff 	. 
	rst 38h			;f426	ff 	. 
	rst 38h			;f427	ff 	. 
	rst 38h			;f428	ff 	. 
	rst 38h			;f429	ff 	. 
	rst 38h			;f42a	ff 	. 
	rst 38h			;f42b	ff 	. 
	rst 38h			;f42c	ff 	. 
	rst 38h			;f42d	ff 	. 
	rst 38h			;f42e	ff 	. 
	rst 38h			;f42f	ff 	. 
	rst 38h			;f430	ff 	. 
	rst 38h			;f431	ff 	. 
	rst 38h			;f432	ff 	. 
	rst 38h			;f433	ff 	. 
	rst 38h			;f434	ff 	. 
	rst 38h			;f435	ff 	. 
	rst 38h			;f436	ff 	. 
	rst 38h			;f437	ff 	. 
	rst 38h			;f438	ff 	. 
	rst 38h			;f439	ff 	. 
	rst 38h			;f43a	ff 	. 
	rst 38h			;f43b	ff 	. 
	rst 38h			;f43c	ff 	. 
	rst 38h			;f43d	ff 	. 
	rst 38h			;f43e	ff 	. 
	rst 38h			;f43f	ff 	. 
	rst 38h			;f440	ff 	. 
	rst 38h			;f441	ff 	. 
	rst 38h			;f442	ff 	. 
	rst 38h			;f443	ff 	. 
	rst 38h			;f444	ff 	. 
	rst 38h			;f445	ff 	. 
	rst 38h			;f446	ff 	. 
	rst 38h			;f447	ff 	. 
	rst 38h			;f448	ff 	. 
	rst 38h			;f449	ff 	. 
	rst 38h			;f44a	ff 	. 
	rst 38h			;f44b	ff 	. 
	rst 38h			;f44c	ff 	. 
	rst 38h			;f44d	ff 	. 
	rst 38h			;f44e	ff 	. 
	rst 38h			;f44f	ff 	. 
	rst 38h			;f450	ff 	. 
	rst 38h			;f451	ff 	. 
	rst 38h			;f452	ff 	. 
	rst 38h			;f453	ff 	. 
	rst 38h			;f454	ff 	. 
	rst 38h			;f455	ff 	. 
	rst 38h			;f456	ff 	. 
	rst 38h			;f457	ff 	. 
	rst 38h			;f458	ff 	. 
	rst 38h			;f459	ff 	. 
	rst 38h			;f45a	ff 	. 
	rst 38h			;f45b	ff 	. 
	rst 38h			;f45c	ff 	. 
	rst 38h			;f45d	ff 	. 
	rst 38h			;f45e	ff 	. 
	rst 38h			;f45f	ff 	. 
	rst 38h			;f460	ff 	. 
	rst 38h			;f461	ff 	. 
	rst 38h			;f462	ff 	. 
	rst 38h			;f463	ff 	. 
	rst 38h			;f464	ff 	. 
	rst 38h			;f465	ff 	. 
	rst 38h			;f466	ff 	. 
	rst 38h			;f467	ff 	. 
	rst 38h			;f468	ff 	. 
	rst 38h			;f469	ff 	. 
	rst 38h			;f46a	ff 	. 
	rst 38h			;f46b	ff 	. 
	rst 38h			;f46c	ff 	. 
	rst 38h			;f46d	ff 	. 
	rst 38h			;f46e	ff 	. 
	rst 38h			;f46f	ff 	. 
	rst 38h			;f470	ff 	. 
	rst 38h			;f471	ff 	. 
	rst 38h			;f472	ff 	. 
	rst 38h			;f473	ff 	. 
	rst 38h			;f474	ff 	. 
	rst 38h			;f475	ff 	. 
	rst 38h			;f476	ff 	. 
	rst 38h			;f477	ff 	. 
	rst 38h			;f478	ff 	. 
	rst 38h			;f479	ff 	. 
	rst 38h			;f47a	ff 	. 
	rst 38h			;f47b	ff 	. 
	rst 38h			;f47c	ff 	. 
	rst 38h			;f47d	ff 	. 
	rst 38h			;f47e	ff 	. 
	rst 38h			;f47f	ff 	. 
	rst 38h			;f480	ff 	. 
	rst 38h			;f481	ff 	. 
	rst 38h			;f482	ff 	. 
	rst 38h			;f483	ff 	. 
	rst 38h			;f484	ff 	. 
	rst 38h			;f485	ff 	. 
	rst 38h			;f486	ff 	. 
	rst 38h			;f487	ff 	. 
	rst 38h			;f488	ff 	. 
	rst 38h			;f489	ff 	. 
	rst 38h			;f48a	ff 	. 
	rst 38h			;f48b	ff 	. 
	rst 38h			;f48c	ff 	. 
	rst 38h			;f48d	ff 	. 
	rst 38h			;f48e	ff 	. 
	rst 38h			;f48f	ff 	. 
	rst 38h			;f490	ff 	. 
	rst 38h			;f491	ff 	. 
	rst 38h			;f492	ff 	. 
	rst 38h			;f493	ff 	. 
	rst 38h			;f494	ff 	. 
	rst 38h			;f495	ff 	. 
	rst 38h			;f496	ff 	. 
	rst 38h			;f497	ff 	. 
	rst 38h			;f498	ff 	. 
	rst 38h			;f499	ff 	. 
	rst 38h			;f49a	ff 	. 
	rst 38h			;f49b	ff 	. 
	rst 38h			;f49c	ff 	. 
	rst 38h			;f49d	ff 	. 
	rst 38h			;f49e	ff 	. 
	rst 38h			;f49f	ff 	. 
	rst 38h			;f4a0	ff 	. 
	rst 38h			;f4a1	ff 	. 
	rst 38h			;f4a2	ff 	. 
	rst 38h			;f4a3	ff 	. 
	rst 38h			;f4a4	ff 	. 
	rst 38h			;f4a5	ff 	. 
	rst 38h			;f4a6	ff 	. 
	rst 38h			;f4a7	ff 	. 
	rst 38h			;f4a8	ff 	. 
	rst 38h			;f4a9	ff 	. 
	rst 38h			;f4aa	ff 	. 
	rst 38h			;f4ab	ff 	. 
	rst 38h			;f4ac	ff 	. 
	rst 38h			;f4ad	ff 	. 
	rst 38h			;f4ae	ff 	. 
	rst 38h			;f4af	ff 	. 
	rst 38h			;f4b0	ff 	. 
	rst 38h			;f4b1	ff 	. 
	rst 38h			;f4b2	ff 	. 
	rst 38h			;f4b3	ff 	. 
	rst 38h			;f4b4	ff 	. 
	rst 38h			;f4b5	ff 	. 
	rst 38h			;f4b6	ff 	. 
	rst 38h			;f4b7	ff 	. 
	rst 38h			;f4b8	ff 	. 
	rst 38h			;f4b9	ff 	. 
	rst 38h			;f4ba	ff 	. 
	rst 38h			;f4bb	ff 	. 
	rst 38h			;f4bc	ff 	. 
	rst 38h			;f4bd	ff 	. 
	rst 38h			;f4be	ff 	. 
	rst 38h			;f4bf	ff 	. 
	rst 38h			;f4c0	ff 	. 
	rst 38h			;f4c1	ff 	. 
	rst 38h			;f4c2	ff 	. 
	rst 38h			;f4c3	ff 	. 
	rst 38h			;f4c4	ff 	. 
	rst 38h			;f4c5	ff 	. 
	rst 38h			;f4c6	ff 	. 
	rst 38h			;f4c7	ff 	. 
	rst 38h			;f4c8	ff 	. 
	rst 38h			;f4c9	ff 	. 
	rst 38h			;f4ca	ff 	. 
	rst 38h			;f4cb	ff 	. 
	rst 38h			;f4cc	ff 	. 
	rst 38h			;f4cd	ff 	. 
	rst 38h			;f4ce	ff 	. 
	rst 38h			;f4cf	ff 	. 
	rst 38h			;f4d0	ff 	. 
	rst 38h			;f4d1	ff 	. 
	rst 38h			;f4d2	ff 	. 
	rst 38h			;f4d3	ff 	. 
	rst 38h			;f4d4	ff 	. 
	rst 38h			;f4d5	ff 	. 
	rst 38h			;f4d6	ff 	. 
	rst 38h			;f4d7	ff 	. 
	rst 38h			;f4d8	ff 	. 
	rst 38h			;f4d9	ff 	. 
	rst 38h			;f4da	ff 	. 
	rst 38h			;f4db	ff 	. 
	rst 38h			;f4dc	ff 	. 
	rst 38h			;f4dd	ff 	. 
	rst 38h			;f4de	ff 	. 
	rst 38h			;f4df	ff 	. 
	rst 38h			;f4e0	ff 	. 
	rst 38h			;f4e1	ff 	. 
	rst 38h			;f4e2	ff 	. 
	rst 38h			;f4e3	ff 	. 
	rst 38h			;f4e4	ff 	. 
	rst 38h			;f4e5	ff 	. 
	rst 38h			;f4e6	ff 	. 
	rst 38h			;f4e7	ff 	. 
	rst 38h			;f4e8	ff 	. 
	rst 38h			;f4e9	ff 	. 
	rst 38h			;f4ea	ff 	. 
	rst 38h			;f4eb	ff 	. 
	rst 38h			;f4ec	ff 	. 
	rst 38h			;f4ed	ff 	. 
	rst 38h			;f4ee	ff 	. 
	rst 38h			;f4ef	ff 	. 
	rst 38h			;f4f0	ff 	. 
	rst 38h			;f4f1	ff 	. 
	rst 38h			;f4f2	ff 	. 
	rst 38h			;f4f3	ff 	. 
	rst 38h			;f4f4	ff 	. 
	rst 38h			;f4f5	ff 	. 
	rst 38h			;f4f6	ff 	. 
	rst 38h			;f4f7	ff 	. 
	rst 38h			;f4f8	ff 	. 
	rst 38h			;f4f9	ff 	. 
	rst 38h			;f4fa	ff 	. 
	rst 38h			;f4fb	ff 	. 
	rst 38h			;f4fc	ff 	. 
	rst 38h			;f4fd	ff 	. 
	rst 38h			;f4fe	ff 	. 
	rst 38h			;f4ff	ff 	. 
lf500h:
	call sub_faaeh		;f500	cd ae fa 	. . . 
	ld hl,lf531h		;f503	21 31 f5 	! 1 . 
	ld de,00000h		;f506	11 00 00 	. . . 
	ld b,060h		;f509	06 60 	. ` 
	call 084cdh		;f50b	cd cd 84 	. . . 
	ld a,005h		;f50e	3e 05 	> . 
	ld (07900h),a		;f510	32 00 79 	2 . y 
lf513h:
	call 0bcc4h		;f513	cd c4 bc 	. . . 
	cp 031h		;f516	fe 31 	. 1 
	jp z,0f591h		;f518	ca 91 f5 	. . . 
	cp 032h		;f51b	fe 32 	. 2 
	jp z,lf693h		;f51d	ca 93 f6 	. . . 
	cp 033h		;f520	fe 33 	. 3 
	jp z,lf6c3h		;f522	ca c3 f6 	. . . 
	cp 034h		;f525	fe 34 	. 4 
	jp z,lf759h		;f527	ca 59 f7 	. Y . 
	cp 035h		;f52a	fe 35 	. 5 
	jp z,lf65dh		;f52c	ca 5d f6 	. ] . 
	jr lf513h		;f52f	18 e2 	. . 
lf531h:
	ld hl,(0202ah)		;f531	2a 2a 20 	* *   
	ld d,b			;f534	50 	P 
	ld b,e			;f535	43 	C 
	dec l			;f536	2d 	- 
	ld b,l			;f537	45 	E 
	ld (03032h),a		;f538	32 32 30 	2 2 0 
	jr nz,lf593h		;f53b	20 56 	  V 
	ld l,032h		;f53d	2e 32 	. 2 
	jr nz,$+34		;f53f	20 20 	    
	ld b,e			;f541	43 	C 
	ld c,b			;f542	48 	H 
	ld b,l			;f543	45 	E 
	ld b,e			;f544	43 	C 
	ld c,e			;f545	4b 	K 
	jr nz,lf572h		;f546	20 2a 	  * 
	ld hl,(03a31h)		;f548	2a 31 3a 	* 1 : 
	ld d,h			;f54b	54 	T 
	ld c,a			;f54c	4f 	O 
	ld d,h			;f54d	54 	T 
	ld b,c			;f54e	41 	A 
	ld c,h			;f54f	4c 	L 
	jr nz,lf572h		;f550	20 20 	    
	jr nz,lf574h		;f552	20 20 	    
	jr nz,lf588h		;f554	20 32 	  2 
	ld a,(02f42h)		;f556	3a 42 2f 	: B / 
	ld d,l			;f559	55 	U 
	inc l			;f55a	2c 	, 
	ld c,e			;f55b	4b 	K 
	ld b,l			;f55c	45 	E 
	ld e,c			;f55d	59 	Y 
	jr nz,lf580h		;f55e	20 20 	    
	jr nz,$+53		;f560	20 33 	  3 
	ld a,(04853h)		;f562	3a 53 48 	: S H 
	ld c,a			;f565	4f 	O 
	ld b,e			;f566	43 	C 
	ld c,e			;f567	4b 	K 
	jr nz,lf58ah		;f568	20 20 	    
	jr nz,lf58ch		;f56a	20 20 	    
	jr nz,$+54		;f56c	20 34 	  4 
	ld a,(04741h)		;f56e	3a 41 47 	: A G 
	ld c,c			;f571	49 	I 
lf572h:
	ld c,(hl)			;f572	4e 	N 
	ld b,a			;f573	47 	G 
lf574h:
	jr nz,lf596h		;f574	20 20 	    
	jr nz,$+34		;f576	20 20 	    
	jr nz,$+55		;f578	20 35 	  5 
	ld a,(0454bh)		;f57a	3a 4b 45 	: K E 
	ld e,c			;f57d	59 	Y 
	jr nz,$+34		;f57e	20 20 	    
lf580h:
	jr nz,$+34		;f580	20 20 	    
	jr nz,$+34		;f582	20 20 	    
	jr nz,lf5a6h		;f584	20 20 	    
	jr nz,$+34		;f586	20 20 	    
lf588h:
	jr nz,$+34		;f588	20 20 	    
lf58ah:
	jr nz,lf5ach		;f58a	20 20 	    
lf58ch:
	jr nz,lf5aeh		;f58c	20 20 	    
	jr nz,$+34		;f58e	20 20 	    
	jr nz,$+64		;f590	20 3e 	  > 
	rrca			;f592	0f 	. 
lf593h:
	ld bc,00190h		;f593	01 90 01 	. . . 
lf596h:
	ld de,00001h		;f596	11 01 00 	. . . 
	call sub_fd02h		;f599	cd 02 fd 	. . . 
	ld a,000h		;f59c	3e 00 	> . 
	ld (07932h),a		;f59e	32 32 79 	2 2 y 
	out (017h),a		;f5a1	d3 17 	. . 
	call sub_faaeh		;f5a3	cd ae fa 	. . . 
lf5a6h:
	ld hl,lf82ch		;f5a6	21 2c f8 	! , . 
	ld de,00000h		;f5a9	11 00 00 	. . . 
lf5ach:
	ld b,00ch		;f5ac	06 0c 	. . 
lf5aeh:
	call 084cdh		;f5ae	cd cd 84 	. . . 
	call sub_f9d8h		;f5b1	cd d8 f9 	. . . 
	ld a,000h		;f5b4	3e 00 	> . 
	ld (0790dh),a		;f5b6	32 0d 79 	2 . y 
	jr nc,lf5c0h		;f5b9	30 05 	0 . 
	call c,sub_f926h		;f5bb	dc 26 f9 	. & . 
	jr lf5ceh		;f5be	18 0e 	. . 
lf5c0h:
	call 0871ah		;f5c0	cd 1a 87 	. . . 
	ld hl,lf838h		;f5c3	21 38 f8 	! 8 . 
	ld de,00100h		;f5c6	11 00 01 	. . . 
	ld b,00eh		;f5c9	06 0e 	. . 
	call 084cdh		;f5cb	cd cd 84 	. . . 
lf5ceh:
	ld hl,0f846h		;f5ce	21 46 f8 	! F . 
	ld de,00200h		;f5d1	11 00 02 	. . . 
	ld b,00ch		;f5d4	06 0c 	. . 
	call 084cdh		;f5d6	cd cd 84 	. . . 
	ld hl,lfa07h		;f5d9	21 07 fa 	! . . 
	ld de,07200h		;f5dc	11 00 72 	. . r 
	ld bc,001ffh		;f5df	01 ff 01 	. . . 
	ldir		;f5e2	ed b0 	. . 
	ld hl,lfa63h		;f5e4	21 63 fa 	! c . 
	ld de,07400h		;f5e7	11 00 74 	. . t 
	ld bc,000ffh		;f5ea	01 ff 00 	. . . 
	ldir		;f5ed	ed b0 	. . 
	call 07200h		;f5ef	cd 00 72 	. . r 
	ld hl,lf691h		;f5f2	21 91 f6 	! . . 
	ld b,(hl)			;f5f5	46 	F 
	cp b			;f5f6	b8 	. 
	jr z,lf5feh		;f5f7	28 05 	( . 
	call nz,sub_f937h		;f5f9	c4 37 f9 	. 7 . 
	jr lf60ch		;f5fc	18 0e 	. . 
lf5feh:
	ld hl,lf852h		;f5fe	21 52 f8 	! R . 
	ld de,00300h		;f601	11 00 03 	. . . 
	ld b,00eh		;f604	06 0e 	. . 
	call 084cdh		;f606	cd cd 84 	. . . 
	call sub_f6f2h		;f609	cd f2 f6 	. . . 
lf60ch:
	call sub_faaeh		;f60c	cd ae fa 	. . . 
	ld hl,0f87ah		;f60f	21 7a f8 	! z . 
	ld de,00000h		;f612	11 00 00 	. . . 
	ld b,00ch		;f615	06 0c 	. . 
	call 084cdh		;f617	cd cd 84 	. . . 
	call sub_fc79h		;f61a	cd 79 fc 	. y . 
	jr nc,lf625h		;f61d	30 06 	0 . 
	call c,sub_f964h		;f61f	dc 64 f9 	. d . 
	jp lf630h		;f622	c3 30 f6 	. 0 . 
lf625h:
	ld hl,lf886h		;f625	21 86 f8 	! . . 
	ld de,00100h		;f628	11 00 01 	. . . 
	ld b,00eh		;f62b	06 0e 	. . 
	call 084cdh		;f62d	cd cd 84 	. . . 
lf630h:
	ld hl,lf8d8h		;f630	21 d8 f8 	! . . 
	ld de,00300h		;f633	11 00 03 	. . . 
	ld b,010h		;f636	06 10 	. . 
	call 084cdh		;f638	cd cd 84 	. . . 
	call sub_f710h		;f63b	cd 10 f7 	. . . 
	call sub_f6f2h		;f63e	cd f2 f6 	. . . 
	call sub_faaeh		;f641	cd ae fa 	. . . 
	call sub_fa72h		;f644	cd 72 fa 	. r . 
lf647h:
	call 0bcc4h		;f647	cd c4 bc 	. . . 
	ld b,00dh		;f64a	06 0d 	. . 
	cp b			;f64c	b8 	. 
	jr nz,lf647h		;f64d	20 f8 	  . 
	call sub_faaeh		;f64f	cd ae fa 	. . . 
	call sub_fa83h		;f652	cd 83 fa 	. . . 
lf655h:
	call 0bcc4h		;f655	cd c4 bc 	. . . 
	ld b,00dh		;f658	06 0d 	. . 
	cp b			;f65a	b8 	. 
	jr nz,lf655h		;f65b	20 f8 	  . 
lf65dh:
	call sub_faaeh		;f65d	cd ae fa 	. . . 
	call sub_fabfh		;f660	cd bf fa 	. . . 
	jr nc,lf66ah		;f663	30 05 	0 . 
	call c,sub_f953h		;f665	dc 53 f9 	. S . 
	jr lf678h		;f668	18 0e 	. . 
lf66ah:
	call sub_faaeh		;f66a	cd ae fa 	. . . 
	ld hl,lf86ch		;f66d	21 6c f8 	! l . 
	ld de,00100h		;f670	11 00 01 	. . . 
	ld b,00eh		;f673	06 0e 	. . 
	call 084cdh		;f675	cd cd 84 	. . . 
lf678h:
	call 0bcc4h		;f678	cd c4 bc 	. . . 
	cp 001h		;f67b	fe 01 	. . 
	jr nz,lf678h		;f67d	20 f9 	  . 
	ld hl,07f20h		;f67f	21 20 7f 	!    
	ld a,05ah		;f682	3e 5a 	> Z 
	ld (hl),a			;f684	77 	w 
	inc hl			;f685	23 	# 
	ld b,007h		;f686	06 07 	. . 
	ld a,0a5h		;f688	3e a5 	> . 
lf68ah:
	ld (hl),a			;f68a	77 	w 
	inc hl			;f68b	23 	# 
	djnz lf68ah		;f68c	10 fc 	. . 
	jp 08cfeh		;f68e	c3 fe 8c 	. . . 
lf691h:
	or e			;f691	b3 	. 
	ld c,h			;f692	4c 	L 
lf693h:
	call sub_faaeh		;f693	cd ae fa 	. . . 
	ld hl,lf8e8h		;f696	21 e8 f8 	! . . 
	ld de,00000h		;f699	11 00 00 	. . . 
	ld b,015h		;f69c	06 15 	. . 
	call 084cdh		;f69e	cd cd 84 	. . . 
	call sub_f726h		;f6a1	cd 26 f7 	. & . 
	jr nc,lf6abh		;f6a4	30 05 	0 . 
	call sub_f945h		;f6a6	cd 45 f9 	. E . 
	jr lf65dh		;f6a9	18 b2 	. . 
lf6abh:
	ld hl,lf8fdh		;f6ab	21 fd f8 	! . . 
	ld de,00100h		;f6ae	11 00 01 	. . . 
	ld b,015h		;f6b1	06 15 	. . 
	call 084cdh		;f6b3	cd cd 84 	. . . 
	call sub_f6f2h		;f6b6	cd f2 f6 	. . . 
lf6b9h:
	call 0bcc4h		;f6b9	cd c4 bc 	. . . 
	ld b,00dh		;f6bc	06 0d 	. . 
	cp b			;f6be	b8 	. 
	jr nz,lf6b9h		;f6bf	20 f8 	  . 
	jr lf65dh		;f6c1	18 9a 	. . 
lf6c3h:
	call sub_faaeh		;f6c3	cd ae fa 	. . . 
	ld de,00000h		;f6c6	11 00 00 	. . . 
	call sub_f6e9h		;f6c9	cd e9 f6 	. . . 
	ld de,00200h		;f6cc	11 00 02 	. . . 
	call sub_f6e9h		;f6cf	cd e9 f6 	. . . 
	call sub_f6f2h		;f6d2	cd f2 f6 	. . . 
	call sub_faaeh		;f6d5	cd ae fa 	. . . 
	ld de,00100h		;f6d8	11 00 01 	. . . 
	call sub_f6e9h		;f6db	cd e9 f6 	. . . 
	ld de,00300h		;f6de	11 00 03 	. . . 
	call sub_f6e9h		;f6e1	cd e9 f6 	. . . 
	call sub_f6f2h		;f6e4	cd f2 f6 	. . . 
	jr lf6c3h		;f6e7	18 da 	. . 
sub_f6e9h:
	ld hl,lf741h		;f6e9	21 41 f7 	! A . 
	ld b,018h		;f6ec	06 18 	. . 
	call 084cdh		;f6ee	cd cd 84 	. . . 
	ret			;f6f1	c9 	. 
sub_f6f2h:
	ld b,0ffh		;f6f2	06 ff 	. . 
lf6f4h:
	call sub_fcf5h		;f6f4	cd f5 fc 	. . . 
	dec b			;f6f7	05 	. 
	jr nz,lf6f4h		;f6f8	20 fa 	  . 
	ld b,0ffh		;f6fa	06 ff 	. . 
lf6fch:
	call sub_fcf5h		;f6fc	cd f5 fc 	. . . 
	dec b			;f6ff	05 	. 
	jr nz,lf6fch		;f700	20 fa 	  . 
	call 088abh		;f702	cd ab 88 	. . . 
	jr c,lf708h		;f705	38 01 	8 . 
	ret			;f707	c9 	. 
lf708h:
	cp 001h		;f708	fe 01 	. . 
	jr z,lf70eh		;f70a	28 02 	( . 
	and a			;f70c	a7 	. 
	ret			;f70d	c9 	. 
lf70eh:
	scf			;f70e	37 	7 
	ret			;f70f	c9 	. 
sub_f710h:
	ld hl,00200h		;f710	21 00 02 	! . . 
	ld c,000h		;f713	0e 00 	. . 
lf715h:
	ld b,000h		;f715	06 00 	. . 
lf717h:
	ld (hl),c			;f717	71 	q 
	inc hl			;f718	23 	# 
	inc c			;f719	0c 	. 
	djnz lf717h		;f71a	10 fb 	. . 
	ld a,h			;f71c	7c 	| 
	cp 078h		;f71d	fe 78 	. x 
	jr z,lf724h		;f71f	28 03 	( . 
	inc c			;f721	0c 	. 
	jr lf715h		;f722	18 f1 	. . 
lf724h:
	and a			;f724	a7 	. 
	ret			;f725	c9 	. 
sub_f726h:
	ld hl,00200h		;f726	21 00 02 	! . . 
	ld c,000h		;f729	0e 00 	. . 
lf72bh:
	ld b,000h		;f72b	06 00 	. . 
lf72dh:
	ld a,(hl)			;f72d	7e 	~ 
	cp c			;f72e	b9 	. 
	jr nz,lf73fh		;f72f	20 0e 	  . 
	inc hl			;f731	23 	# 
	inc c			;f732	0c 	. 
	djnz lf72dh		;f733	10 f8 	. . 
	ld a,078h		;f735	3e 78 	> x 
	cp h			;f737	bc 	. 
	jr z,lf73dh		;f738	28 03 	( . 
	inc c			;f73a	0c 	. 
	jr lf72bh		;f73b	18 ee 	. . 
lf73dh:
	and a			;f73d	a7 	. 
	ret			;f73e	c9 	. 
lf73fh:
	scf			;f73f	37 	7 
	ret			;f740	c9 	. 
lf741h:
	jr c,lf77bh		;f741	38 38 	8 8 
	jr c,$+58		;f743	38 38 	8 8 
	jr c,$+58		;f745	38 38 	8 8 
	jr c,lf781h		;f747	38 38 	8 8 
	jr c,$+58		;f749	38 38 	8 8 
	jr c,$+58		;f74b	38 38 	8 8 
	jr c,$+58		;f74d	38 38 	8 8 
	jr c,lf789h		;f74f	38 38 	8 8 
	jr c,$+58		;f751	38 38 	8 8 
	jr c,$+58		;f753	38 38 	8 8 
	jr c,lf78fh		;f755	38 38 	8 8 
	jr c,$+58		;f757	38 38 	8 8 
lf759h:
	ld hl,00000h		;f759	21 00 00 	! . . 
	ld (07c00h),hl		;f75c	22 00 7c 	" . | 
	ld (07c01h),hl		;f75f	22 01 7c 	" . | 
	ld a,000h		;f762	3e 00 	> . 
	ld (07932h),a		;f764	32 32 79 	2 2 y 
	out (017h),a		;f767	d3 17 	. . 
lf769h:
	call sub_faaeh		;f769	cd ae fa 	. . . 
	call sub_f9d8h		;f76c	cd d8 f9 	. . . 
	ld a,000h		;f76f	3e 00 	> . 
	ld (0790dh),a		;f771	32 0d 79 	2 . y 
	jr nc,lf77bh		;f774	30 05 	0 . 
	call c,sub_f926h		;f776	dc 26 f9 	. & . 
	jr lf78ch		;f779	18 11 	. . 
lf77bh:
	call 0871ah		;f77b	cd 1a 87 	. . . 
	ld hl,lf838h		;f77e	21 38 f8 	! 8 . 
lf781h:
	ld de,00000h		;f781	11 00 00 	. . . 
	ld b,00eh		;f784	06 0e 	. . 
	call 084cdh		;f786	cd cd 84 	. . . 
lf789h:
	call sub_f7dfh		;f789	cd df f7 	. . . 
lf78ch:
	ld hl,lfa07h		;f78c	21 07 fa 	! . . 
lf78fh:
	ld de,07200h		;f78f	11 00 72 	. . r 
	ld bc,001ffh		;f792	01 ff 01 	. . . 
	ldir		;f795	ed b0 	. . 
	ld hl,lfa63h		;f797	21 63 fa 	! c . 
	ld de,07400h		;f79a	11 00 74 	. . t 
	ld bc,000ffh		;f79d	01 ff 00 	. . . 
	ldir		;f7a0	ed b0 	. . 
	call 07200h		;f7a2	cd 00 72 	. . r 
	ld hl,lf691h		;f7a5	21 91 f6 	! . . 
	ld b,(hl)			;f7a8	46 	F 
	cp b			;f7a9	b8 	. 
	jr z,lf7b1h		;f7aa	28 05 	( . 
	call nz,sub_f937h		;f7ac	c4 37 f9 	. 7 . 
	jr lf7bfh		;f7af	18 0e 	. . 
lf7b1h:
	ld hl,lf852h		;f7b1	21 52 f8 	! R . 
	ld de,00100h		;f7b4	11 00 01 	. . . 
	ld b,00eh		;f7b7	06 0e 	. . 
	call 084cdh		;f7b9	cd cd 84 	. . . 
	call sub_f6f2h		;f7bc	cd f2 f6 	. . . 
lf7bfh:
	call sub_fa72h		;f7bf	cd 72 fa 	. r . 
	call sub_f6f2h		;f7c2	cd f2 f6 	. . . 
	call sub_fa83h		;f7c5	cd 83 fa 	. . . 
	call sub_f6f2h		;f7c8	cd f2 f6 	. . . 
	ld hl,(07c00h)		;f7cb	2a 00 7c 	* . | 
	ld de,00001h		;f7ce	11 01 00 	. . . 
	add hl,de			;f7d1	19 	. 
	ld (07c00h),hl		;f7d2	22 00 7c 	" . | 
	ld a,(07c02h)		;f7d5	3a 02 7c 	: . | 
	adc a,000h		;f7d8	ce 00 	. . 
	ld (07c02h),a		;f7da	32 02 7c 	2 . | 
	jr lf769h		;f7dd	18 8a 	. . 
sub_f7dfh:
	ld hl,07ce8h		;f7df	21 e8 7c 	! . | 
	ld a,(07c02h)		;f7e2	3a 02 7c 	: . | 
	call sub_f801h		;f7e5	cd 01 f8 	. . . 
	ld a,(07c01h)		;f7e8	3a 01 7c 	: . | 
	call sub_f801h		;f7eb	cd 01 f8 	. . . 
	ld a,(07c00h)		;f7ee	3a 00 7c 	: . | 
	call sub_f801h		;f7f1	cd 01 f8 	. . . 
	ld hl,07ce8h		;f7f4	21 e8 7c 	! . | 
	ld de,00012h		;f7f7	11 12 00 	. . . 
	ld b,006h		;f7fa	06 06 	. . 
	call 084cdh		;f7fc	cd cd 84 	. . . 
	and a			;f7ff	a7 	. 
	ret			;f800	c9 	. 
sub_f801h:
	push af			;f801	f5 	. 
	and 0f0h		;f802	e6 f0 	. . 
	rrca			;f804	0f 	. 
	rrca			;f805	0f 	. 
	rrca			;f806	0f 	. 
	rrca			;f807	0f 	. 
	add a,030h		;f808	c6 30 	. 0 
	cp 03ah		;f80a	fe 3a 	. : 
	jr c,lf810h		;f80c	38 02 	8 . 
	add a,007h		;f80e	c6 07 	. . 
lf810h:
	ld (hl),a			;f810	77 	w 
	inc hl			;f811	23 	# 
	pop af			;f812	f1 	. 
	and 00fh		;f813	e6 0f 	. . 
	add a,030h		;f815	c6 30 	. 0 
	cp 03ah		;f817	fe 3a 	. : 
	jr c,lf81dh		;f819	38 02 	8 . 
	add a,007h		;f81b	c6 07 	. . 
lf81dh:
	ld (hl),a			;f81d	77 	w 
	inc hl			;f81e	23 	# 
	ret			;f81f	c9 	. 
lf820h:
	nop			;f820	00 	. 
	nop			;f821	00 	. 
	nop			;f822	00 	. 
	nop			;f823	00 	. 
lf824h:
	dec d			;f824	15 	. 
	ld d,b			;f825	50 	P 
	ld hl,(00a20h)		;f826	2a 20 0a 	*   . 
	jr z,lf880h		;f829	28 55 	( U 
	ld b,b			;f82b	40 	@ 
lf82ch:
	ld d,d			;f82c	52 	R 
	ld b,c			;f82d	41 	A 
	ld c,l			;f82e	4d 	M 
	jr nz,lf874h		;f82f	20 43 	  C 
	ld c,b			;f831	48 	H 
	ld b,l			;f832	45 	E 
	ld b,e			;f833	43 	C 
	ld c,e			;f834	4b 	K 
	ld c,c			;f835	49 	I 
	ld c,(hl)			;f836	4e 	N 
	ld b,a			;f837	47 	G 
lf838h:
	ld d,d			;f838	52 	R 
	ld b,c			;f839	41 	A 
	ld c,l			;f83a	4d 	M 
	jr nz,lf880h		;f83b	20 43 	  C 
	ld c,b			;f83d	48 	H 
	ld b,l			;f83e	45 	E 
	ld b,e			;f83f	43 	C 
	ld c,e			;f840	4b 	K 
	jr nz,$+81		;f841	20 4f 	  O 
	ld l,04bh		;f843	2e 4b 	. K 
	ld l,052h		;f845	2e 52 	. R 
	ld c,a			;f847	4f 	O 
	ld c,l			;f848	4d 	M 
	jr nz,lf88eh		;f849	20 43 	  C 
	ld c,b			;f84b	48 	H 
	ld b,l			;f84c	45 	E 
	ld b,e			;f84d	43 	C 
	ld c,e			;f84e	4b 	K 
	ld c,c			;f84f	49 	I 
	ld c,(hl)			;f850	4e 	N 
	ld b,a			;f851	47 	G 
lf852h:
	ld d,d			;f852	52 	R 
	ld c,a			;f853	4f 	O 
	ld c,l			;f854	4d 	M 
	jr nz,lf89ah		;f855	20 43 	  C 
	ld c,b			;f857	48 	H 
	ld b,l			;f858	45 	E 
	ld b,e			;f859	43 	C 
	ld c,e			;f85a	4b 	K 
	jr nz,lf8ach		;f85b	20 4f 	  O 
	ld l,04bh		;f85d	2e 4b 	. K 
	ld l,04bh		;f85f	2e 4b 	. K 
	ld b,l			;f861	45 	E 
	ld e,c			;f862	59 	Y 
	jr nz,lf8a8h		;f863	20 43 	  C 
	ld c,b			;f865	48 	H 
	ld b,l			;f866	45 	E 
	ld b,e			;f867	43 	C 
	ld c,e			;f868	4b 	K 
	ld c,c			;f869	49 	I 
	ld c,(hl)			;f86a	4e 	N 
	ld b,a			;f86b	47 	G 
lf86ch:
	ld c,e			;f86c	4b 	K 
	ld b,l			;f86d	45 	E 
	ld e,c			;f86e	59 	Y 
	jr nz,$+69		;f86f	20 43 	  C 
	ld c,b			;f871	48 	H 
	ld b,l			;f872	45 	E 
	ld b,e			;f873	43 	C 
lf874h:
	ld c,e			;f874	4b 	K 
	jr nz,$+81		;f875	20 4f 	  O 
	ld l,04bh		;f877	2e 4b 	. K 
	ld l,049h		;f879	2e 49 	. I 
	cpl			;f87b	2f 	/ 
	ld c,a			;f87c	4f 	O 
	jr nz,lf8c2h		;f87d	20 43 	  C 
	ld c,b			;f87f	48 	H 
lf880h:
	ld b,l			;f880	45 	E 
	ld b,e			;f881	43 	C 
	ld c,e			;f882	4b 	K 
	ld c,c			;f883	49 	I 
	ld c,(hl)			;f884	4e 	N 
	ld b,a			;f885	47 	G 
lf886h:
	ld c,c			;f886	49 	I 
	cpl			;f887	2f 	/ 
	ld c,a			;f888	4f 	O 
	jr nz,lf8ceh		;f889	20 43 	  C 
	ld c,b			;f88b	48 	H 
	ld b,l			;f88c	45 	E 
	ld b,e			;f88d	43 	C 
lf88eh:
	ld c,e			;f88e	4b 	K 
	jr nz,lf8e0h		;f88f	20 4f 	  O 
	ld l,04bh		;f891	2e 4b 	. K 
	ld l,052h		;f893	2e 52 	. R 
	ld b,c			;f895	41 	A 
	ld c,l			;f896	4d 	M 
	jr nz,lf8deh		;f897	20 45 	  E 
	ld d,d			;f899	52 	R 
lf89ah:
	ld d,d			;f89a	52 	R 
	ld c,a			;f89b	4f 	O 
	ld d,d			;f89c	52 	R 
lf89dh:
	ld d,d			;f89d	52 	R 
	ld c,a			;f89e	4f 	O 
	ld c,l			;f89f	4d 	M 
	jr nz,lf8e7h		;f8a0	20 45 	  E 
	ld d,d			;f8a2	52 	R 
	ld d,d			;f8a3	52 	R 
	ld c,a			;f8a4	4f 	O 
	ld d,d			;f8a5	52 	R 
lf8a6h:
	ld c,e			;f8a6	4b 	K 
	ld b,l			;f8a7	45 	E 
lf8a8h:
	ld e,c			;f8a8	59 	Y 
	jr nz,$+71		;f8a9	20 45 	  E 
	ld d,d			;f8ab	52 	R 
lf8ach:
	ld d,d			;f8ac	52 	R 
	ld c,a			;f8ad	4f 	O 
	ld d,d			;f8ae	52 	R 
	ld b,c			;f8af	41 	A 
	add hl,sp			;f8b0	39 	9 
	jr c,lf8eah		;f8b1	38 37 	8 7 
	ld (hl),035h		;f8b3	36 35 	6 5 
	inc (hl)			;f8b5	34 	4 
	inc sp			;f8b6	33 	3 
	ld (04931h),a		;f8b7	32 31 49 	2 1 I 
	cpl			;f8ba	2f 	/ 
	ld c,a			;f8bb	4f 	O 
	jr nz,lf903h		;f8bc	20 45 	  E 
	ld d,d			;f8be	52 	R 
	ld d,d			;f8bf	52 	R 
	ld c,a			;f8c0	4f 	O 
	ld d,d			;f8c1	52 	R 
lf8c2h:
	ld c,c			;f8c2	49 	I 
	ld c,(hl)			;f8c3	4e 	N 
	ld d,h			;f8c4	54 	T 
	jr nz,lf90ch		;f8c5	20 45 	  E 
	ld d,d			;f8c7	52 	R 
	ld d,d			;f8c8	52 	R 
	ld c,a			;f8c9	4f 	O 
	ld d,d			;f8ca	52 	R 
	ld b,c			;f8cb	41 	A 
	ld b,h			;f8cc	44 	D 
	ld b,h			;f8cd	44 	D 
lf8ceh:
	ld d,d			;f8ce	52 	R 
	ld b,l			;f8cf	45 	E 
	ld d,e			;f8d0	53 	S 
	ld d,e			;f8d1	53 	S 
	jr nz,lf919h		;f8d2	20 45 	  E 
	ld d,d			;f8d4	52 	R 
	ld d,d			;f8d5	52 	R 
	ld c,a			;f8d6	4f 	O 
	ld d,d			;f8d7	52 	R 
lf8d8h:
	ld b,d			;f8d8	42 	B 
	cpl			;f8d9	2f 	/ 
	ld d,l			;f8da	55 	U 
	jr nz,$+70		;f8db	20 44 	  D 
	ld b,c			;f8dd	41 	A 
lf8deh:
	ld d,h			;f8de	54 	T 
	ld b,c			;f8df	41 	A 
lf8e0h:
	jr nz,$+89		;f8e0	20 57 	  W 
	ld d,d			;f8e2	52 	R 
	ld c,c			;f8e3	49 	I 
	ld d,h			;f8e4	54 	T 
	ld c,c			;f8e5	49 	I 
	ld c,(hl)			;f8e6	4e 	N 
lf8e7h:
	ld b,a			;f8e7	47 	G 
lf8e8h:
	ld d,d			;f8e8	52 	R 
	ld b,c			;f8e9	41 	A 
lf8eah:
	ld c,l			;f8ea	4d 	M 
	jr nz,lf92fh		;f8eb	20 42 	  B 
	cpl			;f8ed	2f 	/ 
	ld d,l			;f8ee	55 	U 
	jr nz,$+70		;f8ef	20 44 	  D 
	ld b,c			;f8f1	41 	A 
	ld d,h			;f8f2	54 	T 
	ld b,c			;f8f3	41 	A 
	jr nz,$+69		;f8f4	20 43 	  C 
	ld c,b			;f8f6	48 	H 
	ld b,l			;f8f7	45 	E 
	ld b,e			;f8f8	43 	C 
	ld c,e			;f8f9	4b 	K 
	ld c,c			;f8fa	49 	I 
	ld c,(hl)			;f8fb	4e 	N 
	ld b,a			;f8fc	47 	G 
lf8fdh:
	ld d,d			;f8fd	52 	R 
	ld b,c			;f8fe	41 	A 
	ld c,l			;f8ff	4d 	M 
	jr nz,$+68		;f900	20 42 	  B 
	cpl			;f902	2f 	/ 
lf903h:
	ld d,l			;f903	55 	U 
	jr nz,$+70		;f904	20 44 	  D 
	ld b,c			;f906	41 	A 
	ld d,h			;f907	54 	T 
	ld b,c			;f908	41 	A 
	jr nz,$+69		;f909	20 43 	  C 
	ld c,b			;f90b	48 	H 
lf90ch:
	ld b,l			;f90c	45 	E 
	ld b,e			;f90d	43 	C 
	ld c,e			;f90e	4b 	K 
	jr nz,$+81		;f90f	20 4f 	  O 
	ld c,e			;f911	4b 	K 
lf912h:
	ld b,d			;f912	42 	B 
	cpl			;f913	2f 	/ 
	ld d,l			;f914	55 	U 
	jr nz,$+70		;f915	20 44 	  D 
	ld b,c			;f917	41 	A 
	ld d,h			;f918	54 	T 
lf919h:
	ld b,c			;f919	41 	A 
	jr nz,$+69		;f91a	20 43 	  C 
	ld c,b			;f91c	48 	H 
	ld b,l			;f91d	45 	E 
	ld b,e			;f91e	43 	C 
	ld c,e			;f91f	4b 	K 
	jr nz,lf967h		;f920	20 45 	  E 
	ld d,d			;f922	52 	R 
	ld d,d			;f923	52 	R 
	ld c,a			;f924	4f 	O 
	ld d,d			;f925	52 	R 
sub_f926h:
	call 0871ah		;f926	cd 1a 87 	. . . 
	ld hl,0f894h		;f929	21 94 f8 	! . . 
	ld de,00100h		;f92c	11 00 01 	. . . 
lf92fh:
	ld b,009h		;f92f	06 09 	. . 
	call 084cdh		;f931	cd cd 84 	. . . 
	jp lf9bfh		;f934	c3 bf f9 	. . . 
sub_f937h:
	ld hl,lf89dh		;f937	21 9d f8 	! . . 
	ld de,00300h		;f93a	11 00 03 	. . . 
	ld b,009h		;f93d	06 09 	. . 
	call 084cdh		;f93f	cd cd 84 	. . . 
	jp lf9bfh		;f942	c3 bf f9 	. . . 
sub_f945h:
	ld hl,lf912h		;f945	21 12 f9 	! . . 
	ld de,00100h		;f948	11 00 01 	. . . 
	ld b,014h		;f94b	06 14 	. . 
	call 084cdh		;f94d	cd cd 84 	. . . 
	jp lf9bfh		;f950	c3 bf f9 	. . . 
sub_f953h:
	call sub_faaeh		;f953	cd ae fa 	. . . 
	ld hl,lf8a6h		;f956	21 a6 f8 	! . . 
	ld de,00100h		;f959	11 00 01 	. . . 
	ld b,009h		;f95c	06 09 	. . 
	call 084cdh		;f95e	cd cd 84 	. . . 
	jp lf9bfh		;f961	c3 bf f9 	. . . 
sub_f964h:
	ld hl,07000h		;f964	21 00 70 	! . p 
lf967h:
	ld a,030h		;f967	3e 30 	> 0 
	bit 2,c		;f969	cb 51 	. Q 
	jr z,lf96fh		;f96b	28 02 	( . 
	ld a,031h		;f96d	3e 31 	> 1 
lf96fh:
	ld (hl),a			;f96f	77 	w 
	inc hl			;f970	23 	# 
	ld a,030h		;f971	3e 30 	> 0 
	bit 1,c		;f973	cb 49 	. I 
	jr z,lf979h		;f975	28 02 	( . 
	ld a,031h		;f977	3e 31 	> 1 
lf979h:
	ld (hl),a			;f979	77 	w 
	inc hl			;f97a	23 	# 
	ld a,030h		;f97b	3e 30 	> 0 
	bit 0,c		;f97d	cb 41 	. A 
	jr z,lf983h		;f97f	28 02 	( . 
	ld a,031h		;f981	3e 31 	> 1 
lf983h:
	ld (hl),a			;f983	77 	w 
	inc hl			;f984	23 	# 
	ld a,02dh		;f985	3e 2d 	> - 
	ld (hl),a			;f987	77 	w 
	inc hl			;f988	23 	# 
	ld a,030h		;f989	3e 30 	> 0 
	bit 2,b		;f98b	cb 50 	. P 
	jr z,lf991h		;f98d	28 02 	( . 
	ld a,031h		;f98f	3e 31 	> 1 
lf991h:
	ld (hl),a			;f991	77 	w 
	inc hl			;f992	23 	# 
	ld a,030h		;f993	3e 30 	> 0 
	bit 1,b		;f995	cb 48 	. H 
	jr z,lf99bh		;f997	28 02 	( . 
	ld a,031h		;f999	3e 31 	> 1 
lf99bh:
	ld (hl),a			;f99b	77 	w 
	inc hl			;f99c	23 	# 
	ld a,030h		;f99d	3e 30 	> 0 
	bit 0,b		;f99f	cb 40 	. @ 
	jr z,lf9a5h		;f9a1	28 02 	( . 
	ld a,031h		;f9a3	3e 31 	> 1 
lf9a5h:
	ld (hl),a			;f9a5	77 	w 
	ld de,0010dh		;f9a6	11 0d 01 	. . . 
	ld hl,07000h		;f9a9	21 00 70 	! . p 
	ld b,007h		;f9ac	06 07 	. . 
	call 084cdh		;f9ae	cd cd 84 	. . . 
	ld hl,0f8b9h		;f9b1	21 b9 f8 	! . . 
	ld de,00100h		;f9b4	11 00 01 	. . . 
	ld b,009h		;f9b7	06 09 	. . 
	call 084cdh		;f9b9	cd cd 84 	. . . 
	jp lf9bfh		;f9bc	c3 bf f9 	. . . 
lf9bfh:
	call 0bcc4h		;f9bf	cd c4 bc 	. . . 
	ld b,043h		;f9c2	06 43 	. C 
	cp b			;f9c4	b8 	. 
	jr nz,lf9bfh		;f9c5	20 f8 	  . 
	call 0bcc4h		;f9c7	cd c4 bc 	. . . 
	ld b,04fh		;f9ca	06 4f 	. O 
	cp b			;f9cc	b8 	. 
	jr nz,lf9bfh		;f9cd	20 f0 	  . 
	call 0bcc4h		;f9cf	cd c4 bc 	. . . 
	ld b,00dh		;f9d2	06 0d 	. . 
	cp b			;f9d4	b8 	. 
	jr nz,lf9bfh		;f9d5	20 e8 	  . 
	ret			;f9d7	c9 	. 
sub_f9d8h:
	ld hl,00200h		;f9d8	21 00 02 	! . . 
	ld c,000h		;f9db	0e 00 	. . 
lf9ddh:
	ld b,000h		;f9dd	06 00 	. . 
lf9dfh:
	ld (hl),c			;f9df	71 	q 
	inc hl			;f9e0	23 	# 
	inc c			;f9e1	0c 	. 
	djnz lf9dfh		;f9e2	10 fb 	. . 
	ld a,h			;f9e4	7c 	| 
	cp 078h		;f9e5	fe 78 	. x 
	jr z,lf9ech		;f9e7	28 03 	( . 
	inc c			;f9e9	0c 	. 
	jr lf9ddh		;f9ea	18 f1 	. . 
lf9ech:
	ld hl,00200h		;f9ec	21 00 02 	! . . 
	ld c,000h		;f9ef	0e 00 	. . 
lf9f1h:
	ld b,000h		;f9f1	06 00 	. . 
lf9f3h:
	ld a,(hl)			;f9f3	7e 	~ 
	cp c			;f9f4	b9 	. 
	jr nz,lfa05h		;f9f5	20 0e 	  . 
	inc hl			;f9f7	23 	# 
	inc c			;f9f8	0c 	. 
	djnz lf9f3h		;f9f9	10 f8 	. . 
	ld a,078h		;f9fb	3e 78 	> x 
	cp h			;f9fd	bc 	. 
	jr z,lfa03h		;f9fe	28 03 	( . 
	inc c			;fa00	0c 	. 
	jr lf9f1h		;fa01	18 ee 	. . 
lfa03h:
	and a			;fa03	a7 	. 
	ret			;fa04	c9 	. 
lfa05h:
	scf			;fa05	37 	7 
	ret			;fa06	c9 	. 
lfa07h:
	ld a,001h		;fa07	3e 01 	> . 
	out (019h),a		;fa09	d3 19 	. . 
	call 07400h		;fa0b	cd 00 74 	. . t 
	push bc			;fa0e	c5 	. 
	ld a,002h		;fa0f	3e 02 	> . 
	out (019h),a		;fa11	d3 19 	. . 
	call 07400h		;fa13	cd 00 74 	. . t 
	push bc			;fa16	c5 	. 
	ld a,003h		;fa17	3e 03 	> . 
	out (019h),a		;fa19	d3 19 	. . 
	call 07400h		;fa1b	cd 00 74 	. . t 
	push bc			;fa1e	c5 	. 
	ld a,004h		;fa1f	3e 04 	> . 
	out (019h),a		;fa21	d3 19 	. . 
	call 07400h		;fa23	cd 00 74 	. . t 
	push bc			;fa26	c5 	. 
	ld a,005h		;fa27	3e 05 	> . 
	out (019h),a		;fa29	d3 19 	. . 
	call 07400h		;fa2b	cd 00 74 	. . t 
	push bc			;fa2e	c5 	. 
	ld a,006h		;fa2f	3e 06 	> . 
	out (019h),a		;fa31	d3 19 	. . 
	call 07400h		;fa33	cd 00 74 	. . t 
	push bc			;fa36	c5 	. 
	ld a,007h		;fa37	3e 07 	> . 
	out (019h),a		;fa39	d3 19 	. . 
	call 07400h		;fa3b	cd 00 74 	. . t 
	push bc			;fa3e	c5 	. 
	ld a,005h		;fa3f	3e 05 	> . 
	out (019h),a		;fa41	d3 19 	. . 
	ld hl,08000h		;fa43	21 00 80 	! . . 
	ld b,000h		;fa46	06 00 	. . 
lfa48h:
	ld a,b			;fa48	78 	x 
	add a,(hl)			;fa49	86 	. 
	ld b,a			;fa4a	47 	G 
	inc hl			;fa4b	23 	# 
	ld a,0c0h		;fa4c	3e c0 	> . 
	cp h			;fa4e	bc 	. 
	jr nz,lfa48h		;fa4f	20 f7 	  . 
	ld a,b			;fa51	78 	x 
	pop bc			;fa52	c1 	. 
	add a,b			;fa53	80 	. 
	pop bc			;fa54	c1 	. 
	add a,b			;fa55	80 	. 
	pop bc			;fa56	c1 	. 
	add a,b			;fa57	80 	. 
	pop bc			;fa58	c1 	. 
	add a,b			;fa59	80 	. 
	pop bc			;fa5a	c1 	. 
	add a,b			;fa5b	80 	. 
	pop bc			;fa5c	c1 	. 
	add a,b			;fa5d	80 	. 
	pop bc			;fa5e	c1 	. 
	add a,b			;fa5f	80 	. 
	ret			;fa60	c9 	. 
	scf			;fa61	37 	7 
	ret			;fa62	c9 	. 
lfa63h:
	ld hl,lc000h		;fa63	21 00 c0 	! . . 
	ld b,000h		;fa66	06 00 	. . 
lfa68h:
	ld a,b			;fa68	78 	x 
	add a,(hl)			;fa69	86 	. 
	ld b,a			;fa6a	47 	G 
	inc hl			;fa6b	23 	# 
	ld a,h			;fa6c	7c 	| 
	cp 000h		;fa6d	fe 00 	. . 
	jr nz,lfa68h		;fa6f	20 f7 	  . 
	ret			;fa71	c9 	. 
sub_fa72h:
	ld de,00000h		;fa72	11 00 00 	. . . 
	ld b,060h		;fa75	06 60 	. ` 
	ld a,011h		;fa77	3e 11 	> . 
	call sub_fa94h		;fa79	cd 94 fa 	. . . 
	ld hl,lf824h		;fa7c	21 24 f8 	! $ . 
	call 08550h		;fa7f	cd 50 85 	. P . 
	ret			;fa82	c9 	. 
sub_fa83h:
	ld de,00000h		;fa83	11 00 00 	. . . 
	ld b,060h		;fa86	06 60 	. ` 
	ld a,012h		;fa88	3e 12 	> . 
	call sub_fa94h		;fa8a	cd 94 fa 	. . . 
	ld hl,0f828h		;fa8d	21 28 f8 	! ( . 
	call 08550h		;fa90	cd 50 85 	. P . 
	ret			;fa93	c9 	. 
sub_fa94h:
	ld c,a			;fa94	4f 	O 
lfa95h:
	push de			;fa95	d5 	. 
	push bc			;fa96	c5 	. 
	ld a,c			;fa97	79 	y 
	call 0843ah		;fa98	cd 3a 84 	. : . 
	pop bc			;fa9b	c1 	. 
	pop de			;fa9c	d1 	. 
	dec b			;fa9d	05 	. 
	ret z			;fa9e	c8 	. 
	inc e			;fa9f	1c 	. 
	ld a,e			;faa0	7b 	{ 
	cp 018h		;faa1	fe 18 	. . 
	jr nz,lfa95h		;faa3	20 f0 	  . 
	ld e,000h		;faa5	1e 00 	. . 
	inc d			;faa7	14 	. 
	ld a,d			;faa8	7a 	z 
	cp 004h		;faa9	fe 04 	. . 
	jr nz,lfa95h		;faab	20 e8 	  . 
	ret			;faad	c9 	. 
sub_faaeh:
	ld de,00000h		;faae	11 00 00 	. . . 
	ld a,020h		;fab1	3e 20 	>   
	ld b,060h		;fab3	06 60 	. ` 
	call 086b3h		;fab5	cd b3 86 	. . . 
	ld hl,lf820h		;fab8	21 20 f8 	!   . 
	call 08550h		;fabb	cd 50 85 	. P . 
	ret			;fabe	c9 	. 
sub_fabfh:
	ld ix,0fb83h		;fabf	dd 21 83 fb 	. ! . . 
	ld iy,lfb32h		;fac3	fd 21 32 fb 	. ! 2 . 
	ld de,00000h		;fac7	11 00 00 	. . . 
	push de			;faca	d5 	. 
lfacbh:
	push ix		;facb	dd e5 	. . 
	pop hl			;facd	e1 	. 
	ld de,00315h		;face	11 15 03 	. . . 
	ld b,003h		;fad1	06 03 	. . 
	call 084cdh		;fad3	cd cd 84 	. . . 
	ld b,006h		;fad6	06 06 	. . 
lfad8h:
	dec b			;fad8	05 	. 
	jr z,lfb20h		;fad9	28 45 	( E 
	call 0879fh		;fadb	cd 9f 87 	. . . 
	cp (iy+000h)		;fade	fd be 00 	. . . 
	jr nz,lfad8h		;fae1	20 f5 	  . 
	pop de			;fae3	d1 	. 
	cp 028h		;fae4	fe 28 	. ( 
	jr z,lfb03h		;fae6	28 1b 	( . 
	push de			;fae8	d5 	. 
	ld a,02ah		;fae9	3e 2a 	> * 
	call charout		;faeb	cd 68 84 	. h . 
	pop de			;faee	d1 	. 
	inc e			;faef	1c 	. 
	ld a,e			;faf0	7b 	{ 
	cp 018h		;faf1	fe 18 	. . 
	jr nz,lfaf8h		;faf3	20 03 	  . 
	inc d			;faf5	14 	. 
	ld e,000h		;faf6	1e 00 	. . 
lfaf8h:
	push de			;faf8	d5 	. 
	inc ix		;faf9	dd 23 	. # 
	inc ix		;fafb	dd 23 	. # 
	inc ix		;fafd	dd 23 	. # 
	inc iy		;faff	fd 23 	. # 
	jr lfacbh		;fb01	18 c8 	. . 
lfb03h:
	ld a,02ah		;fb03	3e 2a 	> * 
	call charout		;fb05	cd 68 84 	. h . 
	inc ix		;fb08	dd 23 	. # 
	inc ix		;fb0a	dd 23 	. # 
	inc ix		;fb0c	dd 23 	. # 
	push ix		;fb0e	dd e5 	. . 
	pop hl			;fb10	e1 	. 
	ld de,00315h		;fb11	11 15 03 	. . . 
	ld b,003h		;fb14	06 03 	. . 
	call 084cdh		;fb16	cd cd 84 	. . . 
lfb19h:
	call sub_fb23h		;fb19	cd 23 fb 	. # . 
	jr nc,lfb19h		;fb1c	30 fb 	0 . 
	and a			;fb1e	a7 	. 
	ret			;fb1f	c9 	. 
lfb20h:
	pop de			;fb20	d1 	. 
	scf			;fb21	37 	7 
	ret			;fb22	c9 	. 
sub_fb23h:
	ld a,008h		;fb23	3e 08 	> . 
	out (011h),a		;fb25	d3 11 	. . 
	call 08d5bh		;fb27	cd 5b 8d 	. [ . 
	in a,(013h)		;fb2a	db 13 	. . 
	rra			;fb2c	1f 	. 
	ld a,000h		;fb2d	3e 00 	> . 
	out (011h),a		;fb2f	d3 11 	. . 
	ret			;fb31	c9 	. 
lfb32h:
	ld d,c			;fb32	51 	Q 
	ld (bc),a			;fb33	02 	. 
	inc bc			;fb34	03 	. 
	inc b			;fb35	04 	. 
	dec b			;fb36	05 	. 
	ld b,007h		;fb37	06 07 	. . 
	ex af,af'			;fb39	08 	. 
	ld sp,03932h		;fb3a	31 32 39 	1 2 9 
	ld a,(00901h)		;fb3d	3a 01 09 	: . . 
	ld a,(bc)			;fb40	0a 	. 
	dec bc			;fb41	0b 	. 
	inc c			;fb42	0c 	. 
	dec c			;fb43	0d 	. 
	ld c,00fh		;fb44	0e 0f 	. . 
	djnz lfb71h		;fb46	10 29 	. ) 
	inc sp			;fb48	33 	3 
	add hl,de			;fb49	19 	. 
	ld a,(de)			;fb4a	1a 	. 
	ld de,01312h		;fb4b	11 12 13 	. . . 
	inc d			;fb4e	14 	. 
	dec d			;fb4f	15 	. 
	ld d,017h		;fb50	16 17 	. . 
	jr lfb7eh		;fb52	18 2a 	. * 
	dec hl			;fb54	2b 	+ 
	dec de			;fb55	1b 	. 
	inc e			;fb56	1c 	. 
	dec e			;fb57	1d 	. 
	ld e,01fh		;fb58	1e 1f 	. . 
	jr nz,$+35		;fb5a	20 21 	  ! 
	ld (04923h),hl		;fb5c	22 23 49 	" # I 
	ld c,d			;fb5f	4a 	J 
	ld c,e			;fb60	4b 	K 
	ld c,(hl)			;fb61	4e 	N 
	ld c,a			;fb62	4f 	O 
	ld d,b			;fb63	50 	P 
	ld b,c			;fb64	41 	A 
	ld b,d			;fb65	42 	B 
	ld c,h			;fb66	4c 	L 
	ld c,l			;fb67	4d 	M 
	ld b,a			;fb68	47 	G 
	ld c,b			;fb69	48 	H 
	dec sp			;fb6a	3b 	; 
	ld b,e			;fb6b	43 	C 
	ld b,h			;fb6c	44 	D 
	ld b,l			;fb6d	45 	E 
	ld b,(hl)			;fb6e	46 	F 
	ld b,b			;fb6f	40 	@ 
	inc a			;fb70	3c 	< 
lfb71h:
	dec a			;fb71	3d 	= 
	ld a,03fh		;fb72	3e 3f 	> ? 
	jr c,lfbaah		;fb74	38 34 	8 4 
	dec (hl)			;fb76	35 	5 
	ld (hl),037h		;fb77	36 37 	6 7 
	jr nc,$+46		;fb79	30 2c 	0 , 
	dec l			;fb7b	2d 	- 
	ld l,02fh		;fb7c	2e 2f 	. / 
lfb7eh:
	inc h			;fb7e	24 	$ 
	dec h			;fb7f	25 	% 
	ld h,027h		;fb80	26 27 	& ' 
	jr z,$+81		;fb82	28 4f 	( O 
	ld c,(hl)			;fb84	4e 	N 
	jr nz,lfbd8h		;fb85	20 51 	  Q 
	jr nz,lfba9h		;fb87	20 20 	    
	ld d,a			;fb89	57 	W 
	jr nz,$+34		;fb8a	20 20 	    
	ld b,l			;fb8c	45 	E 
	jr nz,$+34		;fb8d	20 20 	    
	ld d,d			;fb8f	52 	R 
	jr nz,$+34		;fb90	20 20 	    
	ld d,h			;fb92	54 	T 
	jr nz,$+34		;fb93	20 20 	    
	ld e,c			;fb95	59 	Y 
	jr nz,$+34		;fb96	20 20 	    
	ld d,l			;fb98	55 	U 
	jr nz,$+34		;fb99	20 20 	    
	ld c,c			;fb9b	49 	I 
	jr nz,$+34		;fb9c	20 20 	    
	ld c,a			;fb9e	4f 	O 
	jr nz,$+34		;fb9f	20 20 	    
	ld d,b			;fba1	50 	P 
	jr nz,$+34		;fba2	20 20 	    
	ld b,d			;fba4	42 	B 
	ld d,e			;fba5	53 	S 
	jr nz,lfbf7h		;fba6	20 4f 	  O 
	ld b,(hl)			;fba8	46 	F 
lfba9h:
	ld b,(hl)			;fba9	46 	F 
lfbaah:
	ld b,c			;fbaa	41 	A 
	jr nz,lfbcdh		;fbab	20 20 	    
	ld d,e			;fbad	53 	S 
	jr nz,$+34		;fbae	20 20 	    
	ld b,h			;fbb0	44 	D 
	jr nz,$+34		;fbb1	20 20 	    
	ld b,(hl)			;fbb3	46 	F 
	jr nz,$+34		;fbb4	20 20 	    
	ld b,a			;fbb6	47 	G 
	jr nz,$+34		;fbb7	20 20 	    
	ld c,b			;fbb9	48 	H 
	jr nz,$+34		;fbba	20 20 	    
	ld c,d			;fbbc	4a 	J 
	jr nz,$+34		;fbbd	20 20 	    
	ld c,e			;fbbf	4b 	K 
	jr nz,$+34		;fbc0	20 20 	    
	ld c,h			;fbc2	4c 	L 
	jr nz,$+34		;fbc3	20 20 	    
	ld c,c			;fbc5	49 	I 
	ld c,(hl)			;fbc6	4e 	N 
	ld d,e			;fbc7	53 	S 
	ld b,e			;fbc8	43 	C 
	ld b,c			;fbc9	41 	A 
	ld c,h			;fbca	4c 	L 
	ld b,d			;fbcb	42 	B 
	ld b,c			;fbcc	41 	A 
lfbcdh:
	ld d,e			;fbcd	53 	S 
	ld e,d			;fbce	5a 	Z 
	jr nz,lfbf1h		;fbcf	20 20 	    
	ld e,b			;fbd1	58 	X 
	jr nz,lfbf4h		;fbd2	20 20 	    
	ld b,e			;fbd4	43 	C 
	jr nz,lfbf7h		;fbd5	20 20 	    
	ld d,(hl)			;fbd7	56 	V 
lfbd8h:
	jr nz,lfbfah		;fbd8	20 20 	    
	ld b,d			;fbda	42 	B 
	jr nz,lfbfdh		;fbdb	20 20 	    
	ld c,(hl)			;fbdd	4e 	N 
	jr nz,lfc00h		;fbde	20 20 	    
	ld c,l			;fbe0	4d 	M 
	jr nz,lfc03h		;fbe1	20 20 	    
	inc l			;fbe3	2c 	, 
	jr nz,lfc06h		;fbe4	20 20 	    
	dec sp			;fbe6	3b 	; 
	jr nz,$+34		;fbe7	20 20 	    
	ld b,h			;fbe9	44 	D 
	ld b,l			;fbea	45 	E 
	ld c,h			;fbeb	4c 	L 
	ld b,e			;fbec	43 	C 
	ld b,c			;fbed	41 	A 
	ld d,b			;fbee	50 	P 
	ld b,c			;fbef	41 	A 
	ld c,(hl)			;fbf0	4e 	N 
lfbf1h:
	ld d,e			;fbf1	53 	S 
	ld d,h			;fbf2	54 	T 
	ld b,c			;fbf3	41 	A 
lfbf4h:
	ld b,d			;fbf4	42 	B 
	ld d,e			;fbf5	53 	S 
	ld d,b			;fbf6	50 	P 
lfbf7h:
	ld b,e			;fbf7	43 	C 
	ld b,h			;fbf8	44 	D 
	ld d,a			;fbf9	57 	W 
lfbfah:
	ld c,(hl)			;fbfa	4e 	N 
	ld d,l			;fbfb	55 	U 
	ld d,b			;fbfc	50 	P 
lfbfdh:
	jr nz,lfc3bh		;fbfd	20 3c 	  < 
	nop			;fbff	00 	. 
lfc00h:
	nop			;fc00	00 	. 
	ld a,000h		;fc01	3e 00 	> . 
lfc03h:
	nop			;fc03	00 	. 
	ld b,e			;fc04	43 	C 
	ld c,a			;fc05	4f 	O 
lfc06h:
	ld c,(hl)			;fc06	4e 	N 
	ld (0646eh),a		;fc07	32 6e 64 	2 n d 
	ld d,e			;fc0a	53 	S 
	ld c,c			;fc0b	49 	I 
	ld c,(hl)			;fc0c	4e 	N 
	ld b,e			;fc0d	43 	C 
	ld c,a			;fc0e	4f 	O 
	ld d,e			;fc0f	53 	S 
	ld d,h			;fc10	54 	T 
	ld b,c			;fc11	41 	A 
	ld c,(hl)			;fc12	4e 	N 
	ld b,(hl)			;fc13	46 	F 
	ld d,e			;fc14	53 	S 
	ld b,l			;fc15	45 	E 
	ld b,e			;fc16	43 	C 
	ld b,e			;fc17	43 	C 
	ld b,l			;fc18	45 	E 
	ld l,b			;fc19	68 	h 
	ld a,c			;fc1a	79 	y 
	ld (hl),b			;fc1b	70 	p 
	ld b,h			;fc1c	44 	D 
	ld b,l			;fc1d	45 	E 
	ld b,a			;fc1e	47 	G 
	ld c,h			;fc1f	4c 	L 
	ld c,(hl)			;fc20	4e 	N 
	jr nz,lfc6fh		;fc21	20 4c 	  L 
	ld c,a			;fc23	4f 	O 
	ld b,a			;fc24	47 	G 
	ld sp,0582fh		;fc25	31 2f 58 	1 / X 
	ld c,l			;fc28	4d 	M 
	ld b,h			;fc29	44 	D 
	ld b,(hl)			;fc2a	46 	F 
	ld l,(hl)			;fc2b	6e 	n 
	ld hl,05e20h		;fc2c	21 20 5e 	!   ^ 
	nop			;fc2f	00 	. 
	nop			;fc30	00 	. 
	ld d,e			;fc31	53 	S 
	ld d,c			;fc32	51 	Q 
	ld d,d			;fc33	52 	R 
	ld d,e			;fc34	53 	S 
	ld d,c			;fc35	51 	Q 
	ld d,l			;fc36	55 	U 
	jr z,lfc39h		;fc37	28 00 	( . 
lfc39h:
	nop			;fc39	00 	. 
	add hl,hl			;fc3a	29 	) 
lfc3bh:
	nop			;fc3b	00 	. 
	nop			;fc3c	00 	. 
	scf			;fc3d	37 	7 
	jr nz,$+34		;fc3e	20 20 	    
	jr c,lfc62h		;fc40	38 20 	8   
	jr nz,lfc7dh		;fc42	20 39 	  9 
	jr nz,$+34		;fc44	20 20 	    
	cpl			;fc46	2f 	/ 
	jr nz,lfc69h		;fc47	20 20 	    
	ld d,d			;fc49	52 	R 
	ld c,l			;fc4a	4d 	M 
	jr nz,lfc81h		;fc4b	20 34 	  4 
	jr nz,lfc6fh		;fc4d	20 20 	    
	dec (hl)			;fc4f	35 	5 
	jr nz,$+34		;fc50	20 20 	    
	ld (hl),020h		;fc52	36 20 	6   
	jr nz,$+44		;fc54	20 2a 	  * 
	jr nz,lfc78h		;fc56	20 20 	    
	ld c,l			;fc58	4d 	M 
	dec hl			;fc59	2b 	+ 
	jr nz,$+51		;fc5a	20 31 	  1 
	jr nz,$+34		;fc5c	20 20 	    
	ld (02020h),a		;fc5e	32 20 20 	2     
	inc sp			;fc61	33 	3 
lfc62h:
	jr nz,$+34		;fc62	20 20 	    
	dec l			;fc64	2d 	- 
	jr nz,$+34		;fc65	20 20 	    
	jr nc,$+34		;fc67	30 20 	0   
lfc69h:
	jr nz,$+48		;fc69	20 2e 	  . 
	jr nz,$+34		;fc6b	20 20 	    
	dec hl			;fc6d	2b 	+ 
	cpl			;fc6e	2f 	/ 
lfc6fh:
	dec l			;fc6f	2d 	- 
	dec hl			;fc70	2b 	+ 
	jr nz,lfc93h		;fc71	20 20 	    
	ld b,l			;fc73	45 	E 
	ld c,(hl)			;fc74	4e 	N 
	ld d,h			;fc75	54 	T 
	ld d,e			;fc76	53 	S 
	ld b,(hl)			;fc77	46 	F 
lfc78h:
	ld d,h			;fc78	54 	T 
sub_fc79h:
	in a,(015h)		;fc79	db 15 	. . 
	and 07eh		;fc7b	e6 7e 	. ~ 
lfc7dh:
	or 080h		;fc7d	f6 80 	. . 
	out (015h),a		;fc7f	d3 15 	. . 
lfc81h:
	ld a,000h		;fc81	3e 00 	> . 
	call sub_fceah		;fc83	cd ea fc 	. . . 
	cp 005h		;fc86	fe 05 	. . 
	jr nz,lfcd2h		;fc88	20 48 	  H 
	ld a,001h		;fc8a	3e 01 	> . 
	call sub_fceah		;fc8c	cd ea fc 	. . . 
	cp 007h		;fc8f	fe 07 	. . 
	jr nz,lfcd2h		;fc91	20 3f 	  ? 
lfc93h:
	ld a,002h		;fc93	3e 02 	> . 
	call sub_fceah		;fc95	cd ea fc 	. . . 
	cp 004h		;fc98	fe 04 	. . 
	jr nz,lfcd2h		;fc9a	20 36 	  6 
	ld a,003h		;fc9c	3e 03 	> . 
	call sub_fceah		;fc9e	cd ea fc 	. . . 
	cp 006h		;fca1	fe 06 	. . 
	jr nz,lfcd2h		;fca3	20 2d 	  - 
	ld a,080h		;fca5	3e 80 	> . 
	call sub_fceah		;fca7	cd ea fc 	. . . 
	cp 001h		;fcaa	fe 01 	. . 
	jr nz,lfcd2h		;fcac	20 24 	  $ 
	ld a,081h		;fcae	3e 81 	> . 
	call sub_fceah		;fcb0	cd ea fc 	. . . 
	cp 003h		;fcb3	fe 03 	. . 
	jr nz,lfcd2h		;fcb5	20 1b 	  . 
	ld a,082h		;fcb7	3e 82 	> . 
	call sub_fceah		;fcb9	cd ea fc 	. . . 
	cp 000h		;fcbc	fe 00 	. . 
	jr nz,lfcd2h		;fcbe	20 12 	  . 
	ld a,083h		;fcc0	3e 83 	> . 
	call sub_fceah		;fcc2	cd ea fc 	. . . 
	cp 002h		;fcc5	fe 02 	. . 
	jr nz,lfcd2h		;fcc7	20 09 	  . 
	ld a,000h		;fcc9	3e 00 	> . 
	out (018h),a		;fccb	d3 18 	. . 
	call sub_fcf5h		;fccd	cd f5 fc 	. . . 
	and a			;fcd0	a7 	. 
	ret			;fcd1	c9 	. 
lfcd2h:
	ld b,a			;fcd2	47 	G 
	ld a,000h		;fcd3	3e 00 	> . 
	bit 0,b		;fcd5	cb 40 	. @ 
	jr nz,lfcdbh		;fcd7	20 02 	  . 
	or 002h		;fcd9	f6 02 	. . 
lfcdbh:
	bit 1,b		;fcdb	cb 48 	. H 
	jr z,lfce1h		;fcdd	28 02 	( . 
	or 001h		;fcdf	f6 01 	. . 
lfce1h:
	bit 2,b		;fce1	cb 50 	. P 
	jr nz,lfce7h		;fce3	20 02 	  . 
	or 004h		;fce5	f6 04 	. . 
lfce7h:
	ld b,a			;fce7	47 	G 
	scf			;fce8	37 	7 
	ret			;fce9	c9 	. 
sub_fceah:
	ld c,a			;fcea	4f 	O 
	out (018h),a		;fceb	d3 18 	. . 
	call sub_fcf5h		;fced	cd f5 fc 	. . . 
	in a,(01fh)		;fcf0	db 1f 	. . 
	and 007h		;fcf2	e6 07 	. . 
	ret			;fcf4	c9 	. 
sub_fcf5h:
	ld a,0ffh		;fcf5	3e ff 	> . 
lfcf7h:
	dec a			;fcf7	3d 	= 
	jp nz,lfcf7h		;fcf8	c2 f7 fc 	. . . 
	ld a,004h		;fcfb	3e 04 	> . 
lfcfdh:
	dec a			;fcfd	3d 	= 
	jp nz,lfcfdh		;fcfe	c2 fd fc 	. . . 
	ret			;fd01	c9 	. 
sub_fd02h:
	push bc			;fd02	c5 	. 
	push de			;fd03	d5 	. 
	push hl			;fd04	e5 	. 
	ld l,a			;fd05	6f 	o 
	ld a,e			;fd06	7b 	{ 
	or d			;fd07	b2 	. 
	jr z,lfd1fh		;fd08	28 15 	( . 
lfd0ah:
	ld a,l			;fd0a	7d 	} 
	call sub_fd29h		;fd0b	cd 29 fd 	. ) . 
	jr c,lfd1fh		;fd0e	38 0f 	8 . 
	dec de			;fd10	1b 	. 
	ld a,e			;fd11	7b 	{ 
	or d			;fd12	b2 	. 
	jr z,lfd1fh		;fd13	28 0a 	( . 
	push hl			;fd15	e5 	. 
	ld hl,00006h		;fd16	21 06 00 	! . . 
	call sub_fd63h		;fd19	cd 63 fd 	. c . 
	pop hl			;fd1c	e1 	. 
	jr nc,lfd0ah		;fd1d	30 eb 	0 . 
lfd1fh:
	in a,(018h)		;fd1f	db 18 	. . 
	and 03fh		;fd21	e6 3f 	. ? 
	out (018h),a		;fd23	d3 18 	. . 
lfd25h:
	pop hl			;fd25	e1 	. 
	pop de			;fd26	d1 	. 
	pop bc			;fd27	c1 	. 
	ret			;fd28	c9 	. 
sub_fd29h:
	push bc			;fd29	c5 	. 
	push de			;fd2a	d5 	. 
	push hl			;fd2b	e5 	. 
	ld h,a			;fd2c	67 	g 
	inc h			;fd2d	24 	$ 
	ld a,c			;fd2e	79 	y 
	or b			;fd2f	b0 	. 
	jr z,lfd25h		;fd30	28 f3 	( . 
lfd32h:
	in a,(018h)		;fd32	db 18 	. . 
	or 0c0h		;fd34	f6 c0 	. . 
	out (018h),a		;fd36	d3 18 	. . 
	call sub_fd5ch		;fd38	cd 5c fd 	. \ . 
	scf			;fd3b	37 	7 
	in a,(01fh)		;fd3c	db 1f 	. . 
	bit 7,a		;fd3e	cb 7f 	.  
	jr nz,lfd25h		;fd40	20 e3 	  . 
	dec bc			;fd42	0b 	. 
	ld a,c			;fd43	79 	y 
	or b			;fd44	b0 	. 
	jr z,lfd25h		;fd45	28 de 	( . 
	ld l,004h		;fd47	2e 04 	. . 
lfd49h:
	dec l			;fd49	2d 	- 
	jr nz,lfd49h		;fd4a	20 fd 	  . 
	in a,(018h)		;fd4c	db 18 	. . 
	and 03fh		;fd4e	e6 3f 	. ? 
	out (018h),a		;fd50	d3 18 	. . 
	call sub_fd5ch		;fd52	cd 5c fd 	. \ . 
	ld l,006h		;fd55	2e 06 	. . 
lfd57h:
	dec l			;fd57	2d 	- 
	jr nz,lfd57h		;fd58	20 fd 	  . 
	jr lfd32h		;fd5a	18 d6 	. . 
sub_fd5ch:
	ld l,h			;fd5c	6c 	l 
lfd5dh:
	dec l			;fd5d	2d 	- 
	inc de			;fd5e	13 	. 
	nop			;fd5f	00 	. 
	jr nz,lfd5dh		;fd60	20 fb 	  . 
	ret			;fd62	c9 	. 
sub_fd63h:
	push bc			;fd63	c5 	. 
	ld c,a			;fd64	4f 	O 
lfd65h:
	ld a,l			;fd65	7d 	} 
	or h			;fd66	b4 	. 
	jr z,lfd7eh		;fd67	28 15 	( . 
	scf			;fd69	37 	7 
	ld b,006h		;fd6a	06 06 	. . 
lfd6ch:
	push bc			;fd6c	c5 	. 
	ld b,0a6h		;fd6d	06 a6 	. . 
lfd6fh:
	in a,(01fh)		;fd6f	db 1f 	. . 
	bit 7,a		;fd71	cb 7f 	.  
	jr nz,lfd7dh		;fd73	20 08 	  . 
	djnz lfd6fh		;fd75	10 f8 	. . 
	pop bc			;fd77	c1 	. 
	djnz lfd6ch		;fd78	10 f2 	. . 
	dec hl			;fd7a	2b 	+ 
	jr lfd65h		;fd7b	18 e8 	. . 
lfd7dh:
	pop bc			;fd7d	c1 	. 
lfd7eh:
	ld a,c			;fd7e	79 	y 
	pop bc			;fd7f	c1 	. 
	ret			;fd80	c9 	. 
	rst 38h			;fd81	ff 	. 
	rst 38h			;fd82	ff 	. 
	rst 38h			;fd83	ff 	. 
	rst 38h			;fd84	ff 	. 
	rst 38h			;fd85	ff 	. 
	rst 38h			;fd86	ff 	. 
	rst 38h			;fd87	ff 	. 
	rst 38h			;fd88	ff 	. 
	rst 38h			;fd89	ff 	. 
	rst 38h			;fd8a	ff 	. 
	rst 38h			;fd8b	ff 	. 
	rst 38h			;fd8c	ff 	. 
	rst 38h			;fd8d	ff 	. 
	rst 38h			;fd8e	ff 	. 
	rst 38h			;fd8f	ff 	. 
	rst 38h			;fd90	ff 	. 
	rst 38h			;fd91	ff 	. 
	rst 38h			;fd92	ff 	. 
	rst 38h			;fd93	ff 	. 
	rst 38h			;fd94	ff 	. 
	rst 38h			;fd95	ff 	. 
	rst 38h			;fd96	ff 	. 
	rst 38h			;fd97	ff 	. 
	rst 38h			;fd98	ff 	. 
	rst 38h			;fd99	ff 	. 
	rst 38h			;fd9a	ff 	. 
	rst 38h			;fd9b	ff 	. 
	rst 38h			;fd9c	ff 	. 
	rst 38h			;fd9d	ff 	. 
	rst 38h			;fd9e	ff 	. 
	rst 38h			;fd9f	ff 	. 
	rst 38h			;fda0	ff 	. 
	rst 38h			;fda1	ff 	. 
	rst 38h			;fda2	ff 	. 
	rst 38h			;fda3	ff 	. 
	rst 38h			;fda4	ff 	. 
	rst 38h			;fda5	ff 	. 
	rst 38h			;fda6	ff 	. 
	rst 38h			;fda7	ff 	. 
	rst 38h			;fda8	ff 	. 
	rst 38h			;fda9	ff 	. 
	rst 38h			;fdaa	ff 	. 
	rst 38h			;fdab	ff 	. 
	rst 38h			;fdac	ff 	. 
	rst 38h			;fdad	ff 	. 
	rst 38h			;fdae	ff 	. 
	rst 38h			;fdaf	ff 	. 
	rst 38h			;fdb0	ff 	. 
	rst 38h			;fdb1	ff 	. 
	rst 38h			;fdb2	ff 	. 
	rst 38h			;fdb3	ff 	. 
	rst 38h			;fdb4	ff 	. 
	rst 38h			;fdb5	ff 	. 
	rst 38h			;fdb6	ff 	. 
	rst 38h			;fdb7	ff 	. 
	rst 38h			;fdb8	ff 	. 
	rst 38h			;fdb9	ff 	. 
	rst 38h			;fdba	ff 	. 
	rst 38h			;fdbb	ff 	. 
lfdbch:
	rst 38h			;fdbc	ff 	. 
	rst 38h			;fdbd	ff 	. 
	rst 38h			;fdbe	ff 	. 
	rst 38h			;fdbf	ff 	. 
	rst 38h			;fdc0	ff 	. 
	rst 38h			;fdc1	ff 	. 
	rst 38h			;fdc2	ff 	. 
	rst 38h			;fdc3	ff 	. 
	rst 38h			;fdc4	ff 	. 
	rst 38h			;fdc5	ff 	. 
	rst 38h			;fdc6	ff 	. 
	rst 38h			;fdc7	ff 	. 
	rst 38h			;fdc8	ff 	. 
	rst 38h			;fdc9	ff 	. 
	rst 38h			;fdca	ff 	. 
	rst 38h			;fdcb	ff 	. 
	rst 38h			;fdcc	ff 	. 
	rst 38h			;fdcd	ff 	. 
	rst 38h			;fdce	ff 	. 
	rst 38h			;fdcf	ff 	. 
	rst 38h			;fdd0	ff 	. 
	rst 38h			;fdd1	ff 	. 
	rst 38h			;fdd2	ff 	. 
	rst 38h			;fdd3	ff 	. 
	rst 38h			;fdd4	ff 	. 
	rst 38h			;fdd5	ff 	. 
	rst 38h			;fdd6	ff 	. 
	rst 38h			;fdd7	ff 	. 
	rst 38h			;fdd8	ff 	. 
	rst 38h			;fdd9	ff 	. 
	rst 38h			;fdda	ff 	. 
	rst 38h			;fddb	ff 	. 
	rst 38h			;fddc	ff 	. 
	rst 38h			;fddd	ff 	. 
	rst 38h			;fdde	ff 	. 
	rst 38h			;fddf	ff 	. 
	rst 38h			;fde0	ff 	. 
	rst 38h			;fde1	ff 	. 
	rst 38h			;fde2	ff 	. 
	rst 38h			;fde3	ff 	. 
	rst 38h			;fde4	ff 	. 
	rst 38h			;fde5	ff 	. 
	rst 38h			;fde6	ff 	. 
	rst 38h			;fde7	ff 	. 
	rst 38h			;fde8	ff 	. 
	rst 38h			;fde9	ff 	. 
	rst 38h			;fdea	ff 	. 
	rst 38h			;fdeb	ff 	. 
	rst 38h			;fdec	ff 	. 
	rst 38h			;fded	ff 	. 
	rst 38h			;fdee	ff 	. 
	rst 38h			;fdef	ff 	. 
	rst 38h			;fdf0	ff 	. 
	rst 38h			;fdf1	ff 	. 
	rst 38h			;fdf2	ff 	. 
	rst 38h			;fdf3	ff 	. 
	rst 38h			;fdf4	ff 	. 
	rst 38h			;fdf5	ff 	. 
	rst 38h			;fdf6	ff 	. 
	rst 38h			;fdf7	ff 	. 
	rst 38h			;fdf8	ff 	. 
	rst 38h			;fdf9	ff 	. 
	rst 38h			;fdfa	ff 	. 
	rst 38h			;fdfb	ff 	. 
	rst 38h			;fdfc	ff 	. 
	rst 38h			;fdfd	ff 	. 
	rst 38h			;fdfe	ff 	. 
	rst 38h			;fdff	ff 	. 
	rst 38h			;fe00	ff 	. 
	rst 38h			;fe01	ff 	. 
	rst 38h			;fe02	ff 	. 
	rst 38h			;fe03	ff 	. 
	rst 38h			;fe04	ff 	. 
	rst 38h			;fe05	ff 	. 
	rst 38h			;fe06	ff 	. 
	rst 38h			;fe07	ff 	. 
	rst 38h			;fe08	ff 	. 
	rst 38h			;fe09	ff 	. 
	rst 38h			;fe0a	ff 	. 
	rst 38h			;fe0b	ff 	. 
	rst 38h			;fe0c	ff 	. 
	rst 38h			;fe0d	ff 	. 
	rst 38h			;fe0e	ff 	. 
	rst 38h			;fe0f	ff 	. 
	rst 38h			;fe10	ff 	. 
	rst 38h			;fe11	ff 	. 
	rst 38h			;fe12	ff 	. 
	rst 38h			;fe13	ff 	. 
	rst 38h			;fe14	ff 	. 
	rst 38h			;fe15	ff 	. 
	rst 38h			;fe16	ff 	. 
	rst 38h			;fe17	ff 	. 
	rst 38h			;fe18	ff 	. 
	rst 38h			;fe19	ff 	. 
	rst 38h			;fe1a	ff 	. 
	rst 38h			;fe1b	ff 	. 
	rst 38h			;fe1c	ff 	. 
	rst 38h			;fe1d	ff 	. 
	rst 38h			;fe1e	ff 	. 
	rst 38h			;fe1f	ff 	. 
	rst 38h			;fe20	ff 	. 
	rst 38h			;fe21	ff 	. 
	rst 38h			;fe22	ff 	. 
	rst 38h			;fe23	ff 	. 
	rst 38h			;fe24	ff 	. 
	rst 38h			;fe25	ff 	. 
	rst 38h			;fe26	ff 	. 
	rst 38h			;fe27	ff 	. 
	rst 38h			;fe28	ff 	. 
	rst 38h			;fe29	ff 	. 
	rst 38h			;fe2a	ff 	. 
	rst 38h			;fe2b	ff 	. 
	rst 38h			;fe2c	ff 	. 
	rst 38h			;fe2d	ff 	. 
	rst 38h			;fe2e	ff 	. 
	rst 38h			;fe2f	ff 	. 
	rst 38h			;fe30	ff 	. 
	rst 38h			;fe31	ff 	. 
	rst 38h			;fe32	ff 	. 
	rst 38h			;fe33	ff 	. 
	rst 38h			;fe34	ff 	. 
	rst 38h			;fe35	ff 	. 
	rst 38h			;fe36	ff 	. 
	rst 38h			;fe37	ff 	. 
	rst 38h			;fe38	ff 	. 
	rst 38h			;fe39	ff 	. 
	rst 38h			;fe3a	ff 	. 
	rst 38h			;fe3b	ff 	. 
	rst 38h			;fe3c	ff 	. 
	rst 38h			;fe3d	ff 	. 
	rst 38h			;fe3e	ff 	. 
	rst 38h			;fe3f	ff 	. 
	rst 38h			;fe40	ff 	. 
	rst 38h			;fe41	ff 	. 
	rst 38h			;fe42	ff 	. 
	rst 38h			;fe43	ff 	. 
	rst 38h			;fe44	ff 	. 
	rst 38h			;fe45	ff 	. 
	rst 38h			;fe46	ff 	. 
	rst 38h			;fe47	ff 	. 
	rst 38h			;fe48	ff 	. 
	rst 38h			;fe49	ff 	. 
	rst 38h			;fe4a	ff 	. 
	rst 38h			;fe4b	ff 	. 
	rst 38h			;fe4c	ff 	. 
	rst 38h			;fe4d	ff 	. 
	rst 38h			;fe4e	ff 	. 
	rst 38h			;fe4f	ff 	. 
	rst 38h			;fe50	ff 	. 
	rst 38h			;fe51	ff 	. 
	rst 38h			;fe52	ff 	. 
	rst 38h			;fe53	ff 	. 
	rst 38h			;fe54	ff 	. 
	rst 38h			;fe55	ff 	. 
	rst 38h			;fe56	ff 	. 
	rst 38h			;fe57	ff 	. 
	rst 38h			;fe58	ff 	. 
	rst 38h			;fe59	ff 	. 
	rst 38h			;fe5a	ff 	. 
	rst 38h			;fe5b	ff 	. 
	rst 38h			;fe5c	ff 	. 
	rst 38h			;fe5d	ff 	. 
	rst 38h			;fe5e	ff 	. 
	rst 38h			;fe5f	ff 	. 
	rst 38h			;fe60	ff 	. 
	rst 38h			;fe61	ff 	. 
	rst 38h			;fe62	ff 	. 
	rst 38h			;fe63	ff 	. 
	rst 38h			;fe64	ff 	. 
	rst 38h			;fe65	ff 	. 
	rst 38h			;fe66	ff 	. 
	rst 38h			;fe67	ff 	. 
	rst 38h			;fe68	ff 	. 
	rst 38h			;fe69	ff 	. 
	rst 38h			;fe6a	ff 	. 
	rst 38h			;fe6b	ff 	. 
	rst 38h			;fe6c	ff 	. 
	rst 38h			;fe6d	ff 	. 
	rst 38h			;fe6e	ff 	. 
	rst 38h			;fe6f	ff 	. 
	rst 38h			;fe70	ff 	. 
	rst 38h			;fe71	ff 	. 
	rst 38h			;fe72	ff 	. 
	rst 38h			;fe73	ff 	. 
	rst 38h			;fe74	ff 	. 
	rst 38h			;fe75	ff 	. 
	rst 38h			;fe76	ff 	. 
	rst 38h			;fe77	ff 	. 
	rst 38h			;fe78	ff 	. 
	rst 38h			;fe79	ff 	. 
	rst 38h			;fe7a	ff 	. 
	rst 38h			;fe7b	ff 	. 
	rst 38h			;fe7c	ff 	. 
	rst 38h			;fe7d	ff 	. 
	rst 38h			;fe7e	ff 	. 
	rst 38h			;fe7f	ff 	. 
	rst 38h			;fe80	ff 	. 
	rst 38h			;fe81	ff 	. 
	rst 38h			;fe82	ff 	. 
	rst 38h			;fe83	ff 	. 
	rst 38h			;fe84	ff 	. 
	rst 38h			;fe85	ff 	. 
	rst 38h			;fe86	ff 	. 
	rst 38h			;fe87	ff 	. 
	rst 38h			;fe88	ff 	. 
	rst 38h			;fe89	ff 	. 
	rst 38h			;fe8a	ff 	. 
	rst 38h			;fe8b	ff 	. 
	rst 38h			;fe8c	ff 	. 
	rst 38h			;fe8d	ff 	. 
	rst 38h			;fe8e	ff 	. 
	rst 38h			;fe8f	ff 	. 
	rst 38h			;fe90	ff 	. 
	rst 38h			;fe91	ff 	. 
	rst 38h			;fe92	ff 	. 
	rst 38h			;fe93	ff 	. 
	rst 38h			;fe94	ff 	. 
	rst 38h			;fe95	ff 	. 
	rst 38h			;fe96	ff 	. 
	rst 38h			;fe97	ff 	. 
	rst 38h			;fe98	ff 	. 
	rst 38h			;fe99	ff 	. 
	rst 38h			;fe9a	ff 	. 
	rst 38h			;fe9b	ff 	. 
	rst 38h			;fe9c	ff 	. 
	rst 38h			;fe9d	ff 	. 
	rst 38h			;fe9e	ff 	. 
	rst 38h			;fe9f	ff 	. 
	rst 38h			;fea0	ff 	. 
	rst 38h			;fea1	ff 	. 
	rst 38h			;fea2	ff 	. 
	rst 38h			;fea3	ff 	. 
	rst 38h			;fea4	ff 	. 
	rst 38h			;fea5	ff 	. 
	rst 38h			;fea6	ff 	. 
	rst 38h			;fea7	ff 	. 
	rst 38h			;fea8	ff 	. 
	rst 38h			;fea9	ff 	. 
	rst 38h			;feaa	ff 	. 
	rst 38h			;feab	ff 	. 
	rst 38h			;feac	ff 	. 
	rst 38h			;fead	ff 	. 
	rst 38h			;feae	ff 	. 
	rst 38h			;feaf	ff 	. 
	rst 38h			;feb0	ff 	. 
	rst 38h			;feb1	ff 	. 
	rst 38h			;feb2	ff 	. 
	rst 38h			;feb3	ff 	. 
	rst 38h			;feb4	ff 	. 
	rst 38h			;feb5	ff 	. 
	rst 38h			;feb6	ff 	. 
	rst 38h			;feb7	ff 	. 
	rst 38h			;feb8	ff 	. 
	rst 38h			;feb9	ff 	. 
	rst 38h			;feba	ff 	. 
	rst 38h			;febb	ff 	. 
	rst 38h			;febc	ff 	. 
	rst 38h			;febd	ff 	. 
	rst 38h			;febe	ff 	. 
	rst 38h			;febf	ff 	. 
	rst 38h			;fec0	ff 	. 
	rst 38h			;fec1	ff 	. 
	rst 38h			;fec2	ff 	. 
	rst 38h			;fec3	ff 	. 
	rst 38h			;fec4	ff 	. 
	rst 38h			;fec5	ff 	. 
	rst 38h			;fec6	ff 	. 
	rst 38h			;fec7	ff 	. 
	rst 38h			;fec8	ff 	. 
	rst 38h			;fec9	ff 	. 
	rst 38h			;feca	ff 	. 
	rst 38h			;fecb	ff 	. 
	rst 38h			;fecc	ff 	. 
	rst 38h			;fecd	ff 	. 
	rst 38h			;fece	ff 	. 
	rst 38h			;fecf	ff 	. 
	rst 38h			;fed0	ff 	. 
	rst 38h			;fed1	ff 	. 
	rst 38h			;fed2	ff 	. 
	rst 38h			;fed3	ff 	. 
	rst 38h			;fed4	ff 	. 
	rst 38h			;fed5	ff 	. 
	rst 38h			;fed6	ff 	. 
	rst 38h			;fed7	ff 	. 
	rst 38h			;fed8	ff 	. 
	rst 38h			;fed9	ff 	. 
	rst 38h			;feda	ff 	. 
	rst 38h			;fedb	ff 	. 
	rst 38h			;fedc	ff 	. 
	rst 38h			;fedd	ff 	. 
	rst 38h			;fede	ff 	. 
	rst 38h			;fedf	ff 	. 
	rst 38h			;fee0	ff 	. 
	rst 38h			;fee1	ff 	. 
	rst 38h			;fee2	ff 	. 
	rst 38h			;fee3	ff 	. 
	rst 38h			;fee4	ff 	. 
	rst 38h			;fee5	ff 	. 
	rst 38h			;fee6	ff 	. 
	rst 38h			;fee7	ff 	. 
	rst 38h			;fee8	ff 	. 
	rst 38h			;fee9	ff 	. 
	rst 38h			;feea	ff 	. 
	rst 38h			;feeb	ff 	. 
	rst 38h			;feec	ff 	. 
	rst 38h			;feed	ff 	. 
	rst 38h			;feee	ff 	. 
	rst 38h			;feef	ff 	. 
	rst 38h			;fef0	ff 	. 
	rst 38h			;fef1	ff 	. 
	rst 38h			;fef2	ff 	. 
	rst 38h			;fef3	ff 	. 
	rst 38h			;fef4	ff 	. 
	rst 38h			;fef5	ff 	. 
	rst 38h			;fef6	ff 	. 
	rst 38h			;fef7	ff 	. 
	rst 38h			;fef8	ff 	. 
	rst 38h			;fef9	ff 	. 
	rst 38h			;fefa	ff 	. 
	rst 38h			;fefb	ff 	. 
	rst 38h			;fefc	ff 	. 
	rst 38h			;fefd	ff 	. 
	rst 38h			;fefe	ff 	. 
	rst 38h			;feff	ff 	. 
	rst 38h			;ff00	ff 	. 
	rst 38h			;ff01	ff 	. 
	rst 38h			;ff02	ff 	. 
	rst 38h			;ff03	ff 	. 
	rst 38h			;ff04	ff 	. 
	rst 38h			;ff05	ff 	. 
	rst 38h			;ff06	ff 	. 
	rst 38h			;ff07	ff 	. 
	rst 38h			;ff08	ff 	. 
	rst 38h			;ff09	ff 	. 
	rst 38h			;ff0a	ff 	. 
	rst 38h			;ff0b	ff 	. 
	rst 38h			;ff0c	ff 	. 
	rst 38h			;ff0d	ff 	. 
	rst 38h			;ff0e	ff 	. 
	rst 38h			;ff0f	ff 	. 
	rst 38h			;ff10	ff 	. 
	rst 38h			;ff11	ff 	. 
	rst 38h			;ff12	ff 	. 
	rst 38h			;ff13	ff 	. 
	rst 38h			;ff14	ff 	. 
	rst 38h			;ff15	ff 	. 
	rst 38h			;ff16	ff 	. 
	rst 38h			;ff17	ff 	. 
	rst 38h			;ff18	ff 	. 
	rst 38h			;ff19	ff 	. 
	rst 38h			;ff1a	ff 	. 
	rst 38h			;ff1b	ff 	. 
	rst 38h			;ff1c	ff 	. 
	rst 38h			;ff1d	ff 	. 
	rst 38h			;ff1e	ff 	. 
	rst 38h			;ff1f	ff 	. 
	rst 38h			;ff20	ff 	. 
	rst 38h			;ff21	ff 	. 
	rst 38h			;ff22	ff 	. 
	rst 38h			;ff23	ff 	. 
	rst 38h			;ff24	ff 	. 
	rst 38h			;ff25	ff 	. 
	rst 38h			;ff26	ff 	. 
	rst 38h			;ff27	ff 	. 
	rst 38h			;ff28	ff 	. 
	rst 38h			;ff29	ff 	. 
	rst 38h			;ff2a	ff 	. 
	rst 38h			;ff2b	ff 	. 
	rst 38h			;ff2c	ff 	. 
	rst 38h			;ff2d	ff 	. 
	rst 38h			;ff2e	ff 	. 
	rst 38h			;ff2f	ff 	. 
	rst 38h			;ff30	ff 	. 
	rst 38h			;ff31	ff 	. 
	rst 38h			;ff32	ff 	. 
	rst 38h			;ff33	ff 	. 
	rst 38h			;ff34	ff 	. 
	rst 38h			;ff35	ff 	. 
	rst 38h			;ff36	ff 	. 
	rst 38h			;ff37	ff 	. 
	rst 38h			;ff38	ff 	. 
	rst 38h			;ff39	ff 	. 
	rst 38h			;ff3a	ff 	. 
	rst 38h			;ff3b	ff 	. 
	rst 38h			;ff3c	ff 	. 
	rst 38h			;ff3d	ff 	. 
	rst 38h			;ff3e	ff 	. 
	rst 38h			;ff3f	ff 	. 
	rst 38h			;ff40	ff 	. 
	rst 38h			;ff41	ff 	. 
	rst 38h			;ff42	ff 	. 
	rst 38h			;ff43	ff 	. 
	rst 38h			;ff44	ff 	. 
	rst 38h			;ff45	ff 	. 
	rst 38h			;ff46	ff 	. 
	rst 38h			;ff47	ff 	. 
	rst 38h			;ff48	ff 	. 
	rst 38h			;ff49	ff 	. 
	rst 38h			;ff4a	ff 	. 
	rst 38h			;ff4b	ff 	. 
	rst 38h			;ff4c	ff 	. 
	rst 38h			;ff4d	ff 	. 
	rst 38h			;ff4e	ff 	. 
	rst 38h			;ff4f	ff 	. 
	rst 38h			;ff50	ff 	. 
	rst 38h			;ff51	ff 	. 
	rst 38h			;ff52	ff 	. 
	rst 38h			;ff53	ff 	. 
	rst 38h			;ff54	ff 	. 
	rst 38h			;ff55	ff 	. 
	rst 38h			;ff56	ff 	. 
	rst 38h			;ff57	ff 	. 
	rst 38h			;ff58	ff 	. 
	rst 38h			;ff59	ff 	. 
	rst 38h			;ff5a	ff 	. 
	rst 38h			;ff5b	ff 	. 
	rst 38h			;ff5c	ff 	. 
	rst 38h			;ff5d	ff 	. 
	rst 38h			;ff5e	ff 	. 
	rst 38h			;ff5f	ff 	. 
	rst 38h			;ff60	ff 	. 
	rst 38h			;ff61	ff 	. 
	rst 38h			;ff62	ff 	. 
	rst 38h			;ff63	ff 	. 
	rst 38h			;ff64	ff 	. 
	rst 38h			;ff65	ff 	. 
	rst 38h			;ff66	ff 	. 
	rst 38h			;ff67	ff 	. 
	rst 38h			;ff68	ff 	. 
	rst 38h			;ff69	ff 	. 
	rst 38h			;ff6a	ff 	. 
	rst 38h			;ff6b	ff 	. 
	rst 38h			;ff6c	ff 	. 
	rst 38h			;ff6d	ff 	. 
	rst 38h			;ff6e	ff 	. 
	rst 38h			;ff6f	ff 	. 
	rst 38h			;ff70	ff 	. 
	rst 38h			;ff71	ff 	. 
	rst 38h			;ff72	ff 	. 
	rst 38h			;ff73	ff 	. 
	rst 38h			;ff74	ff 	. 
	rst 38h			;ff75	ff 	. 
	rst 38h			;ff76	ff 	. 
	rst 38h			;ff77	ff 	. 
	rst 38h			;ff78	ff 	. 
	rst 38h			;ff79	ff 	. 
	rst 38h			;ff7a	ff 	. 
	rst 38h			;ff7b	ff 	. 
	rst 38h			;ff7c	ff 	. 
	rst 38h			;ff7d	ff 	. 
	rst 38h			;ff7e	ff 	. 
	rst 38h			;ff7f	ff 	. 
	rst 38h			;ff80	ff 	. 
	rst 38h			;ff81	ff 	. 
	rst 38h			;ff82	ff 	. 
	rst 38h			;ff83	ff 	. 
	rst 38h			;ff84	ff 	. 
	rst 38h			;ff85	ff 	. 
	rst 38h			;ff86	ff 	. 
	rst 38h			;ff87	ff 	. 
	rst 38h			;ff88	ff 	. 
	rst 38h			;ff89	ff 	. 
	rst 38h			;ff8a	ff 	. 
	rst 38h			;ff8b	ff 	. 
	rst 38h			;ff8c	ff 	. 
	rst 38h			;ff8d	ff 	. 
	rst 38h			;ff8e	ff 	. 
	rst 38h			;ff8f	ff 	. 
	rst 38h			;ff90	ff 	. 
	rst 38h			;ff91	ff 	. 
	rst 38h			;ff92	ff 	. 
	rst 38h			;ff93	ff 	. 
	rst 38h			;ff94	ff 	. 
	rst 38h			;ff95	ff 	. 
	rst 38h			;ff96	ff 	. 
	rst 38h			;ff97	ff 	. 
	rst 38h			;ff98	ff 	. 
	rst 38h			;ff99	ff 	. 
	rst 38h			;ff9a	ff 	. 
	rst 38h			;ff9b	ff 	. 
	rst 38h			;ff9c	ff 	. 
	rst 38h			;ff9d	ff 	. 
	rst 38h			;ff9e	ff 	. 
	rst 38h			;ff9f	ff 	. 
	rst 38h			;ffa0	ff 	. 
	rst 38h			;ffa1	ff 	. 
	rst 38h			;ffa2	ff 	. 
	rst 38h			;ffa3	ff 	. 
	rst 38h			;ffa4	ff 	. 
	rst 38h			;ffa5	ff 	. 
	rst 38h			;ffa6	ff 	. 
	rst 38h			;ffa7	ff 	. 
	rst 38h			;ffa8	ff 	. 
	rst 38h			;ffa9	ff 	. 
	rst 38h			;ffaa	ff 	. 
	rst 38h			;ffab	ff 	. 
	rst 38h			;ffac	ff 	. 
	rst 38h			;ffad	ff 	. 
	rst 38h			;ffae	ff 	. 
	rst 38h			;ffaf	ff 	. 
	rst 38h			;ffb0	ff 	. 
	rst 38h			;ffb1	ff 	. 
	rst 38h			;ffb2	ff 	. 
	rst 38h			;ffb3	ff 	. 
	rst 38h			;ffb4	ff 	. 
	rst 38h			;ffb5	ff 	. 
	rst 38h			;ffb6	ff 	. 
	rst 38h			;ffb7	ff 	. 
	rst 38h			;ffb8	ff 	. 
	rst 38h			;ffb9	ff 	. 
	rst 38h			;ffba	ff 	. 
	rst 38h			;ffbb	ff 	. 
	rst 38h			;ffbc	ff 	. 
	rst 38h			;ffbd	ff 	. 
	rst 38h			;ffbe	ff 	. 
	rst 38h			;ffbf	ff 	. 
	rst 38h			;ffc0	ff 	. 
	rst 38h			;ffc1	ff 	. 
	rst 38h			;ffc2	ff 	. 
	rst 38h			;ffc3	ff 	. 
	rst 38h			;ffc4	ff 	. 
	rst 38h			;ffc5	ff 	. 
	rst 38h			;ffc6	ff 	. 
	rst 38h			;ffc7	ff 	. 
	rst 38h			;ffc8	ff 	. 
	rst 38h			;ffc9	ff 	. 
	rst 38h			;ffca	ff 	. 
	rst 38h			;ffcb	ff 	. 
	rst 38h			;ffcc	ff 	. 
	rst 38h			;ffcd	ff 	. 
	rst 38h			;ffce	ff 	. 
	rst 38h			;ffcf	ff 	. 
	rst 38h			;ffd0	ff 	. 
	rst 38h			;ffd1	ff 	. 
	rst 38h			;ffd2	ff 	. 
	rst 38h			;ffd3	ff 	. 
	rst 38h			;ffd4	ff 	. 
	rst 38h			;ffd5	ff 	. 
	rst 38h			;ffd6	ff 	. 
	rst 38h			;ffd7	ff 	. 
	rst 38h			;ffd8	ff 	. 
	rst 38h			;ffd9	ff 	. 
	rst 38h			;ffda	ff 	. 
	rst 38h			;ffdb	ff 	. 
	rst 38h			;ffdc	ff 	. 
	rst 38h			;ffdd	ff 	. 
	rst 38h			;ffde	ff 	. 
	rst 38h			;ffdf	ff 	. 
lffe0h:
	ld hl,07901h		;ffe0	21 01 79 	! . y 
	ld a,(hl)			;ffe3	7e 	~ 
	and 0e3h		;ffe4	e6 e3 	. . 
	ld (hl),a			;ffe6	77 	w 
	inc hl			;ffe7	23 	# 
	ld (hl),000h		;ffe8	36 00 	6 . 
	inc hl			;ffea	23 	# 
	inc hl			;ffeb	23 	# 
	ld (hl),000h		;ffec	36 00 	6 . 
	call 0bfe8h		;ffee	cd e8 bf 	. . . 
	ld sp,07ffeh		;fff1	31 fe 7f 	1 .  
	call lc000h		;fff4	cd 00 c0 	. . . 
	jp 0bd48h		;fff7	c3 48 bd 	. H . 
	jp lf500h		;fffa	c3 00 f5 	. . . 
	jp lffe0h		;fffd	c3 e0 ff 	. . . 
