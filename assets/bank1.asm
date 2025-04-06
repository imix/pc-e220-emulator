; z80dasm 1.1.3
; command line: z80dasm -l -a -S symbols.sym -b bank1.blk -g 0xC000 -t bank1.bin

	org	0c000h
stringout:	equ 0xbff1
runmode:	equ 0xbff4

lc000h:
	ld a,001h		;c000	3e 01 	> . 
	out (01ah),a		;c002	d3 1a 	. . 
	ld sp,07ffeh		;c004	31 fe 7f 	1 .  
	ld a,00fh		;c007	3e 0f 	> . 
	out (016h),a		;c009	d3 16 	. . 
	xor a			;c00b	af 	. 
	out (01bh),a		;c00c	d3 1b 	. . 
	out (011h),a		;c00e	d3 11 	. . 
	out (012h),a		;c010	d3 12 	. . 
	ld a,002h		;c012	3e 02 	> . 
	out (01eh),a		;c014	d3 1e 	. . 
	ld b,0d2h		;c016	06 d2 	. . 
lc018h:
	bit 0,a		;c018	cb 47 	. G 
	bit 0,a		;c01a	cb 47 	. G 
	djnz lc018h		;c01c	10 fa 	. . 
	in a,(01dh)		;c01e	db 1d 	. . 
	ld c,a			;c020	4f 	O 
	ld b,00ah		;c021	06 0a 	. . 
lc023h:
	djnz lc023h		;c023	10 fe 	. . 
	in a,(01dh)		;c025	db 1d 	. . 
	and c			;c027	a1 	. 
	rra			;c028	1f 	. 
	jp c,0bcd6h		;c029	da d6 bc 	. . . 
	ld a,003h		;c02c	3e 03 	> . 
	out (01eh),a		;c02e	d3 1e 	. . 
	ld hl,07903h		;c030	21 03 79 	! . y 
	res 0,(hl)		;c033	cb 86 	. . 
	ld hl,07f40h		;c035	21 40 7f 	! @  
	ld a,05ah		;c038	3e 5a 	> Z 
	ld (hl),a			;c03a	77 	w 
	cp (hl)			;c03b	be 	. 
	jp nz,0bcd6h		;c03c	c2 d6 bc 	. . . 
	call 0bfd6h		;c03f	cd d6 bf 	. . . 
	call 0bfd3h		;c042	cd d3 bf 	. . . 
	ld hl,07f27h		;c045	21 27 7f 	! '  
	ld a,0a5h		;c048	3e a5 	> . 
	ld b,006h		;c04a	06 06 	. . 
lc04ch:
	cp (hl)			;c04c	be 	. 
	jr nz,lc05ah		;c04d	20 0b 	  . 
	inc hl			;c04f	23 	# 
	djnz lc04ch		;c050	10 fa 	. . 
	cp (hl)			;c052	be 	. 
	jr z,lc05dh		;c053	28 08 	( . 
	ld a,05ah		;c055	3e 5a 	> Z 
	cp (hl)			;c057	be 	. 
	jr z,lc05dh		;c058	28 03 	( . 
lc05ah:
	call sub_c065h		;c05a	cd 65 c0 	. e . 
lc05dh:
	ld hl,07900h		;c05d	21 00 79 	! . y 
	ld (hl),001h		;c060	36 01 	6 . 
	jp lc089h		;c062	c3 89 c0 	. . . 
sub_c065h:
	ld a,0c3h		;c065	3e c3 	> . 
	ld (00000h),a		;c067	32 00 00 	2 . . 
	ld hl,runmode		;c06a	21 f4 bf 	! . . 
	ld (00001h),hl		;c06d	22 01 00 	" . . 
	ld hl,00003h		;c070	21 03 00 	! . . 
	ld b,03dh		;c073	06 3d 	. = 
	xor a			;c075	af 	. 
lc076h:
	ld (hl),a			;c076	77 	w 
	inc hl			;c077	23 	# 
	djnz lc076h		;c078	10 fc 	. . 
	ld a,0c9h		;c07a	3e c9 	> . 
	ld hl,00008h		;c07c	21 08 00 	! . . 
	ld b,007h		;c07f	06 07 	. . 
	ld de,00008h		;c081	11 08 00 	. . . 
lc084h:
	ld (hl),a			;c084	77 	w 
	add hl,de			;c085	19 	. 
	djnz lc084h		;c086	10 fc 	. . 
	ret			;c088	c9 	. 
lc089h:
	ld sp,07ffeh		;c089	31 fe 7f 	1 .  
	ld hl,00000h		;c08c	21 00 00 	! . . 
	push hl			;c08f	e5 	. 
	di			;c090	f3 	. 
	call 0bfcah		;c091	cd ca bf 	. . . 
	ld hl,07f30h		;c094	21 30 7f 	! 0  
	ld (hl),001h		;c097	36 01 	6 . 
	call 0bfc1h		;c099	cd c1 bf 	. . . 
	ld hl,07f27h		;c09c	21 27 7f 	! '  
	ld bc,00007h		;c09f	01 07 00 	. . . 
	ld a,0a5h		;c0a2	3e a5 	> . 
lc0a4h:
	cpd		;c0a4	ed a9 	. . 
	jr nz,lc0beh		;c0a6	20 16 	  . 
	jp pe,lc0a4h		;c0a8	ea a4 c0 	. . . 
	cp (hl)			;c0ab	be 	. 
	jp z,lc1b4h		;c0ac	ca b4 c1 	. . . 
	ld de,07f30h		;c0af	11 30 7f 	. 0  
	ex de,hl			;c0b2	eb 	. 
	res 0,(hl)		;c0b3	cb 86 	. . 
	ex de,hl			;c0b5	eb 	. 
	ld a,05ah		;c0b6	3e 5a 	> Z 
	cp (hl)			;c0b8	be 	. 
	jr nz,lc0fdh		;c0b9	20 42 	  B 
	jp lc190h		;c0bb	c3 90 c1 	. . . 
lc0beh:
	call 0bffah		;c0be	cd fa bf 	. . . 
	jr nc,lc0fdh		;c0c1	30 3a 	0 : 
	cp 098h		;c0c3	fe 98 	. . 
	jr nz,lc0d2h		;c0c5	20 0b 	  . 
	call sub_e6b4h		;c0c7	cd b4 e6 	. . . 
	call 0bffah		;c0ca	cd fa bf 	. . . 
	cp 098h		;c0cd	fe 98 	. . 
	jp z,0bc6dh		;c0cf	ca 6d bc 	. m . 
lc0d2h:
	ld hl,07f30h		;c0d2	21 30 7f 	! 0  
	set 1,(hl)		;c0d5	cb ce 	. . 
	ld a,(079d8h)		;c0d7	3a d8 79 	: . y 
	and 0c8h		;c0da	e6 c8 	. . 
	ld (079d8h),a		;c0dc	32 d8 79 	2 . y 
	call sub_c757h		;c0df	cd 57 c7 	. W . 
	call 0bfc7h		;c0e2	cd c7 bf 	. . . 
	call sub_f649h		;c0e5	cd 49 f6 	. I . 
	jp lc190h		;c0e8	c3 90 c1 	. . . 
lc0ebh:
	call 0bd2dh		;c0eb	cd 2d bd 	. - . 
	jr lc0ebh		;c0ee	18 fb 	. . 
lc0f0h:
	call sub_f88ah		;c0f0	cd 8a f8 	. . . 
	call 0bd36h		;c0f3	cd 36 bd 	. 6 . 
	jr z,lc0f0h		;c0f6	28 f8 	( . 
	call 0bd2dh		;c0f8	cd 2d bd 	. - . 
	jr lc0f0h		;c0fb	18 f3 	. . 
lc0fdh:
	ld a,020h		;c0fd	3e 20 	>   
	ld b,060h		;c0ff	06 60 	. ` 
	ld de,00000h		;c101	11 00 00 	. . . 
	call 0bfeeh		;c104	cd ee bf 	. . . 
	ld de,00100h		;c107	11 00 01 	. . . 
	ld b,018h		;c10a	06 18 	. . 
	ld hl,memclear_start		;c10c	21 61 c2 	! a . 
	call stringout		;c10f	cd f1 bf 	. . . 
lc112h:
	call 0bfcdh		;c112	cd cd bf 	. . . 
	cp 016h		;c115	fe 16 	. . 
	jr z,lc0d2h		;c117	28 b9 	( . 
	cp 001h		;c119	fe 01 	. . 
	jr z,lc0ebh		;c11b	28 ce 	( . 
	cp 007h		;c11d	fe 07 	. . 
	jr nz,lc112h		;c11f	20 f1 	  . 
	call sub_e6b4h		;c121	cd b4 e6 	. . . 
	call 0bffah		;c124	cd fa bf 	. . . 
	cp 007h		;c127	fe 07 	. . 
	jr nz,lc112h		;c129	20 e7 	  . 
	call sub_c2bah		;c12b	cd ba c2 	. . . 
	jr nz,lc0f0h		;c12e	20 c0 	  . 
	ld l,040h		;c130	2e 40 	. @ 
	push hl			;c132	e5 	. 
	ld de,07f00h		;c133	11 00 7f 	. .  
	scf			;c136	37 	7 
	ex de,hl			;c137	eb 	. 
	sbc hl,de		;c138	ed 52 	. R 
	ld b,h			;c13a	44 	D 
	ld c,l			;c13b	4d 	M 
	pop hl			;c13c	e1 	. 
	push hl			;c13d	e5 	. 
	ld d,h			;c13e	54 	T 
	ld e,l			;c13f	5d 	] 
	inc de			;c140	13 	. 
	ld (hl),000h		;c141	36 00 	6 . 
	ldir		;c143	ed b0 	. . 
	ld a,001h		;c145	3e 01 	> . 
	ld (07900h),a		;c147	32 00 79 	2 . y 
	ld hl,045edh		;c14a	21 ed 45 	! . E 
	ld (00066h),hl		;c14d	22 66 00 	" f . 
	pop hl			;c150	e1 	. 
	ld a,h			;c151	7c 	| 
	ld (07930h),a		;c152	32 30 79 	2 0 y 
	inc h			;c155	24 	$ 
	ld l,000h		;c156	2e 00 	. . 
	ld (07ffeh),hl		;c158	22 fe 7f 	" .  
	ld bc,00019h		;c15b	01 19 00 	. . . 
	ex de,hl			;c15e	eb 	. 
	ld hl,0c2a1h		;c15f	21 a1 c2 	! . . 
	ldir		;c162	ed b0 	. . 
	ex de,hl			;c164	eb 	. 
	ld a,0ffh		;c165	3e ff 	> . 
	ld (07973h),hl		;c167	22 73 79 	" s y 
	ld (hl),a			;c16a	77 	w 
	inc hl			;c16b	23 	# 
	ld (07975h),hl		;c16c	22 75 79 	" u y 
	ld (hl),a			;c16f	77 	w 
	inc hl			;c170	23 	# 
	ld (079e1h),hl		;c171	22 e1 79 	" . y 
	ld (hl),a			;c174	77 	w 
	inc hl			;c175	23 	# 
	ld (079e3h),hl		;c176	22 e3 79 	" . y 
	ld (hl),a			;c179	77 	w 
	call sub_dc89h		;c17a	cd 89 dc 	. . . 
	call sub_c575h		;c17d	cd 75 c5 	. u . 
	call 0bfc4h		;c180	cd c4 bf 	. . . 
	call sub_f649h		;c183	cd 49 f6 	. I . 
	pop bc			;c186	c1 	. 
	ld bc,0ffffh		;c187	01 ff ff 	. . . 
	push bc			;c18a	c5 	. 
	ld a,007h		;c18b	3e 07 	> . 
	ld (07905h),a		;c18d	32 05 79 	2 . y 
lc190h:
	ld a,020h		;c190	3e 20 	>   
	ld b,060h		;c192	06 60 	. ` 
	ld de,00000h		;c194	11 00 00 	. . . 
	call 0bfeeh		;c197	cd ee bf 	. . . 
	xor a			;c19a	af 	. 
	ld hl,07901h		;c19b	21 01 79 	! . y 
	ld (hl),a			;c19e	77 	w 
	inc hl			;c19f	23 	# 
	ld (hl),a			;c1a0	77 	w 
	inc hl			;c1a1	23 	# 
	ld a,(hl)			;c1a2	7e 	~ 
	and 005h		;c1a3	e6 05 	. . 
	ld (hl),a			;c1a5	77 	w 
	inc hl			;c1a6	23 	# 
	ld (hl),000h		;c1a7	36 00 	6 . 
	ld hl,lc1edh		;c1a9	21 ed c1 	! . . 
	ld de,07a78h		;c1ac	11 78 7a 	. x z 
	ld bc,00008h		;c1af	01 08 00 	. . . 
	ldir		;c1b2	ed b0 	. . 
lc1b4h:
	ld hl,07903h		;c1b4	21 03 79 	! . y 
	ld a,(hl)			;c1b7	7e 	~ 
	or 060h		;c1b8	f6 60 	. ` 
	and 0efh		;c1ba	e6 ef 	. . 
	ld (hl),a			;c1bc	77 	w 
	call sub_c757h		;c1bd	cd 57 c7 	. W . 
	in a,(013h)		;c1c0	db 13 	. . 
	ld (07932h),a		;c1c2	32 32 79 	2 2 y 
lc1c5h:
	ld hl,07901h		;c1c5	21 01 79 	! . y 
	set 1,(hl)		;c1c8	cb ce 	. . 
	inc hl			;c1ca	23 	# 
	ld (hl),040h		;c1cb	36 40 	6 @ 
	inc hl			;c1cd	23 	# 
	inc hl			;c1ce	23 	# 
	res 5,(hl)		;c1cf	cb ae 	. . 
	res 6,(hl)		;c1d1	cb b6 	. . 
	ld a,020h		;c1d3	3e 20 	>   
	ld b,018h		;c1d5	06 18 	. . 
	ld hl,07f10h		;c1d7	21 10 7f 	! .  
lc1dah:
	ld (hl),a			;c1da	77 	w 
	inc hl			;c1db	23 	# 
	djnz lc1dah		;c1dc	10 fc 	. . 
	pop hl			;c1de	e1 	. 
	ld a,0ffh		;c1df	3e ff 	> . 
	cp h			;c1e1	bc 	. 
	jr nz,lc1e7h		;c1e2	20 03 	  . 
	cp l			;c1e4	bd 	. 
	jr z,lc1feh		;c1e5	28 17 	( . 
lc1e7h:
	ld sp,07ffeh		;c1e7	31 fe 7f 	1 .  
	jp 0bfb8h		;c1ea	c3 b8 bf 	. . . 
lc1edh:
	nop			;c1ed	00 	. 
	djnz lc247h		;c1ee	10 57 	. W 
	add hl,hl			;c1f0	29 	) 
	ld d,a			;c1f1	57 	W 
	ld a,c			;c1f2	79 	y 
	ld d,c			;c1f3	51 	Q 
	ld sp,lfe31h		;c1f4	31 31 fe 	1 1 . 
	ld a,a			;c1f7	7f 	 
	ld hl,00000h		;c1f8	21 00 00 	! . . 
	push hl			;c1fb	e5 	. 
	jr lc1c5h		;c1fc	18 c7 	. . 
lc1feh:
	ld hl,00000h		;c1fe	21 00 00 	! . . 
	push hl			;c201	e5 	. 
	call 0bff7h		;c202	cd f7 bf 	. . . 
	ld a,020h		;c205	3e 20 	>   
	ld de,00000h		;c207	11 00 00 	. . . 
	ld b,060h		;c20a	06 60 	. ` 
	call 0bfeeh		;c20c	cd ee bf 	. . . 
	ld de,07f40h		;c20f	11 40 7f 	. @  
	ld hl,memclear_end		;c212	21 79 c2 	! y . 
	ld bc,0000fh		;c215	01 0f 00 	. . . 
	ldir		;c218	ed b0 	. . 
	ld b,005h		;c21a	06 05 	. . 
	xor a			;c21c	af 	. 
lc21dh:
	ld (de),a			;c21d	12 	. 
	inc de			;c21e	13 	. 
	djnz lc21dh		;c21f	10 fc 	. . 
	ld hl,lc288h		;c221	21 88 c2 	! . . 
	ld bc,00019h		;c224	01 19 00 	. . . 
	ldir		;c227	ed b0 	. . 
	ld hl,07f40h		;c229	21 40 7f 	! @  
	ld de,00107h		;c22c	11 07 01 	. . . 
	ld b,02dh		;c22f	06 2d 	. - 
	call 0bfd0h		;c231	cd d0 bf 	. . . 
	ld a,007h		;c234	3e 07 	> . 
	ld (07966h),a		;c236	32 66 79 	2 f y 
	ld hl,07965h		;c239	21 65 79 	! e y 
	ld a,(hl)			;c23c	7e 	~ 
	and 0efh		;c23d	e6 ef 	. . 
	or 005h		;c23f	f6 05 	. . 
	ld (hl),a			;c241	77 	w 
	ld hl,07964h		;c242	21 64 79 	! d y 
	set 7,(hl)		;c245	cb fe 	. . 
lc247h:
	call 0bfcdh		;c247	cd cd bf 	. . . 
	ld hl,07964h		;c24a	21 64 79 	! d y 
	res 7,(hl)		;c24d	cb be 	. . 
	cp 001h		;c24f	fe 01 	. . 
	call z,0bd2dh		;c251	cc 2d bd 	. - . 
	ld hl,07f40h		;c254	21 40 7f 	! @  
	ld b,02dh		;c257	06 2d 	. - 
	xor a			;c259	af 	. 
lc25ah:
	ld (hl),a			;c25a	77 	w 
	inc hl			;c25b	23 	# 
	djnz lc25ah		;c25c	10 fc 	. . 
	pop hl			;c25e	e1 	. 
	jr lc1e7h		;c25f	18 86 	. . 

; BLOCK 'memclear' (start 0xc261 end 0xc279)
memclear_start:
	defb 04dh		;c261	4d 	M 
	defb 045h		;c262	45 	E 
	defb 04dh		;c263	4d 	M 
	defb 04fh		;c264	4f 	O 
	defb 052h		;c265	52 	R 
	defb 059h		;c266	59 	Y 
	defb 020h		;c267	20 	  
	defb 043h		;c268	43 	C 
	defb 04ch		;c269	4c 	L 
	defb 045h		;c26a	45 	E 
	defb 041h		;c26b	41 	A 
	defb 052h		;c26c	52 	R 
	defb 020h		;c26d	20 	  
	defb 04fh		;c26e	4f 	O 
	defb 02eh		;c26f	2e 	. 
	defb 04bh		;c270	4b 	K 
	defb 02eh		;c271	2e 	. 
	defb 03fh		;c272	3f 	? 
	defb 020h		;c273	20 	  
	defb 028h		;c274	28 	( 
	defb 059h		;c275	59 	Y 
	defb 02fh		;c276	2f 	/ 
	defb 04eh		;c277	4e 	N 
	defb 029h		;c278	29 	) 
memclear_end:
	ld a,h			;c279	7c 	| 
	ld a,(hl)			;c27a	7e 	~ 
	ld de,07c12h		;c27b	11 12 7c 	. . | 
	ld a,a			;c27e	7f 	 
	ld a,a			;c27f	7f 	 
	ld b,b			;c280	40 	@ 
	ld b,b			;c281	40 	@ 
	ld b,b			;c282	40 	@ 
	ld a,a			;c283	7f 	 
	ld a,a			;c284	7f 	 
	ld b,b			;c285	40 	@ 
	ld b,b			;c286	40 	@ 
	ld b,b			;c287	40 	@ 
lc288h:
	ld a,a			;c288	7f 	 
	ld a,a			;c289	7f 	 
	add hl,de			;c28a	19 	. 
	add hl,hl			;c28b	29 	) 
	ld b,(hl)			;c28c	46 	F 
	ld a,a			;c28d	7f 	 
	ld a,a			;c28e	7f 	 
	ld c,c			;c28f	49 	I 
	ld c,c			;c290	49 	I 
	ld c,c			;c291	49 	I 
	ld h,04fh		;c292	26 4f 	& O 
	ld c,c			;c294	49 	I 
	ld a,c			;c295	79 	y 
	ld (07f7fh),a		;c296	32 7f 7f 	2   
	ld c,c			;c299	49 	I 
	ld c,c			;c29a	49 	I 
	ld c,c			;c29b	49 	I 
	ld bc,07f7fh		;c29c	01 7f 7f 	.   
	ld bc,01000h		;c29f	01 00 10 	. . . 
	ld (de),a			;c2a2	12 	. 
	nop			;c2a3	00 	. 
	nop			;c2a4	00 	. 
	ld bc,05010h		;c2a5	01 10 50 	. . P 
	ld b,e			;c2a8	43 	C 
	jr nz,lc2cbh		;c2a9	20 20 	    
	jr nz,$+34		;c2ab	20 20 	    
	jr nz,$+34		;c2ad	20 20 	    
	jr nz,lc2d1h		;c2af	20 20 	    
	jr nz,lc2b3h		;c2b1	20 00 	  . 
lc2b3h:
	add hl,de			;c2b3	19 	. 
	nop			;c2b4	00 	. 
	nop			;c2b5	00 	. 
	nop			;c2b6	00 	. 
	nop			;c2b7	00 	. 
	nop			;c2b8	00 	. 
	nop			;c2b9	00 	. 
sub_c2bah:
	ld a,020h		;c2ba	3e 20 	>   
	ld hl,02120h		;c2bc	21 20 21 	!   ! 
	ld (00100h),hl		;c2bf	22 00 01 	" . . 
	ld hl,02322h		;c2c2	21 22 23 	! " # 
	ld (04100h),hl		;c2c5	22 00 41 	" . A 
	ld hl,02524h		;c2c8	21 24 25 	! $ % 
lc2cbh:
	ld (06100h),hl		;c2cb	22 00 61 	" . a 
	ld hl,07f1fh		;c2ce	21 1f 7f 	! .  
lc2d1h:
	ld (hl),0a5h		;c2d1	36 a5 	6 . 
	ld hl,(00100h)		;c2d3	2a 00 01 	* . . 
	ld (07f20h),hl		;c2d6	22 20 7f 	"    
	ld hl,(04100h)		;c2d9	2a 00 41 	* . A 
	ld (07f22h),hl		;c2dc	22 22 7f 	" "  
	ld hl,(06100h)		;c2df	2a 00 61 	* . a 
	ld (07f24h),hl		;c2e2	22 24 7f 	" $  
	ld hl,07f26h		;c2e5	21 26 7f 	! &  
lc2e8h:
	dec hl			;c2e8	2b 	+ 
	ld a,(hl)			;c2e9	7e 	~ 
	cp l			;c2ea	bd 	. 
	jr z,lc2e8h		;c2eb	28 fb 	( . 
	ld a,l			;c2ed	7d 	} 
	ld h,060h		;c2ee	26 60 	& ` 
	cp 023h		;c2f0	fe 23 	. # 
	jr z,lc2feh		;c2f2	28 0a 	( . 
	ld h,040h		;c2f4	26 40 	& @ 
	cp 021h		;c2f6	fe 21 	. ! 
	jr z,lc2feh		;c2f8	28 04 	( . 
	ld h,000h		;c2fa	26 00 	& . 
	cp 01fh		;c2fc	fe 1f 	. . 
lc2feh:
	ret			;c2fe	c9 	. 
lc2ffh:
	ld a,041h		;c2ff	3e 41 	> A 
	out (019h),a		;c301	d3 19 	. . 
	ld de,08000h		;c303	11 00 80 	. . . 
	call sub_c31eh		;c306	cd 1e c3 	. . . 
	jr nc,lc30fh		;c309	30 04 	0 . 
	pop af			;c30b	f1 	. 
	jp 08010h		;c30c	c3 10 80 	. . . 
lc30fh:
	ld a,001h		;c30f	3e 01 	> . 
	out (019h),a		;c311	d3 19 	. . 
	ld de,00040h		;c313	11 40 00 	. @ . 
	call sub_c31eh		;c316	cd 1e c3 	. . . 
	ret nc			;c319	d0 	. 
	pop af			;c31a	f1 	. 
	jp 00050h		;c31b	c3 50 00 	. P . 
sub_c31eh:
	ld hl,machinelang_start		;c31e	21 2f c3 	! / . 
	ld b,011h		;c321	06 11 	. . 
lc323h:
	ld a,(de)			;c323	1a 	. 
	cp (hl)			;c324	be 	. 
	jr nz,lc32dh		;c325	20 06 	  . 
	inc de			;c327	13 	. 
	inc hl			;c328	23 	# 
	djnz lc323h		;c329	10 f8 	. . 
	scf			;c32b	37 	7 
	ret			;c32c	c9 	. 
lc32dh:
	and a			;c32d	a7 	. 
	ret			;c32e	c9 	. 

; BLOCK 'machinelang' (start 0xc32f end 0xc33f)
machinelang_start:
	defb 04dh		;c32f	4d 	M 
	defb 041h		;c330	41 	A 
	defb 043h		;c331	43 	C 
	defb 048h		;c332	48 	H 
	defb 049h		;c333	49 	I 
	defb 04eh		;c334	4e 	N 
	defb 045h		;c335	45 	E 
	defb 020h		;c336	20 	  
	defb 04ch		;c337	4c 	L 
	defb 041h		;c338	41 	A 
	defb 04eh		;c339	4e 	N 
	defb 047h		;c33a	47 	G 
	defb 055h		;c33b	55 	U 
	defb 041h		;c33c	41 	A 
	defb 047h		;c33d	47 	G 
	defb 045h		;c33e	45 	E 
machinelang_end:
	jp 0383ah		;c33f	c3 3a 38 	. : 8 
	ld a,a			;c342	7f 	 
	ld (079eah),a		;c343	32 ea 79 	2 . y 
	call 08256h		;c346	cd 56 82 	. V . 
	ld a,(07f14h)		;c349	3a 14 7f 	: .  
	cp 0d0h		;c34c	fe d0 	. . 
	jr z,lc36ch		;c34e	28 1c 	( . 
	ld a,(079c9h)		;c350	3a c9 79 	: . y 
	xor 008h		;c353	ee 08 	. . 
	ld (07f11h),a		;c355	32 11 7f 	2 .  
	call 0be47h		;c358	cd 47 be 	. G . 
	ld hl,079dah		;c35b	21 da 79 	! . y 
	set 0,(hl)		;c35e	cb c6 	. . 
	call 0be68h		;c360	cd 68 be 	. h . 
	jr c,lc36fh		;c363	38 0a 	8 . 
	call sub_c376h		;c365	cd 76 c3 	. v . 
	ld (07f38h),hl		;c368	22 38 7f 	" 8  
	ret			;c36b	c9 	. 
lc36ch:
	call 0838ch		;c36c	cd 8c 83 	. . . 
lc36fh:
	call sub_c376h		;c36f	cd 76 c3 	. v . 
	call 0be08h		;c372	cd 08 be 	. . . 
	ret			;c375	c9 	. 
sub_c376h:
	ld a,(079eah)		;c376	3a ea 79 	: . y 
	ld l,a			;c379	6f 	o 
	ld h,07dh		;c37a	26 7d 	& } 
	push hl			;c37c	e5 	. 
	pop ix		;c37d	dd e1 	. . 
	ret			;c37f	c9 	. 
lc380h:
	call sub_c3bbh		;c380	cd bb c3 	. . . 
	ret z			;c383	c8 	. 
	jr lc39ah		;c384	18 14 	. . 
lc386h:
	sub 02fh		;c386	d6 2f 	. / 
	ld hl,079fbh		;c388	21 fb 79 	! . y 
	ld (hl),000h		;c38b	36 00 	6 . 
	dec hl			;c38d	2b 	+ 
	ld (hl),a			;c38e	77 	w 
	dec hl			;c38f	2b 	+ 
	ld (hl),00bh		;c390	36 0b 	6 . 
	dec hl			;c392	2b 	+ 
	res 3,(hl)		;c393	cb 9e 	. . 
	ld hl,07964h		;c395	21 64 79 	! d y 
	set 0,(hl)		;c398	cb c6 	. . 
lc39ah:
	ld a,(079cch)		;c39a	3a cc 79 	: . y 
	cp 0d0h		;c39d	fe d0 	. . 
	ret z			;c39f	c8 	. 
	ld a,(079dah)		;c3a0	3a da 79 	: . y 
	rra			;c3a3	1f 	. 
	ret nc			;c3a4	d0 	. 
	ld hl,079a0h		;c3a5	21 a0 79 	! . y 
	ld de,07f10h		;c3a8	11 10 7f 	. .  
	ld bc,00008h		;c3ab	01 08 00 	. . . 
	ldir		;c3ae	ed b0 	. . 
	ld ix,(07f38h)		;c3b0	dd 2a 38 7f 	. * 8  
	call 0be68h		;c3b4	cd 68 be 	. h . 
	call c,0be08h		;c3b7	dc 08 be 	. . . 
	ret			;c3ba	c9 	. 
sub_c3bbh:
	ld hl,07964h		;c3bb	21 64 79 	! d y 
	bit 0,(hl)		;c3be	cb 46 	. F 
	ret z			;c3c0	c8 	. 
	res 0,(hl)		;c3c1	cb 86 	. . 
	call 0bd66h		;c3c3	cd 66 bd 	. f . 
	xor a			;c3c6	af 	. 
	inc a			;c3c7	3c 	< 
	ret			;c3c8	c9 	. 
lc3c9h:
	ld a,(079dah)		;c3c9	3a da 79 	: . y 
	rra			;c3cc	1f 	. 
	ret nc			;c3cd	d0 	. 
	call 0bde7h		;c3ce	cd e7 bd 	. . . 
	call 0be47h		;c3d1	cd 47 be 	. G . 
	call 0842ah		;c3d4	cd 2a 84 	. * . 
	ret nc			;c3d7	d0 	. 
	call sub_f8ach		;c3d8	cd ac f8 	. . . 
	call sub_c3feh		;c3db	cd fe c3 	. . . 
	call 0bfcah		;c3de	cd ca bf 	. . . 
	ld hl,079dah		;c3e1	21 da 79 	! . y 
	set 0,(hl)		;c3e4	cb c6 	. . 
	ld hl,079dfh		;c3e6	21 df 79 	! . y 
	ld a,(hl)			;c3e9	7e 	~ 
	xor 001h		;c3ea	ee 01 	. . 
	ld (hl),a			;c3ec	77 	w 
	call 0be68h		;c3ed	cd 68 be 	. h . 
	jr c,lc3fah		;c3f0	38 08 	8 . 
	ld (07f38h),ix		;c3f2	dd 22 38 7f 	. " 8  
	call 0be44h		;c3f6	cd 44 be 	. D . 
	ret			;c3f9	c9 	. 
lc3fah:
	call 0be08h		;c3fa	cd 08 be 	. . . 
	ret			;c3fd	c9 	. 
sub_c3feh:
	ld hl,07f36h		;c3fe	21 36 7f 	! 6  
	res 4,(hl)		;c401	cb a6 	. . 
	set 1,(hl)		;c403	cb ce 	. . 
	dec hl			;c405	2b 	+ 
	res 5,(hl)		;c406	cb ae 	. . 
	ld hl,079dah		;c408	21 da 79 	! . y 
	ld a,(hl)			;c40b	7e 	~ 
	and 0e0h		;c40c	e6 e0 	. . 
	ld (hl),a			;c40e	77 	w 
	ld hl,07965h		;c40f	21 65 79 	! e y 
	res 2,(hl)		;c412	cb 96 	. . 
	ret			;c414	c9 	. 
lc415h:
	ld de,079a0h		;c415	11 a0 79 	. . y 
	ld hl,07f35h		;c418	21 35 7f 	! 5  
	bit 5,(hl)		;c41b	cb 6e 	. n 
	ret nz			;c41d	c0 	. 
lc41eh:
	ld a,(07965h)		;c41e	3a 65 79 	: e y 
	and 00ah		;c421	e6 0a 	. . 
	ret nz			;c423	c0 	. 
	ld a,(079dah)		;c424	3a da 79 	: . y 
	ld b,a			;c427	47 	G 
	and 006h		;c428	e6 06 	. . 
	ret nz			;c42a	c0 	. 
	push de			;c42b	d5 	. 
	bit 4,b		;c42c	cb 60 	. ` 
	jr nz,lc438h		;c42e	20 08 	  . 
	bit 5,b		;c430	cb 68 	. h 
	jr z,lc43bh		;c432	28 07 	( . 
	bit 0,b		;c434	cb 40 	. @ 
	jr z,lc43eh		;c436	28 06 	( . 
lc438h:
	call 0be38h		;c438	cd 38 be 	. 8 . 
lc43bh:
	call 0be41h		;c43b	cd 41 be 	. A . 
lc43eh:
	pop hl			;c43e	e1 	. 
	ld de,07f10h		;c43f	11 10 7f 	. .  
	ld bc,00008h		;c442	01 08 00 	. . . 
	ldir		;c445	ed b0 	. . 
	call 0bdeah		;c447	cd ea bd 	. . . 
	ld hl,lfefeh		;c44a	21 fe fe 	! . . 
	ld (07906h),hl		;c44d	22 06 79 	" . y 
	ld hl,07d00h		;c450	21 00 7d 	! . } 
	ld (07908h),hl		;c453	22 08 79 	" . y 
	push iy		;c456	fd e5 	. . 
	pop hl			;c458	e1 	. 
	inc l			;c459	2c 	, 
	ld a,l			;c45a	7d 	} 
	ld (0790ah),a		;c45b	32 0a 79 	2 . y 
	ld hl,079dah		;c45e	21 da 79 	! . y 
	ld a,(hl)			;c461	7e 	~ 
	and 080h		;c462	e6 80 	. . 
	or 020h		;c464	f6 20 	.   
	ld (hl),a			;c466	77 	w 
	ld hl,079d8h		;c467	21 d8 79 	! . y 
	res 4,(hl)		;c46a	cb a6 	. . 
	ld hl,079dfh		;c46c	21 df 79 	! . y 
	res 0,(hl)		;c46f	cb 86 	. . 
	call 0bfdfh		;c471	cd df bf 	. . . 
	ret			;c474	c9 	. 
lc475h:
	ld de,07998h		;c475	11 98 79 	. . y 
	jr lc41eh		;c478	18 a4 	. . 
lc47ah:
	ld hl,0796eh		;c47a	21 6e 79 	! n y 
	set 2,(hl)		;c47d	cb d6 	. . 
	jr lc48fh		;c47f	18 0e 	. . 
lc481h:
	call 08145h		;c481	cd 45 81 	. E . 
	call 0bed7h		;c484	cd d7 be 	. . . 
	jp lc539h		;c487	c3 39 c5 	. 9 . 
lc48ah:
	ld hl,0796eh		;c48a	21 6e 79 	! n y 
	res 2,(hl)		;c48d	cb 96 	. . 
lc48fh:
	call 0bfcah		;c48f	cd ca bf 	. . . 
	ld a,(079dah)		;c492	3a da 79 	: . y 
	rra			;c495	1f 	. 
	jr c,lc514h		;c496	38 7c 	8 | 
	ld ix,07bffh		;c498	dd 21 ff 7b 	. ! . { 
	ld iy,07cffh		;c49c	fd 21 ff 7c 	. ! . | 
	call 0d470h		;c4a0	cd 70 d4 	. p . 
	ld a,(07d00h)		;c4a3	3a 00 7d 	: . } 
	cp 00dh		;c4a6	fe 0d 	. . 
	jr z,lc4f7h		;c4a8	28 4d 	( M 
	call 0bdedh		;c4aa	cd ed bd 	. . . 
	ld hl,07965h		;c4ad	21 65 79 	! e y 
	res 2,(hl)		;c4b0	cb 96 	. . 
	ld hl,07904h		;c4b2	21 04 79 	! . y 
	bit 6,(hl)		;c4b5	cb 76 	. v 
	jr z,lc4c3h		;c4b7	28 0a 	( . 
	call sub_e44fh		;c4b9	cd 4f e4 	. O . 
	jr c,lc4fbh		;c4bc	38 3d 	8 = 
	call sub_e43bh		;c4be	cd 3b e4 	. ; . 
	jr c,lc50bh		;c4c1	38 48 	8 H 
lc4c3h:
	ld ix,07cffh		;c4c3	dd 21 ff 7c 	. ! . | 
lc4c7h:
	call 0bfbbh		;c4c7	cd bb bf 	. . . 
	jr c,lc50bh		;c4ca	38 3f 	8 ? 
	call 0bcd9h		;c4cc	cd d9 bc 	. . . 
	jr c,lc50bh		;c4cf	38 3a 	8 : 
	call 0be47h		;c4d1	cd 47 be 	. G . 
	inc ix		;c4d4	dd 23 	. # 
	ld a,(ix+000h)		;c4d6	dd 7e 00 	. ~ . 
	cp 00dh		;c4d9	fe 0d 	. . 
	jr z,lc51ah		;c4db	28 3d 	( = 
	cp 02ch		;c4dd	fe 2c 	. , 
	jr nz,lc508h		;c4df	20 27 	  ' 
	ld hl,079dah		;c4e1	21 da 79 	! . y 
	set 0,(hl)		;c4e4	cb c6 	. . 
	call 0be68h		;c4e6	cd 68 be 	. h . 
	jr c,lc50bh		;c4e9	38 20 	8   
	ld hl,07f35h		;c4eb	21 35 7f 	! 5  
	bit 5,(hl)		;c4ee	cb 6e 	. n 
	jr z,lc4c7h		;c4f0	28 d5 	( . 
	res 5,(hl)		;c4f2	cb ae 	. . 
	call 0bdf0h		;c4f4	cd f0 bd 	. . . 
lc4f7h:
	call 0be44h		;c4f7	cd 44 be 	. D . 
	ret			;c4fa	c9 	. 
lc4fbh:
	ld hl,07904h		;c4fb	21 04 79 	! . y 
	res 6,(hl)		;c4fe	cb b6 	. . 
	call 0bfe8h		;c500	cd e8 bf 	. . . 
	jr lc4c3h		;c503	18 be 	. . 
lc505h:
	call sub_c588h		;c505	cd 88 c5 	. . . 
lc508h:
	call 08379h		;c508	cd 79 83 	. y . 
lc50bh:
	call 0be08h		;c50b	cd 08 be 	. . . 
	ret			;c50e	c9 	. 
lc50fh:
	call 0834ah		;c50f	cd 4a 83 	. J . 
	jr lc50bh		;c512	18 f7 	. . 
lc514h:
	call 08256h		;c514	cd 56 82 	. V . 
	call sub_c588h		;c517	cd 88 c5 	. . . 
lc51ah:
	ld a,(07f14h)		;c51a	3a 14 7f 	: .  
	cp 0d0h		;c51d	fe d0 	. . 
	jr z,lc505h		;c51f	28 e4 	( . 
	ld hl,07f11h		;c521	21 11 7f 	! .  
	ld a,(hl)			;c524	7e 	~ 
	and 0f0h		;c525	e6 f0 	. . 
	ld (hl),a			;c527	77 	w 
	call 080cdh		;c528	cd cd 80 	. . . 
	call 08251h		;c52b	cd 51 82 	. Q . 
	ld hl,0796eh		;c52e	21 6e 79 	! n y 
	bit 2,(hl)		;c531	cb 56 	. V 
	jp nz,lc481h		;c533	c2 81 c4 	. . . 
	call 0beddh		;c536	cd dd be 	. . . 
lc539h:
	jr c,lc50fh		;c539	38 d4 	8 . 
	call 081bbh		;c53b	cd bb 81 	. . . 
	call 0824ch		;c53e	cd 4c 82 	. L . 
	ld hl,07903h		;c541	21 03 79 	! . y 
	set 2,(hl)		;c544	cb d6 	. . 
	ld b,008h		;c546	06 08 	. . 
	xor a			;c548	af 	. 
	ld hl,07f10h		;c549	21 10 7f 	! .  
lc54ch:
	cp (hl)			;c54c	be 	. 
	jr nz,lc557h		;c54d	20 08 	  . 
	inc hl			;c54f	23 	# 
	djnz lc54ch		;c550	10 fa 	. . 
	ld hl,07903h		;c552	21 03 79 	! . y 
	res 2,(hl)		;c555	cb 96 	. . 
lc557h:
	call 0bfe8h		;c557	cd e8 bf 	. . . 
	ld bc,00008h		;c55a	01 08 00 	. . . 
	ld hl,079c8h		;c55d	21 c8 79 	! . y 
	ld de,07f10h		;c560	11 10 7f 	. .  
	ldir		;c563	ed b0 	. . 
	ld hl,079dah		;c565	21 da 79 	! . y 
	set 0,(hl)		;c568	cb c6 	. . 
	call 0be68h		;c56a	cd 68 be 	. h . 
	jr c,lc50bh		;c56d	38 9c 	8 . 
	ld (07f38h),ix		;c56f	dd 22 38 7f 	. " 8  
	jr lc4f7h		;c573	18 82 	. . 
sub_c575h:
	ld b,008h		;c575	06 08 	. . 
	ld hl,07998h		;c577	21 98 79 	! . y 
	xor a			;c57a	af 	. 
lc57bh:
	ld (hl),a			;c57b	77 	w 
	inc hl			;c57c	23 	# 
	djnz lc57bh		;c57d	10 fc 	. . 
	ld hl,07903h		;c57f	21 03 79 	! . y 
	res 2,(hl)		;c582	cb 96 	. . 
	call 0bfe8h		;c584	cd e8 bf 	. . . 
	ret			;c587	c9 	. 
sub_c588h:
	ld ix,07d00h		;c588	dd 21 00 7d 	. ! . } 
lc58ch:
	ld a,(ix+000h)		;c58c	dd 7e 00 	. ~ . 
	cp 01fh		;c58f	fe 1f 	. . 
	jr z,lc59ah		;c591	28 07 	( . 
	cp 00dh		;c593	fe 0d 	. . 
	ret z			;c595	c8 	. 
lc596h:
	inc ix		;c596	dd 23 	. # 
	jr lc58ch		;c598	18 f2 	. . 
lc59ah:
	inc ix		;c59a	dd 23 	. # 
	inc ix		;c59c	dd 23 	. # 
	jr lc596h		;c59e	18 f6 	. . 
lc5a0h:
	call sub_c777h		;c5a0	cd 77 c7 	. w . 
	ret c			;c5a3	d8 	. 
	ld hl,07903h		;c5a4	21 03 79 	! . y 
	bit 3,(hl)		;c5a7	cb 5e 	. ^ 
	ret z			;c5a9	c8 	. 
	call 0bfe5h		;c5aa	cd e5 bf 	. . . 
	ld a,(079dah)		;c5ad	3a da 79 	: . y 
	and 037h		;c5b0	e6 37 	. 7 
	jr nz,lc5b8h		;c5b2	20 04 	  . 
	ld hl,07923h		;c5b4	21 23 79 	! # y 
	dec (hl)			;c5b7	35 	5 
lc5b8h:
	ld bc,000ffh		;c5b8	01 ff 00 	. . . 
	ld hl,07c00h		;c5bb	21 00 7c 	! . | 
	ld de,07c01h		;c5be	11 01 7c 	. . | 
	ld (hl),00dh		;c5c1	36 0d 	6 . 
	ldir		;c5c3	ed b0 	. . 
	call 0be41h		;c5c5	cd 41 be 	. A . 
	ld iy,07cffh		;c5c8	fd 21 ff 7c 	. ! . | 
	ld a,(0796eh)		;c5cc	3a 6e 79 	: n y 
	and 008h		;c5cf	e6 08 	. . 
	jr nz,lc63eh		;c5d1	20 6b 	  k 
	ld a,(0796dh)		;c5d3	3a 6d 79 	: m y 
	inc iy		;c5d6	fd 23 	. # 
	ld (iy+000h),a		;c5d8	fd 77 00 	. w . 
	ld a,001h		;c5db	3e 01 	> . 
lc5ddh:
	ld (079eah),a		;c5dd	32 ea 79 	2 . y 
	ld bc,00008h		;c5e0	01 08 00 	. . . 
	ld hl,07990h		;c5e3	21 90 79 	! . y 
	ld de,07f10h		;c5e6	11 10 7f 	. .  
	ldir		;c5e9	ed b0 	. . 
	call 0bf8bh		;c5eb	cd 8b bf 	. . . 
	ld hl,07f33h		;c5ee	21 33 7f 	! 3  
	ld a,(hl)			;c5f1	7e 	~ 
	and 05eh		;c5f2	e6 5e 	. ^ 
	or 002h		;c5f4	f6 02 	. . 
	ld (hl),a			;c5f6	77 	w 
	ld hl,079dfh		;c5f7	21 df 79 	! . y 
	set 1,(hl)		;c5fa	cb ce 	. . 
	ld a,(079eah)		;c5fc	3a ea 79 	: . y 
	sub 000h		;c5ff	d6 00 	. . 
	ld (079e7h),a		;c601	32 e7 79 	2 . y 
	call 0bf85h		;c604	cd 85 bf 	. . . 
	ld hl,079dfh		;c607	21 df 79 	! . y 
	res 1,(hl)		;c60a	cb 8e 	. . 
	call 0bdf3h		;c60c	cd f3 bd 	. . . 
	ld hl,0796eh		;c60f	21 6e 79 	! n y 
	bit 3,(hl)		;c612	cb 5e 	. ^ 
	jr z,lc61eh		;c614	28 08 	( . 
	ld a,(0796dh)		;c616	3a 6d 79 	: m y 
	inc iy		;c619	fd 23 	. # 
	ld (iy+000h),a		;c61b	fd 77 00 	. w . 
lc61eh:
	inc iy		;c61e	fd 23 	. # 
	ld hl,079dah		;c620	21 da 79 	! . y 
	ld a,(hl)			;c623	7e 	~ 
	and 080h		;c624	e6 80 	. . 
	or 020h		;c626	f6 20 	.   
	ld (hl),a			;c628	77 	w 
	ld hl,079d8h		;c629	21 d8 79 	! . y 
	res 4,(hl)		;c62c	cb a6 	. . 
	ld hl,079dfh		;c62e	21 df 79 	! . y 
	res 0,(hl)		;c631	cb 86 	. . 
	push iy		;c633	fd e5 	. . 
	pop hl			;c635	e1 	. 
	ld a,l			;c636	7d 	} 
	ld (079eah),a		;c637	32 ea 79 	2 . y 
	call 0bdf6h		;c63a	cd f6 bd 	. . . 
	ret			;c63d	c9 	. 
lc63eh:
	ld a,000h		;c63e	3e 00 	> . 
	jr lc5ddh		;c640	18 9b 	. . 
lc642h:
	call sub_c777h		;c642	cd 77 c7 	. w . 
	ret c			;c645	d8 	. 
	ld hl,079dah		;c646	21 da 79 	! . y 
	bit 5,(hl)		;c649	cb 6e 	. n 
	ret z			;c64b	c8 	. 
	ld a,(hl)			;c64c	7e 	~ 
	rra			;c64d	1f 	. 
	jr c,lc676h		;c64e	38 26 	8 & 
	ld ix,07bffh		;c650	dd 21 ff 7b 	. ! . { 
	ld iy,07cffh		;c654	fd 21 ff 7c 	. ! . | 
	call 0d470h		;c658	cd 70 d4 	. p . 
	call 0bdedh		;c65b	cd ed bd 	. . . 
	ld hl,07d00h		;c65e	21 00 7d 	! . } 
	ld d,h			;c661	54 	T 
	ld e,l			;c662	5d 	] 
lc663h:
	ld a,(hl)			;c663	7e 	~ 
	cp 00dh		;c664	fe 0d 	. . 
	jr z,lc68dh		;c666	28 25 	( % 
	cp 020h		;c668	fe 20 	.   
	jr z,lc673h		;c66a	28 07 	( . 
	ld e,l			;c66c	5d 	] 
	inc hl			;c66d	23 	# 
	cp 01fh		;c66e	fe 1f 	. . 
	jr nz,lc663h		;c670	20 f1 	  . 
	inc hl			;c672	23 	# 
lc673h:
	inc hl			;c673	23 	# 
	jr lc663h		;c674	18 ed 	. . 
lc676h:
	ld ix,07d00h		;c676	dd 21 00 7d 	. ! . } 
	jr lc686h		;c67a	18 0a 	. . 
lc67ch:
	ld hl,0796eh		;c67c	21 6e 79 	! n y 
	set 4,(hl)		;c67f	cb e6 	. . 
	jr lc6a9h		;c681	18 26 	. & 
lc683h:
	push hl			;c683	e5 	. 
	pop ix		;c684	dd e1 	. . 
lc686h:
	call 08379h		;c686	cd 79 83 	. y . 
	call 0be08h		;c689	cd 08 be 	. . . 
	ret			;c68c	c9 	. 
lc68dh:
	ld a,(de)			;c68d	1a 	. 
	call sub_c737h		;c68e	cd 37 c7 	. 7 . 
	jr z,lc67ch		;c691	28 e9 	( . 
	ld hl,07cffh		;c693	21 ff 7c 	! . | 
	ld a,020h		;c696	3e 20 	>   
lc698h:
	inc hl			;c698	23 	# 
	cp (hl)			;c699	be 	. 
	jr z,lc698h		;c69a	28 fc 	( . 
	ld a,(hl)			;c69c	7e 	~ 
	ld d,h			;c69d	54 	T 
	ld e,l			;c69e	5d 	] 
	call sub_c737h		;c69f	cd 37 c7 	. 7 . 
	jr nz,lc683h		;c6a2	20 df 	  . 
	ld hl,0796eh		;c6a4	21 6e 79 	! n y 
	res 4,(hl)		;c6a7	cb a6 	. . 
lc6a9h:
	ld (0796ch),a		;c6a9	32 6c 79 	2 l y 
	ld (07f04h),de		;c6ac	ed 53 04 7f 	. S .  
	ld a,020h		;c6b0	3e 20 	>   
	ld (de),a			;c6b2	12 	. 
	ld ix,07cffh		;c6b3	dd 21 ff 7c 	. ! . | 
	call 0bfbbh		;c6b7	cd bb bf 	. . . 
	jr c,lc6e9h		;c6ba	38 2d 	8 - 
	inc ix		;c6bc	dd 23 	. # 
	ld a,(ix+000h)		;c6be	dd 7e 00 	. ~ . 
	cp 00dh		;c6c1	fe 0d 	. . 
	jr nz,lc6ffh		;c6c3	20 3a 	  : 
	ld a,(07f14h)		;c6c5	3a 14 7f 	: .  
	cp 0d0h		;c6c8	fe d0 	. . 
	jr z,lc6ffh		;c6ca	28 33 	( 3 
	ld a,(0796ch)		;c6cc	3a 6c 79 	: l y 
	cp 02fh		;c6cf	fe 2f 	. / 
sub_c6d1h:
	jr nz,lc704h		;c6d1	20 31 	  1 
	ld hl,0796eh		;c6d3	21 6e 79 	! n y 
	bit 4,(hl)		;c6d6	cb 66 	. f 
	jr nz,lc704h		;c6d8	20 2a 	  * 
	ld hl,07f10h		;c6da	21 10 7f 	! .  
	ld b,008h		;c6dd	06 08 	. . 
	xor a			;c6df	af 	. 
lc6e0h:
	cp (hl)			;c6e0	be 	. 
	jr nz,lc704h		;c6e1	20 21 	  ! 
	inc hl			;c6e3	23 	# 
	djnz lc6e0h		;c6e4	10 fa 	. . 
	call 083a8h		;c6e6	cd a8 83 	. . . 
lc6e9h:
	call 0be08h		;c6e9	cd 08 be 	. . . 
	ld ix,(07f04h)		;c6ec	dd 2a 04 7f 	. * .  
	ld a,(0796ch)		;c6f0	3a 6c 79 	: l y 
	ld (ix+000h),a		;c6f3	dd 77 00 	. w . 
	ld hl,0796eh		;c6f6	21 6e 79 	! n y 
	res 4,(hl)		;c6f9	cb a6 	. . 
	call 0be44h		;c6fb	cd 44 be 	. D . 
	ret			;c6fe	c9 	. 
lc6ffh:
	call 08379h		;c6ff	cd 79 83 	. y . 
	jr lc6e9h		;c702	18 e5 	. . 
lc704h:
	call sub_c743h		;c704	cd 43 c7 	. C . 
	ld de,07990h		;c707	11 90 79 	. . y 
	ld hl,07f10h		;c70a	21 10 7f 	! .  
	ld bc,00008h		;c70d	01 08 00 	. . . 
	ldir		;c710	ed b0 	. . 
	ld a,(0796ch)		;c712	3a 6c 79 	: l y 
	ld (0796dh),a		;c715	32 6d 79 	2 m y 
	ld a,(0796eh)		;c718	3a 6e 79 	: n y 
	and 0f7h		;c71b	e6 f7 	. . 
	bit 4,a		;c71d	cb 67 	. g 
	jr z,lc723h		;c71f	28 02 	( . 
	or 008h		;c721	f6 08 	. . 
lc723h:
	and 0efh		;c723	e6 ef 	. . 
	ld (0796eh),a		;c725	32 6e 79 	2 n y 
	ld hl,07903h		;c728	21 03 79 	! . y 
	set 3,(hl)		;c72b	cb de 	. . 
	call 0bfe8h		;c72d	cd e8 bf 	. . . 
	call 0be38h		;c730	cd 38 be 	. 8 . 
	call 0be44h		;c733	cd 44 be 	. D . 
	ret			;c736	c9 	. 
sub_c737h:
	cp 02ah		;c737	fe 2a 	. * 
	ret z			;c739	c8 	. 
	cp 02bh		;c73a	fe 2b 	. + 
	ret z			;c73c	c8 	. 
	cp 02dh		;c73d	fe 2d 	. - 
	ret z			;c73f	c8 	. 
	cp 02fh		;c740	fe 2f 	. / 
	ret			;c742	c9 	. 
sub_c743h:
	ld a,(07f11h)		;c743	3a 11 7f 	: .  
	and 0f7h		;c746	e6 f7 	. . 
	ld hl,07f31h		;c748	21 31 7f 	! 1  
	bit 0,(hl)		;c74b	cb 46 	. F 
	jr z,lc753h		;c74d	28 04 	( . 
	res 0,(hl)		;c74f	cb 86 	. . 
	or 008h		;c751	f6 08 	. . 
lc753h:
	ld (07f11h),a		;c753	32 11 7f 	2 .  
	ret			;c756	c9 	. 
sub_c757h:
	ld a,(0796eh)		;c757	3a 6e 79 	: n y 
	and 0e7h		;c75a	e6 e7 	. . 
	ld (0796eh),a		;c75c	32 6e 79 	2 n y 
	ld b,008h		;c75f	06 08 	. . 
	ld hl,07990h		;c761	21 90 79 	! . y 
	xor a			;c764	af 	. 
lc765h:
	ld (hl),a			;c765	77 	w 
	inc hl			;c766	23 	# 
	djnz lc765h		;c767	10 fc 	. . 
	ld h,a			;c769	67 	g 
	ld l,a			;c76a	6f 	o 
	ld (0796ch),hl		;c76b	22 6c 79 	" l y 
	ld hl,07903h		;c76e	21 03 79 	! . y 
	res 3,(hl)		;c771	cb 9e 	. . 
	call 0bfe8h		;c773	cd e8 bf 	. . . 
	ret			;c776	c9 	. 
sub_c777h:
	ld a,(07f35h)		;c777	3a 35 7f 	: 5  
	ld b,a			;c77a	47 	G 
	and 006h		;c77b	e6 06 	. . 
	jr z,lc78ah		;c77d	28 0b 	( . 
	bit 0,b		;c77f	cb 40 	. @ 
	jr z,lc797h		;c781	28 14 	( . 
	ld hl,079dah		;c783	21 da 79 	! . y 
	bit 4,(hl)		;c786	cb 66 	. f 
	jr nz,lc797h		;c788	20 0d 	  . 
lc78ah:
	ld a,(07965h)		;c78a	3a 65 79 	: e y 
	and 00ah		;c78d	e6 0a 	. . 
	jr nz,lc797h		;c78f	20 06 	  . 
	ld a,(079dah)		;c791	3a da 79 	: . y 
	and 006h		;c794	e6 06 	. . 
	ret z			;c796	c8 	. 
lc797h:
	scf			;c797	37 	7 
	ret			;c798	c9 	. 
lc799h:
	ld hl,07902h		;c799	21 02 79 	! . y 
	bit 5,(hl)		;c79c	cb 6e 	. n 
	jr z,lc7c5h		;c79e	28 25 	( % 
	ld hl,079d9h		;c7a0	21 d9 79 	! . y 
	set 3,(hl)		;c7a3	cb de 	. . 
	bit 4,(hl)		;c7a5	cb 66 	. f 
	jr nz,lc7c9h		;c7a7	20 20 	    
lc7a9h:
	ld a,(ix+001h)		;c7a9	dd 7e 01 	. ~ . 
	cp 00dh		;c7ac	fe 0d 	. . 
	jr z,lc7ceh		;c7ae	28 1e 	( . 
	call 0bf73h		;c7b0	cd 73 bf 	. s . 
	ret c			;c7b3	d8 	. 
	ld (07f38h),ix		;c7b4	dd 22 38 7f 	. " 8  
	inc ix		;c7b8	dd 23 	. # 
	ld a,(ix+000h)		;c7ba	dd 7e 00 	. ~ . 
	cp 00dh		;c7bd	fe 0d 	. . 
	jr z,lc7dah		;c7bf	28 19 	( . 
	call 08379h		;c7c1	cd 79 83 	. y . 
	ret			;c7c4	c9 	. 
lc7c5h:
	call 08369h		;c7c5	cd 69 83 	. i . 
	ret			;c7c8	c9 	. 
lc7c9h:
	call 0bf2bh		;c7c9	cd 2b bf 	. + . 
	and a			;c7cc	a7 	. 
	ret			;c7cd	c9 	. 
lc7ceh:
	call 08029h		;c7ce	cd 29 80 	. ) . 
	ld hl,07f12h		;c7d1	21 12 7f 	! .  
	set 4,(hl)		;c7d4	cb e6 	. . 
	ld (07f38h),ix		;c7d6	dd 22 38 7f 	. " 8  
lc7dah:
	ld ix,(079e1h)		;c7da	dd 2a e1 79 	. * . y 
	inc ix		;c7de	dd 23 	. # 
	ld a,(ix+000h)		;c7e0	dd 7e 00 	. ~ . 
	cp 0ffh		;c7e3	fe ff 	. . 
	jr z,lc801h		;c7e5	28 1a 	( . 
	call 0be6eh		;c7e7	cd 6e be 	. n . 
	jr nc,lc7f7h		;c7ea	30 0b 	0 . 
	ld de,(07f3ch)		;c7ec	ed 5b 3c 7f 	. [ <  
	xor a			;c7f0	af 	. 
	cp d			;c7f1	ba 	. 
	jr nz,lc7f7h		;c7f2	20 03 	  . 
	cp e			;c7f4	bb 	. 
	jr z,lc807h		;c7f5	28 10 	( . 
lc7f7h:
	ld hl,079dah		;c7f7	21 da 79 	! . y 
	res 5,(hl)		;c7fa	cb ae 	. . 
	set 2,(hl)		;c7fc	cb d6 	. . 
	call sub_c80dh		;c7fe	cd 0d c8 	. . . 
lc801h:
	ld ix,07dfeh		;c801	dd 21 fe 7d 	. ! . } 
	and a			;c805	a7 	. 
	ret			;c806	c9 	. 
lc807h:
	ld ix,(07f38h)		;c807	dd 2a 38 7f 	. * 8  
	scf			;c80b	37 	7 
	ret			;c80c	c9 	. 
sub_c80dh:
	ld hl,0796eh		;c80d	21 6e 79 	! n y 
	set 0,(hl)		;c810	cb c6 	. . 
	call sub_c981h		;c812	cd 81 c9 	. . . 
	ld hl,07926h		;c815	21 26 79 	! & y 
	cp (hl)			;c818	be 	. 
	jr nz,lc81ch		;c819	20 01 	  . 
	dec a			;c81b	3d 	= 
lc81ch:
	ld hl,079dah		;c81c	21 da 79 	! . y 
	bit 5,(hl)		;c81f	cb 6e 	. n 
	jr z,lc883h		;c821	28 60 	( ` 
sub_c823h:
	ld (07924h),a		;c823	32 24 79 	2 $ y 
	push iy		;c826	fd e5 	. . 
	pop hl			;c828	e1 	. 
	ld a,l			;c829	7d 	} 
	ld (07925h),a		;c82a	32 25 79 	2 % y 
	ld c,016h		;c82d	0e 16 	. . 
	call sub_c9d4h		;c82f	cd d4 c9 	. . . 
	call sub_c9f4h		;c832	cd f4 c9 	. . . 
	ld hl,000ffh		;c835	21 ff 00 	! . . 
	ld (07926h),hl		;c838	22 26 79 	" & y 
	ld hl,00000h		;c83b	21 00 00 	! . . 
	ld (0792bh),hl		;c83e	22 2b 79 	" + y 
	ld a,(0792ah)		;c841	3a 2a 79 	: * y 
	cp 004h		;c844	fe 04 	. . 
	jr nc,lc87fh		;c846	30 37 	0 7 
	xor a			;c848	af 	. 
lc849h:
	ld hl,07928h		;c849	21 28 79 	! ( y 
	ld (hl),a			;c84c	77 	w 
	ld bc,(07929h)		;c84d	ed 4b 29 79 	. K ) y 
	ld a,b			;c851	78 	x 
	sub (hl)			;c852	96 	. 
	ld d,b			;c853	50 	P 
	ld b,a			;c854	47 	G 
	xor a			;c855	af 	. 
	cp d			;c856	ba 	. 
	jr z,lc85bh		;c857	28 02 	( . 
	inc c			;c859	0c 	. 
	inc c			;c85a	0c 	. 
lc85bh:
	ld (07920h),bc		;c85b	ed 43 20 79 	. C   y 
	cp (hl)			;c85f	be 	. 
	jr z,lc883h		;c860	28 21 	( ! 
	ld de,00000h		;c862	11 00 00 	. . . 
	ld a,020h		;c865	3e 20 	>   
	ld b,002h		;c867	06 02 	. . 
	call 0bfeeh		;c869	cd ee bf 	. . . 
	ld a,(07928h)		;c86c	3a 28 79 	: ( y 
	ld hl,07913h		;c86f	21 13 79 	! . y 
	add a,l			;c872	85 	. 
	ld l,a			;c873	6f 	o 
	ld l,(hl)			;c874	6e 	n 
	ld h,07ch		;c875	26 7c 	& | 
	ld a,(07925h)		;c877	3a 25 79 	: % y 
	ld de,00002h		;c87a	11 02 00 	. . . 
	jr lc88dh		;c87d	18 0e 	. . 
lc87fh:
	sub 003h		;c87f	d6 03 	. . 
	jr lc849h		;c881	18 c6 	. . 
lc883h:
	push iy		;c883	fd e5 	. . 
	pop bc			;c885	c1 	. 
	ld hl,07c00h		;c886	21 00 7c 	! . | 
	ld a,c			;c889	79 	y 
	ld de,00000h		;c88a	11 00 00 	. . . 
lc88dh:
	call sub_c9b9h		;c88d	cd b9 c9 	. . . 
	ld bc,(07922h)		;c890	ed 4b 22 79 	. K " y 
	ld (07f04h),bc		;c894	ed 43 04 7f 	. C .  
lc898h:
	ld a,003h		;c898	3e 03 	> . 
	cp d			;c89a	ba 	. 
	ret z			;c89b	c8 	. 
	ld a,(ix+001h)		;c89c	dd 7e 01 	. ~ . 
	cp 0ffh		;c89f	fe ff 	. . 
	jr z,lc8b7h		;c8a1	28 14 	( . 
	inc d			;c8a3	14 	. 
	ld e,000h		;c8a4	1e 00 	. . 
	push de			;c8a6	d5 	. 
	call sub_c97bh		;c8a7	cd 7b c9 	. { . 
	pop de			;c8aa	d1 	. 
	push iy		;c8ab	fd e5 	. . 
	pop bc			;c8ad	c1 	. 
	ld a,c			;c8ae	79 	y 
	ld hl,07d00h		;c8af	21 00 7d 	! . } 
	call sub_c9b9h		;c8b2	cd b9 c9 	. . . 
	jr lc898h		;c8b5	18 e1 	. . 
lc8b7h:
	ld e,000h		;c8b7	1e 00 	. . 
	inc d			;c8b9	14 	. 
	ld a,004h		;c8ba	3e 04 	> . 
	sub d			;c8bc	92 	. 
	ld b,a			;c8bd	47 	G 
	xor a			;c8be	af 	. 
lc8bfh:
	add a,018h		;c8bf	c6 18 	. . 
	djnz lc8bfh		;c8c1	10 fc 	. . 
	ld b,a			;c8c3	47 	G 
	ld a,020h		;c8c4	3e 20 	>   
	call 0bfeeh		;c8c6	cd ee bf 	. . . 
	ret			;c8c9	c9 	. 
lc8cah:
	ld hl,0796eh		;c8ca	21 6e 79 	! n y 
	set 0,(hl)		;c8cd	cb c6 	. . 
	call sub_c981h		;c8cf	cd 81 c9 	. . . 
	push iy		;c8d2	fd e5 	. . 
	pop bc			;c8d4	c1 	. 
	ld a,c			;c8d5	79 	y 
	ld (07925h),a		;c8d6	32 25 79 	2 % y 
	jr nc,lc8dch		;c8d9	30 01 	0 . 
	dec a			;c8db	3d 	= 
lc8dch:
	ld (07924h),a		;c8dc	32 24 79 	2 $ y 
	ld c,016h		;c8df	0e 16 	. . 
	call sub_c9d4h		;c8e1	cd d4 c9 	. . . 
	call sub_c9f4h		;c8e4	cd f4 c9 	. . . 
	ld a,(0792ah)		;c8e7	3a 2a 79 	: * y 
	cp 003h		;c8ea	fe 03 	. . 
	jr nc,lc929h		;c8ec	30 3b 	0 ; 
	ld hl,0792ch		;c8ee	21 2c 79 	! , y 
	add a,(hl)			;c8f1	86 	. 
	sub 004h		;c8f2	d6 04 	. . 
	jr c,lc903h		;c8f4	38 0d 	8 . 
	inc a			;c8f6	3c 	< 
	ld b,a			;c8f7	47 	G 
lc8f8h:
	push bc			;c8f8	c5 	. 
	call 0bfebh		;c8f9	cd eb bf 	. . . 
	ld hl,0792ch		;c8fc	21 2c 79 	! , y 
	dec (hl)			;c8ff	35 	5 
	pop bc			;c900	c1 	. 
	djnz lc8f8h		;c901	10 f5 	. . 
lc903h:
	ld de,(0792bh)		;c903	ed 5b 2b 79 	. [ + y 
lc907h:
	ld a,(07923h)		;c907	3a 23 79 	: # y 
	ld hl,07c00h		;c90a	21 00 7c 	! . | 
	ld a,(07924h)		;c90d	3a 24 79 	: $ y 
	call sub_c9b9h		;c910	cd b9 c9 	. . . 
lc913h:
	ld hl,07923h		;c913	21 23 79 	! # y 
	ld a,003h		;c916	3e 03 	> . 
	sub (hl)			;c918	96 	. 
	ret z			;c919	c8 	. 
	ld b,a			;c91a	47 	G 
	xor a			;c91b	af 	. 
	ld e,a			;c91c	5f 	_ 
	inc d			;c91d	14 	. 
lc91eh:
	add a,018h		;c91e	c6 18 	. . 
	djnz lc91eh		;c920	10 fc 	. . 
	ld b,a			;c922	47 	G 
	ld a,020h		;c923	3e 20 	>   
	call 0bfeeh		;c925	cd ee bf 	. . . 
	ret			;c928	c9 	. 
lc929h:
	ld de,00000h		;c929	11 00 00 	. . . 
	ld (0792bh),de		;c92c	ed 53 2b 79 	. S + y 
	jr lc907h		;c930	18 d5 	. . 
lc932h:
	ld de,(07922h)		;c932	ed 5b 22 79 	. [ " y 
	jr lc913h		;c936	18 db 	. . 
lc938h:
	ld hl,07bffh		;c938	21 ff 7b 	! . { 
	ld a,(07902h)		;c93b	3a 02 79 	: . y 
	bit 3,a		;c93e	cb 5f 	. _ 
	jr nz,lc96fh		;c940	20 2d 	  - 
	ld a,03ah		;c942	3e 3a 	> : 
lc944h:
	inc hl			;c944	23 	# 
	cp (hl)			;c945	be 	. 
	jr nz,lc944h		;c946	20 fc 	  . 
	ld a,020h		;c948	3e 20 	>   
	ld (hl),a			;c94a	77 	w 
lc94bh:
	ld (079e8h),a		;c94b	32 e8 79 	2 . y 
	ld b,l			;c94e	45 	E 
	ld a,00dh		;c94f	3e 0d 	> . 
lc951h:
	inc hl			;c951	23 	# 
	cp (hl)			;c952	be 	. 
	jr nz,lc951h		;c953	20 fc 	  . 
	push hl			;c955	e5 	. 
	pop iy		;c956	fd e1 	. . 
	ld hl,(07f3ah)		;c958	2a 3a 7f 	* :  
	inc hl			;c95b	23 	# 
	inc hl			;c95c	23 	# 
	ld e,(hl)			;c95d	5e 	^ 
	ld d,000h		;c95e	16 00 	. . 
	add hl,de			;c960	19 	. 
	push hl			;c961	e5 	. 
	pop ix		;c962	dd e1 	. . 
	ld a,b			;c964	78 	x 
	call sub_c823h		;c965	cd 23 c8 	. # . 
	ld hl,(07f04h)		;c968	2a 04 7f 	* .  
	ld (07922h),hl		;c96b	22 22 79 	" " y 
	ret			;c96e	c9 	. 
lc96fh:
	inc hl			;c96f	23 	# 
	ld a,(hl)			;c970	7e 	~ 
	cp 030h		;c971	fe 30 	. 0 
	jr c,lc94bh		;c973	38 d6 	8 . 
	cp 03ah		;c975	fe 3a 	. : 
	jr c,lc96fh		;c977	38 f6 	8 . 
	jr lc94bh		;c979	18 d0 	. . 
sub_c97bh:
	ld iy,07cffh		;c97b	fd 21 ff 7c 	. ! . | 
	jr lc98bh		;c97f	18 0a 	. . 
sub_c981h:
	ld ix,(07f3ah)		;c981	dd 2a 3a 7f 	. * :  
	dec ix		;c985	dd 2b 	. + 
	ld iy,07bffh		;c987	fd 21 ff 7b 	. ! . { 
lc98bh:
	call sub_ca16h		;c98b	cd 16 ca 	. . . 
	ld a,(07902h)		;c98e	3a 02 79 	: . y 
	bit 3,a		;c991	cb 5f 	. _ 
	jr nz,lc99ch		;c993	20 07 	  . 
	ld a,03ah		;c995	3e 3a 	> : 
	inc iy		;c997	fd 23 	. # 
	ld (iy+000h),a		;c999	fd 77 00 	. w . 
lc99ch:
	ld a,(079eah)		;c99c	3a ea 79 	: . y 
	ld b,a			;c99f	47 	G 
	ld c,000h		;c9a0	0e 00 	. . 
	call sub_d6f8h		;c9a2	cd f8 d6 	. . . 
	ld a,c			;c9a5	79 	y 
	push af			;c9a6	f5 	. 
	push iy		;c9a7	fd e5 	. . 
	pop hl			;c9a9	e1 	. 
	ld a,0ffh		;c9aa	3e ff 	> . 
	sub l			;c9ac	95 	. 
	jr z,lc9b7h		;c9ad	28 08 	( . 
	ld c,a			;c9af	4f 	O 
	ld b,000h		;c9b0	06 00 	. . 
	ld d,h			;c9b2	54 	T 
	ld e,l			;c9b3	5d 	] 
	inc de			;c9b4	13 	. 
	ldir		;c9b5	ed b0 	. . 
lc9b7h:
	pop af			;c9b7	f1 	. 
	ret			;c9b8	c9 	. 
sub_c9b9h:
	push ix		;c9b9	dd e5 	. . 
	ld (07f13h),a		;c9bb	32 13 7f 	2 .  
	call 0be6bh		;c9be	cd 6b be 	. k . 
	ld a,017h		;c9c1	3e 17 	> . 
	sub e			;c9c3	93 	. 
	jr z,lc9d1h		;c9c4	28 0b 	( . 
	push hl			;c9c6	e5 	. 
	push de			;c9c7	d5 	. 
	ld b,a			;c9c8	47 	G 
	inc e			;c9c9	1c 	. 
	ld a,020h		;c9ca	3e 20 	>   
	call 0bfeeh		;c9cc	cd ee bf 	. . . 
	pop de			;c9cf	d1 	. 
	pop hl			;c9d0	e1 	. 
lc9d1h:
	pop ix		;c9d1	dd e1 	. . 
	ret			;c9d3	c9 	. 
sub_c9d4h:
	ld hl,07913h		;c9d4	21 13 79 	! . y 
	ld (hl),000h		;c9d7	36 00 	6 . 
	ld b,00ch		;c9d9	06 0c 	. . 
	ld a,(07925h)		;c9db	3a 25 79 	: % y 
	ld d,a			;c9de	57 	W 
	ld a,018h		;c9df	3e 18 	> . 
lc9e1h:
	cp d			;c9e1	ba 	. 
	jr nc,lc9ech		;c9e2	30 08 	0 . 
lc9e4h:
	inc hl			;c9e4	23 	# 
	ld (hl),a			;c9e5	77 	w 
	add a,c			;c9e6	81 	. 
	jr c,lc9eeh		;c9e7	38 05 	8 . 
	djnz lc9e1h		;c9e9	10 f6 	. . 
	ret			;c9eb	c9 	. 
lc9ech:
	jr z,lc9e4h		;c9ec	28 f6 	( . 
lc9eeh:
	inc hl			;c9ee	23 	# 
	ld (hl),0ffh		;c9ef	36 ff 	6 . 
	djnz lc9eeh		;c9f1	10 fb 	. . 
	ret			;c9f3	c9 	. 
sub_c9f4h:
	ld hl,07913h		;c9f4	21 13 79 	! . y 
	ld a,(07924h)		;c9f7	3a 24 79 	: $ y 
lc9fah:
	inc hl			;c9fa	23 	# 
	cp (hl)			;c9fb	be 	. 
	jr z,lca01h		;c9fc	28 03 	( . 
	jr nc,lc9fah		;c9fe	30 fa 	0 . 
	dec hl			;ca00	2b 	+ 
lca01h:
	ld a,l			;ca01	7d 	} 
	sub 013h		;ca02	d6 13 	. . 
	ld (0792ah),a		;ca04	32 2a 79 	2 * y 
	ld a,(07924h)		;ca07	3a 24 79 	: $ y 
	sub (hl)			;ca0a	96 	. 
	ld (07929h),a		;ca0b	32 29 79 	2 ) y 
	ret			;ca0e	c9 	. 
	call 0be41h		;ca0f	cd 41 be 	. A . 
	ld iy,07cffh		;ca12	fd 21 ff 7c 	. ! . | 
sub_ca16h:
	inc ix		;ca16	dd 23 	. # 
	ld d,(ix+000h)		;ca18	dd 56 00 	. V . 
	ld e,(ix+001h)		;ca1b	dd 5e 01 	. ^ . 
	ld (07f0eh),de		;ca1e	ed 53 0e 7f 	. S .  
	inc ix		;ca22	dd 23 	. # 
	inc ix		;ca24	dd 23 	. # 
	call 08062h		;ca26	cd 62 80 	. b . 
	call 08053h		;ca29	cd 53 80 	. S . 
	ld hl,07f1ch		;ca2c	21 1c 7f 	! .  
	set 4,(hl)		;ca2f	cb e6 	. . 
	call 080f0h		;ca31	cd f0 80 	. . . 
	call 083bfh		;ca34	cd bf 83 	. . . 
	ld a,(07f0fh)		;ca37	3a 0f 7f 	: .  
	ld (07f0eh),a		;ca3a	32 0e 7f 	2 .  
	call 083bfh		;ca3d	cd bf 83 	. . . 
	ld b,004h		;ca40	06 04 	. . 
	ld hl,07f12h		;ca42	21 12 7f 	! .  
lca45h:
	ld a,(hl)			;ca45	7e 	~ 
	and 0f0h		;ca46	e6 f0 	. . 
	jr nz,lca62h		;ca48	20 18 	  . 
	dec b			;ca4a	05 	. 
	ld a,(hl)			;ca4b	7e 	~ 
	and 00fh		;ca4c	e6 0f 	. . 
	jr nz,lca69h		;ca4e	20 19 	  . 
	inc hl			;ca50	23 	# 
	djnz lca45h		;ca51	10 f2 	. . 
	ld a,(hl)			;ca53	7e 	~ 
	and 0f0h		;ca54	e6 f0 	. . 
sub_ca56h:
	rrca			;ca56	0f 	. 
	rrca			;ca57	0f 	. 
	rrca			;ca58	0f 	. 
	rrca			;ca59	0f 	. 
	or 030h		;ca5a	f6 30 	. 0 
	inc iy		;ca5c	fd 23 	. # 
	ld (iy+000h),a		;ca5e	fd 77 00 	. w . 
	ret			;ca61	c9 	. 
lca62h:
	call sub_ca56h		;ca62	cd 56 ca 	. V . 
	dec b			;ca65	05 	. 
	ld a,(hl)			;ca66	7e 	~ 
	and 00fh		;ca67	e6 0f 	. . 
lca69h:
	or 030h		;ca69	f6 30 	. 0 
	inc iy		;ca6b	fd 23 	. # 
	ld (iy+000h),a		;ca6d	fd 77 00 	. w . 
	inc hl			;ca70	23 	# 
	ld a,(hl)			;ca71	7e 	~ 
	and 0f0h		;ca72	e6 f0 	. . 
	djnz lca62h		;ca74	10 ec 	. . 
	jr sub_ca56h		;ca76	18 de 	. . 
lca78h:
	ld hl,078e5h		;ca78	21 e5 78 	! . x 
	bit 0,(hl)		;ca7b	cb 46 	. F 
	jr nz,lca8eh		;ca7d	20 0f 	  . 
	ld a,(07f36h)		;ca7f	3a 36 7f 	: 6  
	bit 1,a		;ca82	cb 4f 	. O 
	call nz,sub_e44fh		;ca84	c4 4f e4 	. O . 
	ld hl,079bdh		;ca87	21 bd 79 	! . y 
	bit 2,(hl)		;ca8a	cb 56 	. V 
	jr z,lcae2h		;ca8c	28 54 	( T 
lca8eh:
	ld a,(07f36h)		;ca8e	3a 36 7f 	: 6  
	bit 1,a		;ca91	cb 4f 	. O 
	jr z,lca9bh		;ca93	28 06 	( . 
	call sub_c3bbh		;ca95	cd bb c3 	. . . 
	call sub_ce1dh		;ca98	cd 1d ce 	. . . 
lca9bh:
	ld hl,079d7h		;ca9b	21 d7 79 	! . y 
	set 2,(hl)		;ca9e	cb d6 	. . 
	call sub_ccb5h		;caa0	cd b5 cc 	. . . 
	jr nc,lcaaeh		;caa3	30 09 	0 . 
lcaa5h:
	ld a,(07f36h)		;caa5	3a 36 7f 	: 6  
	bit 1,a		;caa8	cb 4f 	. O 
	call nz,sub_ce26h		;caaa	c4 26 ce 	. & . 
	ret			;caad	c9 	. 
lcaaeh:
	ld hl,(079e7h)		;caae	2a e7 79 	* . y 
	ld h,07dh		;cab1	26 7d 	& } 
	ld (hl),00dh		;cab3	36 0d 	6 . 
	ld hl,078e5h		;cab5	21 e5 78 	! . x 
	bit 0,(hl)		;cab8	cb 46 	. F 
	jp nz,lcb92h		;caba	c2 92 cb 	. . . 
	ld hl,0797dh		;cabd	21 7d 79 	! } y 
	bit 1,(hl)		;cac0	cb 4e 	. N 
	jr z,lcaech		;cac2	28 28 	( ( 
	ld a,(0796bh)		;cac4	3a 6b 79 	: k y 
	and a			;cac7	a7 	. 
	ld hl,07d00h		;cac8	21 00 7d 	! . } 
	jr z,lcafah		;cacb	28 2d 	( - 
	ld b,000h		;cacd	06 00 	. . 
	ld c,a			;cacf	4f 	O 
	ld de,07f10h		;cad0	11 10 7f 	. .  
	ld hl,07938h		;cad3	21 38 79 	! 8 y 
	ldir		;cad6	ed b0 	. . 
	ld b,a			;cad8	47 	G 
	ld a,018h		;cad9	3e 18 	> . 
	sub b			;cadb	90 	. 
	ld b,a			;cadc	47 	G 
	ld hl,07d00h		;cadd	21 00 7d 	! . } 
	jr lcaffh		;cae0	18 1d 	. . 
lcae2h:
	call 0bf2bh		;cae2	cd 2b bf 	. + . 
	and a			;cae5	a7 	. 
	ret			;cae6	c9 	. 
lcae7h:
	call 083b4h		;cae7	cd b4 83 	. . . 
	jr lcaa5h		;caea	18 b9 	. . 
lcaech:
	ld hl,07d00h		;caec	21 00 7d 	! . } 
	ld a,00dh		;caef	3e 0d 	> . 
	cp (hl)			;caf1	be 	. 
	jr nz,lcafah		;caf2	20 06 	  . 
	ld (hl),020h		;caf4	36 20 	6   
	ld de,07d18h		;caf6	11 18 7d 	. . } 
	ld (de),a			;caf9	12 	. 
lcafah:
	ld de,07f10h		;cafa	11 10 7f 	. .  
	ld b,018h		;cafd	06 18 	. . 
lcaffh:
	ld c,00dh		;caff	0e 0d 	. . 
lcb01h:
	ld a,(hl)			;cb01	7e 	~ 
	cp c			;cb02	b9 	. 
	jr z,lcb2ch		;cb03	28 27 	( ' 
	ld (de),a			;cb05	12 	. 
	inc de			;cb06	13 	. 
	inc hl			;cb07	23 	# 
	djnz lcb01h		;cb08	10 f7 	. . 
	push hl			;cb0a	e5 	. 
	call sub_e491h		;cb0b	cd 91 e4 	. . . 
	pop hl			;cb0e	e1 	. 
	jr c,lcae7h		;cb0f	38 d6 	8 . 
	call 0bfb5h		;cb11	cd b5 bf 	. . . 
	jr z,lcafah		;cb14	28 e4 	( . 
	ld hl,07f35h		;cb16	21 35 7f 	! 5  
	set 5,(hl)		;cb19	cb ee 	. . 
	jr lcb5bh		;cb1b	18 3e 	. > 
lcb1dh:
	ld hl,0797dh		;cb1d	21 7d 79 	! } y 
	bit 2,(hl)		;cb20	cb 56 	. V 
	res 2,(hl)		;cb22	cb 96 	. . 
	res 1,(hl)		;cb24	cb 8e 	. . 
	jr z,lcb4ch		;cb26	28 24 	( $ 
	set 1,(hl)		;cb28	cb ce 	. . 
	jr lcb4ch		;cb2a	18 20 	.   
lcb2ch:
	ld a,018h		;cb2c	3e 18 	> . 
	cp b			;cb2e	b8 	. 
	jr z,lcb1dh		;cb2f	28 ec 	( . 
	ex de,hl			;cb31	eb 	. 
	ld e,l			;cb32	5d 	] 
	ld a,020h		;cb33	3e 20 	>   
lcb35h:
	ld (hl),a			;cb35	77 	w 
	inc hl			;cb36	23 	# 
	djnz lcb35h		;cb37	10 fc 	. . 
	ld hl,0797dh		;cb39	21 7d 79 	! } y 
	bit 2,(hl)		;cb3c	cb 56 	. V 
	jr nz,lcb7bh		;cb3e	20 3b 	  ; 
	call sub_e491h		;cb40	cd 91 e4 	. . . 
	jr c,lcae7h		;cb43	38 a2 	8 . 
	ld hl,0797dh		;cb45	21 7d 79 	! } y 
	ld a,(hl)			;cb48	7e 	~ 
	and 0f9h		;cb49	e6 f9 	. . 
	ld (hl),a			;cb4b	77 	w 
lcb4ch:
	xor a			;cb4c	af 	. 
	ld (0796bh),a		;cb4d	32 6b 79 	2 k y 
	ld hl,07938h		;cb50	21 38 79 	! 8 y 
	ld a,020h		;cb53	3e 20 	>   
	ld b,018h		;cb55	06 18 	. . 
lcb57h:
	ld (hl),a			;cb57	77 	w 
	inc hl			;cb58	23 	# 
	djnz lcb57h		;cb59	10 fc 	. . 
lcb5bh:
	ld hl,079d7h		;cb5b	21 d7 79 	! . y 
	ld a,(hl)			;cb5e	7e 	~ 
	and 0cbh		;cb5f	e6 cb 	. . 
	ld (hl),a			;cb61	77 	w 
	ld hl,079dah		;cb62	21 da 79 	! . y 
	res 7,(hl)		;cb65	cb be 	. . 
	call 083b4h		;cb67	cd b4 83 	. . . 
	ld a,(07f36h)		;cb6a	3a 36 7f 	: 6  
	bit 1,a		;cb6d	cb 4f 	. O 
	jr z,lcb77h		;cb6f	28 06 	( . 
	call 0be05h		;cb71	cd 05 be 	. . . 
	call sub_ce26h		;cb74	cd 26 ce 	. & . 
lcb77h:
	call sub_e652h		;cb77	cd 52 e6 	. R . 
	ret			;cb7a	c9 	. 
lcb7bh:
	res 2,(hl)		;cb7b	cb 96 	. . 
	set 1,(hl)		;cb7d	cb ce 	. . 
	ld a,e			;cb7f	7b 	{ 
	sub 010h		;cb80	d6 10 	. . 
	ld (0796bh),a		;cb82	32 6b 79 	2 k y 
	ld bc,00018h		;cb85	01 18 00 	. . . 
	ld de,07938h		;cb88	11 38 79 	. 8 y 
	ld hl,07f10h		;cb8b	21 10 7f 	! .  
	ldir		;cb8e	ed b0 	. . 
	jr lcb5bh		;cb90	18 c9 	. . 
lcb92h:
	ld hl,0797dh		;cb92	21 7d 79 	! } y 
	xor a			;cb95	af 	. 
	bit 2,(hl)		;cb96	cb 56 	. V 
	jr z,lcba3h		;cb98	28 09 	( . 
	ld a,(079e7h)		;cb9a	3a e7 79 	: . y 
lcb9dh:
	sub 018h		;cb9d	d6 18 	. . 
	jr nc,lcb9dh		;cb9f	30 fc 	0 . 
	add a,018h		;cba1	c6 18 	. . 
lcba3h:
	ld (0792dh),a		;cba3	32 2d 79 	2 - y 
	ld a,(079e7h)		;cba6	3a e7 79 	: . y 
	ld b,a			;cba9	47 	G 
	ld hl,07d00h		;cbaa	21 00 7d 	! . } 
	call 0bf25h		;cbad	cd 25 bf 	. % . 
	ret c			;cbb0	d8 	. 
	ld hl,0797dh		;cbb1	21 7d 79 	! } y 
	bit 2,(hl)		;cbb4	cb 56 	. V 
	call z,0bf1fh		;cbb6	cc 1f bf 	. . . 
	jr lcb5bh		;cbb9	18 a0 	. . 
lcbbbh:
	inc ix		;cbbb	dd 23 	. # 
	ld a,(ix+000h)		;cbbd	dd 7e 00 	. ~ . 
	cp 0feh		;cbc0	fe fe 	. . 
	jr nz,lcbedh		;cbc2	20 29 	  ) 
	inc ix		;cbc4	dd 23 	. # 
	ld a,(ix+000h)		;cbc6	dd 7e 00 	. ~ . 
	cp 060h		;cbc9	fe 60 	. ` 
	jr z,lcbe5h		;cbcb	28 18 	( . 
	cp 064h		;cbcd	fe 64 	. d 
	jr nz,lcbebh		;cbcf	20 1a 	  . 
	ld hl,079bdh		;cbd1	21 bd 79 	! . y 
	bit 2,(hl)		;cbd4	cb 56 	. V 
	jr nz,lcbdfh		;cbd6	20 07 	  . 
	ld hl,078e5h		;cbd8	21 e5 78 	! . x 
	bit 0,(hl)		;cbdb	cb 46 	. F 
	jr z,lcbe5h		;cbdd	28 06 	( . 
lcbdfh:
	ld hl,079d7h		;cbdf	21 d7 79 	! . y 
	set 3,(hl)		;cbe2	cb de 	. . 
	ret			;cbe4	c9 	. 
lcbe5h:
	ld hl,079d7h		;cbe5	21 d7 79 	! . y 
	res 3,(hl)		;cbe8	cb 9e 	. . 
	ret			;cbea	c9 	. 
lcbebh:
	dec ix		;cbeb	dd 2b 	. + 
lcbedh:
	call 08379h		;cbed	cd 79 83 	. y . 
	ret			;cbf0	c9 	. 
lcbf1h:
	call sub_f844h		;cbf1	cd 44 f8 	. D . 
	cp 023h		;cbf4	fe 23 	. # 
	jp z,led73h		;cbf6	ca 73 ed 	. s . 
	cp 03dh		;cbf9	fe 3d 	. = 
	jr z,lcbbbh		;cbfb	28 be 	( . 
	dec ix		;cbfd	dd 2b 	. + 
	ld hl,079d7h		;cbff	21 d7 79 	! . y 
	bit 3,(hl)		;cc02	cb 5e 	. ^ 
	jp nz,lca78h		;cc04	c2 78 ca 	. x . 
	ld hl,07f36h		;cc07	21 36 7f 	! 6  
	bit 1,(hl)		;cc0a	cb 4e 	. N 
	jr z,lcc19h		;cc0c	28 0b 	( . 
	call sub_c3bbh		;cc0e	cd bb c3 	. . . 
	ld hl,0797dh		;cc11	21 7d 79 	! } y 
	res 0,(hl)		;cc14	cb 86 	. . 
	call sub_ce1dh		;cc16	cd 1d ce 	. . . 
lcc19h:
	ld a,(0797dh)		;cc19	3a 7d 79 	: } y 
	rra			;cc1c	1f 	. 
	jr c,lcc23h		;cc1d	38 04 	8 . 
	xor a			;cc1f	af 	. 
	ld (07920h),a		;cc20	32 20 79 	2   y 
lcc23h:
	call sub_ccbdh		;cc23	cd bd cc 	. . . 
	jp c,lccabh		;cc26	da ab cc 	. . . 
	ld hl,0797dh		;cc29	21 7d 79 	! } y 
	bit 0,(hl)		;cc2c	cb 46 	. F 
	jr nz,lcc73h		;cc2e	20 43 	  C 
	call 0be4ah		;cc30	cd 4a be 	. J . 
	ld e,000h		;cc33	1e 00 	. . 
lcc35h:
	ld a,(079e7h)		;cc35	3a e7 79 	: . y 
	ld hl,07d00h		;cc38	21 00 7d 	! . } 
	sub l			;cc3b	95 	. 
	jr z,lcc42h		;cc3c	28 04 	( . 
	ld b,a			;cc3e	47 	G 
	call stringout		;cc3f	cd f1 bf 	. . . 
lcc42h:
	ld (07922h),de		;cc42	ed 53 22 79 	. S " y 
	ld hl,0797dh		;cc46	21 7d 79 	! } y 
	bit 2,(hl)		;cc49	cb 56 	. V 
	jr nz,lcc87h		;cc4b	20 3a 	  : 
	res 0,(hl)		;cc4d	cb 86 	. . 
lcc4fh:
	ld (07920h),de		;cc4f	ed 53 20 79 	. S   y 
	call 083b4h		;cc53	cd b4 83 	. . . 
	and a			;cc56	a7 	. 
	ld a,(07f36h)		;cc57	3a 36 7f 	: 6  
	bit 1,a		;cc5a	cb 4f 	. O 
	jr nz,lccb1h		;cc5c	20 53 	  S 
	ld hl,079d8h		;cc5e	21 d8 79 	! . y 
	bit 2,(hl)		;cc61	cb 56 	. V 
	jr z,lcc9ch		;cc63	28 37 	( 7 
	ld hl,07f35h		;cc65	21 35 7f 	! 5  
	set 3,(hl)		;cc68	cb de 	. . 
	ld hl,079dah		;cc6a	21 da 79 	! . y 
	set 0,(hl)		;cc6d	cb c6 	. . 
	call 0be44h		;cc6f	cd 44 be 	. D . 
	ret			;cc72	c9 	. 
lcc73h:
	ld de,(07920h)		;cc73	ed 5b 20 79 	. [   y 
	ld a,d			;cc77	7a 	z 
	cp 004h		;cc78	fe 04 	. . 
	jr c,lcc35h		;cc7a	38 b9 	8 . 
	call 0bfebh		;cc7c	cd eb bf 	. . . 
	ld de,(07920h)		;cc7f	ed 5b 20 79 	. [   y 
	ld d,003h		;cc83	16 03 	. . 
	jr lcc35h		;cc85	18 ae 	. . 
lcc87h:
	set 0,(hl)		;cc87	cb c6 	. . 
	res 2,(hl)		;cc89	cb 96 	. . 
	ld a,(079e7h)		;cc8b	3a e7 79 	: . y 
	and a			;cc8e	a7 	. 
	jr z,lcc4fh		;cc8f	28 be 	( . 
	inc e			;cc91	1c 	. 
	ld a,e			;cc92	7b 	{ 
	cp 018h		;cc93	fe 18 	. . 
	jr c,lcc4fh		;cc95	38 b8 	8 . 
	ld e,000h		;cc97	1e 00 	. . 
	inc d			;cc99	14 	. 
	jr lcc4fh		;cc9a	18 b3 	. . 
lcc9ch:
	and a			;cc9c	a7 	. 
	ld hl,(079e5h)		;cc9d	2a e5 79 	* . y 
	ld de,00000h		;cca0	11 00 00 	. . . 
	sbc hl,de		;cca3	ed 52 	. R 
	ret z			;cca5	c8 	. 
	call sub_f8b7h		;cca6	cd b7 f8 	. . . 
	and a			;cca9	a7 	. 
	ret			;ccaa	c9 	. 
lccabh:
	ld a,(07f36h)		;ccab	3a 36 7f 	: 6  
	bit 1,a		;ccae	cb 4f 	. O 
	ret z			;ccb0	c8 	. 
lccb1h:
	call sub_ce26h		;ccb1	cd 26 ce 	. & . 
	ret			;ccb4	c9 	. 
sub_ccb5h:
	ld hl,0797dh		;ccb5	21 7d 79 	! } y 
	xor a			;ccb8	af 	. 
	bit 1,(hl)		;ccb9	cb 4e 	. N 
	jr lccc3h		;ccbb	18 06 	. . 
sub_ccbdh:
	ld hl,0797dh		;ccbd	21 7d 79 	! } y 
	xor a			;ccc0	af 	. 
	bit 0,(hl)		;ccc1	cb 46 	. F 
lccc3h:
	jr z,lccc7h		;ccc3	28 02 	( . 
	ld a,002h		;ccc5	3e 02 	> . 
lccc7h:
	ld (07f33h),a		;ccc7	32 33 7f 	2 3  
	xor a			;ccca	af 	. 
	ld (079e7h),a		;cccb	32 e7 79 	2 . y 
	ld bc,000ffh		;ccce	01 ff 00 	. . . 
	ld de,07d01h		;ccd1	11 01 7d 	. . } 
	ld hl,07d00h		;ccd4	21 00 7d 	! . } 
	ld (hl),020h		;ccd7	36 20 	6   
	ldir		;ccd9	ed b0 	. . 
lccdbh:
	ld a,(ix+001h)		;ccdb	dd 7e 01 	. ~ . 
	cp 0feh		;ccde	fe fe 	. . 
	jr nz,lcd22h		;cce0	20 40 	  @ 
	ld a,(ix+002h)		;cce2	dd 7e 02 	. ~ . 
	cp 02fh		;cce5	fe 2f 	. / 
	jr nz,lcd22h		;cce7	20 39 	  9 
	inc ix		;cce9	dd 23 	. # 
	inc ix		;cceb	dd 23 	. # 
	inc ix		;cced	dd 23 	. # 
	ld a,(ix+000h)		;ccef	dd 7e 00 	. ~ . 
	cp 03bh		;ccf2	fe 3b 	. ; 
	jp z,lcd73h		;ccf4	ca 73 cd 	. s . 
	dec ix		;ccf7	dd 2b 	. + 
	ld a,(07f33h)		;ccf9	3a 33 7f 	: 3  
	push af			;ccfc	f5 	. 
	call 0bfbbh		;ccfd	cd bb bf 	. . . 
lcd00h:
	pop bc			;cd00	c1 	. 
	ret c			;cd01	d8 	. 
	ld a,(07f14h)		;cd02	3a 14 7f 	: .  
	cp 0d0h		;cd05	fe d0 	. . 
	jr nz,lcd87h		;cd07	20 7e 	  ~ 
	push bc			;cd09	c5 	. 
	call 083b4h		;cd0a	cd b4 83 	. . . 
	call 0bea7h		;cd0d	cd a7 be 	. . . 
	pop bc			;cd10	c1 	. 
	ld a,b			;cd11	78 	x 
	ld (07f33h),a		;cd12	32 33 7f 	2 3  
	call 083b4h		;cd15	cd b4 83 	. . . 
	ret c			;cd18	d8 	. 
	inc ix		;cd19	dd 23 	. # 
	ld a,(ix+000h)		;cd1b	dd 7e 00 	. ~ . 
	cp 03bh		;cd1e	fe 3b 	. ; 
	jr nz,lcd87h		;cd20	20 65 	  e 
lcd22h:
	ld a,(07f33h)		;cd22	3a 33 7f 	: 3  
	ld b,a			;cd25	47 	G 
	ld a,(079e7h)		;cd26	3a e7 79 	: . y 
	ld c,a			;cd29	4f 	O 
	push bc			;cd2a	c5 	. 
	ld a,(ix+001h)		;cd2b	dd 7e 01 	. ~ . 
	cp 00dh		;cd2e	fe 0d 	. . 
	jr z,lcd78h		;cd30	28 46 	( F 
	cp 03ah		;cd32	fe 3a 	. : 
	jr z,lcd78h		;cd34	28 42 	( B 
	call 0bfbbh		;cd36	cd bb bf 	. . . 
lcd39h:
	pop bc			;cd39	c1 	. 
	ld a,c			;cd3a	79 	y 
	ld (079e7h),a		;cd3b	32 e7 79 	2 . y 
	ret c			;cd3e	d8 	. 
	ld a,b			;cd3f	78 	x 
	ld (07f33h),a		;cd40	32 33 7f 	2 3  
	inc ix		;cd43	dd 23 	. # 
	ld a,(ix+000h)		;cd45	dd 7e 00 	. ~ . 
	cp 00dh		;cd48	fe 0d 	. . 
	jr z,lcd50h		;cd4a	28 04 	( . 
	cp 03ah		;cd4c	fe 3a 	. : 
	jr nz,lcd8bh		;cd4e	20 3b 	  ; 
lcd50h:
	call 0be47h		;cd50	cd 47 be 	. G . 
	ld hl,0797dh		;cd53	21 7d 79 	! } y 
	res 2,(hl)		;cd56	cb 96 	. . 
	ld hl,07f33h		;cd58	21 33 7f 	! 3  
	bit 0,(hl)		;cd5b	cb 46 	. F 
	jr nz,lcd6bh		;cd5d	20 0c 	  . 
	ld hl,078e5h		;cd5f	21 e5 78 	! . x 
	bit 0,(hl)		;cd62	cb 46 	. F 
	jr z,lcd6bh		;cd64	28 05 	( . 
	ld hl,07f33h		;cd66	21 33 7f 	! 3  
	ld (hl),002h		;cd69	36 02 	6 . 
lcd6bh:
	call 0be3bh		;cd6b	cd 3b be 	. ; . 
	ret c			;cd6e	d8 	. 
	dec ix		;cd6f	dd 2b 	. + 
	jr lcdb3h		;cd71	18 40 	. @ 
lcd73h:
	call 0bd66h		;cd73	cd 66 bd 	. f . 
	jr lcd22h		;cd76	18 aa 	. . 
lcd78h:
	ld hl,000d0h		;cd78	21 d0 00 	! . . 
	ld (07f14h),hl		;cd7b	22 14 7f 	" .  
	ld hl,0007eh		;cd7e	21 7e 00 	! ~ . 
	ld (07f16h),hl		;cd81	22 16 7f 	" .  
	xor a			;cd84	af 	. 
	jr lcd39h		;cd85	18 b2 	. . 
lcd87h:
	call 08379h		;cd87	cd 79 83 	. y . 
	ret			;cd8a	c9 	. 
lcd8bh:
	cp 03bh		;cd8b	fe 3b 	. ; 
	jr nz,lcdc0h		;cd8d	20 31 	  1 
	ld hl,07f33h		;cd8f	21 33 7f 	! 3  
	ld (hl),002h		;cd92	36 02 	6 . 
	call 0be3bh		;cd94	cd 3b be 	. ; . 
	ret c			;cd97	d8 	. 
lcd98h:
	ld b,(ix+000h)		;cd98	dd 46 00 	. F . 
	call sub_f844h		;cd9b	cd 44 f8 	. D . 
	dec ix		;cd9e	dd 2b 	. + 
	cp 00dh		;cda0	fe 0d 	. . 
	jr z,lcda9h		;cda2	28 05 	( . 
	cp 03ah		;cda4	fe 3a 	. : 
	jp nz,lccdbh		;cda6	c2 db cc 	. . . 
lcda9h:
	ld a,b			;cda9	78 	x 
	cp 03bh		;cdaa	fe 3b 	. ; 
	jr nz,lcd87h		;cdac	20 d9 	  . 
	ld hl,0797dh		;cdae	21 7d 79 	! } y 
	set 2,(hl)		;cdb1	cb d6 	. . 
lcdb3h:
	call 083b4h		;cdb3	cd b4 83 	. . . 
	ld hl,07f08h		;cdb6	21 08 7f 	! .  
	ld (hl),010h		;cdb9	36 10 	6 . 
	ld ix,07cffh		;cdbb	dd 21 ff 7c 	. ! . | 
	ret			;cdbf	c9 	. 
lcdc0h:
	cp 02ch		;cdc0	fe 2c 	. , 
	jr nz,lcd87h		;cdc2	20 c3 	  . 
	ld hl,07f33h		;cdc4	21 33 7f 	! 3  
	bit 1,(hl)		;cdc7	cb 4e 	. N 
	jr nz,lcdd7h		;cdc9	20 0c 	  . 
	ld (hl),001h		;cdcb	36 01 	6 . 
	call 0be3bh		;cdcd	cd 3b be 	. ; . 
	ret c			;cdd0	d8 	. 
	call sub_cde8h		;cdd1	cd e8 cd 	. . . 
	ret c			;cdd4	d8 	. 
	jr lcd98h		;cdd5	18 c1 	. . 
lcdd7h:
	ld (hl),002h		;cdd7	36 02 	6 . 
	call 0be3bh		;cdd9	cd 3b be 	. ; . 
	ret c			;cddc	d8 	. 
	ld hl,07f33h		;cddd	21 33 7f 	! 3  
	ld (hl),001h		;cde0	36 01 	6 . 
	call sub_cde8h		;cde2	cd e8 cd 	. . . 
	ret c			;cde5	d8 	. 
	jr lcd98h		;cde6	18 b0 	. . 
sub_cde8h:
	ld hl,079d7h		;cde8	21 d7 79 	! . y 
	bit 2,(hl)		;cdeb	cb 56 	. V 
	jr nz,lce08h		;cded	20 19 	  . 
	ld a,(07920h)		;cdef	3a 20 79 	:   y 
lcdf2h:
	cp 00ch		;cdf2	fe 0c 	. . 
	jr c,lcdf8h		;cdf4	38 02 	8 . 
	sub 00ch		;cdf6	d6 0c 	. . 
lcdf8h:
	ld b,a			;cdf8	47 	G 
	ld a,00ch		;cdf9	3e 0c 	> . 
	sub b			;cdfb	90 	. 
	ld hl,079e7h		;cdfc	21 e7 79 	! . y 
	ld b,(hl)			;cdff	46 	F 
lce00h:
	cp b			;ce00	b8 	. 
	jr nc,lce19h		;ce01	30 16 	0 . 
	add a,00ch		;ce03	c6 0c 	. . 
	jr nc,lce00h		;ce05	30 f9 	0 . 
	ret			;ce07	c9 	. 
lce08h:
	ld hl,078e5h		;ce08	21 e5 78 	! . x 
	bit 0,(hl)		;ce0b	cb 46 	. F 
	jr nz,lce14h		;ce0d	20 05 	  . 
	ld a,(0796bh)		;ce0f	3a 6b 79 	: k y 
	jr lcdf2h		;ce12	18 de 	. . 
lce14h:
	ld a,(0792dh)		;ce14	3a 2d 79 	: - y 
	jr lcdf2h		;ce17	18 d9 	. . 
lce19h:
	ld (079e7h),a		;ce19	32 e7 79 	2 . y 
	ret			;ce1c	c9 	. 
sub_ce1dh:
	ld hl,07d00h		;ce1d	21 00 7d 	! . } 
	ld de,07c00h		;ce20	11 00 7c 	. . | 
	ld a,d			;ce23	7a 	z 
	jr lce2eh		;ce24	18 08 	. . 
sub_ce26h:
	ld hl,07c00h		;ce26	21 00 7c 	! . | 
	ld de,07d00h		;ce29	11 00 7d 	. . } 
	ld a,07dh		;ce2c	3e 7d 	> } 
lce2eh:
	ld bc,000ffh		;ce2e	01 ff 00 	. . . 
	ldir		;ce31	ed b0 	. . 
	push ix		;ce33	dd e5 	. . 
	pop hl			;ce35	e1 	. 
	ld h,a			;ce36	67 	g 
	push hl			;ce37	e5 	. 
	pop ix		;ce38	dd e1 	. . 
	ret			;ce3a	c9 	. 
lce3bh:
	call sub_f844h		;ce3b	cd 44 f8 	. D . 
	cp 023h		;ce3e	fe 23 	. # 
	jp z,lf100h		;ce40	ca 00 f1 	. . . 
	ld hl,07f36h		;ce43	21 36 7f 	! 6  
	bit 1,(hl)		;ce46	cb 4e 	. N 
	jr nz,lce80h		;ce48	20 36 	  6 
	ld hl,07c00h		;ce4a	21 00 7c 	! . | 
	ld de,07c01h		;ce4d	11 01 7c 	. . | 
	ld (hl),00dh		;ce50	36 0d 	6 . 
	ld bc,000ffh		;ce52	01 ff 00 	. . . 
	ldir		;ce55	ed b0 	. . 
	cp 022h		;ce57	fe 22 	. " 
	dec ix		;ce59	dd 2b 	. + 
	jr nz,lce96h		;ce5b	20 39 	  9 
	inc ix		;ce5d	dd 23 	. # 
	inc ix		;ce5f	dd 23 	. # 
	ld a,(ix+000h)		;ce61	dd 7e 00 	. ~ . 
	cp 022h		;ce64	fe 22 	. " 
	jr z,lce8bh		;ce66	28 23 	( # 
	ld iy,07bffh		;ce68	fd 21 ff 7b 	. ! . { 
	dec ix		;ce6c	dd 2b 	. + 
lce6eh:
	inc ix		;ce6e	dd 23 	. # 
	ld a,(ix+000h)		;ce70	dd 7e 00 	. ~ . 
	cp 022h		;ce73	fe 22 	. " 
	jr z,lceb9h		;ce75	28 42 	( B 
	inc iy		;ce77	fd 23 	. # 
	ld (iy+000h),a		;ce79	fd 77 00 	. w . 
	cp 00dh		;ce7c	fe 0d 	. . 
	jr nz,lce6eh		;ce7e	20 ee 	  . 
lce80h:
	ld hl,07f35h		;ce80	21 35 7f 	! 5  
	ld a,(hl)			;ce83	7e 	~ 
	and 0f9h		;ce84	e6 f9 	. . 
	ld (hl),a			;ce86	77 	w 
	call 08379h		;ce87	cd 79 83 	. y . 
	ret			;ce8a	c9 	. 
lce8bh:
	call sub_f844h		;ce8b	cd 44 f8 	. D . 
	cp 02ch		;ce8e	fe 2c 	. , 
	jr z,lce96h		;ce90	28 04 	( . 
	cp 03bh		;ce92	fe 3b 	. ; 
	jr nz,lce80h		;ce94	20 ea 	  . 
lce96h:
	ld iy,07c00h		;ce96	fd 21 00 7c 	. ! . | 
	ld (iy+000h),03fh		;ce9a	fd 36 00 3f 	. 6 . ? 
	inc iy		;ce9e	fd 23 	. # 
	ld (iy+000h),00dh		;cea0	fd 36 00 0d 	. 6 . . 
	jr lceaah		;cea4	18 04 	. . 
lcea6h:
	cp 02ch		;cea6	fe 2c 	. , 
	jr nz,lce80h		;cea8	20 d6 	  . 
lceaah:
	ld hl,079dah		;ceaa	21 da 79 	! . y 
	res 5,(hl)		;cead	cb ae 	. . 
	ld a,000h		;ceaf	3e 00 	> . 
	ld (079f1h),a		;ceb1	32 f1 79 	2 . y 
	ld (07927h),a		;ceb4	32 27 79 	2 ' y 
	jr lced5h		;ceb7	18 1c 	. . 
lceb9h:
	inc iy		;ceb9	fd 23 	. # 
	ld (iy+000h),00dh		;cebb	fd 36 00 0d 	. 6 . . 
	call sub_f844h		;cebf	cd 44 f8 	. D . 
	cp 03bh		;cec2	fe 3b 	. ; 
	jr nz,lcea6h		;cec4	20 e0 	  . 
	push iy		;cec6	fd e5 	. . 
	pop hl			;cec8	e1 	. 
	ld a,l			;cec9	7d 	} 
	ld (079f1h),a		;ceca	32 f1 79 	2 . y 
	ld (07927h),a		;cecd	32 27 79 	2 ' y 
	ld hl,079dah		;ced0	21 da 79 	! . y 
	set 5,(hl)		;ced3	cb ee 	. . 
lced5h:
	push iy		;ced5	fd e5 	. . 
	pop hl			;ced7	e1 	. 
	ld a,l			;ced8	7d 	} 
	ld (07f02h),a		;ced9	32 02 7f 	2 .  
	ld hl,07f33h		;cedc	21 33 7f 	! 3  
	ld a,(hl)			;cedf	7e 	~ 
	and 09fh		;cee0	e6 9f 	. . 
	or 002h		;cee2	f6 02 	. . 
	ld (hl),a			;cee4	77 	w 
	call 0bea1h		;cee5	cd a1 be 	. . . 
	ret c			;cee8	d8 	. 
	ld (079eeh),iy		;cee9	fd 22 ee 79 	. " . y 
	ld a,(07f33h)		;ceed	3a 33 7f 	: 3  
	bit 2,a		;cef0	cb 57 	. W 
	jr z,lcf22h		;cef2	28 2e 	( . 
	and 090h		;cef4	e6 90 	. . 
	ld a,(07f08h)		;cef6	3a 08 7f 	: .  
	jr z,lcefch		;cef9	28 01 	( . 
	xor a			;cefb	af 	. 
lcefch:
	ld (079f0h),a		;cefc	32 f0 79 	2 . y 
	ld hl,07f35h		;ceff	21 35 7f 	! 5  
	set 2,(hl)		;cf02	cb d6 	. . 
lcf04h:
	call 083b4h		;cf04	cd b4 83 	. . . 
	ld hl,07965h		;cf07	21 65 79 	! e y 
	res 2,(hl)		;cf0a	cb 96 	. . 
	ld hl,0797dh		;cf0c	21 7d 79 	! } y 
	bit 0,(hl)		;cf0f	cb 46 	. F 
	jr nz,lcf29h		;cf11	20 16 	  . 
	call 0be4ah		;cf13	cd 4a be 	. J . 
	ld e,000h		;cf16	1e 00 	. . 
	ld (07920h),de		;cf18	ed 53 20 79 	. S   y 
	ld (0792bh),de		;cf1c	ed 53 2b 79 	. S + y 
	jr lcf40h		;cf20	18 1e 	. . 
lcf22h:
	ld hl,07f35h		;cf22	21 35 7f 	! 5  
	set 1,(hl)		;cf25	cb ce 	. . 
	jr lcf04h		;cf27	18 db 	. . 
lcf29h:
	res 0,(hl)		;cf29	cb 86 	. . 
	ld a,(07921h)		;cf2b	3a 21 79 	: ! y 
	cp 004h		;cf2e	fe 04 	. . 
	jr c,lcf3ah		;cf30	38 08 	8 . 
	ld a,003h		;cf32	3e 03 	> . 
	ld (07921h),a		;cf34	32 21 79 	2 ! y 
	call 0bfebh		;cf37	cd eb bf 	. . . 
lcf3ah:
	ld hl,(07920h)		;cf3a	2a 20 79 	*   y 
	ld (0792bh),hl		;cf3d	22 2b 79 	" + y 
lcf40h:
	ld hl,079dah		;cf40	21 da 79 	! . y 
	bit 5,(hl)		;cf43	cb 6e 	. n 
	jr z,lcf5eh		;cf45	28 17 	( . 
	ld a,(07f02h)		;cf47	3a 02 7f 	: .  
	ld (07925h),a		;cf4a	32 25 79 	2 % y 
	ld hl,(07920h)		;cf4d	2a 20 79 	*   y 
	ld (07922h),hl		;cf50	22 22 79 	" " y 
	call sub_cfa3h		;cf53	cd a3 cf 	. . . 
	call 0bfdch		;cf56	cd dc bf 	. . . 
lcf59h:
	call 083b4h		;cf59	cd b4 83 	. . . 
	and a			;cf5c	a7 	. 
	ret			;cf5d	c9 	. 
lcf5eh:
	ld a,(07f02h)		;cf5e	3a 02 7f 	: .  
	ld b,a			;cf61	47 	G 
	dec a			;cf62	3d 	= 
	ld (07925h),a		;cf63	32 25 79 	2 % y 
	ld de,(07920h)		;cf66	ed 5b 20 79 	. [   y 
	ld hl,07c00h		;cf6a	21 00 7c 	! . | 
	call stringout		;cf6d	cd f1 bf 	. . . 
	ld a,c			;cf70	79 	y 
	cp 000h		;cf71	fe 00 	. . 
	jr z,lcf85h		;cf73	28 10 	( . 
	ld hl,(07920h)		;cf75	2a 20 79 	*   y 
	ld a,h			;cf78	7c 	| 
	sub c			;cf79	91 	. 
	jr nc,lcf7eh		;cf7a	30 02 	0 . 
	xor a			;cf7c	af 	. 
	ld l,a			;cf7d	6f 	o 
lcf7eh:
	ld h,a			;cf7e	67 	g 
	ld (07920h),hl		;cf7f	22 20 79 	"   y 
	ld (0792bh),hl		;cf82	22 2b 79 	" + y 
lcf85h:
	ld (07922h),de		;cf85	ed 53 22 79 	. S " y 
	jr lcf59h		;cf89	18 ce 	. . 
lcf8bh:
	ld e,b			;cf8b	58 	X 
	ld d,000h		;cf8c	16 00 	. . 
	sla e		;cf8e	cb 23 	. # 
	rl d		;cf90	cb 12 	. . 
	ld hl,lcfe5h		;cf92	21 e5 cf 	! . . 
	add hl,de			;cf95	19 	. 
	ld e,(hl)			;cf96	5e 	^ 
	inc hl			;cf97	23 	# 
	ld d,(hl)			;cf98	56 	V 
	xor a			;cf99	af 	. 
	cp d			;cf9a	ba 	. 
	jr nz,lcf9fh		;cf9b	20 02 	  . 
	cp e			;cf9d	bb 	. 
	ret z			;cf9e	c8 	. 
lcf9fh:
	ld a,(de)			;cf9f	1a 	. 
	ld b,a			;cfa0	47 	G 
	inc de			;cfa1	13 	. 
	ret			;cfa2	c9 	. 
sub_cfa3h:
	ld hl,07913h		;cfa3	21 13 79 	! . y 
	ld (hl),000h		;cfa6	36 00 	6 . 
	ld a,01fh		;cfa8	3e 1f 	> . 
lcfaah:
	inc hl			;cfaa	23 	# 
	ld (hl),0ffh		;cfab	36 ff 	6 . 
	cp l			;cfad	bd 	. 
	jr nz,lcfaah		;cfae	20 fa 	  . 
	ret			;cfb0	c9 	. 
lcfb1h:
	push hl			;cfb1	e5 	. 
	pop de			;cfb2	d1 	. 
	rla			;cfb3	17 	. 
	jp nc,ld21eh		;cfb4	d2 1e d2 	. . . 
	ld h,c			;cfb7	61 	a 
	jp nc,ld287h		;cfb8	d2 87 d2 	. . . 
	sub d			;cfbb	92 	. 
	jp nc,ld2aah		;cfbc	d2 aa d2 	. . . 
	cp (hl)			;cfbf	be 	. 
	jp nc,ld2ceh		;cfc0	d2 ce d2 	. . . 
	nop			;cfc3	00 	. 
	nop			;cfc4	00 	. 
	call pe,0f3d2h		;cfc5	ec d2 f3 	. . . 
	jp nc,ld339h		;cfc8	d2 39 d3 	. 9 . 
	ld c,d			;cfcb	4a 	J 
	out (06bh),a		;cfcc	d3 6b 	. k 
	out (087h),a		;cfce	d3 87 	. . 
	out (000h),a		;cfd0	d3 00 	. . 
	nop			;cfd2	00 	. 
	xor d			;cfd3	aa 	. 
	out (00ch),a		;cfd4	d3 0c 	. . 
	call nc,sub_d439h		;cfd6	d4 39 d4 	. 9 . 
	ld e,e			;cfd9	5b 	[ 
	call nc,sub_d463h		;cfda	d4 63 d4 	. c . 
	ld l,c			;cfdd	69 	i 
	call nc,00000h		;cfde	d4 00 00 	. . . 
	nop			;cfe1	00 	. 
	nop			;cfe2	00 	. 
	nop			;cfe3	00 	. 
	nop			;cfe4	00 	. 
lcfe5h:
	nop			;cfe5	00 	. 
	nop			;cfe6	00 	. 
	nop			;cfe7	00 	. 
	nop			;cfe8	00 	. 
	nop			;cfe9	00 	. 
	nop			;cfea	00 	. 
	nop			;cfeb	00 	. 
	nop			;cfec	00 	. 
	nop			;cfed	00 	. 
	nop			;cfee	00 	. 
	nop			;cfef	00 	. 
	nop			;cff0	00 	. 
	nop			;cff1	00 	. 
	nop			;cff2	00 	. 
	nop			;cff3	00 	. 
	nop			;cff4	00 	. 
	nop			;cff5	00 	. 
	nop			;cff6	00 	. 
	nop			;cff7	00 	. 
	nop			;cff8	00 	. 
	nop			;cff9	00 	. 
	nop			;cffa	00 	. 
	nop			;cffb	00 	. 
	nop			;cffc	00 	. 
	nop			;cffd	00 	. 
	nop			;cffe	00 	. 
	nop			;cfff	00 	. 
	nop			;d000	00 	. 
	nop			;d001	00 	. 
	nop			;d002	00 	. 
	ld b,h			;d003	44 	D 
	out (0aah),a		;d004	d3 aa 	. . 
	out (050h),a		;d006	d3 50 	. P 
	out (01eh),a		;d008	d3 1e 	. . 
	jp nc,ld38eh		;d00a	d2 8e d3 	. . . 
	di			;d00d	f3 	. 
	jp nc,ld2f9h		;d00e	d2 f9 d2 	. . . 
	dec hl			;d011	2b 	+ 
	jp nc,ld3f5h		;d012	d2 f5 d3 	. . . 
	ex af,af'			;d015	08 	. 
	out (000h),a		;d016	d3 00 	. . 
	nop			;d018	00 	. 
	nop			;d019	00 	. 
	nop			;d01a	00 	. 
	ld a,(hl)			;d01b	7e 	~ 
	jp nc,ld2a2h		;d01c	d2 a2 d2 	. . . 
	nop			;d01f	00 	. 
	nop			;d020	00 	. 
	nop			;d021	00 	. 
	nop			;d022	00 	. 
	nop			;d023	00 	. 
	nop			;d024	00 	. 
	ld (06fd2h),a		;d025	32 d2 6f 	2 . o 
	out (04eh),a		;d028	d3 4e 	. N 
	jp nc,ld42dh		;d02a	d2 2d d4 	. - . 
	nop			;d02d	00 	. 
	nop			;d02e	00 	. 
	set 2,e		;d02f	cb d3 	. . 
	ld h,(hl)			;d031	66 	f 
	jp nc,ld3deh		;d032	d2 de d3 	. . . 
	or a			;d035	b7 	. 
	jp nc,ld217h		;d036	d2 17 d2 	. . . 
	ld l,c			;d039	69 	i 
	call nc,ld2aah		;d03a	d4 aa d2 	. . . 
	ld b,h			;d03d	44 	D 
	call nc,sub_d44ah		;d03e	d4 4a d4 	. J . 
	inc h			;d041	24 	$ 
	jp nc,ld45bh		;d042	d2 5b d4 	. [ . 
	ld h,c			;d045	61 	a 
	jp nc,ld255h		;d046	d2 55 d2 	. U . 
	and e			;d049	a3 	. 
	out (000h),a		;d04a	d3 00 	. . 
	nop			;d04c	00 	. 
	nop			;d04d	00 	. 
	nop			;d04e	00 	. 
	nop			;d04f	00 	. 
	nop			;d050	00 	. 
	nop			;d051	00 	. 
	nop			;d052	00 	. 
	nop			;d053	00 	. 
	nop			;d054	00 	. 
	nop			;d055	00 	. 
	nop			;d056	00 	. 
	nop			;d057	00 	. 
	nop			;d058	00 	. 
	nop			;d059	00 	. 
	nop			;d05a	00 	. 
	jr z,$-43		;d05b	28 d3 	( . 
	call pe,000d2h		;d05d	ec d2 00 	. . . 
	nop			;d060	00 	. 
	ld h,h			;d061	64 	d 
	out (000h),a		;d062	d3 00 	. . 
	nop			;d064	00 	. 
	nop			;d065	00 	. 
	nop			;d066	00 	. 
	nop			;d067	00 	. 
	nop			;d068	00 	. 
	nop			;d069	00 	. 
	nop			;d06a	00 	. 
	nop			;d06b	00 	. 
	nop			;d06c	00 	. 
	nop			;d06d	00 	. 
	nop			;d06e	00 	. 
	add a,c			;d06f	81 	. 
	out (000h),a		;d070	d3 00 	. . 
	nop			;d072	00 	. 
	nop			;d073	00 	. 
	nop			;d074	00 	. 
	nop			;d075	00 	. 
	nop			;d076	00 	. 
	nop			;d077	00 	. 
	nop			;d078	00 	. 
	nop			;d079	00 	. 
	nop			;d07a	00 	. 
	nop			;d07b	00 	. 
	nop			;d07c	00 	. 
	nop			;d07d	00 	. 
	nop			;d07e	00 	. 
	nop			;d07f	00 	. 
	nop			;d080	00 	. 
	nop			;d081	00 	. 
	nop			;d082	00 	. 
	nop			;d083	00 	. 
	nop			;d084	00 	. 
	ld e,e			;d085	5b 	[ 
	jp nc,ld330h		;d086	d2 30 d3 	. 0 . 
	ld d,c			;d089	51 	Q 
	call nc,sub_d427h		;d08a	d4 27 d4 	. ' . 
	add hl,sp			;d08d	39 	9 
	call nc,sub_d36bh		;d08e	d4 6b d3 	. k . 
	push de			;d091	d5 	. 
	jp nc,ld292h		;d092	d2 92 d2 	. . . 
	rla			;d095	17 	. 
	out (0e6h),a		;d096	d3 e6 	. . 
	out (087h),a		;d098	d3 87 	. . 
	jp nc,ld34ah		;d09a	d2 4a d3 	. J . 
	inc c			;d09d	0c 	. 
	call nc,sub_d3b7h		;d09e	d4 b7 d3 	. . . 
	ld (hl),e			;d0a1	73 	s 
	jp nc,00000h		;d0a2	d2 00 00 	. . . 
	add a,a			;d0a5	87 	. 
	out (0ceh),a		;d0a6	d3 ce 	. . 
	jp nc,ld2b0h		;d0a8	d2 b0 d2 	. . . 
	nop			;d0ab	00 	. 
	nop			;d0ac	00 	. 
	nop			;d0ad	00 	. 
	out (0afh),a		;d0ae	d3 af 	. . 
	out (0bdh),a		;d0b0	d3 bd 	. . 
	out (000h),a		;d0b2	d3 00 	. . 
	nop			;d0b4	00 	. 
	nop			;d0b5	00 	. 
	nop			;d0b6	00 	. 
	nop			;d0b7	00 	. 
	nop			;d0b8	00 	. 
	nop			;d0b9	00 	. 
	nop			;d0ba	00 	. 
	nop			;d0bb	00 	. 
	nop			;d0bc	00 	. 
	nop			;d0bd	00 	. 
	nop			;d0be	00 	. 
	nop			;d0bf	00 	. 
	nop			;d0c0	00 	. 
	nop			;d0c1	00 	. 
	nop			;d0c2	00 	. 
	nop			;d0c3	00 	. 
	nop			;d0c4	00 	. 
	nop			;d0c5	00 	. 
	nop			;d0c6	00 	. 
	ld a,c			;d0c7	79 	y 
	out (000h),a		;d0c8	d3 00 	. . 
	nop			;d0ca	00 	. 
	ld (de),a			;d0cb	12 	. 
	jp nc,00000h		;d0cc	d2 00 00 	. . . 
	nop			;d0cf	00 	. 
	nop			;d0d0	00 	. 
	nop			;d0d1	00 	. 
	nop			;d0d2	00 	. 
	nop			;d0d3	00 	. 
	nop			;d0d4	00 	. 
	nop			;d0d5	00 	. 
	nop			;d0d6	00 	. 
	nop			;d0d7	00 	. 
	nop			;d0d8	00 	. 
	nop			;d0d9	00 	. 
	nop			;d0da	00 	. 
	nop			;d0db	00 	. 
	nop			;d0dc	00 	. 
	nop			;d0dd	00 	. 
	nop			;d0de	00 	. 
	nop			;d0df	00 	. 
	nop			;d0e0	00 	. 
	nop			;d0e1	00 	. 
	nop			;d0e2	00 	. 
	nop			;d0e3	00 	. 
	nop			;d0e4	00 	. 
	add hl,sp			;d0e5	39 	9 
	out (0ebh),a		;d0e6	d3 eb 	. . 
	out (098h),a		;d0e8	d3 98 	. . 
	out (006h),a		;d0ea	d3 06 	. . 
	call nc,00000h		;d0ec	d4 00 00 	. . . 
	nop			;d0ef	00 	. 
	nop			;d0f0	00 	. 
	ld d,l			;d0f1	55 	U 
	call nc,sub_d3f0h		;d0f2	d4 f0 d3 	. . . 
	inc sp			;d0f5	33 	3 
	call nc,sub_d243h		;d0f6	d4 43 d2 	. C . 
	cp (hl)			;d0f9	be 	. 
	jp nc,ld2c3h		;d0fa	d2 c3 d2 	. . . 
	ret z			;d0fd	c8 	. 
	jp nc,ld203h		;d0fe	d2 03 d2 	. . . 
	ex af,af'			;d101	08 	. 
	jp nc,ld20dh		;d102	d2 0d d2 	. . . 
	sbc a,h			;d105	9c 	. 
	jp nc,ld313h		;d106	d2 13 d3 	. . . 
	ld c,0d3h		;d109	0e d3 	. . 
	adc a,h			;d10b	8c 	. 
	jp nc,ld412h		;d10c	d2 12 d4 	. . . 
	rla			;d10f	17 	. 
	call nc,sub_d239h		;d110	d4 39 d2 	. 9 . 
	ccf			;d113	3f 	? 
	call nc,sub_d2d9h		;d114	d4 d9 d2 	. . . 
	push hl			;d117	e5 	. 
	pop de			;d118	d1 	. 
	inc e			;d119	1c 	. 
	call nc,sub_d26eh		;d11a	d4 6e d2 	. n . 
	ld a,c			;d11d	79 	y 
	jp nc,ld1f9h		;d11e	d2 f9 d1 	. . . 
	cp 0d1h		;d121	fe d1 	. . 
	call p,sub_c6d1h		;d123	f4 d1 c6 	. . . 
	out (0eah),a		;d126	d3 ea 	. . 
	pop de			;d128	d1 	. 
	ld (hl),l			;d129	75 	u 
	out (055h),a		;d12a	d3 55 	. U 
	out (09dh),a		;d12c	d3 9d 	. . 
	out (000h),a		;d12e	d3 00 	. . 
	nop			;d130	00 	. 
	and 0d2h		;d131	e6 d2 	. . 
	nop			;d133	00 	. 
	nop			;d134	00 	. 
	nop			;d135	00 	. 
	nop			;d136	00 	. 
	nop			;d137	00 	. 
	nop			;d138	00 	. 
	nop			;d139	00 	. 
	nop			;d13a	00 	. 
	nop			;d13b	00 	. 
	nop			;d13c	00 	. 
	nop			;d13d	00 	. 
	nop			;d13e	00 	. 
	nop			;d13f	00 	. 
	nop			;d140	00 	. 
	sub h			;d141	94 	. 
	out (097h),a		;d142	d3 97 	. . 
	jp nc,00000h		;d144	d2 00 00 	. . . 
	nop			;d147	00 	. 
	nop			;d148	00 	. 
	nop			;d149	00 	. 
	nop			;d14a	00 	. 
	nop			;d14b	00 	. 
	nop			;d14c	00 	. 
	nop			;d14d	00 	. 
	nop			;d14e	00 	. 
	nop			;d14f	00 	. 
	nop			;d150	00 	. 
	ld e,d			;d151	5a 	Z 
	out (05fh),a		;d152	d3 5f 	. _ 
	out (000h),a		;d154	d3 00 	. . 
	nop			;d156	00 	. 
	nop			;d157	00 	. 
	nop			;d158	00 	. 
	nop			;d159	00 	. 
	nop			;d15a	00 	. 
	nop			;d15b	00 	. 
	nop			;d15c	00 	. 
	nop			;d15d	00 	. 
	nop			;d15e	00 	. 
	nop			;d15f	00 	. 
	nop			;d160	00 	. 
	nop			;d161	00 	. 
	nop			;d162	00 	. 
	ld a,0d2h		;d163	3e d2 	> . 
	nop			;d165	00 	. 
	nop			;d166	00 	. 
	nop			;d167	00 	. 
	nop			;d168	00 	. 
	nop			;d169	00 	. 
	nop			;d16a	00 	. 
	nop			;d16b	00 	. 
	nop			;d16c	00 	. 
	nop			;d16d	00 	. 
	nop			;d16e	00 	. 
	nop			;d16f	00 	. 
	nop			;d170	00 	. 
	nop			;d171	00 	. 
	nop			;d172	00 	. 
	nop			;d173	00 	. 
	nop			;d174	00 	. 
	nop			;d175	00 	. 
	nop			;d176	00 	. 
	nop			;d177	00 	. 
	nop			;d178	00 	. 
	nop			;d179	00 	. 
	nop			;d17a	00 	. 
	nop			;d17b	00 	. 
	nop			;d17c	00 	. 
	nop			;d17d	00 	. 
	nop			;d17e	00 	. 
	nop			;d17f	00 	. 
	nop			;d180	00 	. 
	nop			;d181	00 	. 
	nop			;d182	00 	. 
	nop			;d183	00 	. 
	nop			;d184	00 	. 
	rst 28h			;d185	ef 	. 
	pop de			;d186	d1 	. 
	ld h,e			;d187	63 	c 
	call nc,sub_d31ch		;d188	d4 1c d3 	. . . 
	nop			;d18b	00 	. 
	nop			;d18c	00 	. 
	nop			;d18d	00 	. 
	nop			;d18e	00 	. 
	nop			;d18f	00 	. 
	nop			;d190	00 	. 
	nop			;d191	00 	. 
	nop			;d192	00 	. 
	nop			;d193	00 	. 
	nop			;d194	00 	. 
	nop			;d195	00 	. 
	nop			;d196	00 	. 
	nop			;d197	00 	. 
	nop			;d198	00 	. 
	nop			;d199	00 	. 
	nop			;d19a	00 	. 
	nop			;d19b	00 	. 
	nop			;d19c	00 	. 
	nop			;d19d	00 	. 
	nop			;d19e	00 	. 
	nop			;d19f	00 	. 
	nop			;d1a0	00 	. 
	nop			;d1a1	00 	. 
	nop			;d1a2	00 	. 
	nop			;d1a3	00 	. 
	nop			;d1a4	00 	. 
	nop			;d1a5	00 	. 
	nop			;d1a6	00 	. 
	nop			;d1a7	00 	. 
	nop			;d1a8	00 	. 
	nop			;d1a9	00 	. 
	nop			;d1aa	00 	. 
	nop			;d1ab	00 	. 
	nop			;d1ac	00 	. 
	nop			;d1ad	00 	. 
	nop			;d1ae	00 	. 
	nop			;d1af	00 	. 
	nop			;d1b0	00 	. 
	nop			;d1b1	00 	. 
	nop			;d1b2	00 	. 
	nop			;d1b3	00 	. 
	nop			;d1b4	00 	. 
	nop			;d1b5	00 	. 
	nop			;d1b6	00 	. 
	sbc a,0d2h		;d1b7	de d2 	. . 
	ld a,0d3h		;d1b9	3e d3 	> . 
	ld hl,0d6d3h		;d1bb	21 d3 d6 	! . . 
	out (000h),a		;d1be	d3 00 	. . 
	nop			;d1c0	00 	. 
	nop			;d1c1	00 	. 
	nop			;d1c2	00 	. 
	nop			;d1c3	00 	. 
	nop			;d1c4	00 	. 
	ld c,b			;d1c5	48 	H 
	jp nc,ld421h		;d1c6	d2 21 d4 	. ! . 
	nop			;d1c9	00 	. 
	nop			;d1ca	00 	. 
	nop			;d1cb	00 	. 
	nop			;d1cc	00 	. 
	nop			;d1cd	00 	. 
	nop			;d1ce	00 	. 
	nop			;d1cf	00 	. 
	nop			;d1d0	00 	. 
	nop			;d1d1	00 	. 
	nop			;d1d2	00 	. 
	nop			;d1d3	00 	. 
	nop			;d1d4	00 	. 
	nop			;d1d5	00 	. 
	nop			;d1d6	00 	. 
	nop			;d1d7	00 	. 
	nop			;d1d8	00 	. 
	nop			;d1d9	00 	. 
	nop			;d1da	00 	. 
	nop			;d1db	00 	. 
	nop			;d1dc	00 	. 
	nop			;d1dd	00 	. 
	nop			;d1de	00 	. 
	nop			;d1df	00 	. 
	nop			;d1e0	00 	. 
	nop			;d1e1	00 	. 
	nop			;d1e2	00 	. 
	nop			;d1e3	00 	. 
	nop			;d1e4	00 	. 

; BLOCK 'keywords' (start 0xd1e5 end 0xd46d)
keywords_start:
	defb 003h		;d1e5	03 	. 
	defb 041h		;d1e6	41 	A 
	defb 042h		;d1e7	42 	B 
	defb 053h		;d1e8	53 	S 
	defb 099h		;d1e9	99 	. 
	defb 003h		;d1ea	03 	. 
	defb 041h		;d1eb	41 	A 
	defb 04eh		;d1ec	4e 	N 
	defb 044h		;d1ed	44 	D 
	defb 0a1h		;d1ee	a1 	. 
	defb 003h		;d1ef	03 	. 
	defb 041h		;d1f0	41 	A 
	defb 053h		;d1f1	53 	S 
	defb 043h		;d1f2	43 	C 
	defb 0d0h		;d1f3	d0 	. 
	defb 003h		;d1f4	03 	. 
	defb 041h		;d1f5	41 	A 
	defb 054h		;d1f6	54 	T 
	defb 04eh		;d1f7	4e 	N 
	defb 09fh		;d1f8	9f 	. 
ld1f9h:
	defb 003h		;d1f9	03 	. 
	defb 041h		;d1fa	41 	A 
	defb 053h		;d1fb	53 	S 
	defb 04eh		;d1fc	4e 	N 
	defb 09dh		;d1fd	9d 	. 
	defb 003h		;d1fe	03 	. 
	defb 041h		;d1ff	41 	A 
	defb 043h		;d200	43 	C 
	defb 053h		;d201	53 	S 
	defb 09eh		;d202	9e 	. 
ld203h:
	defb 003h		;d203	03 	. 
	defb 041h		;d204	41 	A 
	defb 048h		;d205	48 	H 
	defb 053h		;d206	53 	S 
	defb 08dh		;d207	8d 	. 
	defb 003h		;d208	03 	. 
	defb 041h		;d209	41 	A 
	defb 048h		;d20a	48 	H 
	defb 043h		;d20b	43 	C 
	defb 08eh		;d20c	8e 	. 
ld20dh:
	defb 003h		;d20d	03 	. 
	defb 041h		;d20e	41 	A 
	defb 048h		;d20f	48 	H 
	defb 054h		;d210	54 	T 
	defb 08fh		;d211	8f 	. 
	defb 002h		;d212	02 	. 
	defb 041h		;d213	41 	A 
	defb 053h		;d214	53 	S 
	defb 073h		;d215	73 	s 
	defb 000h		;d216	00 	. 
ld217h:
	defb 004h		;d217	04 	. 
	defb 042h		;d218	42 	B 
	defb 045h		;d219	45 	E 
	defb 045h		;d21a	45 	E 
	defb 050h		;d21b	50 	P 
	defb 029h		;d21c	29 	) 
	defb 000h		;d21d	00 	. 
ld21eh:
	defb 004h		;d21e	04 	. 
	defb 043h		;d21f	43 	C 
	defb 04fh		;d220	4f 	O 
	defb 04eh		;d221	4e 	N 
	defb 054h		;d222	54 	T 
	defb 012h		;d223	12 	. 
	defb 005h		;d224	05 	. 
	defb 043h		;d225	43 	C 
	defb 04ch		;d226	4c 	L 
	defb 045h		;d227	45 	E 
	defb 041h		;d228	41 	A 
	defb 052h		;d229	52 	R 
	defb 02eh		;d22a	2e 	. 
	defb 005h		;d22b	05 	. 
	defb 043h		;d22c	43 	C 
	defb 04ch		;d22d	4c 	L 
	defb 04fh		;d22e	4f 	O 
	defb 041h		;d22f	41 	A 
	defb 044h		;d230	44 	D 
	defb 016h		;d231	16 	. 
	defb 005h		;d232	05 	. 
	defb 043h		;d233	43 	C 
	defb 053h		;d234	53 	S 
	defb 041h		;d235	41 	A 
	defb 056h		;d236	56 	V 
	defb 045h		;d237	45 	E 
	defb 020h		;d238	20 	  
sub_d239h:
	defb 003h		;d239	03 	. 
	defb 043h		;d23a	43 	C 
	defb 04fh		;d23b	4f 	O 
	defb 053h		;d23c	53 	S 
	defb 096h		;d23d	96 	. 
	defb 003h		;d23e	03 	. 
	defb 043h		;d23f	43 	C 
	defb 055h		;d240	55 	U 
	defb 042h		;d241	42 	B 
	defb 0bfh		;d242	bf 	. 
sub_d243h:
	defb 003h		;d243	03 	. 
	defb 043h		;d244	43 	C 
	defb 055h		;d245	55 	U 
	defb 052h		;d246	52 	R 
	defb 089h		;d247	89 	. 
	defb 004h		;d248	04 	. 
	defb 043h		;d249	43 	C 
	defb 048h		;d24a	48 	H 
	defb 052h		;d24b	52 	R 
	defb 024h		;d24c	24 	$ 
	defb 0f0h		;d24d	f0 	. 
	defb 005h		;d24e	05 	. 
	defb 043h		;d24f	43 	C 
	defb 04ch		;d250	4c 	L 
	defb 04fh		;d251	4f 	O 
	defb 053h		;d252	53 	S 
	defb 045h		;d253	45 	E 
	defb 022h		;d254	22 	" 
ld255h:
	defb 004h		;d255	04 	. 
	defb 043h		;d256	43 	C 
	defb 041h		;d257	41 	A 
	defb 04ch		;d258	4c 	L 
	defb 04ch		;d259	4c 	L 
	defb 031h		;d25a	31 	1 
	defb 003h		;d25b	03 	. 
	defb 043h		;d25c	43 	C 
	defb 04ch		;d25d	4c 	L 
	defb 053h		;d25e	53 	S 
	defb 050h		;d25f	50 	P 
	defb 000h		;d260	00 	. 
	defb 003h		;d261	03 	. 
	defb 044h		;d262	44 	D 
	defb 049h		;d263	49 	I 
	defb 04dh		;d264	4d 	M 
	defb 030h		;d265	30 	0 
	defb 006h		;d266	06 	. 
	defb 044h		;d267	44 	D 
	defb 045h		;d268	45 	E 
	defb 047h		;d269	47 	G 
	defb 052h		;d26a	52 	R 
	defb 045h		;d26b	45 	E 
	defb 045h		;d26c	45 	E 
	defb 026h		;d26d	26 	& 
sub_d26eh:
	defb 003h		;d26e	03 	. 
	defb 044h		;d26f	44 	D 
	defb 045h		;d270	45 	E 
	defb 047h		;d271	47 	G 
	defb 09bh		;d272	9b 	. 
	defb 004h		;d273	04 	. 
	defb 044h		;d274	44 	D 
	defb 041h		;d275	41 	A 
	defb 054h		;d276	54 	T 
	defb 041h		;d277	41 	A 
	defb 05eh		;d278	5e 	^ 
	defb 003h		;d279	03 	. 
	defb 044h		;d27a	44 	D 
	defb 04dh		;d27b	4d 	M 
	defb 053h		;d27c	53 	S 
	defb 09ch		;d27d	9c 	. 
	defb 006h		;d27e	06 	. 
	defb 044h		;d27f	44 	D 
	defb 045h		;d280	45 	E 
	defb 04ch		;d281	4c 	L 
	defb 045h		;d282	45 	E 
	defb 054h		;d283	54 	T 
	defb 045h		;d284	45 	E 
	defb 01bh		;d285	1b 	. 
	defb 000h		;d286	00 	. 
ld287h:
	defb 003h		;d287	03 	. 
	defb 045h		;d288	45 	E 
	defb 04eh		;d289	4e 	N 
	defb 044h		;d28a	44 	D 
	defb 05ah		;d28b	5a 	Z 
	defb 003h		;d28c	03 	. 
	defb 045h		;d28d	45 	E 
	defb 058h		;d28e	58 	X 
	defb 050h		;d28f	50 	P 
	defb 093h		;d290	93 	. 
	defb 000h		;d291	00 	. 
ld292h:
	defb 003h		;d292	03 	. 
	defb 046h		;d293	46 	F 
	defb 04fh		;d294	4f 	O 
	defb 052h		;d295	52 	R 
	defb 057h		;d296	57 	W 
	defb 003h		;d297	03 	. 
	defb 046h		;d298	46 	F 
	defb 052h		;d299	52 	R 
	defb 045h		;d29a	45 	E 
	defb 0afh		;d29b	af 	. 
	defb 004h		;d29c	04 	. 
	defb 046h		;d29d	46 	F 
	defb 041h		;d29e	41 	A 
	defb 043h		;d29f	43 	C 
	defb 054h		;d2a0	54 	T 
	defb 090h		;d2a1	90 	. 
ld2a2h:
	defb 005h		;d2a2	05 	. 
	defb 046h		;d2a3	46 	F 
	defb 049h		;d2a4	49 	I 
	defb 04ch		;d2a5	4c 	L 
	defb 045h		;d2a6	45 	E 
	defb 053h		;d2a7	53 	S 
	defb 01ch		;d2a8	1c 	. 
	defb 000h		;d2a9	00 	. 
ld2aah:
	defb 004h		;d2aa	04 	. 
	defb 047h		;d2ab	47 	G 
	defb 04fh		;d2ac	4f 	O 
	defb 054h		;d2ad	54 	T 
	defb 04fh		;d2ae	4f 	O 
	defb 02bh		;d2af	2b 	+ 
ld2b0h:
	defb 005h		;d2b0	05 	. 
	defb 047h		;d2b1	47 	G 
	defb 04fh		;d2b2	4f 	O 
	defb 053h		;d2b3	53 	S 
	defb 055h		;d2b4	55 	U 
	defb 042h		;d2b5	42 	B 
	defb 062h		;d2b6	62 	b 
	defb 004h		;d2b7	04 	. 
	defb 047h		;d2b8	47 	G 
	defb 052h		;d2b9	52 	R 
	defb 041h		;d2ba	41 	A 
	defb 044h		;d2bb	44 	D 
	defb 028h		;d2bc	28 	( 
	defb 000h		;d2bd	00 	. 
	defb 003h		;d2be	03 	. 
	defb 048h		;d2bf	48 	H 
	defb 053h		;d2c0	53 	S 
	defb 04eh		;d2c1	4e 	N 
	defb 08ah		;d2c2	8a 	. 
ld2c3h:
	defb 003h		;d2c3	03 	. 
	defb 048h		;d2c4	48 	H 
	defb 043h		;d2c5	43 	C 
	defb 053h		;d2c6	53 	S 
	defb 08bh		;d2c7	8b 	. 
	defb 003h		;d2c8	03 	. 
	defb 048h		;d2c9	48 	H 
	defb 054h		;d2ca	54 	T 
	defb 04eh		;d2cb	4e 	N 
	defb 08ch		;d2cc	8c 	. 
	defb 000h		;d2cd	00 	. 
ld2ceh:
	defb 005h		;d2ce	05 	. 
	defb 049h		;d2cf	49 	I 
	defb 04eh		;d2d0	4e 	N 
	defb 050h		;d2d1	50 	P 
	defb 055h		;d2d2	55 	U 
	defb 054h		;d2d3	54 	T 
	defb 061h		;d2d4	61 	a 
	defb 002h		;d2d5	02 	. 
	defb 049h		;d2d6	49 	I 
	defb 046h		;d2d7	46 	F 
	defb 056h		;d2d8	56 	V 
sub_d2d9h:
	defb 003h		;d2d9	03 	. 
	defb 049h		;d2da	49 	I 
	defb 04eh		;d2db	4e 	N 
	defb 054h		;d2dc	54 	T 
	defb 098h		;d2dd	98 	. 
	defb 006h		;d2de	06 	. 
	defb 049h		;d2df	49 	I 
	defb 04eh		;d2e0	4e 	N 
	defb 04bh		;d2e1	4b 	K 
	defb 045h		;d2e2	45 	E 
	defb 059h		;d2e3	59 	Y 
	defb 024h		;d2e4	24 	$ 
	defb 0e9h		;d2e5	e9 	. 
	defb 003h		;d2e6	03 	. 
	defb 049h		;d2e7	49 	I 
	defb 04eh		;d2e8	4e 	N 
	defb 050h		;d2e9	50 	P 
	defb 0a6h		;d2ea	a6 	. 
	defb 000h		;d2eb	00 	. 
	defb 004h		;d2ec	04 	. 
	defb 04bh		;d2ed	4b 	K 
	defb 049h		;d2ee	49 	I 
	defb 04ch		;d2ef	4c 	L 
	defb 04ch		;d2f0	4c 	L 
	defb 03ch		;d2f1	3c 	< 
	defb 000h		;d2f2	00 	. 
	defb 004h		;d2f3	04 	. 
	defb 04ch		;d2f4	4c 	L 
	defb 049h		;d2f5	49 	I 
	defb 053h		;d2f6	53 	S 
	defb 054h		;d2f7	54 	T 
	defb 014h		;d2f8	14 	. 
ld2f9h:
	defb 005h		;d2f9	05 	. 
	defb 04ch		;d2fa	4c 	L 
	defb 04ch		;d2fb	4c 	L 
	defb 049h		;d2fc	49 	I 
	defb 053h		;d2fd	53 	S 
	defb 054h		;d2fe	54 	T 
	defb 015h		;d2ff	15 	. 
	defb 006h		;d300	06 	. 
	defb 04ch		;d301	4c 	L 
	defb 050h		;d302	50 	P 
	defb 052h		;d303	52 	R 
	defb 049h		;d304	49 	I 
	defb 04eh		;d305	4e 	N 
	defb 054h		;d306	54 	T 
	defb 064h		;d307	64 	d 
	defb 004h		;d308	04 	. 
	defb 04ch		;d309	4c 	L 
	defb 04fh		;d30a	4f 	O 
	defb 041h		;d30b	41 	A 
	defb 044h		;d30c	44 	D 
	defb 018h		;d30d	18 	. 
	defb 003h		;d30e	03 	. 
	defb 04ch		;d30f	4c 	L 
	defb 04fh		;d310	4f 	O 
	defb 047h		;d311	47 	G 
	defb 092h		;d312	92 	. 
ld313h:
	defb 002h		;d313	02 	. 
	defb 04ch		;d314	4c 	L 
	defb 04eh		;d315	4e 	N 
	defb 091h		;d316	91 	. 
	defb 003h		;d317	03 	. 
	defb 04ch		;d318	4c 	L 
	defb 045h		;d319	45 	E 
	defb 054h		;d31a	54 	T 
	defb 058h		;d31b	58 	X 
sub_d31ch:
	defb 003h		;d31c	03 	. 
	defb 04ch		;d31d	4c 	L 
	defb 045h		;d31e	45 	E 
	defb 04eh		;d31f	4e 	N 
	defb 0d2h		;d320	d2 	. 
	defb 005h		;d321	05 	. 
	defb 04ch		;d322	4c 	L 
	defb 045h		;d323	45 	E 
	defb 046h		;d324	46 	F 
	defb 054h		;d325	54 	T 
	defb 024h		;d326	24 	$ 
	defb 0ebh		;d327	eb 	. 
	defb 006h		;d328	06 	. 
	defb 04ch		;d329	4c 	L 
	defb 046h		;d32a	46 	F 
	defb 049h		;d32b	49 	I 
	defb 04ch		;d32c	4c 	L 
	defb 045h		;d32d	45 	E 
	defb 053h		;d32e	53 	S 
	defb 03bh		;d32f	3b 	; 
ld330h:
	defb 006h		;d330	06 	. 
	defb 04ch		;d331	4c 	L 
	defb 04fh		;d332	4f 	O 
	defb 043h		;d333	43 	C 
	defb 041h		;d334	41 	A 
	defb 054h		;d335	54 	T 
	defb 045h		;d336	45 	E 
	defb 051h		;d337	51 	Q 
	defb 000h		;d338	00 	. 
ld339h:
	defb 003h		;d339	03 	. 
	defb 04dh		;d33a	4d 	M 
	defb 044h		;d33b	44 	D 
	defb 046h		;d33c	46 	F 
	defb 080h		;d33d	80 	. 
	defb 004h		;d33e	04 	. 
	defb 04dh		;d33f	4d 	M 
	defb 049h		;d340	49 	I 
	defb 044h		;d341	44 	D 
	defb 024h		;d342	24 	$ 
	defb 0eah		;d343	ea 	. 
	defb 003h		;d344	03 	. 
	defb 04dh		;d345	4d 	M 
	defb 04fh		;d346	4f 	O 
	defb 04eh		;d347	4e 	N 
	defb 00fh		;d348	0f 	. 
	defb 000h		;d349	00 	. 
ld34ah:
	defb 004h		;d34a	04 	. 
	defb 04eh		;d34b	4e 	N 
	defb 045h		;d34c	45 	E 
	defb 058h		;d34d	58 	X 
	defb 054h		;d34e	54 	T 
	defb 05bh		;d34f	5b 	[ 
	defb 003h		;d350	03 	. 
	defb 04eh		;d351	4e 	N 
	defb 045h		;d352	45 	E 
	defb 057h		;d353	57 	W 
	defb 011h		;d354	11 	. 
	defb 003h		;d355	03 	. 
	defb 04eh		;d356	4e 	N 
	defb 04fh		;d357	4f 	O 
	defb 054h		;d358	54 	T 
	defb 0a3h		;d359	a3 	. 
	defb 003h		;d35a	03 	. 
	defb 04eh		;d35b	4e 	N 
	defb 043h		;d35c	43 	C 
	defb 052h		;d35d	52 	R 
	defb 0b6h		;d35e	b6 	. 
	defb 003h		;d35f	03 	. 
	defb 04eh		;d360	4e 	N 
	defb 050h		;d361	50 	P 
	defb 052h		;d362	52 	R 
	defb 0b7h		;d363	b7 	. 
	defb 004h		;d364	04 	. 
	defb 04dh		;d365	4d 	M 
	defb 041h		;d366	41 	A 
	defb 04eh		;d367	4e 	N 
	defb 045h		;d368	45 	E 
	defb 03eh		;d369	3e 	> 
	defb 000h		;d36a	00 	. 
sub_d36bh:
	defb 002h		;d36b	02 	. 
	defb 04fh		;d36c	4f 	O 
	defb 04eh		;d36d	4e 	N 
	defb 055h		;d36e	55 	U 
	defb 004h		;d36f	04 	. 
	defb 04fh		;d370	4f 	O 
	defb 050h		;d371	50 	P 
	defb 045h		;d372	45 	E 
	defb 04eh		;d373	4e 	N 
	defb 021h		;d374	21 	! 
	defb 002h		;d375	02 	. 
	defb 04fh		;d376	4f 	O 
	defb 052h		;d377	52 	R 
	defb 0a2h		;d378	a2 	. 
	defb 006h		;d379	06 	. 
	defb 04fh		;d37a	4f 	O 
	defb 055h		;d37b	55 	U 
	defb 054h		;d37c	54 	T 
	defb 050h		;d37d	50 	P 
	defb 055h		;d37e	55 	U 
	defb 054h		;d37f	54 	T 
	defb 071h		;d380	71 	q 
	defb 003h		;d381	03 	. 
	defb 04fh		;d382	4f 	O 
	defb 055h		;d383	55 	U 
	defb 054h		;d384	54 	T 
	defb 045h		;d385	45 	E 
	defb 000h		;d386	00 	. 
	defb 005h		;d387	05 	. 
	defb 050h		;d388	50 	P 
	defb 052h		;d389	52 	R 
	defb 049h		;d38a	49 	I 
	defb 04eh		;d38b	4e 	N 
	defb 054h		;d38c	54 	T 
	defb 060h		;d38d	60 	` 
ld38eh:
	defb 004h		;d38e	04 	. 
	defb 050h		;d38f	50 	P 
	defb 041h		;d390	41 	A 
	defb 053h		;d391	53 	S 
	defb 053h		;d392	53 	S 
	defb 013h		;d393	13 	. 
	defb 002h		;d394	02 	. 
	defb 050h		;d395	50 	P 
	defb 049h		;d396	49 	I 
	defb 0aeh		;d397	ae 	. 
	defb 003h		;d398	03 	. 
	defb 050h		;d399	50 	P 
	defb 04fh		;d39a	4f 	O 
	defb 04ch		;d39b	4c 	L 
	defb 082h		;d39c	82 	. 
	defb 004h		;d39d	04 	. 
	defb 050h		;d39e	50 	P 
	defb 045h		;d39f	45 	E 
	defb 045h		;d3a0	45 	E 
	defb 04bh		;d3a1	4b 	K 
	defb 0a4h		;d3a2	a4 	. 
	defb 004h		;d3a3	04 	. 
	defb 050h		;d3a4	50 	P 
	defb 04fh		;d3a5	4f 	O 
	defb 04bh		;d3a6	4b 	K 
	defb 045h		;d3a7	45 	E 
	defb 032h		;d3a8	32 	2 
	defb 000h		;d3a9	00 	. 
	defb 003h		;d3aa	03 	. 
	defb 052h		;d3ab	52 	R 
	defb 055h		;d3ac	55 	U 
	defb 04eh		;d3ad	4e 	N 
	defb 010h		;d3ae	10 	. 
	defb 006h		;d3af	06 	. 
	defb 052h		;d3b0	52 	R 
	defb 045h		;d3b1	45 	E 
	defb 054h		;d3b2	54 	T 
	defb 055h		;d3b3	55 	U 
	defb 052h		;d3b4	52 	R 
	defb 04eh		;d3b5	4e 	N 
	defb 065h		;d3b6	65 	e 
sub_d3b7h:
	defb 004h		;d3b7	04 	. 
	defb 052h		;d3b8	52 	R 
	defb 045h		;d3b9	45 	E 
	defb 041h		;d3ba	41 	A 
	defb 044h		;d3bb	44 	D 
	defb 05dh		;d3bc	5d 	] 
	defb 007h		;d3bd	07 	. 
	defb 052h		;d3be	52 	R 
	defb 045h		;d3bf	45 	E 
	defb 053h		;d3c0	53 	S 
	defb 054h		;d3c1	54 	T 
	defb 04fh		;d3c2	4f 	O 
	defb 052h		;d3c3	52 	R 
	defb 045h		;d3c4	45 	E 
	defb 066h		;d3c5	66 	f 
	defb 003h		;d3c6	03 	. 
	defb 052h		;d3c7	52 	R 
	defb 04eh		;d3c8	4e 	N 
	defb 044h		;d3c9	44 	D 
	defb 0a0h		;d3ca	a0 	. 
	defb 009h		;d3cb	09 	. 
	defb 052h		;d3cc	52 	R 
	defb 041h		;d3cd	41 	A 
	defb 04eh		;d3ce	4e 	N 
	defb 044h		;d3cf	44 	D 
	defb 04fh		;d3d0	4f 	O 
	defb 04dh		;d3d1	4d 	M 
	defb 049h		;d3d2	49 	I 
	defb 05ah		;d3d3	5a 	Z 
	defb 045h		;d3d4	45 	E 
	defb 025h		;d3d5	25 	% 
	defb 006h		;d3d6	06 	. 
	defb 052h		;d3d7	52 	R 
	defb 049h		;d3d8	49 	I 
	defb 047h		;d3d9	47 	G 
	defb 048h		;d3da	48 	H 
	defb 054h		;d3db	54 	T 
	defb 024h		;d3dc	24 	$ 
	defb 0ech		;d3dd	ec 	. 
ld3deh:
	defb 006h		;d3de	06 	. 
	defb 052h		;d3df	52 	R 
	defb 041h		;d3e0	41 	A 
	defb 044h		;d3e1	44 	D 
	defb 049h		;d3e2	49 	I 
	defb 041h		;d3e3	41 	A 
	defb 04eh		;d3e4	4e 	N 
	defb 027h		;d3e5	27 	' 
	defb 003h		;d3e6	03 	. 
	defb 052h		;d3e7	52 	R 
	defb 045h		;d3e8	45 	E 
	defb 04dh		;d3e9	4d 	M 
	defb 059h		;d3ea	59 	Y 
	defb 003h		;d3eb	03 	. 
	defb 052h		;d3ec	52 	R 
	defb 045h		;d3ed	45 	E 
	defb 043h		;d3ee	43 	C 
	defb 081h		;d3ef	81 	. 
sub_d3f0h:
	defb 003h		;d3f0	03 	. 
	defb 052h		;d3f1	52 	R 
	defb 043h		;d3f2	43 	C 
	defb 050h		;d3f3	50 	P 
	defb 087h		;d3f4	87 	. 
ld3f5h:
	defb 005h		;d3f5	05 	. 
	defb 052h		;d3f6	52 	R 
	defb 045h		;d3f7	45 	E 
	defb 04eh		;d3f8	4e 	N 
	defb 055h		;d3f9	55 	U 
	defb 04dh		;d3fa	4d 	M 
	defb 017h		;d3fb	17 	. 
ld3fch:
	defb 008h		;d3fc	08 	. 
	defb 052h		;d3fd	52 	R 
	defb 045h		;d3fe	45 	E 
	defb 053h		;d3ff	53 	S 
	defb 045h		;d400	45 	E 
	defb 052h		;d401	52 	R 
	defb 056h		;d402	56 	V 
	defb 045h		;d403	45 	E 
	defb 044h		;d404	44 	D 
	defb 000h		;d405	00 	. 
	defb 003h		;d406	03 	. 
	defb 052h		;d407	52 	R 
	defb 04fh		;d408	4f 	O 
	defb 054h		;d409	54 	T 
	defb 083h		;d40a	83 	. 
	defb 000h		;d40b	00 	. 
	defb 004h		;d40c	04 	. 
	defb 053h		;d40d	53 	S 
	defb 054h		;d40e	54 	T 
	defb 04fh		;d40f	4f 	O 
	defb 050h		;d410	50 	P 
	defb 05ch		;d411	5c 	\ 
ld412h:
	defb 003h		;d412	03 	. 
	defb 053h		;d413	53 	S 
	defb 051h		;d414	51 	Q 
	defb 052h		;d415	52 	R 
	defb 094h		;d416	94 	. 
	defb 003h		;d417	03 	. 
	defb 053h		;d418	53 	S 
	defb 049h		;d419	49 	I 
	defb 04eh		;d41a	4e 	N 
	defb 095h		;d41b	95 	. 
	defb 003h		;d41c	03 	. 
	defb 053h		;d41d	53 	S 
	defb 047h		;d41e	47 	G 
	defb 04eh		;d41f	4e 	N 
	defb 09ah		;d420	9a 	. 
ld421h:
	defb 004h		;d421	04 	. 
	defb 053h		;d422	53 	S 
	defb 054h		;d423	54 	T 
	defb 052h		;d424	52 	R 
	defb 024h		;d425	24 	$ 
	defb 0f1h		;d426	f1 	. 
sub_d427h:
	defb 004h		;d427	04 	. 
	defb 053h		;d428	53 	S 
	defb 054h		;d429	54 	T 
	defb 045h		;d42a	45 	E 
	defb 050h		;d42b	50 	P 
	defb 053h		;d42c	53 	S 
ld42dh:
	defb 004h		;d42d	04 	. 
	defb 053h		;d42e	53 	S 
	defb 041h		;d42f	41 	A 
	defb 056h		;d430	56 	V 
	defb 045h		;d431	45 	E 
	defb 023h		;d432	23 	# 
	defb 003h		;d433	03 	. 
	defb 053h		;d434	53 	S 
	defb 051h		;d435	51 	Q 
	defb 055h		;d436	55 	U 
	defb 088h		;d437	88 	. 
	defb 000h		;d438	00 	. 
sub_d439h:
	defb 004h		;d439	04 	. 
	defb 054h		;d43a	54 	T 
	defb 048h		;d43b	48 	H 
	defb 045h		;d43c	45 	E 
	defb 04eh		;d43d	4e 	N 
	defb 054h		;d43e	54 	T 
	defb 003h		;d43f	03 	. 
	defb 054h		;d440	54 	T 
	defb 041h		;d441	41 	A 
	defb 04eh		;d442	4e 	N 
	defb 097h		;d443	97 	. 
	defb 004h		;d444	04 	. 
	defb 054h		;d445	54 	T 
	defb 052h		;d446	52 	R 
	defb 04fh		;d447	4f 	O 
	defb 04eh		;d448	4e 	N 
	defb 02ch		;d449	2c 	, 
sub_d44ah:
	defb 005h		;d44a	05 	. 
	defb 054h		;d44b	54 	T 
	defb 052h		;d44c	52 	R 
	defb 04fh		;d44d	4f 	O 
	defb 046h		;d44e	46 	F 
	defb 046h		;d44f	46 	F 
	defb 02dh		;d450	2d 	- 
	defb 002h		;d451	02 	. 
	defb 054h		;d452	54 	T 
	defb 04fh		;d453	4f 	O 
	defb 052h		;d454	52 	R 
	defb 003h		;d455	03 	. 
	defb 054h		;d456	54 	T 
	defb 045h		;d457	45 	E 
	defb 04eh		;d458	4e 	N 
	defb 086h		;d459	86 	. 
	defb 000h		;d45a	00 	. 
ld45bh:
	defb 005h		;d45b	05 	. 
	defb 055h		;d45c	55 	U 
	defb 053h		;d45d	53 	S 
	defb 049h		;d45e	49 	I 
	defb 04eh		;d45f	4e 	N 
	defb 047h		;d460	47 	G 
	defb 02fh		;d461	2f 	/ 
	defb 000h		;d462	00 	. 
sub_d463h:
	defb 003h		;d463	03 	. 
	defb 056h		;d464	56 	V 
	defb 041h		;d465	41 	A 
	defb 04ch		;d466	4c 	L 
	defb 0d1h		;d467	d1 	. 
	defb 000h		;d468	00 	. 
	defb 004h		;d469	04 	. 
	defb 057h		;d46a	57 	W 
	defb 041h		;d46b	41 	A 
	defb 049h		;d46c	49 	I 
keywords_end:
	ld d,h			;d46d	54 	T 
	ld hl,(lcd00h)		;d46e	2a 00 cd 	* . . 
	jp (hl)			;d471	e9 	. 
	sub 07bh		;d472	d6 7b 	. { 
	ld (079f1h),a		;d474	32 f1 79 	2 . y 
	jr ld4ceh		;d477	18 55 	. U 
ld479h:
	call sub_d6e9h		;d479	cd e9 d6 	. . . 
	xor a			;d47c	af 	. 
	ld (079f1h),a		;d47d	32 f1 79 	2 . y 
	ld a,(hl)			;d480	7e 	~ 
	cp 020h		;d481	fe 20 	.   
	jr z,ld4d5h		;d483	28 50 	( P 
	cp 02ah		;d485	fe 2a 	. * 
	jr nz,ld48eh		;d487	20 05 	  . 
ld489h:
	call sub_d60bh		;d489	cd 0b d6 	. . . 
	jr c,ld4f8h		;d48c	38 6a 	8 j 
ld48eh:
	ld a,(hl)			;d48e	7e 	~ 
	cp 020h		;d48f	fe 20 	.   
	jr z,ld4c1h		;d491	28 2e 	( . 
	call sub_d8b9h		;d493	cd b9 d8 	. . . 
	jr nc,ld501h		;d496	30 69 	0 i 
	call sub_d8c6h		;d498	cd c6 d8 	. . . 
	jp nc,ld5c4h		;d49b	d2 c4 d5 	. . . 
	cp 02eh		;d49e	fe 2e 	. . 
	jp z,ld5c4h		;d4a0	ca c4 d5 	. . . 
	cp 022h		;d4a3	fe 22 	. " 
	jp z,ld5ddh		;d4a5	ca dd d5 	. . . 
	inc hl			;d4a8	23 	# 
	cp 027h		;d4a9	fe 27 	. ' 
	jp z,ld5e2h		;d4ab	ca e2 d5 	. . . 
	ld (de),a			;d4ae	12 	. 
	cp 00dh		;d4af	fe 0d 	. . 
	jr z,ld4e0h		;d4b1	28 2d 	( - 
	inc e			;d4b3	1c 	. 
	jr z,ld4f8h		;d4b4	28 42 	( B 
	cp 03ah		;d4b6	fe 3a 	. : 
	jr z,ld4ceh		;d4b8	28 14 	( . 
	cp 026h		;d4ba	fe 26 	. & 
	jp z,ld5cch		;d4bc	ca cc d5 	. . . 
	jr ld48eh		;d4bf	18 cd 	. . 
ld4c1h:
	call sub_d885h		;d4c1	cd 85 d8 	. . . 
	jr c,ld4f8h		;d4c4	38 32 	8 2 
	call sub_d8b9h		;d4c6	cd b9 d8 	. . . 
	jp nc,ld50ah		;d4c9	d2 0a d5 	. . . 
	jr ld48eh		;d4cc	18 c0 	. . 
ld4ceh:
	call sub_d885h		;d4ce	cd 85 d8 	. . . 
	jr c,ld4f8h		;d4d1	38 25 	8 % 
	jr ld48eh		;d4d3	18 b9 	. . 
ld4d5h:
	call sub_d885h		;d4d5	cd 85 d8 	. . . 
	jr c,ld4f8h		;d4d8	38 1e 	8 . 
	cp 02ah		;d4da	fe 2a 	. * 
	jr z,ld489h		;d4dc	28 ab 	( . 
	jr ld48eh		;d4de	18 ae 	. . 
ld4e0h:
	ld a,(079f1h)		;d4e0	3a f1 79 	: . y 
	cp e			;d4e3	bb 	. 
	jr nz,ld4eeh		;d4e4	20 08 	  . 
	ld a,(079dah)		;d4e6	3a da 79 	: . y 
	and 0dfh		;d4e9	e6 df 	. . 
	ld (079dah),a		;d4eb	32 da 79 	2 . y 
ld4eeh:
	and a			;d4ee	a7 	. 
ld4efh:
	dec hl			;d4ef	2b 	+ 
	push hl			;d4f0	e5 	. 
	pop ix		;d4f1	dd e1 	. . 
	push de			;d4f3	d5 	. 
	pop iy		;d4f4	fd e1 	. . 
	ret			;d4f6	c9 	. 
ld4f7h:
	dec e			;d4f7	1d 	. 
ld4f8h:
	dec e			;d4f8	1d 	. 
	ld a,00dh		;d4f9	3e 0d 	> . 
	ld (de),a			;d4fb	12 	. 
	call 08384h		;d4fc	cd 84 83 	. . . 
	jr ld4efh		;d4ff	18 ee 	. . 
ld501h:
	push de			;d501	d5 	. 
	call sub_d80ah		;d502	cd 0a d8 	. . . 
	pop de			;d505	d1 	. 
	jr c,ld50fh		;d506	38 07 	8 . 
	jr ld513h		;d508	18 09 	. . 
ld50ah:
	push de			;d50a	d5 	. 
	call sub_d80ah		;d50b	cd 0a d8 	. . . 
	pop de			;d50e	d1 	. 
ld50fh:
	jp c,ld5f9h		;d50f	da f9 d5 	. . . 
	dec e			;d512	1d 	. 
ld513h:
	ld c,a			;d513	4f 	O 
	ld a,0feh		;d514	3e fe 	> . 
	ld (de),a			;d516	12 	. 
	inc e			;d517	1c 	. 
	jr z,ld4f8h		;d518	28 de 	( . 
	ld a,c			;d51a	79 	y 
	ld (de),a			;d51b	12 	. 
	inc e			;d51c	1c 	. 
	jr z,ld4f7h		;d51d	28 d8 	( . 
	ld a,(hl)			;d51f	7e 	~ 
	cp 020h		;d520	fe 20 	.   
	jr nz,ld525h		;d522	20 01 	  . 
	inc hl			;d524	23 	# 
ld525h:
	ld a,c			;d525	79 	y 
	cp 059h		;d526	fe 59 	. Y 
	jp z,ld5efh		;d528	ca ef d5 	. . . 
	cp 05eh		;d52b	fe 5e 	. ^ 
	jp z,ld5f4h		;d52d	ca f4 d5 	. . . 
	push bc			;d530	c5 	. 
	call sub_d885h		;d531	cd 85 d8 	. . . 
	pop bc			;d534	c1 	. 
	jr c,ld4f8h		;d535	38 c1 	8 . 
	ld a,c			;d537	79 	y 
	cp 02bh		;d538	fe 2b 	. + 
	jr z,ld561h		;d53a	28 25 	( % 
	cp 062h		;d53c	fe 62 	. b 
	jr z,ld561h		;d53e	28 21 	( ! 
	cp 054h		;d540	fe 54 	. T 
	jr z,ld549h		;d542	28 05 	( . 
	cp 066h		;d544	fe 66 	. f 
	jp nz,ld5c9h		;d546	c2 c9 d5 	. . . 
ld549h:
	ld a,(hl)			;d549	7e 	~ 
	cp 02ah		;d54a	fe 2a 	. * 
	jp z,ld489h		;d54c	ca 89 d4 	. . . 
	call sub_d8c6h		;d54f	cd c6 d8 	. . . 
	jr nc,ld558h		;d552	30 04 	0 . 
	cp 02eh		;d554	fe 2e 	. . 
	jr nz,ld5c9h		;d556	20 71 	  q 
ld558h:
	call sub_d667h		;d558	cd 67 d6 	. g . 
	jr nc,ld5c9h		;d55b	30 6c 	0 l 
ld55dh:
	add a,e			;d55d	83 	. 
	ld e,a			;d55e	5f 	_ 
	jr ld4f8h		;d55f	18 97 	. . 
ld561h:
	ld a,(hl)			;d561	7e 	~ 
	cp 02ah		;d562	fe 2a 	. * 
	jr z,ld5b2h		;d564	28 4c 	( L 
	cp 022h		;d566	fe 22 	. " 
	jr z,ld5bch		;d568	28 52 	( R 
	call sub_d8c6h		;d56a	cd c6 d8 	. . . 
	jr nc,ld573h		;d56d	30 04 	0 . 
	cp 02eh		;d56f	fe 2e 	. . 
	jr nz,ld5c9h		;d571	20 56 	  V 
ld573h:
	call sub_d667h		;d573	cd 67 d6 	. g . 
	jr c,ld55dh		;d576	38 e5 	8 . 
	or a			;d578	b7 	. 
	jr nz,ld5c9h		;d579	20 4e 	  N 
ld57bh:
	call sub_d6f2h		;d57b	cd f2 d6 	. . . 
	call sub_f844h		;d57e	cd 44 f8 	. D . 
	cp 02ch		;d581	fe 2c 	. , 
	jr nz,ld5c9h		;d583	20 44 	  D 
	call sub_d885h		;d585	cd 85 d8 	. . . 
	jr c,ld5c1h		;d588	38 37 	8 7 
	ld (de),a			;d58a	12 	. 
	inc hl			;d58b	23 	# 
	inc e			;d58c	1c 	. 
	jr z,ld5c1h		;d58d	28 32 	( 2 
	call sub_d6f2h		;d58f	cd f2 d6 	. . . 
	call sub_f844h		;d592	cd 44 f8 	. D . 
	cp 02ah		;d595	fe 2a 	. * 
	jr z,ld5adh		;d597	28 14 	( . 
	cp 022h		;d599	fe 22 	. " 
	jr z,ld5b7h		;d59b	28 1a 	( . 
	call sub_d8c6h		;d59d	cd c6 d8 	. . . 
	jr nc,ld5a6h		;d5a0	30 04 	0 . 
	cp 02eh		;d5a2	fe 2e 	. . 
	jr nz,ld5c9h		;d5a4	20 23 	  # 
ld5a6h:
	call sub_d885h		;d5a6	cd 85 d8 	. . . 
	jr nc,ld573h		;d5a9	30 c8 	0 . 
	jr ld5c1h		;d5ab	18 14 	. . 
ld5adh:
	call sub_d885h		;d5ad	cd 85 d8 	. . . 
	jr c,ld5c1h		;d5b0	38 0f 	8 . 
ld5b2h:
	call sub_d60bh		;d5b2	cd 0b d6 	. . . 
	jr ld5bfh		;d5b5	18 08 	. . 
ld5b7h:
	call sub_d885h		;d5b7	cd 85 d8 	. . . 
	jr c,ld5c1h		;d5ba	38 05 	8 . 
ld5bch:
	call sub_d626h		;d5bc	cd 26 d6 	. & . 
ld5bfh:
	jr nc,ld57bh		;d5bf	30 ba 	0 . 
ld5c1h:
	jp ld4f8h		;d5c1	c3 f8 d4 	. . . 
ld5c4h:
	call sub_d6b6h		;d5c4	cd b6 d6 	. . . 
ld5c7h:
	jr c,ld5c1h		;d5c7	38 f8 	8 . 
ld5c9h:
	jp ld48eh		;d5c9	c3 8e d4 	. . . 
ld5cch:
	ld a,(hl)			;d5cc	7e 	~ 
	and 0dfh		;d5cd	e6 df 	. . 
	cp 048h		;d5cf	fe 48 	. H 
	jr nz,ld5c9h		;d5d1	20 f6 	  . 
	inc hl			;d5d3	23 	# 
	ld (de),a			;d5d4	12 	. 
	inc e			;d5d5	1c 	. 
	jr z,ld5c1h		;d5d6	28 e9 	( . 
	call sub_d6ach		;d5d8	cd ac d6 	. . . 
	jr ld5c7h		;d5db	18 ea 	. . 
ld5ddh:
	call sub_d626h		;d5dd	cd 26 d6 	. & . 
	jr ld5c7h		;d5e0	18 e5 	. . 
ld5e2h:
	ld a,03ah		;d5e2	3e 3a 	> : 
	ld (de),a			;d5e4	12 	. 
	inc e			;d5e5	1c 	. 
	jr z,ld5c1h		;d5e6	28 d9 	( . 
	ld a,027h		;d5e8	3e 27 	> ' 
	ld (de),a			;d5ea	12 	. 
	inc e			;d5eb	1c 	. 
	jp z,ld4f7h		;d5ec	ca f7 d4 	. . . 
ld5efh:
	call sub_d63dh		;d5ef	cd 3d d6 	. = . 
	jr ld5c7h		;d5f2	18 d3 	. . 
ld5f4h:
	call sub_d64bh		;d5f4	cd 4b d6 	. K . 
	jr ld5c7h		;d5f7	18 ce 	. . 
ld5f9h:
	ld a,(hl)			;d5f9	7e 	~ 
	call sub_d8b9h		;d5fa	cd b9 d8 	. . . 
	jr nc,ld604h		;d5fd	30 05 	0 . 
	call sub_d8c6h		;d5ff	cd c6 d8 	. . . 
	jr c,ld5c9h		;d602	38 c5 	8 . 
ld604h:
	ld (de),a			;d604	12 	. 
	inc hl			;d605	23 	# 
	inc e			;d606	1c 	. 
	jr nz,ld5f9h		;d607	20 f0 	  . 
	jr ld5c1h		;d609	18 b6 	. . 
sub_d60bh:
	ld a,(hl)			;d60b	7e 	~ 
	ld (de),a			;d60c	12 	. 
	inc hl			;d60d	23 	# 
	inc e			;d60e	1c 	. 
	jr z,ld624h		;d60f	28 13 	( . 
	ld a,(hl)			;d611	7e 	~ 
	jr ld61ah		;d612	18 06 	. . 
ld614h:
	ld a,(hl)			;d614	7e 	~ 
	call sub_d8c6h		;d615	cd c6 d8 	. . . 
	jr nc,ld61fh		;d618	30 05 	0 . 
ld61ah:
	call sub_d8b9h		;d61a	cd b9 d8 	. . . 
	ccf			;d61d	3f 	? 
	ret nc			;d61e	d0 	. 
ld61fh:
	ld (de),a			;d61f	12 	. 
	inc hl			;d620	23 	# 
	inc e			;d621	1c 	. 
	jr nz,ld614h		;d622	20 f0 	  . 
ld624h:
	scf			;d624	37 	7 
	ret			;d625	c9 	. 
sub_d626h:
	ld a,(hl)			;d626	7e 	~ 
	ld (de),a			;d627	12 	. 
	inc hl			;d628	23 	# 
	inc e			;d629	1c 	. 
	jr z,ld624h		;d62a	28 f8 	( . 
ld62ch:
	call sub_d8b4h		;d62c	cd b4 d8 	. . . 
	ld a,(hl)			;d62f	7e 	~ 
	cp 00dh		;d630	fe 0d 	. . 
	ret z			;d632	c8 	. 
	ld (de),a			;d633	12 	. 
	inc hl			;d634	23 	# 
	inc e			;d635	1c 	. 
	jr z,ld624h		;d636	28 ec 	( . 
	cp 022h		;d638	fe 22 	. " 
	jr nz,ld62ch		;d63a	20 f0 	  . 
	ret			;d63c	c9 	. 
sub_d63dh:
	call sub_d8b4h		;d63d	cd b4 d8 	. . . 
	ld a,(hl)			;d640	7e 	~ 
	cp 00dh		;d641	fe 0d 	. . 
	ret z			;d643	c8 	. 
	ld (de),a			;d644	12 	. 
	inc hl			;d645	23 	# 
	inc e			;d646	1c 	. 
	jr nz,sub_d63dh		;d647	20 f4 	  . 
ld649h:
	scf			;d649	37 	7 
	ret			;d64a	c9 	. 
sub_d64bh:
	call sub_d8b4h		;d64b	cd b4 d8 	. . . 
	ld a,(hl)			;d64e	7e 	~ 
	cp 03ah		;d64f	fe 3a 	. : 
	ret z			;d651	c8 	. 
	cp 027h		;d652	fe 27 	. ' 
	ret z			;d654	c8 	. 
	cp 00dh		;d655	fe 0d 	. . 
	ret z			;d657	c8 	. 
	ld (de),a			;d658	12 	. 
	inc hl			;d659	23 	# 
	inc e			;d65a	1c 	. 
	jr z,ld649h		;d65b	28 ec 	( . 
	cp 022h		;d65d	fe 22 	. " 
	jr nz,sub_d64bh		;d65f	20 ea 	  . 
	call ld62ch		;d661	cd 2c d6 	. , . 
	ret c			;d664	d8 	. 
	jr sub_d64bh		;d665	18 e4 	. . 
sub_d667h:
	call sub_d6f2h		;d667	cd f2 d6 	. . . 
	push de			;d66a	d5 	. 
	push hl			;d66b	e5 	. 
	call 0bf91h		;d66c	cd 91 bf 	. . . 
	jr c,ld674h		;d66f	38 03 	8 . 
	call 0bf7fh		;d671	cd 7f bf 	.  . 
ld674h:
	pop hl			;d674	e1 	. 
	pop de			;d675	d1 	. 
	jr c,ld696h		;d676	38 1e 	8 . 
	scf			;d678	37 	7 
	ld a,01fh		;d679	3e 1f 	> . 
	ld (de),a			;d67b	12 	. 
	inc e			;d67c	1c 	. 
	jr z,ld693h		;d67d	28 14 	( . 
	ld a,(07f19h)		;d67f	3a 19 7f 	: .  
	ld (de),a			;d682	12 	. 
	inc e			;d683	1c 	. 
	jr z,ld697h		;d684	28 11 	( . 
	ld a,(07f18h)		;d686	3a 18 7f 	: .  
	ld (de),a			;d689	12 	. 
	inc e			;d68a	1c 	. 
	jr z,ld69ah		;d68b	28 0d 	( . 
	push ix		;d68d	dd e5 	. . 
	pop hl			;d68f	e1 	. 
	inc hl			;d690	23 	# 
	xor a			;d691	af 	. 
	ret			;d692	c9 	. 
ld693h:
	xor a			;d693	af 	. 
	scf			;d694	37 	7 
	ret			;d695	c9 	. 
ld696h:
	or a			;d696	b7 	. 
ld697h:
	ld a,0ffh		;d697	3e ff 	> . 
	ret			;d699	c9 	. 
ld69ah:
	ld a,0feh		;d69a	3e fe 	> . 
	ret			;d69c	c9 	. 
ld69dh:
	call sub_d6f2h		;d69d	cd f2 d6 	. . . 
	push de			;d6a0	d5 	. 
	push hl			;d6a1	e5 	. 
	ld hl,07f33h		;d6a2	21 33 7f 	! 3  
	set 1,(hl)		;d6a5	cb ce 	. . 
	call 0be4dh		;d6a7	cd 4d be 	. M . 
	jr ld6beh		;d6aa	18 12 	. . 
sub_d6ach:
	call sub_d6f2h		;d6ac	cd f2 d6 	. . . 
	push de			;d6af	d5 	. 
	push hl			;d6b0	e5 	. 
	call 0bd42h		;d6b1	cd 42 bd 	. B . 
	jr ld6beh		;d6b4	18 08 	. . 
sub_d6b6h:
	call sub_d6f2h		;d6b6	cd f2 d6 	. . . 
	push de			;d6b9	d5 	. 
	push hl			;d6ba	e5 	. 
	call 0bf91h		;d6bb	cd 91 bf 	. . . 
ld6beh:
	push ix		;d6be	dd e5 	. . 
	pop hl			;d6c0	e1 	. 
	pop de			;d6c1	d1 	. 
	xor a			;d6c2	af 	. 
	sbc hl,de		;d6c3	ed 52 	. R 
	jr c,ld6dch		;d6c5	38 15 	8 . 
	ld b,l			;d6c7	45 	E 
	inc b			;d6c8	04 	. 
	ex de,hl			;d6c9	eb 	. 
	pop de			;d6ca	d1 	. 
ld6cbh:
	ld a,(hl)			;d6cb	7e 	~ 
	inc hl			;d6cc	23 	# 
	cp 020h		;d6cd	fe 20 	.   
	jr z,ld6d8h		;d6cf	28 07 	( . 
	call sub_d8b9h		;d6d1	cd b9 d8 	. . . 
	ld (de),a			;d6d4	12 	. 
	inc e			;d6d5	1c 	. 
	jr z,ld693h		;d6d6	28 bb 	( . 
ld6d8h:
	djnz ld6cbh		;d6d8	10 f1 	. . 
ld6dah:
	and a			;d6da	a7 	. 
	ret			;d6db	c9 	. 
ld6dch:
	ex de,hl			;d6dc	eb 	. 
	pop de			;d6dd	d1 	. 
	ld a,(hl)			;d6de	7e 	~ 
	cp 02eh		;d6df	fe 2e 	. . 
	jr nz,ld6dah		;d6e1	20 f7 	  . 
	inc hl			;d6e3	23 	# 
	ld (de),a			;d6e4	12 	. 
	inc e			;d6e5	1c 	. 
	jr z,ld693h		;d6e6	28 ab 	( . 
	ret			;d6e8	c9 	. 
sub_d6e9h:
	push ix		;d6e9	dd e5 	. . 
	pop hl			;d6eb	e1 	. 
	push iy		;d6ec	fd e5 	. . 
	pop de			;d6ee	d1 	. 
	inc hl			;d6ef	23 	# 
	inc de			;d6f0	13 	. 
	ret			;d6f1	c9 	. 
sub_d6f2h:
	push hl			;d6f2	e5 	. 
	pop ix		;d6f3	dd e1 	. . 
	dec ix		;d6f5	dd 2b 	. + 
	ret			;d6f7	c9 	. 
sub_d6f8h:
	call sub_d6e9h		;d6f8	cd e9 d6 	. . . 
	call sub_d8a5h		;d6fb	cd a5 d8 	. . . 
ld6feh:
	call sub_d8b4h		;d6fe	cd b4 d8 	. . . 
	ld a,(hl)			;d701	7e 	~ 
	inc hl			;d702	23 	# 
	cp 0feh		;d703	fe fe 	. . 
	jr z,ld75dh		;d705	28 56 	( V 
	jr ld712h		;d707	18 09 	. . 
ld709h:
	call sub_d8b4h		;d709	cd b4 d8 	. . . 
	ld a,(hl)			;d70c	7e 	~ 
	inc hl			;d70d	23 	# 
	cp 0feh		;d70e	fe fe 	. . 
	jr z,ld752h		;d710	28 40 	( @ 
ld712h:
	cp 01fh		;d712	fe 1f 	. . 
	jp z,ld79bh		;d714	ca 9b d7 	. . . 
	cp 03ah		;d717	fe 3a 	. : 
	jr z,ld732h		;d719	28 17 	( . 
	ld (de),a			;d71b	12 	. 
	cp 00dh		;d71c	fe 0d 	. . 
	jr z,ld798h		;d71e	28 78 	( x 
	inc e			;d720	1c 	. 
	jr z,ld793h		;d721	28 70 	( p 
	cp 022h		;d723	fe 22 	. " 
	jr z,ld78ah		;d725	28 63 	( c 
	cp 020h		;d727	fe 20 	.   
	jr nz,ld709h		;d729	20 de 	  . 
	call sub_d8a5h		;d72b	cd a5 d8 	. . . 
	jr nc,ld709h		;d72e	30 d9 	0 . 
	jr ld793h		;d730	18 61 	. a 
ld732h:
	ld a,(hl)			;d732	7e 	~ 
	cp 027h		;d733	fe 27 	. ' 
	jr nz,ld745h		;d735	20 0e 	  . 
	exx			;d737	d9 	. 
	ld hl,(079e1h)		;d738	2a e1 79 	* . y 
	ld de,(07973h)		;d73b	ed 5b 73 79 	. [ s y 
	sbc hl,de		;d73f	ed 52 	. R 
	exx			;d741	d9 	. 
	jp nc,ld785h		;d742	d2 85 d7 	. . . 
ld745h:
	ld a,03ah		;d745	3e 3a 	> : 
	ld (de),a			;d747	12 	. 
	inc e			;d748	1c 	. 
	jr z,ld793h		;d749	28 48 	( H 
	call sub_d8a5h		;d74b	cd a5 d8 	. . . 
	jr c,ld793h		;d74e	38 43 	8 C 
ld750h:
	jr ld6feh		;d750	18 ac 	. . 
ld752h:
	ld a,020h		;d752	3e 20 	>   
	ld (de),a			;d754	12 	. 
	inc e			;d755	1c 	. 
	jr z,ld793h		;d756	28 3b 	( ; 
	dec hl			;d758	2b 	+ 
	call sub_d8b4h		;d759	cd b4 d8 	. . . 
	inc hl			;d75c	23 	# 
ld75dh:
	ld a,(hl)			;d75d	7e 	~ 
	ld (079b9h),a		;d75e	32 b9 79 	2 . y 
	call sub_d7c3h		;d761	cd c3 d7 	. . . 
	jr c,ld793h		;d764	38 2d 	8 - 
	call sub_d8a5h		;d766	cd a5 d8 	. . . 
	jr c,ld793h		;d769	38 28 	8 ( 
	cp 00dh		;d76b	fe 0d 	. . 
	jr z,ld709h		;d76d	28 9a 	( . 
	ld a,020h		;d76f	3e 20 	>   
	ld (de),a			;d771	12 	. 
	inc e			;d772	1c 	. 
	jr z,ld793h		;d773	28 1e 	( . 
	ld a,(079b9h)		;d775	3a b9 79 	: . y 
	cp 059h		;d778	fe 59 	. Y 
	jr z,ld785h		;d77a	28 09 	( . 
	cp 05eh		;d77c	fe 5e 	. ^ 
	jr nz,ld750h		;d77e	20 d0 	  . 
	call sub_d64bh		;d780	cd 4b d6 	. K . 
	jr ld78dh		;d783	18 08 	. . 
ld785h:
	call sub_d63dh		;d785	cd 3d d6 	. = . 
	jr ld78dh		;d788	18 03 	. . 
ld78ah:
	call ld62ch		;d78a	cd 2c d6 	. , . 
ld78dh:
	jr nc,ld7c0h		;d78d	30 31 	0 1 
	jr ld793h		;d78f	18 02 	. . 
ld791h:
	pop hl			;d791	e1 	. 
	dec d			;d792	15 	. 
ld793h:
	dec e			;d793	1d 	. 
	ld a,00dh		;d794	3e 0d 	> . 
	ld (de),a			;d796	12 	. 
	scf			;d797	37 	7 
ld798h:
	jp ld4efh		;d798	c3 ef d4 	. . . 
ld79bh:
	call sub_d6f2h		;d79b	cd f2 d6 	. . . 
	push hl			;d79e	e5 	. 
	push de			;d79f	d5 	. 
	ld iy,07f17h		;d7a0	fd 21 17 7f 	. ! .  
	push bc			;d7a4	c5 	. 
	call sub_ca16h		;d7a5	cd 16 ca 	. . . 
	pop bc			;d7a8	c1 	. 
	push iy		;d7a9	fd e5 	. . 
	pop de			;d7ab	d1 	. 
	ld a,e			;d7ac	7b 	{ 
	inc a			;d7ad	3c 	< 
	pop de			;d7ae	d1 	. 
	ld hl,07f18h		;d7af	21 18 7f 	! .  
ld7b2h:
	push bc			;d7b2	c5 	. 
	ldi		;d7b3	ed a0 	. . 
	pop bc			;d7b5	c1 	. 
	inc e			;d7b6	1c 	. 
	dec e			;d7b7	1d 	. 
	jr z,ld791h		;d7b8	28 d7 	( . 
	cp l			;d7ba	bd 	. 
	jr nz,ld7b2h		;d7bb	20 f5 	  . 
	pop hl			;d7bd	e1 	. 
	inc hl			;d7be	23 	# 
	inc hl			;d7bf	23 	# 
ld7c0h:
	jp ld709h		;d7c0	c3 09 d7 	. . . 
sub_d7c3h:
	push bc			;d7c3	c5 	. 
	ld c,(hl)			;d7c4	4e 	N 
	inc hl			;d7c5	23 	# 
	push hl			;d7c6	e5 	. 
	ld b,000h		;d7c7	06 00 	. . 
	ld hl,lcfe5h		;d7c9	21 e5 cf 	! . . 
	add hl,bc			;d7cc	09 	. 
	add hl,bc			;d7cd	09 	. 
	ld a,(hl)			;d7ce	7e 	~ 
	inc hl			;d7cf	23 	# 
	ld h,(hl)			;d7d0	66 	f 
	ld l,a			;d7d1	6f 	o 
	or h			;d7d2	b4 	. 
	jr z,ld7dbh		;d7d3	28 06 	( . 
	call sub_d7ffh		;d7d5	cd ff d7 	. . . 
ld7d8h:
	pop hl			;d7d8	e1 	. 
	pop bc			;d7d9	c1 	. 
	ret			;d7da	c9 	. 
ld7dbh:
	ld hl,ld3fch		;d7db	21 fc d3 	! . . 
	call sub_d7ffh		;d7de	cd ff d7 	. . . 
	jr c,ld7d8h		;d7e1	38 f5 	8 . 
	ld a,020h		;d7e3	3e 20 	>   
	ld (de),a			;d7e5	12 	. 
	inc e			;d7e6	1c 	. 
	jr z,ld7fch		;d7e7	28 13 	( . 
	ld a,c			;d7e9	79 	y 
	call sub_f84eh		;d7ea	cd 4e f8 	. N . 
	call sub_d867h		;d7ed	cd 67 d8 	. g . 
	ld (de),a			;d7f0	12 	. 
	inc e			;d7f1	1c 	. 
	jr z,ld7fch		;d7f2	28 08 	( . 
	ld a,c			;d7f4	79 	y 
	call sub_d867h		;d7f5	cd 67 d8 	. g . 
	ld (de),a			;d7f8	12 	. 
	inc e			;d7f9	1c 	. 
	jr nz,ld7d8h		;d7fa	20 dc 	  . 
ld7fch:
	scf			;d7fc	37 	7 
	jr ld7d8h		;d7fd	18 d9 	. . 
sub_d7ffh:
	ld b,(hl)			;d7ff	46 	F 
	scf			;d800	37 	7 
ld801h:
	inc hl			;d801	23 	# 
	ld a,(hl)			;d802	7e 	~ 
	ld (de),a			;d803	12 	. 
	inc e			;d804	1c 	. 
	ret z			;d805	c8 	. 
	djnz ld801h		;d806	10 f9 	. . 
	ccf			;d808	3f 	? 
	ret			;d809	c9 	. 
sub_d80ah:
	push hl			;d80a	e5 	. 
	ex de,hl			;d80b	eb 	. 
	ld hl,lcfb1h		;d80c	21 b1 cf 	! . . 
	sub 041h		;d80f	d6 41 	. A 
	add a,a			;d811	87 	. 
	ld b,000h		;d812	06 00 	. . 
	ld c,a			;d814	4f 	O 
	add hl,bc			;d815	09 	. 
	ld a,(hl)			;d816	7e 	~ 
	inc hl			;d817	23 	# 
	ld h,(hl)			;d818	66 	f 
	ld l,a			;d819	6f 	o 
	or h			;d81a	b4 	. 
	jr z,ld863h		;d81b	28 46 	( F 
ld81dh:
	ld b,(hl)			;d81d	46 	F 
	inc b			;d81e	04 	. 
	dec b			;d81f	05 	. 
	jr z,ld863h		;d820	28 41 	( A 
	dec b			;d822	05 	. 
	inc hl			;d823	23 	# 
ld824h:
	inc de			;d824	13 	. 
	ld a,(de)			;d825	1a 	. 
	cp 02eh		;d826	fe 2e 	. . 
	jr z,ld853h		;d828	28 29 	( ) 
	call sub_d8b9h		;d82a	cd b9 d8 	. . . 
	inc hl			;d82d	23 	# 
	cp (hl)			;d82e	be 	. 
	jr nz,ld85ah		;d82f	20 29 	  ) 
	djnz ld824h		;d831	10 f1 	. . 
	inc hl			;d833	23 	# 
ld834h:
	ld a,(hl)			;d834	7e 	~ 
	and a			;d835	a7 	. 
	jr nz,ld84fh		;d836	20 17 	  . 
	inc de			;d838	13 	. 
ld839h:
	ld a,(de)			;d839	1a 	. 
	cp 020h		;d83a	fe 20 	.   
	inc de			;d83c	13 	. 
	jr z,ld839h		;d83d	28 fa 	( . 
	call sub_d872h		;d83f	cd 72 d8 	. r . 
	jr c,ld863h		;d842	38 1f 	8 . 
	call sub_f84eh		;d844	cd 4e f8 	. N . 
	ld c,a			;d847	4f 	O 
	ld a,(de)			;d848	1a 	. 
	call sub_d872h		;d849	cd 72 d8 	. r . 
	jr c,ld863h		;d84c	38 15 	8 . 
	or c			;d84e	b1 	. 
ld84fh:
	ex de,hl			;d84f	eb 	. 
	pop bc			;d850	c1 	. 
	inc hl			;d851	23 	# 
	ret			;d852	c9 	. 
ld853h:
	inc b			;d853	04 	. 
	ld c,b			;d854	48 	H 
	ld b,000h		;d855	06 00 	. . 
	add hl,bc			;d857	09 	. 
	jr ld834h		;d858	18 da 	. . 
ld85ah:
	inc b			;d85a	04 	. 
	ld c,b			;d85b	48 	H 
	ld b,000h		;d85c	06 00 	. . 
	add hl,bc			;d85e	09 	. 
	pop de			;d85f	d1 	. 
	push de			;d860	d5 	. 
	jr ld81dh		;d861	18 ba 	. . 
ld863h:
	ex de,hl			;d863	eb 	. 
	pop hl			;d864	e1 	. 
	scf			;d865	37 	7 
	ret			;d866	c9 	. 
sub_d867h:
	and 00fh		;d867	e6 0f 	. . 
	cp 00ah		;d869	fe 0a 	. . 
	jr c,ld86fh		;d86b	38 02 	8 . 
	add a,007h		;d86d	c6 07 	. . 
ld86fh:
	add a,030h		;d86f	c6 30 	. 0 
	ret			;d871	c9 	. 
sub_d872h:
	call sub_d8c6h		;d872	cd c6 d8 	. . . 
	jr nc,ld882h		;d875	30 0b 	0 . 
	and 0dfh		;d877	e6 df 	. . 
	cp 041h		;d879	fe 41 	. A 
	ret c			;d87b	d8 	. 
	cp 047h		;d87c	fe 47 	. G 
	ccf			;d87e	3f 	? 
	ret c			;d87f	d8 	. 
	add a,009h		;d880	c6 09 	. . 
ld882h:
	and 00fh		;d882	e6 0f 	. . 
	ret			;d884	c9 	. 
sub_d885h:
	push de			;d885	d5 	. 
	call sub_d8a5h		;d886	cd a5 d8 	. . . 
	jr nc,ld89ah		;d889	30 0f 	0 . 
ld88bh:
	ld a,(hl)			;d88b	7e 	~ 
	inc hl			;d88c	23 	# 
	cp 020h		;d88d	fe 20 	.   
	jr z,ld88bh		;d88f	28 fa 	( . 
	dec hl			;d891	2b 	+ 
	cp 00dh		;d892	fe 0d 	. . 
	jr z,ld89eh		;d894	28 08 	( . 
	inc sp			;d896	33 	3 
	inc sp			;d897	33 	3 
	scf			;d898	37 	7 
	ret			;d899	c9 	. 
ld89ah:
	cp 00dh		;d89a	fe 0d 	. . 
	jr nz,ld8a1h		;d89c	20 03 	  . 
ld89eh:
	pop de			;d89e	d1 	. 
ld89fh:
	and a			;d89f	a7 	. 
	ret			;d8a0	c9 	. 
ld8a1h:
	inc sp			;d8a1	33 	3 
	inc sp			;d8a2	33 	3 
	jr ld89fh		;d8a3	18 fa 	. . 
sub_d8a5h:
	call sub_d8b4h		;d8a5	cd b4 d8 	. . . 
	ld a,(hl)			;d8a8	7e 	~ 
	cp 020h		;d8a9	fe 20 	.   
	jr nz,ld89fh		;d8ab	20 f2 	  . 
	ld (de),a			;d8ad	12 	. 
	inc hl			;d8ae	23 	# 
	inc e			;d8af	1c 	. 
	jr nz,sub_d8a5h		;d8b0	20 f3 	  . 
	scf			;d8b2	37 	7 
	ret			;d8b3	c9 	. 
sub_d8b4h:
	ld a,b			;d8b4	78 	x 
	cp l			;d8b5	bd 	. 
	ret nz			;d8b6	c0 	. 
	ld c,e			;d8b7	4b 	K 
	ret			;d8b8	c9 	. 
sub_d8b9h:
	ld c,a			;d8b9	4f 	O 
	and 0dfh		;d8ba	e6 df 	. . 
	cp 041h		;d8bc	fe 41 	. A 
	jr c,ld8c4h		;d8be	38 04 	8 . 
	cp 05bh		;d8c0	fe 5b 	. [ 
	ccf			;d8c2	3f 	? 
	ret nc			;d8c3	d0 	. 
ld8c4h:
	ld a,c			;d8c4	79 	y 
	ret			;d8c5	c9 	. 
sub_d8c6h:
	cp 030h		;d8c6	fe 30 	. 0 
	ret c			;d8c8	d8 	. 
	cp 03ah		;d8c9	fe 3a 	. : 
	ccf			;d8cb	3f 	? 
	ret			;d8cc	c9 	. 
ld8cdh:
	exx			;d8cd	d9 	. 
	ld b,000h		;d8ce	06 00 	. . 
	exx			;d8d0	d9 	. 
	ld ix,(07973h)		;d8d1	dd 2a 73 79 	. * s y 
	ld hl,(079e1h)		;d8d5	2a e1 79 	* . y 
	inc hl			;d8d8	23 	# 
ld8d9h:
	push ix		;d8d9	dd e5 	. . 
	ld (079e3h),hl		;d8db	22 e3 79 	" . y 
	call sub_d9f0h		;d8de	cd f0 d9 	. . . 
	jr nc,ld945h		;d8e1	30 62 	0 b 
	push ix		;d8e3	dd e5 	. . 
	pop hl			;d8e5	e1 	. 
	ld b,(hl)			;d8e6	46 	F 
	ld de,07bffh		;d8e7	11 ff 7b 	. . { 
ld8eah:
	inc hl			;d8ea	23 	# 
	inc de			;d8eb	13 	. 
	ld a,(hl)			;d8ec	7e 	~ 
	cp 009h		;d8ed	fe 09 	. . 
	jr nz,ld8f3h		;d8ef	20 02 	  . 
	ld a,020h		;d8f1	3e 20 	>   
ld8f3h:
	ld (de),a			;d8f3	12 	. 
	djnz ld8eah		;d8f4	10 f4 	. . 
	push hl			;d8f6	e5 	. 
	ld ix,07bffh		;d8f7	dd 21 ff 7b 	. ! . { 
	ld iy,07d00h		;d8fb	fd 21 00 7d 	. ! . } 
	push iy		;d8ff	fd e5 	. . 
	call 0d470h		;d901	cd 70 d4 	. p . 
	pop de			;d904	d1 	. 
	call sub_da23h		;d905	cd 23 da 	. # . 
	pop ix		;d908	dd e1 	. . 
	ld de,(079e3h)		;d90a	ed 5b e3 79 	. [ . y 
	ld hl,(079fch)		;d90e	2a fc 79 	* . y 
	scf			;d911	37 	7 
	sbc hl,de		;d912	ed 52 	. R 
	call sub_da06h		;d914	cd 06 da 	. . . 
	pop de			;d917	d1 	. 
	jr nc,ld8d9h		;d918	30 bf 	0 . 
	ld hl,(07973h)		;d91a	2a 73 79 	* s y 
	or a			;d91d	b7 	. 
	sbc hl,de		;d91e	ed 52 	. R 
	ccf			;d920	3f 	? 
	jr c,ld94eh		;d921	38 2b 	8 + 
	ex de,hl			;d923	eb 	. 
	exx			;d924	d9 	. 
	bit 0,b		;d925	cb 40 	. @ 
	exx			;d927	d9 	. 
	jr nz,ld939h		;d928	20 0f 	  . 
	push hl			;d92a	e5 	. 
	call 0be44h		;d92b	cd 44 be 	. D . 
	ld a,003h		;d92e	3e 03 	> . 
	call 0bcf7h		;d930	cd f7 bc 	. . . 
	pop hl			;d933	e1 	. 
	jr nz,ld94dh		;d934	20 17 	  . 
	call sub_d9dch		;d936	cd dc d9 	. . . 
ld939h:
	call sub_d953h		;d939	cd 53 d9 	. S . 
	ld ix,(07973h)		;d93c	dd 2a 73 79 	. * s y 
	ld hl,(079e3h)		;d940	2a e3 79 	* . y 
	jr ld8d9h		;d943	18 94 	. . 
ld945h:
	pop hl			;d945	e1 	. 
	exx			;d946	d9 	. 
	bit 0,b		;d947	cb 40 	. @ 
	exx			;d949	d9 	. 
	call nz,sub_d94fh		;d94a	c4 4f d9 	. O . 
ld94dh:
	or a			;d94d	b7 	. 
ld94eh:
	ret			;d94e	c9 	. 
sub_d94fh:
	ld hl,(07975h)		;d94f	2a 75 79 	* u y 
	dec hl			;d952	2b 	+ 
sub_d953h:
	ld de,(07973h)		;d953	ed 5b 73 79 	. [ s y 
	or a			;d957	b7 	. 
	sbc hl,de		;d958	ed 52 	. R 
	ld b,h			;d95a	44 	D 
	ld c,l			;d95b	4d 	M 
	ex de,hl			;d95c	eb 	. 
	inc hl			;d95d	23 	# 
	call 0bdc9h		;d95e	cd c9 bd 	. . . 
	ret			;d961	c9 	. 
ld962h:
	exx			;d962	d9 	. 
	ld b,000h		;d963	06 00 	. . 
	exx			;d965	d9 	. 
	call 0bf97h		;d966	cd 97 bf 	. . . 
	ld ix,(079e1h)		;d969	dd 2a e1 79 	. * . y 
	ld hl,(07973h)		;d96d	2a 73 79 	* s y 
	inc hl			;d970	23 	# 
ld971h:
	push ix		;d971	dd e5 	. . 
	ld (07975h),hl		;d973	22 75 79 	" u y 
	call sub_d9f0h		;d976	cd f0 d9 	. . . 
	jr nc,ld9c3h		;d979	30 48 	0 H 
	ld iy,07d00h		;d97b	fd 21 00 7d 	. ! . } 
	push iy		;d97f	fd e5 	. . 
	call sub_d6f8h		;d981	cd f8 d6 	. . . 
	pop de			;d984	d1 	. 
	call sub_da23h		;d985	cd 23 da 	. # . 
	ld de,(07975h)		;d988	ed 5b 75 79 	. [ u y 
	ld hl,(079e1h)		;d98c	2a e1 79 	* . y 
	scf			;d98f	37 	7 
	sbc hl,de		;d990	ed 52 	. R 
	call sub_da06h		;d992	cd 06 da 	. . . 
	pop de			;d995	d1 	. 
	jr nc,ld971h		;d996	30 d9 	0 . 
	ld hl,(079e1h)		;d998	2a e1 79 	* . y 
	or a			;d99b	b7 	. 
	sbc hl,de		;d99c	ed 52 	. R 
	ccf			;d99e	3f 	? 
	jr c,ld9cch		;d99f	38 2b 	8 + 
	ex de,hl			;d9a1	eb 	. 
	exx			;d9a2	d9 	. 
	bit 0,b		;d9a3	cb 40 	. @ 
	exx			;d9a5	d9 	. 
	jr nz,ld9b7h		;d9a6	20 0f 	  . 
	push hl			;d9a8	e5 	. 
	call 0be44h		;d9a9	cd 44 be 	. D . 
	ld a,003h		;d9ac	3e 03 	> . 
	call 0bcf1h		;d9ae	cd f1 bc 	. . . 
	pop hl			;d9b1	e1 	. 
	jr nz,ld9cbh		;d9b2	20 17 	  . 
	call sub_d9dch		;d9b4	cd dc d9 	. . . 
ld9b7h:
	call sub_d9d6h		;d9b7	cd d6 d9 	. . . 
	ld ix,(079e1h)		;d9ba	dd 2a e1 79 	. * . y 
	ld hl,(07975h)		;d9be	2a 75 79 	* u y 
	jr ld971h		;d9c1	18 ae 	. . 
ld9c3h:
	pop hl			;d9c3	e1 	. 
	exx			;d9c4	d9 	. 
	bit 0,b		;d9c5	cb 40 	. @ 
	exx			;d9c7	d9 	. 
	call nz,sub_d9d2h		;d9c8	c4 d2 d9 	. . . 
ld9cbh:
	or a			;d9cb	b7 	. 
ld9cch:
	push af			;d9cc	f5 	. 
	call 0bf9dh		;d9cd	cd 9d bf 	. . . 
	pop af			;d9d0	f1 	. 
	ret			;d9d1	c9 	. 
sub_d9d2h:
	ld hl,(079e3h)		;d9d2	2a e3 79 	* . y 
	dec hl			;d9d5	2b 	+ 
sub_d9d6h:
	ld (079e1h),hl		;d9d6	22 e1 79 	" . y 
	ld (hl),0ffh		;d9d9	36 ff 	6 . 
	ret			;d9db	c9 	. 
sub_d9dch:
	exx			;d9dc	d9 	. 
	push bc			;d9dd	c5 	. 
	ld a,020h		;d9de	3e 20 	>   
	ld b,018h		;d9e0	06 18 	. . 
	ld de,00300h		;d9e2	11 00 03 	. . . 
	call 0bfeeh		;d9e5	cd ee bf 	. . . 
	call 0bfcah		;d9e8	cd ca bf 	. . . 
	pop bc			;d9eb	c1 	. 
	set 0,b		;d9ec	cb c0 	. . 
	exx			;d9ee	d9 	. 
	ret			;d9ef	c9 	. 
sub_d9f0h:
	ld (hl),0ffh		;d9f0	36 ff 	6 . 
	or a			;d9f2	b7 	. 
	ld l,(ix+001h)		;d9f3	dd 6e 01 	. n . 
	inc l			;d9f6	2c 	, 
	ret z			;d9f7	c8 	. 
	dec l			;d9f8	2d 	- 
	ld h,(ix+002h)		;d9f9	dd 66 02 	. f . 
	ld (07f28h),hl		;d9fc	22 28 7f 	" (  
	ld de,00003h		;d9ff	11 03 00 	. . . 
	add ix,de		;da02	dd 19 	. . 
	scf			;da04	37 	7 
	ret			;da05	c9 	. 
sub_da06h:
	ld c,a			;da06	4f 	O 
	xor a			;da07	af 	. 
	ld b,a			;da08	47 	G 
	sbc hl,bc		;da09	ed 42 	. B 
	ret c			;da0b	d8 	. 
	ld c,003h		;da0c	0e 03 	. . 
	sbc hl,bc		;da0e	ed 42 	. B 
	ret c			;da10	d8 	. 
	ld hl,07f28h		;da11	21 28 7f 	! (  
	ldi		;da14	ed a0 	. . 
	ldi		;da16	ed a0 	. . 
	ld hl,(07f2ah)		;da18	2a 2a 7f 	* *  
	ld c,(hl)			;da1b	4e 	N 
	ld b,000h		;da1c	06 00 	. . 
	inc bc			;da1e	03 	. 
	ldir		;da1f	ed b0 	. . 
	ex de,hl			;da21	eb 	. 
	ret			;da22	c9 	. 
sub_da23h:
	ld (07f2ah),de		;da23	ed 53 2a 7f 	. S *  
	push iy		;da27	fd e5 	. . 
	pop hl			;da29	e1 	. 
	ld a,l			;da2a	7d 	} 
	sub e			;da2b	93 	. 
	ld (de),a			;da2c	12 	. 
	ret			;da2d	c9 	. 
lda2eh:
	ld hl,07f33h		;da2e	21 33 7f 	! 3  
	ld a,(hl)			;da31	7e 	~ 
	and 09fh		;da32	e6 9f 	. . 
	or 002h		;da34	f6 02 	. . 
	ld (hl),a			;da36	77 	w 
	call 0bea1h		;da37	cd a1 be 	. . . 
	jp c,08356h		;da3a	da 56 83 	. V . 
	ld a,(07f33h)		;da3d	3a 33 7f 	: 3  
	and 004h		;da40	e6 04 	. . 
lda42h:
	jp nz,08379h		;da42	c2 79 83 	. y . 
	call sub_f844h		;da45	cd 44 f8 	. D . 
	cp 03dh		;da48	fe 3d 	. = 
	jr nz,lda42h		;da4a	20 f6 	  . 
	inc iy		;da4c	fd 23 	. # 
	ld (07f0ah),iy		;da4e	fd 22 0a 7f 	. " .  
	ld a,(079f3h)		;da52	3a f3 79 	: . y 
	cp 000h		;da55	fe 00 	. . 
	jp z,08380h		;da57	ca 80 83 	. . . 
	ld l,a			;da5a	6f 	o 
	ld h,07ah		;da5b	26 7a 	& z 
	ld de,(07f0ah)		;da5d	ed 5b 0a 7f 	. [ .  
	ld (hl),e			;da61	73 	s 
	inc l			;da62	2c 	, 
	ld (hl),d			;da63	72 	r 
	push de			;da64	d5 	. 
	call 0bfbbh		;da65	cd bb bf 	. . . 
	pop de			;da68	d1 	. 
	ret c			;da69	d8 	. 
	ld a,(07f14h)		;da6a	3a 14 7f 	: .  
	cp 0d0h		;da6d	fe d0 	. . 
	jp nc,ldb0eh		;da6f	d2 0e db 	. . . 
	ld hl,07f10h		;da72	21 10 7f 	! .  
	ld bc,00008h		;da75	01 08 00 	. . . 
	ldir		;da78	ed b0 	. . 
	call sub_f844h		;da7a	cd 44 f8 	. D . 
	cp 0feh		;da7d	fe fe 	. . 
	jr nz,lda42h		;da7f	20 c1 	  . 
	inc ix		;da81	dd 23 	. # 
	ld a,(ix+000h)		;da83	dd 7e 00 	. ~ . 
	cp 052h		;da86	fe 52 	. R 
	jr nz,lda42h		;da88	20 b8 	  . 
	call 0bfbbh		;da8a	cd bb bf 	. . . 
	ret c			;da8d	d8 	. 
	ld a,(07f14h)		;da8e	3a 14 7f 	: .  
	cp 0d0h		;da91	fe d0 	. . 
	jr nc,ldb0eh		;da93	30 79 	0 y 
	ld a,(079f3h)		;da95	3a f3 79 	: . y 
	add a,002h		;da98	c6 02 	. . 
	ld e,a			;da9a	5f 	_ 
	ld d,07ah		;da9b	16 7a 	. z 
	ld hl,07f10h		;da9d	21 10 7f 	! .  
	ld bc,00007h		;daa0	01 07 00 	. . . 
	ldir		;daa3	ed b0 	. . 
	call sub_f844h		;daa5	cd 44 f8 	. D . 
	cp 0feh		;daa8	fe fe 	. . 
	jr nz,ldadch		;daaa	20 30 	  0 
	ld a,(ix+001h)		;daac	dd 7e 01 	. ~ . 
	cp 053h		;daaf	fe 53 	. S 
	jr nz,ldadch		;dab1	20 29 	  ) 
	inc ix		;dab3	dd 23 	. # 
	call 0bfbbh		;dab5	cd bb bf 	. . . 
	ret c			;dab8	d8 	. 
	ld a,(07f14h)		;dab9	3a 14 7f 	: .  
	cp 0d0h		;dabc	fe d0 	. . 
	jr nc,ldb0eh		;dabe	30 4e 	0 N 
ldac0h:
	ld a,(079f3h)		;dac0	3a f3 79 	: . y 
	add a,009h		;dac3	c6 09 	. . 
	ld e,a			;dac5	5f 	_ 
	ld d,07ah		;dac6	16 7a 	. z 
	ld hl,07f10h		;dac8	21 10 7f 	! .  
	ld bc,00007h		;dacb	01 07 00 	. . . 
	ldir		;dace	ed b0 	. . 
	call sub_dae8h		;dad0	cd e8 da 	. . . 
	ld hl,079f3h		;dad3	21 f3 79 	! . y 
	ld a,(hl)			;dad6	7e 	~ 
	add a,012h		;dad7	c6 12 	. . 
	ld (hl),a			;dad9	77 	w 
	and a			;dada	a7 	. 
	ret			;dadb	c9 	. 
ldadch:
	call 08029h		;dadc	cd 29 80 	. ) . 
	ld hl,07f12h		;dadf	21 12 7f 	! .  
	set 4,(hl)		;dae2	cb e6 	. . 
	dec ix		;dae4	dd 2b 	. + 
	jr ldac0h		;dae6	18 d8 	. . 
sub_dae8h:
	call sub_f844h		;dae8	cd 44 f8 	. D . 
	push ix		;daeb	dd e5 	. . 
	cp 03ah		;daed	fe 3a 	. : 
	jr z,ldb02h		;daef	28 11 	( . 
	cp 00dh		;daf1	fe 0d 	. . 
	jr nz,ldb09h		;daf3	20 14 	  . 
	ld a,(ix+001h)		;daf5	dd 7e 01 	. ~ . 
	cp 0ffh		;daf8	fe ff 	. . 
	jr z,ldb02h		;dafa	28 06 	( . 
	inc ix		;dafc	dd 23 	. # 
	inc ix		;dafe	dd 23 	. # 
	inc ix		;db00	dd 23 	. # 
ldb02h:
	push ix		;db02	dd e5 	. . 
	pop hl			;db04	e1 	. 
	ex de,hl			;db05	eb 	. 
	ld (hl),e			;db06	73 	s 
	inc hl			;db07	23 	# 
	ld (hl),d			;db08	72 	r 
ldb09h:
	pop ix		;db09	dd e1 	. . 
	dec ix		;db0b	dd 2b 	. + 
	ret			;db0d	c9 	. 
ldb0eh:
	jp 0838ch		;db0e	c3 8c 83 	. . . 
ldb11h:
	ld hl,07f33h		;db11	21 33 7f 	! 3  
	ld a,(hl)			;db14	7e 	~ 
	and 09dh		;db15	e6 9d 	. . 
	or 020h		;db17	f6 20 	.   
	ld (hl),a			;db19	77 	w 
	call sub_f844h		;db1a	cd 44 f8 	. D . 
	cp 05bh		;db1d	fe 5b 	. [ 
	jr nc,ldb83h		;db1f	30 62 	0 b 
	cp 041h		;db21	fe 41 	. A 
	jr c,ldb83h		;db23	38 5e 	8 ^ 
	ld c,a			;db25	4f 	O 
	ld a,(ix+001h)		;db26	dd 7e 01 	. ~ . 
	cp 00dh		;db29	fe 0d 	. . 
	jr z,ldb42h		;db2b	28 15 	( . 
	dec ix		;db2d	dd 2b 	. + 
	call 0bea1h		;db2f	cd a1 be 	. . . 
	ret c			;db32	d8 	. 
	ld a,(07f14h)		;db33	3a 14 7f 	: .  
	cp 0d0h		;db36	fe d0 	. . 
	jr nc,ldb0eh		;db38	30 d4 	0 . 
	ld (07f38h),ix		;db3a	dd 22 38 7f 	. " 8  
	inc iy		;db3e	fd 23 	. # 
	jr ldb66h		;db40	18 24 	. $ 
ldb42h:
	ld (07f38h),ix		;db42	dd 22 38 7f 	. " 8  
	ld a,c			;db46	79 	y 
	sub 041h		;db47	d6 41 	. A 
	rlca			;db49	07 	. 
	rlca			;db4a	07 	. 
	rlca			;db4b	07 	. 
	ld c,a			;db4c	4f 	O 
	xor a			;db4d	af 	. 
	ld b,a			;db4e	47 	G 
	ld hl,078c8h		;db4f	21 c8 78 	! . x 
	sbc hl,bc		;db52	ed 42 	. B 
	push hl			;db54	e5 	. 
	pop iy		;db55	fd e1 	. . 
	ld de,07f10h		;db57	11 10 7f 	. .  
	ld bc,00008h		;db5a	01 08 00 	. . . 
	ldir		;db5d	ed b0 	. . 
	ld a,(07f10h)		;db5f	3a 10 7f 	: .  
	cp 0f5h		;db62	fe f5 	. . 
	jr z,ldb0eh		;db64	28 a8 	( . 
ldb66h:
	ld a,(079f3h)		;db66	3a f3 79 	: . y 
ldb69h:
	cp 0a6h		;db69	fe a6 	. . 
	jp z,lf8e7h		;db6b	ca e7 f8 	. . . 
	sub 012h		;db6e	d6 12 	. . 
	ld l,a			;db70	6f 	o 
	ld h,07ah		;db71	26 7a 	& z 
	ld e,(hl)			;db73	5e 	^ 
	inc l			;db74	2c 	, 
	ld d,(hl)			;db75	56 	V 
	push iy		;db76	fd e5 	. . 
	pop hl			;db78	e1 	. 
	and a			;db79	a7 	. 
	sbc hl,de		;db7a	ed 52 	. R 
	jr z,ldba1h		;db7c	28 23 	( # 
	ld (079f3h),a		;db7e	32 f3 79 	2 . y 
	jr ldb69h		;db81	18 e6 	. . 
ldb83h:
	dec ix		;db83	dd 2b 	. + 
	ld a,(079f3h)		;db85	3a f3 79 	: . y 
	cp 0a6h		;db88	fe a6 	. . 
	jp z,lf8e7h		;db8a	ca e7 f8 	. . . 
	sub 012h		;db8d	d6 12 	. . 
	ld l,a			;db8f	6f 	o 
	ld h,07ah		;db90	26 7a 	& z 
	ld e,(hl)			;db92	5e 	^ 
	inc l			;db93	2c 	, 
	ld d,(hl)			;db94	56 	V 
	push de			;db95	d5 	. 
	pop iy		;db96	fd e1 	. . 
	ld hl,07f10h		;db98	21 10 7f 	! .  
	ex de,hl			;db9b	eb 	. 
	ld bc,00008h		;db9c	01 08 00 	. . . 
	ldir		;db9f	ed b0 	. . 
ldba1h:
	add a,002h		;dba1	c6 02 	. . 
	ld l,a			;dba3	6f 	o 
	ld h,07ah		;dba4	26 7a 	& z 
	ld de,07f28h		;dba6	11 28 7f 	. (  
	ld bc,00007h		;dba9	01 07 00 	. . . 
	ldir		;dbac	ed b0 	. . 
	xor a			;dbae	af 	. 
	ld (de),a			;dbaf	12 	. 
	ld de,07f18h		;dbb0	11 18 7f 	. .  
	ld c,007h		;dbb3	0e 07 	. . 
	ldir		;dbb5	ed b0 	. . 
	ld (de),a			;dbb7	12 	. 
	ld a,(07f19h)		;dbb8	3a 19 7f 	: .  
	push af			;dbbb	f5 	. 
	call 0be7ah		;dbbc	cd 7a be 	. z . 
	jr c,ldc30h		;dbbf	38 6f 	8 o 
	xor a			;dbc1	af 	. 
	ld (07f17h),a		;dbc2	32 17 7f 	2 .  
	push iy		;dbc5	fd e5 	. . 
	pop de			;dbc7	d1 	. 
	ld hl,07f10h		;dbc8	21 10 7f 	! .  
	ld bc,00008h		;dbcb	01 08 00 	. . . 
	ldir		;dbce	ed b0 	. . 
	pop af			;dbd0	f1 	. 
	and 008h		;dbd1	e6 08 	. . 
	jr z,ldbd8h		;dbd3	28 03 	( . 
	call sub_dc5eh		;dbd5	cd 5e dc 	. ^ . 
ldbd8h:
	ld a,(07f11h)		;dbd8	3a 11 7f 	: .  
	and 008h		;dbdb	e6 08 	. . 
	jr nz,ldc32h		;dbdd	20 53 	  S 
	ld a,(07f29h)		;dbdf	3a 29 7f 	: )  
	and 008h		;dbe2	e6 08 	. . 
	jr nz,ldc55h		;dbe4	20 6f 	  o 
ldbe6h:
	ld a,(07f10h)		;dbe6	3a 10 7f 	: .  
	and 0f0h		;dbe9	e6 f0 	. . 
	jr nz,ldc47h		;dbeb	20 5a 	  Z 
	ld a,(07f28h)		;dbed	3a 28 7f 	: (  
	and 0f0h		;dbf0	e6 f0 	. . 
	jr nz,ldc3eh		;dbf2	20 4a 	  J 
ldbf4h:
	ld hl,07f10h		;dbf4	21 10 7f 	! .  
	ld de,07f28h		;dbf7	11 28 7f 	. (  
	ld a,(de)			;dbfa	1a 	. 
	cp (hl)			;dbfb	be 	. 
	jr c,ldc55h		;dbfc	38 57 	8 W 
	jr nz,ldc1ah		;dbfe	20 1a 	  . 
	inc l			;dc00	2c 	, 
	inc e			;dc01	1c 	. 
	ld a,(de)			;dc02	1a 	. 
	cp (hl)			;dc03	be 	. 
	jr c,ldc55h		;dc04	38 4f 	8 O 
	jr nz,ldc1ah		;dc06	20 12 	  . 
	ld hl,07f12h		;dc08	21 12 7f 	! .  
	ld de,07f2ah		;dc0b	11 2a 7f 	. *  
	ld b,005h		;dc0e	06 05 	. . 
ldc10h:
	ld a,(de)			;dc10	1a 	. 
	cp (hl)			;dc11	be 	. 
	jr c,ldc55h		;dc12	38 41 	8 A 
	jr nz,ldc1ah		;dc14	20 04 	  . 
	inc e			;dc16	1c 	. 
	inc l			;dc17	2c 	, 
	djnz ldc10h		;dc18	10 f6 	. . 
ldc1ah:
	ld a,(079f3h)		;dc1a	3a f3 79 	: . y 
	sub 002h		;dc1d	d6 02 	. . 
	ld l,a			;dc1f	6f 	o 
	ld h,07ah		;dc20	26 7a 	& z 
	ld e,(hl)			;dc22	5e 	^ 
	inc l			;dc23	2c 	, 
	ld d,(hl)			;dc24	56 	V 
	ld (07f3ah),de		;dc25	ed 53 3a 7f 	. S :  
	ld hl,07f36h		;dc29	21 36 7f 	! 6  
	set 3,(hl)		;dc2c	cb de 	. . 
	and a			;dc2e	a7 	. 
	ret			;dc2f	c9 	. 
ldc30h:
	pop bc			;dc30	c1 	. 
	ret			;dc31	c9 	. 
ldc32h:
	ld a,(07f29h)		;dc32	3a 29 7f 	: )  
	and 008h		;dc35	e6 08 	. . 
	jr z,ldc1ah		;dc37	28 e1 	( . 
	call sub_dc5eh		;dc39	cd 5e dc 	. ^ . 
	jr ldbe6h		;dc3c	18 a8 	. . 
ldc3eh:
	ld a,(07f12h)		;dc3e	3a 12 7f 	: .  
	and 0f0h		;dc41	e6 f0 	. . 
	jr z,ldc1ah		;dc43	28 d5 	( . 
	jr ldc55h		;dc45	18 0e 	. . 
ldc47h:
	ld a,(07f28h)		;dc47	3a 28 7f 	: (  
	and 0f0h		;dc4a	e6 f0 	. . 
	jr nz,ldbf4h		;dc4c	20 a6 	  . 
	ld a,(07f2ah)		;dc4e	3a 2a 7f 	: *  
	and 0f0h		;dc51	e6 f0 	. . 
	jr nz,ldc1ah		;dc53	20 c5 	  . 
ldc55h:
	ld hl,079f3h		;dc55	21 f3 79 	! . y 
	ld a,(hl)			;dc58	7e 	~ 
	sub 012h		;dc59	d6 12 	. . 
	ld (hl),a			;dc5b	77 	w 
	and a			;dc5c	a7 	. 
	ret			;dc5d	c9 	. 
sub_dc5eh:
	ld hl,07f10h		;dc5e	21 10 7f 	! .  
	ld de,07f28h		;dc61	11 28 7f 	. (  
	ld b,008h		;dc64	06 08 	. . 
ldc66h:
	ld a,(de)			;dc66	1a 	. 
	ld c,(hl)			;dc67	4e 	N 
	ld (hl),a			;dc68	77 	w 
	ld a,c			;dc69	79 	y 
	ld (de),a			;dc6a	12 	. 
	inc e			;dc6b	1c 	. 
	inc l			;dc6c	2c 	, 
	djnz ldc66h		;dc6d	10 f7 	. . 
	ret			;dc6f	c9 	. 
ldc70h:
	ld a,(07902h)		;dc70	3a 02 79 	: . y 
	and 020h		;dc73	e6 20 	.   
	jp z,08369h		;dc75	ca 69 83 	. i . 
	ld a,(079d9h)		;dc78	3a d9 79 	: . y 
	and 010h		;dc7b	e6 10 	. . 
	jr nz,ldcb9h		;dc7d	20 3a 	  : 
	call sub_f844h		;dc7f	cd 44 f8 	. D . 
	cp 00dh		;dc82	fe 0d 	. . 
	jp nz,08379h		;dc84	c2 79 83 	. y . 
	dec ix		;dc87	dd 2b 	. + 
sub_dc89h:
	ld hl,(079e1h)		;dc89	2a e1 79 	* . y 
	ld (hl),0ffh		;dc8c	36 ff 	6 . 
	inc hl			;dc8e	23 	# 
	ld (hl),0ffh		;dc8f	36 ff 	6 . 
	ld (079e3h),hl		;dc91	22 e3 79 	" . y 
	inc hl			;dc94	23 	# 
	inc hl			;dc95	23 	# 
	ld (079feh),hl		;dc96	22 fe 79 	" . y 
	call 0be95h		;dc99	cd 95 be 	. . . 
	ld hl,079d9h		;dc9c	21 d9 79 	! . y 
	ld a,(hl)			;dc9f	7e 	~ 
	and 059h		;dca0	e6 59 	. Y 
	ld (hl),a			;dca2	77 	w 
	ld hl,079d8h		;dca3	21 d8 79 	! . y 
	ld a,(hl)			;dca6	7e 	~ 
	and 032h		;dca7	e6 32 	. 2 
	or 002h		;dca9	f6 02 	. . 
	ld (hl),a			;dcab	77 	w 
	ld hl,07f35h		;dcac	21 35 7f 	! 5  
	ld a,(hl)			;dcaf	7e 	~ 
	and 0c0h		;dcb0	e6 c0 	. . 
	ld (hl),a			;dcb2	77 	w 
	call 0be26h		;dcb3	cd 26 be 	. & . 
	call sub_f51ch		;dcb6	cd 1c f5 	. . . 
ldcb9h:
	and a			;dcb9	a7 	. 
	ret			;dcba	c9 	. 
ldcbbh:
	dec ix		;dcbb	dd 2b 	. + 
	ld a,010h		;dcbd	3e 10 	> . 
ldcbfh:
	ld (07f18h),a		;dcbf	32 18 7f 	2 .  
	jr ldcf1h		;dcc2	18 2d 	. - 
ldcc4h:
	ld a,008h		;dcc4	3e 08 	> . 
	jr ldcbfh		;dcc6	18 f7 	. . 
ldcc8h:
	ld hl,07f33h		;dcc8	21 33 7f 	! 3  
	ld a,(hl)			;dccb	7e 	~ 
	and 090h		;dccc	e6 90 	. . 
	or 040h		;dcce	f6 40 	. @ 
	ld (hl),a			;dcd0	77 	w 
	call 0bea1h		;dcd1	cd a1 be 	. . . 
	ret c			;dcd4	d8 	. 
	ld hl,(07f0ah)		;dcd5	2a 0a 7f 	* .  
	ld (07a9eh),hl		;dcd8	22 9e 7a 	" . z 
	ld a,(07f33h)		;dcdb	3a 33 7f 	: 3  
	and 004h		;dcde	e6 04 	. . 
	jr z,ldcc4h		;dce0	28 e2 	( . 
	call sub_f844h		;dce2	cd 44 f8 	. D . 
	cp 02ah		;dce5	fe 2a 	. * 
	jr nz,ldcbbh		;dce7	20 d2 	  . 
	call 0bfbbh		;dce9	cd bb bf 	. . . 
	ret c			;dcec	d8 	. 
	call 0bf55h		;dced	cd 55 bf 	. U . 
	ret c			;dcf0	d8 	. 
ldcf1h:
	ld hl,(079d0h)		;dcf1	2a d0 79 	* . y 
	ld (07f0ch),hl		;dcf4	22 0c 7f 	" .  
	ld de,07f0ch		;dcf7	11 0c 7f 	. .  
	call sub_f858h		;dcfa	cd 58 f8 	. X . 
	ld (07f0ah),bc		;dcfd	ed 43 0a 7f 	. C .  
	ld de,07f0dh		;dd01	11 0d 7f 	. .  
	call sub_f858h		;dd04	cd 58 f8 	. X . 
	call 0bf4fh		;dd07	cd 4f bf 	. O . 
ldd0ah:
	jp c,08388h		;dd0a	da 88 83 	. . . 
	ld a,(07f18h)		;dd0d	3a 18 7f 	: .  
	ld c,a			;dd10	4f 	O 
	ld b,000h		;dd11	06 00 	. . 
	call 0bf4fh		;dd13	cd 4f bf 	. O . 
	jr c,ldd0ah		;dd16	38 f2 	8 . 
	ld hl,(07f0ah)		;dd18	2a 0a 7f 	* .  
	ld (07f08h),hl		;dd1b	22 08 7f 	" .  
	ld de,00007h		;dd1e	11 07 00 	. . . 
	add hl,de			;dd21	19 	. 
	jr c,ldd0ah		;dd22	38 e6 	8 . 
	ex de,hl			;dd24	eb 	. 
	ld hl,(079fch)		;dd25	2a fc 79 	* . y 
	xor a			;dd28	af 	. 
	sbc hl,de		;dd29	ed 52 	. R 
	jr c,ldd0ah		;dd2b	38 dd 	8 . 
	push hl			;dd2d	e5 	. 
	pop iy		;dd2e	fd e1 	. . 
	call 0bf49h		;dd30	cd 49 bf 	. I . 
	jp nc,08388h		;dd33	d2 88 83 	. . . 
	ld hl,(07a9eh)		;dd36	2a 9e 7a 	* . z 
	ld (07f0ah),hl		;dd39	22 0a 7f 	" .  
	call 0bf43h		;dd3c	cd 43 bf 	. C . 
	ld hl,(07f08h)		;dd3f	2a 08 7f 	* .  
	ld de,00003h		;dd42	11 03 00 	. . . 
	add hl,de			;dd45	19 	. 
	ex de,hl			;dd46	eb 	. 
	push iy		;dd47	fd e5 	. . 
	pop hl			;dd49	e1 	. 
	inc hl			;dd4a	23 	# 
	ld (hl),d			;dd4b	72 	r 
	inc hl			;dd4c	23 	# 
	ld (hl),e			;dd4d	73 	s 
	ld de,(07f0ch)		;dd4e	ed 5b 0c 7f 	. [ .  
	inc hl			;dd52	23 	# 
	ld (hl),e			;dd53	73 	s 
	inc hl			;dd54	23 	# 
	ld (hl),d			;dd55	72 	r 
	inc hl			;dd56	23 	# 
	ld a,(07f18h)		;dd57	3a 18 7f 	: .  
	ld (hl),a			;dd5a	77 	w 
	push hl			;dd5b	e5 	. 
	pop iy		;dd5c	fd e1 	. . 
	call 0bf3dh		;dd5e	cd 3d bf 	. = . 
	call sub_f844h		;dd61	cd 44 f8 	. D . 
	cp 02ch		;dd64	fe 2c 	. , 
	jp z,ldcc8h		;dd66	ca c8 dc 	. . . 
	and a			;dd69	a7 	. 
	dec ix		;dd6a	dd 2b 	. + 
	ret			;dd6c	c9 	. 
ldd6dh:
	push ix		;dd6d	dd e5 	. . 
	ld hl,(079e1h)		;dd6f	2a e1 79 	* . y 
	inc hl			;dd72	23 	# 
	ld a,(hl)			;dd73	7e 	~ 
	inc a			;dd74	3c 	< 
	jp z,lddfbh		;dd75	ca fb dd 	. . . 
	call sub_f844h		;dd78	cd 44 f8 	. D . 
	cp 022h		;dd7b	fe 22 	. " 
	jr nz,lddefh		;dd7d	20 70 	  p 
	ld a,(ix+001h)		;dd7f	dd 7e 01 	. ~ . 
	cp 00dh		;dd82	fe 0d 	. . 
	jr z,lddefh		;dd84	28 69 	( i 
	inc ix		;dd86	dd 23 	. # 
	cp 022h		;dd88	fe 22 	. " 
	jr z,lddefh		;dd8a	28 63 	( c 
	push ix		;dd8c	dd e5 	. . 
	pop hl			;dd8e	e1 	. 
	ld de,079c0h		;dd8f	11 c0 79 	. . y 
	ld a,(079d9h)		;dd92	3a d9 79 	: . y 
	and 010h		;dd95	e6 10 	. . 
	jr z,lddc5h		;dd97	28 2c 	( , 
	ld b,008h		;dd99	06 08 	. . 
ldd9bh:
	ld a,(de)			;dd9b	1a 	. 
	and a			;dd9c	a7 	. 
	jr z,lddb2h		;dd9d	28 13 	( . 
	cp (hl)			;dd9f	be 	. 
	jr nz,lddf4h		;dda0	20 52 	  R 
	inc hl			;dda2	23 	# 
	inc de			;dda3	13 	. 
	djnz ldd9bh		;dda4	10 f5 	. . 
ldda6h:
	ld a,(hl)			;dda6	7e 	~ 
	cp 00dh		;dda7	fe 0d 	. . 
	jr z,lddbbh		;dda9	28 10 	( . 
	inc hl			;ddab	23 	# 
	cp 022h		;ddac	fe 22 	. " 
	jr nz,ldda6h		;ddae	20 f6 	  . 
	jr lddbbh		;ddb0	18 09 	. . 
lddb2h:
	ld a,(hl)			;ddb2	7e 	~ 
	cp 022h		;ddb3	fe 22 	. " 
	jr z,lddbch		;ddb5	28 05 	( . 
	cp 00dh		;ddb7	fe 0d 	. . 
	jr nz,lddf4h		;ddb9	20 39 	  9 
lddbbh:
	dec hl			;ddbb	2b 	+ 
lddbch:
	ex (sp),hl			;ddbc	e3 	. 
	pop ix		;ddbd	dd e1 	. . 
	ld hl,079d9h		;ddbf	21 d9 79 	! . y 
	res 4,(hl)		;ddc2	cb a6 	. . 
	ret			;ddc4	c9 	. 
lddc5h:
	ld bc,00008h		;ddc5	01 08 00 	. . . 
lddc8h:
	ld a,(hl)			;ddc8	7e 	~ 
	cp 00dh		;ddc9	fe 0d 	. . 
	jr z,lddeah		;ddcb	28 1d 	( . 
	cp 022h		;ddcd	fe 22 	. " 
	jr z,lddebh		;ddcf	28 1a 	( . 
	ldi		;ddd1	ed a0 	. . 
	jp pe,lddc8h		;ddd3	ea c8 dd 	. . . 
lddd6h:
	ld a,(hl)			;ddd6	7e 	~ 
	cp 00dh		;ddd7	fe 0d 	. . 
	jr z,ldde0h		;ddd9	28 05 	( . 
	inc hl			;dddb	23 	# 
	cp 022h		;dddc	fe 22 	. " 
	jr nz,lddd6h		;ddde	20 f6 	  . 
ldde0h:
	dec hl			;dde0	2b 	+ 
ldde1h:
	ex (sp),hl			;dde1	e3 	. 
	pop ix		;dde2	dd e1 	. . 
	ld hl,079d9h		;dde4	21 d9 79 	! . y 
	set 4,(hl)		;dde7	cb e6 	. . 
	ret			;dde9	c9 	. 
lddeah:
	dec hl			;ddea	2b 	+ 
lddebh:
	xor a			;ddeb	af 	. 
	ld (de),a			;ddec	12 	. 
	jr ldde1h		;dded	18 f2 	. . 
lddefh:
	inc sp			;ddef	33 	3 
	inc sp			;ddf0	33 	3 
	jp 08379h		;ddf1	c3 79 83 	. y . 
lddf4h:
	pop ix		;ddf4	dd e1 	. . 
	dec ix		;ddf6	dd 2b 	. + 
	jp lf8ffh		;ddf8	c3 ff f8 	. . . 
lddfbh:
	pop ix		;ddfb	dd e1 	. . 
	dec ix		;ddfd	dd 2b 	. + 
	jp lf8d3h		;ddff	c3 d3 f8 	. . . 
lde02h:
	call sub_de3dh		;de02	cd 3d de 	. = . 
	jp nz,08394h		;de05	c2 94 83 	. . . 
	call 0bfbbh		;de08	cd bb bf 	. . . 
	ret c			;de0b	d8 	. 
	call 0bf37h		;de0c	cd 37 bf 	. 7 . 
	ret c			;de0f	d8 	. 
	call sub_f844h		;de10	cd 44 f8 	. D . 
	cp 02ch		;de13	fe 2c 	. , 
	jp nz,08379h		;de15	c2 79 83 	. y . 
	ld hl,(07f18h)		;de18	2a 18 7f 	* .  
lde1bh:
	push hl			;de1b	e5 	. 
	call 0bfbbh		;de1c	cd bb bf 	. . . 
	jr c,lde3bh		;de1f	38 1a 	8 . 
	call 0bd5ah		;de21	cd 5a bd 	. Z . 
	jr c,lde3bh		;de24	38 15 	8 . 
	pop hl			;de26	e1 	. 
	bit 7,h		;de27	cb 7c 	. | 
	jr nz,lde2fh		;de29	20 04 	  . 
	ld a,(07f18h)		;de2b	3a 18 7f 	: .  
	ld (hl),a			;de2e	77 	w 
lde2fh:
	inc hl			;de2f	23 	# 
	call sub_f844h		;de30	cd 44 f8 	. D . 
	cp 02ch		;de33	fe 2c 	. , 
	jr z,lde1bh		;de35	28 e4 	( . 
	dec ix		;de37	dd 2b 	. + 
	and a			;de39	a7 	. 
	ret			;de3a	c9 	. 
lde3bh:
	pop hl			;de3b	e1 	. 
	ret			;de3c	c9 	. 
sub_de3dh:
	ld hl,07f36h		;de3d	21 36 7f 	! 6  
	bit 1,(hl)		;de40	cb 4e 	. N 
	ret z			;de42	c8 	. 
	ld hl,079d9h		;de43	21 d9 79 	! . y 
	bit 4,(hl)		;de46	cb 66 	. f 
	ret			;de48	c9 	. 
lde49h:
	ld hl,07f36h		;de49	21 36 7f 	! 6  
	set 2,(hl)		;de4c	cb d6 	. . 
	ret			;de4e	c9 	. 
lde4fh:
	ld hl,07f36h		;de4f	21 36 7f 	! 6  
	res 2,(hl)		;de52	cb 96 	. . 
	ret			;de54	c9 	. 
lde55h:
	ld a,(07902h)		;de55	3a 02 79 	: . y 
	and 020h		;de58	e6 20 	.   
	jp z,08369h		;de5a	ca 69 83 	. i . 
	ld a,(079d9h)		;de5d	3a d9 79 	: . y 
	and 010h		;de60	e6 10 	. . 
	jp nz,0bf79h		;de62	c2 79 bf 	. y . 
lde65h:
	ld hl,(079e1h)		;de65	2a e1 79 	* . y 
	inc hl			;de68	23 	# 
	ld b,(hl)			;de69	46 	F 
	inc b			;de6a	04 	. 
	jp z,0bf79h		;de6b	ca 79 bf 	. y . 
	dec b			;de6e	05 	. 
	ld (07f3ah),hl		;de6f	22 3a 7f 	" :  
	inc hl			;de72	23 	# 
	ld c,(hl)			;de73	4e 	N 
	ld (07f2ah),bc		;de74	ed 43 2a 7f 	. C *  
	ld (07f3ch),bc		;de78	ed 43 3c 7f 	. C <  
	ld hl,0000ah		;de7c	21 0a 00 	! . . 
	ld (07f28h),hl		;de7f	22 28 7f 	" (  
	ld (07f2ch),hl		;de82	22 2c 7f 	" ,  
	call sub_f844h		;de85	cd 44 f8 	. D . 
	cp 00dh		;de88	fe 0d 	. . 
	jp z,ldf3ch		;de8a	ca 3c df 	. < . 
	cp 02ch		;de8d	fe 2c 	. , 
	jr z,ldeaeh		;de8f	28 1d 	( . 
	call 0bf6dh		;de91	cd 6d bf 	. m . 
	ret c			;de94	d8 	. 
	call 0bf7fh		;de95	cd 7f bf 	.  . 
	jp c,lf8dbh		;de98	da db f8 	. . . 
	ld hl,(07f18h)		;de9b	2a 18 7f 	* .  
	ld (07f28h),hl		;de9e	22 28 7f 	" (  
	call sub_f844h		;dea1	cd 44 f8 	. D . 
	cp 00dh		;dea4	fe 0d 	. . 
	jp z,ldf3ch		;dea6	ca 3c df 	. < . 
	cp 02ch		;dea9	fe 2c 	. , 
	jp nz,08379h		;deab	c2 79 83 	. y . 
ldeaeh:
	call sub_f844h		;deae	cd 44 f8 	. D . 
	cp 02ch		;deb1	fe 2c 	. , 
	jr z,ldf1fh		;deb3	28 6a 	( j 
	dec ix		;deb5	dd 2b 	. + 
	call 0bf73h		;deb7	cd 73 bf 	. s . 
	ret c			;deba	d8 	. 
	ld hl,07f28h		;debb	21 28 7f 	! (  
	ld de,07a60h		;debe	11 60 7a 	. ` z 
	ld bc,00006h		;dec1	01 06 00 	. . . 
	ldir		;dec4	ed b0 	. . 
	push ix		;dec6	dd e5 	. . 
	call 0be6eh		;dec8	cd 6e be 	. n . 
	pop ix		;decb	dd e1 	. . 
	jp c,08362h		;decd	da 62 83 	. b . 
	ld hl,07a60h		;ded0	21 60 7a 	! ` z 
	ld de,07f28h		;ded3	11 28 7f 	. (  
	ld bc,00006h		;ded6	01 06 00 	. . . 
	ldir		;ded9	ed b0 	. . 
	ld hl,(07f3ch)		;dedb	2a 3c 7f 	* <  
	ld (07f2ah),hl		;dede	22 2a 7f 	" *  
	ld hl,00000h		;dee1	21 00 00 	! . . 
	ld (07f0ch),hl		;dee4	22 0c 7f 	" .  
	ld hl,(079e1h)		;dee7	2a e1 79 	* . y 
	inc hl			;deea	23 	# 
ldeebh:
	ld b,(hl)			;deeb	46 	F 
	inc hl			;deec	23 	# 
	ld c,(hl)			;deed	4e 	N 
	inc hl			;deee	23 	# 
	ex de,hl			;deef	eb 	. 
	ld hl,(07f3ch)		;def0	2a 3c 7f 	* <  
	and a			;def3	a7 	. 
	sbc hl,bc		;def4	ed 42 	. B 
	jr z,ldf06h		;def6	28 0e 	( . 
	ld hl,07f0ch		;def8	21 0c 7f 	! .  
	ld (hl),c			;defb	71 	q 
	inc hl			;defc	23 	# 
	ld (hl),b			;defd	70 	p 
	ex de,hl			;defe	eb 	. 
	ld e,(hl)			;deff	5e 	^ 
	ld d,000h		;df00	16 00 	. . 
	add hl,de			;df02	19 	. 
	inc hl			;df03	23 	# 
	jr ldeebh		;df04	18 e5 	. . 
ldf06h:
	ld hl,(07f0ch)		;df06	2a 0c 7f 	* .  
	ld de,(07f28h)		;df09	ed 5b 28 7f 	. [ (  
	and a			;df0d	a7 	. 
	sbc hl,de		;df0e	ed 52 	. R 
	jp nc,lf8dfh		;df10	d2 df f8 	. . . 
	call sub_f844h		;df13	cd 44 f8 	. D . 
	cp 00dh		;df16	fe 0d 	. . 
	jr z,ldf3ch		;df18	28 22 	( " 
	cp 02ch		;df1a	fe 2c 	. , 
	jp nz,08379h		;df1c	c2 79 83 	. y . 
ldf1fh:
	call sub_f844h		;df1f	cd 44 f8 	. D . 
	call 0bf6dh		;df22	cd 6d bf 	. m . 
	ret c			;df25	d8 	. 
	call 0bf7fh		;df26	cd 7f bf 	.  . 
	jp c,lf8dbh		;df29	da db f8 	. . . 
	ld hl,(07f18h)		;df2c	2a 18 7f 	* .  
	ld (07f2ch),hl		;df2f	22 2c 7f 	" ,  
	inc ix		;df32	dd 23 	. # 
	ld a,(ix+000h)		;df34	dd 7e 00 	. ~ . 
	cp 00dh		;df37	fe 0d 	. . 
	jp nz,08379h		;df39	c2 79 83 	. y . 
ldf3ch:
	call sub_f880h		;df3c	cd 80 f8 	. . . 
	ld hl,07f36h		;df3f	21 36 7f 	! 6  
	set 5,(hl)		;df42	cb ee 	. . 
	call sub_f88ah		;df44	cd 8a f8 	. . . 
	call sub_df83h		;df47	cd 83 df 	. . . 
	jr c,ldf6dh		;df4a	38 21 	8 ! 
	call sub_e048h		;df4c	cd 48 e0 	. H . 
	jr c,ldf6dh		;df4f	38 1c 	8 . 
	call sub_f891h		;df51	cd 91 f8 	. . . 
	call sub_e0b0h		;df54	cd b0 e0 	. . . 
	call sub_e134h		;df57	cd 34 e1 	. 4 . 
	call sub_e0b0h		;df5a	cd b0 e0 	. . . 
	call sub_f8a4h		;df5d	cd a4 f8 	. . . 
	call 0be26h		;df60	cd 26 be 	. & . 
ldf63h:
	call sub_f885h		;df63	cd 85 f8 	. . . 
	ld hl,07f36h		;df66	21 36 7f 	! 6  
	res 5,(hl)		;df69	cb ae 	. . 
	and a			;df6b	a7 	. 
	ret			;df6c	c9 	. 
ldf6dh:
	push hl			;df6d	e5 	. 
	pop ix		;df6e	dd e1 	. . 
	call sub_f8a4h		;df70	cd a4 f8 	. . . 
	ld a,(07f35h)		;df73	3a 35 7f 	: 5  
	and 020h		;df76	e6 20 	.   
	jr z,ldf81h		;df78	28 07 	( . 
	ld hl,079d9h		;df7a	21 d9 79 	! . y 
	res 1,(hl)		;df7d	cb 8e 	. . 
	jr ldf63h		;df7f	18 e2 	. . 
ldf81h:
	scf			;df81	37 	7 
	ret			;df82	c9 	. 
sub_df83h:
	call 0801fh		;df83	cd 1f 80 	. . . 
	ld hl,07f2fh		;df86	21 2f 7f 	! /  
	ld a,(hl)			;df89	7e 	~ 
	and 0f0h		;df8a	e6 f0 	. . 
	ld (hl),a			;df8c	77 	w 
	ld hl,(079e1h)		;df8d	2a e1 79 	* . y 
	inc hl			;df90	23 	# 
ldf91h:
	ld b,(hl)			;df91	46 	F 
	inc hl			;df92	23 	# 
	ld c,(hl)			;df93	4e 	N 
	inc hl			;df94	23 	# 
	ld (07f1ch),bc		;df95	ed 43 1c 7f 	. C .  
	ex de,hl			;df99	eb 	. 
	ld hl,(07f28h)		;df9a	2a 28 7f 	* (  
	ld (07f1eh),hl		;df9d	22 1e 7f 	" .  
	ld hl,(07f2ah)		;dfa0	2a 2a 7f 	* *  
	scf			;dfa3	37 	7 
	sbc hl,bc		;dfa4	ed 42 	. B 
	ex de,hl			;dfa6	eb 	. 
	jr c,ldfddh		;dfa7	38 34 	8 4 
	ld e,(hl)			;dfa9	5e 	^ 
	ld d,000h		;dfaa	16 00 	. . 
	add hl,de			;dfac	19 	. 
	inc hl			;dfad	23 	# 
	exx			;dfae	d9 	. 
	call sub_dff2h		;dfaf	cd f2 df 	. . . 
	exx			;dfb2	d9 	. 
	call 0bfb5h		;dfb3	cd b5 bf 	. . . 
	jr z,ldf91h		;dfb6	28 d9 	( . 
ldfb8h:
	ld hl,07f35h		;dfb8	21 35 7f 	! 5  
	set 5,(hl)		;dfbb	cb ee 	. . 
	scf			;dfbd	37 	7 
	ret			;dfbe	c9 	. 
ldfbfh:
	or a			;dfbf	b7 	. 
	ld b,(hl)			;dfc0	46 	F 
	inc b			;dfc1	04 	. 
	ret z			;dfc2	c8 	. 
	dec b			;dfc3	05 	. 
	inc hl			;dfc4	23 	# 
	ld c,(hl)			;dfc5	4e 	N 
	inc hl			;dfc6	23 	# 
	ld (07f1ch),bc		;dfc7	ed 43 1c 7f 	. C .  
	ld bc,(07f2ch)		;dfcb	ed 4b 2c 7f 	. K ,  
	ex de,hl			;dfcf	eb 	. 
	ld hl,(07f1eh)		;dfd0	2a 1e 7f 	* .  
	add hl,bc			;dfd3	09 	. 
	ld (07f1eh),hl		;dfd4	22 1e 7f 	" .  
	ex de,hl			;dfd7	eb 	. 
	jr c,ldfeeh		;dfd8	38 14 	8 . 
	inc d			;dfda	14 	. 
	jr z,ldfeeh		;dfdb	28 11 	( . 
ldfddh:
	ld e,(hl)			;dfdd	5e 	^ 
	ld d,000h		;dfde	16 00 	. . 
	add hl,de			;dfe0	19 	. 
	inc hl			;dfe1	23 	# 
	exx			;dfe2	d9 	. 
	call sub_dff8h		;dfe3	cd f8 df 	. . . 
	exx			;dfe6	d9 	. 
	call 0bfb5h		;dfe7	cd b5 bf 	. . . 
	jr z,ldfbfh		;dfea	28 d3 	( . 
	jr ldfb8h		;dfec	18 ca 	. . 
ldfeeh:
	inc hl			;dfee	23 	# 
	jp lf8dbh		;dfef	c3 db f8 	. . . 
sub_dff2h:
	ld de,(07f1ch)		;dff2	ed 5b 1c 7f 	. [ .  
	jr ldffch		;dff6	18 04 	. . 
sub_dff8h:
	ld de,(07f1eh)		;dff8	ed 5b 1e 7f 	. [ .  
ldffch:
	ld bc,07f2fh		;dffc	01 2f 7f 	. /  
	ld a,(bc)			;dfff	0a 	. 
	bit 0,a		;e000	cb 47 	. G 
	jr nz,le012h		;e002	20 0e 	  . 
	ld hl,lfff4h+2		;e004	21 f6 ff 	! . . 
	add hl,de			;e007	19 	. 
	ret nc			;e008	d0 	. 
	or 001h		;e009	f6 01 	. . 
	ld (bc),a			;e00b	02 	. 
	ld hl,(07f1ch)		;e00c	2a 1c 7f 	* .  
	ld (079a8h),hl		;e00f	22 a8 79 	" . y 
le012h:
	bit 1,a		;e012	cb 4f 	. O 
	jr nz,le024h		;e014	20 0e 	  . 
	ld hl,0ff9ch		;e016	21 9c ff 	! . . 
	add hl,de			;e019	19 	. 
	ret nc			;e01a	d0 	. 
	or 002h		;e01b	f6 02 	. . 
	ld (bc),a			;e01d	02 	. 
	ld hl,(07f1ch)		;e01e	2a 1c 7f 	* .  
	ld (079aah),hl		;e021	22 aa 79 	" . y 
le024h:
	bit 2,a		;e024	cb 57 	. W 
	jr nz,le036h		;e026	20 0e 	  . 
	ld hl,lfc18h		;e028	21 18 fc 	! . . 
	add hl,de			;e02b	19 	. 
	ret nc			;e02c	d0 	. 
	or 004h		;e02d	f6 04 	. . 
	ld (bc),a			;e02f	02 	. 
	ld hl,(07f1ch)		;e030	2a 1c 7f 	* .  
	ld (079ach),hl		;e033	22 ac 79 	" . y 
le036h:
	bit 3,a		;e036	cb 5f 	. _ 
	ret nz			;e038	c0 	. 
	ld hl,0d8f0h		;e039	21 f0 d8 	! . . 
	add hl,de			;e03c	19 	. 
	ret nc			;e03d	d0 	. 
	or 008h		;e03e	f6 08 	. . 
	ld (bc),a			;e040	02 	. 
	ld hl,(07f1ch)		;e041	2a 1c 7f 	* .  
	ld (079aeh),hl		;e044	22 ae 79 	" . y 
	ret			;e047	c9 	. 
sub_e048h:
	ld hl,(079e1h)		;e048	2a e1 79 	* . y 
	inc hl			;e04b	23 	# 
le04ch:
	or a			;e04c	b7 	. 
	ld b,(hl)			;e04d	46 	F 
	inc b			;e04e	04 	. 
	ret z			;e04f	c8 	. 
	dec b			;e050	05 	. 
	push hl			;e051	e5 	. 
	inc hl			;e052	23 	# 
	ld c,(hl)			;e053	4e 	N 
	inc hl			;e054	23 	# 
	ld (07f18h),bc		;e055	ed 43 18 7f 	. C .  
	inc hl			;e059	23 	# 
le05ah:
	ld a,(hl)			;e05a	7e 	~ 
	inc hl			;e05b	23 	# 
	cp 00dh		;e05c	fe 0d 	. . 
	jr z,le0a0h		;e05e	28 40 	( @ 
	cp 022h		;e060	fe 22 	. " 
	jr z,le096h		;e062	28 32 	( 2 
	cp 027h		;e064	fe 27 	. ' 
	jr z,le09bh		;e066	28 33 	( 3 
	cp 0feh		;e068	fe fe 	. . 
	jr nz,le05ah		;e06a	20 ee 	  . 
	ld a,(hl)			;e06c	7e 	~ 
	inc hl			;e06d	23 	# 
	ld de,le092h		;e06e	11 92 e0 	. . . 
	push de			;e071	d5 	. 
	cp 02bh		;e072	fe 2b 	. + 
	jp z,le183h		;e074	ca 83 e1 	. . . 
	cp 062h		;e077	fe 62 	. b 
	jp z,le183h		;e079	ca 83 e1 	. . . 
	cp 054h		;e07c	fe 54 	. T 
	jp z,le191h		;e07e	ca 91 e1 	. . . 
	cp 066h		;e081	fe 66 	. f 
	jp z,le191h		;e083	ca 91 e1 	. . . 
	cp 059h		;e086	fe 59 	. Y 
	jp z,le1a4h		;e088	ca a4 e1 	. . . 
	cp 05eh		;e08b	fe 5e 	. ^ 
	jp z,le195h		;e08d	ca 95 e1 	. . . 
	pop de			;e090	d1 	. 
	and a			;e091	a7 	. 
le092h:
	jr nc,le05ah		;e092	30 c6 	0 . 
	pop bc			;e094	c1 	. 
	ret			;e095	c9 	. 
le096h:
	call sub_e1d8h		;e096	cd d8 e1 	. . . 
	jr le05ah		;e099	18 bf 	. . 
le09bh:
	call le1a4h		;e09b	cd a4 e1 	. . . 
	jr le05ah		;e09e	18 ba 	. . 
le0a0h:
	pop hl			;e0a0	e1 	. 
	inc hl			;e0a1	23 	# 
	inc hl			;e0a2	23 	# 
	ld c,(hl)			;e0a3	4e 	N 
	ld b,000h		;e0a4	06 00 	. . 
	add hl,bc			;e0a6	09 	. 
	inc hl			;e0a7	23 	# 
	call 0bfb5h		;e0a8	cd b5 bf 	. . . 
	jr z,le04ch		;e0ab	28 9f 	( . 
	jp ldfb8h		;e0ad	c3 b8 df 	. . . 
sub_e0b0h:
	ld hl,(079e1h)		;e0b0	2a e1 79 	* . y 
	inc hl			;e0b3	23 	# 
le0b4h:
	inc hl			;e0b4	23 	# 
	inc hl			;e0b5	23 	# 
	push hl			;e0b6	e5 	. 
	inc hl			;e0b7	23 	# 
le0b8h:
	ld a,(hl)			;e0b8	7e 	~ 
	cp 01fh		;e0b9	fe 1f 	. . 
	jr z,le0deh		;e0bb	28 21 	( ! 
	cp 01eh		;e0bd	fe 1e 	. . 
	jr z,le0f0h		;e0bf	28 2f 	( / 
	inc hl			;e0c1	23 	# 
	cp 0feh		;e0c2	fe fe 	. . 
	jr z,le0ffh		;e0c4	28 39 	( 9 
	cp 022h		;e0c6	fe 22 	. " 
	jr z,le10ch		;e0c8	28 42 	( B 
	cp 027h		;e0ca	fe 27 	. ' 
	jr z,le111h		;e0cc	28 43 	( C 
	cp 00dh		;e0ce	fe 0d 	. . 
	jr nz,le0b8h		;e0d0	20 e6 	  . 
	pop hl			;e0d2	e1 	. 
	ld c,(hl)			;e0d3	4e 	N 
	ld b,000h		;e0d4	06 00 	. . 
	add hl,bc			;e0d6	09 	. 
	inc hl			;e0d7	23 	# 
	ld a,(hl)			;e0d8	7e 	~ 
	inc a			;e0d9	3c 	< 
	jr nz,le0b4h		;e0da	20 d8 	  . 
	and a			;e0dc	a7 	. 
	ret			;e0dd	c9 	. 
le0deh:
	ld (hl),01eh		;e0de	36 1e 	6 . 
	inc hl			;e0e0	23 	# 
	call sub_e116h		;e0e1	cd 16 e1 	. . . 
	dec hl			;e0e4	2b 	+ 
	dec hl			;e0e5	2b 	+ 
	ld de,(07f3ah)		;e0e6	ed 5b 3a 7f 	. [ :  
	ld (hl),e			;e0ea	73 	s 
	inc hl			;e0eb	23 	# 
	ld (hl),d			;e0ec	72 	r 
	inc hl			;e0ed	23 	# 
	jr le0b8h		;e0ee	18 c8 	. . 
le0f0h:
	ld (hl),01fh		;e0f0	36 1f 	6 . 
	inc hl			;e0f2	23 	# 
	ld e,(hl)			;e0f3	5e 	^ 
	inc hl			;e0f4	23 	# 
	ld d,(hl)			;e0f5	56 	V 
	dec hl			;e0f6	2b 	+ 
	ex de,hl			;e0f7	eb 	. 
	ldi		;e0f8	ed a0 	. . 
	ldi		;e0fa	ed a0 	. . 
	ex de,hl			;e0fc	eb 	. 
	jr le0b8h		;e0fd	18 b9 	. . 
le0ffh:
	ld a,(hl)			;e0ff	7e 	~ 
	inc hl			;e100	23 	# 
	cp 059h		;e101	fe 59 	. Y 
	jr z,le111h		;e103	28 0c 	( . 
	cp 05eh		;e105	fe 5e 	. ^ 
	call z,le195h		;e107	cc 95 e1 	. . . 
	jr le0b8h		;e10a	18 ac 	. . 
le10ch:
	call sub_e1d8h		;e10c	cd d8 e1 	. . . 
	jr le0b8h		;e10f	18 a7 	. . 
le111h:
	call le1a4h		;e111	cd a4 e1 	. . . 
	jr le0b8h		;e114	18 a2 	. . 
sub_e116h:
	ld d,(hl)			;e116	56 	V 
	inc hl			;e117	23 	# 
	ld e,(hl)			;e118	5e 	^ 
	inc hl			;e119	23 	# 
	push hl			;e11a	e5 	. 
	ld (07f18h),de		;e11b	ed 53 18 7f 	. S .  
	ld hl,(07f3ch)		;e11f	2a 3c 7f 	* <  
	and a			;e122	a7 	. 
	sbc hl,de		;e123	ed 52 	. R 
	jr c,le12ch		;e125	38 05 	8 . 
	call nz,0bf5bh		;e127	c4 5b bf 	. [ . 
le12ah:
	pop hl			;e12a	e1 	. 
	ret			;e12b	c9 	. 
le12ch:
	ld hl,(07f3ah)		;e12c	2a 3a 7f 	* :  
	call 0bf61h		;e12f	cd 61 bf 	. a . 
	jr le12ah		;e132	18 f6 	. . 
sub_e134h:
	ld hl,(07f28h)		;e134	2a 28 7f 	* (  
	ld (07f1eh),hl		;e137	22 1e 7f 	" .  
	ld hl,(079e1h)		;e13a	2a e1 79 	* . y 
	inc hl			;e13d	23 	# 
le13eh:
	ld b,(hl)			;e13e	46 	F 
	inc hl			;e13f	23 	# 
	ld c,(hl)			;e140	4e 	N 
	inc hl			;e141	23 	# 
	ld (07f1ch),bc		;e142	ed 43 1c 7f 	. C .  
	ex de,hl			;e146	eb 	. 
	ld hl,(07f2ah)		;e147	2a 2a 7f 	* *  
	scf			;e14a	37 	7 
	sbc hl,bc		;e14b	ed 42 	. B 
	ex de,hl			;e14d	eb 	. 
	jr c,le170h		;e14e	38 20 	8   
	ld e,(hl)			;e150	5e 	^ 
	ld d,000h		;e151	16 00 	. . 
	add hl,de			;e153	19 	. 
	inc hl			;e154	23 	# 
	jr le13eh		;e155	18 e7 	. . 
le157h:
	ld b,(hl)			;e157	46 	F 
	inc b			;e158	04 	. 
	jr z,le181h		;e159	28 26 	( & 
	dec b			;e15b	05 	. 
	inc hl			;e15c	23 	# 
	ld c,(hl)			;e15d	4e 	N 
	inc hl			;e15e	23 	# 
	ld (07f1ch),bc		;e15f	ed 43 1c 7f 	. C .  
	ld bc,(07f2ch)		;e163	ed 4b 2c 7f 	. K ,  
	ex de,hl			;e167	eb 	. 
	ld hl,(07f1eh)		;e168	2a 1e 7f 	* .  
	add hl,bc			;e16b	09 	. 
	ld (07f1eh),hl		;e16c	22 1e 7f 	" .  
	ex de,hl			;e16f	eb 	. 
le170h:
	dec hl			;e170	2b 	+ 
	dec hl			;e171	2b 	+ 
	ld de,(07f1eh)		;e172	ed 5b 1e 7f 	. [ .  
	ld (hl),d			;e176	72 	r 
	inc hl			;e177	23 	# 
	ld (hl),e			;e178	73 	s 
	inc hl			;e179	23 	# 
	ld e,(hl)			;e17a	5e 	^ 
	ld d,000h		;e17b	16 00 	. . 
	add hl,de			;e17d	19 	. 
	inc hl			;e17e	23 	# 
	jr le157h		;e17f	18 d6 	. . 
le181h:
	and a			;e181	a7 	. 
	ret			;e182	c9 	. 
le183h:
	call sub_e1abh		;e183	cd ab e1 	. . . 
	ret c			;e186	d8 	. 
	call sub_e1e2h		;e187	cd e2 e1 	. . . 
	cp 02ch		;e18a	fe 2c 	. , 
	jr z,le183h		;e18c	28 f5 	( . 
	dec hl			;e18e	2b 	+ 
	or a			;e18f	b7 	. 
	ret			;e190	c9 	. 
le191h:
	call sub_e1abh		;e191	cd ab e1 	. . . 
	ret			;e194	c9 	. 
le195h:
	ld a,(hl)			;e195	7e 	~ 
	cp 00dh		;e196	fe 0d 	. . 
	ret z			;e198	c8 	. 
	cp 03ah		;e199	fe 3a 	. : 
	ret z			;e19b	c8 	. 
	inc hl			;e19c	23 	# 
	cp 022h		;e19d	fe 22 	. " 
	call z,sub_e1d8h		;e19f	cc d8 e1 	. . . 
	jr le195h		;e1a2	18 f1 	. . 
le1a4h:
	ld a,(hl)			;e1a4	7e 	~ 
	cp 00dh		;e1a5	fe 0d 	. . 
	ret z			;e1a7	c8 	. 
	inc hl			;e1a8	23 	# 
	jr le1a4h		;e1a9	18 f9 	. . 
sub_e1abh:
	call sub_e1e2h		;e1ab	cd e2 e1 	. . . 
	cp 01fh		;e1ae	fe 1f 	. . 
	jr nz,le1bch		;e1b0	20 0a 	  . 
	call sub_e116h		;e1b2	cd 16 e1 	. . . 
	ret nc			;e1b5	d0 	. 
	dec hl			;e1b6	2b 	+ 
	dec hl			;e1b7	2b 	+ 
	dec hl			;e1b8	2b 	+ 
	jp 08362h		;e1b9	c3 62 83 	. b . 
le1bch:
	cp 022h		;e1bc	fe 22 	. " 
	jp z,sub_e1d8h		;e1be	ca d8 e1 	. . . 
	cp 02ah		;e1c1	fe 2a 	. * 
	jr nz,le1d5h		;e1c3	20 10 	  . 
	ld a,(hl)			;e1c5	7e 	~ 
	inc hl			;e1c6	23 	# 
	jr le1d0h		;e1c7	18 07 	. . 
le1c9h:
	ld a,(hl)			;e1c9	7e 	~ 
	inc hl			;e1ca	23 	# 
	call sub_d8c6h		;e1cb	cd c6 d8 	. . . 
	jr nc,le1c9h		;e1ce	30 f9 	0 . 
le1d0h:
	call sub_d8b9h		;e1d0	cd b9 d8 	. . . 
	jr nc,le1c9h		;e1d3	30 f4 	0 . 
le1d5h:
	dec hl			;e1d5	2b 	+ 
	or a			;e1d6	b7 	. 
	ret			;e1d7	c9 	. 
sub_e1d8h:
	ld a,(hl)			;e1d8	7e 	~ 
	cp 00dh		;e1d9	fe 0d 	. . 
	ret z			;e1db	c8 	. 
	inc hl			;e1dc	23 	# 
	cp 022h		;e1dd	fe 22 	. " 
	jr nz,sub_e1d8h		;e1df	20 f7 	  . 
	ret			;e1e1	c9 	. 
sub_e1e2h:
	ld a,(hl)			;e1e2	7e 	~ 
	inc hl			;e1e3	23 	# 
	cp 020h		;e1e4	fe 20 	.   
	jr z,sub_e1e2h		;e1e6	28 fa 	( . 
	ret			;e1e8	c9 	. 
le1e9h:
	ld a,(07902h)		;e1e9	3a 02 79 	: . y 
	and 020h		;e1ec	e6 20 	.   
	jp z,08369h		;e1ee	ca 69 83 	. i . 
	ld a,(079d9h)		;e1f1	3a d9 79 	: . y 
	and 010h		;e1f4	e6 10 	. . 
	jp nz,0bf79h		;e1f6	c2 79 bf 	. y . 
le1f9h:
	ld hl,(079e1h)		;e1f9	2a e1 79 	* . y 
	inc hl			;e1fc	23 	# 
	ld a,(hl)			;e1fd	7e 	~ 
	inc a			;e1fe	3c 	< 
	jp z,0bf79h		;e1ff	ca 79 bf 	. y . 
	call sub_f844h		;e202	cd 44 f8 	. D . 
	cp 02dh		;e205	fe 2d 	. - 
	jr z,le276h		;e207	28 6d 	( m 
	dec ix		;e209	dd 2b 	. + 
	call 0bf73h		;e20b	cd 73 bf 	. s . 
	ret c			;e20e	d8 	. 
	call 0bf67h		;e20f	cd 67 bf 	. g . 
	jp c,08362h		;e212	da 62 83 	. b . 
	ld hl,(07f3ah)		;e215	2a 3a 7f 	* :  
	dec hl			;e218	2b 	+ 
	dec hl			;e219	2b 	+ 
	ld (07f0ah),hl		;e21a	22 0a 7f 	" .  
	call sub_f844h		;e21d	cd 44 f8 	. D . 
	cp 00dh		;e220	fe 0d 	. . 
	jr z,le27fh		;e222	28 5b 	( [ 
	cp 02dh		;e224	fe 2d 	. - 
	jp nz,08379h		;e226	c2 79 83 	. y . 
	call sub_f844h		;e229	cd 44 f8 	. D . 
	cp 00dh		;e22c	fe 0d 	. . 
	jr z,le283h		;e22e	28 53 	( S 
	dec ix		;e230	dd 2b 	. + 
le232h:
	call 0bf73h		;e232	cd 73 bf 	. s . 
	ret c			;e235	d8 	. 
	ld a,(ix+001h)		;e236	dd 7e 01 	. ~ . 
	cp 00dh		;e239	fe 0d 	. . 
	jp nz,08379h		;e23b	c2 79 83 	. y . 
	call 0bf67h		;e23e	cd 67 bf 	. g . 
	jp c,08362h		;e241	da 62 83 	. b . 
	ld hl,(07f3ah)		;e244	2a 3a 7f 	* :  
	ld de,(07f0ah)		;e247	ed 5b 0a 7f 	. [ .  
	and a			;e24b	a7 	. 
	sbc hl,de		;e24c	ed 52 	. R 
	jp c,lf8e3h		;e24e	da e3 f8 	. . . 
	add hl,de			;e251	19 	. 
le252h:
	ld e,(hl)			;e252	5e 	^ 
	ld d,000h		;e253	16 00 	. . 
	add hl,de			;e255	19 	. 
	inc hl			;e256	23 	# 
	ex de,hl			;e257	eb 	. 
	ld hl,(079e3h)		;e258	2a e3 79 	* . y 
	and a			;e25b	a7 	. 
	sbc hl,de		;e25c	ed 52 	. R 
	jr z,le283h		;e25e	28 23 	( # 
	ld b,h			;e260	44 	D 
	ld c,l			;e261	4d 	M 
	ex de,hl			;e262	eb 	. 
	ld de,(07f0ah)		;e263	ed 5b 0a 7f 	. [ .  
	ldir		;e267	ed b0 	. . 
	ex de,hl			;e269	eb 	. 
le26ah:
	ld (079e3h),hl		;e26a	22 e3 79 	" . y 
	ld (hl),0ffh		;e26d	36 ff 	6 . 
	call 0be26h		;e26f	cd 26 be 	. & . 
	call sub_f51ch		;e272	cd 1c f5 	. . . 
	ret			;e275	c9 	. 
le276h:
	ld hl,(079e1h)		;e276	2a e1 79 	* . y 
	inc hl			;e279	23 	# 
	ld (07f0ah),hl		;e27a	22 0a 7f 	" .  
	jr le232h		;e27d	18 b3 	. . 
le27fh:
	inc hl			;e27f	23 	# 
	inc hl			;e280	23 	# 
	jr le252h		;e281	18 cf 	. . 
le283h:
	ld hl,(07f0ah)		;e283	2a 0a 7f 	* .  
	jr le26ah		;e286	18 e2 	. . 
le288h:
	ld a,(078e5h)		;e288	3a e5 78 	: . x 
	and 001h		;e28b	e6 01 	. . 
	call z,sub_e44fh		;e28d	cc 4f e4 	. O . 
	jr c,le2d7h		;e290	38 45 	8 E 
	ld a,(079d9h)		;e292	3a d9 79 	: . y 
	and 010h		;e295	e6 10 	. . 
	jp nz,le2d7h		;e297	c2 d7 e2 	. . . 
	ld hl,(079e1h)		;e29a	2a e1 79 	* . y 
	inc hl			;e29d	23 	# 
	ld (07f3ah),hl		;e29e	22 3a 7f 	" :  
	ld a,(hl)			;e2a1	7e 	~ 
	inc a			;e2a2	3c 	< 
	jr z,le2d7h		;e2a3	28 32 	( 2 
	call sub_f844h		;e2a5	cd 44 f8 	. D . 
	cp 00dh		;e2a8	fe 0d 	. . 
	jr nz,le2dch		;e2aa	20 30 	  0 
le2ach:
	dec ix		;e2ac	dd 2b 	. + 
	push ix		;e2ae	dd e5 	. . 
le2b0h:
	call sub_c981h		;e2b0	cd 81 c9 	. . . 
	call sub_e3a1h		;e2b3	cd a1 e3 	. . . 
	jr c,le308h		;e2b6	38 50 	8 P 
	call 0bfb5h		;e2b8	cd b5 bf 	. . . 
	jp nz,le38bh		;e2bb	c2 8b e3 	. . . 
	call sub_e3bfh		;e2be	cd bf e3 	. . . 
	jr nc,le2b0h		;e2c1	30 ed 	0 . 
le2c3h:
	ld a,(078e5h)		;e2c3	3a e5 78 	: . x 
	and 001h		;e2c6	e6 01 	. . 
	jr nz,le2d3h		;e2c8	20 09 	  . 
	call sub_e699h		;e2ca	cd 99 e6 	. . . 
	jp c,le38bh		;e2cd	da 8b e3 	. . . 
	call sub_e652h		;e2d0	cd 52 e6 	. R . 
le2d3h:
	pop ix		;e2d3	dd e1 	. . 
	xor a			;e2d5	af 	. 
	ret			;e2d6	c9 	. 
le2d7h:
	call 0bf2bh		;e2d7	cd 2b bf 	. + . 
	xor a			;e2da	af 	. 
	ret			;e2db	c9 	. 
le2dch:
	cp 02dh		;e2dc	fe 2d 	. - 
	jr z,le31dh		;e2de	28 3d 	( = 
	dec ix		;e2e0	dd 2b 	. + 
	call 0bf73h		;e2e2	cd 73 bf 	. s . 
	ret c			;e2e5	d8 	. 
	push ix		;e2e6	dd e5 	. . 
	call 0be6eh		;e2e8	cd 6e be 	. n . 
	pop ix		;e2eb	dd e1 	. . 
	ld hl,(07f3ch)		;e2ed	2a 3c 7f 	* <  
	ld a,h			;e2f0	7c 	| 
	or l			;e2f1	b5 	. 
	jp z,08362h		;e2f2	ca 62 83 	. b . 
	call sub_f844h		;e2f5	cd 44 f8 	. D . 
	cp 00dh		;e2f8	fe 0d 	. . 
	jr nz,le327h		;e2fa	20 2b 	  + 
	dec ix		;e2fc	dd 2b 	. + 
	push ix		;e2fe	dd e5 	. . 
	call sub_c981h		;e300	cd 81 c9 	. . . 
	call sub_e3a1h		;e303	cd a1 e3 	. . . 
	jr nc,le2c3h		;e306	30 bb 	0 . 
le308h:
	ld a,(078e5h)		;e308	3a e5 78 	: . x 
	and 001h		;e30b	e6 01 	. . 
	call z,sub_e652h		;e30d	cc 52 e6 	. R . 
	pop ix		;e310	dd e1 	. . 
	ld a,(078e5h)		;e312	3a e5 78 	: . x 
	and 001h		;e315	e6 01 	. . 
	jp nz,lf8ebh		;e317	c2 eb f8 	. . . 
	jp z,lf8efh		;e31a	ca ef f8 	. . . 
le31dh:
	call sub_f844h		;e31d	cd 44 f8 	. D . 
	cp 00dh		;e320	fe 0d 	. . 
	jr nz,le333h		;e322	20 0f 	  . 
le324h:
	jp 08379h		;e324	c3 79 83 	. y . 
le327h:
	cp 02dh		;e327	fe 2d 	. - 
	jr nz,le324h		;e329	20 f9 	  . 
	call sub_f844h		;e32b	cd 44 f8 	. D . 
	cp 00dh		;e32e	fe 0d 	. . 
	jp z,le2ach		;e330	ca ac e2 	. . . 
le333h:
	dec ix		;e333	dd 2b 	. + 
	call 0bf73h		;e335	cd 73 bf 	. s . 
	ret c			;e338	d8 	. 
	ld hl,(07f3ah)		;e339	2a 3a 7f 	* :  
	ld (079bbh),hl		;e33c	22 bb 79 	" . y 
	push ix		;e33f	dd e5 	. . 
	call 0be6eh		;e341	cd 6e be 	. n . 
	pop ix		;e344	dd e1 	. . 
	ld hl,(07f3ch)		;e346	2a 3c 7f 	* <  
	ld a,h			;e349	7c 	| 
	or l			;e34a	b5 	. 
	jp z,08362h		;e34b	ca 62 83 	. b . 
	call sub_f844h		;e34e	cd 44 f8 	. D . 
	cp 00dh		;e351	fe 0d 	. . 
	jr nz,le324h		;e353	20 cf 	  . 
	dec ix		;e355	dd 2b 	. + 
	push ix		;e357	dd e5 	. . 
	ld hl,(079bbh)		;e359	2a bb 79 	* . y 
	ld de,(07f3ah)		;e35c	ed 5b 3a 7f 	. [ :  
	ld (07f3ah),hl		;e360	22 3a 7f 	" :  
	ld (079bbh),de		;e363	ed 53 bb 79 	. S . y 
	scf			;e367	37 	7 
	sbc hl,de		;e368	ed 52 	. R 
	jr nc,le39ch		;e36a	30 30 	0 0 
le36ch:
	call sub_c981h		;e36c	cd 81 c9 	. . . 
	call sub_e3a1h		;e36f	cd a1 e3 	. . . 
	jr c,le308h		;e372	38 94 	8 . 
	call 0bfb5h		;e374	cd b5 bf 	. . . 
	jr nz,le38bh		;e377	20 12 	  . 
	ld hl,(07f3ah)		;e379	2a 3a 7f 	* :  
	ld de,(079bbh)		;e37c	ed 5b bb 79 	. [ . y 
	and a			;e380	a7 	. 
	sbc hl,de		;e381	ed 52 	. R 
	jp nc,le2c3h		;e383	d2 c3 e2 	. . . 
	call sub_e3bfh		;e386	cd bf e3 	. . . 
	jr le36ch		;e389	18 e1 	. . 
le38bh:
	ld a,(078e5h)		;e38b	3a e5 78 	: . x 
	and 001h		;e38e	e6 01 	. . 
	call z,sub_e652h		;e390	cc 52 e6 	. R . 
	ld hl,07f35h		;e393	21 35 7f 	! 5  
	set 5,(hl)		;e396	cb ee 	. . 
	xor a			;e398	af 	. 
	pop ix		;e399	dd e1 	. . 
	ret			;e39b	c9 	. 
le39ch:
	pop ix		;e39c	dd e1 	. . 
	jp lf8e3h		;e39e	c3 e3 f8 	. . . 
sub_e3a1h:
	ld a,(078e5h)		;e3a1	3a e5 78 	: . x 
	and 001h		;e3a4	e6 01 	. . 
	jr nz,le3ach		;e3a6	20 04 	  . 
	call sub_e3dch		;e3a8	cd dc e3 	. . . 
	ret			;e3ab	c9 	. 
le3ach:
	push iy		;e3ac	fd e5 	. . 
	pop hl			;e3ae	e1 	. 
	ld de,07c00h		;e3af	11 00 7c 	. . | 
	and a			;e3b2	a7 	. 
	sbc hl,de		;e3b3	ed 52 	. R 
	ld b,l			;e3b5	45 	E 
	ex de,hl			;e3b6	eb 	. 
	call 0bf25h		;e3b7	cd 25 bf 	. % . 
	ret c			;e3ba	d8 	. 
	call 0bf1fh		;e3bb	cd 1f bf 	. . . 
	ret			;e3be	c9 	. 
sub_e3bfh:
	ld hl,(07f3ah)		;e3bf	2a 3a 7f 	* :  
	inc hl			;e3c2	23 	# 
	inc hl			;e3c3	23 	# 
	ld e,(hl)			;e3c4	5e 	^ 
	ld d,000h		;e3c5	16 00 	. . 
	add hl,de			;e3c7	19 	. 
	inc hl			;e3c8	23 	# 
	ld a,0feh		;e3c9	3e fe 	> . 
	cp (hl)			;e3cb	be 	. 
	ret c			;e3cc	d8 	. 
	ld (07f3ah),hl		;e3cd	22 3a 7f 	" :  
	ret			;e3d0	c9 	. 
le3d1h:
	ld hl,079dah		;e3d1	21 da 79 	! . y 
	res 7,(hl)		;e3d4	cb be 	. . 
	push ix		;e3d6	dd e5 	. . 
	pop hl			;e3d8	e1 	. 
	inc hl			;e3d9	23 	# 
	jr le3ebh		;e3da	18 0f 	. . 
sub_e3dch:
	ld hl,079dah		;e3dc	21 da 79 	! . y 
	set 7,(hl)		;e3df	cb fe 	. . 
	jr le3e8h		;e3e1	18 05 	. . 
sub_e3e3h:
	ld hl,079dah		;e3e3	21 da 79 	! . y 
	res 7,(hl)		;e3e6	cb be 	. . 
le3e8h:
	ld hl,07c00h		;e3e8	21 00 7c 	! . | 
le3ebh:
	ld de,07f10h		;e3eb	11 10 7f 	. .  
	ld bc,00018h		;e3ee	01 18 00 	. . . 
le3f1h:
	ld a,00dh		;e3f1	3e 0d 	> . 
le3f3h:
	cp (hl)			;e3f3	be 	. 
	jr z,le41fh		;e3f4	28 29 	( ) 
	ldi		;e3f6	ed a0 	. . 
	jp pe,le3f3h		;e3f8	ea f3 e3 	. . . 
	cp (hl)			;e3fb	be 	. 
	jr z,le426h		;e3fc	28 28 	( ( 
	push hl			;e3fe	e5 	. 
	call sub_e491h		;e3ff	cd 91 e4 	. . . 
	pop hl			;e402	e1 	. 
	jr c,le429h		;e403	38 24 	8 $ 
	call 0bfb5h		;e405	cd b5 bf 	. . . 
	jr nz,le434h		;e408	20 2a 	  * 
	ld a,(079dah)		;e40a	3a da 79 	: . y 
	and 080h		;e40d	e6 80 	. . 
	jr z,le3ebh		;e40f	28 da 	( . 
	ld de,07f10h		;e411	11 10 7f 	. .  
	ld a,020h		;e414	3e 20 	>   
	ld (de),a			;e416	12 	. 
	inc de			;e417	13 	. 
	ld (de),a			;e418	12 	. 
	inc de			;e419	13 	. 
	ld bc,00016h		;e41a	01 16 00 	. . . 
	jr le3f1h		;e41d	18 d2 	. . 
le41fh:
	ld b,c			;e41f	41 	A 
	ld a,020h		;e420	3e 20 	>   
le422h:
	ld (de),a			;e422	12 	. 
	inc de			;e423	13 	. 
	djnz le422h		;e424	10 fc 	. . 
le426h:
	call sub_e491h		;e426	cd 91 e4 	. . . 
le429h:
	ld hl,079d7h		;e429	21 d7 79 	! . y 
	res 4,(hl)		;e42c	cb a6 	. . 
	ld hl,079dah		;e42e	21 da 79 	! . y 
	res 7,(hl)		;e431	cb be 	. . 
	ret			;e433	c9 	. 
le434h:
	ld hl,07f35h		;e434	21 35 7f 	! 5  
	set 5,(hl)		;e437	cb ee 	. . 
	jr le429h		;e439	18 ee 	. . 
sub_e43bh:
	ld hl,07f35h		;e43b	21 35 7f 	! 5  
	res 5,(hl)		;e43e	cb ae 	. . 
	ld ix,07cffh		;e440	dd 21 ff 7c 	. ! . | 
	ld iy,07bffh		;e444	fd 21 ff 7b 	. ! . { 
	call sub_d6f8h		;e448	cd f8 d6 	. . . 
	call sub_e3e3h		;e44b	cd e3 e3 	. . . 
	ret			;e44e	c9 	. 
sub_e44fh:
	ld a,(078e5h)		;e44f	3a e5 78 	: . x 
	rrca			;e452	0f 	. 
	jr c,le47ah		;e453	38 25 	8 % 
	rrca			;e455	0f 	. 
	jr c,le47ah		;e456	38 22 	8 " 
le458h:
	call sub_e5c0h		;e458	cd c0 e5 	. . . 
	call sub_e6aeh		;e45b	cd ae e6 	. . . 
	call sub_e6aeh		;e45e	cd ae e6 	. . . 
	call sub_e5b8h		;e461	cd b8 e5 	. . . 
	jr c,le47ah		;e464	38 14 	8 . 
	call sub_e6aeh		;e466	cd ae e6 	. . . 
	ld a,00fh		;e469	3e 0f 	> . 
	call sub_e54dh		;e46b	cd 4d e5 	. M . 
	jr c,le47ah		;e46e	38 0a 	8 . 
	ld hl,079bdh		;e470	21 bd 79 	! . y 
	set 2,(hl)		;e473	cb d6 	. . 
	call sub_e652h		;e475	cd 52 e6 	. R . 
	and a			;e478	a7 	. 
	ret			;e479	c9 	. 
le47ah:
	ld hl,079bdh		;e47a	21 bd 79 	! . y 
	res 2,(hl)		;e47d	cb 96 	. . 
	ld hl,07902h		;e47f	21 02 79 	! . y 
	res 1,(hl)		;e482	cb 8e 	. . 
	inc hl			;e484	23 	# 
	inc hl			;e485	23 	# 
	res 0,(hl)		;e486	cb 86 	. . 
	xor a			;e488	af 	. 
	ld (07f34h),a		;e489	32 34 7f 	2 4  
	call sub_e652h		;e48c	cd 52 e6 	. R . 
	scf			;e48f	37 	7 
	ret			;e490	c9 	. 
sub_e491h:
	call 0e4d9h		;e491	cd d9 e4 	. . . 
	ret c			;e494	d8 	. 
le495h:
	ld a,(hl)			;e495	7e 	~ 
	call sub_e4e6h		;e496	cd e6 e4 	. . . 
	call sub_e538h		;e499	cd 38 e5 	. 8 . 
	ret c			;e49c	d8 	. 
	djnz le495h		;e49d	10 f6 	. . 
	call sub_e541h		;e49f	cd 41 e5 	. A . 
	ret			;e4a2	c9 	. 
le4a3h:
	call 0e4d9h		;e4a3	cd d9 e4 	. . . 
	ret c			;e4a6	d8 	. 
le4a7h:
	ld a,(hl)			;e4a7	7e 	~ 
	cp 010h		;e4a8	fe 10 	. . 
	jr c,le4bch		;e4aa	38 10 	8 . 
	cp 020h		;e4ac	fe 20 	.   
	jr nc,le4bch		;e4ae	30 0c 	0 . 
	push hl			;e4b0	e5 	. 
	ld e,a			;e4b1	5f 	_ 
	ld d,000h		;e4b2	16 00 	. . 
	ld hl,le4b9h		;e4b4	21 b9 e4 	! . . 
	add hl,de			;e4b7	19 	. 
	ld a,(hl)			;e4b8	7e 	~ 
le4b9h:
	pop hl			;e4b9	e1 	. 
	jr le4bfh		;e4ba	18 03 	. . 
le4bch:
	call sub_e4e6h		;e4bc	cd e6 e4 	. . . 
le4bfh:
	call sub_e538h		;e4bf	cd 38 e5 	. 8 . 
	ret c			;e4c2	d8 	. 
	djnz le4a7h		;e4c3	10 e2 	. . 
	call sub_e541h		;e4c5	cd 41 e5 	. A . 
	ret			;e4c8	c9 	. 
	jr nz,$+34		;e4c9	20 20 	    
	jr nz,$+34		;e4cb	20 20 	    
	jr nz,$-124		;e4cd	20 82 	  . 
	add a,e			;e4cf	83 	. 
	jr nz,le4f2h		;e4d0	20 20 	    
	ld (bc),a			;e4d2	02 	. 
	call m,01b27h		;e4d3	fc 27 1b 	. ' . 
	inc e			;e4d6	1c 	. 
	dec e			;e4d7	1d 	. 
	ld e,0cdh		;e4d8	1e cd 	. . 
	cp b			;e4da	b8 	. 
	push hl			;e4db	e5 	. 
	ret c			;e4dc	d8 	. 
	call sub_e6aeh		;e4dd	cd ae e6 	. . . 
	ld hl,07f10h		;e4e0	21 10 7f 	! .  
	ld b,018h		;e4e3	06 18 	. . 
	ret			;e4e5	c9 	. 
sub_e4e6h:
	cp 07fh		;e4e6	fe 7f 	.  
	jr nc,le4fbh		;e4e8	30 11 	0 . 
	cp 020h		;e4ea	fe 20 	.   
	jr c,le51ah		;e4ec	38 2c 	8 , 
	cp 030h		;e4ee	fe 30 	. 0 
	jr z,le51dh		;e4f0	28 2b 	( + 
le4f2h:
	cp 04fh		;e4f2	fe 4f 	. O 
	jr z,le520h		;e4f4	28 2a 	( * 
	cp 05ch		;e4f6	fe 5c 	. \ 
	jr z,le52bh		;e4f8	28 31 	( 1 
	ret			;e4fa	c9 	. 
le4fbh:
	cp 0a0h		;e4fb	fe a0 	. . 
	jr c,le51ah		;e4fd	38 1b 	8 . 
	cp 0e0h		;e4ff	fe e0 	. . 
	jr c,le532h		;e501	38 2f 	8 / 
	cp 0e8h		;e503	fe e8 	. . 
	jr c,le51ah		;e505	38 13 	8 . 
	cp 0ech		;e507	fe ec 	. . 
	jr c,le523h		;e509	38 18 	8 . 
	call sub_e6beh		;e50b	cd be e6 	. . . 
	jr nz,le51ah		;e50e	20 0a 	  . 
	cp 0f1h		;e510	fe f1 	. . 
	jr c,le51ah		;e512	38 06 	8 . 
	jr z,le526h		;e514	28 10 	( . 
	cp 0f5h		;e516	fe f5 	. . 
	jr c,le529h		;e518	38 0f 	8 . 
le51ah:
	ld a,020h		;e51a	3e 20 	>   
	ret			;e51c	c9 	. 
le51dh:
	ld a,0f0h		;e51d	3e f0 	> . 
	ret			;e51f	c9 	. 
le520h:
	ld a,030h		;e520	3e 30 	> 0 
	ret			;e522	c9 	. 
le523h:
	ld a,020h		;e523	3e 20 	>   
	ret			;e525	c9 	. 
le526h:
	ld a,0f4h		;e526	3e f4 	> . 
	ret			;e528	c9 	. 
le529h:
	dec a			;e529	3d 	= 
	ret			;e52a	c9 	. 
le52bh:
	call sub_e6beh		;e52b	cd be e6 	. . . 
	ret z			;e52e	c8 	. 
	ld a,00bh		;e52f	3e 0b 	> . 
	ret			;e531	c9 	. 
le532h:
	call sub_e6beh		;e532	cd be e6 	. . . 
	ret z			;e535	c8 	. 
	jr le51ah		;e536	18 e2 	. . 
sub_e538h:
	inc hl			;e538	23 	# 
	push hl			;e539	e5 	. 
	push bc			;e53a	c5 	. 
	call sub_e54dh		;e53b	cd 4d e5 	. M . 
	pop bc			;e53e	c1 	. 
	pop hl			;e53f	e1 	. 
	ret			;e540	c9 	. 
sub_e541h:
	ld a,00dh		;e541	3e 0d 	> . 
	call sub_e54dh		;e543	cd 4d e5 	. M . 
	ret c			;e546	d8 	. 
	ld a,00eh		;e547	3e 0e 	> . 
	call sub_e54dh		;e549	cd 4d e5 	. M . 
	ret			;e54c	c9 	. 
sub_e54dh:
	ld d,a			;e54d	57 	W 
	call sub_e65fh		;e54e	cd 5f e6 	. _ . 
	ld b,008h		;e551	06 08 	. . 
	call sub_e6a4h		;e553	cd a4 e6 	. . . 
	in a,(018h)		;e556	db 18 	. . 
	and 07fh		;e558	e6 7f 	.  
	out (018h),a		;e55a	d3 18 	. . 
	ld c,008h		;e55c	0e 08 	. . 
le55eh:
	ld b,005h		;e55e	06 05 	. . 
	call sub_e6a4h		;e560	cd a4 e6 	. . . 
	in a,(018h)		;e563	db 18 	. . 
	and 0fdh		;e565	e6 fd 	. . 
	rrc d		;e567	cb 0a 	. . 
	jr nc,le56dh		;e569	30 02 	0 . 
	or 002h		;e56b	f6 02 	. . 
le56dh:
	out (018h),a		;e56d	d3 18 	. . 
le56fh:
	ld b,006h		;e56f	06 06 	. . 
le571h:
	call sub_e67ah		;e571	cd 7a e6 	. z . 
	jr nc,le585h		;e574	30 0f 	0 . 
	rra			;e576	1f 	. 
	jr nc,le56fh		;e577	30 f6 	0 . 
	in a,(014h)		;e579	db 14 	. . 
	bit 0,a		;e57b	cb 47 	. G 
	jr z,le571h		;e57d	28 f2 	( . 
	out (014h),a		;e57f	d3 14 	. . 
	djnz le571h		;e581	10 ee 	. . 
	jr le59ch		;e583	18 17 	. . 
le585h:
	in a,(018h)		;e585	db 18 	. . 
	or 001h		;e587	f6 01 	. . 
	out (018h),a		;e589	d3 18 	. . 
	ld b,006h		;e58b	06 06 	. . 
le58dh:
	call sub_e666h		;e58d	cd 66 e6 	. f . 
	jr nc,le5a9h		;e590	30 17 	0 . 
	in a,(014h)		;e592	db 14 	. . 
	bit 0,a		;e594	cb 47 	. G 
	jr z,le58dh		;e596	28 f5 	( . 
	out (014h),a		;e598	d3 14 	. . 
	djnz le58dh		;e59a	10 f1 	. . 
le59ch:
	call sub_e652h		;e59c	cd 52 e6 	. R . 
	ld hl,079d7h		;e59f	21 d7 79 	! . y 
	ld a,(hl)			;e5a2	7e 	~ 
	and 0dbh		;e5a3	e6 db 	. . 
	ld (hl),a			;e5a5	77 	w 
	jp lf8efh		;e5a6	c3 ef f8 	. . . 
le5a9h:
	in a,(018h)		;e5a9	db 18 	. . 
	and 0feh		;e5ab	e6 fe 	. . 
	out (018h),a		;e5ad	d3 18 	. . 
	dec c			;e5af	0d 	. 
	jr nz,le55eh		;e5b0	20 ac 	  . 
	in a,(01fh)		;e5b2	db 1f 	. . 
	rra			;e5b4	1f 	. 
	jr c,le59ch		;e5b5	38 e5 	8 . 
	ret			;e5b7	c9 	. 
sub_e5b8h:
	ld a,020h		;e5b8	3e 20 	>   
	jr le5c2h		;e5ba	18 06 	. . 
	ld a,030h		;e5bc	3e 30 	> 0 
	jr le5c2h		;e5be	18 02 	. . 
sub_e5c0h:
	ld a,00fh		;e5c0	3e 0f 	> . 
le5c2h:
	call sub_e5d5h		;e5c2	cd d5 e5 	. . . 
	jr c,le5cfh		;e5c5	38 08 	8 . 
	ld b,005h		;e5c7	06 05 	. . 
le5c9h:
	call sub_e6aeh		;e5c9	cd ae e6 	. . . 
	djnz le5c9h		;e5cc	10 fb 	. . 
	ret			;e5ce	c9 	. 
le5cfh:
	call sub_e652h		;e5cf	cd 52 e6 	. R . 
	jp lf8efh		;e5d2	c3 ef f8 	. . . 
sub_e5d5h:
	ld d,a			;e5d5	57 	W 
	call sub_e65fh		;e5d6	cd 5f e6 	. _ . 
	call sub_e6aeh		;e5d9	cd ae e6 	. . . 
	call sub_e6aeh		;e5dc	cd ae e6 	. . . 
	call sub_e6aeh		;e5df	cd ae e6 	. . . 
	in a,(018h)		;e5e2	db 18 	. . 
	or 080h		;e5e4	f6 80 	. . 
	out (018h),a		;e5e6	d3 18 	. . 
	ld b,006h		;e5e8	06 06 	. . 
	call sub_e6a4h		;e5ea	cd a4 e6 	. . . 
	ld b,005h		;e5ed	06 05 	. . 
le5efh:
	call sub_e666h		;e5ef	cd 66 e6 	. f . 
	jr nc,le5fbh		;e5f2	30 07 	0 . 
	call sub_e6aeh		;e5f4	cd ae e6 	. . . 
	djnz le5efh		;e5f7	10 f6 	. . 
	jr le638h		;e5f9	18 3d 	. = 
le5fbh:
	ld c,008h		;e5fb	0e 08 	. . 
le5fdh:
	ld b,014h		;e5fd	06 14 	. . 
	call sub_e6a4h		;e5ff	cd a4 e6 	. . . 
	in a,(018h)		;e602	db 18 	. . 
	and 0fdh		;e604	e6 fd 	. . 
	rrc d		;e606	cb 0a 	. . 
	jr nc,le60ch		;e608	30 02 	0 . 
	or 002h		;e60a	f6 02 	. . 
le60ch:
	out (018h),a		;e60c	d3 18 	. . 
	ld b,006h		;e60e	06 06 	. . 
le610h:
	call sub_e666h		;e610	cd 66 e6 	. f . 
	jr nc,le621h		;e613	30 0c 	0 . 
	in a,(014h)		;e615	db 14 	. . 
	bit 0,a		;e617	cb 47 	. G 
	jr z,le610h		;e619	28 f5 	( . 
	out (014h),a		;e61b	d3 14 	. . 
	djnz le610h		;e61d	10 f1 	. . 
	jr le638h		;e61f	18 17 	. . 
le621h:
	in a,(018h)		;e621	db 18 	. . 
	or 001h		;e623	f6 01 	. . 
	out (018h),a		;e625	d3 18 	. . 
	ld b,002h		;e627	06 02 	. . 
le629h:
	call sub_e67ah		;e629	cd 7a e6 	. z . 
	jr nc,le63dh		;e62c	30 0f 	0 . 
	in a,(014h)		;e62e	db 14 	. . 
	bit 0,a		;e630	cb 47 	. G 
	jr z,le629h		;e632	28 f5 	( . 
	out (014h),a		;e634	d3 14 	. . 
	djnz le629h		;e636	10 f1 	. . 
le638h:
	call sub_e658h		;e638	cd 58 e6 	. X . 
	scf			;e63b	37 	7 
	ret			;e63c	c9 	. 
le63dh:
	ld b,001h		;e63d	06 01 	. . 
	call sub_e6a4h		;e63f	cd a4 e6 	. . . 
	in a,(018h)		;e642	db 18 	. . 
	and 0feh		;e644	e6 fe 	. . 
	out (018h),a		;e646	d3 18 	. . 
	dec c			;e648	0d 	. 
	jr nz,le5fdh		;e649	20 b2 	  . 
	call sub_e658h		;e64b	cd 58 e6 	. X . 
	in a,(01fh)		;e64e	db 1f 	. . 
	rra			;e650	1f 	. 
	ret			;e651	c9 	. 
sub_e652h:
	in a,(015h)		;e652	db 15 	. . 
	and 040h		;e654	e6 40 	. @ 
	out (015h),a		;e656	d3 15 	. . 
sub_e658h:
	in a,(018h)		;e658	db 18 	. . 
	and 07ch		;e65a	e6 7c 	. | 
	out (018h),a		;e65c	d3 18 	. . 
	ret			;e65e	c9 	. 
sub_e65fh:
	in a,(018h)		;e65f	db 18 	. . 
	and 0fch		;e661	e6 fc 	. . 
	out (018h),a		;e663	d3 18 	. . 
	ret			;e665	c9 	. 
sub_e666h:
	scf			;e666	37 	7 
	in a,(01fh)		;e667	db 1f 	. . 
	bit 1,a		;e669	cb 4f 	. O 
	ret z			;e66b	c8 	. 
	push bc			;e66c	c5 	. 
	ld b,00ah		;e66d	06 0a 	. . 
	call sub_e6a4h		;e66f	cd a4 e6 	. . . 
	pop bc			;e672	c1 	. 
	in a,(01fh)		;e673	db 1f 	. . 
	bit 1,a		;e675	cb 4f 	. O 
	ret z			;e677	c8 	. 
	and a			;e678	a7 	. 
	ret			;e679	c9 	. 
sub_e67ah:
	scf			;e67a	37 	7 
	in a,(01fh)		;e67b	db 1f 	. . 
	bit 1,a		;e67d	cb 4f 	. O 
	ret nz			;e67f	c0 	. 
	push bc			;e680	c5 	. 
	ld b,00ah		;e681	06 0a 	. . 
	call sub_e6a4h		;e683	cd a4 e6 	. . . 
	pop bc			;e686	c1 	. 
	in a,(01fh)		;e687	db 1f 	. . 
	bit 1,a		;e689	cb 4f 	. O 
	ret nz			;e68b	c0 	. 
	and a			;e68c	a7 	. 
	ret			;e68d	c9 	. 
le68eh:
	call sub_e666h		;e68e	cd 66 e6 	. f . 
	ret nc			;e691	d0 	. 
	call 0bfb5h		;e692	cd b5 bf 	. . . 
	jr z,le68eh		;e695	28 f7 	( . 
	scf			;e697	37 	7 
	ret			;e698	c9 	. 
sub_e699h:
	call sub_e67ah		;e699	cd 7a e6 	. z . 
	ret nc			;e69c	d0 	. 
	call 0bfb5h		;e69d	cd b5 bf 	. . . 
	jr z,sub_e699h		;e6a0	28 f7 	( . 
	scf			;e6a2	37 	7 
	ret			;e6a3	c9 	. 
sub_e6a4h:
	push ix		;e6a4	dd e5 	. . 
	inc ix		;e6a6	dd 23 	. # 
	pop ix		;e6a8	dd e1 	. . 
le6aah:
	djnz le6aah		;e6aa	10 fe 	. . 
	ld b,b			;e6ac	40 	@ 
	ret			;e6ad	c9 	. 
sub_e6aeh:
	call sub_e6b4h		;e6ae	cd b4 e6 	. . . 
	call sub_e6b4h		;e6b1	cd b4 e6 	. . . 
sub_e6b4h:
	push bc			;e6b4	c5 	. 
	ld b,0a0h		;e6b5	06 a0 	. . 
le6b7h:
	djnz le6b7h		;e6b7	10 fe 	. . 
le6b9h:
	nop			;e6b9	00 	. 
	djnz le6b9h		;e6ba	10 fd 	. . 
	pop bc			;e6bc	c1 	. 
	ret			;e6bd	c9 	. 
sub_e6beh:
	push hl			;e6be	e5 	. 
	ld l,a			;e6bf	6f 	o 
	xor a			;e6c0	af 	. 
	dec a			;e6c1	3d 	= 
	ld a,l			;e6c2	7d 	} 
	pop hl			;e6c3	e1 	. 
	ret			;e6c4	c9 	. 
le6c5h:
	ld a,007h		;e6c5	3e 07 	> . 
	ld (07f2ah),a		;e6c7	32 2a 7f 	2 *  
	ld hl,00578h		;e6ca	21 78 05 	! x . 
	ld (07f2bh),hl		;e6cd	22 2b 7f 	" +  
	call 0bfbbh		;e6d0	cd bb bf 	. . . 
	ret c			;e6d3	d8 	. 
	call 0bf37h		;e6d4	cd 37 bf 	. 7 . 
	ret c			;e6d7	d8 	. 
	ld hl,(07f18h)		;e6d8	2a 18 7f 	* .  
	ld (07f28h),hl		;e6db	22 28 7f 	" (  
	call sub_f85eh		;e6de	cd 5e f8 	. ^ . 
	jr nc,le717h		;e6e1	30 34 	0 4 
	cp 02ch		;e6e3	fe 2c 	. , 
	jr nz,le72fh		;e6e5	20 48 	  H 
	call sub_f85eh		;e6e7	cd 5e f8 	. ^ . 
	jr nc,le72dh		;e6ea	30 41 	0 A 
	cp 02ch		;e6ec	fe 2c 	. , 
	jr z,le709h		;e6ee	28 19 	( . 
	dec ix		;e6f0	dd 2b 	. + 
	call 0bfbbh		;e6f2	cd bb bf 	. . . 
	ret c			;e6f5	d8 	. 
	call 0bd5ah		;e6f6	cd 5a bd 	. Z . 
	ret c			;e6f9	d8 	. 
	ld a,(07f18h)		;e6fa	3a 18 7f 	: .  
	ld (07f2ah),a		;e6fd	32 2a 7f 	2 *  
	call sub_f85eh		;e700	cd 5e f8 	. ^ . 
	jr nc,le717h		;e703	30 12 	0 . 
	cp 02ch		;e705	fe 2c 	. , 
	jr nz,le72fh		;e707	20 26 	  & 
le709h:
	call 0bfbbh		;e709	cd bb bf 	. . . 
	ret c			;e70c	d8 	. 
	call 0bf37h		;e70d	cd 37 bf 	. 7 . 
	ret c			;e710	d8 	. 
	ld hl,(07f18h)		;e711	2a 18 7f 	* .  
	ld (07f2bh),hl		;e714	22 2b 7f 	" +  
le717h:
	ld de,(07f28h)		;e717	ed 5b 28 7f 	. [ (  
	ld a,(07f2ah)		;e71b	3a 2a 7f 	: *  
	ld bc,(07f2bh)		;e71e	ed 4b 2b 7f 	. K +  
	call sub_e732h		;e722	cd 32 e7 	. 2 . 
	ret nc			;e725	d0 	. 
	ld hl,07f35h		;e726	21 35 7f 	! 5  
	set 5,(hl)		;e729	cb ee 	. . 
	and a			;e72b	a7 	. 
	ret			;e72c	c9 	. 
le72dh:
	inc ix		;e72d	dd 23 	. # 
le72fh:
	jp 08379h		;e72f	c3 79 83 	. y . 
sub_e732h:
	push bc			;e732	c5 	. 
	push de			;e733	d5 	. 
	push hl			;e734	e5 	. 
	ld l,a			;e735	6f 	o 
	ld a,e			;e736	7b 	{ 
	or d			;e737	b2 	. 
	jr z,le74fh		;e738	28 15 	( . 
le73ah:
	ld a,l			;e73a	7d 	} 
	call sub_e759h		;e73b	cd 59 e7 	. Y . 
	jr c,le74fh		;e73e	38 0f 	8 . 
	dec de			;e740	1b 	. 
	ld a,e			;e741	7b 	{ 
	or d			;e742	b2 	. 
	jr z,le74fh		;e743	28 0a 	( . 
	push hl			;e745	e5 	. 
	ld hl,00006h		;e746	21 06 00 	! . . 
	call sub_e793h		;e749	cd 93 e7 	. . . 
	pop hl			;e74c	e1 	. 
	jr nc,le73ah		;e74d	30 eb 	0 . 
le74fh:
	in a,(018h)		;e74f	db 18 	. . 
	and 03fh		;e751	e6 3f 	. ? 
	out (018h),a		;e753	d3 18 	. . 
le755h:
	pop hl			;e755	e1 	. 
	pop de			;e756	d1 	. 
	pop bc			;e757	c1 	. 
	ret			;e758	c9 	. 
sub_e759h:
	push bc			;e759	c5 	. 
	push de			;e75a	d5 	. 
	push hl			;e75b	e5 	. 
	ld h,a			;e75c	67 	g 
	inc h			;e75d	24 	$ 
	ld a,c			;e75e	79 	y 
	or b			;e75f	b0 	. 
	jr z,le755h		;e760	28 f3 	( . 
le762h:
	in a,(018h)		;e762	db 18 	. . 
	or 0c0h		;e764	f6 c0 	. . 
	out (018h),a		;e766	d3 18 	. . 
	call sub_e78ch		;e768	cd 8c e7 	. . . 
	scf			;e76b	37 	7 
	in a,(01fh)		;e76c	db 1f 	. . 
	bit 7,a		;e76e	cb 7f 	.  
	jr nz,le755h		;e770	20 e3 	  . 
	dec bc			;e772	0b 	. 
	ld a,c			;e773	79 	y 
	or b			;e774	b0 	. 
	jr z,le755h		;e775	28 de 	( . 
	ld l,004h		;e777	2e 04 	. . 
le779h:
	dec l			;e779	2d 	- 
	jr nz,le779h		;e77a	20 fd 	  . 
	in a,(018h)		;e77c	db 18 	. . 
	and 03fh		;e77e	e6 3f 	. ? 
	out (018h),a		;e780	d3 18 	. . 
	call sub_e78ch		;e782	cd 8c e7 	. . . 
	ld l,006h		;e785	2e 06 	. . 
le787h:
	dec l			;e787	2d 	- 
	jr nz,le787h		;e788	20 fd 	  . 
	jr le762h		;e78a	18 d6 	. . 
sub_e78ch:
	ld l,h			;e78c	6c 	l 
le78dh:
	dec l			;e78d	2d 	- 
	inc de			;e78e	13 	. 
	nop			;e78f	00 	. 
	jr nz,le78dh		;e790	20 fb 	  . 
	ret			;e792	c9 	. 
sub_e793h:
	push bc			;e793	c5 	. 
	ld c,a			;e794	4f 	O 
le795h:
	ld a,l			;e795	7d 	} 
	or h			;e796	b4 	. 
	jr z,le7aeh		;e797	28 15 	( . 
	scf			;e799	37 	7 
	ld b,006h		;e79a	06 06 	. . 
le79ch:
	push bc			;e79c	c5 	. 
	ld b,0a6h		;e79d	06 a6 	. . 
le79fh:
	in a,(01fh)		;e79f	db 1f 	. . 
	bit 7,a		;e7a1	cb 7f 	.  
	jr nz,le7adh		;e7a3	20 08 	  . 
	djnz le79fh		;e7a5	10 f8 	. . 
	pop bc			;e7a7	c1 	. 
	djnz le79ch		;e7a8	10 f2 	. . 
	dec hl			;e7aa	2b 	+ 
	jr le795h		;e7ab	18 e8 	. . 
le7adh:
	pop bc			;e7ad	c1 	. 
le7aeh:
	ld a,c			;e7ae	79 	y 
	pop bc			;e7af	c1 	. 
	ret			;e7b0	c9 	. 
le7b1h:
	call sub_f51ch		;e7b1	cd 1c f5 	. . . 
	call sub_ea67h		;e7b4	cd 67 ea 	. g . 
	call sub_f844h		;e7b7	cd 44 f8 	. D . 
	cp 04dh		;e7ba	fe 4d 	. M 
	jp z,le86ch		;e7bc	ca 6c e8 	. l . 
	cp 040h		;e7bf	fe 40 	. @ 
	jp z,0bc94h		;e7c1	ca 94 bc 	. . . 
	push af			;e7c4	f5 	. 
	ld a,002h		;e7c5	3e 02 	> . 
	ld (07c80h),a		;e7c7	32 80 7c 	2 . | 
	dec a			;e7ca	3d 	= 
	ld (07c98h),a		;e7cb	32 98 7c 	2 . | 
	ld a,003h		;e7ce	3e 03 	> . 
	ld (07a6eh),a		;e7d0	32 6e 7a 	2 n z 
	pop af			;e7d3	f1 	. 
	cp 03fh		;e7d4	fe 3f 	. ? 
	jr z,le83ch		;e7d6	28 64 	( d 
	dec ix		;e7d8	dd 2b 	. + 
	call sub_e91bh		;e7da	cd 1b e9 	. . . 
	ret c			;e7dd	d8 	. 
le7deh:
	call sub_eadfh		;e7de	cd df ea 	. . . 
	jp c,le92fh		;e7e1	da 2f e9 	. / . 
	ld hl,(079fch)		;e7e4	2a fc 79 	* . y 
	ld de,(079e1h)		;e7e7	ed 5b e1 79 	. [ . y 
	scf			;e7eb	37 	7 
	sbc hl,de		;e7ec	ed 52 	. R 
	ex de,hl			;e7ee	eb 	. 
	ld hl,(07cc2h)		;e7ef	2a c2 7c 	* . | 
	ld bc,lfff4h		;e7f2	01 f4 ff 	. . . 
	add hl,bc			;e7f5	09 	. 
	ex de,hl			;e7f6	eb 	. 
	scf			;e7f7	37 	7 
	sbc hl,de		;e7f8	ed 52 	. R 
	jp c,le937h		;e7fa	da 37 e9 	. 7 . 
	call sub_e8cch		;e7fd	cd cc e8 	. . . 
	jp c,le949h		;e800	da 49 e9 	. I . 
	call sub_f5a0h		;e803	cd a0 f5 	. . . 
	jp c,le93bh		;e806	da 3b e9 	. ; . 
	ld (079e3h),hl		;e809	22 e3 79 	" . y 
	ld a,(07a6eh)		;e80c	3a 6e 7a 	: n z 
	cp 003h		;e80f	fe 03 	. . 
	jr nz,le834h		;e811	20 21 	  ! 
	ld (hl),0ffh		;e813	36 ff 	6 . 
	call 0be26h		;e815	cd 26 be 	. & . 
	ld hl,079d9h		;e818	21 d9 79 	! . y 
	res 4,(hl)		;e81b	cb a6 	. . 
	ld hl,07f20h		;e81d	21 20 7f 	!    
	ld de,079c0h		;e820	11 c0 79 	. . y 
	ld bc,00008h		;e823	01 08 00 	. . . 
	xor a			;e826	af 	. 
le827h:
	or (hl)			;e827	b6 	. 
	ldi		;e828	ed a0 	. . 
	jp pe,le827h		;e82a	ea 27 e8 	. ' . 
	jr z,le834h		;e82d	28 05 	( . 
	ld hl,079d9h		;e82f	21 d9 79 	! . y 
	set 4,(hl)		;e832	cb e6 	. . 
le834h:
	xor a			;e834	af 	. 
le835h:
	call sub_f8a4h		;e835	cd a4 f8 	. . . 
	call sub_f5e9h		;e838	cd e9 f5 	. . . 
	ret			;e83b	c9 	. 
le83ch:
	call sub_e91bh		;e83c	cd 1b e9 	. . . 
	ret c			;e83f	d8 	. 
le840h:
	call sub_eadfh		;e840	cd df ea 	. . . 
	jp c,le92fh		;e843	da 2f e9 	. / . 
	ld hl,(079e3h)		;e846	2a e3 79 	* . y 
	ld de,(079e1h)		;e849	ed 5b e1 79 	. [ . y 
	scf			;e84d	37 	7 
	sbc hl,de		;e84e	ed 52 	. R 
	ex de,hl			;e850	eb 	. 
	ld hl,(07cc2h)		;e851	2a c2 7c 	* . | 
	ld bc,lfff4h		;e854	01 f4 ff 	. . . 
	add hl,bc			;e857	09 	. 
	ex de,hl			;e858	eb 	. 
	xor a			;e859	af 	. 
	sbc hl,de		;e85a	ed 52 	. R 
	jp nz,le933h		;e85c	c2 33 e9 	. 3 . 
	call sub_e8cch		;e85f	cd cc e8 	. . . 
le862h:
	jp c,le949h		;e862	da 49 e9 	. I . 
	call sub_f59ch		;e865	cd 9c f5 	. . . 
	jr c,le862h		;e868	38 f8 	8 . 
	jr le834h		;e86a	18 c8 	. . 
le86ch:
	xor a			;e86c	af 	. 
	ld (07c98h),a		;e86d	32 98 7c 	2 . | 
	inc a			;e870	3c 	< 
	ld (07c80h),a		;e871	32 80 7c 	2 . | 
	call sub_f844h		;e874	cd 44 f8 	. D . 
	cp 022h		;e877	fe 22 	. " 
	jr nz,le8c3h		;e879	20 48 	  H 
	call sub_ea99h		;e87b	cd 99 ea 	. . . 
	ret c			;e87e	d8 	. 
	call sub_f844h		;e87f	cd 44 f8 	. D . 
	cp 03bh		;e882	fe 3b 	. ; 
	jr nz,le895h		;e884	20 0f 	  . 
le886h:
	call sub_eb18h		;e886	cd 18 eb 	. . . 
	ret c			;e889	d8 	. 
	ld (07c94h),hl		;e88a	22 94 7c 	" . | 
	ld a,0ffh		;e88d	3e ff 	> . 
	ld (07c9eh),a		;e88f	32 9e 7c 	2 . | 
	call sub_f844h		;e892	cd 44 f8 	. D . 
le895h:
	call sub_f861h		;e895	cd 61 f8 	. a . 
	ret c			;e898	d8 	. 
le899h:
	call sub_eadfh		;e899	cd df ea 	. . . 
	jp c,le92fh		;e89c	da 2f e9 	. / . 
	ld a,(07c9eh)		;e89f	3a 9e 7c 	: . | 
	cp 0ffh		;e8a2	fe ff 	. . 
	jr z,le8abh		;e8a4	28 05 	( . 
	ld hl,(07cc4h)		;e8a6	2a c4 7c 	* . | 
	jr le8aeh		;e8a9	18 03 	. . 
le8abh:
	ld hl,(07c94h)		;e8ab	2a 94 7c 	* . | 
le8aeh:
	ld (07a60h),hl		;e8ae	22 60 7a 	" ` z 
	ld hl,(07cc2h)		;e8b1	2a c2 7c 	* . | 
	ld (07a62h),hl		;e8b4	22 62 7a 	" b z 
	call sub_f88ah		;e8b7	cd 8a f8 	. . . 
	call sub_f5a9h		;e8ba	cd a9 f5 	. . . 
	jp c,le949h		;e8bd	da 49 e9 	. I . 
	jp le834h		;e8c0	c3 34 e8 	. 4 . 
le8c3h:
	call sub_f861h		;e8c3	cd 61 f8 	. a . 
	jr nc,le899h		;e8c6	30 d1 	0 . 
	dec ix		;e8c8	dd 2b 	. + 
	jr le886h		;e8ca	18 ba 	. . 
sub_e8cch:
	ld (07a62h),de		;e8cc	ed 53 62 7a 	. S b z 
	ld hl,(079e1h)		;e8d0	2a e1 79 	* . y 
	inc hl			;e8d3	23 	# 
	ld (07a60h),hl		;e8d4	22 60 7a 	" ` z 
	call sub_f88ah		;e8d7	cd 8a f8 	. . . 
	call sub_f5ddh		;e8da	cd dd f5 	. . . 
	call sub_f607h		;e8dd	cd 07 f6 	. . . 
	call sub_f74ah		;e8e0	cd 4a f7 	. J . 
	ret c			;e8e3	d8 	. 
le8e4h:
	call sub_f695h		;e8e4	cd 95 f6 	. . . 
	ret c			;e8e7	d8 	. 
	rra			;e8e8	1f 	. 
	jr nc,le8e4h		;e8e9	30 f9 	0 . 
	call sub_f6feh		;e8eb	cd fe f6 	. . . 
	ret c			;e8ee	d8 	. 
	cp 0ffh		;e8ef	fe ff 	. . 
	jr nz,le917h		;e8f1	20 24 	  $ 
	call sub_f6feh		;e8f3	cd fe f6 	. . . 
	ret c			;e8f6	d8 	. 
	or a			;e8f7	b7 	. 
	jr nz,le917h		;e8f8	20 1d 	  . 
	call sub_f6feh		;e8fa	cd fe f6 	. . . 
	ret c			;e8fd	d8 	. 
	ld hl,07a6eh		;e8fe	21 6e 7a 	! n z 
	cp (hl)			;e901	be 	. 
	jr nz,le917h		;e902	20 13 	  . 
	call sub_f6feh		;e904	cd fe f6 	. . . 
	ret c			;e907	d8 	. 
	ld hl,07f20h		;e908	21 20 7f 	!    
	ld b,008h		;e90b	06 08 	. . 
le90dh:
	call sub_f6feh		;e90d	cd fe f6 	. . . 
	ret c			;e910	d8 	. 
	ld (hl),a			;e911	77 	w 
	inc hl			;e912	23 	# 
	djnz le90dh		;e913	10 f8 	. . 
	xor a			;e915	af 	. 
	ret			;e916	c9 	. 
le917h:
	ld a,009h		;e917	3e 09 	> . 
	scf			;e919	37 	7 
	ret			;e91a	c9 	. 
sub_e91bh:
	call sub_f844h		;e91b	cd 44 f8 	. D . 
	cp 022h		;e91e	fe 22 	. " 
	jr nz,le929h		;e920	20 07 	  . 
	call sub_ea99h		;e922	cd 99 ea 	. . . 
	ret c			;e925	d8 	. 
	call sub_f844h		;e926	cd 44 f8 	. D . 
le929h:
	call sub_f861h		;e929	cd 61 f8 	. a . 
	ret			;e92c	c9 	. 
	ld a,001h		;e92d	3e 01 	> . 
le92fh:
	call sub_e94fh		;e92f	cd 4f e9 	. O . 
	ret			;e932	c9 	. 
le933h:
	ld a,002h		;e933	3e 02 	> . 
	jr le92fh		;e935	18 f8 	. . 
le937h:
	ld a,004h		;e937	3e 04 	> . 
	jr le92fh		;e939	18 f4 	. . 
le93bh:
	ld hl,(079e1h)		;e93b	2a e1 79 	* . y 
	inc hl			;e93e	23 	# 
	ld (079e3h),hl		;e93f	22 e3 79 	" . y 
	ld (hl),0ffh		;e942	36 ff 	6 . 
	push af			;e944	f5 	. 
	call 0be26h		;e945	cd 26 be 	. & . 
	pop af			;e948	f1 	. 
le949h:
	call sub_e94fh		;e949	cd 4f e9 	. O . 
	jp le835h		;e94c	c3 35 e8 	. 5 . 
sub_e94fh:
	and a			;e94f	a7 	. 
	jr z,le960h		;e950	28 0e 	( . 
	ld hl,le965h		;e952	21 65 e9 	! e . 
	ld e,a			;e955	5f 	_ 
	ld d,000h		;e956	16 00 	. . 
	add hl,de			;e958	19 	. 
	ld a,(hl)			;e959	7e 	~ 
	ld hl,07f34h		;e95a	21 34 7f 	! 4  
	ld (hl),a			;e95d	77 	w 
	scf			;e95e	37 	7 
	ret			;e95f	c9 	. 
le960h:
	ld hl,07f35h		;e960	21 35 7f 	! 5  
	set 5,(hl)		;e963	cb ee 	. . 
le965h:
	ret			;e965	c9 	. 
	add a,b			;e966	80 	. 
	add a,d			;e967	82 	. 
	add a,c			;e968	81 	. 
	ld h,b			;e969	60 	` 
	ld b,c			;e96a	41 	A 
	ld b,c			;e96b	41 	A 
	add a,a			;e96c	87 	. 
	sub l			;e96d	95 	. 
	sub (hl)			;e96e	96 	. 
le96fh:
	call 0bf2bh		;e96f	cd 2b bf 	. + . 
	ret			;e972	c9 	. 
le973h:
	ld hl,079d9h		;e973	21 d9 79 	! . y 
	bit 4,(hl)		;e976	cb 66 	. f 
	jr nz,le96fh		;e978	20 f5 	  . 
	call sub_f51ch		;e97a	cd 1c f5 	. . . 
	call 0801fh		;e97d	cd 1f 80 	. . . 
	call sub_ea67h		;e980	cd 67 ea 	. g . 
	call sub_f844h		;e983	cd 44 f8 	. D . 
	cp 04dh		;e986	fe 4d 	. M 
	jp z,lea09h		;e988	ca 09 ea 	. . . 
	ld a,002h		;e98b	3e 02 	> . 
	ld (07c80h),a		;e98d	32 80 7c 	2 . | 
	dec a			;e990	3d 	= 
	ld (07c98h),a		;e991	32 98 7c 	2 . | 
	call sub_ea99h		;e994	cd 99 ea 	. . . 
	ret c			;e997	d8 	. 
	call sub_f85eh		;e998	cd 5e f8 	. ^ . 
	jr nc,le9b1h		;e99b	30 14 	0 . 
	cp 02ch		;e99d	fe 2c 	. , 
le99fh:
	jp nz,lea64h		;e99f	c2 64 ea 	. d . 
	call sub_f844h		;e9a2	cd 44 f8 	. D . 
	cp 022h		;e9a5	fe 22 	. " 
	jr nz,le99fh		;e9a7	20 f6 	  . 
	call sub_ea81h		;e9a9	cd 81 ea 	. . . 
	ret c			;e9ac	d8 	. 
	call sub_f85eh		;e9ad	cd 5e f8 	. ^ . 
	ret c			;e9b0	d8 	. 
le9b1h:
	ld a,003h		;e9b1	3e 03 	> . 
	ld (07a6eh),a		;e9b3	32 6e 7a 	2 n z 
le9b6h:
	ld hl,(079e3h)		;e9b6	2a e3 79 	* . y 
	ld de,(079e1h)		;e9b9	ed 5b e1 79 	. [ . y 
	inc de			;e9bd	13 	. 
	and a			;e9be	a7 	. 
	sbc hl,de		;e9bf	ed 52 	. R 
	jr z,lea03h		;e9c1	28 40 	( @ 
	ld (07a60h),de		;e9c3	ed 53 60 7a 	. S ` z 
	ld (07a62h),hl		;e9c7	22 62 7a 	" b z 
	ld de,0000ch		;e9ca	11 0c 00 	. . . 
	add hl,de			;e9cd	19 	. 
	ld (07c92h),hl		;e9ce	22 92 7c 	" . | 
	call sub_f537h		;e9d1	cd 37 f5 	. 7 . 
	jr c,lea05h		;e9d4	38 2f 	8 / 
	call sub_f5ddh		;e9d6	cd dd f5 	. . . 
	call sub_f79dh		;e9d9	cd 9d f7 	. . . 
	jr c,lea05h		;e9dc	38 27 	8 ' 
	ld a,0ffh		;e9de	3e ff 	> . 
	call sub_f728h		;e9e0	cd 28 f7 	. ( . 
	xor a			;e9e3	af 	. 
	call sub_f728h		;e9e4	cd 28 f7 	. ( . 
	ld a,(07a6eh)		;e9e7	3a 6e 7a 	: n z 
	call sub_f728h		;e9ea	cd 28 f7 	. ( . 
	ld a,000h		;e9ed	3e 00 	> . 
	call sub_f728h		;e9ef	cd 28 f7 	. ( . 
	ld hl,07f20h		;e9f2	21 20 7f 	!    
	ld b,008h		;e9f5	06 08 	. . 
le9f7h:
	ld a,(hl)			;e9f7	7e 	~ 
	inc hl			;e9f8	23 	# 
	call sub_f728h		;e9f9	cd 28 f7 	. ( . 
	djnz le9f7h		;e9fc	10 f9 	. . 
	call sub_f58ah		;e9fe	cd 8a f5 	. . . 
	jr c,lea05h		;ea01	38 02 	8 . 
lea03h:
	xor a			;ea03	af 	. 
	ret			;ea04	c9 	. 
lea05h:
	call sub_e94fh		;ea05	cd 4f e9 	. O . 
	ret			;ea08	c9 	. 
lea09h:
	xor a			;ea09	af 	. 
	ld (07c98h),a		;ea0a	32 98 7c 	2 . | 
	inc a			;ea0d	3c 	< 
	ld (07c80h),a		;ea0e	32 80 7c 	2 . | 
	call sub_f844h		;ea11	cd 44 f8 	. D . 
	cp 022h		;ea14	fe 22 	. " 
	ex af,af'			;ea16	08 	. 
	call sub_ea99h		;ea17	cd 99 ea 	. . . 
	ret c			;ea1a	d8 	. 
	ex af,af'			;ea1b	08 	. 
	jr nz,lea25h		;ea1c	20 07 	  . 
	call sub_f844h		;ea1e	cd 44 f8 	. D . 
	cp 03bh		;ea21	fe 3b 	. ; 
	jr nz,lea64h		;ea23	20 3f 	  ? 
lea25h:
	call sub_eb18h		;ea25	cd 18 eb 	. . . 
	ret c			;ea28	d8 	. 
	ld (07a60h),hl		;ea29	22 60 7a 	" ` z 
	ld (07c94h),hl		;ea2c	22 94 7c 	" . | 
	call sub_f844h		;ea2f	cd 44 f8 	. D . 
	cp 02ch		;ea32	fe 2c 	. , 
	jr nz,lea64h		;ea34	20 2e 	  . 
	call sub_eb18h		;ea36	cd 18 eb 	. . . 
	ret c			;ea39	d8 	. 
	ld de,(07a60h)		;ea3a	ed 5b 60 7a 	. [ ` z 
	sbc hl,de		;ea3e	ed 52 	. R 
	jp c,lf8d7h		;ea40	da d7 f8 	. . . 
	inc hl			;ea43	23 	# 
	ld (07a62h),hl		;ea44	22 62 7a 	" b z 
	ld (07c92h),hl		;ea47	22 92 7c 	" . | 
	call sub_f85eh		;ea4a	cd 5e f8 	. ^ . 
	ret c			;ea4d	d8 	. 
	ld a,0ffh		;ea4e	3e ff 	> . 
	ld h,a			;ea50	67 	g 
	ld l,a			;ea51	6f 	o 
	ld (07c9fh),a		;ea52	32 9f 7c 	2 . | 
	ld (07c96h),hl		;ea55	22 96 7c 	" . | 
	call sub_f537h		;ea58	cd 37 f5 	. 7 . 
	jr c,lea05h		;ea5b	38 a8 	8 . 
	call sub_f582h		;ea5d	cd 82 f5 	. . . 
	jr c,lea05h		;ea60	38 a3 	8 . 
	xor a			;ea62	af 	. 
	ret			;ea63	c9 	. 
lea64h:
	jp 08379h		;ea64	c3 79 83 	. y . 
sub_ea67h:
	ld hl,07c80h		;ea67	21 80 7c 	! . | 
	ld bc,06000h		;ea6a	01 00 60 	. . ` 
	jr lea7ch		;ea6d	18 0d 	. . 
sub_ea6fh:
	ld hl,07c91h		;ea6f	21 91 7c 	! . | 
	ld (hl),00dh		;ea72	36 0d 	6 . 
	ld hl,07c81h		;ea74	21 81 7c 	! . | 
	ld d,h			;ea77	54 	T 
	ld e,l			;ea78	5d 	] 
	ld bc,01020h		;ea79	01 20 10 	.   . 
lea7ch:
	ld (hl),c			;ea7c	71 	q 
	inc hl			;ea7d	23 	# 
	djnz lea7ch		;ea7e	10 fc 	. . 
	ret			;ea80	c9 	. 
sub_ea81h:
	ld de,07f20h		;ea81	11 20 7f 	.    
	ld a,(ix+001h)		;ea84	dd 7e 01 	. ~ . 
	cp 00dh		;ea87	fe 0d 	. . 
	jr z,lea96h		;ea89	28 0b 	( . 
	ld hl,07a6ch		;ea8b	21 6c 7a 	! l z 
	set 1,(hl)		;ea8e	cb ce 	. . 
	cp 022h		;ea90	fe 22 	. " 
	jr nz,leaa8h		;ea92	20 14 	  . 
	inc ix		;ea94	dd 23 	. # 
lea96h:
	jp 08379h		;ea96	c3 79 83 	. y . 
sub_ea99h:
	call sub_ea6fh		;ea99	cd 6f ea 	. o . 
	ld a,(ix+000h)		;ea9c	dd 7e 00 	. ~ . 
	cp 022h		;ea9f	fe 22 	. " 
	jr nz,leadbh		;eaa1	20 38 	  8 
sub_eaa3h:
	ld hl,07a6ch		;eaa3	21 6c 7a 	! l z 
	res 1,(hl)		;eaa6	cb 8e 	. . 
leaa8h:
	ld b,008h		;eaa8	06 08 	. . 
leaaah:
	inc ix		;eaaa	dd 23 	. # 
	ld a,(ix+000h)		;eaac	dd 7e 00 	. ~ . 
	cp 022h		;eaaf	fe 22 	. " 
	ret z			;eab1	c8 	. 
	cp 00dh		;eab2	fe 0d 	. . 
	jr z,leadbh		;eab4	28 25 	( % 
	bit 1,(hl)		;eab6	cb 4e 	. N 
	jr nz,leac0h		;eab8	20 06 	  . 
	call 0bd60h		;eaba	cd 60 bd 	. ` . 
leabdh:
	jp c,0839ch		;eabd	da 9c 83 	. . . 
leac0h:
	ld (de),a			;eac0	12 	. 
	inc de			;eac1	13 	. 
	djnz leaaah		;eac2	10 e6 	. . 
leac4h:
	inc ix		;eac4	dd 23 	. # 
	ld a,(ix+000h)		;eac6	dd 7e 00 	. ~ . 
	cp 022h		;eac9	fe 22 	. " 
	ret z			;eacb	c8 	. 
	cp 00dh		;eacc	fe 0d 	. . 
	jr z,leadbh		;eace	28 0b 	( . 
	bit 1,(hl)		;ead0	cb 4e 	. N 
	jr nz,leac4h		;ead2	20 f0 	  . 
	call 0bd60h		;ead4	cd 60 bd 	. ` . 
	jr nc,leac4h		;ead7	30 eb 	0 . 
	jr leabdh		;ead9	18 e2 	. . 
leadbh:
	dec ix		;eadb	dd 2b 	. + 
	and a			;eadd	a7 	. 
	ret			;eade	c9 	. 
sub_eadfh:
	call sub_f55bh		;eadf	cd 5b f5 	. [ . 
	ret c			;eae2	d8 	. 
	ld hl,07cb0h		;eae3	21 b0 7c 	! . | 
	ld a,(07c80h)		;eae6	3a 80 7c 	: . | 
	cp (hl)			;eae9	be 	. 
	jr z,leaf4h		;eaea	28 08 	( . 
	cp 004h		;eaec	fe 04 	. . 
	jr nz,sub_eadfh		;eaee	20 ef 	  . 
	xor a			;eaf0	af 	. 
	cp (hl)			;eaf1	be 	. 
	jr nz,sub_eadfh		;eaf2	20 eb 	  . 
leaf4h:
	ld hl,07cc8h		;eaf4	21 c8 7c 	! . | 
	ld a,(07c98h)		;eaf7	3a 98 7c 	: . | 
	and a			;eafa	a7 	. 
	jr z,leb00h		;eafb	28 03 	( . 
	cp (hl)			;eafd	be 	. 
	jr nz,sub_eadfh		;eafe	20 df 	  . 
leb00h:
	ld hl,07c81h		;eb00	21 81 7c 	! . | 
	ld de,07cb1h		;eb03	11 b1 7c 	. . | 
	ld a,(hl)			;eb06	7e 	~ 
	or a			;eb07	b7 	. 
	jr z,leb16h		;eb08	28 0c 	( . 
	ld bc,00008h		;eb0a	01 08 00 	. . . 
leb0dh:
	ld a,(de)			;eb0d	1a 	. 
	inc de			;eb0e	13 	. 
	cpi		;eb0f	ed a1 	. . 
	jr nz,sub_eadfh		;eb11	20 cc 	  . 
	jp pe,leb0dh		;eb13	ea 0d eb 	. . . 
leb16h:
	xor a			;eb16	af 	. 
	ret			;eb17	c9 	. 
sub_eb18h:
	call 0bfbbh		;eb18	cd bb bf 	. . . 
	ret c			;eb1b	d8 	. 
	call 0bf37h		;eb1c	cd 37 bf 	. 7 . 
	ret c			;eb1f	d8 	. 
	ld hl,(07f18h)		;eb20	2a 18 7f 	* .  
	ret			;eb23	c9 	. 
leb24h:
	ld (07a64h),de		;eb24	ed 53 64 7a 	. S d z 
	ld (07a66h),hl		;eb28	22 66 7a 	" f z 
	push bc			;eb2b	c5 	. 
	call sub_ea67h		;eb2c	cd 67 ea 	. g . 
	call sub_ea6fh		;eb2f	cd 6f ea 	. o . 
	pop hl			;eb32	e1 	. 
	call sub_ebaeh		;eb33	cd ae eb 	. . . 
	ret c			;eb36	d8 	. 
	ld a,004h		;eb37	3e 04 	> . 
	ld (07c80h),a		;eb39	32 80 7c 	2 . | 
	ld a,001h		;eb3c	3e 01 	> . 
	ld (07c98h),a		;eb3e	32 98 7c 	2 . | 
	call sub_f537h		;eb41	cd 37 f5 	. 7 . 
	jr c,leb8fh		;eb44	38 49 	8 I 
	call sub_f0c6h		;eb46	cd c6 f0 	. . . 
leb49h:
	push de			;eb49	d5 	. 
	call sub_eb93h		;eb4a	cd 93 eb 	. . . 
	jr c,leb8ah		;eb4d	38 3b 	8 ; 
	ld ix,(07a64h)		;eb4f	dd 2a 64 7a 	. * d z 
	dec ix		;eb53	dd 2b 	. + 
	ld iy,07bffh		;eb55	fd 21 ff 7b 	. ! . { 
	push bc			;eb59	c5 	. 
	call sub_ca16h		;eb5a	cd 16 ca 	. . . 
	pop bc			;eb5d	c1 	. 
	ld (iy+001h),000h		;eb5e	fd 36 01 00 	. 6 . . 
	pop de			;eb62	d1 	. 
	ld hl,07c00h		;eb63	21 00 7c 	! . | 
leb66h:
	ld a,(hl)			;eb66	7e 	~ 
	or a			;eb67	b7 	. 
	jr z,leb71h		;eb68	28 07 	( . 
	call sub_ece6h		;eb6a	cd e6 ec 	. . . 
	jr nc,leb66h		;eb6d	30 f7 	0 . 
	jr leb8fh		;eb6f	18 1e 	. . 
leb71h:
	push ix		;eb71	dd e5 	. . 
	pop hl			;eb73	e1 	. 
	inc hl			;eb74	23 	# 
leb75h:
	call sub_ece6h		;eb75	cd e6 ec 	. . . 
	jr c,leb8fh		;eb78	38 15 	8 . 
	cp 00dh		;eb7a	fe 0d 	. . 
	jr nz,leb75h		;eb7c	20 f7 	  . 
	ld (07a64h),hl		;eb7e	22 64 7a 	" d z 
	ld a,00ah		;eb81	3e 0a 	> . 
	call sub_eceeh		;eb83	cd ee ec 	. . . 
	jr nc,leb49h		;eb86	30 c1 	0 . 
	jr leb8fh		;eb88	18 05 	. . 
leb8ah:
	pop de			;eb8a	d1 	. 
	call sub_ecfch		;eb8b	cd fc ec 	. . . 
	ret nc			;eb8e	d0 	. 
leb8fh:
	call sub_e94fh		;eb8f	cd 4f e9 	. O . 
	ret			;eb92	c9 	. 
sub_eb93h:
	ld hl,(07a64h)		;eb93	2a 64 7a 	* d z 
	push hl			;eb96	e5 	. 
	ld de,(07a66h)		;eb97	ed 5b 66 7a 	. [ f z 
	scf			;eb9b	37 	7 
	sbc hl,de		;eb9c	ed 52 	. R 
	pop hl			;eb9e	e1 	. 
	ccf			;eb9f	3f 	? 
	ret c			;eba0	d8 	. 
	ld a,(hl)			;eba1	7e 	~ 
	add a,001h		;eba2	c6 01 	. . 
	ret c			;eba4	d8 	. 
	inc hl			;eba5	23 	# 
	inc hl			;eba6	23 	# 
	ld e,(hl)			;eba7	5e 	^ 
	ld d,000h		;eba8	16 00 	. . 
	scf			;ebaa	37 	7 
	adc hl,de		;ebab	ed 5a 	. Z 
	ret			;ebad	c9 	. 
sub_ebaeh:
	ld bc,00008h		;ebae	01 08 00 	. . . 
lebb1h:
	ld a,(hl)			;ebb1	7e 	~ 
	or a			;ebb2	b7 	. 
	ret z			;ebb3	c8 	. 
	call 0bd60h		;ebb4	cd 60 bd 	. ` . 
	jr c,lebc7h		;ebb7	38 0e 	8 . 
	ldi		;ebb9	ed a0 	. . 
	jp pe,lebb1h		;ebbb	ea b1 eb 	. . . 
lebbeh:
	ld a,(hl)			;ebbe	7e 	~ 
	inc hl			;ebbf	23 	# 
	or a			;ebc0	b7 	. 
	ret z			;ebc1	c8 	. 
	call 0bd60h		;ebc2	cd 60 bd 	. ` . 
	jr nc,lebbeh		;ebc5	30 f7 	0 . 
lebc7h:
	call 0839ch		;ebc7	cd 9c 83 	. . . 
	ld a,008h		;ebca	3e 08 	> . 
	ret			;ebcc	c9 	. 
lebcdh:
	ld a,001h		;ebcd	3e 01 	> . 
	jr lebd2h		;ebcf	18 01 	. . 
lebd1h:
	xor a			;ebd1	af 	. 
lebd2h:
	ld (07a6ch),a		;ebd2	32 6c 7a 	2 l z 
	ld (07a64h),de		;ebd5	ed 53 64 7a 	. S d z 
	ld (07a66h),hl		;ebd9	22 66 7a 	" f z 
	push bc			;ebdc	c5 	. 
	call sub_ea67h		;ebdd	cd 67 ea 	. g . 
	pop bc			;ebe0	c1 	. 
	ld a,(bc)			;ebe1	0a 	. 
	or a			;ebe2	b7 	. 
	jr z,lebefh		;ebe3	28 0a 	( . 
	push bc			;ebe5	c5 	. 
	call sub_ea6fh		;ebe6	cd 6f ea 	. o . 
	pop hl			;ebe9	e1 	. 
	call sub_ebaeh		;ebea	cd ae eb 	. . . 
	jr c,lebfbh		;ebed	38 0c 	8 . 
lebefh:
	ld a,004h		;ebef	3e 04 	> . 
	ld (07c80h),a		;ebf1	32 80 7c 	2 . | 
	xor a			;ebf4	af 	. 
	ld (07c98h),a		;ebf5	32 98 7c 	2 . | 
	call sub_eadfh		;ebf8	cd df ea 	. . . 
lebfbh:
	jp c,lecc6h		;ebfb	da c6 ec 	. . . 
	call sub_f3a4h		;ebfe	cd a4 f3 	. . . 
lec01h:
	call sub_ed39h		;ec01	cd 39 ed 	. 9 . 
	jr c,lebfbh		;ec04	38 f5 	8 . 
	ld a,01ah		;ec06	3e 1a 	> . 
	cp (hl)			;ec08	be 	. 
	jp z,lecaeh		;ec09	ca ae ec 	. . . 
	ld de,07c00h		;ec0c	11 00 7c 	. . | 
lec0fh:
	call sub_ed18h		;ec0f	cd 18 ed 	. . . 
	jr c,lec22h		;ec12	38 0e 	8 . 
	cp 00dh		;ec14	fe 0d 	. . 
	jr z,lec25h		;ec16	28 0d 	( . 
	call sub_ed66h		;ec18	cd 66 ed 	. f . 
	jr nz,lec0fh		;ec1b	20 f2 	  . 
	call sub_ed26h		;ec1d	cd 26 ed 	. & . 
	jr nc,lec2ah		;ec20	30 08 	0 . 
lec22h:
	jp lecd6h		;ec22	c3 d6 ec 	. . . 
lec25h:
	call sub_ed1fh		;ec25	cd 1f ed 	. . . 
	jr c,lec22h		;ec28	38 f8 	8 . 
lec2ah:
	ld ix,07bffh		;ec2a	dd 21 ff 7b 	. ! . { 
	push hl			;ec2e	e5 	. 
	push bc			;ec2f	c5 	. 
	ld hl,07f33h		;ec30	21 33 7f 	! 3  
	set 1,(hl)		;ec33	cb ce 	. . 
	call 0be4dh		;ec35	cd 4d be 	. M . 
	call 0bf7fh		;ec38	cd 7f bf 	.  . 
	pop bc			;ec3b	c1 	. 
	pop hl			;ec3c	e1 	. 
	jp c,lecdbh		;ec3d	da db ec 	. . . 
	exx			;ec40	d9 	. 
	inc ix		;ec41	dd 23 	. # 
	push ix		;ec43	dd e5 	. . 
	pop hl			;ec45	e1 	. 
	ld bc,00100h		;ec46	01 00 01 	. . . 
	ld a,00dh		;ec49	3e 0d 	> . 
	cpir		;ec4b	ed b1 	. . 
	xor a			;ec4d	af 	. 
	sub c			;ec4e	91 	. 
	ld c,a			;ec4f	4f 	O 
	ld hl,(07a66h)		;ec50	2a 66 7a 	* f z 
	ld de,(07a64h)		;ec53	ed 5b 64 7a 	. [ d z 
	xor a			;ec57	af 	. 
	sbc hl,de		;ec58	ed 52 	. R 
lec5ah:
	jp c,leccdh		;ec5a	da cd ec 	. . . 
	sbc hl,bc		;ec5d	ed 42 	. B 
	jr c,lec5ah		;ec5f	38 f9 	8 . 
	ld de,00002h		;ec61	11 02 00 	. . . 
	sbc hl,de		;ec64	ed 52 	. R 
	jr c,lec5ah		;ec66	38 f2 	8 . 
	ld a,(07a6ch)		;ec68	3a 6c 7a 	: l z 
	rra			;ec6b	1f 	. 
	jr c,lec87h		;ec6c	38 19 	8 . 
	ld de,(07a64h)		;ec6e	ed 5b 64 7a 	. [ d z 
	ld a,(07f19h)		;ec72	3a 19 7f 	: .  
	ld (de),a			;ec75	12 	. 
	inc de			;ec76	13 	. 
	ld a,(07f18h)		;ec77	3a 18 7f 	: .  
	ld (de),a			;ec7a	12 	. 
	inc de			;ec7b	13 	. 
	ld a,c			;ec7c	79 	y 
	ld (de),a			;ec7d	12 	. 
	inc de			;ec7e	13 	. 
	push ix		;ec7f	dd e5 	. . 
	pop hl			;ec81	e1 	. 
	ld c,a			;ec82	4f 	O 
	ldir		;ec83	ed b0 	. . 
	jr leca6h		;ec85	18 1f 	. . 
lec87h:
	ld de,(07a64h)		;ec87	ed 5b 64 7a 	. [ d z 
	ld hl,07f19h		;ec8b	21 19 7f 	! .  
	ld a,(de)			;ec8e	1a 	. 
	cp (hl)			;ec8f	be 	. 
	jr nz,lecc4h		;ec90	20 32 	  2 
	inc de			;ec92	13 	. 
	dec hl			;ec93	2b 	+ 
	ld a,(de)			;ec94	1a 	. 
	cp (hl)			;ec95	be 	. 
	jr nz,lecc4h		;ec96	20 2c 	  , 
	inc de			;ec98	13 	. 
	inc de			;ec99	13 	. 
	push ix		;ec9a	dd e5 	. . 
	pop hl			;ec9c	e1 	. 
lec9dh:
	ld a,(de)			;ec9d	1a 	. 
	inc de			;ec9e	13 	. 
	cpi		;ec9f	ed a1 	. . 
	jr nz,lecc4h		;eca1	20 21 	  ! 
	jp pe,lec9dh		;eca3	ea 9d ec 	. . . 
leca6h:
	ld (07a64h),de		;eca6	ed 53 64 7a 	. S d z 
	exx			;ecaa	d9 	. 
	jp lec01h		;ecab	c3 01 ec 	. . . 
lecaeh:
	ld a,(07a6ch)		;ecae	3a 6c 7a 	: l z 
	rra			;ecb1	1f 	. 
	jr nc,lecc0h		;ecb2	30 0c 	0 . 
	ld hl,(07a64h)		;ecb4	2a 64 7a 	* d z 
	ld de,(07a66h)		;ecb7	ed 5b 66 7a 	. [ f z 
	scf			;ecbb	37 	7 
	sbc hl,de		;ecbc	ed 52 	. R 
	jr nz,lecc4h		;ecbe	20 04 	  . 
lecc0h:
	ld hl,(07a64h)		;ecc0	2a 64 7a 	* d z 
	ret			;ecc3	c9 	. 
lecc4h:
	ld a,002h		;ecc4	3e 02 	> . 
lecc6h:
	call sub_e94fh		;ecc6	cd 4f e9 	. O . 
	ld a,0ffh		;ecc9	3e ff 	> . 
	jr lecc0h		;eccb	18 f3 	. . 
leccdh:
	ld hl,07a6ch		;eccd	21 6c 7a 	! l z 
	bit 0,(hl)		;ecd0	cb 46 	. F 
	jr nz,lecc4h		;ecd2	20 f0 	  . 
	ld a,004h		;ecd4	3e 04 	> . 
lecd6h:
	call sub_e94fh		;ecd6	cd 4f e9 	. O . 
	jr lecc0h		;ecd9	18 e5 	. . 
lecdbh:
	ld hl,07a6ch		;ecdb	21 6c 7a 	! l z 
	bit 0,(hl)		;ecde	cb 46 	. F 
	jr nz,lecc4h		;ece0	20 e2 	  . 
	ld a,006h		;ece2	3e 06 	> . 
	jr lecd6h		;ece4	18 f0 	. . 
sub_ece6h:
	call sub_ed09h		;ece6	cd 09 ed 	. . . 
	ret c			;ece9	d8 	. 
	ld a,(hl)			;ecea	7e 	~ 
	ldi		;eceb	ed a0 	. . 
	ret			;eced	c9 	. 
sub_eceeh:
	push af			;ecee	f5 	. 
	call sub_ed09h		;ecef	cd 09 ed 	. . . 
	jr c,lecfah		;ecf2	38 06 	8 . 
	pop af			;ecf4	f1 	. 
	ld (de),a			;ecf5	12 	. 
	inc de			;ecf6	13 	. 
	dec bc			;ecf7	0b 	. 
	and a			;ecf8	a7 	. 
	ret			;ecf9	c9 	. 
lecfah:
	pop de			;ecfa	d1 	. 
	ret			;ecfb	c9 	. 
sub_ecfch:
	ld a,01ah		;ecfc	3e 1a 	> . 
	call sub_eceeh		;ecfe	cd ee ec 	. . . 
	ret c			;ed01	d8 	. 
	call sub_ed59h		;ed02	cd 59 ed 	. Y . 
	call sub_f582h		;ed05	cd 82 f5 	. . . 
	ret			;ed08	c9 	. 
sub_ed09h:
	ld a,b			;ed09	78 	x 
	or c			;ed0a	b1 	. 
	ret nz			;ed0b	c0 	. 
	push hl			;ed0c	e5 	. 
	call sub_ed59h		;ed0d	cd 59 ed 	. Y . 
	call sub_f582h		;ed10	cd 82 f5 	. . . 
	pop hl			;ed13	e1 	. 
	call sub_f0c6h		;ed14	cd c6 f0 	. . . 
	ret			;ed17	c9 	. 
sub_ed18h:
	call sub_ed39h		;ed18	cd 39 ed 	. 9 . 
	ret c			;ed1b	d8 	. 
	ldi		;ed1c	ed a0 	. . 
	ret			;ed1e	c9 	. 
sub_ed1fh:
	call sub_ed39h		;ed1f	cd 39 ed 	. 9 . 
	ret c			;ed22	d8 	. 
led23h:
	inc hl			;ed23	23 	# 
	dec bc			;ed24	0b 	. 
	ret			;ed25	c9 	. 
sub_ed26h:
	call sub_ed1fh		;ed26	cd 1f ed 	. . . 
	ret c			;ed29	d8 	. 
	cp 00dh		;ed2a	fe 0d 	. . 
	jr nz,sub_ed26h		;ed2c	20 f8 	  . 
	call sub_ed39h		;ed2e	cd 39 ed 	. 9 . 
	ret c			;ed31	d8 	. 
	cp 00ah		;ed32	fe 0a 	. . 
	scf			;ed34	37 	7 
	ccf			;ed35	3f 	? 
	ret nz			;ed36	c0 	. 
	jr led23h		;ed37	18 ea 	. . 
sub_ed39h:
	ld a,b			;ed39	78 	x 
	or c			;ed3a	b1 	. 
	jr nz,led53h		;ed3b	20 16 	  . 
	push de			;ed3d	d5 	. 
	call sub_f88ah		;ed3e	cd 8a f8 	. . . 
	call sub_ed59h		;ed41	cd 59 ed 	. Y . 
	call sub_f5a9h		;ed44	cd a9 f5 	. . . 
	call sub_f8a4h		;ed47	cd a4 f8 	. . . 
	pop de			;ed4a	d1 	. 
	jr c,led55h		;ed4b	38 08 	8 . 
	ld hl,07b00h		;ed4d	21 00 7b 	! . { 
	ld bc,00100h		;ed50	01 00 01 	. . . 
led53h:
	ld a,(hl)			;ed53	7e 	~ 
	ret			;ed54	c9 	. 
led55h:
	call sub_f3a4h		;ed55	cd a4 f3 	. . . 
	ret			;ed58	c9 	. 
sub_ed59h:
	ld hl,07b00h		;ed59	21 00 7b 	! . { 
	ld (07a60h),hl		;ed5c	22 60 7a 	" ` z 
	ld hl,00100h		;ed5f	21 00 01 	! . . 
	ld (07a62h),hl		;ed62	22 62 7a 	" b z 
	ret			;ed65	c9 	. 
sub_ed66h:
	ld a,d			;ed66	7a 	z 
	cp 07ch		;ed67	fe 7c 	. | 
	ret nz			;ed69	c0 	. 
	ld a,e			;ed6a	7b 	{ 
	cp 000h		;ed6b	fe 00 	. . 
	ret nz			;ed6d	c0 	. 
	dec de			;ed6e	1b 	. 
	ld a,00dh		;ed6f	3e 0d 	> . 
	ld (de),a			;ed71	12 	. 
	ret			;ed72	c9 	. 
led73h:
	call sub_f844h		;ed73	cd 44 f8 	. D . 
	cp 031h		;ed76	fe 31 	. 1 
led78h:
	jp nz,08379h		;ed78	c2 79 83 	. y . 
	call sub_f844h		;ed7b	cd 44 f8 	. D . 
	cp 02ch		;ed7e	fe 2c 	. , 
	jr nz,led78h		;ed80	20 f6 	  . 
	ld a,(078e5h)		;ed82	3a e5 78 	: . x 
	and 006h		;ed85	e6 06 	. . 
	jp z,lf8f3h		;ed87	ca f3 f8 	. . . 
led8ah:
	ld a,000h		;ed8a	3e 00 	> . 
	ld (079f7h),a		;ed8c	32 f7 79 	2 . y 
	ld hl,078e6h		;ed8f	21 e6 78 	! . x 
	ld a,(hl)			;ed92	7e 	~ 
	and 0f8h		;ed93	e6 f8 	. . 
	ld (hl),a			;ed95	77 	w 
	call sub_f880h		;ed96	cd 80 f8 	. . . 
	ld hl,07f33h		;ed99	21 33 7f 	! 3  
	res 6,(hl)		;ed9c	cb b6 	. . 
	call 0bf19h		;ed9e	cd 19 bf 	. . . 
	jr c,ledcbh		;eda1	38 28 	8 ( 
	ld a,(07f33h)		;eda3	3a 33 7f 	: 3  
	bit 7,a		;eda6	cb 7f 	.  
	jr nz,ledcbh		;eda8	20 21 	  ! 
	bit 3,a		;edaa	cb 5f 	. _ 
	jr z,ledcbh		;edac	28 1d 	( . 
	call sub_f844h		;edae	cd 44 f8 	. D . 
	cp 02ah		;edb1	fe 2a 	. * 
	jr nz,ledcbh		;edb3	20 16 	  . 
	call sub_f844h		;edb5	cd 44 f8 	. D . 
	cp 029h		;edb8	fe 29 	. ) 
	jp nz,leee1h		;edba	c2 e1 ee 	. . . 
	call sub_f880h		;edbd	cd 80 f8 	. . . 
	call 0bf13h		;edc0	cd 13 bf 	. . . 
	jr nc,ledfdh		;edc3	30 38 	0 8 
	call sub_f885h		;edc5	cd 85 f8 	. . . 
	jp 08356h		;edc8	c3 56 83 	. V . 
ledcbh:
	call sub_f885h		;edcb	cd 85 f8 	. . . 
	call 0bfbbh		;edce	cd bb bf 	. . . 
	ret c			;edd1	d8 	. 
	call sub_f85eh		;edd2	cd 5e f8 	. ^ . 
	ld hl,078e6h		;edd5	21 e6 78 	! . x 
	jr nc,ledeah		;edd8	30 10 	0 . 
	cp 02ch		;edda	fe 2c 	. , 
	jr nz,lede2h		;eddc	20 04 	  . 
	set 1,(hl)		;edde	cb ce 	. . 
	jr lede8h		;ede0	18 06 	. . 
lede2h:
	cp 03bh		;ede2	fe 3b 	. ; 
	jr nz,lede8h		;ede4	20 02 	  . 
	set 2,(hl)		;ede6	cb d6 	. . 
lede8h:
	dec ix		;ede8	dd 2b 	. + 
ledeah:
	res 0,(hl)		;edea	cb 86 	. . 
	call sub_f880h		;edec	cd 80 f8 	. . . 
	call 0bf0dh		;edef	cd 0d bf 	. . . 
	jr c,lee2ch		;edf2	38 38 	8 8 
	ld a,(07f17h)		;edf4	3a 17 7f 	: .  
	ld hl,(07f15h)		;edf7	2a 15 7f 	* .  
	jp leef6h		;edfa	c3 f6 ee 	. . . 
ledfdh:
	push ix		;edfd	dd e5 	. . 
	pop hl			;edff	e1 	. 
	inc hl			;ee00	23 	# 
	ld d,(hl)			;ee01	56 	V 
	inc hl			;ee02	23 	# 
	ld e,(hl)			;ee03	5e 	^ 
	inc hl			;ee04	23 	# 
	ex de,hl			;ee05	eb 	. 
	add hl,de			;ee06	19 	. 
	ld (07f28h),hl		;ee07	22 28 7f 	" (  
	ex de,hl			;ee0a	eb 	. 
	inc hl			;ee0b	23 	# 
	inc hl			;ee0c	23 	# 
	ld a,(hl)			;ee0d	7e 	~ 
	ld (07f2ah),a		;ee0e	32 2a 7f 	2 *  
	inc hl			;ee11	23 	# 
	ex de,hl			;ee12	eb 	. 
	ld hl,078e6h		;ee13	21 e6 78 	! . x 
	set 0,(hl)		;ee16	cb c6 	. . 
lee18h:
	ex de,hl			;ee18	eb 	. 
	ld a,(07f33h)		;ee19	3a 33 7f 	: 3  
	and 004h		;ee1c	e6 04 	. . 
	jp nz,leef3h		;ee1e	c2 f3 ee 	. . . 
	ld de,07f10h		;ee21	11 10 7f 	. .  
	ld bc,00008h		;ee24	01 08 00 	. . . 
	ldir		;ee27	ed b0 	. . 
	ld (07f2bh),hl		;ee29	22 2b 7f 	" +  
lee2ch:
	ld hl,07f12h		;ee2c	21 12 7f 	! .  
	ld a,(hl)			;ee2f	7e 	~ 
	and 0f0h		;ee30	e6 f0 	. . 
	jr z,lee58h		;ee32	28 24 	( $ 
	dec hl			;ee34	2b 	+ 
	dec hl			;ee35	2b 	+ 
	ld a,(hl)			;ee36	7e 	~ 
	and a			;ee37	a7 	. 
	jr z,lee58h		;ee38	28 1e 	( . 
	cp 099h		;ee3a	fe 99 	. . 
	jr nz,lee65h		;ee3c	20 27 	  ' 
	inc hl			;ee3e	23 	# 
	ld a,(hl)			;ee3f	7e 	~ 
	and 0f0h		;ee40	e6 f0 	. . 
	jr z,lee65h		;ee42	28 21 	( ! 
	call sub_f84eh		;ee44	cd 4e f8 	. N . 
	and a			;ee47	a7 	. 
	rra			;ee48	1f 	. 
	jr c,lee5dh		;ee49	38 12 	8 . 
	add a,012h		;ee4b	c6 12 	. . 
	ld l,a			;ee4d	6f 	o 
lee4eh:
	ld a,(hl)			;ee4e	7e 	~ 
	and a			;ee4f	a7 	. 
	jr nz,lee65h		;ee50	20 13 	  . 
lee52h:
	inc l			;ee52	2c 	, 
	ld a,l			;ee53	7d 	} 
	cp 017h		;ee54	fe 17 	. . 
	jr nz,lee4eh		;ee56	20 f6 	  . 
lee58h:
	call sub_efbeh		;ee58	cd be ef 	. . . 
	jr lee68h		;ee5b	18 0b 	. . 
lee5dh:
	add a,012h		;ee5d	c6 12 	. . 
	ld l,a			;ee5f	6f 	o 
	ld a,(hl)			;ee60	7e 	~ 
	and 00fh		;ee61	e6 0f 	. . 
	jr z,lee52h		;ee63	28 ed 	( . 
lee65h:
	call sub_ef26h		;ee65	cd 26 ef 	. & . 
lee68h:
	ld hl,07c00h		;ee68	21 00 7c 	! . | 
	ld a,(078e6h)		;ee6b	3a e6 78 	: . x 
	and 002h		;ee6e	e6 02 	. . 
	jr nz,lee8eh		;ee70	20 1c 	  . 
	ld de,07c00h		;ee72	11 00 7c 	. . | 
lee75h:
	ld a,(hl)			;ee75	7e 	~ 
	inc hl			;ee76	23 	# 
	cp 020h		;ee77	fe 20 	.   
	jr z,lee75h		;ee79	28 fa 	( . 
	and a			;ee7b	a7 	. 
	jr z,lee8bh		;ee7c	28 0d 	( . 
	cp 02bh		;ee7e	fe 2b 	. + 
	jr nz,lee84h		;ee80	20 02 	  . 
	ld a,020h		;ee82	3e 20 	>   
lee84h:
	ld (de),a			;ee84	12 	. 
	inc de			;ee85	13 	. 
	ld a,(hl)			;ee86	7e 	~ 
	inc hl			;ee87	23 	# 
	and a			;ee88	a7 	. 
	jr nz,lee84h		;ee89	20 f9 	  . 
lee8bh:
	ld (de),a			;ee8b	12 	. 
	jr lee9eh		;ee8c	18 10 	. . 
lee8eh:
	ld a,(hl)			;ee8e	7e 	~ 
	inc hl			;ee8f	23 	# 
	cp 020h		;ee90	fe 20 	.   
	jr z,lee8eh		;ee92	28 fa 	( . 
	and a			;ee94	a7 	. 
	jr z,lee9eh		;ee95	28 07 	( . 
	cp 02bh		;ee97	fe 2b 	. + 
	jr nz,lee9eh		;ee99	20 03 	  . 
	dec hl			;ee9b	2b 	+ 
	ld (hl),020h		;ee9c	36 20 	6   
lee9eh:
	call sub_f072h		;ee9e	cd 72 f0 	. r . 
	jr c,leedah		;eea1	38 37 	8 7 
leea3h:
	ld a,(078e6h)		;eea3	3a e6 78 	: . x 
	and 001h		;eea6	e6 01 	. . 
	jr z,leebch		;eea8	28 12 	( . 
	call sub_f061h		;eeaa	cd 61 f0 	. a . 
	jr z,leedah		;eead	28 2b 	( + 
	ld de,(07f2bh)		;eeaf	ed 5b 2b 7f 	. [ +  
	ld hl,(07f28h)		;eeb3	2a 28 7f 	* (  
	scf			;eeb6	37 	7 
	sbc hl,de		;eeb7	ed 52 	. R 
	jp nc,lee18h		;eeb9	d2 18 ee 	. . . 
leebch:
	call sub_f885h		;eebc	cd 85 f8 	. . . 
	call sub_f844h		;eebf	cd 44 f8 	. D . 
	cp 02ch		;eec2	fe 2c 	. , 
	jr z,leeeah		;eec4	28 24 	( $ 
	cp 03bh		;eec6	fe 3b 	. ; 
	jr z,leeeah		;eec8	28 20 	(   
	call sub_f861h		;eeca	cd 61 f8 	. a . 
	jp c,08379h		;eecd	da 79 83 	. y . 
	ld a,(078e6h)		;eed0	3a e6 78 	: . x 
	and 001h		;eed3	e6 01 	. . 
	ret nz			;eed5	c0 	. 
	call sub_f061h		;eed6	cd 61 f0 	. a . 
	ret nc			;eed9	d0 	. 
leedah:
	call sub_f885h		;eeda	cd 85 f8 	. . . 
	call sub_e94fh		;eedd	cd 4f e9 	. O . 
	ret			;eee0	c9 	. 
leee1h:
	cp 00dh		;eee1	fe 0d 	. . 
	jr nz,leee7h		;eee3	20 02 	  . 
	dec ix		;eee5	dd 2b 	. + 
leee7h:
	jp 08379h		;eee7	c3 79 83 	. y . 
leeeah:
	call sub_f85eh		;eeea	cd 5e f8 	. ^ . 
	ret nc			;eeed	d0 	. 
	dec ix		;eeee	dd 2b 	. + 
	jp led8ah		;eef0	c3 8a ed 	. . . 
leef3h:
	ld a,(07f2ah)		;eef3	3a 2a 7f 	: *  
leef6h:
	ld de,07c00h		;eef6	11 00 7c 	. . | 
	and a			;eef9	a7 	. 
	jr z,lef07h		;eefa	28 0b 	( . 
	ld c,a			;eefc	4f 	O 
	xor a			;eefd	af 	. 
	ld b,a			;eefe	47 	G 
leeffh:
	cp (hl)			;eeff	be 	. 
	ldi		;ef00	ed a0 	. . 
	jr z,lef1dh		;ef02	28 19 	( . 
	jp pe,leeffh		;ef04	ea ff ee 	. . . 
lef07h:
	ld (de),a			;ef07	12 	. 
	inc de			;ef08	13 	. 
lef09h:
	ld (07f2bh),hl		;ef09	22 2b 7f 	" +  
	ld a,(078e6h)		;ef0c	3a e6 78 	: . x 
	and 002h		;ef0f	e6 02 	. . 
	jr z,lee9eh		;ef11	28 8b 	( . 
	dec e			;ef13	1d 	. 
	jr z,lee9eh		;ef14	28 88 	( . 
	call sub_f080h		;ef16	cd 80 f0 	. . . 
	jr c,leedah		;ef19	38 bf 	8 . 
	jr leea3h		;ef1b	18 86 	. . 
lef1dh:
	jp po,lef09h		;ef1d	e2 09 ef 	. . . 
	ld b,c			;ef20	41 	A 
lef21h:
	inc hl			;ef21	23 	# 
	djnz lef21h		;ef22	10 fd 	. . 
	jr lef09h		;ef24	18 e3 	. . 
sub_ef26h:
	call sub_efb0h		;ef26	cd b0 ef 	. . . 
	ld de,07f11h		;ef29	11 11 7f 	. .  
	ld a,(de)			;ef2c	1a 	. 
	and 008h		;ef2d	e6 08 	. . 
	ld b,02bh		;ef2f	06 2b 	. + 
	jr z,lef35h		;ef31	28 02 	( . 
	ld b,02dh		;ef33	06 2d 	. - 
lef35h:
	push bc			;ef35	c5 	. 
	dec de			;ef36	1b 	. 
	ld c,002h		;ef37	0e 02 	. . 
	call 0bf07h		;ef39	cd 07 bf 	. . . 
	ld hl,07f10h		;ef3c	21 10 7f 	! .  
	ld a,(hl)			;ef3f	7e 	~ 
	cp 009h		;ef40	fe 09 	. . 
	ld a,02bh		;ef42	3e 2b 	> + 
	jr nz,lef4eh		;ef44	20 08 	  . 
	xor a			;ef46	af 	. 
	ld (hl),a			;ef47	77 	w 
	inc hl			;ef48	23 	# 
	sub (hl)			;ef49	96 	. 
	daa			;ef4a	27 	' 
	ld (hl),a			;ef4b	77 	w 
	ld a,02dh		;ef4c	3e 2d 	> - 
lef4eh:
	ld hl,07c10h		;ef4e	21 10 7c 	! . | 
	ld (hl),a			;ef51	77 	w 
	ld de,07f11h		;ef52	11 11 7f 	. .  
	ld a,(de)			;ef55	1a 	. 
	and 00fh		;ef56	e6 0f 	. . 
	or 030h		;ef58	f6 30 	. 0 
	inc hl			;ef5a	23 	# 
	inc hl			;ef5b	23 	# 
	ld (hl),a			;ef5c	77 	w 
	ld a,(de)			;ef5d	1a 	. 
	call sub_f84eh		;ef5e	cd 4e f8 	. N . 
	and 00fh		;ef61	e6 0f 	. . 
	or 030h		;ef63	f6 30 	. 0 
	dec hl			;ef65	2b 	+ 
	ld (hl),a			;ef66	77 	w 
	dec hl			;ef67	2b 	+ 
	dec hl			;ef68	2b 	+ 
	ld (hl),045h		;ef69	36 45 	6 E 
	dec hl			;ef6b	2b 	+ 
	ld de,07f16h		;ef6c	11 16 7f 	. .  
	ld b,004h		;ef6f	06 04 	. . 
lef71h:
	ld a,(de)			;ef71	1a 	. 
	and 00fh		;ef72	e6 0f 	. . 
	jr nz,lef88h		;ef74	20 12 	  . 
	ld a,(de)			;ef76	1a 	. 
	and 0f0h		;ef77	e6 f0 	. . 
	jr nz,lef8fh		;ef79	20 14 	  . 
	dec de			;ef7b	1b 	. 
	djnz lef71h		;ef7c	10 f3 	. . 
	ld a,(de)			;ef7e	1a 	. 
	and 00fh		;ef7f	e6 0f 	. . 
	jr nz,lef9ch		;ef81	20 19 	  . 
	jr lefa0h		;ef83	18 1b 	. . 
lef85h:
	ld a,(de)			;ef85	1a 	. 
	and 00fh		;ef86	e6 0f 	. . 
lef88h:
	or 030h		;ef88	f6 30 	. 0 
	ld (hl),a			;ef8a	77 	w 
	dec hl			;ef8b	2b 	+ 
	ld a,(de)			;ef8c	1a 	. 
	and 0f0h		;ef8d	e6 f0 	. . 
lef8fh:
	call sub_f84eh		;ef8f	cd 4e f8 	. N . 
	or 030h		;ef92	f6 30 	. 0 
	ld (hl),a			;ef94	77 	w 
	dec hl			;ef95	2b 	+ 
	dec de			;ef96	1b 	. 
	djnz lef85h		;ef97	10 ec 	. . 
	ld a,(de)			;ef99	1a 	. 
	and 00fh		;ef9a	e6 0f 	. . 
lef9ch:
	or 030h		;ef9c	f6 30 	. 0 
	ld (hl),a			;ef9e	77 	w 
	dec hl			;ef9f	2b 	+ 
lefa0h:
	ld (hl),02eh		;efa0	36 2e 	6 . 
	dec hl			;efa2	2b 	+ 
	ld a,(de)			;efa3	1a 	. 
	call sub_f84eh		;efa4	cd 4e f8 	. N . 
	and 00fh		;efa7	e6 0f 	. . 
	or 030h		;efa9	f6 30 	. 0 
	ld (hl),a			;efab	77 	w 
	dec hl			;efac	2b 	+ 
	pop bc			;efad	c1 	. 
	ld (hl),b			;efae	70 	p 
	ret			;efaf	c9 	. 
sub_efb0h:
	ld hl,07c00h		;efb0	21 00 7c 	! . | 
	ld b,014h		;efb3	06 14 	. . 
	ld a,020h		;efb5	3e 20 	>   
lefb7h:
	ld (hl),a			;efb7	77 	w 
	inc hl			;efb8	23 	# 
	djnz lefb7h		;efb9	10 fc 	. . 
	ld (hl),000h		;efbb	36 00 	6 . 
	ret			;efbd	c9 	. 
sub_efbeh:
	call sub_efb0h		;efbe	cd b0 ef 	. . . 
	ld hl,07c12h		;efc1	21 12 7c 	! . | 
	ld de,07f12h		;efc4	11 12 7f 	. .  
	ld a,(de)			;efc7	1a 	. 
	and 0f0h		;efc8	e6 f0 	. . 
	jp z,lf058h		;efca	ca 58 f0 	. X . 
	dec de			;efcd	1b 	. 
	ld a,(de)			;efce	1a 	. 
	bit 3,a		;efcf	cb 5f 	. _ 
	ld b,02bh		;efd1	06 2b 	. + 
	jr z,lefd7h		;efd3	28 02 	( . 
	ld b,02dh		;efd5	06 2d 	. - 
lefd7h:
	push bc			;efd7	c5 	. 
	and 0f0h		;efd8	e6 f0 	. . 
	call sub_f84eh		;efda	cd 4e f8 	. N . 
	ld c,a			;efdd	4f 	O 
	ld a,00ah		;efde	3e 0a 	> . 
	sub c			;efe0	91 	. 
	ld c,a			;efe1	4f 	O 
	dec de			;efe2	1b 	. 
	ld a,(de)			;efe3	1a 	. 
	and a			;efe4	a7 	. 
	ld de,07f16h		;efe5	11 16 7f 	. .  
	ld b,005h		;efe8	06 05 	. . 
	jr z,lf027h		;efea	28 3b 	( ; 
lefech:
	ld a,(de)			;efec	1a 	. 
	and 00fh		;efed	e6 0f 	. . 
	jr nz,lefffh		;efef	20 0e 	  . 
	ld a,(de)			;eff1	1a 	. 
	and 0f0h		;eff2	e6 f0 	. . 
	jr nz,lf006h		;eff4	20 10 	  . 
	dec de			;eff6	1b 	. 
	djnz lefech		;eff7	10 f3 	. . 
leff9h:
	ld (hl),02eh		;eff9	36 2e 	6 . 
	dec hl			;effb	2b 	+ 
leffch:
	ld a,(de)			;effc	1a 	. 
	and 00fh		;effd	e6 0f 	. . 
lefffh:
	or 030h		;efff	f6 30 	. 0 
lf001h:
	ld (hl),a			;f001	77 	w 
	dec hl			;f002	2b 	+ 
	ld a,(de)			;f003	1a 	. 
	and 0f0h		;f004	e6 f0 	. . 
lf006h:
	call sub_f84eh		;f006	cd 4e f8 	. N . 
	or 030h		;f009	f6 30 	. 0 
	ld (hl),a			;f00b	77 	w 
	dec hl			;f00c	2b 	+ 
	dec de			;f00d	1b 	. 
	djnz leffch		;f00e	10 ec 	. . 
	dec de			;f010	1b 	. 
	ld a,(de)			;f011	1a 	. 
	and a			;f012	a7 	. 
	jr z,lf024h		;f013	28 0f 	( . 
	ld a,030h		;f015	3e 30 	> 0 
lf017h:
	dec c			;f017	0d 	. 
	jr z,lf01eh		;f018	28 04 	( . 
	ld (hl),a			;f01a	77 	w 
	dec hl			;f01b	2b 	+ 
	jr lf017h		;f01c	18 f9 	. . 
lf01eh:
	ld (hl),02eh		;f01e	36 2e 	6 . 
	dec hl			;f020	2b 	+ 
	ld (hl),030h		;f021	36 30 	6 0 
	dec hl			;f023	2b 	+ 
lf024h:
	pop bc			;f024	c1 	. 
	ld (hl),b			;f025	70 	p 
	ret			;f026	c9 	. 
lf027h:
	dec c			;f027	0d 	. 
	jr z,leff9h		;f028	28 cf 	( . 
	ld a,(de)			;f02a	1a 	. 
	and 00fh		;f02b	e6 0f 	. . 
	jr nz,lf040h		;f02d	20 11 	  . 
	dec c			;f02f	0d 	. 
	jr z,lf054h		;f030	28 22 	( " 
	ld a,(de)			;f032	1a 	. 
	and 0f0h		;f033	e6 f0 	. . 
	jr nz,lf04ah		;f035	20 13 	  . 
	dec de			;f037	1b 	. 
	djnz lf027h		;f038	10 ed 	. . 
lf03ah:
	dec c			;f03a	0d 	. 
	jr z,leff9h		;f03b	28 bc 	( . 
	ld a,(de)			;f03d	1a 	. 
	and 00fh		;f03e	e6 0f 	. . 
lf040h:
	or 030h		;f040	f6 30 	. 0 
	ld (hl),a			;f042	77 	w 
	dec hl			;f043	2b 	+ 
	dec c			;f044	0d 	. 
	jr z,lf054h		;f045	28 0d 	( . 
	ld a,(de)			;f047	1a 	. 
	and 0f0h		;f048	e6 f0 	. . 
lf04ah:
	call sub_f84eh		;f04a	cd 4e f8 	. N . 
	or 030h		;f04d	f6 30 	. 0 
	ld (hl),a			;f04f	77 	w 
	dec hl			;f050	2b 	+ 
	dec de			;f051	1b 	. 
	djnz lf03ah		;f052	10 e6 	. . 
lf054h:
	ld a,02eh		;f054	3e 2e 	> . 
	jr lf001h		;f056	18 a9 	. . 
lf058h:
	ld (hl),02eh		;f058	36 2e 	6 . 
	dec hl			;f05a	2b 	+ 
	ld (hl),030h		;f05b	36 30 	6 0 
	dec hl			;f05d	2b 	+ 
	ld (hl),02bh		;f05e	36 2b 	6 + 
	ret			;f060	c9 	. 
sub_f061h:
	call sub_f0d5h		;f061	cd d5 f0 	. . . 
	ld a,00dh		;f064	3e 0d 	> . 
	call sub_f0afh		;f066	cd af f0 	. . . 
	ret c			;f069	d8 	. 
	ld a,00ah		;f06a	3e 0a 	> . 
	call sub_f0afh		;f06c	cd af f0 	. . . 
	ret c			;f06f	d8 	. 
	jr lf0aah		;f070	18 38 	. 8 
sub_f072h:
	call sub_f0d5h		;f072	cd d5 f0 	. . . 
lf075h:
	ld a,(hl)			;f075	7e 	~ 
	inc hl			;f076	23 	# 
	and a			;f077	a7 	. 
	jr z,lf0aah		;f078	28 30 	( 0 
	call sub_f0afh		;f07a	cd af f0 	. . . 
	jr nc,lf075h		;f07d	30 f6 	0 . 
	ret			;f07f	c9 	. 
sub_f080h:
	ld a,e			;f080	7b 	{ 
lf081h:
	sub 014h		;f081	d6 14 	. . 
	jr z,lf087h		;f083	28 02 	( . 
	jr nc,lf081h		;f085	30 fa 	0 . 
lf087h:
	ld b,a			;f087	47 	G 
	xor a			;f088	af 	. 
	sub b			;f089	90 	. 
	push af			;f08a	f5 	. 
	call sub_f0d5h		;f08b	cd d5 f0 	. . . 
lf08eh:
	ld a,(hl)			;f08e	7e 	~ 
	inc hl			;f08f	23 	# 
	and a			;f090	a7 	. 
	jr z,lf09ah		;f091	28 07 	( . 
	call sub_f0afh		;f093	cd af f0 	. . . 
	jr nc,lf08eh		;f096	30 f6 	0 . 
lf098h:
	pop hl			;f098	e1 	. 
	ret			;f099	c9 	. 
lf09ah:
	pop af			;f09a	f1 	. 
	and a			;f09b	a7 	. 
	jr z,lf0aah		;f09c	28 0c 	( . 
lf09eh:
	push af			;f09e	f5 	. 
	ld a,020h		;f09f	3e 20 	>   
	call sub_f0afh		;f0a1	cd af f0 	. . . 
	jr c,lf098h		;f0a4	38 f2 	8 . 
	pop af			;f0a6	f1 	. 
	dec a			;f0a7	3d 	= 
	jr nz,lf09eh		;f0a8	20 f4 	  . 
lf0aah:
	call sub_f0e9h		;f0aa	cd e9 f0 	. . . 
	and a			;f0ad	a7 	. 
	ret			;f0ae	c9 	. 
sub_f0afh:
	push af			;f0af	f5 	. 
	call sub_f0fah		;f0b0	cd fa f0 	. . . 
	jr c,lf0bdh		;f0b3	38 08 	8 . 
	rrca			;f0b5	0f 	. 
	jr nc,lf0c2h		;f0b6	30 0a 	0 . 
	pop af			;f0b8	f1 	. 
	call sub_eceeh		;f0b9	cd ee ec 	. . . 
	ret			;f0bc	c9 	. 
lf0bdh:
	pop af			;f0bd	f1 	. 
	call 0bfafh		;f0be	cd af bf 	. . . 
	ret			;f0c1	c9 	. 
lf0c2h:
	pop af			;f0c2	f1 	. 
lf0c3h:
	jp lf8f3h		;f0c3	c3 f3 f8 	. . . 
sub_f0c6h:
	ld de,07b00h		;f0c6	11 00 7b 	. . { 
	ld (078e7h),de		;f0c9	ed 53 e7 78 	. S . x 
	ld bc,00100h		;f0cd	01 00 01 	. . . 
	ld (078e9h),bc		;f0d0	ed 43 e9 78 	. C . x 
	ret			;f0d4	c9 	. 
sub_f0d5h:
	ld hl,07c00h		;f0d5	21 00 7c 	! . | 
	call sub_f0fah		;f0d8	cd fa f0 	. . . 
	ccf			;f0db	3f 	? 
	ret nc			;f0dc	d0 	. 
	rrca			;f0dd	0f 	. 
	jr nc,lf0c3h		;f0de	30 e3 	0 . 
	ld de,(078e7h)		;f0e0	ed 5b e7 78 	. [ . x 
	ld bc,(078e9h)		;f0e4	ed 4b e9 78 	. K . x 
	ret			;f0e8	c9 	. 
sub_f0e9h:
	call sub_f0fah		;f0e9	cd fa f0 	. . . 
	ccf			;f0ec	3f 	? 
	ret nc			;f0ed	d0 	. 
	rrca			;f0ee	0f 	. 
	jr nc,lf0c3h		;f0ef	30 d2 	0 . 
	ld (078e7h),de		;f0f1	ed 53 e7 78 	. S . x 
	ld (078e9h),bc		;f0f5	ed 43 e9 78 	. C . x 
	ret			;f0f9	c9 	. 
sub_f0fah:
	ld a,(078e5h)		;f0fa	3a e5 78 	: . x 
	rrca			;f0fd	0f 	. 
	rrca			;f0fe	0f 	. 
	ret			;f0ff	c9 	. 
lf100h:
	call sub_f844h		;f100	cd 44 f8 	. D . 
	cp 031h		;f103	fe 31 	. 1 
lf105h:
	jp nz,08379h		;f105	c2 79 83 	. y . 
	call sub_f844h		;f108	cd 44 f8 	. D . 
	cp 02ch		;f10b	fe 2c 	. , 
	jr nz,lf105h		;f10d	20 f6 	  . 
	ld a,(078e5h)		;f10f	3a e5 78 	: . x 
	and 00ah		;f112	e6 0a 	. . 
	jp z,lf8f3h		;f114	ca f3 f8 	. . . 
lf117h:
	ld hl,07f33h		;f117	21 33 7f 	! 3  
	res 6,(hl)		;f11a	cb b6 	. . 
	call 0bf19h		;f11c	cd 19 bf 	. . . 
	ret c			;f11f	d8 	. 
	ld a,000h		;f120	3e 00 	> . 
	ld (079f7h),a		;f122	32 f7 79 	2 . y 
	ld hl,078e6h		;f125	21 e6 78 	! . x 
	ld a,(hl)			;f128	7e 	~ 
	and 0fch		;f129	e6 fc 	. . 
	ld (hl),a			;f12b	77 	w 
	ld a,(07f33h)		;f12c	3a 33 7f 	: 3  
	bit 2,a		;f12f	cb 57 	. W 
	jr z,lf135h		;f131	28 02 	( . 
	set 0,(hl)		;f133	cb c6 	. . 
lf135h:
	bit 3,a		;f135	cb 5f 	. _ 
	jp nz,lf231h		;f137	c2 31 f2 	. 1 . 
	bit 4,a		;f13a	cb 67 	. g 
	jp z,lf205h		;f13c	ca 05 f2 	. . . 
	and 0dfh		;f13f	e6 df 	. . 
	ld (07f33h),a		;f141	32 33 7f 	2 3  
	call sub_f3ech		;f144	cd ec f3 	. . . 
	ret c			;f147	d8 	. 
	push iy		;f148	fd e5 	. . 
	pop hl			;f14a	e1 	. 
	inc hl			;f14b	23 	# 
	ld (07f2bh),hl		;f14c	22 2b 7f 	" +  
	ld a,008h		;f14f	3e 08 	> . 
	ld (07f2ah),a		;f151	32 2a 7f 	2 *  
	ld de,00008h		;f154	11 08 00 	. . . 
	add hl,de			;f157	19 	. 
	ld (07f28h),hl		;f158	22 28 7f 	" (  
lf15bh:
	call sub_f2cfh		;f15b	cd cf f2 	. . . 
	jp c,lf2c8h		;f15e	da c8 f2 	. . . 
	ld a,(07f33h)		;f161	3a 33 7f 	: 3  
	push af			;f164	f5 	. 
	and 004h		;f165	e6 04 	. . 
	jr nz,lf1dah		;f167	20 71 	  q 
	ld hl,07bffh		;f169	21 ff 7b 	! . { 
lf16ch:
	inc hl			;f16c	23 	# 
	ld a,(hl)			;f16d	7e 	~ 
	cp 00dh		;f16e	fe 0d 	. . 
	jr z,lf17ah		;f170	28 08 	( . 
	cp 044h		;f172	fe 44 	. D 
	jr nz,lf16ch		;f174	20 f6 	  . 
	ld (hl),045h		;f176	36 45 	6 E 
	jr lf16ch		;f178	18 f2 	. . 
lf17ah:
	ld hl,07f20h		;f17a	21 20 7f 	!    
	ld (hl),000h		;f17d	36 00 	6 . 
	ld de,07bffh		;f17f	11 ff 7b 	. . { 
lf182h:
	inc de			;f182	13 	. 
	ld a,(de)			;f183	1a 	. 
	cp 020h		;f184	fe 20 	.   
	jr z,lf182h		;f186	28 fa 	( . 
	dec de			;f188	1b 	. 
lf189h:
	inc de			;f189	13 	. 
	ld a,(de)			;f18a	1a 	. 
	cp 02bh		;f18b	fe 2b 	. + 
	jr z,lf189h		;f18d	28 fa 	( . 
	cp 02dh		;f18f	fe 2d 	. - 
	jr nz,lf199h		;f191	20 06 	  . 
	ld a,(hl)			;f193	7e 	~ 
	xor 001h		;f194	ee 01 	. . 
	ld (hl),a			;f196	77 	w 
	jr lf189h		;f197	18 f0 	. . 
lf199h:
	dec de			;f199	1b 	. 
	push de			;f19a	d5 	. 
	pop ix		;f19b	dd e1 	. . 
	call 0bf91h		;f19d	cd 91 bf 	. . . 
	jp c,lf2c6h		;f1a0	da c6 f2 	. . . 
	ld a,(07f20h)		;f1a3	3a 20 7f 	:    
	rrca			;f1a6	0f 	. 
	jr nc,lf1aeh		;f1a7	30 05 	0 . 
	ld hl,07f11h		;f1a9	21 11 7f 	! .  
	set 3,(hl)		;f1ac	cb de 	. . 
lf1aeh:
	ld de,(07f2bh)		;f1ae	ed 5b 2b 7f 	. [ +  
	ld hl,07f10h		;f1b2	21 10 7f 	! .  
	ld bc,00008h		;f1b5	01 08 00 	. . . 
	ldir		;f1b8	ed b0 	. . 
lf1bah:
	pop af			;f1ba	f1 	. 
	ld (07f33h),a		;f1bb	32 33 7f 	2 3  
	ex de,hl			;f1be	eb 	. 
	ld (07f2bh),hl		;f1bf	22 2b 7f 	" +  
	ld de,(07f28h)		;f1c2	ed 5b 28 7f 	. [ (  
	and a			;f1c6	a7 	. 
	sbc hl,de		;f1c7	ed 52 	. R 
	jr c,lf15bh		;f1c9	38 90 	8 . 
	call sub_f885h		;f1cb	cd 85 f8 	. . . 
	call sub_f844h		;f1ce	cd 44 f8 	. D . 
	cp 02ch		;f1d1	fe 2c 	. , 
	jp z,lf117h		;f1d3	ca 17 f1 	. . . 
	call sub_f861h		;f1d6	cd 61 f8 	. a . 
	ret			;f1d9	c9 	. 
lf1dah:
	ld de,(07f2bh)		;f1da	ed 5b 2b 7f 	. [ +  
	ld hl,07c00h		;f1de	21 00 7c 	! . | 
	ld a,(07f2ah)		;f1e1	3a 2a 7f 	: *  
	ld c,a			;f1e4	4f 	O 
	ld a,(07f33h)		;f1e5	3a 33 7f 	: 3  
	and 010h		;f1e8	e6 10 	. . 
	jr z,lf1f1h		;f1ea	28 05 	( . 
	ld a,0f5h		;f1ec	3e f5 	> . 
	ld (de),a			;f1ee	12 	. 
	inc de			;f1ef	13 	. 
	dec c			;f1f0	0d 	. 
lf1f1h:
	xor a			;f1f1	af 	. 
	ld b,000h		;f1f2	06 00 	. . 
lf1f4h:
	cp (hl)			;f1f4	be 	. 
	jr z,lf1feh		;f1f5	28 07 	( . 
	ldi		;f1f7	ed a0 	. . 
	jp pe,lf1f4h		;f1f9	ea f4 f1 	. . . 
	jr lf1bah		;f1fc	18 bc 	. . 
lf1feh:
	ld b,c			;f1fe	41 	A 
lf1ffh:
	ld (de),a			;f1ff	12 	. 
	inc de			;f200	13 	. 
	djnz lf1ffh		;f201	10 fc 	. . 
	jr lf1bah		;f203	18 b5 	. . 
lf205h:
	call sub_f880h		;f205	cd 80 f8 	. . . 
	ld hl,07f33h		;f208	21 33 7f 	! 3  
	set 1,(hl)		;f20b	cb ce 	. . 
	res 5,(hl)		;f20d	cb ae 	. . 
	call 0be9bh		;f20f	cd 9b be 	. . . 
	ret c			;f212	d8 	. 
	push iy		;f213	fd e5 	. . 
	pop hl			;f215	e1 	. 
	dec hl			;f216	2b 	+ 
	dec hl			;f217	2b 	+ 
	dec hl			;f218	2b 	+ 
	dec hl			;f219	2b 	+ 
lf21ah:
	ld d,(hl)			;f21a	56 	V 
	inc hl			;f21b	23 	# 
	ld e,(hl)			;f21c	5e 	^ 
	inc hl			;f21d	23 	# 
	ex de,hl			;f21e	eb 	. 
	add hl,de			;f21f	19 	. 
	ld (07f28h),hl		;f220	22 28 7f 	" (  
	ex de,hl			;f223	eb 	. 
	inc hl			;f224	23 	# 
	inc hl			;f225	23 	# 
	ld a,(hl)			;f226	7e 	~ 
	ld (07f2ah),a		;f227	32 2a 7f 	2 *  
	inc hl			;f22a	23 	# 
	ld (07f2bh),hl		;f22b	22 2b 7f 	" +  
	jp lf15bh		;f22e	c3 5b f1 	. [ . 
lf231h:
	call sub_f844h		;f231	cd 44 f8 	. D . 
	cp 02ah		;f234	fe 2a 	. * 
	jr nz,lf251h		;f236	20 19 	  . 
	call sub_f844h		;f238	cd 44 f8 	. D . 
	cp 029h		;f23b	fe 29 	. ) 
	jr nz,lf2bah		;f23d	20 7b 	  { 
	call sub_f880h		;f23f	cd 80 f8 	. . . 
	call 0bf13h		;f242	cd 13 bf 	. . . 
	push ix		;f245	dd e5 	. . 
	pop hl			;f247	e1 	. 
	inc hl			;f248	23 	# 
	call sub_f885h		;f249	cd 85 f8 	. . . 
	jr nc,lf21ah		;f24c	30 cc 	0 . 
	jp 08356h		;f24e	c3 56 83 	. V . 
lf251h:
	dec ix		;f251	dd 2b 	. + 
	ld a,(07f33h)		;f253	3a 33 7f 	: 3  
	push af			;f256	f5 	. 
	ld hl,(07f0ah)		;f257	2a 0a 7f 	* .  
	ld (07a9eh),hl		;f25a	22 9e 7a 	" . z 
	ld hl,07f37h		;f25d	21 37 7f 	! 7  
	set 7,(hl)		;f260	cb fe 	. . 
	call 0bfbbh		;f262	cd bb bf 	. . . 
	jr c,lf2c6h		;f265	38 5f 	8 _ 
	call 0befbh		;f267	cd fb be 	. . . 
	jr c,lf2c6h		;f26a	38 5a 	8 Z 
	ld a,(de)			;f26c	1a 	. 
	ld (079d0h),a		;f26d	32 d0 79 	2 . y 
	call 0bef5h		;f270	cd f5 be 	. . . 
	jr z,lf288h		;f273	28 13 	( . 
	ld hl,07a10h		;f275	21 10 7a 	! . z 
	ld de,07f10h		;f278	11 10 7f 	. .  
	ld bc,00008h		;f27b	01 08 00 	. . . 
	ldir		;f27e	ed b0 	. . 
	call 0befbh		;f280	cd fb be 	. . . 
	jr c,lf2c6h		;f283	38 41 	8 A 
	ld a,(de)			;f285	1a 	. 
	jr lf289h		;f286	18 01 	. . 
lf288h:
	xor a			;f288	af 	. 
lf289h:
	ld (079d1h),a		;f289	32 d1 79 	2 . y 
	inc ix		;f28c	dd 23 	. # 
	ld a,(ix+000h)		;f28e	dd 7e 00 	. ~ . 
	cp 029h		;f291	fe 29 	. ) 
	jr nz,lf2c3h		;f293	20 2e 	  . 
	call sub_f880h		;f295	cd 80 f8 	. . . 
	pop af			;f298	f1 	. 
	ld (07f33h),a		;f299	32 33 7f 	2 3  
	ld hl,(07a9eh)		;f29c	2a 9e 7a 	* . z 
	ld (07f0ah),hl		;f29f	22 0a 7f 	" .  
	call 0beefh		;f2a2	cd ef be 	. . . 
	ret c			;f2a5	d8 	. 
	ld (07f2ah),a		;f2a6	32 2a 7f 	2 *  
	push iy		;f2a9	fd e5 	. . 
	pop hl			;f2ab	e1 	. 
	inc hl			;f2ac	23 	# 
	ld (07f2bh),hl		;f2ad	22 2b 7f 	" +  
	ld e,a			;f2b0	5f 	_ 
	ld d,000h		;f2b1	16 00 	. . 
	add hl,de			;f2b3	19 	. 
	ld (07f28h),hl		;f2b4	22 28 7f 	" (  
	jp lf15bh		;f2b7	c3 5b f1 	. [ . 
lf2bah:
	cp 00dh		;f2ba	fe 0d 	. . 
	jr nz,lf2c0h		;f2bc	20 02 	  . 
	dec ix		;f2be	dd 2b 	. + 
lf2c0h:
	jp 08379h		;f2c0	c3 79 83 	. y . 
lf2c3h:
	pop af			;f2c3	f1 	. 
	jr lf2c0h		;f2c4	18 fa 	. . 
lf2c6h:
	pop hl			;f2c6	e1 	. 
	ret			;f2c7	c9 	. 
lf2c8h:
	call sub_f885h		;f2c8	cd 85 f8 	. . . 
	call sub_e94fh		;f2cb	cd 4f e9 	. O . 
	ret			;f2ce	c9 	. 
sub_f2cfh:
	call sub_f3b2h		;f2cf	cd b2 f3 	. . . 
	ld a,(07f33h)		;f2d2	3a 33 7f 	: 3  
	and 004h		;f2d5	e6 04 	. . 
	jr nz,lf303h		;f2d7	20 2a 	  * 
	call sub_f33eh		;f2d9	cd 3e f3 	. > . 
	ret c			;f2dc	d8 	. 
lf2ddh:
	call sub_f357h		;f2dd	cd 57 f3 	. W . 
	ret c			;f2e0	d8 	. 
	jr z,lf2feh		;f2e1	28 1b 	( . 
	cp 020h		;f2e3	fe 20 	.   
	jr z,lf2f6h		;f2e5	28 0f 	( . 
	cp 01ah		;f2e7	fe 1a 	. . 
	jr z,lf2feh		;f2e9	28 13 	( . 
	call sub_f376h		;f2eb	cd 76 f3 	. v . 
	jr c,lf2feh		;f2ee	38 0e 	8 . 
	call sub_f387h		;f2f0	cd 87 f3 	. . . 
	jr nc,lf2ddh		;f2f3	30 e8 	0 . 
	ret			;f2f5	c9 	. 
lf2f6h:
	call sub_f34ah		;f2f6	cd 4a f3 	. J . 
	ret c			;f2f9	d8 	. 
	call sub_f357h		;f2fa	cd 57 f3 	. W . 
	ret c			;f2fd	d8 	. 
lf2feh:
	call sub_f3c7h		;f2fe	cd c7 f3 	. . . 
	and a			;f301	a7 	. 
	ret			;f302	c9 	. 
lf303h:
	call sub_f33eh		;f303	cd 3e f3 	. > . 
	ret c			;f306	d8 	. 
	cp 022h		;f307	fe 22 	. " 
	jr z,lf320h		;f309	28 15 	( . 
lf30bh:
	call sub_f357h		;f30b	cd 57 f3 	. W . 
	ret c			;f30e	d8 	. 
	jr z,lf2feh		;f30f	28 ed 	( . 
	cp 01ah		;f311	fe 1a 	. . 
	jr z,lf2feh		;f313	28 e9 	( . 
	call sub_f376h		;f315	cd 76 f3 	. v . 
	jr c,lf2feh		;f318	38 e4 	8 . 
	call sub_f387h		;f31a	cd 87 f3 	. . . 
	jr nc,lf30bh		;f31d	30 ec 	0 . 
	ret			;f31f	c9 	. 
lf320h:
	call sub_f3dbh		;f320	cd db f3 	. . . 
lf323h:
	call sub_f387h		;f323	cd 87 f3 	. . . 
	ret c			;f326	d8 	. 
	cp 022h		;f327	fe 22 	. " 
	jr z,lf335h		;f329	28 0a 	( . 
	cp 01ah		;f32b	fe 1a 	. . 
	jr z,lf2feh		;f32d	28 cf 	( . 
	call sub_f376h		;f32f	cd 76 f3 	. v . 
	jr nc,lf323h		;f332	30 ef 	0 . 
	ret			;f334	c9 	. 
lf335h:
	call sub_f34ah		;f335	cd 4a f3 	. J . 
	call sub_f357h		;f338	cd 57 f3 	. W . 
	ret c			;f33b	d8 	. 
	jr lf2feh		;f33c	18 c0 	. . 
sub_f33eh:
	call sub_f387h		;f33e	cd 87 f3 	. . . 
	ret c			;f341	d8 	. 
	cp 01ah		;f342	fe 1a 	. . 
	jr nz,lf351h		;f344	20 0b 	  . 
	ld a,007h		;f346	3e 07 	> . 
	scf			;f348	37 	7 
	ret			;f349	c9 	. 
sub_f34ah:
	call sub_f3dbh		;f34a	cd db f3 	. . . 
	call sub_f387h		;f34d	cd 87 f3 	. . . 
	ret c			;f350	d8 	. 
lf351h:
	cp 020h		;f351	fe 20 	.   
	jr z,sub_f34ah		;f353	28 f5 	( . 
	and a			;f355	a7 	. 
	ret			;f356	c9 	. 
sub_f357h:
	cp 02ch		;f357	fe 2c 	. , 
	jr z,lf36eh		;f359	28 13 	( . 
	cp 00ah		;f35b	fe 0a 	. . 
	jr z,lf36eh		;f35d	28 0f 	( . 
	cp 00dh		;f35f	fe 0d 	. . 
	jr nz,lf373h		;f361	20 10 	  . 
	call sub_f3dbh		;f363	cd db f3 	. . . 
	call sub_f387h		;f366	cd 87 f3 	. . . 
	ret c			;f369	d8 	. 
	cp 00ah		;f36a	fe 0a 	. . 
	jr nz,lf371h		;f36c	20 03 	  . 
lf36eh:
	call sub_f3dbh		;f36e	cd db f3 	. . . 
lf371h:
	cp a			;f371	bf 	. 
	ret			;f372	c9 	. 
lf373h:
	scf			;f373	37 	7 
	ccf			;f374	3f 	? 
	ret			;f375	c9 	. 
sub_f376h:
	push af			;f376	f5 	. 
	ld a,e			;f377	7b 	{ 
	cp 0ffh		;f378	fe ff 	. . 
	jr z,lf384h		;f37a	28 08 	( . 
	pop af			;f37c	f1 	. 
	ld (de),a			;f37d	12 	. 
	inc de			;f37e	13 	. 
	call sub_f3dbh		;f37f	cd db f3 	. . . 
	and a			;f382	a7 	. 
	ret			;f383	c9 	. 
lf384h:
	pop af			;f384	f1 	. 
	scf			;f385	37 	7 
	ret			;f386	c9 	. 
sub_f387h:
	call sub_f0fah		;f387	cd fa f0 	. . . 
	jr c,lf395h		;f38a	38 09 	8 . 
	rrca			;f38c	0f 	. 
	rrca			;f38d	0f 	. 
	jp nc,lf8f3h		;f38e	d2 f3 f8 	. . . 
	call sub_ed39h		;f391	cd 39 ed 	. 9 . 
	ret			;f394	c9 	. 
lf395h:
	call 0bfa9h		;f395	cd a9 bf 	. . . 
	ret nc			;f398	d0 	. 
	ld a,000h		;f399	3e 00 	> . 
	ld hl,07f35h		;f39b	21 35 7f 	! 5  
	bit 5,(hl)		;f39e	cb 6e 	. n 
	ret nz			;f3a0	c0 	. 
	ld a,001h		;f3a1	3e 01 	> . 
	ret			;f3a3	c9 	. 
sub_f3a4h:
	ld hl,07c00h		;f3a4	21 00 7c 	! . | 
	ld (078e7h),hl		;f3a7	22 e7 78 	" . x 
	ld bc,00000h		;f3aa	01 00 00 	. . . 
	ld (078e9h),bc		;f3ad	ed 43 e9 78 	. C . x 
	ret			;f3b1	c9 	. 
sub_f3b2h:
	ld de,07c00h		;f3b2	11 00 7c 	. . | 
	call sub_f0fah		;f3b5	cd fa f0 	. . . 
	ccf			;f3b8	3f 	? 
	ret nc			;f3b9	d0 	. 
	rrca			;f3ba	0f 	. 
	rrca			;f3bb	0f 	. 
	jp nc,lf8f3h		;f3bc	d2 f3 f8 	. . . 
	ld hl,(078e7h)		;f3bf	2a e7 78 	* . x 
	ld bc,(078e9h)		;f3c2	ed 4b e9 78 	. K . x 
	ret			;f3c6	c9 	. 
sub_f3c7h:
	xor a			;f3c7	af 	. 
	ld (de),a			;f3c8	12 	. 
	call sub_f0fah		;f3c9	cd fa f0 	. . . 
	ccf			;f3cc	3f 	? 
	ret nc			;f3cd	d0 	. 
	rrca			;f3ce	0f 	. 
	rrca			;f3cf	0f 	. 
	jp nc,lf8f3h		;f3d0	d2 f3 f8 	. . . 
	ld (078e7h),hl		;f3d3	22 e7 78 	" . x 
	ld (078e9h),bc		;f3d6	ed 43 e9 78 	. C . x 
	ret			;f3da	c9 	. 
sub_f3dbh:
	call sub_f0fah		;f3db	cd fa f0 	. . . 
	jr c,lf3e8h		;f3de	38 08 	8 . 
	rrca			;f3e0	0f 	. 
	rrca			;f3e1	0f 	. 
	jp nc,lf8f3h		;f3e2	d2 f3 f8 	. . . 
	inc hl			;f3e5	23 	# 
	dec bc			;f3e6	0b 	. 
	ret			;f3e7	c9 	. 
lf3e8h:
	call 0bfa3h		;f3e8	cd a3 bf 	. . . 
	ret			;f3eb	c9 	. 
sub_f3ech:
	ld hl,07f33h		;f3ec	21 33 7f 	! 3  
	ld a,(hl)			;f3ef	7e 	~ 
	and 0bch		;f3f0	e6 bc 	. . 
	ld (hl),a			;f3f2	77 	w 
	call 0be9bh		;f3f3	cd 9b be 	. . . 
	ret c			;f3f6	d8 	. 
	call sub_f880h		;f3f7	cd 80 f8 	. . . 
	ret			;f3fa	c9 	. 
lf3fbh:
	ld a,(078e5h)		;f3fb	3a e5 78 	: . x 
	and 00fh		;f3fe	e6 0f 	. . 
	jp nz,lf8f7h		;f400	c2 f7 f8 	. . . 
	call 0bfbbh		;f403	cd bb bf 	. . . 
	ret c			;f406	d8 	. 
	ld a,(07f14h)		;f407	3a 14 7f 	: .  
	cp 0d0h		;f40a	fe d0 	. . 
	jr nz,lf461h		;f40c	20 53 	  S 
	ld a,(079f7h)		;f40e	3a f7 79 	: . y 
	ld l,a			;f411	6f 	o 
	ld h,07eh		;f412	26 7e 	& ~ 
	ld (hl),00dh		;f414	36 0d 	6 . 
	ld de,(07f15h)		;f416	ed 5b 15 7f 	. [ .  
	ld hl,lf511h		;f41a	21 11 f5 	! . . 
	call sub_f4f7h		;f41d	cd f7 f4 	. . . 
	jr nc,lf491h		;f420	30 6f 	0 o 
	ld hl,lf50dh		;f422	21 0d f5 	! . . 
	call sub_f4f7h		;f425	cd f7 f4 	. . . 
	jr nc,lf43eh		;f428	30 14 	0 . 
	ld hl,lprt_start		;f42a	21 08 f5 	! . . 
	call sub_f4f7h		;f42d	cd f7 f4 	. . . 
	jr c,lf461h		;f430	38 2f 	8 / 
	cp 00dh		;f432	fe 0d 	. . 
	jr nz,lf461h		;f434	20 2b 	  + 
	call sub_f85eh		;f436	cd 5e f8 	. ^ . 
	ret c			;f439	d8 	. 
	ld c,001h		;f43a	0e 01 	. . 
	jr lf45ah		;f43c	18 1c 	. . 
lf43eh:
	cp 00dh		;f43e	fe 0d 	. . 
	jr nz,lf461h		;f440	20 1f 	  . 
	call sub_f464h		;f442	cd 64 f4 	. d . 
	ret c			;f445	d8 	. 
	ld hl,07b00h		;f446	21 00 7b 	! . { 
	ld (078e7h),hl		;f449	22 e7 78 	" . x 
	ld (hl),000h		;f44c	36 00 	6 . 
	call 0bce8h		;f44e	cd e8 bc 	. . . 
	ld hl,078ech		;f451	21 ec 78 	! . x 
	ld a,(hl)			;f454	7e 	~ 
	and 00fh		;f455	e6 0f 	. . 
	ld (hl),a			;f457	77 	w 
	ld c,002h		;f458	0e 02 	. . 
lf45ah:
	ld hl,078e5h		;f45a	21 e5 78 	! . x 
	ld a,(hl)			;f45d	7e 	~ 
	or c			;f45e	b1 	. 
	ld (hl),a			;f45f	77 	w 
	ret			;f460	c9 	. 
lf461h:
	jp 0839ch		;f461	c3 9c 83 	. . . 
sub_f464h:
	call sub_f85eh		;f464	cd 5e f8 	. ^ . 
	ret nc			;f467	d0 	. 
	ld b,073h		;f468	06 73 	. s 
	call sub_f483h		;f46a	cd 83 f4 	. . . 
	ret c			;f46d	d8 	. 
	call sub_f844h		;f46e	cd 44 f8 	. D . 
sub_f471h:
	cp 023h		;f471	fe 23 	. # 
	jr nz,lf48eh		;f473	20 19 	  . 
	call sub_f844h		;f475	cd 44 f8 	. D . 
	cp 031h		;f478	fe 31 	. 1 
	jr nz,lf48eh		;f47a	20 12 	  . 
	call sub_f85eh		;f47c	cd 5e f8 	. ^ . 
	ret			;f47f	c9 	. 
sub_f480h:
	call sub_f844h		;f480	cd 44 f8 	. D . 
sub_f483h:
	cp 0feh		;f483	fe fe 	. . 
	jr nz,lf48eh		;f485	20 07 	  . 
	inc ix		;f487	dd 23 	. # 
	ld a,(ix+000h)		;f489	dd 7e 00 	. ~ . 
	cp b			;f48c	b8 	. 
	ret z			;f48d	c8 	. 
lf48eh:
	jp 08379h		;f48e	c3 79 83 	. y . 
lf491h:
	call sub_ea67h		;f491	cd 67 ea 	. g . 
	cp 00dh		;f494	fe 0d 	. . 
	jr z,lf4abh		;f496	28 13 	( . 
	push ix		;f498	dd e5 	. . 
	dec de			;f49a	1b 	. 
	push de			;f49b	d5 	. 
	pop ix		;f49c	dd e1 	. . 
	call sub_ea6fh		;f49e	cd 6f ea 	. o . 
	call sub_eaa3h		;f4a1	cd a3 ea 	. . . 
	pop ix		;f4a4	dd e1 	. . 
	ret c			;f4a6	d8 	. 
	cp 00dh		;f4a7	fe 0d 	. . 
	jr nz,lf461h		;f4a9	20 b6 	  . 
lf4abh:
	ld b,057h		;f4ab	06 57 	. W 
	call sub_f480h		;f4ad	cd 80 f4 	. . . 
	ret c			;f4b0	d8 	. 
	ld b,061h		;f4b1	06 61 	. a 
	call sub_f480h		;f4b3	cd 80 f4 	. . . 
	ld c,008h		;f4b6	0e 08 	. . 
	jr nc,lf4c3h		;f4b8	30 09 	0 . 
	ld a,(ix+000h)		;f4ba	dd 7e 00 	. ~ . 
	cp 071h		;f4bd	fe 71 	. q 
	jr nz,lf48eh		;f4bf	20 cd 	  . 
	ld c,004h		;f4c1	0e 04 	. . 
lf4c3h:
	call sub_f464h		;f4c3	cd 64 f4 	. d . 
	ret c			;f4c6	d8 	. 
	ld hl,07c80h		;f4c7	21 80 7c 	! . | 
	ld (hl),004h		;f4ca	36 04 	6 . 
	bit 3,c		;f4cc	cb 59 	. Y 
	jr nz,lf4e3h		;f4ce	20 13 	  . 
	inc hl			;f4d0	23 	# 
	ld a,(hl)			;f4d1	7e 	~ 
	or a			;f4d2	b7 	. 
	call z,sub_ea6fh		;f4d3	cc 6f ea 	. o . 
	call sub_f537h		;f4d6	cd 37 f5 	. 7 . 
	jr c,lf4efh		;f4d9	38 14 	8 . 
	call sub_f0c6h		;f4db	cd c6 f0 	. . . 
	ld c,004h		;f4de	0e 04 	. . 
lf4e0h:
	jp lf45ah		;f4e0	c3 5a f4 	. Z . 
lf4e3h:
	call sub_eadfh		;f4e3	cd df ea 	. . . 
	jr c,lf4f3h		;f4e6	38 0b 	8 . 
	call sub_f3a4h		;f4e8	cd a4 f3 	. . . 
	ld c,008h		;f4eb	0e 08 	. . 
	jr lf4e0h		;f4ed	18 f1 	. . 
lf4efh:
	call sub_e94fh		;f4ef	cd 4f e9 	. O . 
	ret			;f4f2	c9 	. 
lf4f3h:
	call le92fh		;f4f3	cd 2f e9 	. / . 
	ret			;f4f6	c9 	. 
sub_f4f7h:
	push de			;f4f7	d5 	. 
	ld a,(de)			;f4f8	1a 	. 
lf4f9h:
	cp (hl)			;f4f9	be 	. 
	inc de			;f4fa	13 	. 
	inc hl			;f4fb	23 	# 
	jr nz,lf505h		;f4fc	20 07 	  . 
	cp 03ah		;f4fe	fe 3a 	. : 
	ld a,(de)			;f500	1a 	. 
	jr nz,lf4f9h		;f501	20 f6 	  . 
	pop hl			;f503	e1 	. 
	ret			;f504	c9 	. 
lf505h:
	pop de			;f505	d1 	. 
	scf			;f506	37 	7 
	ret			;f507	c9 	. 

; BLOCK 'lprt' (start 0xf508 end 0xf515)
lprt_start:
	defb 04ch		;f508	4c 	L 
	defb 050h		;f509	50 	P 
	defb 052h		;f50a	52 	R 
	defb 054h		;f50b	54 	T 
	defb 03ah		;f50c	3a 	: 
lf50dh:
	defb 043h		;f50d	43 	C 
	defb 04fh		;f50e	4f 	O 
	defb 04dh		;f50f	4d 	M 
	defb 03ah		;f510	3a 	: 
lf511h:
	defb 043h		;f511	43 	C 
	defb 041h		;f512	41 	A 
	defb 053h		;f513	53 	S 
	defb 03ah		;f514	3a 	: 
lprt_end:
	call sub_f85eh		;f515	cd 5e f8 	. ^ . 
	call c,sub_f471h		;f518	dc 71 f4 	. q . 
	ret c			;f51b	d8 	. 
sub_f51ch:
	ld a,(078e5h)		;f51c	3a e5 78 	: . x 
	and 004h		;f51f	e6 04 	. . 
	jr z,lf52ch		;f521	28 09 	( . 
	call sub_f0d5h		;f523	cd d5 f0 	. . . 
	call sub_ecfch		;f526	cd fc ec 	. . . 
	call c,sub_e94fh		;f529	dc 4f e9 	. O . 
lf52ch:
	ld hl,078e5h		;f52c	21 e5 78 	! . x 
	ld a,(hl)			;f52f	7e 	~ 
	and 0f0h		;f530	e6 f0 	. . 
	ld (hl),a			;f532	77 	w 
	call 0bcebh		;f533	cd eb bc 	. . . 
	ret			;f536	c9 	. 
sub_f537h:
	call sub_f5ddh		;f537	cd dd f5 	. . . 
	call sub_f7e8h		;f53a	cd e8 f7 	. . . 
	call sub_f7a7h		;f53d	cd a7 f7 	. . . 
	jr c,lf557h		;f540	38 15 	8 . 
	ld hl,07c80h		;f542	21 80 7c 	! . | 
	ld bc,00030h		;f545	01 30 00 	. 0 . 
	ld d,000h		;f548	16 00 	. . 
	ld a,0ffh		;f54a	3e ff 	> . 
	call sub_f80bh		;f54c	cd 0b f8 	. . . 
	jr c,lf557h		;f54f	38 06 	8 . 
	call sub_f61bh		;f551	cd 1b f6 	. . . 
	call sub_f7deh		;f554	cd de f7 	. . . 
lf557h:
	call sub_f5e9h		;f557	cd e9 f5 	. . . 
	ret			;f55a	c9 	. 
sub_f55bh:
	call sub_f5ddh		;f55b	cd dd f5 	. . . 
	call sub_f607h		;f55e	cd 07 f6 	. . . 
	call sub_f74dh		;f561	cd 4d f7 	. M . 
	jr c,lf57eh		;f564	38 18 	8 . 
lf566h:
	call sub_f695h		;f566	cd 95 f6 	. . . 
	jr c,lf57eh		;f569	38 13 	8 . 
	rra			;f56b	1f 	. 
	jr nc,lf566h		;f56c	30 f8 	0 . 
	ld hl,07cb0h		;f56e	21 b0 7c 	! . | 
	ld bc,00030h		;f571	01 30 00 	. 0 . 
	ld d,000h		;f574	16 00 	. . 
	ld a,0ffh		;f576	3e ff 	> . 
	call sub_f824h		;f578	cd 24 f8 	. $ . 
	call sub_f62ch		;f57b	cd 2c f6 	. , . 
lf57eh:
	call sub_f5e9h		;f57e	cd e9 f5 	. . . 
	ret			;f581	c9 	. 
sub_f582h:
	call sub_f5ddh		;f582	cd dd f5 	. . . 
	call sub_f79dh		;f585	cd 9d f7 	. . . 
	jr c,lf598h		;f588	38 0e 	8 . 
sub_f58ah:
	call sub_f5d1h		;f58a	cd d1 f5 	. . . 
	call sub_f80bh		;f58d	cd 0b f8 	. . . 
	jr c,lf598h		;f590	38 06 	8 . 
	call sub_f61bh		;f592	cd 1b f6 	. . . 
	call sub_f7e3h		;f595	cd e3 f7 	. . . 
lf598h:
	call sub_f5e9h		;f598	cd e9 f5 	. . . 
	ret			;f59b	c9 	. 
sub_f59ch:
	ex af,af'			;f59c	08 	. 
	scf			;f59d	37 	7 
	jr lf5a2h		;f59e	18 02 	. . 
sub_f5a0h:
	ex af,af'			;f5a0	08 	. 
	xor a			;f5a1	af 	. 
lf5a2h:
	ex af,af'			;f5a2	08 	. 
	jr lf5bfh		;f5a3	18 1a 	. . 
	ex af,af'			;f5a5	08 	. 
	scf			;f5a6	37 	7 
	jr lf5abh		;f5a7	18 02 	. . 
sub_f5a9h:
	ex af,af'			;f5a9	08 	. 
	xor a			;f5aa	af 	. 
lf5abh:
	ex af,af'			;f5ab	08 	. 
	call sub_f5ddh		;f5ac	cd dd f5 	. . . 
	call sub_f607h		;f5af	cd 07 f6 	. . . 
	call sub_f74ah		;f5b2	cd 4a f7 	. J . 
	jr c,lf5cdh		;f5b5	38 16 	8 . 
lf5b7h:
	call sub_f695h		;f5b7	cd 95 f6 	. . . 
	jr c,lf5cdh		;f5ba	38 11 	8 . 
	rra			;f5bc	1f 	. 
	jr nc,lf5b7h		;f5bd	30 f8 	0 . 
lf5bfh:
	call sub_f5d1h		;f5bf	cd d1 f5 	. . . 
	call sub_f827h		;f5c2	cd 27 f8 	. ' . 
	ld (07a68h),hl		;f5c5	22 68 7a 	" h z 
	jr c,lf5cdh		;f5c8	38 03 	8 . 
	call sub_f62ch		;f5ca	cd 2c f6 	. , . 
lf5cdh:
	call sub_f5e9h		;f5cd	cd e9 f5 	. . . 
	ret			;f5d0	c9 	. 
sub_f5d1h:
	ld hl,(07a60h)		;f5d1	2a 60 7a 	* ` z 
	ld bc,(07a62h)		;f5d4	ed 4b 62 7a 	. K b z 
	ld d,000h		;f5d8	16 00 	. . 
	ld a,0ffh		;f5da	3e ff 	> . 
	ret			;f5dc	c9 	. 
sub_f5ddh:
	call sub_f5fch		;f5dd	cd fc f5 	. . . 
	exx			;f5e0	d9 	. 
	ld hl,00000h		;f5e1	21 00 00 	! . . 
	ld (07a6ah),hl		;f5e4	22 6a 7a 	" j z 
	exx			;f5e7	d9 	. 
	ret			;f5e8	c9 	. 
sub_f5e9h:
	push af			;f5e9	f5 	. 
	call sub_f5efh		;f5ea	cd ef f5 	. . . 
	pop af			;f5ed	f1 	. 
	ret			;f5ee	c9 	. 
sub_f5efh:
	call sub_f612h		;f5ef	cd 12 f6 	. . . 
lf5f2h:
	xor a			;f5f2	af 	. 
	call sub_e5d5h		;f5f3	cd d5 e5 	. . . 
	ld b,032h		;f5f6	06 32 	. 2 
	call sub_e6aeh		;f5f8	cd ae e6 	. . . 
	ret			;f5fb	c9 	. 
sub_f5fch:
	ld a,010h		;f5fc	3e 10 	> . 
	call sub_e5d5h		;f5fe	cd d5 e5 	. . . 
	ld b,064h		;f601	06 64 	. d 
	call sub_e6aeh		;f603	cd ae e6 	. . . 
	ret			;f606	c9 	. 
sub_f607h:
	push af			;f607	f5 	. 
	in a,(015h)		;f608	db 15 	. . 
	and 0d0h		;f60a	e6 d0 	. . 
	or 090h		;f60c	f6 90 	. . 
	out (015h),a		;f60e	d3 15 	. . 
	pop af			;f610	f1 	. 
	ret			;f611	c9 	. 
sub_f612h:
	push af			;f612	f5 	. 
	in a,(015h)		;f613	db 15 	. . 
	and 040h		;f615	e6 40 	. @ 
	out (015h),a		;f617	d3 15 	. . 
	pop af			;f619	f1 	. 
	ret			;f61a	c9 	. 
sub_f61bh:
	ld a,(07a6bh)		;f61b	3a 6b 7a 	: k z 
	call sub_f722h		;f61e	cd 22 f7 	. " . 
	ld a,(07a6ah)		;f621	3a 6a 7a 	: j z 
	call sub_f722h		;f624	cd 22 f7 	. " . 
	call sub_f66bh		;f627	cd 6b f6 	. k . 
	xor a			;f62a	af 	. 
	ret			;f62b	c9 	. 
sub_f62ch:
	push hl			;f62c	e5 	. 
	push de			;f62d	d5 	. 
	ld hl,(07a6ah)		;f62e	2a 6a 7a 	* j z 
	call sub_f6f8h		;f631	cd f8 f6 	. . . 
	jr c,lf646h		;f634	38 10 	8 . 
	ld d,a			;f636	57 	W 
	call sub_f6f8h		;f637	cd f8 f6 	. . . 
	jr c,lf646h		;f63a	38 0a 	8 . 
	cp l			;f63c	bd 	. 
	jr nz,lf643h		;f63d	20 04 	  . 
	ld a,d			;f63f	7a 	z 
	sub h			;f640	94 	. 
	jr z,lf646h		;f641	28 03 	( . 
lf643h:
	ld a,001h		;f643	3e 01 	> . 
	scf			;f645	37 	7 
lf646h:
	pop de			;f646	d1 	. 
	pop hl			;f647	e1 	. 
	ret			;f648	c9 	. 
sub_f649h:
	ld hl,lf658h		;f649	21 58 f6 	! X . 
	ld de,078d0h		;f64c	11 d0 78 	. . x 
	ld bc,00013h		;f64f	01 13 00 	. . . 
	ldir		;f652	ed b0 	. . 
	call sub_f5efh		;f654	cd ef f5 	. . . 
	ret			;f657	c9 	. 
lf658h:
	ld e,017h		;f658	1e 17 	. . 
	ld c,a			;f65a	4f 	O 
	ld b,a			;f65b	47 	G 
	add a,b			;f65c	80 	. 
	jr lf6afh		;f65d	18 50 	. P 
	inc d			;f65f	14 	. 
	djnz lf689h		;f660	10 27 	. ' 
	jr z,$+42		;f662	28 28 	( ( 
	ret m			;f664	f8 	. 
	ld h,h			;f665	64 	d 
	inc d			;f666	14 	. 
	inc d			;f667	14 	. 
	jr z,lf5f2h		;f668	28 88 	( . 
	rlca			;f66a	07 	. 
sub_f66bh:
	push af			;f66b	f5 	. 
	push hl			;f66c	e5 	. 
	ld hl,(078d2h)		;f66d	2a d2 78 	* . x 
	jr lf677h		;f670	18 05 	. . 
sub_f672h:
	push af			;f672	f5 	. 
	push hl			;f673	e5 	. 
	ld hl,(078d0h)		;f674	2a d0 78 	* . x 
lf677h:
	in a,(018h)		;f677	db 18 	. . 
	or 080h		;f679	f6 80 	. . 
	out (018h),a		;f67b	d3 18 	. . 
	in a,(018h)		;f67d	db 18 	. . 
	ld a,l			;f67f	7d 	} 
lf680h:
	dec a			;f680	3d 	= 
	jr nz,lf680h		;f681	20 fd 	  . 
	in a,(018h)		;f683	db 18 	. . 
	and 07fh		;f685	e6 7f 	.  
	out (018h),a		;f687	d3 18 	. . 
lf689h:
	ld a,h			;f689	7c 	| 
lf68ah:
	dec a			;f68a	3d 	= 
	jr nz,lf68ah		;f68b	20 fd 	  . 
	nop			;f68d	00 	. 
	pop hl			;f68e	e1 	. 
	pop af			;f68f	f1 	. 
	ret			;f690	c9 	. 
sub_f691h:
	ld b,0ffh		;f691	06 ff 	. . 
	jr lf697h		;f693	18 02 	. . 
sub_f695h:
	ld b,000h		;f695	06 00 	. . 
lf697h:
	ld h,000h		;f697	26 00 	& . 
	ld c,004h		;f699	0e 04 	. . 
	ld a,(078d4h)		;f69b	3a d4 78 	: . x 
	rla			;f69e	17 	. 
	jr c,lf6cch		;f69f	38 2b 	8 + 
lf6a1h:
	in a,(01fh)		;f6a1	db 1f 	. . 
	bit 7,a		;f6a3	cb 7f 	.  
	jr nz,lf6f5h		;f6a5	20 4e 	  N 
	in a,(01fh)		;f6a7	db 1f 	. . 
	and c			;f6a9	a1 	. 
	jr nz,lf6a1h		;f6aa	20 f5 	  . 
lf6ach:
	in a,(01fh)		;f6ac	db 1f 	. . 
	and c			;f6ae	a1 	. 
lf6afh:
	jr nz,lf6b9h		;f6af	20 08 	  . 
	dec h			;f6b1	25 	% 
	jp nz,lf6ach		;f6b2	c2 ac f6 	. . . 
lf6b5h:
	ld a,003h		;f6b5	3e 03 	> . 
	scf			;f6b7	37 	7 
	ret			;f6b8	c9 	. 
lf6b9h:
	inc b			;f6b9	04 	. 
	ret z			;f6ba	c8 	. 
lf6bbh:
	inc b			;f6bb	04 	. 
	jr z,lf6b5h		;f6bc	28 f7 	( . 
	in a,(01fh)		;f6be	db 1f 	. . 
	and c			;f6c0	a1 	. 
	jp nz,lf6bbh		;f6c1	c2 bb f6 	. . . 
	ld a,(078d5h)		;f6c4	3a d5 78 	: . x 
	cp b			;f6c7	b8 	. 
	ld a,000h		;f6c8	3e 00 	> . 
	rla			;f6ca	17 	. 
	ret			;f6cb	c9 	. 
lf6cch:
	in a,(01fh)		;f6cc	db 1f 	. . 
	bit 7,a		;f6ce	cb 7f 	.  
	jr nz,lf6f5h		;f6d0	20 23 	  # 
	in a,(01fh)		;f6d2	db 1f 	. . 
	and c			;f6d4	a1 	. 
	jr z,lf6cch		;f6d5	28 f5 	( . 
lf6d7h:
	in a,(01fh)		;f6d7	db 1f 	. . 
	and c			;f6d9	a1 	. 
	jr z,lf6e2h		;f6da	28 06 	( . 
	dec h			;f6dc	25 	% 
	jp nz,lf6d7h		;f6dd	c2 d7 f6 	. . . 
	jr lf6b5h		;f6e0	18 d3 	. . 
lf6e2h:
	inc b			;f6e2	04 	. 
	ret z			;f6e3	c8 	. 
lf6e4h:
	inc b			;f6e4	04 	. 
	jr z,lf6b5h		;f6e5	28 ce 	( . 
	in a,(01fh)		;f6e7	db 1f 	. . 
	and c			;f6e9	a1 	. 
	jp z,lf6e4h		;f6ea	ca e4 f6 	. . . 
	ld a,(078d5h)		;f6ed	3a d5 78 	: . x 
	cp b			;f6f0	b8 	. 
	ld a,000h		;f6f1	3e 00 	> . 
	rla			;f6f3	17 	. 
	ret			;f6f4	c9 	. 
lf6f5h:
	xor a			;f6f5	af 	. 
	scf			;f6f6	37 	7 
	ret			;f6f7	c9 	. 
sub_f6f8h:
	exx			;f6f8	d9 	. 
	ld de,00801h		;f6f9	11 01 08 	. . . 
	jr lf705h		;f6fc	18 07 	. . 
sub_f6feh:
	exx			;f6fe	d9 	. 
	ld hl,(07a6ah)		;f6ff	2a 6a 7a 	* j z 
	ld de,00800h		;f702	11 00 08 	. . . 
lf705h:
	push hl			;f705	e5 	. 
	call sub_f695h		;f706	cd 95 f6 	. . . 
	pop hl			;f709	e1 	. 
	jr c,lf720h		;f70a	38 14 	8 . 
	rra			;f70c	1f 	. 
	jr nc,lf710h		;f70d	30 01 	0 . 
	inc hl			;f70f	23 	# 
lf710h:
	rl e		;f710	cb 13 	. . 
	dec d			;f712	15 	. 
	jr nz,lf705h		;f713	20 f0 	  . 
	jr c,lf71ah		;f715	38 03 	8 . 
	ld (07a6ah),hl		;f717	22 6a 7a 	" j z 
lf71ah:
	call sub_f691h		;f71a	cd 91 f6 	. . . 
	jr c,lf720h		;f71d	38 01 	8 . 
	ld a,e			;f71f	7b 	{ 
lf720h:
	exx			;f720	d9 	. 
	ret			;f721	c9 	. 
sub_f722h:
	exx			;f722	d9 	. 
	ld bc,00801h		;f723	01 01 08 	. . . 
	jr lf72fh		;f726	18 07 	. . 
sub_f728h:
	exx			;f728	d9 	. 
	ld hl,(07a6ah)		;f729	2a 6a 7a 	* j z 
	ld bc,00800h		;f72c	01 00 08 	. . . 
lf72fh:
	call sub_f66bh		;f72f	cd 6b f6 	. k . 
	call sub_f749h		;f732	cd 49 f7 	. I . 
lf735h:
	rlca			;f735	07 	. 
	jr nc,lf739h		;f736	30 01 	0 . 
	inc hl			;f738	23 	# 
lf739h:
	call c,sub_f66bh		;f739	dc 6b f6 	. k . 
	call nc,sub_f672h		;f73c	d4 72 f6 	. r . 
	djnz lf735h		;f73f	10 f4 	. . 
	bit 0,c		;f741	cb 41 	. A 
	jr nz,lf748h		;f743	20 03 	  . 
	ld (07a6ah),hl		;f745	22 6a 7a 	" j z 
lf748h:
	exx			;f748	d9 	. 
sub_f749h:
	ret			;f749	c9 	. 
sub_f74ah:
	scf			;f74a	37 	7 
	jr lf74eh		;f74b	18 01 	. . 
sub_f74dh:
	xor a			;f74d	af 	. 
lf74eh:
	push af			;f74e	f5 	. 
	exx			;f74f	d9 	. 
lf750h:
	ld de,(078e1h)		;f750	ed 5b e1 78 	. [ . x 
lf754h:
	call sub_f695h		;f754	cd 95 f6 	. . . 
	jr c,lf795h		;f757	38 3c 	8 < 
	rra			;f759	1f 	. 
	jr c,lf750h		;f75a	38 f4 	8 . 
	dec de			;f75c	1b 	. 
	ld a,d			;f75d	7a 	z 
	or e			;f75e	b3 	. 
	jr nz,lf754h		;f75f	20 f3 	  . 
	pop af			;f761	f1 	. 
	push af			;f762	f5 	. 
	ld de,(078dah)		;f763	ed 5b da 78 	. [ . x 
	jr nc,lf76dh		;f767	30 04 	0 . 
	ld de,(078deh)		;f769	ed 5b de 78 	. [ . x 
lf76dh:
	call sub_f695h		;f76d	cd 95 f6 	. . . 
	jr c,lf795h		;f770	38 23 	8 # 
	rra			;f772	1f 	. 
	jr nc,lf76dh		;f773	30 f8 	0 . 
	dec e			;f775	1d 	. 
	jr z,lf783h		;f776	28 0b 	( . 
lf778h:
	call sub_f695h		;f778	cd 95 f6 	. . . 
	jr c,lf795h		;f77b	38 18 	8 . 
	rra			;f77d	1f 	. 
	jr nc,lf750h		;f77e	30 d0 	0 . 
	dec e			;f780	1d 	. 
	jr nz,lf778h		;f781	20 f5 	  . 
lf783h:
	call sub_f695h		;f783	cd 95 f6 	. . . 
	jr c,lf795h		;f786	38 0d 	8 . 
	rra			;f788	1f 	. 
	jr c,lf750h		;f789	38 c5 	8 . 
	dec d			;f78b	15 	. 
	jr nz,lf783h		;f78c	20 f5 	  . 
	call sub_f691h		;f78e	cd 91 f6 	. . . 
	pop af			;f791	f1 	. 
	xor a			;f792	af 	. 
	exx			;f793	d9 	. 
	ret			;f794	c9 	. 
lf795h:
	and a			;f795	a7 	. 
	jr nz,lf750h		;f796	20 b8 	  . 
	pop af			;f798	f1 	. 
	xor a			;f799	af 	. 
	scf			;f79a	37 	7 
	exx			;f79b	d9 	. 
	ret			;f79c	c9 	. 
sub_f79dh:
	exx			;f79d	d9 	. 
	ld hl,(078dch)		;f79e	2a dc 78 	* . x 
	ld de,(078deh)		;f7a1	ed 5b de 78 	. [ . x 
	jr lf7afh		;f7a5	18 08 	. . 
sub_f7a7h:
	exx			;f7a7	d9 	. 
	ld hl,(078d8h)		;f7a8	2a d8 78 	* . x 
	ld de,(078dah)		;f7ab	ed 5b da 78 	. [ . x 
lf7afh:
	ld c,080h		;f7af	0e 80 	. . 
lf7b1h:
	call sub_f672h		;f7b1	cd 72 f6 	. r . 
	in a,(01fh)		;f7b4	db 1f 	. . 
	and c			;f7b6	a1 	. 
	jr nz,lf7dah		;f7b7	20 21 	  ! 
	dec hl			;f7b9	2b 	+ 
	ld a,h			;f7ba	7c 	| 
	or l			;f7bb	b5 	. 
	jr nz,lf7b1h		;f7bc	20 f3 	  . 
lf7beh:
	call sub_f66bh		;f7be	cd 6b f6 	. k . 
	in a,(01fh)		;f7c1	db 1f 	. . 
	and c			;f7c3	a1 	. 
	jr nz,lf7dah		;f7c4	20 14 	  . 
	dec e			;f7c6	1d 	. 
	jr nz,lf7beh		;f7c7	20 f5 	  . 
lf7c9h:
	call sub_f672h		;f7c9	cd 72 f6 	. r . 
	in a,(01fh)		;f7cc	db 1f 	. . 
	and c			;f7ce	a1 	. 
	jr nz,lf7dah		;f7cf	20 09 	  . 
	dec d			;f7d1	15 	. 
	jr nz,lf7c9h		;f7d2	20 f5 	  . 
	call sub_f66bh		;f7d4	cd 6b f6 	. k . 
	xor a			;f7d7	af 	. 
	exx			;f7d8	d9 	. 
	ret			;f7d9	c9 	. 
lf7dah:
	xor a			;f7da	af 	. 
	scf			;f7db	37 	7 
	exx			;f7dc	d9 	. 
	ret			;f7dd	c9 	. 
sub_f7deh:
	ld a,(078d7h)		;f7de	3a d7 78 	: . x 
	jr lf7ebh		;f7e1	18 08 	. . 
sub_f7e3h:
	ld a,(078e0h)		;f7e3	3a e0 78 	: . x 
	jr lf7ebh		;f7e6	18 03 	. . 
sub_f7e8h:
	ld a,(078d6h)		;f7e8	3a d6 78 	: . x 
lf7ebh:
	push bc			;f7eb	c5 	. 
	ld b,a			;f7ec	47 	G 
	in a,(018h)		;f7ed	db 18 	. . 
	and 07fh		;f7ef	e6 7f 	.  
	out (018h),a		;f7f1	d3 18 	. . 
lf7f3h:
	ld c,04dh		;f7f3	0e 4d 	. M 
lf7f5h:
	xor a			;f7f5	af 	. 
lf7f6h:
	dec a			;f7f6	3d 	= 
	jr nz,lf7f6h		;f7f7	20 fd 	  . 
	in a,(01fh)		;f7f9	db 1f 	. . 
	and 080h		;f7fb	e6 80 	. . 
	jr nz,lf807h		;f7fd	20 08 	  . 
	dec c			;f7ff	0d 	. 
	jr nz,lf7f5h		;f800	20 f3 	  . 
	djnz lf7f3h		;f802	10 ef 	. . 
	pop bc			;f804	c1 	. 
	xor a			;f805	af 	. 
	ret			;f806	c9 	. 
lf807h:
	pop bc			;f807	c1 	. 
	xor a			;f808	af 	. 
	scf			;f809	37 	7 
	ret			;f80a	c9 	. 
sub_f80bh:
	in a,(01fh)		;f80b	db 1f 	. . 
	and 080h		;f80d	e6 80 	. . 
	jr nz,lf81dh		;f80f	20 0c 	  . 
	ld a,(hl)			;f811	7e 	~ 
	call sub_f728h		;f812	cd 28 f7 	. ( . 
	inc hl			;f815	23 	# 
	dec bc			;f816	0b 	. 
	ld a,b			;f817	78 	x 
	or c			;f818	b1 	. 
	jr nz,sub_f80bh		;f819	20 f0 	  . 
	xor a			;f81b	af 	. 
	ret			;f81c	c9 	. 
lf81dh:
	xor a			;f81d	af 	. 
	scf			;f81e	37 	7 
	ret			;f81f	c9 	. 
	ex af,af'			;f820	08 	. 
	scf			;f821	37 	7 
	jr lf826h		;f822	18 02 	. . 
sub_f824h:
	ex af,af'			;f824	08 	. 
	xor a			;f825	af 	. 
lf826h:
	ex af,af'			;f826	08 	. 
sub_f827h:
	call sub_f6feh		;f827	cd fe f6 	. . . 
	ret c			;f82a	d8 	. 
	ex af,af'			;f82b	08 	. 
	jr c,lf83ch		;f82c	38 0e 	8 . 
	ex af,af'			;f82e	08 	. 
	bit 7,h		;f82f	cb 7c 	. | 
	jr nz,lf834h		;f831	20 01 	  . 
	ld (hl),a			;f833	77 	w 
lf834h:
	inc hl			;f834	23 	# 
	dec bc			;f835	0b 	. 
	ld a,b			;f836	78 	x 
	or c			;f837	b1 	. 
	jr nz,sub_f827h		;f838	20 ed 	  . 
	xor a			;f83a	af 	. 
	ret			;f83b	c9 	. 
lf83ch:
	ex af,af'			;f83c	08 	. 
	cp (hl)			;f83d	be 	. 
	jr z,lf834h		;f83e	28 f4 	( . 
	ld a,002h		;f840	3e 02 	> . 
	scf			;f842	37 	7 
	ret			;f843	c9 	. 
sub_f844h:
	inc ix		;f844	dd 23 	. # 
	ld a,(ix+000h)		;f846	dd 7e 00 	. ~ . 
	cp 020h		;f849	fe 20 	.   
	jr z,sub_f844h		;f84b	28 f7 	( . 
	ret			;f84d	c9 	. 
sub_f84eh:
	rlc a		;f84e	cb 07 	. . 
	rlc a		;f850	cb 07 	. . 
	rlc a		;f852	cb 07 	. . 
	rlc a		;f854	cb 07 	. . 
	or a			;f856	b7 	. 
	ret			;f857	c9 	. 
sub_f858h:
	ld a,(de)			;f858	1a 	. 
	ld c,a			;f859	4f 	O 
	ld b,000h		;f85a	06 00 	. . 
	inc bc			;f85c	03 	. 
	ret			;f85d	c9 	. 
sub_f85eh:
	call sub_f844h		;f85e	cd 44 f8 	. D . 
sub_f861h:
	cp 00dh		;f861	fe 0d 	. . 
	jr z,lf872h		;f863	28 0d 	( . 
	push hl			;f865	e5 	. 
	ld hl,07f36h		;f866	21 36 7f 	! 6  
	bit 1,(hl)		;f869	cb 4e 	. N 
	pop hl			;f86b	e1 	. 
	jr nz,lf879h		;f86c	20 0b 	  . 
	cp 03ah		;f86e	fe 3a 	. : 
	jr nz,lf879h		;f870	20 07 	  . 
lf872h:
	dec ix		;f872	dd 2b 	. + 
	call sub_f880h		;f874	cd 80 f8 	. . . 
	and a			;f877	a7 	. 
	ret			;f878	c9 	. 
lf879h:
	push af			;f879	f5 	. 
	call 08379h		;f87a	cd 79 83 	. y . 
	pop af			;f87d	f1 	. 
	scf			;f87e	37 	7 
	ret			;f87f	c9 	. 
sub_f880h:
	ld (079b9h),ix		;f880	dd 22 b9 79 	. " . y 
	ret			;f884	c9 	. 
sub_f885h:
	ld ix,(079b9h)		;f885	dd 2a b9 79 	. * . y 
	ret			;f889	c9 	. 
sub_f88ah:
	ld a,02ah		;f88a	3e 2a 	> * 
	push af			;f88c	f5 	. 
	ld a,020h		;f88d	3e 20 	>   
	jr lf894h		;f88f	18 03 	. . 
sub_f891h:
	ld a,02ah		;f891	3e 2a 	> * 
sub_f893h:
	push af			;f893	f5 	. 
lf894h:
	ld d,003h		;f894	16 03 	. . 
	ld e,016h		;f896	1e 16 	. . 
	call 0be62h		;f898	cd 62 be 	. b . 
	pop af			;f89b	f1 	. 
	ld d,003h		;f89c	16 03 	. . 
	ld e,017h		;f89e	1e 17 	. . 
	call 0be62h		;f8a0	cd 62 be 	. b . 
	ret			;f8a3	c9 	. 
sub_f8a4h:
	push af			;f8a4	f5 	. 
	ld a,020h		;f8a5	3e 20 	>   
	call sub_f893h		;f8a7	cd 93 f8 	. . . 
	pop af			;f8aa	f1 	. 
	ret			;f8ab	c9 	. 
sub_f8ach:
	call sub_e44fh		;f8ac	cd 4f e4 	. O . 
	ret nc			;f8af	d0 	. 
	ld hl,07904h		;f8b0	21 04 79 	! . y 
	res 6,(hl)		;f8b3	cb b6 	. . 
	and a			;f8b5	a7 	. 
	ret			;f8b6	c9 	. 
sub_f8b7h:
	ld c,01eh		;f8b7	0e 1e 	. . 
lf8b9h:
	ld b,07ah		;f8b9	06 7a 	. z 
	call sub_e6a4h		;f8bb	cd a4 e6 	. . . 
	in a,(01fh)		;f8be	db 1f 	. . 
	and 080h		;f8c0	e6 80 	. . 
	jr nz,lf8cdh		;f8c2	20 09 	  . 
	dec c			;f8c4	0d 	. 
	jr nz,lf8b9h		;f8c5	20 f2 	  . 
	dec hl			;f8c7	2b 	+ 
	ld a,l			;f8c8	7d 	} 
	or h			;f8c9	b4 	. 
	jr nz,sub_f8b7h		;f8ca	20 eb 	  . 
	ret			;f8cc	c9 	. 
lf8cdh:
	ld hl,07f35h		;f8cd	21 35 7f 	! 5  
	set 5,(hl)		;f8d0	cb ee 	. . 
	ret			;f8d2	c9 	. 
lf8d3h:
	ld a,014h		;f8d3	3e 14 	> . 
	jr lf901h		;f8d5	18 2a 	. * 
lf8d7h:
	ld a,015h		;f8d7	3e 15 	> . 
	jr lf901h		;f8d9	18 26 	. & 
lf8dbh:
	ld a,041h		;f8db	3e 41 	> A 
	jr lf901h		;f8dd	18 22 	. " 
lf8dfh:
	ld a,043h		;f8df	3e 43 	> C 
	jr lf901h		;f8e1	18 1e 	. . 
lf8e3h:
	ld a,044h		;f8e3	3e 44 	> D 
	jr lf901h		;f8e5	18 1a 	. . 
lf8e7h:
	ld a,052h		;f8e7	3e 52 	> R 
	jr lf901h		;f8e9	18 16 	. . 
lf8ebh:
	ld a,081h		;f8eb	3e 81 	> . 
	jr lf901h		;f8ed	18 12 	. . 
lf8efh:
	ld a,084h		;f8ef	3e 84 	> . 
	jr lf901h		;f8f1	18 0e 	. . 
lf8f3h:
	ld a,085h		;f8f3	3e 85 	> . 
	jr lf901h		;f8f5	18 0a 	. . 
lf8f7h:
	ld a,086h		;f8f7	3e 86 	> . 
	jr lf901h		;f8f9	18 06 	. . 
	ld a,087h		;f8fb	3e 87 	> . 
	jr lf901h		;f8fd	18 02 	. . 
lf8ffh:
	ld a,092h		;f8ff	3e 92 	> . 
lf901h:
	jp 0837bh		;f901	c3 7b 83 	. { . 
lf904h:
	ld (07c8ch),de		;f904	ed 53 8c 7c 	. S . | 
	ld (07c8eh),hl		;f908	22 8e 7c 	" . | 
	ld (07c90h),bc		;f90b	ed 43 90 7c 	. C . | 
lf90fh:
	in a,(01fh)		;f90f	db 1f 	. . 
	rla			;f911	17 	. 
	ld a,000h		;f912	3e 00 	> . 
	ret c			;f914	d8 	. 
	ld de,(07c8ch)		;f915	ed 5b 8c 7c 	. [ . | 
	ld hl,(07c8eh)		;f919	2a 8e 7c 	* . | 
	sbc hl,de		;f91c	ed 52 	. R 
	jr c,lf982h		;f91e	38 62 	8 b 
	ld a,l			;f920	7d 	} 
	ld de,00010h		;f921	11 10 00 	. . . 
	sbc hl,de		;f924	ed 52 	. R 
	jr nc,lf92ah		;f926	30 02 	0 . 
	inc a			;f928	3c 	< 
	ld e,a			;f929	5f 	_ 
lf92ah:
	ld hl,(07c8ch)		;f92a	2a 8c 7c 	* . | 
	ld bc,(07c90h)		;f92d	ed 4b 90 7c 	. K . | 
	add hl,bc			;f931	09 	. 
	ld b,h			;f932	44 	D 
	ld c,l			;f933	4d 	M 
	ld hl,07b00h		;f934	21 00 7b 	! . { 
	ld (hl),03ah		;f937	36 3a 	6 : 
	inc hl			;f939	23 	# 
	ld a,d			;f93a	7a 	z 
	add a,e			;f93b	83 	. 
	ld d,a			;f93c	57 	W 
	ld a,e			;f93d	7b 	{ 
	call sub_f9bdh		;f93e	cd bd f9 	. . . 
	ld a,d			;f941	7a 	z 
	add a,b			;f942	80 	. 
	add a,c			;f943	81 	. 
	ld d,a			;f944	57 	W 
	ld a,b			;f945	78 	x 
	call sub_f9bdh		;f946	cd bd f9 	. . . 
	ld a,c			;f949	79 	y 
	call sub_f9bdh		;f94a	cd bd f9 	. . . 
	xor a			;f94d	af 	. 
	call sub_f9bdh		;f94e	cd bd f9 	. . . 
	ld bc,(07c8ch)		;f951	ed 4b 8c 7c 	. K . | 
lf955h:
	ld a,(bc)			;f955	0a 	. 
	add a,d			;f956	82 	. 
	ld d,a			;f957	57 	W 
	ld a,(bc)			;f958	0a 	. 
	call sub_f9bdh		;f959	cd bd f9 	. . . 
	inc bc			;f95c	03 	. 
	dec e			;f95d	1d 	. 
	jr nz,lf955h		;f95e	20 f5 	  . 
	ld (07c8ch),bc		;f960	ed 43 8c 7c 	. C . | 
	ld a,d			;f964	7a 	z 
	neg		;f965	ed 44 	. D 
	call sub_f9bdh		;f967	cd bd f9 	. . . 
	call 0bceeh		;f96a	cd ee bc 	. . . 
	ld (hl),000h		;f96d	36 00 	6 . 
	ld hl,07b00h		;f96f	21 00 7b 	! . { 
	call 0bfb2h		;f972	cd b2 bf 	. . . 
	ret c			;f975	d8 	. 
	or a			;f976	b7 	. 
	ld hl,(07c8ch)		;f977	2a 8c 7c 	* . | 
	ld bc,00000h		;f97a	01 00 00 	. . . 
	sbc hl,bc		;f97d	ed 42 	. B 
	jp nz,lf90fh		;f97f	c2 0f f9 	. . . 
lf982h:
	ld hl,lf99dh		;f982	21 9d f9 	! . . 
	call 0bfb2h		;f985	cd b2 bf 	. . . 
	ret c			;f988	d8 	. 
	ld hl,07b00h		;f989	21 00 7b 	! . { 
	call 0bceeh		;f98c	cd ee bc 	. . . 
	ld a,(078efh)		;f98f	3a ef 78 	: . x 
	ld (hl),a			;f992	77 	w 
	inc hl			;f993	23 	# 
	ld (hl),000h		;f994	36 00 	6 . 
	ld hl,07b00h		;f996	21 00 7b 	! . { 
	call 0bfb2h		;f999	cd b2 bf 	. . . 
	ret			;f99c	c9 	. 
lf99dh:
	ld a,(03030h)		;f99d	3a 30 30 	: 0 0 
	jr nc,lf9d2h		;f9a0	30 30 	0 0 
	jr nc,$+50		;f9a2	30 30 	0 0 
	jr nc,lf9d7h		;f9a4	30 31 	0 1 
	ld b,(hl)			;f9a6	46 	F 
	ld b,(hl)			;f9a7	46 	F 
	nop			;f9a8	00 	. 
sub_f9a9h:
	cp 030h		;f9a9	fe 30 	. 0 
	ret c			;f9ab	d8 	. 
	cp 03ah		;f9ac	fe 3a 	. : 
	jr nc,lf9b3h		;f9ae	30 03 	0 . 
	sub 030h		;f9b0	d6 30 	. 0 
	ret			;f9b2	c9 	. 
lf9b3h:
	cp 041h		;f9b3	fe 41 	. A 
	ret c			;f9b5	d8 	. 
	cp 047h		;f9b6	fe 47 	. G 
	ccf			;f9b8	3f 	? 
	ret c			;f9b9	d8 	. 
	sub 037h		;f9ba	d6 37 	. 7 
	ret			;f9bc	c9 	. 
sub_f9bdh:
	push af			;f9bd	f5 	. 
	rra			;f9be	1f 	. 
	rra			;f9bf	1f 	. 
	rra			;f9c0	1f 	. 
	rra			;f9c1	1f 	. 
	call sub_f9ceh		;f9c2	cd ce f9 	. . . 
	ld (hl),a			;f9c5	77 	w 
	inc hl			;f9c6	23 	# 
	pop af			;f9c7	f1 	. 
	call sub_f9ceh		;f9c8	cd ce f9 	. . . 
	ld (hl),a			;f9cb	77 	w 
	inc hl			;f9cc	23 	# 
	ret			;f9cd	c9 	. 
sub_f9ceh:
	and 00fh		;f9ce	e6 0f 	. . 
	cp 00ah		;f9d0	fe 0a 	. . 
lf9d2h:
	ccf			;f9d2	3f 	? 
	adc a,030h		;f9d3	ce 30 	. 0 
	daa			;f9d5	27 	' 
	ret			;f9d6	c9 	. 
lf9d7h:
	ld (07c92h),de		;f9d7	ed 53 92 7c 	. S . | 
	ld (07c90h),bc		;f9db	ed 43 90 7c 	. C . | 
	and 001h		;f9df	e6 01 	. . 
	ld c,a			;f9e1	4f 	O 
	call 0bd18h		;f9e2	cd 18 bd 	. . . 
	ld hl,0ffffh		;f9e5	21 ff ff 	! . . 
	ld (07c98h),hl		;f9e8	22 98 7c 	" . | 
	ld hl,00000h		;f9eb	21 00 00 	! . . 
	ld (07c9ah),hl		;f9ee	22 9a 7c 	" . | 
lf9f1h:
	call 0bfach		;f9f1	cd ac bf 	. . . 
	jr nc,lf9f9h		;f9f4	30 03 	0 . 
	cp 0ffh		;f9f6	fe ff 	. . 
	ret			;f9f8	c9 	. 
lf9f9h:
	cp 03ah		;f9f9	fe 3a 	. : 
	jr nz,lf9f1h		;f9fb	20 f4 	  . 
	call sub_fa8bh		;f9fd	cd 8b fa 	. . . 
	ret c			;fa00	d8 	. 
	ld d,a			;fa01	57 	W 
	ld e,a			;fa02	5f 	_ 
	call sub_fa8bh		;fa03	cd 8b fa 	. . . 
	ret c			;fa06	d8 	. 
	ld h,a			;fa07	67 	g 
	add a,d			;fa08	82 	. 
	ld d,a			;fa09	57 	W 
	call sub_fa8bh		;fa0a	cd 8b fa 	. . . 
	ret c			;fa0d	d8 	. 
	ld l,a			;fa0e	6f 	o 
	add a,d			;fa0f	82 	. 
	ld d,a			;fa10	57 	W 
	bit 0,c		;fa11	cb 41 	. A 
	jr nz,lfa1ah		;fa13	20 05 	  . 
	ld hl,(07c92h)		;fa15	2a 92 7c 	* . | 
	jr lfa21h		;fa18	18 07 	. . 
lfa1ah:
	push bc			;fa1a	c5 	. 
	ld bc,(07c90h)		;fa1b	ed 4b 90 7c 	. K . | 
	add hl,bc			;fa1f	09 	. 
	pop bc			;fa20	c1 	. 
lfa21h:
	call sub_fa8bh		;fa21	cd 8b fa 	. . . 
	ret c			;fa24	d8 	. 
	cp 001h		;fa25	fe 01 	. . 
	jr nc,lfa3fh		;fa27	30 16 	0 . 
	ld a,0fdh		;fa29	3e fd 	> . 
	and c			;fa2b	a1 	. 
	ld c,a			;fa2c	4f 	O 
	push de			;fa2d	d5 	. 
	push hl			;fa2e	e5 	. 
	ld de,(07c98h)		;fa2f	ed 5b 98 7c 	. [ . | 
	or a			;fa33	b7 	. 
	sbc hl,de		;fa34	ed 52 	. R 
	pop hl			;fa36	e1 	. 
	jr nc,lfa3ch		;fa37	30 03 	0 . 
	ld (07c98h),hl		;fa39	22 98 7c 	" . | 
lfa3ch:
	pop de			;fa3c	d1 	. 
	jr lfa46h		;fa3d	18 07 	. . 
lfa3fh:
	jr nz,lfaa8h		;fa3f	20 67 	  g 
	ld a,002h		;fa41	3e 02 	> . 
	or c			;fa43	b1 	. 
	ld c,a			;fa44	4f 	O 
	inc d			;fa45	14 	. 
lfa46h:
	inc e			;fa46	1c 	. 
	dec e			;fa47	1d 	. 
	jr z,lfa5fh		;fa48	28 15 	( . 
	call sub_fa8bh		;fa4a	cd 8b fa 	. . . 
	ret c			;fa4d	d8 	. 
	ld b,a			;fa4e	47 	G 
	add a,d			;fa4f	82 	. 
	ld d,a			;fa50	57 	W 
	ld a,b			;fa51	78 	x 
	dec e			;fa52	1d 	. 
	bit 1,c		;fa53	cb 49 	. I 
	jr nz,lfa46h		;fa55	20 ef 	  . 
	bit 7,h		;fa57	cb 7c 	. | 
	jr nz,lfa5ch		;fa59	20 01 	  . 
	ld (hl),a			;fa5b	77 	w 
lfa5ch:
	inc hl			;fa5c	23 	# 
	jr lfa46h		;fa5d	18 e7 	. . 
lfa5fh:
	ld (07c92h),hl		;fa5f	22 92 7c 	" . | 
	push de			;fa62	d5 	. 
	push hl			;fa63	e5 	. 
	ld de,(07c9ah)		;fa64	ed 5b 9a 7c 	. [ . | 
	or a			;fa68	b7 	. 
	sbc hl,de		;fa69	ed 52 	. R 
	pop hl			;fa6b	e1 	. 
	jr c,lfa71h		;fa6c	38 03 	8 . 
	ld (07c9ah),hl		;fa6e	22 9a 7c 	" . | 
lfa71h:
	pop de			;fa71	d1 	. 
	call sub_fa8bh		;fa72	cd 8b fa 	. . . 
	ret c			;fa75	d8 	. 
	add a,d			;fa76	82 	. 
	jr z,lfa7dh		;fa77	28 04 	( . 
	ld a,00ah		;fa79	3e 0a 	> . 
	scf			;fa7b	37 	7 
	ret			;fa7c	c9 	. 
lfa7dh:
	bit 1,c		;fa7d	cb 49 	. I 
	jp z,lf9f1h		;fa7f	ca f1 f9 	. . . 
	ld de,(07c98h)		;fa82	ed 5b 98 7c 	. [ . | 
	ld hl,(07c9ah)		;fa86	2a 9a 7c 	* . | 
	or a			;fa89	b7 	. 
	ret			;fa8a	c9 	. 
sub_fa8bh:
	call sub_faach		;fa8b	cd ac fa 	. . . 
	ret c			;fa8e	d8 	. 
	call sub_faa4h		;fa8f	cd a4 fa 	. . . 
	ret c			;fa92	d8 	. 
	and 00fh		;fa93	e6 0f 	. . 
	rla			;fa95	17 	. 
	rla			;fa96	17 	. 
	rla			;fa97	17 	. 
	rla			;fa98	17 	. 
	ld b,a			;fa99	47 	G 
	call sub_faach		;fa9a	cd ac fa 	. . . 
	ret c			;fa9d	d8 	. 
	call sub_faa4h		;fa9e	cd a4 fa 	. . . 
	ret c			;faa1	d8 	. 
	or b			;faa2	b0 	. 
	ret			;faa3	c9 	. 
sub_faa4h:
	call sub_f9a9h		;faa4	cd a9 f9 	. . . 
	ret nc			;faa7	d0 	. 
lfaa8h:
	scf			;faa8	37 	7 
	ld a,008h		;faa9	3e 08 	> . 
	ret			;faab	c9 	. 
sub_faach:
	call 0bfach		;faac	cd ac bf 	. . . 
	ret c			;faaf	d8 	. 
	push hl			;fab0	e5 	. 
	ld hl,078efh		;fab1	21 ef 78 	! . x 
	cp (hl)			;fab4	be 	. 
	pop hl			;fab5	e1 	. 
	jr z,sub_faach		;fab6	28 f4 	( . 
	cp 00dh		;fab8	fe 0d 	. . 
	jr z,sub_faach		;faba	28 f0 	( . 
	cp 00ah		;fabc	fe 0a 	. . 
	jr z,sub_faach		;fabe	28 ec 	( . 
	or a			;fac0	b7 	. 
	ret			;fac1	c9 	. 
	nop			;fac2	00 	. 
	nop			;fac3	00 	. 
	nop			;fac4	00 	. 
	nop			;fac5	00 	. 
	nop			;fac6	00 	. 
	nop			;fac7	00 	. 
	nop			;fac8	00 	. 
	nop			;fac9	00 	. 
	nop			;faca	00 	. 
	nop			;facb	00 	. 
	nop			;facc	00 	. 
	nop			;facd	00 	. 
	nop			;face	00 	. 
	nop			;facf	00 	. 
	nop			;fad0	00 	. 
	nop			;fad1	00 	. 
	nop			;fad2	00 	. 
	nop			;fad3	00 	. 
	nop			;fad4	00 	. 
	nop			;fad5	00 	. 
	nop			;fad6	00 	. 
	nop			;fad7	00 	. 
	nop			;fad8	00 	. 
	nop			;fad9	00 	. 
	nop			;fada	00 	. 
	nop			;fadb	00 	. 
	nop			;fadc	00 	. 
	nop			;fadd	00 	. 
	nop			;fade	00 	. 
	nop			;fadf	00 	. 
	nop			;fae0	00 	. 
	nop			;fae1	00 	. 
	nop			;fae2	00 	. 
	nop			;fae3	00 	. 
	nop			;fae4	00 	. 
	nop			;fae5	00 	. 
	nop			;fae6	00 	. 
	nop			;fae7	00 	. 
	nop			;fae8	00 	. 
	nop			;fae9	00 	. 
	nop			;faea	00 	. 
	nop			;faeb	00 	. 
	nop			;faec	00 	. 
	nop			;faed	00 	. 
	nop			;faee	00 	. 
	nop			;faef	00 	. 
	nop			;faf0	00 	. 
	nop			;faf1	00 	. 
	nop			;faf2	00 	. 
	nop			;faf3	00 	. 
	nop			;faf4	00 	. 
	nop			;faf5	00 	. 
	nop			;faf6	00 	. 
	nop			;faf7	00 	. 
	nop			;faf8	00 	. 
	nop			;faf9	00 	. 
	nop			;fafa	00 	. 
	nop			;fafb	00 	. 
	nop			;fafc	00 	. 
	nop			;fafd	00 	. 
	nop			;fafe	00 	. 
	nop			;faff	00 	. 
	nop			;fb00	00 	. 
	nop			;fb01	00 	. 
	nop			;fb02	00 	. 
	nop			;fb03	00 	. 
	nop			;fb04	00 	. 
	nop			;fb05	00 	. 
	nop			;fb06	00 	. 
	nop			;fb07	00 	. 
	nop			;fb08	00 	. 
	nop			;fb09	00 	. 
	nop			;fb0a	00 	. 
	nop			;fb0b	00 	. 
	nop			;fb0c	00 	. 
	nop			;fb0d	00 	. 
	nop			;fb0e	00 	. 
	nop			;fb0f	00 	. 
	nop			;fb10	00 	. 
	nop			;fb11	00 	. 
	nop			;fb12	00 	. 
	nop			;fb13	00 	. 
	nop			;fb14	00 	. 
	nop			;fb15	00 	. 
	nop			;fb16	00 	. 
	nop			;fb17	00 	. 
	nop			;fb18	00 	. 
	nop			;fb19	00 	. 
	nop			;fb1a	00 	. 
	nop			;fb1b	00 	. 
	nop			;fb1c	00 	. 
	nop			;fb1d	00 	. 
	nop			;fb1e	00 	. 
	nop			;fb1f	00 	. 
	nop			;fb20	00 	. 
	nop			;fb21	00 	. 
	nop			;fb22	00 	. 
	nop			;fb23	00 	. 
	nop			;fb24	00 	. 
	nop			;fb25	00 	. 
	nop			;fb26	00 	. 
	nop			;fb27	00 	. 
	nop			;fb28	00 	. 
	nop			;fb29	00 	. 
	nop			;fb2a	00 	. 
	nop			;fb2b	00 	. 
	nop			;fb2c	00 	. 
	nop			;fb2d	00 	. 
	nop			;fb2e	00 	. 
	nop			;fb2f	00 	. 
	nop			;fb30	00 	. 
	nop			;fb31	00 	. 
	nop			;fb32	00 	. 
	nop			;fb33	00 	. 
	nop			;fb34	00 	. 
	nop			;fb35	00 	. 
	nop			;fb36	00 	. 
	nop			;fb37	00 	. 
	nop			;fb38	00 	. 
	nop			;fb39	00 	. 
	nop			;fb3a	00 	. 
	nop			;fb3b	00 	. 
	nop			;fb3c	00 	. 
	nop			;fb3d	00 	. 
	nop			;fb3e	00 	. 
	nop			;fb3f	00 	. 
	nop			;fb40	00 	. 
	nop			;fb41	00 	. 
	nop			;fb42	00 	. 
	nop			;fb43	00 	. 
	nop			;fb44	00 	. 
	nop			;fb45	00 	. 
	nop			;fb46	00 	. 
	nop			;fb47	00 	. 
	nop			;fb48	00 	. 
	nop			;fb49	00 	. 
	nop			;fb4a	00 	. 
	nop			;fb4b	00 	. 
	nop			;fb4c	00 	. 
	nop			;fb4d	00 	. 
	nop			;fb4e	00 	. 
	nop			;fb4f	00 	. 
	nop			;fb50	00 	. 
	nop			;fb51	00 	. 
	nop			;fb52	00 	. 
	nop			;fb53	00 	. 
	nop			;fb54	00 	. 
	nop			;fb55	00 	. 
	nop			;fb56	00 	. 
	nop			;fb57	00 	. 
	nop			;fb58	00 	. 
	nop			;fb59	00 	. 
	nop			;fb5a	00 	. 
	nop			;fb5b	00 	. 
	nop			;fb5c	00 	. 
	nop			;fb5d	00 	. 
	nop			;fb5e	00 	. 
	nop			;fb5f	00 	. 
	nop			;fb60	00 	. 
	nop			;fb61	00 	. 
	nop			;fb62	00 	. 
	nop			;fb63	00 	. 
	nop			;fb64	00 	. 
	nop			;fb65	00 	. 
	nop			;fb66	00 	. 
	nop			;fb67	00 	. 
	nop			;fb68	00 	. 
	nop			;fb69	00 	. 
	nop			;fb6a	00 	. 
	nop			;fb6b	00 	. 
	nop			;fb6c	00 	. 
	nop			;fb6d	00 	. 
	nop			;fb6e	00 	. 
	nop			;fb6f	00 	. 
	nop			;fb70	00 	. 
	nop			;fb71	00 	. 
	nop			;fb72	00 	. 
	nop			;fb73	00 	. 
	nop			;fb74	00 	. 
	nop			;fb75	00 	. 
	nop			;fb76	00 	. 
	nop			;fb77	00 	. 
	nop			;fb78	00 	. 
	nop			;fb79	00 	. 
	nop			;fb7a	00 	. 
	nop			;fb7b	00 	. 
	nop			;fb7c	00 	. 
	nop			;fb7d	00 	. 
	nop			;fb7e	00 	. 
	nop			;fb7f	00 	. 
	nop			;fb80	00 	. 
	nop			;fb81	00 	. 
	nop			;fb82	00 	. 
	nop			;fb83	00 	. 
	nop			;fb84	00 	. 
	nop			;fb85	00 	. 
	nop			;fb86	00 	. 
	nop			;fb87	00 	. 
	nop			;fb88	00 	. 
	nop			;fb89	00 	. 
	nop			;fb8a	00 	. 
	nop			;fb8b	00 	. 
	nop			;fb8c	00 	. 
	nop			;fb8d	00 	. 
	nop			;fb8e	00 	. 
	nop			;fb8f	00 	. 
	nop			;fb90	00 	. 
	nop			;fb91	00 	. 
	nop			;fb92	00 	. 
	nop			;fb93	00 	. 
	nop			;fb94	00 	. 
	nop			;fb95	00 	. 
	nop			;fb96	00 	. 
	nop			;fb97	00 	. 
	nop			;fb98	00 	. 
	nop			;fb99	00 	. 
	nop			;fb9a	00 	. 
	nop			;fb9b	00 	. 
	nop			;fb9c	00 	. 
	nop			;fb9d	00 	. 
	nop			;fb9e	00 	. 
	nop			;fb9f	00 	. 
	nop			;fba0	00 	. 
	nop			;fba1	00 	. 
	nop			;fba2	00 	. 
	nop			;fba3	00 	. 
	nop			;fba4	00 	. 
	nop			;fba5	00 	. 
	nop			;fba6	00 	. 
	nop			;fba7	00 	. 
	nop			;fba8	00 	. 
	nop			;fba9	00 	. 
	nop			;fbaa	00 	. 
	nop			;fbab	00 	. 
	nop			;fbac	00 	. 
	nop			;fbad	00 	. 
	nop			;fbae	00 	. 
	nop			;fbaf	00 	. 
	nop			;fbb0	00 	. 
	nop			;fbb1	00 	. 
	nop			;fbb2	00 	. 
	nop			;fbb3	00 	. 
	nop			;fbb4	00 	. 
	nop			;fbb5	00 	. 
	nop			;fbb6	00 	. 
	nop			;fbb7	00 	. 
	nop			;fbb8	00 	. 
	nop			;fbb9	00 	. 
	nop			;fbba	00 	. 
	nop			;fbbb	00 	. 
	nop			;fbbc	00 	. 
	nop			;fbbd	00 	. 
	nop			;fbbe	00 	. 
	nop			;fbbf	00 	. 
	nop			;fbc0	00 	. 
	nop			;fbc1	00 	. 
	nop			;fbc2	00 	. 
	nop			;fbc3	00 	. 
	nop			;fbc4	00 	. 
	nop			;fbc5	00 	. 
	nop			;fbc6	00 	. 
	nop			;fbc7	00 	. 
	nop			;fbc8	00 	. 
	nop			;fbc9	00 	. 
	nop			;fbca	00 	. 
	nop			;fbcb	00 	. 
	nop			;fbcc	00 	. 
	nop			;fbcd	00 	. 
	nop			;fbce	00 	. 
	nop			;fbcf	00 	. 
	nop			;fbd0	00 	. 
	nop			;fbd1	00 	. 
	nop			;fbd2	00 	. 
	nop			;fbd3	00 	. 
	nop			;fbd4	00 	. 
	nop			;fbd5	00 	. 
	nop			;fbd6	00 	. 
	nop			;fbd7	00 	. 
	nop			;fbd8	00 	. 
	nop			;fbd9	00 	. 
	nop			;fbda	00 	. 
	nop			;fbdb	00 	. 
	nop			;fbdc	00 	. 
	nop			;fbdd	00 	. 
	nop			;fbde	00 	. 
	nop			;fbdf	00 	. 
	nop			;fbe0	00 	. 
	nop			;fbe1	00 	. 
	nop			;fbe2	00 	. 
	nop			;fbe3	00 	. 
	nop			;fbe4	00 	. 
	nop			;fbe5	00 	. 
	nop			;fbe6	00 	. 
	nop			;fbe7	00 	. 
	nop			;fbe8	00 	. 
	nop			;fbe9	00 	. 
	nop			;fbea	00 	. 
	nop			;fbeb	00 	. 
	nop			;fbec	00 	. 
	nop			;fbed	00 	. 
	nop			;fbee	00 	. 
	nop			;fbef	00 	. 
	nop			;fbf0	00 	. 
	nop			;fbf1	00 	. 
	nop			;fbf2	00 	. 
	nop			;fbf3	00 	. 
	nop			;fbf4	00 	. 
	nop			;fbf5	00 	. 
	nop			;fbf6	00 	. 
	nop			;fbf7	00 	. 
	nop			;fbf8	00 	. 
	nop			;fbf9	00 	. 
	nop			;fbfa	00 	. 
	nop			;fbfb	00 	. 
	nop			;fbfc	00 	. 
	nop			;fbfd	00 	. 
	nop			;fbfe	00 	. 
	nop			;fbff	00 	. 
	nop			;fc00	00 	. 
	nop			;fc01	00 	. 
	nop			;fc02	00 	. 
	nop			;fc03	00 	. 
	nop			;fc04	00 	. 
	nop			;fc05	00 	. 
	nop			;fc06	00 	. 
	nop			;fc07	00 	. 
	nop			;fc08	00 	. 
	nop			;fc09	00 	. 
	nop			;fc0a	00 	. 
	nop			;fc0b	00 	. 
	nop			;fc0c	00 	. 
	nop			;fc0d	00 	. 
	nop			;fc0e	00 	. 
	nop			;fc0f	00 	. 
	nop			;fc10	00 	. 
	nop			;fc11	00 	. 
	nop			;fc12	00 	. 
	nop			;fc13	00 	. 
	nop			;fc14	00 	. 
	nop			;fc15	00 	. 
	nop			;fc16	00 	. 
	nop			;fc17	00 	. 
lfc18h:
	nop			;fc18	00 	. 
	nop			;fc19	00 	. 
	nop			;fc1a	00 	. 
	nop			;fc1b	00 	. 
	nop			;fc1c	00 	. 
	nop			;fc1d	00 	. 
	nop			;fc1e	00 	. 
	nop			;fc1f	00 	. 
	nop			;fc20	00 	. 
	nop			;fc21	00 	. 
	nop			;fc22	00 	. 
	nop			;fc23	00 	. 
	nop			;fc24	00 	. 
	nop			;fc25	00 	. 
	nop			;fc26	00 	. 
	nop			;fc27	00 	. 
	nop			;fc28	00 	. 
	nop			;fc29	00 	. 
	nop			;fc2a	00 	. 
	nop			;fc2b	00 	. 
	nop			;fc2c	00 	. 
	nop			;fc2d	00 	. 
	nop			;fc2e	00 	. 
	nop			;fc2f	00 	. 
	nop			;fc30	00 	. 
	nop			;fc31	00 	. 
	nop			;fc32	00 	. 
	nop			;fc33	00 	. 
	nop			;fc34	00 	. 
	nop			;fc35	00 	. 
	nop			;fc36	00 	. 
	nop			;fc37	00 	. 
	nop			;fc38	00 	. 
	nop			;fc39	00 	. 
	nop			;fc3a	00 	. 
	nop			;fc3b	00 	. 
	nop			;fc3c	00 	. 
	nop			;fc3d	00 	. 
	nop			;fc3e	00 	. 
	nop			;fc3f	00 	. 
	nop			;fc40	00 	. 
	nop			;fc41	00 	. 
	nop			;fc42	00 	. 
	nop			;fc43	00 	. 
	nop			;fc44	00 	. 
	nop			;fc45	00 	. 
	nop			;fc46	00 	. 
	nop			;fc47	00 	. 
	nop			;fc48	00 	. 
	nop			;fc49	00 	. 
	nop			;fc4a	00 	. 
	nop			;fc4b	00 	. 
	nop			;fc4c	00 	. 
	nop			;fc4d	00 	. 
	nop			;fc4e	00 	. 
	nop			;fc4f	00 	. 
	nop			;fc50	00 	. 
	nop			;fc51	00 	. 
	nop			;fc52	00 	. 
	nop			;fc53	00 	. 
	nop			;fc54	00 	. 
	nop			;fc55	00 	. 
	nop			;fc56	00 	. 
	nop			;fc57	00 	. 
	nop			;fc58	00 	. 
	nop			;fc59	00 	. 
	nop			;fc5a	00 	. 
	nop			;fc5b	00 	. 
	nop			;fc5c	00 	. 
	nop			;fc5d	00 	. 
	nop			;fc5e	00 	. 
	nop			;fc5f	00 	. 
	nop			;fc60	00 	. 
	nop			;fc61	00 	. 
	nop			;fc62	00 	. 
	nop			;fc63	00 	. 
	nop			;fc64	00 	. 
	nop			;fc65	00 	. 
	nop			;fc66	00 	. 
	nop			;fc67	00 	. 
	nop			;fc68	00 	. 
	nop			;fc69	00 	. 
	nop			;fc6a	00 	. 
	nop			;fc6b	00 	. 
	nop			;fc6c	00 	. 
	nop			;fc6d	00 	. 
	nop			;fc6e	00 	. 
	nop			;fc6f	00 	. 
	nop			;fc70	00 	. 
	nop			;fc71	00 	. 
	nop			;fc72	00 	. 
	nop			;fc73	00 	. 
	nop			;fc74	00 	. 
	nop			;fc75	00 	. 
	nop			;fc76	00 	. 
	nop			;fc77	00 	. 
	nop			;fc78	00 	. 
	nop			;fc79	00 	. 
	nop			;fc7a	00 	. 
	nop			;fc7b	00 	. 
	nop			;fc7c	00 	. 
	nop			;fc7d	00 	. 
	nop			;fc7e	00 	. 
	nop			;fc7f	00 	. 
	nop			;fc80	00 	. 
	nop			;fc81	00 	. 
	nop			;fc82	00 	. 
	nop			;fc83	00 	. 
	nop			;fc84	00 	. 
	nop			;fc85	00 	. 
	nop			;fc86	00 	. 
	nop			;fc87	00 	. 
	nop			;fc88	00 	. 
	nop			;fc89	00 	. 
	nop			;fc8a	00 	. 
	nop			;fc8b	00 	. 
	nop			;fc8c	00 	. 
	nop			;fc8d	00 	. 
	nop			;fc8e	00 	. 
	nop			;fc8f	00 	. 
	nop			;fc90	00 	. 
	nop			;fc91	00 	. 
	nop			;fc92	00 	. 
	nop			;fc93	00 	. 
	nop			;fc94	00 	. 
	nop			;fc95	00 	. 
	nop			;fc96	00 	. 
	nop			;fc97	00 	. 
	nop			;fc98	00 	. 
	nop			;fc99	00 	. 
	nop			;fc9a	00 	. 
	nop			;fc9b	00 	. 
	nop			;fc9c	00 	. 
	nop			;fc9d	00 	. 
	nop			;fc9e	00 	. 
	nop			;fc9f	00 	. 
	nop			;fca0	00 	. 
	nop			;fca1	00 	. 
	nop			;fca2	00 	. 
	nop			;fca3	00 	. 
	nop			;fca4	00 	. 
	nop			;fca5	00 	. 
	nop			;fca6	00 	. 
	nop			;fca7	00 	. 
	nop			;fca8	00 	. 
	nop			;fca9	00 	. 
	nop			;fcaa	00 	. 
	nop			;fcab	00 	. 
	nop			;fcac	00 	. 
	nop			;fcad	00 	. 
	nop			;fcae	00 	. 
	nop			;fcaf	00 	. 
	nop			;fcb0	00 	. 
	nop			;fcb1	00 	. 
	nop			;fcb2	00 	. 
	nop			;fcb3	00 	. 
	nop			;fcb4	00 	. 
	nop			;fcb5	00 	. 
	nop			;fcb6	00 	. 
	nop			;fcb7	00 	. 
	nop			;fcb8	00 	. 
	nop			;fcb9	00 	. 
	nop			;fcba	00 	. 
	nop			;fcbb	00 	. 
	nop			;fcbc	00 	. 
	nop			;fcbd	00 	. 
	nop			;fcbe	00 	. 
	nop			;fcbf	00 	. 
	nop			;fcc0	00 	. 
	nop			;fcc1	00 	. 
	nop			;fcc2	00 	. 
	nop			;fcc3	00 	. 
	nop			;fcc4	00 	. 
	nop			;fcc5	00 	. 
	nop			;fcc6	00 	. 
	nop			;fcc7	00 	. 
	nop			;fcc8	00 	. 
	nop			;fcc9	00 	. 
	nop			;fcca	00 	. 
	nop			;fccb	00 	. 
	nop			;fccc	00 	. 
	nop			;fccd	00 	. 
	nop			;fcce	00 	. 
	nop			;fccf	00 	. 
	nop			;fcd0	00 	. 
	nop			;fcd1	00 	. 
	nop			;fcd2	00 	. 
	nop			;fcd3	00 	. 
	nop			;fcd4	00 	. 
	nop			;fcd5	00 	. 
	nop			;fcd6	00 	. 
	nop			;fcd7	00 	. 
	nop			;fcd8	00 	. 
	nop			;fcd9	00 	. 
	nop			;fcda	00 	. 
	nop			;fcdb	00 	. 
	nop			;fcdc	00 	. 
	nop			;fcdd	00 	. 
	nop			;fcde	00 	. 
	nop			;fcdf	00 	. 
	nop			;fce0	00 	. 
	nop			;fce1	00 	. 
	nop			;fce2	00 	. 
	nop			;fce3	00 	. 
	nop			;fce4	00 	. 
	nop			;fce5	00 	. 
	nop			;fce6	00 	. 
	nop			;fce7	00 	. 
	nop			;fce8	00 	. 
	nop			;fce9	00 	. 
	nop			;fcea	00 	. 
	nop			;fceb	00 	. 
	nop			;fcec	00 	. 
	nop			;fced	00 	. 
	nop			;fcee	00 	. 
	nop			;fcef	00 	. 
	nop			;fcf0	00 	. 
	nop			;fcf1	00 	. 
	nop			;fcf2	00 	. 
	nop			;fcf3	00 	. 
	nop			;fcf4	00 	. 
	nop			;fcf5	00 	. 
	nop			;fcf6	00 	. 
	nop			;fcf7	00 	. 
	nop			;fcf8	00 	. 
	nop			;fcf9	00 	. 
	nop			;fcfa	00 	. 
	nop			;fcfb	00 	. 
	nop			;fcfc	00 	. 
	nop			;fcfd	00 	. 
	nop			;fcfe	00 	. 
	nop			;fcff	00 	. 
	nop			;fd00	00 	. 
	nop			;fd01	00 	. 
	nop			;fd02	00 	. 
	nop			;fd03	00 	. 
	nop			;fd04	00 	. 
	nop			;fd05	00 	. 
	nop			;fd06	00 	. 
	nop			;fd07	00 	. 
	nop			;fd08	00 	. 
	nop			;fd09	00 	. 
	nop			;fd0a	00 	. 
	nop			;fd0b	00 	. 
	nop			;fd0c	00 	. 
	nop			;fd0d	00 	. 
	nop			;fd0e	00 	. 
	nop			;fd0f	00 	. 
	nop			;fd10	00 	. 
	nop			;fd11	00 	. 
	nop			;fd12	00 	. 
	nop			;fd13	00 	. 
	nop			;fd14	00 	. 
	nop			;fd15	00 	. 
	nop			;fd16	00 	. 
	nop			;fd17	00 	. 
	nop			;fd18	00 	. 
	nop			;fd19	00 	. 
	nop			;fd1a	00 	. 
	nop			;fd1b	00 	. 
	nop			;fd1c	00 	. 
	nop			;fd1d	00 	. 
	nop			;fd1e	00 	. 
	nop			;fd1f	00 	. 
	nop			;fd20	00 	. 
	nop			;fd21	00 	. 
	nop			;fd22	00 	. 
	nop			;fd23	00 	. 
	nop			;fd24	00 	. 
	nop			;fd25	00 	. 
	nop			;fd26	00 	. 
	nop			;fd27	00 	. 
	nop			;fd28	00 	. 
	nop			;fd29	00 	. 
	nop			;fd2a	00 	. 
	nop			;fd2b	00 	. 
	nop			;fd2c	00 	. 
	nop			;fd2d	00 	. 
	nop			;fd2e	00 	. 
	nop			;fd2f	00 	. 
	nop			;fd30	00 	. 
	nop			;fd31	00 	. 
	nop			;fd32	00 	. 
	nop			;fd33	00 	. 
	nop			;fd34	00 	. 
	nop			;fd35	00 	. 
	nop			;fd36	00 	. 
	nop			;fd37	00 	. 
	nop			;fd38	00 	. 
	nop			;fd39	00 	. 
	nop			;fd3a	00 	. 
	nop			;fd3b	00 	. 
	nop			;fd3c	00 	. 
	nop			;fd3d	00 	. 
	nop			;fd3e	00 	. 
	nop			;fd3f	00 	. 
	nop			;fd40	00 	. 
	nop			;fd41	00 	. 
	nop			;fd42	00 	. 
	nop			;fd43	00 	. 
	nop			;fd44	00 	. 
	nop			;fd45	00 	. 
	nop			;fd46	00 	. 
	nop			;fd47	00 	. 
	nop			;fd48	00 	. 
	nop			;fd49	00 	. 
	nop			;fd4a	00 	. 
	nop			;fd4b	00 	. 
	nop			;fd4c	00 	. 
	nop			;fd4d	00 	. 
	nop			;fd4e	00 	. 
	nop			;fd4f	00 	. 
	nop			;fd50	00 	. 
	nop			;fd51	00 	. 
	nop			;fd52	00 	. 
	nop			;fd53	00 	. 
	nop			;fd54	00 	. 
	nop			;fd55	00 	. 
	nop			;fd56	00 	. 
	nop			;fd57	00 	. 
	nop			;fd58	00 	. 
	nop			;fd59	00 	. 
	nop			;fd5a	00 	. 
	nop			;fd5b	00 	. 
	nop			;fd5c	00 	. 
	nop			;fd5d	00 	. 
	nop			;fd5e	00 	. 
	nop			;fd5f	00 	. 
	nop			;fd60	00 	. 
	nop			;fd61	00 	. 
	nop			;fd62	00 	. 
	nop			;fd63	00 	. 
	nop			;fd64	00 	. 
	nop			;fd65	00 	. 
	nop			;fd66	00 	. 
	nop			;fd67	00 	. 
	nop			;fd68	00 	. 
	nop			;fd69	00 	. 
	nop			;fd6a	00 	. 
	nop			;fd6b	00 	. 
	nop			;fd6c	00 	. 
	nop			;fd6d	00 	. 
	nop			;fd6e	00 	. 
	nop			;fd6f	00 	. 
	nop			;fd70	00 	. 
	nop			;fd71	00 	. 
	nop			;fd72	00 	. 
	nop			;fd73	00 	. 
	nop			;fd74	00 	. 
	nop			;fd75	00 	. 
	nop			;fd76	00 	. 
	nop			;fd77	00 	. 
	nop			;fd78	00 	. 
	nop			;fd79	00 	. 
	nop			;fd7a	00 	. 
	nop			;fd7b	00 	. 
	nop			;fd7c	00 	. 
	nop			;fd7d	00 	. 
	nop			;fd7e	00 	. 
	nop			;fd7f	00 	. 
	nop			;fd80	00 	. 
	nop			;fd81	00 	. 
	nop			;fd82	00 	. 
	nop			;fd83	00 	. 
	nop			;fd84	00 	. 
	nop			;fd85	00 	. 
	nop			;fd86	00 	. 
	nop			;fd87	00 	. 
	nop			;fd88	00 	. 
	nop			;fd89	00 	. 
	nop			;fd8a	00 	. 
	nop			;fd8b	00 	. 
	nop			;fd8c	00 	. 
	nop			;fd8d	00 	. 
	nop			;fd8e	00 	. 
	nop			;fd8f	00 	. 
	nop			;fd90	00 	. 
	nop			;fd91	00 	. 
	nop			;fd92	00 	. 
	nop			;fd93	00 	. 
	nop			;fd94	00 	. 
	nop			;fd95	00 	. 
	nop			;fd96	00 	. 
	nop			;fd97	00 	. 
	nop			;fd98	00 	. 
	nop			;fd99	00 	. 
	nop			;fd9a	00 	. 
	nop			;fd9b	00 	. 
	nop			;fd9c	00 	. 
	nop			;fd9d	00 	. 
	nop			;fd9e	00 	. 
	nop			;fd9f	00 	. 
	nop			;fda0	00 	. 
	nop			;fda1	00 	. 
	nop			;fda2	00 	. 
	nop			;fda3	00 	. 
	nop			;fda4	00 	. 
	nop			;fda5	00 	. 
	nop			;fda6	00 	. 
	nop			;fda7	00 	. 
	nop			;fda8	00 	. 
	nop			;fda9	00 	. 
	nop			;fdaa	00 	. 
	nop			;fdab	00 	. 
	nop			;fdac	00 	. 
	nop			;fdad	00 	. 
	nop			;fdae	00 	. 
	nop			;fdaf	00 	. 
	nop			;fdb0	00 	. 
	nop			;fdb1	00 	. 
	nop			;fdb2	00 	. 
	nop			;fdb3	00 	. 
	nop			;fdb4	00 	. 
	nop			;fdb5	00 	. 
	nop			;fdb6	00 	. 
	nop			;fdb7	00 	. 
	nop			;fdb8	00 	. 
	nop			;fdb9	00 	. 
	nop			;fdba	00 	. 
	nop			;fdbb	00 	. 
	nop			;fdbc	00 	. 
	nop			;fdbd	00 	. 
	nop			;fdbe	00 	. 
	nop			;fdbf	00 	. 
	nop			;fdc0	00 	. 
	nop			;fdc1	00 	. 
	nop			;fdc2	00 	. 
	nop			;fdc3	00 	. 
	nop			;fdc4	00 	. 
	nop			;fdc5	00 	. 
	nop			;fdc6	00 	. 
	nop			;fdc7	00 	. 
	nop			;fdc8	00 	. 
	nop			;fdc9	00 	. 
	nop			;fdca	00 	. 
	nop			;fdcb	00 	. 
	nop			;fdcc	00 	. 
	nop			;fdcd	00 	. 
	nop			;fdce	00 	. 
	nop			;fdcf	00 	. 
	nop			;fdd0	00 	. 
	nop			;fdd1	00 	. 
	nop			;fdd2	00 	. 
	nop			;fdd3	00 	. 
	nop			;fdd4	00 	. 
	nop			;fdd5	00 	. 
	nop			;fdd6	00 	. 
	nop			;fdd7	00 	. 
	nop			;fdd8	00 	. 
	nop			;fdd9	00 	. 
	nop			;fdda	00 	. 
	nop			;fddb	00 	. 
	nop			;fddc	00 	. 
	nop			;fddd	00 	. 
	nop			;fdde	00 	. 
	nop			;fddf	00 	. 
	nop			;fde0	00 	. 
	nop			;fde1	00 	. 
	nop			;fde2	00 	. 
	nop			;fde3	00 	. 
	nop			;fde4	00 	. 
	nop			;fde5	00 	. 
	nop			;fde6	00 	. 
	nop			;fde7	00 	. 
	nop			;fde8	00 	. 
	nop			;fde9	00 	. 
	nop			;fdea	00 	. 
	nop			;fdeb	00 	. 
	nop			;fdec	00 	. 
	nop			;fded	00 	. 
	nop			;fdee	00 	. 
	nop			;fdef	00 	. 
	nop			;fdf0	00 	. 
	nop			;fdf1	00 	. 
	nop			;fdf2	00 	. 
	nop			;fdf3	00 	. 
	nop			;fdf4	00 	. 
	nop			;fdf5	00 	. 
	nop			;fdf6	00 	. 
	nop			;fdf7	00 	. 
	nop			;fdf8	00 	. 
	nop			;fdf9	00 	. 
	nop			;fdfa	00 	. 
	nop			;fdfb	00 	. 
	nop			;fdfc	00 	. 
	nop			;fdfd	00 	. 
	nop			;fdfe	00 	. 
	nop			;fdff	00 	. 
	nop			;fe00	00 	. 
	nop			;fe01	00 	. 
	nop			;fe02	00 	. 
	nop			;fe03	00 	. 
	nop			;fe04	00 	. 
	nop			;fe05	00 	. 
	nop			;fe06	00 	. 
	nop			;fe07	00 	. 
	nop			;fe08	00 	. 
	nop			;fe09	00 	. 
	nop			;fe0a	00 	. 
	nop			;fe0b	00 	. 
	nop			;fe0c	00 	. 
	nop			;fe0d	00 	. 
	nop			;fe0e	00 	. 
	nop			;fe0f	00 	. 
	nop			;fe10	00 	. 
	nop			;fe11	00 	. 
	nop			;fe12	00 	. 
	nop			;fe13	00 	. 
	nop			;fe14	00 	. 
	nop			;fe15	00 	. 
	nop			;fe16	00 	. 
	nop			;fe17	00 	. 
	nop			;fe18	00 	. 
	nop			;fe19	00 	. 
	nop			;fe1a	00 	. 
	nop			;fe1b	00 	. 
	nop			;fe1c	00 	. 
	nop			;fe1d	00 	. 
	nop			;fe1e	00 	. 
	nop			;fe1f	00 	. 
	nop			;fe20	00 	. 
	nop			;fe21	00 	. 
	nop			;fe22	00 	. 
	nop			;fe23	00 	. 
	nop			;fe24	00 	. 
	nop			;fe25	00 	. 
	nop			;fe26	00 	. 
	nop			;fe27	00 	. 
	nop			;fe28	00 	. 
	nop			;fe29	00 	. 
	nop			;fe2a	00 	. 
	nop			;fe2b	00 	. 
	nop			;fe2c	00 	. 
	nop			;fe2d	00 	. 
	nop			;fe2e	00 	. 
	nop			;fe2f	00 	. 
	nop			;fe30	00 	. 
lfe31h:
	nop			;fe31	00 	. 
	nop			;fe32	00 	. 
	nop			;fe33	00 	. 
	nop			;fe34	00 	. 
	nop			;fe35	00 	. 
	nop			;fe36	00 	. 
	nop			;fe37	00 	. 
	nop			;fe38	00 	. 
	nop			;fe39	00 	. 
	nop			;fe3a	00 	. 
	nop			;fe3b	00 	. 
	nop			;fe3c	00 	. 
	nop			;fe3d	00 	. 
	nop			;fe3e	00 	. 
	nop			;fe3f	00 	. 
	nop			;fe40	00 	. 
	nop			;fe41	00 	. 
	nop			;fe42	00 	. 
	nop			;fe43	00 	. 
	nop			;fe44	00 	. 
	nop			;fe45	00 	. 
	nop			;fe46	00 	. 
	nop			;fe47	00 	. 
	nop			;fe48	00 	. 
	nop			;fe49	00 	. 
	nop			;fe4a	00 	. 
	nop			;fe4b	00 	. 
	nop			;fe4c	00 	. 
	nop			;fe4d	00 	. 
	nop			;fe4e	00 	. 
	nop			;fe4f	00 	. 
	nop			;fe50	00 	. 
	nop			;fe51	00 	. 
	nop			;fe52	00 	. 
	nop			;fe53	00 	. 
	nop			;fe54	00 	. 
	nop			;fe55	00 	. 
	nop			;fe56	00 	. 
	nop			;fe57	00 	. 
	nop			;fe58	00 	. 
	nop			;fe59	00 	. 
	nop			;fe5a	00 	. 
	nop			;fe5b	00 	. 
	nop			;fe5c	00 	. 
	nop			;fe5d	00 	. 
	nop			;fe5e	00 	. 
	nop			;fe5f	00 	. 
	nop			;fe60	00 	. 
	nop			;fe61	00 	. 
	nop			;fe62	00 	. 
	nop			;fe63	00 	. 
	nop			;fe64	00 	. 
	nop			;fe65	00 	. 
	nop			;fe66	00 	. 
	nop			;fe67	00 	. 
	nop			;fe68	00 	. 
	nop			;fe69	00 	. 
	nop			;fe6a	00 	. 
	nop			;fe6b	00 	. 
	nop			;fe6c	00 	. 
	nop			;fe6d	00 	. 
	nop			;fe6e	00 	. 
	nop			;fe6f	00 	. 
	nop			;fe70	00 	. 
	nop			;fe71	00 	. 
	nop			;fe72	00 	. 
	nop			;fe73	00 	. 
	nop			;fe74	00 	. 
	nop			;fe75	00 	. 
	nop			;fe76	00 	. 
	nop			;fe77	00 	. 
	nop			;fe78	00 	. 
	nop			;fe79	00 	. 
	nop			;fe7a	00 	. 
	nop			;fe7b	00 	. 
	nop			;fe7c	00 	. 
	nop			;fe7d	00 	. 
	nop			;fe7e	00 	. 
	nop			;fe7f	00 	. 
	nop			;fe80	00 	. 
	nop			;fe81	00 	. 
	nop			;fe82	00 	. 
	nop			;fe83	00 	. 
	nop			;fe84	00 	. 
	nop			;fe85	00 	. 
	nop			;fe86	00 	. 
	nop			;fe87	00 	. 
	nop			;fe88	00 	. 
	nop			;fe89	00 	. 
	nop			;fe8a	00 	. 
	nop			;fe8b	00 	. 
	nop			;fe8c	00 	. 
	nop			;fe8d	00 	. 
	nop			;fe8e	00 	. 
	nop			;fe8f	00 	. 
	nop			;fe90	00 	. 
	nop			;fe91	00 	. 
	nop			;fe92	00 	. 
	nop			;fe93	00 	. 
	nop			;fe94	00 	. 
	nop			;fe95	00 	. 
	nop			;fe96	00 	. 
	nop			;fe97	00 	. 
	nop			;fe98	00 	. 
	nop			;fe99	00 	. 
	nop			;fe9a	00 	. 
	nop			;fe9b	00 	. 
	nop			;fe9c	00 	. 
	nop			;fe9d	00 	. 
	nop			;fe9e	00 	. 
	nop			;fe9f	00 	. 
	nop			;fea0	00 	. 
	nop			;fea1	00 	. 
	nop			;fea2	00 	. 
	nop			;fea3	00 	. 
	nop			;fea4	00 	. 
	nop			;fea5	00 	. 
	nop			;fea6	00 	. 
	nop			;fea7	00 	. 
	nop			;fea8	00 	. 
	nop			;fea9	00 	. 
	nop			;feaa	00 	. 
	nop			;feab	00 	. 
	nop			;feac	00 	. 
	nop			;fead	00 	. 
	nop			;feae	00 	. 
	nop			;feaf	00 	. 
	nop			;feb0	00 	. 
	nop			;feb1	00 	. 
	nop			;feb2	00 	. 
	nop			;feb3	00 	. 
	nop			;feb4	00 	. 
	nop			;feb5	00 	. 
	nop			;feb6	00 	. 
	nop			;feb7	00 	. 
	nop			;feb8	00 	. 
	nop			;feb9	00 	. 
	nop			;feba	00 	. 
	nop			;febb	00 	. 
	nop			;febc	00 	. 
	nop			;febd	00 	. 
	nop			;febe	00 	. 
	nop			;febf	00 	. 
	nop			;fec0	00 	. 
	nop			;fec1	00 	. 
	nop			;fec2	00 	. 
	nop			;fec3	00 	. 
	nop			;fec4	00 	. 
	nop			;fec5	00 	. 
	nop			;fec6	00 	. 
	nop			;fec7	00 	. 
	nop			;fec8	00 	. 
	nop			;fec9	00 	. 
	nop			;feca	00 	. 
	nop			;fecb	00 	. 
	nop			;fecc	00 	. 
	nop			;fecd	00 	. 
	nop			;fece	00 	. 
	nop			;fecf	00 	. 
	nop			;fed0	00 	. 
	nop			;fed1	00 	. 
	nop			;fed2	00 	. 
	nop			;fed3	00 	. 
	nop			;fed4	00 	. 
	nop			;fed5	00 	. 
	nop			;fed6	00 	. 
	nop			;fed7	00 	. 
	nop			;fed8	00 	. 
	nop			;fed9	00 	. 
	nop			;feda	00 	. 
	nop			;fedb	00 	. 
	nop			;fedc	00 	. 
	nop			;fedd	00 	. 
	nop			;fede	00 	. 
	nop			;fedf	00 	. 
	nop			;fee0	00 	. 
	nop			;fee1	00 	. 
	nop			;fee2	00 	. 
	nop			;fee3	00 	. 
	nop			;fee4	00 	. 
	nop			;fee5	00 	. 
	nop			;fee6	00 	. 
	nop			;fee7	00 	. 
	nop			;fee8	00 	. 
	nop			;fee9	00 	. 
	nop			;feea	00 	. 
	nop			;feeb	00 	. 
	nop			;feec	00 	. 
	nop			;feed	00 	. 
	nop			;feee	00 	. 
	nop			;feef	00 	. 
	nop			;fef0	00 	. 
	nop			;fef1	00 	. 
	nop			;fef2	00 	. 
	nop			;fef3	00 	. 
	nop			;fef4	00 	. 
	nop			;fef5	00 	. 
	nop			;fef6	00 	. 
	nop			;fef7	00 	. 
	nop			;fef8	00 	. 
	nop			;fef9	00 	. 
	nop			;fefa	00 	. 
	nop			;fefb	00 	. 
	nop			;fefc	00 	. 
	nop			;fefd	00 	. 
lfefeh:
	nop			;fefe	00 	. 
	nop			;feff	00 	. 
	nop			;ff00	00 	. 
	nop			;ff01	00 	. 
	nop			;ff02	00 	. 
	nop			;ff03	00 	. 
	nop			;ff04	00 	. 
	nop			;ff05	00 	. 
	nop			;ff06	00 	. 
	nop			;ff07	00 	. 
	nop			;ff08	00 	. 
	nop			;ff09	00 	. 
	nop			;ff0a	00 	. 
	nop			;ff0b	00 	. 
	nop			;ff0c	00 	. 
	nop			;ff0d	00 	. 
	nop			;ff0e	00 	. 
	nop			;ff0f	00 	. 
	nop			;ff10	00 	. 
	nop			;ff11	00 	. 
	nop			;ff12	00 	. 
	nop			;ff13	00 	. 
	nop			;ff14	00 	. 
	nop			;ff15	00 	. 
	nop			;ff16	00 	. 
	jp sub_e5d5h		;ff17	c3 d5 e5 	. . . 
	jp lc932h		;ff1a	c3 32 c9 	. 2 . 
	jp lf9d7h		;ff1d	c3 d7 f9 	. . . 
	jp lf904h		;ff20	c3 04 f9 	. . . 
	jp lc2ffh		;ff23	c3 ff c2 	. . . 
	jp lc8cah		;ff26	c3 ca c8 	. . . 
	jp lc938h		;ff29	c3 38 c9 	. 8 . 
	jp le1f9h		;ff2c	c3 f9 e1 	. . . 
	jp lde65h		;ff2f	c3 65 de 	. e . 
	nop			;ff32	00 	. 
	nop			;ff33	00 	. 
	jp ld479h		;ff34	c3 79 d4 	. y . 
	jp le7deh		;ff37	c3 de e7 	. . . 
	jp le840h		;ff3a	c3 40 e8 	. @ . 
	jp le9b6h		;ff3d	c3 b6 e9 	. . . 
	jp le4a3h		;ff40	c3 a3 e4 	. . . 
	jp sub_f51ch		;ff43	c3 1c f5 	. . . 
	jp lf3fbh		;ff46	c3 fb f3 	. . . 
	jp lprt_end		;ff49	c3 15 f5 	. . . 
	jp sub_c981h		;ff4c	c3 81 c9 	. . . 
	jp sub_e3dch		;ff4f	c3 dc e3 	. . . 
	jp sub_e699h		;ff52	c3 99 e6 	. . . 
	jp sub_e652h		;ff55	c3 52 e6 	. R . 
	jp leb24h		;ff58	c3 24 eb 	. $ . 
	jp lebd1h		;ff5b	c3 d1 eb 	. . . 
	jp lebcdh		;ff5e	c3 cd eb 	. . . 
	jp ld8cdh		;ff61	c3 cd d8 	. . . 
	jp ld962h		;ff64	c3 62 d9 	. b . 
	jp machinelang_end+1		;ff67	c3 40 c3 	. @ . 
	jp lc3c9h		;ff6a	c3 c9 c3 	. . . 
	jp lc475h		;ff6d	c3 75 c4 	. u . 
	jp sub_c575h		;ff70	c3 75 c5 	. u . 
	jp lc48ah		;ff73	c3 8a c4 	. . . 
	jp lc47ah		;ff76	c3 7a c4 	. z . 
	jp lc380h		;ff79	c3 80 c3 	. . . 
	jp lc386h		;ff7c	c3 86 c3 	. . . 
	jp lc5a0h		;ff7f	c3 a0 c5 	. . . 
	jp lc642h		;ff82	c3 42 c6 	. B . 
	jp sub_c757h		;ff85	c3 57 c7 	. W . 
	jp sub_ca16h		;ff88	c3 16 ca 	. . . 
	jp lc7a9h		;ff8b	c3 a9 c7 	. . . 
	jp sub_e43bh		;ff8e	c3 3b e4 	. ; . 
	jp sub_c9d4h		;ff91	c3 d4 c9 	. . . 
	jp sub_c9f4h		;ff94	c3 f4 c9 	. . . 
	jp lc99ch		;ff97	c3 9c c9 	. . . 
	jp sub_e3bfh		;ff9a	c3 bf e3 	. . . 
	jp sub_c3bbh		;ff9d	c3 bb c3 	. . . 
	jp sub_c80dh		;ffa0	c3 0d c8 	. . . 
	jp ldc70h		;ffa3	c3 70 dc 	. p . 
	jp ldd6dh		;ffa6	c3 6d dd 	. m . 
	jp lc799h		;ffa9	c3 99 c7 	. . . 
	jp le288h		;ffac	c3 88 e2 	. . . 
	jp le7b1h		;ffaf	c3 b1 e7 	. . . 
	jp lde55h		;ffb2	c3 55 de 	. U . 
	jp le1e9h		;ffb5	c3 e9 e1 	. . . 
	jp le973h		;ffb8	c3 73 e9 	. s . 
	jp le6c5h		;ffbb	c3 c5 e6 	. . . 
	jp lde49h		;ffbe	c3 49 de 	. I . 
	jp lde4fh		;ffc1	c3 4f de 	. O . 
	jp ldcc8h		;ffc4	c3 c8 dc 	. . . 
	jp le3d1h		;ffc7	c3 d1 e3 	. . . 
	jp lde02h		;ffca	c3 02 de 	. . . 
	jp 0c1f5h		;ffcd	c3 f5 c1 	. . . 
	jp sub_e491h		;ffd0	c3 91 e4 	. . . 
	jp lda2eh		;ffd3	c3 2e da 	. . . 
	jp ldb11h		;ffd6	c3 11 db 	. . . 
	jp lcbf1h		;ffd9	c3 f1 cb 	. . . 
	jp lce3bh		;ffdc	c3 3b ce 	. ; . 
	jp lca78h		;ffdf	c3 78 ca 	. x . 
	jp lc415h		;ffe2	c3 15 c4 	. . . 
	jp sub_dae8h		;ffe5	c3 e8 da 	. . . 
	jp ld69dh		;ffe8	c3 9d d6 	. . . 
	jp sub_de3dh		;ffeb	c3 3d de 	. = . 
	jp le458h		;ffee	c3 58 e4 	. X . 
	jp sub_e44fh		;fff1	c3 4f e4 	. O . 
lfff4h:
	jp 0d470h		;fff4	c3 70 d4 	. p . 
	jp lcf8bh		;fff7	c3 8b cf 	. . . 
	jp lc000h		;fffa	c3 00 c0 	. . . 
	jp lc089h		;fffd	c3 89 c0 	. . . 
