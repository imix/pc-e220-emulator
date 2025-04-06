; z80dasm 1.1.3
; command line: z80dasm -l -a -S symbols.sym -b bank0.blk -g 0x8000 -t bank0.bin

	org	08000h

	jp 0122dh		;8000	c3 2d 12 	. - . 
	nop			;8003	00 	. 
	nop			;8004	00 	. 
	nop			;8005	00 	. 
	nop			;8006	00 	. 
	nop			;8007	00 	. 
	nop			;8008	00 	. 
	nop			;8009	00 	. 
	nop			;800a	00 	. 
	nop			;800b	00 	. 
	nop			;800c	00 	. 
	nop			;800d	00 	. 
	nop			;800e	00 	. 
	nop			;800f	00 	. 
	ld hl,07f31h		;8010	21 31 7f 	! 1  
	res 1,(hl)		;8013	cb 8e 	. . 
	ld hl,07f18h		;8015	21 18 7f 	! .  
	jr l802ch		;8018	18 12 	. . 
	ld hl,07f31h		;801a	21 31 7f 	! 1  
	res 2,(hl)		;801d	cb 96 	. . 
	ld hl,07f20h		;801f	21 20 7f 	!    
	jr l802ch		;8022	18 08 	. . 
sub_8024h:
	ld hl,07f31h		;8024	21 31 7f 	! 1  
	res 0,(hl)		;8027	cb 86 	. . 
sub_8029h:
	ld hl,07f10h		;8029	21 10 7f 	! .  
l802ch:
	ld a,000h		;802c	3e 00 	> . 
	ld (hl),a			;802e	77 	w 
	inc l			;802f	2c 	, 
	ld (hl),a			;8030	77 	w 
	inc l			;8031	2c 	, 
	ld (hl),a			;8032	77 	w 
	inc l			;8033	2c 	, 
	ld (hl),a			;8034	77 	w 
	inc l			;8035	2c 	, 
	ld (hl),a			;8036	77 	w 
	inc l			;8037	2c 	, 
	ld (hl),a			;8038	77 	w 
	inc l			;8039	2c 	, 
	ld (hl),a			;803a	77 	w 
	inc l			;803b	2c 	, 
	ld (hl),a			;803c	77 	w 
	ret			;803d	c9 	. 
	ld hl,07f31h		;803e	21 31 7f 	! 1  
	res 1,(hl)		;8041	cb 8e 	. . 
	ld hl,07f18h		;8043	21 18 7f 	! .  
	ld b,008h		;8046	06 08 	. . 
	ld a,000h		;8048	3e 00 	> . 
l804ah:
	ld (hl),a			;804a	77 	w 
	inc l			;804b	2c 	, 
	djnz l804ah		;804c	10 fc 	. . 
	ld l,01ah		;804e	2e 1a 	. . 
	set 4,(hl)		;8050	cb e6 	. . 
	ret			;8052	c9 	. 
	ld hl,07f19h		;8053	21 19 7f 	! .  
	jr l8065h		;8056	18 0d 	. . 
	ld hl,07f21h		;8058	21 21 7f 	! !  
	jr l8065h		;805b	18 08 	. . 
	ld hl,07f29h		;805d	21 29 7f 	! )  
	jr l8065h		;8060	18 03 	. . 
	ld hl,07f11h		;8062	21 11 7f 	! .  
l8065h:
	ld a,(hl)			;8065	7e 	~ 
	and 0f0h		;8066	e6 f0 	. . 
	ld (hl),a			;8068	77 	w 
	inc l			;8069	2c 	, 
	ld b,006h		;806a	06 06 	. . 
	ld a,000h		;806c	3e 00 	> . 
l806eh:
	ld (hl),a			;806e	77 	w 
	inc l			;806f	2c 	, 
	djnz l806eh		;8070	10 fc 	. . 
	ret			;8072	c9 	. 
	ld hl,07f18h		;8073	21 18 7f 	! .  
	jr l807bh		;8076	18 03 	. . 
	ld hl,07f10h		;8078	21 10 7f 	! .  
l807bh:
	ld (hl),000h		;807b	36 00 	6 . 
	inc l			;807d	2c 	, 
	ld a,(hl)			;807e	7e 	~ 
	and 00fh		;807f	e6 0f 	. . 
	ld (hl),a			;8081	77 	w 
	ret			;8082	c9 	. 
	ld hl,07f31h		;8083	21 31 7f 	! 1  
	res 3,(hl)		;8086	cb 9e 	. . 
	bit 1,(hl)		;8088	cb 4e 	. N 
	jr z,l808eh		;808a	28 02 	( . 
	set 3,(hl)		;808c	cb de 	. . 
l808eh:
	ld de,07f28h		;808e	11 28 7f 	. (  
	jr l80b5h		;8091	18 22 	. " 
	ld hl,07f31h		;8093	21 31 7f 	! 1  
	res 1,(hl)		;8096	cb 8e 	. . 
	bit 3,(hl)		;8098	cb 5e 	. ^ 
	jr z,l809eh		;809a	28 02 	( . 
	set 1,(hl)		;809c	cb ce 	. . 
l809eh:
	ld de,07f18h		;809e	11 18 7f 	. .  
	ld hl,07f28h		;80a1	21 28 7f 	! (  
	jp l8119h		;80a4	c3 19 81 	. . . 
	ld hl,07f31h		;80a7	21 31 7f 	! 1  
	res 0,(hl)		;80aa	cb 86 	. . 
	bit 1,(hl)		;80ac	cb 4e 	. N 
	jr z,l80b2h		;80ae	28 02 	( . 
	set 0,(hl)		;80b0	cb c6 	. . 
l80b2h:
	ld de,07f10h		;80b2	11 10 7f 	. .  
l80b5h:
	ld hl,07f18h		;80b5	21 18 7f 	! .  
	jr l8119h		;80b8	18 5f 	. _ 
	ld hl,07f31h		;80ba	21 31 7f 	! 1  
	res 0,(hl)		;80bd	cb 86 	. . 
	bit 3,(hl)		;80bf	cb 5e 	. ^ 
	jr z,l80c5h		;80c1	28 02 	( . 
	set 0,(hl)		;80c3	cb c6 	. . 
l80c5h:
	ld de,07f10h		;80c5	11 10 7f 	. .  
	ld hl,07f28h		;80c8	21 28 7f 	! (  
	jr l8119h		;80cb	18 4c 	. L 
sub_80cdh:
	ld hl,07f31h		;80cd	21 31 7f 	! 1  
	res 1,(hl)		;80d0	cb 8e 	. . 
	bit 0,(hl)		;80d2	cb 46 	. F 
	jr z,l80d8h		;80d4	28 02 	( . 
	set 1,(hl)		;80d6	cb ce 	. . 
l80d8h:
	ld de,07f18h		;80d8	11 18 7f 	. .  
	jr l8116h		;80db	18 39 	. 9 
	ld hl,07f31h		;80dd	21 31 7f 	! 1  
	res 0,(hl)		;80e0	cb 86 	. . 
	bit 2,(hl)		;80e2	cb 56 	. V 
	jr z,l80e8h		;80e4	28 02 	( . 
	set 0,(hl)		;80e6	cb c6 	. . 
l80e8h:
	ld de,07f10h		;80e8	11 10 7f 	. .  
	ld hl,07f20h		;80eb	21 20 7f 	!    
	jr l8119h		;80ee	18 29 	. ) 
	ld de,07f20h		;80f0	11 20 7f 	.    
	ld hl,07f18h		;80f3	21 18 7f 	! .  
	jr l8119h		;80f6	18 21 	. ! 
	ld hl,07f31h		;80f8	21 31 7f 	! 1  
	res 2,(hl)		;80fb	cb 96 	. . 
	bit 0,(hl)		;80fd	cb 46 	. F 
	jr z,l8103h		;80ff	28 02 	( . 
	set 2,(hl)		;8101	cb d6 	. . 
l8103h:
	ld de,07f20h		;8103	11 20 7f 	.    
	jr l8116h		;8106	18 0e 	. . 
	ld hl,07f31h		;8108	21 31 7f 	! 1  
	res 3,(hl)		;810b	cb 9e 	. . 
	bit 0,(hl)		;810d	cb 46 	. F 
	jr z,l8113h		;810f	28 02 	( . 
	set 3,(hl)		;8111	cb de 	. . 
l8113h:
	ld de,07f28h		;8113	11 28 7f 	. (  
l8116h:
	ld hl,07f10h		;8116	21 10 7f 	! .  
l8119h:
	ld bc,00008h		;8119	01 08 00 	. . . 
	ldir		;811c	ed b0 	. . 
	ret			;811e	c9 	. 
	ld hl,07f31h		;811f	21 31 7f 	! 1  
	res 1,(hl)		;8122	cb 8e 	. . 
	bit 2,(hl)		;8124	cb 56 	. V 
	jr z,l812ah		;8126	28 02 	( . 
	set 1,(hl)		;8128	cb ce 	. . 
l812ah:
	ld de,07f18h		;812a	11 18 7f 	. .  
	ld hl,07f20h		;812d	21 20 7f 	!    
	jr l8119h		;8130	18 e7 	. . 
	ld hl,07f31h		;8132	21 31 7f 	! 1  
	res 3,(hl)		;8135	cb 9e 	. . 
	bit 2,(hl)		;8137	cb 56 	. V 
	jr z,l813dh		;8139	28 02 	( . 
	set 3,(hl)		;813b	cb de 	. . 
l813dh:
	ld de,07f28h		;813d	11 28 7f 	. (  
	ld hl,07f20h		;8140	21 20 7f 	!    
	jr l8119h		;8143	18 d4 	. . 
sub_8145h:
	ld hl,07f31h		;8145	21 31 7f 	! 1  
	ld a,002h		;8148	3e 02 	> . 
	and (hl)			;814a	a6 	. 
	rrca			;814b	0f 	. 
	ld c,a			;814c	4f 	O 
	ld a,001h		;814d	3e 01 	> . 
	and (hl)			;814f	a6 	. 
	rlca			;8150	07 	. 
	ld b,a			;8151	47 	G 
	ld a,0fch		;8152	3e fc 	> . 
	and (hl)			;8154	a6 	. 
	or b			;8155	b0 	. 
	or c			;8156	b1 	. 
	ld (hl),a			;8157	77 	w 
	ld de,07f10h		;8158	11 10 7f 	. .  
	ld hl,07f18h		;815b	21 18 7f 	! .  
	ld b,008h		;815e	06 08 	. . 
l8160h:
	ld c,(hl)			;8160	4e 	N 
	ld a,(de)			;8161	1a 	. 
	ld (hl),a			;8162	77 	w 
	ld a,c			;8163	79 	y 
	ld (de),a			;8164	12 	. 
	inc l			;8165	2c 	, 
	inc e			;8166	1c 	. 
	djnz l8160h		;8167	10 f7 	. . 
	ret			;8169	c9 	. 
	ld hl,07f19h		;816a	21 19 7f 	! .  
	ld a,(hl)			;816d	7e 	~ 
	and 008h		;816e	e6 08 	. . 
	rrca			;8170	0f 	. 
	rrca			;8171	0f 	. 
	ld b,a			;8172	47 	G 
	res 3,(hl)		;8173	cb 9e 	. . 
	ld hl,07f11h		;8175	21 11 7f 	! .  
	ld a,(hl)			;8178	7e 	~ 
	and 008h		;8179	e6 08 	. . 
	rrca			;817b	0f 	. 
	rrca			;817c	0f 	. 
	rrca			;817d	0f 	. 
	or b			;817e	b0 	. 
	ld (07f31h),a		;817f	32 31 7f 	2 1  
	res 3,(hl)		;8182	cb 9e 	. . 
	ld a,000h		;8184	3e 00 	> . 
	ld (07f30h),a		;8186	32 30 7f 	2 0  
	ret			;8189	c9 	. 
sub_818ah:
	ld hl,07f11h		;818a	21 11 7f 	! .  
	ld a,(hl)			;818d	7e 	~ 
	and 008h		;818e	e6 08 	. . 
	rrca			;8190	0f 	. 
	rrca			;8191	0f 	. 
	rrca			;8192	0f 	. 
	ld (07f31h),a		;8193	32 31 7f 	2 1  
	res 3,(hl)		;8196	cb 9e 	. . 
	ld a,000h		;8198	3e 00 	> . 
	ld (07f30h),a		;819a	32 30 7f 	2 0  
	ret			;819d	c9 	. 
	ld a,(07f31h)		;819e	3a 31 7f 	: 1  
	ld hl,07f19h		;81a1	21 19 7f 	! .  
	res 3,(hl)		;81a4	cb 9e 	. . 
	bit 1,a		;81a6	cb 4f 	. O 
	jr z,l81ach		;81a8	28 02 	( . 
	set 3,(hl)		;81aa	cb de 	. . 
l81ach:
	ld a,(07f31h)		;81ac	3a 31 7f 	: 1  
	ld hl,07f11h		;81af	21 11 7f 	! .  
	res 3,(hl)		;81b2	cb 9e 	. . 
	bit 0,a		;81b4	cb 47 	. G 
	jr z,l81bah		;81b6	28 02 	( . 
	set 3,(hl)		;81b8	cb de 	. . 
l81bah:
	ret			;81ba	c9 	. 
sub_81bbh:
	ld hl,079bdh		;81bb	21 bd 79 	! . y 
	bit 0,(hl)		;81be	cb 46 	. F 
	jr z,l81c6h		;81c0	28 04 	( . 
	res 0,(hl)		;81c2	cb 86 	. . 
	jr l81e0h		;81c4	18 1a 	. . 
l81c6h:
	ld hl,07f17h		;81c6	21 17 7f 	! .  
	ld a,050h		;81c9	3e 50 	> P 
	add a,(hl)			;81cb	86 	. 
	daa			;81cc	27 	' 
	ld (hl),a			;81cd	77 	w 
	dec l			;81ce	2d 	- 
	ld b,006h		;81cf	06 06 	. . 
l81d1h:
	ld a,000h		;81d1	3e 00 	> . 
	adc a,(hl)			;81d3	8e 	. 
	daa			;81d4	27 	' 
	ld (hl),a			;81d5	77 	w 
	dec l			;81d6	2d 	- 
	djnz l81d1h		;81d7	10 f8 	. . 
	ld l,017h		;81d9	2e 17 	. . 
	ld (hl),000h		;81db	36 00 	6 . 
	call sub_82e9h		;81dd	cd e9 82 	. . . 
l81e0h:
	ld hl,07f17h		;81e0	21 17 7f 	! .  
	ld (hl),000h		;81e3	36 00 	6 . 
	ret			;81e5	c9 	. 
	nop			;81e6	00 	. 
	nop			;81e7	00 	. 
	ld hl,07f31h		;81e8	21 31 7f 	! 1  
	ld a,001h		;81eb	3e 01 	> . 
	xor (hl)			;81ed	ae 	. 
	ld (hl),a			;81ee	77 	w 
	ret			;81ef	c9 	. 
	ld de,07a70h		;81f0	11 70 7a 	. p z 
l81f3h:
	ld a,(07f31h)		;81f3	3a 31 7f 	: 1  
	ld hl,07f11h		;81f6	21 11 7f 	! .  
	res 3,(hl)		;81f9	cb 9e 	. . 
	bit 0,a		;81fb	cb 47 	. G 
	jr z,l8206h		;81fd	28 07 	( . 
	res 0,a		;81ff	cb 87 	. . 
	ld (07f31h),a		;8201	32 31 7f 	2 1  
	set 3,(hl)		;8204	cb de 	. . 
l8206h:
	ld hl,07f10h		;8206	21 10 7f 	! .  
l8209h:
	ld bc,00008h		;8209	01 08 00 	. . . 
	ldir		;820c	ed b0 	. . 
	ld a,(07f31h)		;820e	3a 31 7f 	: 1  
	and 0feh		;8211	e6 fe 	. . 
	ld hl,07f11h		;8213	21 11 7f 	! .  
	bit 3,(hl)		;8216	cb 5e 	. ^ 
	jr z,l821eh		;8218	28 04 	( . 
	res 3,(hl)		;821a	cb 9e 	. . 
	set 0,a		;821c	cb c7 	. . 
l821eh:
	ld (07f31h),a		;821e	32 31 7f 	2 1  
	ret			;8221	c9 	. 
	ld hl,07a70h		;8222	21 70 7a 	! p z 
l8225h:
	ld de,07f10h		;8225	11 10 7f 	. .  
	jr l8209h		;8228	18 df 	. . 
	jr l81f3h		;822a	18 c7 	. . 
	jr l8225h		;822c	18 f7 	. . 
	ld de,07a68h		;822e	11 68 7a 	. h z 
	jr l81f3h		;8231	18 c0 	. . 
	ld hl,07a68h		;8233	21 68 7a 	! h z 
	jr l8225h		;8236	18 ed 	. . 
	ld de,079a8h		;8238	11 a8 79 	. . y 
	jr l81f3h		;823b	18 b6 	. . 
	ld hl,079a8h		;823d	21 a8 79 	! . y 
	jr l8225h		;8240	18 e3 	. . 
	ld de,07a60h		;8242	11 60 7a 	. ` z 
	jr l81f3h		;8245	18 ac 	. . 
	ld hl,07a60h		;8247	21 60 7a 	! ` z 
	jr l8225h		;824a	18 d9 	. . 
	ld de,07998h		;824c	11 98 79 	. . y 
	jr l81f3h		;824f	18 a2 	. . 
	ld hl,07998h		;8251	21 98 79 	! . y 
	jr l8225h		;8254	18 cf 	. . 
	ld hl,079c8h		;8256	21 c8 79 	! . y 
	jr l8225h		;8259	18 ca 	. . 
	ld de,07a70h		;825b	11 70 7a 	. p z 
l825eh:
	ld a,(07f31h)		;825e	3a 31 7f 	: 1  
	ld hl,07f19h		;8261	21 19 7f 	! .  
	res 3,(hl)		;8264	cb 9e 	. . 
	bit 1,a		;8266	cb 4f 	. O 
	jr z,l8271h		;8268	28 07 	( . 
	res 1,a		;826a	cb 8f 	. . 
	ld (07f31h),a		;826c	32 31 7f 	2 1  
	set 3,(hl)		;826f	cb de 	. . 
l8271h:
	ld hl,07f18h		;8271	21 18 7f 	! .  
l8274h:
	ld bc,00008h		;8274	01 08 00 	. . . 
	ldir		;8277	ed b0 	. . 
	ld a,(07f31h)		;8279	3a 31 7f 	: 1  
	and 0fdh		;827c	e6 fd 	. . 
	ld hl,07f19h		;827e	21 19 7f 	! .  
	bit 3,(hl)		;8281	cb 5e 	. ^ 
	jr z,l8289h		;8283	28 04 	( . 
	res 3,(hl)		;8285	cb 9e 	. . 
	set 1,a		;8287	cb cf 	. . 
l8289h:
	ld (07f31h),a		;8289	32 31 7f 	2 1  
	ret			;828c	c9 	. 
	ld hl,07a70h		;828d	21 70 7a 	! p z 
l8290h:
	ld de,07f18h		;8290	11 18 7f 	. .  
	jr l8274h		;8293	18 df 	. . 
	ld de,07a68h		;8295	11 68 7a 	. h z 
	jr l825eh		;8298	18 c4 	. . 
	ld hl,07a68h		;829a	21 68 7a 	! h z 
	jr l8290h		;829d	18 f1 	. . 
	ld de,07a60h		;829f	11 60 7a 	. ` z 
	jr l825eh		;82a2	18 ba 	. . 
	ld hl,07a60h		;82a4	21 60 7a 	! ` z 
	jr l8290h		;82a7	18 e7 	. . 
	ld de,079a0h		;82a9	11 a0 79 	. . y 
	jr l825eh		;82ac	18 b0 	. . 
	ld hl,079a0h		;82ae	21 a0 79 	! . y 
	jr l8290h		;82b1	18 dd 	. . 
	jr l825eh		;82b3	18 a9 	. . 
	jr l8290h		;82b5	18 d9 	. . 
	ld hl,07f19h		;82b7	21 19 7f 	! .  
	jr l82c4h		;82ba	18 08 	. . 
	ld hl,07f29h		;82bc	21 29 7f 	! )  
	jr l82c4h		;82bf	18 03 	. . 
sub_82c1h:
	ld hl,07f11h		;82c1	21 11 7f 	! .  
l82c4h:
	ld b,(hl)			;82c4	46 	F 
	ld a,b			;82c5	78 	x 
	and 0f0h		;82c6	e6 f0 	. . 
	ld (hl),a			;82c8	77 	w 
	ld a,b			;82c9	78 	x 
	ld b,006h		;82ca	06 06 	. . 
l82cch:
	inc l			;82cc	2c 	, 
	rrd		;82cd	ed 67 	. g 
	djnz l82cch		;82cf	10 fb 	. . 
	ret			;82d1	c9 	. 
sub_82d2h:
	ld hl,07f11h		;82d2	21 11 7f 	! .  
	ld a,(hl)			;82d5	7e 	~ 
	and 00fh		;82d6	e6 0f 	. . 
	jr nz,l82e7h		;82d8	20 0d 	  . 
	inc l			;82da	2c 	, 
	ld b,006h		;82db	06 06 	. . 
l82ddh:
	ld a,(hl)			;82dd	7e 	~ 
	and 0ffh		;82de	e6 ff 	. . 
	jr nz,l82e7h		;82e0	20 05 	  . 
	inc l			;82e2	2c 	, 
	djnz l82ddh		;82e3	10 f8 	. . 
	scf			;82e5	37 	7 
	ret			;82e6	c9 	. 
l82e7h:
	and a			;82e7	a7 	. 
	ret			;82e8	c9 	. 
sub_82e9h:
	call sub_82d2h		;82e9	cd d2 82 	. . . 
	jr c,l831fh		;82ec	38 31 	8 1 
	ld hl,07f11h		;82ee	21 11 7f 	! .  
	ld a,(hl)			;82f1	7e 	~ 
	and 00fh		;82f2	e6 0f 	. . 
	jr z,l8324h		;82f4	28 2e 	( . 
	ld a,010h		;82f6	3e 10 	> . 
	add a,(hl)			;82f8	86 	. 
	daa			;82f9	27 	' 
	ld (hl),a			;82fa	77 	w 
	dec l			;82fb	2d 	- 
	ld a,000h		;82fc	3e 00 	> . 
	adc a,(hl)			;82fe	8e 	. 
sub_82ffh:
	daa			;82ff	27 	' 
	ld (hl),a			;8300	77 	w 
	call sub_82c1h		;8301	cd c1 82 	. . . 
l8304h:
	ld hl,07f10h		;8304	21 10 7f 	! .  
	ld a,(hl)			;8307	7e 	~ 
	and 0f0h		;8308	e6 f0 	. . 
	jr z,l8322h		;830a	28 16 	( . 
	cp 010h		;830c	fe 10 	. . 
	jr z,l8343h		;830e	28 33 	( 3 
	cp 080h		;8310	fe 80 	. . 
	jr z,l831fh		;8312	28 0b 	( . 
	ld a,(hl)			;8314	7e 	~ 
	and 00fh		;8315	e6 0f 	. . 
	jr nz,l8322h		;8317	20 09 	  . 
	inc l			;8319	2c 	, 
	ld a,(hl)			;831a	7e 	~ 
	and 0f0h		;831b	e6 f0 	. . 
	jr nz,l8322h		;831d	20 03 	  . 
l831fh:
	call sub_8024h		;831f	cd 24 80 	. $ . 
l8322h:
	and a			;8322	a7 	. 
	ret			;8323	c9 	. 
l8324h:
	ld l,012h		;8324	2e 12 	. . 
	ld a,(hl)			;8326	7e 	~ 
	and 0f0h		;8327	e6 f0 	. . 
	jr nz,l8304h		;8329	20 d9 	  . 
	ld l,017h		;832b	2e 17 	. . 
	ld b,006h		;832d	06 06 	. . 
	ld a,000h		;832f	3e 00 	> . 
l8331h:
	rld		;8331	ed 6f 	. o 
	dec l			;8333	2d 	- 
	djnz l8331h		;8334	10 fb 	. . 
	ld a,(hl)			;8336	7e 	~ 
	sub 010h		;8337	d6 10 	. . 
	daa			;8339	27 	' 
	ld (hl),a			;833a	77 	w 
	dec l			;833b	2d 	- 
	ld a,(hl)			;833c	7e 	~ 
	sbc a,000h		;833d	de 00 	. . 
	daa			;833f	27 	' 
	ld (hl),a			;8340	77 	w 
	jr l8324h		;8341	18 e1 	. . 
l8343h:
	ld a,020h		;8343	3e 20 	>   
	ld (07f34h),a		;8345	32 34 7f 	2 4  
	scf			;8348	37 	7 
	ret			;8349	c9 	. 
sub_834ah:
	ld a,020h		;834a	3e 20 	>   
	jr l837bh		;834c	18 2d 	. - 
	ld a,010h		;834e	3e 10 	> . 
	jr l837bh		;8350	18 29 	. ) 
	ld a,011h		;8352	3e 11 	> . 
	jr l837bh		;8354	18 25 	. % 
	ld a,031h		;8356	3e 31 	> 1 
	jr l837bh		;8358	18 21 	. ! 
	ld a,032h		;835a	3e 32 	> 2 
	jr l837bh		;835c	18 1d 	. . 
l835eh:
	ld a,033h		;835e	3e 33 	> 3 
	jr l837bh		;8360	18 19 	. . 
	ld a,040h		;8362	3e 40 	> @ 
	jr l837bh		;8364	18 15 	. . 
	xor a			;8366	af 	. 
	jr l837bh		;8367	18 12 	. . 
sub_8369h:
	ld a,012h		;8369	3e 12 	> . 
	jr l837bh		;836b	18 0e 	. . 
	ld a,054h		;836d	3e 54 	> T 
	jr l837bh		;836f	18 0a 	. . 
	ld a,056h		;8371	3e 56 	> V 
	jr l837bh		;8373	18 06 	. . 
	ld a,070h		;8375	3e 70 	> p 
	jr l837bh		;8377	18 02 	. . 
l8379h:
	ld a,010h		;8379	3e 10 	> . 
l837bh:
	ld (07f34h),a		;837b	32 34 7f 	2 4  
	scf			;837e	37 	7 
	ret			;837f	c9 	. 
	ld a,050h		;8380	3e 50 	> P 
	jr l837bh		;8382	18 f7 	. . 
	ld a,055h		;8384	3e 55 	> U 
	jr l837bh		;8386	18 f3 	. . 
sub_8388h:
	ld a,060h		;8388	3e 60 	> ` 
	jr l837bh		;838a	18 ef 	. . 
sub_838ch:
	ld a,090h		;838c	3e 90 	> . 
	jr l837bh		;838e	18 eb 	. . 
	ld a,091h		;8390	3e 91 	> . 
	jr l837bh		;8392	18 e7 	. . 
	ld a,093h		;8394	3e 93 	> . 
	jr l837bh		;8396	18 e3 	. . 
	ld a,094h		;8398	3e 94 	> . 
	jr l837bh		;839a	18 df 	. . 
	ld a,095h		;839c	3e 95 	> . 
	jr l837bh		;839e	18 db 	. . 
	ld a,096h		;83a0	3e 96 	> . 
	jr l837bh		;83a2	18 d7 	. . 
	ld a,097h		;83a4	3e 97 	> . 
	jr l837bh		;83a6	18 d3 	. . 
	ld a,021h		;83a8	3e 21 	> ! 
	jr l837bh		;83aa	18 cf 	. . 
	ld a,022h		;83ac	3e 22 	> " 
	jr l837bh		;83ae	18 cb 	. . 
	ld a,051h		;83b0	3e 51 	> Q 
	jr l837bh		;83b2	18 c7 	. . 
sub_83b4h:
	push ix		;83b4	dd e5 	. . 
	pop hl			;83b6	e1 	. 
	ld ix,(07f38h)		;83b7	dd 2a 38 7f 	. * 8  
	ld (07f38h),hl		;83bb	22 38 7f 	" 8  
	ret			;83be	c9 	. 
	ld hl,07f08h		;83bf	21 08 7f 	! .  
	ld (hl),008h		;83c2	36 08 	6 . 
l83c4h:
	ld l,00eh		;83c4	2e 0e 	. . 
	rr (hl)		;83c6	cb 1e 	. . 
	call c,sub_83f9h		;83c8	dc f9 83 	. . . 
	call sub_8418h		;83cb	cd 18 84 	. . . 
	call sub_83e1h		;83ce	cd e1 83 	. . . 
	call sub_83f9h		;83d1	cd f9 83 	. . . 
	call sub_83e1h		;83d4	cd e1 83 	. . . 
	call sub_8418h		;83d7	cd 18 84 	. . . 
	ld hl,07f08h		;83da	21 08 7f 	! .  
	dec (hl)			;83dd	35 	5 
	jr nz,l83c4h		;83de	20 e4 	  . 
	ret			;83e0	c9 	. 
sub_83e1h:
	ld hl,07f12h		;83e1	21 12 7f 	! .  
	ld de,07f1ah		;83e4	11 1a 7f 	. .  
	ld bc,00004h		;83e7	01 04 00 	. . . 
	ldir		;83ea	ed b0 	. . 
	ret			;83ec	c9 	. 
	ld hl,07f20h		;83ed	21 20 7f 	!    
	ld de,07f18h		;83f0	11 18 7f 	. .  
	ld bc,00008h		;83f3	01 08 00 	. . . 
	ldir		;83f6	ed b0 	. . 
	ret			;83f8	c9 	. 
sub_83f9h:
	ld hl,07f14h		;83f9	21 14 7f 	! .  
	ld de,07f1ch		;83fc	11 1c 7f 	. .  
	ld b,003h		;83ff	06 03 	. . 
	or a			;8401	b7 	. 
l8402h:
	ld a,(de)			;8402	1a 	. 
	adc a,(hl)			;8403	8e 	. 
	daa			;8404	27 	' 
	ld (hl),a			;8405	77 	w 
	dec hl			;8406	2b 	+ 
	dec de			;8407	1b 	. 
l8408h:
	djnz l8402h		;8408	10 f8 	. . 
	ret			;840a	c9 	. 
	ld ix,(07f1dh)		;840b	dd 2a 1d 7f 	. * .  
	jr l8415h		;840f	18 04 	. . 
	ld ix,(07f15h)		;8411	dd 2a 15 7f 	. * .  
l8415h:
	dec ix		;8415	dd 2b 	. + 
	ret			;8417	c9 	. 
sub_8418h:
	ld hl,07f12h		;8418	21 12 7f 	! .  
	ld de,07f22h		;841b	11 22 7f 	. "  
	ld b,003h		;841e	06 03 	. . 
l8420h:
	ld c,(hl)			;8420	4e 	N 
	ld a,(de)			;8421	1a 	. 
	ld (hl),a			;8422	77 	w 
	ld a,c			;8423	79 	y 
	ld (de),a			;8424	12 	. 
	inc hl			;8425	23 	# 
	inc de			;8426	13 	. 
	djnz l8420h		;8427	10 f7 	. . 
	ret			;8429	c9 	. 
sub_842ah:
	ld hl,079d8h		;842a	21 d8 79 	! . y 
	bit 4,(hl)		;842d	cb 66 	. f 
	scf			;842f	37 	7 
	ret nz			;8430	c0 	. 
	ld de,07f14h		;8431	11 14 7f 	. .  
	ld c,a			;8434	4f 	O 
	ld a,(de)			;8435	1a 	. 
	cp 0d0h		;8436	fe d0 	. . 
	ld a,c			;8438	79 	y 
	ret			;8439	c9 	. 
l843ah:
	sub 010h		;843a	d6 10 	. . 
	jr c,l846ch		;843c	38 2e 	8 . 
l843eh:
	cp 0e8h		;843e	fe e8 	. . 
	jr nc,l846eh		;8440	30 2c 	0 , 
	ld b,a			;8442	47 	G 
	ld a,(07932h)		;8443	3a 32 79 	: 2 y 
	bit 7,a		;8446	cb 7f 	.  
	jr nz,l844dh		;8448	20 03 	  . 
	ld a,b			;844a	78 	x 
	jr l846eh		;844b	18 21 	. ! 
l844dh:
	ld a,b			;844d	78 	x 
	cp 04ch		;844e	fe 4c 	. L 
	jr nz,l8456h		;8450	20 04 	  . 
	ld a,04ch		;8452	3e 4c 	> L 
	jr l846eh		;8454	18 18 	. . 
l8456h:
	cp 090h		;8456	fe 90 	. . 
	jr c,l846eh		;8458	38 14 	8 . 
	cp 0d0h		;845a	fe d0 	. . 
	jr c,l846eh		;845c	38 10 	8 . 
	cp 0e1h		;845e	fe e1 	. . 
	jr c,l846eh		;8460	38 0c 	8 . 
	jr l846eh		;8462	18 0a 	. . 
l8464h:
	add a,010h		;8464	c6 10 	. . 
	jr l843eh		;8466	18 d6 	. . 
sub_8468h:
	sub 020h		;8468	d6 20 	.   
	jr nc,l8464h		;846a	30 f8 	0 . 
l846ch:
	ld a,010h		;846c	3e 10 	> . 
l846eh:
	ld c,a			;846e	4f 	O 
	in a,(019h)		;846f	db 19 	. . 
	push af			;8471	f5 	. 
	ld a,004h		;8472	3e 04 	> . 
	out (019h),a		;8474	d3 19 	. . 
	ld a,e			;8476	7b 	{ 
	cp 00ch		;8477	fe 0c 	. . 
	jr nc,l84c4h		;8479	30 49 	0 I 
l847bh:
	in a,(059h)		;847b	db 59 	. Y 
	and 080h		;847d	e6 80 	. . 
	jr nz,l847bh		;847f	20 fa 	  . 
	ld a,(0790dh)		;8481	3a 0d 79 	: . y 
	add a,d			;8484	82 	. 
	or 0b8h		;8485	f6 b8 	. . 
	out (058h),a		;8487	d3 58 	. X 
	ld a,e			;8489	7b 	{ 
	add a,a			;848a	87 	. 
	add a,a			;848b	87 	. 
	add a,e			;848c	83 	. 
	or 040h		;848d	f6 40 	. @ 
	ld b,a			;848f	47 	G 
l8490h:
	in a,(059h)		;8490	db 59 	. Y 
	and 080h		;8492	e6 80 	. . 
	jr nz,l8490h		;8494	20 fa 	  . 
	ld a,b			;8496	78 	x 
	out (058h),a		;8497	d3 58 	. X 
	ld b,000h		;8499	06 00 	. . 
	ld h,b			;849b	60 	` 
	ld l,c			;849c	69 	i 
	add hl,hl			;849d	29 	) 
	add hl,hl			;849e	29 	) 
	add hl,bc			;849f	09 	. 
	ld bc,(0ffd4h)		;84a0	ed 4b d4 ff 	. K . . 
	add hl,bc			;84a4	09 	. 
	bit 2,d		;84a5	cb 52 	. R 
	jr z,l84aah		;84a7	28 01 	( . 
	dec hl			;84a9	2b 	+ 
l84aah:
	ld b,005h		;84aa	06 05 	. . 
l84ach:
	in a,(059h)		;84ac	db 59 	. Y 
	and 080h		;84ae	e6 80 	. . 
	jr nz,l84ach		;84b0	20 fa 	  . 
	ld a,(hl)			;84b2	7e 	~ 
	out (05ah),a		;84b3	d3 5a 	. Z 
	bit 2,d		;84b5	cb 52 	. R 
	jr nz,l84c1h		;84b7	20 08 	  . 
	inc hl			;84b9	23 	# 
l84bah:
	djnz l84ach		;84ba	10 f0 	. . 
	pop af			;84bc	f1 	. 
	out (019h),a		;84bd	d3 19 	. . 
	nop			;84bf	00 	. 
	ret			;84c0	c9 	. 
l84c1h:
	dec hl			;84c1	2b 	+ 
	jr l84bah		;84c2	18 f6 	. . 
l84c4h:
	ld a,017h		;84c4	3e 17 	> . 
	sub e			;84c6	93 	. 
	ld e,a			;84c7	5f 	_ 
	set 2,d		;84c8	cb d2 	. . 
	inc c			;84ca	0c 	. 
	jr l847bh		;84cb	18 ae 	. . 
sub_84cdh:
	ld c,000h		;84cd	0e 00 	. . 
l84cfh:
	push hl			;84cf	e5 	. 
	push de			;84d0	d5 	. 
	push bc			;84d1	c5 	. 
	ld a,(hl)			;84d2	7e 	~ 
	call sub_8468h		;84d3	cd 68 84 	. h . 
	pop bc			;84d6	c1 	. 
	pop de			;84d7	d1 	. 
	pop hl			;84d8	e1 	. 
	dec b			;84d9	05 	. 
	ret z			;84da	c8 	. 
	inc hl			;84db	23 	# 
	inc e			;84dc	1c 	. 
	ld a,e			;84dd	7b 	{ 
	cp 018h		;84de	fe 18 	. . 
	jr nz,l84cfh		;84e0	20 ed 	  . 
	ld e,000h		;84e2	1e 00 	. . 
	inc d			;84e4	14 	. 
	ld a,d			;84e5	7a 	z 
	cp 004h		;84e6	fe 04 	. . 
	jr nz,l84cfh		;84e8	20 e5 	  . 
	inc c			;84ea	0c 	. 
	push hl			;84eb	e5 	. 
	push bc			;84ec	c5 	. 
	call sub_84f7h		;84ed	cd f7 84 	. . . 
	pop bc			;84f0	c1 	. 
	pop hl			;84f1	e1 	. 
	ld de,00300h		;84f2	11 00 03 	. . . 
	jr l84cfh		;84f5	18 d8 	. . 
sub_84f7h:
	ld hl,l8528h		;84f7	21 28 85 	! ( . 
	call sub_8550h		;84fa	cd 50 85 	. P . 
	inc a			;84fd	3c 	< 
	and 007h		;84fe	e6 07 	. . 
	ld (0790dh),a		;8500	32 0d 79 	2 . y 
	call sub_8712h		;8503	cd 12 87 	. . . 
	call sub_854dh		;8506	cd 4d 85 	. M . 
	ld l,003h		;8509	2e 03 	. . 
l850bh:
	call sub_8543h		;850b	cd 43 85 	. C . 
	add a,l			;850e	85 	. 
	call sub_852ch		;850f	cd 2c 85 	. , . 
	ld a,040h		;8512	3e 40 	> @ 
	out (058h),a		;8514	d3 58 	. X 
	ld b,03ch		;8516	06 3c 	. < 
l8518h:
	call sub_8530h		;8518	cd 30 85 	. 0 . 
	xor a			;851b	af 	. 
	out (05ah),a		;851c	d3 5a 	. Z 
	djnz l8518h		;851e	10 f8 	. . 
	ld a,l			;8520	7d 	} 
	ld l,007h		;8521	2e 07 	. . 
	cp 003h		;8523	fe 03 	. . 
	jr z,l850bh		;8525	28 e4 	( . 
	ret			;8527	c9 	. 
l8528h:
	nop			;8528	00 	. 
	nop			;8529	00 	. 
	nop			;852a	00 	. 
	nop			;852b	00 	. 
sub_852ch:
	or 0b8h		;852c	f6 b8 	. . 
sub_852eh:
	out (058h),a		;852e	d3 58 	. X 
sub_8530h:
	in a,(059h)		;8530	db 59 	. Y 
	and 080h		;8532	e6 80 	. . 
	jr nz,sub_8530h		;8534	20 fa 	  . 
	ret			;8536	c9 	. 
sub_8537h:
	call sub_852ch		;8537	cd 2c 85 	. , . 
	ld a,07ch		;853a	3e 7c 	> | 
	call sub_852eh		;853c	cd 2e 85 	. . . 
	ld a,(hl)			;853f	7e 	~ 
	out (05ah),a		;8540	d3 5a 	. Z 
	inc hl			;8542	23 	# 
sub_8543h:
	in a,(059h)		;8543	db 59 	. Y 
	and 080h		;8545	e6 80 	. . 
	jr nz,sub_8543h		;8547	20 fa 	  . 
	ld a,(0790dh)		;8549	3a 0d 79 	: . y 
	ret			;854c	c9 	. 
sub_854dh:
	ld hl,07901h		;854d	21 01 79 	! . y 
sub_8550h:
	call sub_8543h		;8550	cd 43 85 	. C . 
	call sub_8537h		;8553	cd 37 85 	. 7 . 
	add a,003h		;8556	c6 03 	. . 
	call sub_8537h		;8558	cd 37 85 	. 7 . 
	add a,004h		;855b	c6 04 	. . 
	call sub_8537h		;855d	cd 37 85 	. 7 . 
	add a,007h		;8560	c6 07 	. . 
l8562h:
	jr sub_8537h		;8562	18 d3 	. . 
sub_8564h:
	ld hl,07901h		;8564	21 01 79 	! . y 
	call sub_8543h		;8567	cd 43 85 	. C . 
	jr l8562h		;856a	18 f6 	. . 
sub_856ch:
	call sub_8530h		;856c	cd 30 85 	. 0 . 
	ld a,e			;856f	7b 	{ 
	add a,a			;8570	87 	. 
	add a,a			;8571	87 	. 
	add a,e			;8572	83 	. 
	or 040h		;8573	f6 40 	. @ 
	jr l857ch		;8575	18 05 	. . 
sub_8577h:
	call sub_8530h		;8577	cd 30 85 	. 0 . 
	ld a,040h		;857a	3e 40 	> @ 
l857ch:
	ld c,a			;857c	4f 	O 
	call sub_852eh		;857d	cd 2e 85 	. . . 
	ld a,(0790dh)		;8580	3a 0d 79 	: . y 
	add a,d			;8583	82 	. 
	call sub_852ch		;8584	cd 2c 85 	. , . 
	in a,(05bh)		;8587	db 5b 	. [ 
	ld hl,07f40h		;8589	21 40 7f 	! @  
	ld a,00ch		;858c	3e 0c 	> . 
	sub e			;858e	93 	. 
	ld b,a			;858f	47 	G 
	add a,a			;8590	87 	. 
	add a,a			;8591	87 	. 
	add a,b			;8592	80 	. 
	ld e,a			;8593	5f 	_ 
	ld b,a			;8594	47 	G 
l8595h:
	call sub_8530h		;8595	cd 30 85 	. 0 . 
	in a,(05bh)		;8598	db 5b 	. [ 
	ld (hl),a			;859a	77 	w 
	inc l			;859b	2c 	, 
	djnz l8595h		;859c	10 f7 	. . 
	call sub_8543h		;859e	cd 43 85 	. C . 
	add a,d			;85a1	82 	. 
	inc a			;85a2	3c 	< 
	call sub_852ch		;85a3	cd 2c 85 	. , . 
	ld a,c			;85a6	79 	y 
	out (058h),a		;85a7	d3 58 	. X 
	ld hl,07f40h		;85a9	21 40 7f 	! @  
	ld b,e			;85ac	43 	C 
l85adh:
	call sub_8530h		;85ad	cd 30 85 	. 0 . 
	ld a,(hl)			;85b0	7e 	~ 
	out (05ah),a		;85b1	d3 5a 	. Z 
	inc l			;85b3	2c 	, 
	djnz l85adh		;85b4	10 f7 	. . 
	ret			;85b6	c9 	. 
sub_85b7h:
	ld a,d			;85b7	7a 	z 
	cp 003h		;85b8	fe 03 	. . 
	jr nz,l85cah		;85ba	20 0e 	  . 
l85bch:
	push de			;85bc	d5 	. 
	ld a,020h		;85bd	3e 20 	>   
	call sub_8468h		;85bf	cd 68 84 	. h . 
	pop de			;85c2	d1 	. 
	inc e			;85c3	1c 	. 
	ld a,e			;85c4	7b 	{ 
	cp 018h		;85c5	fe 18 	. . 
	jr nz,l85bch		;85c7	20 f3 	  . 
	ret			;85c9	c9 	. 
l85cah:
	cp 002h		;85ca	fe 02 	. . 
	jr nz,l85f0h		;85cc	20 22 	  " 
l85ceh:
	push de			;85ce	d5 	. 
	ld a,e			;85cf	7b 	{ 
	cp 00ch		;85d0	fe 0c 	. . 
	jr nc,l85dbh		;85d2	30 07 	0 . 
	call sub_856ch		;85d4	cd 6c 85 	. l . 
	ld e,000h		;85d7	1e 00 	. . 
	jr l85dfh		;85d9	18 04 	. . 
l85dbh:
	ld a,e			;85db	7b 	{ 
	sub 00ch		;85dc	d6 0c 	. . 
	ld e,a			;85de	5f 	_ 
l85dfh:
	ld a,d			;85df	7a 	z 
	add a,004h		;85e0	c6 04 	. . 
	and 007h		;85e2	e6 07 	. . 
	ld d,a			;85e4	57 	W 
	call sub_8577h		;85e5	cd 77 85 	. w . 
	pop de			;85e8	d1 	. 
	ld b,018h		;85e9	06 18 	. . 
	xor a			;85eb	af 	. 
	call sub_86b3h		;85ec	cd b3 86 	. . . 
	ret			;85ef	c9 	. 
l85f0h:
	cp 001h		;85f0	fe 01 	. . 
	jr nz,l8604h		;85f2	20 10 	  . 
	push de			;85f4	d5 	. 
	ld de,00200h		;85f5	11 00 02 	. . . 
	call sub_856ch		;85f8	cd 6c 85 	. l . 
	ld de,00600h		;85fb	11 00 06 	. . . 
	call sub_8577h		;85fe	cd 77 85 	. w . 
	pop de			;8601	d1 	. 
	jr l85ceh		;8602	18 ca 	. . 
l8604h:
	push de			;8604	d5 	. 
	ld de,00200h		;8605	11 00 02 	. . . 
	call sub_856ch		;8608	cd 6c 85 	. l . 
	ld de,00600h		;860b	11 00 06 	. . . 
	call sub_8577h		;860e	cd 77 85 	. w . 
	ld de,00100h		;8611	11 00 01 	. . . 
	call sub_856ch		;8614	cd 6c 85 	. l . 
	ld de,00500h		;8617	11 00 05 	. . . 
	call sub_8577h		;861a	cd 77 85 	. w . 
	pop de			;861d	d1 	. 
	jr l85ceh		;861e	18 ae 	. . 
sub_8620h:
	ld a,e			;8620	7b 	{ 
	cp 00ch		;8621	fe 0c 	. . 
	jr nc,l8642h		;8623	30 1d 	0 . 
	call sub_8656h		;8625	cd 56 86 	. V . 
	call sub_8530h		;8628	cd 30 85 	. 0 . 
	in a,(05bh)		;862b	db 5b 	. [ 
l862dh:
	call sub_8530h		;862d	cd 30 85 	. 0 . 
	in a,(05bh)		;8630	db 5b 	. [ 
	ld (hl),a			;8632	77 	w 
	inc hl			;8633	23 	# 
	inc e			;8634	1c 	. 
	djnz l8639h		;8635	10 02 	. . 
	dec hl			;8637	2b 	+ 
	ret			;8638	c9 	. 
l8639h:
	ld a,e			;8639	7b 	{ 
	cp 03ch		;863a	fe 3c 	. < 
	jr nz,l862dh		;863c	20 ef 	  . 
	ld e,00ch		;863e	1e 0c 	. . 
	jr l8642h		;8640	18 00 	. . 
l8642h:
	call sub_8667h		;8642	cd 67 86 	. g . 
	call sub_8530h		;8645	cd 30 85 	. 0 . 
	in a,(05bh)		;8648	db 5b 	. [ 
	push hl			;864a	e5 	. 
l864bh:
	call sub_8530h		;864b	cd 30 85 	. 0 . 
	in a,(05bh)		;864e	db 5b 	. [ 
	ld (hl),a			;8650	77 	w 
	dec hl			;8651	2b 	+ 
	djnz l864bh		;8652	10 f7 	. . 
	pop hl			;8654	e1 	. 
	ret			;8655	c9 	. 
sub_8656h:
	call sub_8543h		;8656	cd 43 85 	. C . 
	add a,d			;8659	82 	. 
	call sub_852ch		;865a	cd 2c 85 	. , . 
	ld a,e			;865d	7b 	{ 
	add a,a			;865e	87 	. 
	add a,a			;865f	87 	. 
	add a,e			;8660	83 	. 
	ld e,a			;8661	5f 	_ 
	or 040h		;8662	f6 40 	. @ 
	out (058h),a		;8664	d3 58 	. X 
	ret			;8666	c9 	. 
sub_8667h:
	call sub_8543h		;8667	cd 43 85 	. C . 
	add a,d			;866a	82 	. 
	add a,004h		;866b	c6 04 	. . 
	call sub_852ch		;866d	cd 2c 85 	. , . 
	ld a,018h		;8670	3e 18 	> . 
	sub e			;8672	93 	. 
	ld e,a			;8673	5f 	_ 
	add a,a			;8674	87 	. 
	add a,a			;8675	87 	. 
	add a,e			;8676	83 	. 
	sub b			;8677	90 	. 
	jr nc,l867dh		;8678	30 03 	0 . 
	add a,b			;867a	80 	. 
	ld b,a			;867b	47 	G 
	xor a			;867c	af 	. 
l867dh:
	or 040h		;867d	f6 40 	. @ 
	out (058h),a		;867f	d3 58 	. X 
	ld e,b			;8681	58 	X 
	ld d,000h		;8682	16 00 	. . 
	dec e			;8684	1d 	. 
	add hl,de			;8685	19 	. 
	ret			;8686	c9 	. 
sub_8687h:
	ld a,e			;8687	7b 	{ 
	cp 00ch		;8688	fe 0c 	. . 
	jr nc,l86a4h		;868a	30 18 	0 . 
	call sub_8656h		;868c	cd 56 86 	. V . 
l868fh:
	call sub_8530h		;868f	cd 30 85 	. 0 . 
	ld a,(hl)			;8692	7e 	~ 
	out (05ah),a		;8693	d3 5a 	. Z 
	inc hl			;8695	23 	# 
	inc e			;8696	1c 	. 
	djnz l869bh		;8697	10 02 	. . 
	dec hl			;8699	2b 	+ 
	ret			;869a	c9 	. 
l869bh:
	ld a,e			;869b	7b 	{ 
	cp 03ch		;869c	fe 3c 	. < 
	jr nz,l868fh		;869e	20 ef 	  . 
	ld e,00ch		;86a0	1e 0c 	. . 
	jr l86a4h		;86a2	18 00 	. . 
l86a4h:
	call sub_8667h		;86a4	cd 67 86 	. g . 
	push hl			;86a7	e5 	. 
l86a8h:
	call sub_8530h		;86a8	cd 30 85 	. 0 . 
	ld a,(hl)			;86ab	7e 	~ 
	out (05ah),a		;86ac	d3 5a 	. Z 
	dec hl			;86ae	2b 	+ 
	djnz l86a8h		;86af	10 f7 	. . 
	pop hl			;86b1	e1 	. 
	ret			;86b2	c9 	. 
sub_86b3h:
	ld c,a			;86b3	4f 	O 
l86b4h:
	push de			;86b4	d5 	. 
	push bc			;86b5	c5 	. 
	ld a,c			;86b6	79 	y 
	call sub_8468h		;86b7	cd 68 84 	. h . 
	pop bc			;86ba	c1 	. 
	pop de			;86bb	d1 	. 
	dec b			;86bc	05 	. 
	ret z			;86bd	c8 	. 
	inc e			;86be	1c 	. 
	ld a,e			;86bf	7b 	{ 
	cp 018h		;86c0	fe 18 	. . 
	jr nz,l86b4h		;86c2	20 f0 	  . 
	ld e,000h		;86c4	1e 00 	. . 
	inc d			;86c6	14 	. 
	ld a,d			;86c7	7a 	z 
	cp 004h		;86c8	fe 04 	. . 
	jr nz,l86b4h		;86ca	20 e8 	  . 
	ret			;86cc	c9 	. 
l86cdh:
	ld a,001h		;86cd	3e 01 	> . 
	out (01ch),a		;86cf	d3 1c 	. . 
	call sub_86f7h		;86d1	cd f7 86 	. . . 
	call sub_8530h		;86d4	cd 30 85 	. 0 . 
	ld a,03eh		;86d7	3e 3e 	> > 
	out (058h),a		;86d9	d3 58 	. X 
	xor a			;86db	af 	. 
	ld (0790dh),a		;86dc	32 0d 79 	2 . y 
	ld e,a			;86df	5f 	_ 
	ld d,a			;86e0	57 	W 
	ld b,060h		;86e1	06 60 	. ` 
	call sub_86b3h		;86e3	cd b3 86 	. . . 
	ld hl,l8528h		;86e6	21 28 85 	! ( . 
	call sub_8550h		;86e9	cd 50 85 	. P . 
l86ech:
	call sub_870fh		;86ec	cd 0f 87 	. . . 
	call sub_8530h		;86ef	cd 30 85 	. 0 . 
	ld a,03fh		;86f2	3e 3f 	> ? 
	out (058h),a		;86f4	d3 58 	. X 
	ret			;86f6	c9 	. 
sub_86f7h:
	ld b,040h		;86f7	06 40 	. @ 
l86f9h:
	ld a,000h		;86f9	3e 00 	> . 
l86fbh:
	inc a			;86fb	3c 	< 
	cp 000h		;86fc	fe 00 	. . 
	jr nz,l86fbh		;86fe	20 fb 	  . 
	djnz l86f9h		;8700	10 f7 	. . 
	ret			;8702	c9 	. 
sub_8703h:
	call sub_8530h		;8703	cd 30 85 	. 0 . 
	ld a,03eh		;8706	3e 3e 	> > 
	out (058h),a		;8708	d3 58 	. X 
	ld a,000h		;870a	3e 00 	> . 
	out (01ch),a		;870c	d3 1c 	. . 
	ret			;870e	c9 	. 
sub_870fh:
	call sub_8543h		;870f	cd 43 85 	. C . 
sub_8712h:
	add a,a			;8712	87 	. 
	add a,a			;8713	87 	. 
	add a,a			;8714	87 	. 
	or 0c0h		;8715	f6 c0 	. . 
	out (058h),a		;8717	d3 58 	. X 
	ret			;8719	c9 	. 
l871ah:
	ld a,004h		;871a	3e 04 	> . 
	ld (078edh),a		;871c	32 ed 78 	2 . x 
	ld a,082h		;871f	3e 82 	> . 
	ld (078eeh),a		;8721	32 ee 78 	2 . x 
	xor a			;8724	af 	. 
	ld (0792fh),a		;8725	32 2f 79 	2 / y 
	ld a,01ah		;8728	3e 1a 	> . 
	ld (078efh),a		;872a	32 ef 78 	2 . x 
l872dh:
	ld a,0c9h		;872d	3e c9 	> . 
	ld (078f7h),a		;872f	32 f7 78 	2 . x 
	ld (078fah),a		;8732	32 fa 78 	2 . x 
	ld (078fdh),a		;8735	32 fd 78 	2 . x 
	ld a,050h		;8738	3e 50 	> P 
	ld (078f1h),a		;873a	32 f1 78 	2 . x 
	ld a,008h		;873d	3e 08 	> . 
	ld (078f2h),a		;873f	32 f2 78 	2 . x 
	ld a,00ah		;8742	3e 0a 	> . 
	ld (078f3h),a		;8744	32 f3 78 	2 . x 
	ld hl,0056ah		;8747	21 6a 05 	! j . 
	ld (078f4h),hl		;874a	22 f4 78 	" . x 
	ld hl,0000ah		;874d	21 0a 00 	! . . 
	ld (078e3h),hl		;8750	22 e3 78 	" . x 
	ld a,0c9h		;8753	3e c9 	> . 
	ld (00038h),a		;8755	32 38 00 	2 8 . 
	xor a			;8758	af 	. 
	ld (07965h),a		;8759	32 65 79 	2 e y 
	ld (078f0h),a		;875c	32 f0 78 	2 . x 
	ld a,007h		;875f	3e 07 	> . 
	out (017h),a		;8761	d3 17 	. . 
	ret			;8763	c9 	. 
l8764h:
	call sub_879fh		;8764	cd 9f 87 	. . . 
	push bc			;8767	c5 	. 
	ld b,a			;8768	47 	G 
	and 07fh		;8769	e6 7f 	.  
	jr z,l878ch		;876b	28 1f 	( . 
	cp 052h		;876d	fe 52 	. R 
	jr nc,l8774h		;876f	30 03 	0 . 
	ld a,b			;8771	78 	x 
	pop bc			;8772	c1 	. 
	ret			;8773	c9 	. 
l8774h:
	pop bc			;8774	c1 	. 
	cp 07ch		;8775	fe 7c 	. | 
	jr z,l8782h		;8777	28 09 	( . 
	jr c,l8764h		;8779	38 e9 	8 . 
	cp 07eh		;877b	fe 7e 	. ~ 
	jr z,l8787h		;877d	28 08 	( . 
	ld a,001h		;877f	3e 01 	> . 
	ret			;8781	c9 	. 
l8782h:
	call sub_878fh		;8782	cd 8f 87 	. . . 
	jr l8764h		;8785	18 dd 	. . 
l8787h:
	call sub_8cf5h		;8787	cd f5 8c 	. . . 
	jr l8764h		;878a	18 d8 	. . 
l878ch:
	pop bc			;878c	c1 	. 
	jr l8764h		;878d	18 d5 	. . 
sub_878fh:
	ld a,000h		;878f	3e 00 	> . 
	ld (079f1h),a		;8791	32 f1 79 	2 . y 
	ld a,(07965h)		;8794	3a 65 79 	: e y 
	and 0e1h		;8797	e6 e1 	. . 
	ld (07965h),a		;8799	32 65 79 	2 e y 
	jp la9f2h		;879c	c3 f2 a9 	. . . 
sub_879fh:
	push bc			;879f	c5 	. 
	push de			;87a0	d5 	. 
	push hl			;87a1	e5 	. 
l87a2h:
	call 078fdh		;87a2	cd fd 78 	. . x 
	ld hl,(078f4h)		;87a5	2a f4 78 	* . x 
	ld a,(07965h)		;87a8	3a 65 79 	: e y 
	ld d,a			;87ab	57 	W 
	ld a,(078f3h)		;87ac	3a f3 78 	: . x 
	ld c,a			;87af	4f 	O 
l87b0h:
	call sub_8881h		;87b0	cd 81 88 	. . . 
	jr nc,l8803h		;87b3	30 4e 	0 N 
	call sub_8d94h		;87b5	cd 94 8d 	. . . 
	jr c,l8832h		;87b8	38 78 	8 x 
	bit 0,d		;87ba	cb 42 	. B 
	jr nz,l87dbh		;87bc	20 1d 	  . 
l87beh:
	set 0,d		;87be	cb c2 	. . 
	call sub_8ce3h		;87c0	cd e3 8c 	. . . 
l87c3h:
	ld a,d			;87c3	7a 	z 
	ld (07965h),a		;87c4	32 65 79 	2 e y 
	ld a,b			;87c7	78 	x 
	cp 051h		;87c8	fe 51 	. Q 
	call z,sub_8d5bh		;87ca	cc 5b 8d 	. [ . 
	cp 052h		;87cd	fe 52 	. R 
	jr z,l87d7h		;87cf	28 06 	( . 
	and 07fh		;87d1	e6 7f 	.  
	ld (07966h),a		;87d3	32 66 79 	2 f y 
	ld a,b			;87d6	78 	x 
l87d7h:
	pop hl			;87d7	e1 	. 
	pop de			;87d8	d1 	. 
	pop bc			;87d9	c1 	. 
	ret			;87da	c9 	. 
l87dbh:
	ld a,b			;87db	78 	x 
	cp 052h		;87dc	fe 52 	. R 
	jr z,l880bh		;87de	28 2b 	( + 
	ld a,(07966h)		;87e0	3a 66 79 	: f y 
	cp b			;87e3	b8 	. 
	jr z,l87efh		;87e4	28 09 	( . 
	or 080h		;87e6	f6 80 	. . 
	cp b			;87e8	b8 	. 
	jr z,l87efh		;87e9	28 04 	( . 
	res 1,d		;87eb	cb 8a 	. . 
	jr l87beh		;87ed	18 cf 	. . 
l87efh:
	bit 1,d		;87ef	cb 4a 	. J 
	jr z,l880bh		;87f1	28 18 	( . 
	bit 3,d		;87f3	cb 5a 	. Z 
	jp nz,l884fh		;87f5	c2 4f 88 	. O . 
	ld a,(0797eh)		;87f8	3a 7e 79 	: ~ y 
	or a			;87fb	b7 	. 
	jr nz,l8848h		;87fc	20 4a 	  J 
	call sub_8cech		;87fe	cd ec 8c 	. . . 
	jr l87c3h		;8801	18 c0 	. . 
l8803h:
	bit 0,d		;8803	cb 42 	. B 
	jr z,l883ch		;8805	28 35 	( 5 
	bit 1,d		;8807	cb 4a 	. J 
	jr z,l8836h		;8809	28 2b 	( + 
l880bh:
	res 1,d		;880b	cb 8a 	. . 
	ld a,(078f3h)		;880d	3a f3 78 	: . x 
	ld c,a			;8810	4f 	O 
l8811h:
	in a,(014h)		;8811	db 14 	. . 
	rra			;8813	1f 	. 
	jr nc,l882ah		;8814	30 14 	0 . 
	out (014h),a		;8816	d3 14 	. . 
	dec hl			;8818	2b 	+ 
	ld a,h			;8819	7c 	| 
	or l			;881a	b5 	. 
	jr nz,l8821h		;881b	20 04 	  . 
	ld b,07eh		;881d	06 7e 	. ~ 
	jr l87c3h		;881f	18 a2 	. . 
l8821h:
	bit 2,d		;8821	cb 52 	. R 
	jr z,l882ah		;8823	28 05 	( . 
	call sub_886fh		;8825	cd 6f 88 	. o . 
	jr l87b0h		;8828	18 86 	. . 
l882ah:
	bit 0,d		;882a	cb 42 	. B 
	call z,sub_891eh		;882c	cc 1e 89 	. . . 
	jp nc,l87b0h		;882f	d2 b0 87 	. . . 
l8832h:
	ld b,07dh		;8832	06 7d 	. } 
	jr l87c3h		;8834	18 8d 	. . 
l8836h:
	dec c			;8836	0d 	. 
	jp nz,l87b0h		;8837	c2 b0 87 	. . . 
	res 0,d		;883a	cb 82 	. . 
l883ch:
	call sub_885fh		;883c	cd 5f 88 	. _ . 
	bit 3,d		;883f	cb 5a 	. Z 
	jr z,l8811h		;8841	28 ce 	( . 
	ld b,07ch		;8843	06 7c 	. | 
	jp l87c3h		;8845	c3 c3 87 	. . . 
l8848h:
	dec a			;8848	3d 	= 
	ld (0797eh),a		;8849	32 7e 79 	2 ~ y 
	jp l87a2h		;884c	c3 a2 87 	. . . 
l884fh:
	in a,(014h)		;884f	db 14 	. . 
	rra			;8851	1f 	. 
	jp nc,l87a2h		;8852	d2 a2 87 	. . . 
	out (014h),a		;8855	d3 14 	. . 
	bit 2,d		;8857	cb 52 	. R 
	call nz,sub_886fh		;8859	c4 6f 88 	. o . 
	jp l87a2h		;885c	c3 a2 87 	. . . 
sub_885fh:
	push hl			;885f	e5 	. 
	ld hl,07a9dh		;8860	21 9d 7a 	! . z 
	ld a,(hl)			;8863	7e 	~ 
	inc a			;8864	3c 	< 
	daa			;8865	27 	' 
	ld (hl),a			;8866	77 	w 
	dec hl			;8867	2b 	+ 
	ld a,(hl)			;8868	7e 	~ 
	adc a,000h		;8869	ce 00 	. . 
	daa			;886b	27 	' 
	ld (hl),a			;886c	77 	w 
	pop hl			;886d	e1 	. 
	ret			;886e	c9 	. 
sub_886fh:
	ld a,d			;886f	7a 	z 
	ld (07965h),a		;8870	32 65 79 	2 e y 
	push bc			;8873	c5 	. 
	push de			;8874	d5 	. 
	push hl			;8875	e5 	. 
	call sub_927fh		;8876	cd 7f 92 	.  . 
	pop hl			;8879	e1 	. 
	pop de			;887a	d1 	. 
	pop bc			;887b	c1 	. 
	ld a,(07965h)		;887c	3a 65 79 	: e y 
	ld d,a			;887f	57 	W 
	ret			;8880	c9 	. 
sub_8881h:
	ld a,(078f0h)		;8881	3a f0 78 	: . x 
	and 0f7h		;8884	e6 f7 	. . 
	ld (078f0h),a		;8886	32 f0 78 	2 . x 
	call sub_88abh		;8889	cd ab 88 	. . . 
	jr nc,l88a2h		;888c	30 14 	0 . 
	ld b,a			;888e	47 	G 
	call sub_88abh		;888f	cd ab 88 	. . . 
	jr nc,l88a2h		;8892	30 0e 	0 . 
	cp b			;8894	b8 	. 
	jr nz,l88a2h		;8895	20 0b 	  . 
	ld a,(078f0h)		;8897	3a f0 78 	: . x 
	and 010h		;889a	e6 10 	. . 
	call nz,sub_8ec8h		;889c	c4 c8 8e 	. . . 
	ld a,b			;889f	78 	x 
	scf			;88a0	37 	7 
	ret			;88a1	c9 	. 
l88a2h:
	ld a,(078f0h)		;88a2	3a f0 78 	: . x 
	and 020h		;88a5	e6 20 	.   
	call nz,sub_8ecch		;88a7	c4 cc 8e 	. . . 
	ret			;88aa	c9 	. 
sub_88abh:
	in a,(01fh)		;88ab	db 1f 	. . 
	rla			;88ad	17 	. 
	jr c,l890bh		;88ae	38 5b 	8 [ 
sub_88b0h:
	exx			;88b0	d9 	. 
	ld hl,0000ah		;88b1	21 0a 00 	! . . 
	ld de,00101h		;88b4	11 01 01 	. . . 
	ld bc,0ff11h		;88b7	01 11 ff 	. . . 
l88bah:
	ld a,e			;88ba	7b 	{ 
	or h			;88bb	b4 	. 
	out (c),a		;88bc	ed 79 	. y 
	rlc e		;88be	cb 03 	. . 
	jr nc,l8917h		;88c0	30 55 	0 U 
	ld c,012h		;88c2	0e 12 	. . 
	ld h,0c0h		;88c4	26 c0 	& . 
	call sub_895ch		;88c6	cd 5c 89 	. \ . 
	in a,(010h)		;88c9	db 10 	. . 
	push af			;88cb	f5 	. 
	xor a			;88cc	af 	. 
	out (011h),a		;88cd	d3 11 	. . 
	pop af			;88cf	f1 	. 
l88d0h:
	or a			;88d0	b7 	. 
	jr z,l88e3h		;88d1	28 10 	( . 
	inc b			;88d3	04 	. 
	push de			;88d4	d5 	. 
	jr nz,l88deh		;88d5	20 07 	  . 
l88d7h:
	srl a		;88d7	cb 3f 	. ? 
	jr c,l88deh		;88d9	38 03 	8 . 
	inc d			;88db	14 	. 
	jr l88d7h		;88dc	18 f9 	. . 
l88deh:
	or a			;88de	b7 	. 
	jr nz,l8907h		;88df	20 26 	  & 
	ld b,d			;88e1	42 	B 
l88e2h:
	pop de			;88e2	d1 	. 
l88e3h:
	ld a,d			;88e3	7a 	z 
	add a,008h		;88e4	c6 08 	. . 
	ld d,a			;88e6	57 	W 
	dec l			;88e7	2d 	- 
	jr nz,l88bah		;88e8	20 d0 	  . 
	ld e,000h		;88ea	1e 00 	. . 
	out (c),e		;88ec	ed 59 	. Y 
	ld a,008h		;88ee	3e 08 	> . 
	out (011h),a		;88f0	d3 11 	. . 
	call sub_895ch		;88f2	cd 5c 89 	. \ . 
	in a,(013h)		;88f5	db 13 	. . 
	rra			;88f7	1f 	. 
	ld a,000h		;88f8	3e 00 	> . 
	out (011h),a		;88fa	d3 11 	. . 
	ld a,b			;88fc	78 	x 
	jr nc,l8901h		;88fd	30 02 	0 . 
	or 080h		;88ff	f6 80 	. . 
l8901h:
	exx			;8901	d9 	. 
	cp 0ffh		;8902	fe ff 	. . 
	ret c			;8904	d8 	. 
	xor a			;8905	af 	. 
	ret			;8906	c9 	. 
l8907h:
	ld b,052h		;8907	06 52 	. R 
	jr l88e2h		;8909	18 d7 	. . 
l890bh:
	call sub_88b0h		;890b	cd b0 88 	. . . 
	jr nc,l8913h		;890e	30 03 	0 . 
	ld a,052h		;8910	3e 52 	> R 
	ret			;8912	c9 	. 
l8913h:
	ld a,051h		;8913	3e 51 	> Q 
	scf			;8915	37 	7 
	ret			;8916	c9 	. 
l8917h:
	call sub_895ch		;8917	cd 5c 89 	. \ . 
	in a,(010h)		;891a	db 10 	. . 
	jr l88d0h		;891c	18 b2 	. . 
sub_891eh:
	call sub_870fh		;891e	cd 0f 87 	. . . 
	call sub_8d67h		;8921	cd 67 8d 	. g . 
	ret c			;8924	d8 	. 
	nop			;8925	00 	. 
	ld a,(078f0h)		;8926	3a f0 78 	: . x 
	and 004h		;8929	e6 04 	. . 
	ret nz			;892b	c0 	. 
	ld a,0ffh		;892c	3e ff 	> . 
	out (011h),a		;892e	d3 11 	. . 
	ld a,003h		;8930	3e 03 	> . 
	out (012h),a		;8932	d3 12 	. . 
	ld a,00fh		;8934	3e 0f 	> . 
	out (016h),a		;8936	d3 16 	. . 
	call sub_895ch		;8938	cd 5c 89 	. \ . 
	in a,(016h)		;893b	db 16 	. . 
	and 00fh		;893d	e6 0f 	. . 
	jr nz,l8958h		;893f	20 17 	  . 
	in a,(013h)		;8941	db 13 	. . 
	rra			;8943	1f 	. 
	jr c,l8950h		;8944	38 0a 	8 . 
	ld a,0ffh		;8946	3e ff 	> . 
	ld i,a		;8948	ed 47 	. G 
	ld r,a		;894a	ed 4f 	. O 
	ei			;894c	fb 	. 
	halt			;894d	76 	v 
	di			;894e	f3 	. 
	di			;894f	f3 	. 
l8950h:
	ld a,0c0h		;8950	3e c0 	> . 
	out (012h),a		;8952	d3 12 	. . 
	xor a			;8954	af 	. 
	out (011h),a		;8955	d3 11 	. . 
	ret			;8957	c9 	. 
l8958h:
	out (016h),a		;8958	d3 16 	. . 
	jr l8950h		;895a	18 f4 	. . 
sub_895ch:
	push bc			;895c	c5 	. 
	ld bc,0001ch		;895d	01 1c 00 	. . . 
l8960h:
	call sub_896bh		;8960	cd 6b 89 	. k . 
	pop bc			;8963	c1 	. 
	ret			;8964	c9 	. 
sub_8965h:
	push bc			;8965	c5 	. 
	ld bc,0007dh		;8966	01 7d 00 	. } . 
	jr l8960h		;8969	18 f5 	. . 
sub_896bh:
	push af			;896b	f5 	. 
l896ch:
	dec bc			;896c	0b 	. 
	ld a,c			;896d	79 	y 
	or b			;896e	b0 	. 
	jp nz,l896ch		;896f	c2 6c 89 	. l . 
	pop af			;8972	f1 	. 
	ret			;8973	c9 	. 
l8974h:
	nop			;8974	00 	. 
	nop			;8975	00 	. 
	nop			;8976	00 	. 
	nop			;8977	00 	. 
	nop			;8978	00 	. 
	nop			;8979	00 	. 
	ld b,000h		;897a	06 00 	. . 
	ld b,000h		;897c	06 00 	. . 
	ld b,000h		;897e	06 00 	. . 
	ld (hl),c			;8980	71 	q 
	nop			;8981	00 	. 
	ld hl,05100h		;8982	21 00 51 	! . Q 
	nop			;8985	00 	. 
	ld (hl),a			;8986	77 	w 
	nop			;8987	00 	. 
	ld (05700h),hl		;8988	22 00 57 	" . W 
	nop			;898b	00 	. 
	ld h,l			;898c	65 	e 
	nop			;898d	00 	. 
	inc hl			;898e	23 	# 
	nop			;898f	00 	. 
	ld b,l			;8990	45 	E 
	nop			;8991	00 	. 
	ld (hl),d			;8992	72 	r 
	nop			;8993	00 	. 
	inc h			;8994	24 	$ 
	nop			;8995	00 	. 
	ld d,d			;8996	52 	R 
	nop			;8997	00 	. 
	ld (hl),h			;8998	74 	t 
	nop			;8999	00 	. 
	dec h			;899a	25 	% 
	nop			;899b	00 	. 
	ld d,h			;899c	54 	T 
	nop			;899d	00 	. 
	ld a,c			;899e	79 	y 
	nop			;899f	00 	. 
	ld h,000h		;89a0	26 00 	& . 
	ld e,c			;89a2	59 	Y 
	nop			;89a3	00 	. 
	ld (hl),l			;89a4	75 	u 
	nop			;89a5	00 	. 
	daa			;89a6	27 	' 
	nop			;89a7	00 	. 
	ld d,l			;89a8	55 	U 
	nop			;89a9	00 	. 
	ld h,c			;89aa	61 	a 
	nop			;89ab	00 	. 
	ld e,e			;89ac	5b 	[ 
	nop			;89ad	00 	. 
	ld b,c			;89ae	41 	A 
	nop			;89af	00 	. 
	ld (hl),e			;89b0	73 	s 
	nop			;89b1	00 	. 
	ld e,l			;89b2	5d 	] 
	nop			;89b3	00 	. 
	ld d,e			;89b4	53 	S 
	nop			;89b5	00 	. 
	ld h,h			;89b6	64 	d 
	nop			;89b7	00 	. 
	ld a,e			;89b8	7b 	{ 
	nop			;89b9	00 	. 
	ld b,h			;89ba	44 	D 
	nop			;89bb	00 	. 
	ld h,(hl)			;89bc	66 	f 
	nop			;89bd	00 	. 
	ld a,l			;89be	7d 	} 
	nop			;89bf	00 	. 
	ld b,(hl)			;89c0	46 	F 
	nop			;89c1	00 	. 
	ld h,a			;89c2	67 	g 
	nop			;89c3	00 	. 
	ld e,h			;89c4	5c 	\ 
	nop			;89c5	00 	. 
	ld b,a			;89c6	47 	G 
	nop			;89c7	00 	. 
	ld l,b			;89c8	68 	h 
	nop			;89c9	00 	. 
	ld a,h			;89ca	7c 	| 
	nop			;89cb	00 	. 
	ld c,b			;89cc	48 	H 
	nop			;89cd	00 	. 
	ld l,d			;89ce	6a 	j 
	nop			;89cf	00 	. 
	ld a,(hl)			;89d0	7e 	~ 
	nop			;89d1	00 	. 
	ld c,d			;89d2	4a 	J 
	nop			;89d3	00 	. 
	ld l,e			;89d4	6b 	k 
	nop			;89d5	00 	. 
	ld e,a			;89d6	5f 	_ 
	nop			;89d7	00 	. 
	ld c,e			;89d8	4b 	K 
	nop			;89d9	00 	. 
	ld a,d			;89da	7a 	z 
	nop			;89db	00 	. 
	cp 061h		;89dc	fe 61 	. a 
	ld e,d			;89de	5a 	Z 
	nop			;89df	00 	. 
	ld a,b			;89e0	78 	x 
	nop			;89e1	00 	. 
	cp 060h		;89e2	fe 60 	. ` 
	ld e,b			;89e4	58 	X 
	nop			;89e5	00 	. 
	ld h,e			;89e6	63 	c 
	nop			;89e7	00 	. 
	cp 012h		;89e8	fe 12 	. . 
	ld b,e			;89ea	43 	C 
	nop			;89eb	00 	. 
	halt			;89ec	76 	v 
	nop			;89ed	00 	. 
	cp 010h		;89ee	fe 10 	. . 
	ld d,(hl)			;89f0	56 	V 
	nop			;89f1	00 	. 
	ld h,d			;89f2	62 	b 
	nop			;89f3	00 	. 
	cp 014h		;89f4	fe 14 	. . 
	ld b,d			;89f6	42 	B 
	nop			;89f7	00 	. 
	ld l,(hl)			;89f8	6e 	n 
	nop			;89f9	00 	. 
	cp 023h		;89fa	fe 23 	. # 
	ld c,(hl)			;89fc	4e 	N 
	nop			;89fd	00 	. 
	ld l,l			;89fe	6d 	m 
	nop			;89ff	00 	. 
	cp 018h		;8a00	fe 18 	. . 
	ld c,l			;8a02	4d 	M 
	nop			;8a03	00 	. 
	inc l			;8a04	2c 	, 
	nop			;8a05	00 	. 
	ccf			;8a06	3f 	? 
	nop			;8a07	00 	. 
	inc l			;8a08	2c 	, 
	nop			;8a09	00 	. 
	inc bc			;8a0a	03 	. 
	nop			;8a0b	00 	. 
	ld (bc),a			;8a0c	02 	. 
	nop			;8a0d	00 	. 
	inc bc			;8a0e	03 	. 
	nop			;8a0f	00 	. 
	ld bc,0f100h		;8a10	01 00 f1 	. . . 
	nop			;8a13	00 	. 
	ld bc,01400h		;8a14	01 00 14 	. . . 
	nop			;8a17	00 	. 
	inc d			;8a18	14 	. 
	nop			;8a19	00 	. 
	inc d			;8a1a	14 	. 
	nop			;8a1b	00 	. 
	dec d			;8a1c	15 	. 
	nop			;8a1d	00 	. 
	dec d			;8a1e	15 	. 
	nop			;8a1f	00 	. 
	dec d			;8a20	15 	. 
	nop			;8a21	00 	. 
	ld a,(bc)			;8a22	0a 	. 
	nop			;8a23	00 	. 
	ld a,(bc)			;8a24	0a 	. 
	nop			;8a25	00 	. 
	ld a,(bc)			;8a26	0a 	. 
	nop			;8a27	00 	. 
	jr nz,l8a2ah		;8a28	20 00 	  . 
l8a2ah:
	jr nz,l8a2ch		;8a2a	20 00 	  . 
l8a2ch:
	jr nz,l8a2eh		;8a2c	20 00 	  . 
l8a2eh:
	rra			;8a2e	1f 	. 
	nop			;8a2f	00 	. 
	jp p,01f00h		;8a30	f2 00 1f 	. . . 
	nop			;8a33	00 	. 
	ld e,000h		;8a34	1e 00 	. . 
	di			;8a36	f3 	. 
	nop			;8a37	00 	. 
	ld e,000h		;8a38	1e 00 	. . 
	dec e			;8a3a	1d 	. 
	nop			;8a3b	00 	. 
	dec e			;8a3c	1d 	. 
	nop			;8a3d	00 	. 
	dec e			;8a3e	1d 	. 
	nop			;8a3f	00 	. 
	inc e			;8a40	1c 	. 
	nop			;8a41	00 	. 
	inc e			;8a42	1c 	. 
	nop			;8a43	00 	. 
	inc e			;8a44	1c 	. 
	nop			;8a45	00 	. 
	rla			;8a46	17 	. 
	nop			;8a47	00 	. 
	jr l8a4ah		;8a48	18 00 	. . 
l8a4ah:
	rla			;8a4a	17 	. 
	nop			;8a4b	00 	. 
	jr nc,l8a4eh		;8a4c	30 00 	0 . 
l8a4eh:
	jr nc,l8a50h		;8a4e	30 00 	0 . 
l8a50h:
	jr nc,l8a52h		;8a50	30 00 	0 . 
l8a52h:
	ld l,000h		;8a52	2e 00 	. . 
	inc de			;8a54	13 	. 
	nop			;8a55	00 	. 
	ld l,000h		;8a56	2e 00 	. . 
	call p,04500h		;8a58	f4 00 45 	. . E 
	nop			;8a5b	00 	. 
	call p,02b00h		;8a5c	f4 00 2b 	. . + 
	nop			;8a5f	00 	. 
	dec hl			;8a60	2b 	+ 
	nop			;8a61	00 	. 
	dec hl			;8a62	2b 	+ 
	nop			;8a63	00 	. 
	dec c			;8a64	0d 	. 
	nop			;8a65	00 	. 
	rlca			;8a66	07 	. 
	nop			;8a67	00 	. 
	dec c			;8a68	0d 	. 
	nop			;8a69	00 	. 
	ld l,h			;8a6a	6c 	l 
	nop			;8a6b	00 	. 
	dec a			;8a6c	3d 	= 
	nop			;8a6d	00 	. 
	ld c,h			;8a6e	4c 	L 
	nop			;8a6f	00 	. 
	dec sp			;8a70	3b 	; 
	nop			;8a71	00 	. 
	ld a,(03b00h)		;8a72	3a 00 3b 	: . ; 
	nop			;8a75	00 	. 
	add hl,bc			;8a76	09 	. 
	nop			;8a77	00 	. 
	add hl,bc			;8a78	09 	. 
	nop			;8a79	00 	. 
	add hl,bc			;8a7a	09 	. 
	nop			;8a7b	00 	. 
	ld sp,03100h		;8a7c	31 00 31 	1 . 1 
	nop			;8a7f	00 	. 
	ld sp,03200h		;8a80	31 00 32 	1 . 2 
	nop			;8a83	00 	. 
	ld (03200h),a		;8a84	32 00 32 	2 . 2 
	nop			;8a87	00 	. 
	inc sp			;8a88	33 	3 
	nop			;8a89	00 	. 
	inc sp			;8a8a	33 	3 
	nop			;8a8b	00 	. 
	inc sp			;8a8c	33 	3 
	nop			;8a8d	00 	. 
	dec l			;8a8e	2d 	- 
	nop			;8a8f	00 	. 
	ld d,000h		;8a90	16 00 	. . 
	dec l			;8a92	2d 	- 
	nop			;8a93	00 	. 
	ld a,(de)			;8a94	1a 	. 
	nop			;8a95	00 	. 
	dec de			;8a96	1b 	. 
	nop			;8a97	00 	. 
	ld a,(de)			;8a98	1a 	. 
	nop			;8a99	00 	. 
	ld l,c			;8a9a	69 	i 
	nop			;8a9b	00 	. 
	inc a			;8a9c	3c 	< 
	nop			;8a9d	00 	. 
	ld c,c			;8a9e	49 	I 
	nop			;8a9f	00 	. 
	ld l,a			;8aa0	6f 	o 
	nop			;8aa1	00 	. 
	ld a,000h		;8aa2	3e 00 	> . 
	ld c,a			;8aa4	4f 	O 
	nop			;8aa5	00 	. 
	ld (de),a			;8aa6	12 	. 
	nop			;8aa7	00 	. 
	ld (de),a			;8aa8	12 	. 
	nop			;8aa9	00 	. 
	ld (de),a			;8aaa	12 	. 
	nop			;8aab	00 	. 
	inc (hl)			;8aac	34 	4 
	nop			;8aad	00 	. 
	inc (hl)			;8aae	34 	4 
	nop			;8aaf	00 	. 
	inc (hl)			;8ab0	34 	4 
	nop			;8ab1	00 	. 
	dec (hl)			;8ab2	35 	5 
	nop			;8ab3	00 	. 
	dec (hl)			;8ab4	35 	5 
	nop			;8ab5	00 	. 
	dec (hl)			;8ab6	35 	5 
	nop			;8ab7	00 	. 
	ld (hl),000h		;8ab8	36 00 	6 . 
	ld (hl),000h		;8aba	36 00 	6 . 
	ld (hl),000h		;8abc	36 00 	6 . 
	ld hl,(02a00h)		;8abe	2a 00 2a 	* . * 
	nop			;8ac1	00 	. 
	ld hl,(01900h)		;8ac2	2a 00 19 	* . . 
	nop			;8ac5	00 	. 
	ret m			;8ac6	f8 	. 
	nop			;8ac7	00 	. 
	add hl,de			;8ac8	19 	. 
	nop			;8ac9	00 	. 
	ld (hl),b			;8aca	70 	p 
	nop			;8acb	00 	. 
	ld b,b			;8acc	40 	@ 
	nop			;8acd	00 	. 
	ld d,b			;8ace	50 	P 
	nop			;8acf	00 	. 
	ex af,af'			;8ad0	08 	. 
	nop			;8ad1	00 	. 
	ex af,af'			;8ad2	08 	. 
	nop			;8ad3	00 	. 
	ex af,af'			;8ad4	08 	. 
	nop			;8ad5	00 	. 
	cp 090h		;8ad6	fe 90 	. . 
	cp 0aeh		;8ad8	fe ae 	. . 
	cp 090h		;8ada	fe 90 	. . 
	scf			;8adc	37 	7 
	nop			;8add	00 	. 
	scf			;8ade	37 	7 
	nop			;8adf	00 	. 
	scf			;8ae0	37 	7 
	nop			;8ae1	00 	. 
	jr c,l8ae4h		;8ae2	38 00 	8 . 
l8ae4h:
	jr c,l8ae6h		;8ae4	38 00 	8 . 
l8ae6h:
	jr c,l8ae8h		;8ae6	38 00 	8 . 
l8ae8h:
	add hl,sp			;8ae8	39 	9 
	nop			;8ae9	00 	. 
	add hl,sp			;8aea	39 	9 
	nop			;8aeb	00 	. 
	add hl,sp			;8aec	39 	9 
	nop			;8aed	00 	. 
	cpl			;8aee	2f 	/ 
	nop			;8aef	00 	. 
	cpl			;8af0	2f 	/ 
	nop			;8af1	00 	. 
	cpl			;8af2	2f 	/ 
	nop			;8af3	00 	. 
	add hl,hl			;8af4	29 	) 
	nop			;8af5	00 	. 
	ret p			;8af6	f0 	. 
	nop			;8af7	00 	. 
	add hl,hl			;8af8	29 	) 
	nop			;8af9	00 	. 
	push af			;8afa	f5 	. 
	nop			;8afb	00 	. 
	or 000h		;8afc	f6 00 	. . 
	push af			;8afe	f5 	. 
	nop			;8aff	00 	. 
	cp 09bh		;8b00	fe 9b 	. . 
	cp 09ch		;8b02	fe 9c 	. . 
	cp 09bh		;8b04	fe 9b 	. . 
	ld e,(hl)			;8b06	5e 	^ 
	nop			;8b07	00 	. 
	cp 083h		;8b08	fe 83 	. . 
	ld e,(hl)			;8b0a	5e 	^ 
	nop			;8b0b	00 	. 
	cp 094h		;8b0c	fe 94 	. . 
	cp 089h		;8b0e	fe 89 	. . 
	cp 094h		;8b10	fe 94 	. . 
	cp 088h		;8b12	fe 88 	. . 
	rst 30h			;8b14	f7 	. 
	nop			;8b15	00 	. 
	cp 088h		;8b16	fe 88 	. . 
	jr z,l8b1ah		;8b18	28 00 	( . 
l8b1ah:
	cp 081h		;8b1a	fe 81 	. . 
	jr z,l8b1eh		;8b1c	28 00 	( . 
l8b1eh:
	cp 087h		;8b1e	fe 87 	. . 
	cp 082h		;8b20	fe 82 	. . 
	cp 087h		;8b22	fe 87 	. . 
	cp 080h		;8b24	fe 80 	. . 
	inc b			;8b26	04 	. 
	nop			;8b27	00 	. 
	cp 080h		;8b28	fe 80 	. . 
	djnz l8b2ch		;8b2a	10 00 	. . 
l8b2ch:
	djnz l8b2eh		;8b2c	10 00 	. . 
l8b2eh:
	djnz l8b30h		;8b2e	10 00 	. . 
l8b30h:
	cp 095h		;8b30	fe 95 	. . 
	cp 09dh		;8b32	fe 9d 	. . 
	cp 095h		;8b34	fe 95 	. . 
	cp 096h		;8b36	fe 96 	. . 
	cp 09eh		;8b38	fe 9e 	. . 
	cp 096h		;8b3a	fe 96 	. . 
	cp 091h		;8b3c	fe 91 	. . 
	cp 093h		;8b3e	fe 93 	. . 
	cp 091h		;8b40	fe 91 	. . 
	cp 092h		;8b42	fe 92 	. . 
	cp 086h		;8b44	fe 86 	. . 
	cp 092h		;8b46	fe 92 	. . 
	cp 097h		;8b48	fe 97 	. . 
	cp 09fh		;8b4a	fe 9f 	. . 
	cp 097h		;8b4c	fe 97 	. . 
	rrca			;8b4e	0f 	. 
	nop			;8b4f	00 	. 
	ld c,000h		;8b50	0e 00 	. . 
	rrca			;8b52	0f 	. 
	nop			;8b53	00 	. 
	inc c			;8b54	0c 	. 
	nop			;8b55	00 	. 
	dec bc			;8b56	0b 	. 
	nop			;8b57	00 	. 
	inc c			;8b58	0c 	. 
	nop			;8b59	00 	. 
	dec b			;8b5a	05 	. 
	nop			;8b5b	00 	. 
	dec b			;8b5c	05 	. 
	nop			;8b5d	00 	. 
	dec b			;8b5e	05 	. 
	nop			;8b5f	00 	. 
	nop			;8b60	00 	. 
	nop			;8b61	00 	. 
	nop			;8b62	00 	. 
	nop			;8b63	00 	. 
	nop			;8b64	00 	. 
	nop			;8b65	00 	. 
	add hl,bc			;8b66	09 	. 
	nop			;8b67	00 	. 
	add hl,bc			;8b68	09 	. 
	nop			;8b69	00 	. 
	add hl,bc			;8b6a	09 	. 
	nop			;8b6b	00 	. 
	ld (de),a			;8b6c	12 	. 
	nop			;8b6d	00 	. 
	ld (de),a			;8b6e	12 	. 
	nop			;8b6f	00 	. 
	ld (de),a			;8b70	12 	. 
	nop			;8b71	00 	. 
l8b72h:
	and h			;8b72	a4 	. 
	nop			;8b73	00 	. 
	ccf			;8b74	3f 	? 
	nop			;8b75	00 	. 
l8b76h:
	and h			;8b76	a4 	. 
	nop			;8b77	00 	. 
	ld de,lb000h		;8b78	11 00 b0 	. . . 
	nop			;8b7b	00 	. 
	ld de,la100h		;8b7c	11 00 a1 	. . . 
	nop			;8b7f	00 	. 
	inc de			;8b80	13 	. 
	nop			;8b81	00 	. 
	and c			;8b82	a1 	. 
	nop			;8b83	00 	. 
	and l			;8b84	a5 	. 
	nop			;8b85	00 	. 
	and l			;8b86	a5 	. 
	nop			;8b87	00 	. 
	and l			;8b88	a5 	. 
	nop			;8b89	00 	. 
	and e			;8b8a	a3 	. 
	nop			;8b8b	00 	. 
	pop af			;8b8c	f1 	. 
	nop			;8b8d	00 	. 
	and e			;8b8e	a3 	. 
	nop			;8b8f	00 	. 
	and d			;8b90	a2 	. 
	nop			;8b91	00 	. 
	cp 081h		;8b92	fe 81 	. . 
	and d			;8b94	a2 	. 
	nop			;8b95	00 	. 
l8b96h:
	nop			;8b96	00 	. 
	nop			;8b97	00 	. 

; BLOCK 'keyboard' (start 0x8b98 end 0x8baf)
keyboard_start:
	defb 051h		;8b98	51 	Q 
	defb 057h		;8b99	57 	W 
	defb 045h		;8b9a	45 	E 
	defb 052h		;8b9b	52 	R 
	defb 054h		;8b9c	54 	T 
	defb 059h		;8b9d	59 	Y 
	defb 055h		;8b9e	55 	U 
	defb 041h		;8b9f	41 	A 
	defb 053h		;8ba0	53 	S 
	defb 044h		;8ba1	44 	D 
	defb 046h		;8ba2	46 	F 
	defb 047h		;8ba3	47 	G 
	defb 048h		;8ba4	48 	H 
	defb 04ah		;8ba5	4a 	J 
	defb 04bh		;8ba6	4b 	K 
	defb 05ah		;8ba7	5a 	Z 
	defb 058h		;8ba8	58 	X 
	defb 043h		;8ba9	43 	C 
	defb 056h		;8baa	56 	V 
	defb 042h		;8bab	42 	B 
	defb 04eh		;8bac	4e 	N 
	defb 04dh		;8bad	4d 	M 
	defb 02ch		;8bae	2c 	, 
keyboard_end:
	add hl,bc			;8baf	09 	. 
	ex af,af'			;8bb0	08 	. 
	dec d			;8bb1	15 	. 
	rlca			;8bb2	07 	. 
	ld a,(bc)			;8bb3	0a 	. 
	jr nz,$+7		;8bb4	20 05 	  . 
	inc b			;8bb6	04 	. 
	rrca			;8bb7	0f 	. 
	ld c,003h		;8bb8	0e 03 	. . 
	jr nc,l8beah		;8bba	30 2e 	0 . 
	dec a			;8bbc	3d 	= 
	dec hl			;8bbd	2b 	+ 
	dec c			;8bbe	0d 	. 
	ld c,h			;8bbf	4c 	L 
	dec sp			;8bc0	3b 	; 
	inc c			;8bc1	0c 	. 
	ld sp,03332h		;8bc2	31 32 33 	1 2 3 
	dec l			;8bc5	2d 	- 
	add hl,de			;8bc6	19 	. 
	ld c,c			;8bc7	49 	I 
	ld c,a			;8bc8	4f 	O 
	dec bc			;8bc9	0b 	. 
	inc (hl)			;8bca	34 	4 
	dec (hl)			;8bcb	35 	5 
	ld (hl),02ah		;8bcc	36 2a 	6 * 
	jr $+82		;8bce	18 50 	. P 
	rla			;8bd0	17 	. 
	ei			;8bd1	fb 	. 
	scf			;8bd2	37 	7 
	jr c,l8c0eh		;8bd3	38 39 	8 9 
	cpl			;8bd5	2f 	/ 
	add hl,hl			;8bd6	29 	) 
	sbc a,l			;8bd7	9d 	. 
	sbc a,e			;8bd8	9b 	. 
	ld e,(hl)			;8bd9	5e 	^ 
	call m,02888h		;8bda	fc 88 28 	. . ( 
	add a,a			;8bdd	87 	. 
	sbc a,(hl)			;8bde	9e 	. 
	djnz l8b76h		;8bdf	10 95 	. . 
	sub (hl)			;8be1	96 	. 
	sub c			;8be2	91 	. 
	sub d			;8be3	92 	. 
	sub a			;8be4	97 	. 
	sbc a,h			;8be5	9c 	. 
	ld (bc),a			;8be6	02 	. 
	dec b			;8be7	05 	. 
	nop			;8be8	00 	. 
sub_8be9h:
	ld b,a			;8be9	47 	G 
l8beah:
	ld a,(078f0h)		;8bea	3a f0 78 	: . x 
	and 008h		;8bed	e6 08 	. . 
	ld a,b			;8bef	78 	x 
	ret nz			;8bf0	c0 	. 
	call 078fah		;8bf1	cd fa 78 	. . x 
	ld b,a			;8bf4	47 	G 
	and 07fh		;8bf5	e6 7f 	.  
	cp 053h		;8bf7	fe 53 	. S 
	ret c			;8bf9	d8 	. 
	ld a,000h		;8bfa	3e 00 	> . 
	ret			;8bfc	c9 	. 
l8bfdh:
	call sub_8be9h		;8bfd	cd e9 8b 	. . . 
	ret nc			;8c00	d0 	. 
	cp 018h		;8c01	fe 18 	. . 
	jr c,l8c0dh		;8c03	38 08 	8 . 
	cp 029h		;8c05	fe 29 	. ) 
	jr c,l8c23h		;8c07	38 1a 	8 . 
	cp 040h		;8c09	fe 40 	. @ 
	jr nc,l8c23h		;8c0b	30 16 	0 . 
l8c0dh:
	push de			;8c0d	d5 	. 
l8c0eh:
	push hl			;8c0e	e5 	. 
	ld de,00004h		;8c0f	11 04 00 	. . . 
	rl b		;8c12	cb 10 	. . 
	ld bc,l8974h		;8c14	01 74 89 	. t . 
	jp nc,l8c9dh		;8c17	d2 9d 8c 	. . . 
	ld de,00002h		;8c1a	11 02 00 	. . . 
	jr l8c9dh		;8c1d	18 7e 	. ~ 
sub_8c1fh:
	call sub_8be9h		;8c1f	cd e9 8b 	. . . 
	ret nc			;8c22	d0 	. 
l8c23h:
	push de			;8c23	d5 	. 
	push hl			;8c24	e5 	. 
	cp 01ch		;8c25	fe 1c 	. . 
	jr z,l8c35h		;8c27	28 0c 	( . 
	cp 023h		;8c29	fe 23 	. # 
	jr z,l8c35h		;8c2b	28 08 	( . 
	cp 02bh		;8c2d	fe 2b 	. + 
	jr z,l8c35h		;8c2f	28 04 	( . 
	cp 033h		;8c31	fe 33 	. 3 
	jr nz,l8c3dh		;8c33	20 08 	  . 
l8c35h:
	ld hl,07932h		;8c35	21 32 79 	! 2 y 
	bit 7,(hl)		;8c38	cb 7e 	. ~ 
	call nz,sub_8ca8h		;8c3a	c4 a8 8c 	. . . 
l8c3dh:
	ld e,000h		;8c3d	1e 00 	. . 
	ld a,(07901h)		;8c3f	3a 01 79 	: . y 
	ld d,a			;8c42	57 	W 
	ld a,b			;8c43	78 	x 
	bit 7,a		;8c44	cb 7f 	.  
	jr z,l8c4ch		;8c46	28 04 	( . 
l8c48h:
	ld e,002h		;8c48	1e 02 	. . 
	jr l8c60h		;8c4a	18 14 	. . 
l8c4ch:
	bit 4,d		;8c4c	cb 62 	. b 
	jr nz,l8c48h		;8c4e	20 f8 	  . 
	bit 2,d		;8c50	cb 52 	. R 
	jr z,l8c5ah		;8c52	28 06 	( . 
	bit 3,d		;8c54	cb 5a 	. Z 
	jr nz,l8c60h		;8c56	20 08 	  . 
	jr l8c5eh		;8c58	18 04 	. . 
l8c5ah:
	bit 1,d		;8c5a	cb 4a 	. J 
	jr z,l8c60h		;8c5c	28 02 	( . 
l8c5eh:
	ld e,004h		;8c5e	1e 04 	. . 
l8c60h:
	and 07fh		;8c60	e6 7f 	.  
	ld bc,l8974h		;8c62	01 74 89 	. t . 
	bit 2,d		;8c65	cb 52 	. R 
	ld d,000h		;8c67	16 00 	. . 
	jr z,l8c9dh		;8c69	28 32 	( 2 
	cp 018h		;8c6b	fe 18 	. . 
	jr nz,l8c75h		;8c6d	20 06 	  . 
	xor a			;8c6f	af 	. 
l8c70h:
	ld bc,l8b72h		;8c70	01 72 8b 	. r . 
	jr l8c9dh		;8c73	18 28 	. ( 
l8c75h:
	cp 01ch		;8c75	fe 1c 	. . 
	jr nz,l8c7dh		;8c77	20 04 	  . 
	ld a,001h		;8c79	3e 01 	> . 
	jr l8c70h		;8c7b	18 f3 	. . 
l8c7dh:
	cp 025h		;8c7d	fe 25 	. % 
	jr nz,l8c85h		;8c7f	20 04 	  . 
	ld a,002h		;8c81	3e 02 	> . 
	jr l8c70h		;8c83	18 eb 	. . 
l8c85h:
	cp 027h		;8c85	fe 27 	. ' 
	jr nz,l8c8dh		;8c87	20 04 	  . 
	ld a,003h		;8c89	3e 03 	> . 
	jr l8c70h		;8c8b	18 e3 	. . 
l8c8dh:
	cp 040h		;8c8d	fe 40 	. @ 
	jr nz,l8c95h		;8c8f	20 04 	  . 
	ld a,004h		;8c91	3e 04 	> . 
	jr l8c70h		;8c93	18 db 	. . 
l8c95h:
	cp 046h		;8c95	fe 46 	. F 
	jr nz,l8c9dh		;8c97	20 04 	  . 
	ld a,005h		;8c99	3e 05 	> . 
	jr l8c70h		;8c9b	18 d3 	. . 
l8c9dh:
	call sub_8cc2h		;8c9d	cd c2 8c 	. . . 
	add hl,bc			;8ca0	09 	. 
	add hl,de			;8ca1	19 	. 
	ld a,(hl)			;8ca2	7e 	~ 
	inc hl			;8ca3	23 	# 
	ld b,(hl)			;8ca4	46 	F 
	pop hl			;8ca5	e1 	. 
	pop de			;8ca6	d1 	. 
	ret			;8ca7	c9 	. 
sub_8ca8h:
	cp 01ch		;8ca8	fe 1c 	. . 
	jr z,l8cb6h		;8caa	28 0a 	( . 
	cp 023h		;8cac	fe 23 	. # 
	jr z,l8cbah		;8cae	28 0a 	( . 
	cp 02bh		;8cb0	fe 2b 	. + 
	jr z,l8cbeh		;8cb2	28 0a 	( . 
l8cb4h:
	ld b,a			;8cb4	47 	G 
	ret			;8cb5	c9 	. 
l8cb6h:
	ld a,01ch		;8cb6	3e 1c 	> . 
	jr l8cb4h		;8cb8	18 fa 	. . 
l8cbah:
	ld a,023h		;8cba	3e 23 	> # 
	jr l8cb4h		;8cbc	18 f6 	. . 
l8cbeh:
	ld a,02bh		;8cbe	3e 2b 	> + 
	jr l8cb4h		;8cc0	18 f2 	. . 
sub_8cc2h:
	push de			;8cc2	d5 	. 
	ld h,000h		;8cc3	26 00 	& . 
	ld l,a			;8cc5	6f 	o 
	add hl,hl			;8cc6	29 	) 
	ld d,h			;8cc7	54 	T 
	ld e,l			;8cc8	5d 	] 
	add hl,hl			;8cc9	29 	) 
	add hl,de			;8cca	19 	. 
	pop de			;8ccb	d1 	. 
	ret			;8ccc	c9 	. 
l8ccdh:
	and 07fh		;8ccd	e6 7f 	.  
	cp 053h		;8ccf	fe 53 	. S 
	jr nc,l8ce0h		;8cd1	30 0d 	0 . 
	push bc			;8cd3	c5 	. 
	push hl			;8cd4	e5 	. 
	ld b,000h		;8cd5	06 00 	. . 
	ld c,a			;8cd7	4f 	O 
	ld hl,l8b96h		;8cd8	21 96 8b 	! . . 
	add hl,bc			;8cdb	09 	. 
	ld a,(hl)			;8cdc	7e 	~ 
	pop hl			;8cdd	e1 	. 
	pop bc			;8cde	c1 	. 
	ret			;8cdf	c9 	. 
l8ce0h:
	ld a,000h		;8ce0	3e 00 	> . 
	ret			;8ce2	c9 	. 
sub_8ce3h:
	push af			;8ce3	f5 	. 
	ld a,(078f1h)		;8ce4	3a f1 78 	: . x 
	ld (0797eh),a		;8ce7	32 7e 79 	2 ~ y 
	pop af			;8cea	f1 	. 
	ret			;8ceb	c9 	. 
sub_8cech:
	push af			;8cec	f5 	. 
	ld a,(078f2h)		;8ced	3a f2 78 	: . x 
	ld (0797eh),a		;8cf0	32 7e 79 	2 ~ y 
	pop af			;8cf3	f1 	. 
	ret			;8cf4	c9 	. 
sub_8cf5h:
	ld a,(078f0h)		;8cf5	3a f0 78 	: . x 
	and 002h		;8cf8	e6 02 	. . 
	call z,sub_be32h		;8cfa	cc 32 be 	. 2 . 
	ret			;8cfd	c9 	. 
sub_8cfeh:
	call sub_8703h		;8cfe	cd 03 87 	. . . 
	call sub_8dd7h		;8d01	cd d7 8d 	. . . 
l8d04h:
	ld a,002h		;8d04	3e 02 	> . 
	out (01eh),a		;8d06	d3 1e 	. . 
	ld a,00fh		;8d08	3e 0f 	> . 
	out (017h),a		;8d0a	d3 17 	. . 
	di			;8d0c	f3 	. 
	xor a			;8d0d	af 	. 
	out (018h),a		;8d0e	d3 18 	. . 
	out (011h),a		;8d10	d3 11 	. . 
	ld a,040h		;8d12	3e 40 	> @ 
	out (012h),a		;8d14	d3 12 	. . 
l8d16h:
	ld a,000h		;8d16	3e 00 	> . 
	out (01ch),a		;8d18	d3 1c 	. . 
	ld a,0ffh		;8d1a	3e ff 	> . 
	ld i,a		;8d1c	ed 47 	. G 
	ld r,a		;8d1e	ed 4f 	. O 
	halt			;8d20	76 	v 
	jr l8d16h		;8d21	18 f3 	. . 
l8d23h:
	ld a,001h		;8d23	3e 01 	> . 
	out (011h),a		;8d25	d3 11 	. . 
	call sub_895ch		;8d27	cd 5c 89 	. \ . 
	in a,(010h)		;8d2a	db 10 	. . 
	bit 0,a		;8d2c	cb 47 	. G 
	jr z,l8d37h		;8d2e	28 07 	( . 
	call sub_895ch		;8d30	cd 5c 89 	. \ . 
	in a,(010h)		;8d33	db 10 	. . 
	bit 0,a		;8d35	cb 47 	. G 
l8d37h:
	ld a,000h		;8d37	3e 00 	> . 
	out (011h),a		;8d39	d3 11 	. . 
	ret			;8d3b	c9 	. 
sub_8d3ch:
	in a,(01fh)		;8d3c	db 1f 	. . 
	bit 7,a		;8d3e	cb 7f 	.  
	ret z			;8d40	c8 	. 
	call sub_8965h		;8d41	cd 65 89 	. e . 
	in a,(01fh)		;8d44	db 1f 	. . 
	bit 7,a		;8d46	cb 7f 	.  
	ret			;8d48	c9 	. 
sub_8d49h:
	push af			;8d49	f5 	. 
	ld a,(07903h)		;8d4a	3a 03 79 	: . y 
	bit 0,a		;8d4d	cb 47 	. G 
	jr nz,l8d59h		;8d4f	20 08 	  . 
	ld a,013h		;8d51	3e 13 	> . 
	call sub_8d7ch		;8d53	cd 7c 8d 	. | . 
	call c,sub_8d9eh		;8d56	dc 9e 8d 	. . . 
l8d59h:
	pop af			;8d59	f1 	. 
	ret			;8d5a	c9 	. 
sub_8d5bh:
	push af			;8d5b	f5 	. 
	call sub_8d94h		;8d5c	cd 94 8d 	. . . 
	jr c,l8d63h		;8d5f	38 02 	8 . 
	pop af			;8d61	f1 	. 
	ret			;8d62	c9 	. 
l8d63h:
	pop af			;8d63	f1 	. 
	ld b,07fh		;8d64	06 7f 	.  
	ret			;8d66	c9 	. 
sub_8d67h:
	call sub_8d94h		;8d67	cd 94 8d 	. . . 
	ret c			;8d6a	d8 	. 
	ld a,(07903h)		;8d6b	3a 03 79 	: . y 
	bit 0,a		;8d6e	cb 47 	. G 
	jr nz,l8d7ah		;8d70	20 08 	  . 
	ld a,01fh		;8d72	3e 1f 	> . 
	call sub_8d7ch		;8d74	cd 7c 8d 	. | . 
	call c,sub_8d9eh		;8d77	dc 9e 8d 	. . . 
l8d7ah:
	or a			;8d7a	b7 	. 
	ret			;8d7b	c9 	. 
sub_8d7ch:
	push af			;8d7c	f5 	. 
	ld a,001h		;8d7d	3e 01 	> . 
	out (01eh),a		;8d7f	d3 1e 	. . 
	pop af			;8d81	f1 	. 
	call sub_8db4h		;8d82	cd b4 8d 	. . . 
	in a,(01dh)		;8d85	db 1d 	. . 
	rra			;8d87	1f 	. 
	jr nc,l8d8fh		;8d88	30 05 	0 . 
	push hl			;8d8a	e5 	. 
	pop hl			;8d8b	e1 	. 
	in a,(01dh)		;8d8c	db 1d 	. . 
	rra			;8d8e	1f 	. 
l8d8fh:
	ld a,003h		;8d8f	3e 03 	> . 
	out (01eh),a		;8d91	d3 1e 	. . 
	ret			;8d93	c9 	. 
sub_8d94h:
	in a,(01dh)		;8d94	db 1d 	. . 
	rra			;8d96	1f 	. 
	ret nc			;8d97	d0 	. 
	push hl			;8d98	e5 	. 
	pop hl			;8d99	e1 	. 
	in a,(01dh)		;8d9a	db 1d 	. . 
	rra			;8d9c	1f 	. 
	ret			;8d9d	c9 	. 
sub_8d9eh:
	push af			;8d9e	f5 	. 
	push hl			;8d9f	e5 	. 
	ld hl,07903h		;8da0	21 03 79 	! . y 
	set 0,(hl)		;8da3	cb c6 	. . 
l8da5h:
	call sub_854dh		;8da5	cd 4d 85 	. M . 
	pop hl			;8da8	e1 	. 
	pop af			;8da9	f1 	. 
	ret			;8daa	c9 	. 
	push af			;8dab	f5 	. 
	push hl			;8dac	e5 	. 
	ld hl,07903h		;8dad	21 03 79 	! . y 
	res 0,(hl)		;8db0	cb 86 	. . 
	jr l8da5h		;8db2	18 f1 	. . 
sub_8db4h:
	dec a			;8db4	3d 	= 
	jp nz,sub_8db4h		;8db5	c2 b4 8d 	. . . 
	ret			;8db8	c9 	. 
sub_8db9h:
	push af			;8db9	f5 	. 
	push bc			;8dba	c5 	. 
	xor a			;8dbb	af 	. 
	call sub_8dcfh		;8dbc	cd cf 8d 	. . . 
	ld a,002h		;8dbf	3e 02 	> . 
	call sub_8dcfh		;8dc1	cd cf 8d 	. . . 
	in a,(015h)		;8dc4	db 15 	. . 
	and 0feh		;8dc6	e6 fe 	. . 
	or 080h		;8dc8	f6 80 	. . 
	out (015h),a		;8dca	d3 15 	. . 
	pop bc			;8dcc	c1 	. 
	pop af			;8dcd	f1 	. 
	ret			;8dce	c9 	. 
sub_8dcfh:
	out (018h),a		;8dcf	d3 18 	. . 
	ld bc,00100h		;8dd1	01 00 01 	. . . 
	jp sub_896bh		;8dd4	c3 6b 89 	. k . 
sub_8dd7h:
	push af			;8dd7	f5 	. 
	in a,(015h)		;8dd8	db 15 	. . 
	and 07eh		;8dda	e6 7e 	. ~ 
	out (015h),a		;8ddc	d3 15 	. . 
	xor a			;8dde	af 	. 
	out (018h),a		;8ddf	d3 18 	. . 
	pop af			;8de1	f1 	. 
	ret			;8de2	c9 	. 
l8de3h:
	xor a			;8de3	af 	. 
	ld (07b00h),a		;8de4	32 00 7b 	2 . { 
	ld (078ech),a		;8de7	32 ec 78 	2 . x 
	push hl			;8dea	e5 	. 
	ld hl,07b00h		;8deb	21 00 7b 	! . { 
	ld (078e7h),hl		;8dee	22 e7 78 	" . x 
	pop hl			;8df1	e1 	. 
	ret			;8df2	c9 	. 
sub_8df3h:
	ld hl,07b00h		;8df3	21 00 7b 	! . { 
	ld b,00ah		;8df6	06 0a 	. . 
	ld a,(078efh)		;8df8	3a ef 78 	: . x 
	ld c,a			;8dfb	4f 	O 
	ld a,(078ech)		;8dfc	3a ec 78 	: . x 
	and 00fh		;8dff	e6 0f 	. . 
	ld (078ech),a		;8e01	32 ec 78 	2 . x 
l8e04h:
	call sub_8fb6h		;8e04	cd b6 8f 	. . . 
	jr c,l8e37h		;8e07	38 2e 	8 . 
	or a			;8e09	b7 	. 
	jr z,l8e04h		;8e0a	28 f8 	( . 
	ld (hl),a			;8e0c	77 	w 
	inc hl			;8e0d	23 	# 
	inc b			;8e0e	04 	. 
	jr z,l8e4ah		;8e0f	28 39 	( 9 
	ld a,(078ech)		;8e11	3a ec 78 	: . x 
	and 0c0h		;8e14	e6 c0 	. . 
	jr z,l8e04h		;8e16	28 ec 	( . 
	and 080h		;8e18	e6 80 	. . 
	jr nz,l8e37h		;8e1a	20 1b 	  . 
l8e1ch:
	ld b,0fbh		;8e1c	06 fb 	. . 
l8e1eh:
	call sub_911dh		;8e1e	cd 1d 91 	. . . 
	jr nc,l8e2bh		;8e21	30 08 	0 . 
	or a			;8e23	b7 	. 
	scf			;8e24	37 	7 
	jr z,l8e37h		;8e25	28 10 	( . 
	cp 0ffh		;8e27	fe ff 	. . 
	jr l8e37h		;8e29	18 0c 	. . 
l8e2bh:
	inc b			;8e2b	04 	. 
	jr z,l8e3dh		;8e2c	28 0f 	( . 
	ld (hl),a			;8e2e	77 	w 
	inc hl			;8e2f	23 	# 
	ld a,(078ech)		;8e30	3a ec 78 	: . x 
	and 080h		;8e33	e6 80 	. . 
	jr z,l8e1eh		;8e35	28 e7 	( . 
l8e37h:
	ld (hl),000h		;8e37	36 00 	6 . 
	ld hl,07b00h		;8e39	21 00 7b 	! . { 
	ret			;8e3c	c9 	. 
l8e3dh:
	ld a,002h		;8e3d	3e 02 	> . 
	out (018h),a		;8e3f	d3 18 	. . 
	ld (hl),000h		;8e41	36 00 	6 . 
	ld hl,07b00h		;8e43	21 00 7b 	! . { 
	ld a,00bh		;8e46	3e 0b 	> . 
	scf			;8e48	37 	7 
	ret			;8e49	c9 	. 
l8e4ah:
	ld a,002h		;8e4a	3e 02 	> . 
	out (018h),a		;8e4c	d3 18 	. . 
	jr l8e1ch		;8e4e	18 cc 	. . 
sub_8e50h:
	push hl			;8e50	e5 	. 
	ld hl,(078e7h)		;8e51	2a e7 78 	* . x 
l8e54h:
	ld a,(hl)			;8e54	7e 	~ 
	or a			;8e55	b7 	. 
	jr nz,l8e6fh		;8e56	20 17 	  . 
	ld a,(078ech)		;8e58	3a ec 78 	: . x 
	and 080h		;8e5b	e6 80 	. . 
	jr z,l8e64h		;8e5d	28 05 	( . 
	scf			;8e5f	37 	7 
	ld a,0ffh		;8e60	3e ff 	> . 
	jr l8e71h		;8e62	18 0d 	. . 
l8e64h:
	push bc			;8e64	c5 	. 
	push de			;8e65	d5 	. 
	call sub_8df3h		;8e66	cd f3 8d 	. . . 
	pop de			;8e69	d1 	. 
	pop bc			;8e6a	c1 	. 
	jr nc,l8e54h		;8e6b	30 e7 	0 . 
	jr l8e71h		;8e6d	18 02 	. . 
l8e6fh:
	inc hl			;8e6f	23 	# 
	or a			;8e70	b7 	. 
l8e71h:
	ld (078e7h),hl		;8e71	22 e7 78 	" . x 
	pop hl			;8e74	e1 	. 
	ret			;8e75	c9 	. 
l8e76h:
	push hl			;8e76	e5 	. 
	call sub_8e50h		;8e77	cd 50 8e 	. P . 
	ld hl,(078e7h)		;8e7a	2a e7 78 	* . x 
	dec hl			;8e7d	2b 	+ 
	ld (078e7h),hl		;8e7e	22 e7 78 	" . x 
	jr c,l8e8ch		;8e81	38 09 	8 . 
	ld hl,078efh		;8e83	21 ef 78 	! . x 
	cp (hl)			;8e86	be 	. 
	jr nz,l8e8bh		;8e87	20 02 	  . 
	ld a,01ah		;8e89	3e 1a 	> . 
l8e8bh:
	or a			;8e8b	b7 	. 
l8e8ch:
	pop hl			;8e8c	e1 	. 
	ret			;8e8d	c9 	. 
	push af			;8e8e	f5 	. 
	call sub_8e50h		;8e8f	cd 50 8e 	. P . 
	pop af			;8e92	f1 	. 
	ret			;8e93	c9 	. 
l8e94h:
	ld a,(hl)			;8e94	7e 	~ 
	or a			;8e95	b7 	. 
	ret z			;8e96	c8 	. 
	call sub_8f9ch		;8e97	cd 9c 8f 	. . . 
	ret c			;8e9a	d8 	. 
	inc hl			;8e9b	23 	# 
	jr l8e94h		;8e9c	18 f6 	. . 
l8e9eh:
	ld a,(078ech)		;8e9e	3a ec 78 	: . x 
	and 00fh		;8ea1	e6 0f 	. . 
	or 010h		;8ea3	f6 10 	. . 
	ld (078ech),a		;8ea5	32 ec 78 	2 . x 
	ld a,003h		;8ea8	3e 03 	> . 
	out (018h),a		;8eaa	d3 18 	. . 
l8each:
	call sub_8fbah		;8eac	cd ba 8f 	. . . 
	ret c			;8eaf	d8 	. 
	or a			;8eb0	b7 	. 
	jr z,l8each		;8eb1	28 f9 	( . 
	ld b,a			;8eb3	47 	G 
	dec de			;8eb4	1b 	. 
	ld a,d			;8eb5	7a 	z 
	or e			;8eb6	b3 	. 
	ld a,b			;8eb7	78 	x 
	jr z,l8ec4h		;8eb8	28 0a 	( . 
	ld (hl),a			;8eba	77 	w 
	inc hl			;8ebb	23 	# 
	ld a,(078ech)		;8ebc	3a ec 78 	: . x 
	and 080h		;8ebf	e6 80 	. . 
	jr z,l8each		;8ec1	28 e9 	( . 
	ret			;8ec3	c9 	. 
l8ec4h:
	scf			;8ec4	37 	7 
	ld a,009h		;8ec5	3e 09 	> . 
	ret			;8ec7	c9 	. 
sub_8ec8h:
	ld a,b			;8ec8	78 	x 
	jp sub_8f9ch		;8ec9	c3 9c 8f 	. . . 
sub_8ecch:
	call sub_8ed2h		;8ecc	cd d2 8e 	. . . 
	jp 078f7h		;8ecf	c3 f7 78 	. . x 
sub_8ed2h:
	push de			;8ed2	d5 	. 
	push hl			;8ed3	e5 	. 
	ld hl,(0780eh)		;8ed4	2a 0e 78 	* . x 
	ld a,(hl)			;8ed7	7e 	~ 
	or a			;8ed8	b7 	. 
	jr nz,l8f1ch		;8ed9	20 41 	  A 
	call sub_8db9h		;8edb	cd b9 8d 	. . . 
	ld hl,07800h		;8ede	21 00 78 	! . x 
	exx			;8ee1	d9 	. 
	ld de,00028h		;8ee2	11 28 00 	. ( . 
	ld a,003h		;8ee5	3e 03 	> . 
	out (018h),a		;8ee7	d3 18 	. . 
	call sub_9129h		;8ee9	cd 29 91 	. ) . 
	ld b,a			;8eec	47 	G 
	ld a,002h		;8eed	3e 02 	> . 
	out (018h),a		;8eef	d3 18 	. . 
	jr c,l8f15h		;8ef1	38 22 	8 " 
	ld d,0fdh		;8ef3	16 fd 	. . 
l8ef5h:
	call sub_911dh		;8ef5	cd 1d 91 	. . . 
	jr nc,l8f0eh		;8ef8	30 14 	0 . 
l8efah:
	ld (hl),000h		;8efa	36 00 	6 . 
	ld hl,07800h		;8efc	21 00 78 	! . x 
l8effh:
	ld a,(07965h)		;8eff	3a 65 79 	: e y 
	and 0feh		;8f02	e6 fe 	. . 
	ld (07965h),a		;8f04	32 65 79 	2 e y 
	scf			;8f07	37 	7 
l8f08h:
	ld (0780eh),hl		;8f08	22 0e 78 	" . x 
	pop hl			;8f0b	e1 	. 
	pop de			;8f0c	d1 	. 
	ret			;8f0d	c9 	. 
l8f0eh:
	inc d			;8f0e	14 	. 
	jr z,l8efah		;8f0f	28 e9 	( . 
	ld (hl),a			;8f11	77 	w 
	inc hl			;8f12	23 	# 
	jr l8ef5h		;8f13	18 e0 	. . 
l8f15h:
	ld hl,07800h		;8f15	21 00 78 	! . x 
	xor a			;8f18	af 	. 
	ld (hl),a			;8f19	77 	w 
	jr l8f08h		;8f1a	18 ec 	. . 
l8f1ch:
	ld b,a			;8f1c	47 	G 
	inc hl			;8f1d	23 	# 
	scf			;8f1e	37 	7 
	jr l8effh		;8f1f	18 de 	. . 
l8f21h:
	exx			;8f21	d9 	. 
	ld b,a			;8f22	47 	G 
	ld a,(078edh)		;8f23	3a ed 78 	: . x 
	ld l,a			;8f26	6f 	o 
	ld a,(078eeh)		;8f27	3a ee 78 	: . x 
	ld d,a			;8f2a	57 	W 
	bit 7,d		;8f2b	cb 7a 	. z 
	jp z,l8f3fh		;8f2d	ca 3f 8f 	. ? . 
	ld c,008h		;8f30	0e 08 	. . 
	ld a,b			;8f32	78 	x 
	and 0ffh		;8f33	e6 ff 	. . 
	jp pe,l8f47h		;8f35	ea 47 8f 	. G . 
l8f38h:
	ld e,000h		;8f38	1e 00 	. . 
	cpl			;8f3a	2f 	/ 
	ld b,a			;8f3b	47 	G 
	jp l8f4eh		;8f3c	c3 4e 8f 	. N . 
l8f3fh:
	ld c,007h		;8f3f	0e 07 	. . 
	ld a,b			;8f41	78 	x 
	and 07fh		;8f42	e6 7f 	.  
	jp po,l8f38h		;8f44	e2 38 8f 	. 8 . 
l8f47h:
	ld e,001h		;8f47	1e 01 	. . 
	cpl			;8f49	2f 	/ 
	ld b,a			;8f4a	47 	G 
	jp l8f4eh		;8f4b	c3 4e 8f 	. N . 
l8f4eh:
	ld a,082h		;8f4e	3e 82 	> . 
	out (018h),a		;8f50	d3 18 	. . 
	xor a			;8f52	af 	. 
	jp l8f56h		;8f53	c3 56 8f 	. V . 
l8f56h:
	bit 0,a		;8f56	cb 47 	. G 
	bit 0,a		;8f58	cb 47 	. G 
	call sub_91e1h		;8f5a	cd e1 91 	. . . 
	ld a,004h		;8f5d	3e 04 	> . 
	rr b		;8f5f	cb 18 	. . 
	rra			;8f61	1f 	. 
	out (018h),a		;8f62	d3 18 	. . 
	dec c			;8f64	0d 	. 
	jp nz,l8f56h		;8f65	c2 56 8f 	. V . 
	bit 6,d		;8f68	cb 72 	. r 
	jr z,l8f85h		;8f6a	28 19 	( . 
	bit 5,d		;8f6c	cb 6a 	. j 
	jr nz,l8f71h		;8f6e	20 01 	  . 
	inc e			;8f70	1c 	. 
l8f71h:
	push af			;8f71	f5 	. 
	bit 0,a		;8f72	cb 47 	. G 
	call sub_91ech		;8f74	cd ec 91 	. . . 
	pop af			;8f77	f1 	. 
	ld a,004h		;8f78	3e 04 	> . 
	rr e		;8f7a	cb 1b 	. . 
	rra			;8f7c	1f 	. 
	out (018h),a		;8f7d	d3 18 	. . 
	push af			;8f7f	f5 	. 
	ld a,000h		;8f80	3e 00 	> . 
	ld a,000h		;8f82	3e 00 	> . 
	pop af			;8f84	f1 	. 
l8f85h:
	inc bc			;8f85	03 	. 
	or a			;8f86	b7 	. 
	call sub_91e1h		;8f87	cd e1 91 	. . . 
	ld a,002h		;8f8a	3e 02 	> . 
	out (018h),a		;8f8c	d3 18 	. . 
	call sub_91e1h		;8f8e	cd e1 91 	. . . 
	bit 4,d		;8f91	cb 62 	. b 
	jp z,l8f99h		;8f93	ca 99 8f 	. . . 
	call sub_91e1h		;8f96	cd e1 91 	. . . 
l8f99h:
	xor a			;8f99	af 	. 
	exx			;8f9a	d9 	. 
	ret			;8f9b	c9 	. 
sub_8f9ch:
	ex af,af'			;8f9c	08 	. 
l8f9dh:
	in a,(01fh)		;8f9d	db 1f 	. . 
	and 082h		;8f9f	e6 82 	. . 
	jr z,l8f9dh		;8fa1	28 fa 	( . 
	rla			;8fa3	17 	. 
	jr c,l8faah		;8fa4	38 04 	8 . 
	ex af,af'			;8fa6	08 	. 
	jp l8f21h		;8fa7	c3 21 8f 	. ! . 
l8faah:
	ex af,af'			;8faa	08 	. 
	ld a,(07f35h)		;8fab	3a 35 7f 	: 5  
	or 020h		;8fae	f6 20 	.   
	ld (07f35h),a		;8fb0	32 35 7f 	2 5  
	xor a			;8fb3	af 	. 
	scf			;8fb4	37 	7 
	ret			;8fb5	c9 	. 
sub_8fb6h:
	ld a,003h		;8fb6	3e 03 	> . 
	out (018h),a		;8fb8	d3 18 	. . 
sub_8fbah:
	exx			;8fba	d9 	. 
	ld bc,l8408h		;8fbb	01 08 84 	. . . 
	ld e,000h		;8fbe	1e 00 	. . 
	ld a,(078ech)		;8fc0	3a ec 78 	: . x 
	ld h,a			;8fc3	67 	g 
	ld a,(078edh)		;8fc4	3a ed 78 	: . x 
	ld l,a			;8fc7	6f 	o 
l8fc8h:
	in a,(01fh)		;8fc8	db 1f 	. . 
	and b			;8fca	a0 	. 
	jp z,l8fc8h		;8fcb	ca c8 8f 	. . . 
	rla			;8fce	17 	. 
	jp c,l90e2h		;8fcf	da e2 90 	. . . 
	ld a,(078eeh)		;8fd2	3a ee 78 	: . x 
	ld d,a			;8fd5	57 	W 
	rla			;8fd6	17 	. 
	jr nc,l8fdah		;8fd7	30 01 	0 . 
	inc c			;8fd9	0c 	. 
l8fdah:
	in a,(01fh)		;8fda	db 1f 	. . 
	bit 2,a		;8fdc	cb 57 	. W 
	jr z,l8fc8h		;8fde	28 e8 	( . 
	xor a			;8fe0	af 	. 
	xor a			;8fe1	af 	. 
	ld b,a			;8fe2	47 	G 
	call sub_918ah		;8fe3	cd 8a 91 	. . . 
	jr l8febh		;8fe6	18 03 	. . 
l8fe8h:
	call sub_91e1h		;8fe8	cd e1 91 	. . . 
l8febh:
	in a,(01fh)		;8feb	db 1f 	. . 
	rra			;8fed	1f 	. 
	rra			;8fee	1f 	. 
	rra			;8fef	1f 	. 
	ccf			;8ff0	3f 	? 
	jr nc,l8ff4h		;8ff1	30 01 	0 . 
	inc e			;8ff3	1c 	. 
l8ff4h:
	rr b		;8ff4	cb 18 	. . 
	dec c			;8ff6	0d 	. 
	jp nz,l8fe8h		;8ff7	c2 e8 8f 	. . . 
	or a			;8ffa	b7 	. 
	ld a,b			;8ffb	78 	x 
	bit 7,d		;8ffc	cb 7a 	. z 
	jr nz,l9001h		;8ffe	20 01 	  . 
	rra			;9000	1f 	. 
l9001h:
	ld b,a			;9001	47 	G 
	bit 6,d		;9002	cb 72 	. r 
	jp z,l9020h		;9004	ca 20 90 	.   . 
	call sub_91ech		;9007	cd ec 91 	. . . 
	in a,(01fh)		;900a	db 1f 	. . 
	bit 2,a		;900c	cb 57 	. W 
	jr nz,l9011h		;900e	20 01 	  . 
	inc e			;9010	1c 	. 
l9011h:
	bit 5,d		;9011	cb 6a 	. j 
	jr z,l9016h		;9013	28 01 	( . 
	inc e			;9015	1c 	. 
l9016h:
	rr e		;9016	cb 1b 	. . 
	jp nc,l90f4h		;9018	d2 f4 90 	. . . 
	push af			;901b	f5 	. 
	push af			;901c	f5 	. 
	rra			;901d	1f 	. 
	pop af			;901e	f1 	. 
	pop af			;901f	f1 	. 
l9020h:
	ld a,(078efh)		;9020	3a ef 78 	: . x 
	cp b			;9023	b8 	. 
	jp nz,l9030h		;9024	c2 30 90 	. 0 . 
	set 7,h		;9027	cb fc 	. . 
	ld a,002h		;9029	3e 02 	> . 
	out (018h),a		;902b	d3 18 	. . 
	jp l9036h		;902d	c3 36 90 	. 6 . 
l9030h:
	push af			;9030	f5 	. 
	bit 0,a		;9031	cb 47 	. G 
	ld a,000h		;9033	3e 00 	> . 
	pop af			;9035	f1 	. 
l9036h:
	bit 4,h		;9036	cb 64 	. d 
	jp nz,l90f9h		;9038	c2 f9 90 	. . . 
	ld a,b			;903b	78 	x 
	cp 00dh		;903c	fe 0d 	. . 
	jr z,l9067h		;903e	28 27 	( ' 
	cp 00ah		;9040	fe 0a 	. . 
	jp nz,l9057h		;9042	c2 57 90 	. W . 
	bit 0,d		;9045	cb 42 	. B 
	jr nz,l905eh		;9047	20 15 	  . 
	bit 5,h		;9049	cb 6c 	. l 
	jr z,l9073h		;904b	28 26 	( & 
l904dh:
	set 6,h		;904d	cb f4 	. . 
	ld a,002h		;904f	3e 02 	> . 
	out (018h),a		;9051	d3 18 	. . 
l9053h:
	or a			;9053	b7 	. 
	jp l907ah		;9054	c3 7a 90 	. z . 
l9057h:
	push hl			;9057	e5 	. 
	push hl			;9058	e5 	. 
	dec hl			;9059	2b 	+ 
	pop hl			;905a	e1 	. 
	pop hl			;905b	e1 	. 
	jr l9053h		;905c	18 f5 	. . 
l905eh:
	jr l904dh		;905e	18 ed 	. . 
l9060h:
	and 000h		;9060	e6 00 	. . 
	and 000h		;9062	e6 00 	. . 
	jp l904dh		;9064	c3 4d 90 	. M . 
l9067h:
	bit 2,d		;9067	cb 52 	. R 
	jr nz,l9060h		;9069	20 f5 	  . 
	bit 1,d		;906b	cb 4a 	. J 
	jr z,l9078h		;906d	28 09 	( . 
	ld a,000h		;906f	3e 00 	> . 
	set 5,h		;9071	cb ec 	. . 
l9073h:
	or a			;9073	b7 	. 
	ld a,000h		;9074	3e 00 	> . 
	jr l9053h		;9076	18 db 	. . 
l9078h:
	jr l9073h		;9078	18 f9 	. . 
l907ah:
	ld a,h			;907a	7c 	| 
	ld (078ech),a		;907b	32 ec 78 	2 . x 
	bit 5,l		;907e	cb 6d 	. m 
	jp nz,l9088h		;9080	c2 88 90 	. . . 
	bit 4,l		;9083	cb 65 	. e 
	jp z,l9096h		;9085	ca 96 90 	. . . 
l9088h:
	ld de,00036h		;9088	11 36 00 	. 6 . 
l908bh:
	in a,(01fh)		;908b	db 1f 	. . 
	bit 2,a		;908d	cb 57 	. W 
	jp nz,l90d7h		;908f	c2 d7 90 	. . . 
	xor a			;9092	af 	. 
	ld a,b			;9093	78 	x 
	exx			;9094	d9 	. 
	ret			;9095	c9 	. 
l9096h:
	push bc			;9096	c5 	. 
	bit 3,l		;9097	cb 5d 	. ] 
	jp z,l90a9h		;9099	ca a9 90 	. . . 
	ld bc,00008h		;909c	01 08 00 	. . . 
	call sub_896bh		;909f	cd 6b 89 	. k . 
	ld de,0006bh		;90a2	11 6b 00 	. k . 
l90a5h:
	pop bc			;90a5	c1 	. 
	jp l908bh		;90a6	c3 8b 90 	. . . 
l90a9h:
	bit 2,l		;90a9	cb 55 	. U 
	jp z,l90bah		;90ab	ca ba 90 	. . . 
	ld bc,00022h		;90ae	01 22 00 	. " . 
	call sub_896bh		;90b1	cd 6b 89 	. k . 
	ld de,000d5h		;90b4	11 d5 00 	. . . 
	jp l90a5h		;90b7	c3 a5 90 	. . . 
l90bah:
	bit 1,l		;90ba	cb 4d 	. M 
	jp z,l90cbh		;90bc	ca cb 90 	. . . 
	ld bc,00056h		;90bf	01 56 00 	. V . 
	call sub_896bh		;90c2	cd 6b 89 	. k . 
	ld de,001abh		;90c5	11 ab 01 	. . . 
	jp l90a5h		;90c8	c3 a5 90 	. . . 
l90cbh:
	ld bc,000c1h		;90cb	01 c1 00 	. . . 
	call sub_896bh		;90ce	cd 6b 89 	. k . 
	ld de,00355h		;90d1	11 55 03 	. U . 
	jp l90a5h		;90d4	c3 a5 90 	. . . 
l90d7h:
	dec de			;90d7	1b 	. 
	ld a,e			;90d8	7b 	{ 
	or d			;90d9	b2 	. 
	jp nz,l908bh		;90da	c2 8b 90 	. . . 
	ld a,001h		;90dd	3e 01 	> . 
	jp l90ech		;90df	c3 ec 90 	. . . 
l90e2h:
	ld a,(07f35h)		;90e2	3a 35 7f 	: 5  
	or 020h		;90e5	f6 20 	.   
	ld (07f35h),a		;90e7	32 35 7f 	2 5  
	ld a,000h		;90ea	3e 00 	> . 
l90ech:
	push af			;90ec	f5 	. 
	xor a			;90ed	af 	. 
	out (018h),a		;90ee	d3 18 	. . 
	pop af			;90f0	f1 	. 
	exx			;90f1	d9 	. 
	scf			;90f2	37 	7 
	ret			;90f3	c9 	. 
l90f4h:
	ld a,002h		;90f4	3e 02 	> . 
	jp l90ech		;90f6	c3 ec 90 	. . . 
l90f9h:
	ld a,h			;90f9	7c 	| 
	ld (078ech),a		;90fa	32 ec 78 	2 . x 
	bit 5,l		;90fd	cb 6d 	. m 
	jp nz,l9088h		;90ff	c2 88 90 	. . . 
	bit 4,l		;9102	cb 65 	. e 
	jp z,l9113h		;9104	ca 13 91 	. . . 
	ld a,004h		;9107	3e 04 	> . 
l9109h:
	dec a			;9109	3d 	= 
	jp nz,l9109h		;910a	c2 09 91 	. . . 
	ld de,00036h		;910d	11 36 00 	. 6 . 
	jp l908bh		;9110	c3 8b 90 	. . . 
l9113h:
	ld a,006h		;9113	3e 06 	> . 
l9115h:
	dec a			;9115	3d 	= 
	jp nz,l9115h		;9116	c2 15 91 	. . . 
	xor a			;9119	af 	. 
	jp l9096h		;911a	c3 96 90 	. . . 
sub_911dh:
	exx			;911d	d9 	. 
	ld a,(078edh)		;911e	3a ed 78 	: . x 
	bit 5,a		;9121	cb 6f 	. o 
	jp z,l913ch		;9123	ca 3c 91 	. < . 
	ld de,00014h		;9126	11 14 00 	. . . 
sub_9129h:
	ld b,004h		;9129	06 04 	. . 
l912bh:
	in a,(01fh)		;912b	db 1f 	. . 
	and b			;912d	a0 	. 
	jp nz,l916eh		;912e	c2 6e 91 	. n . 
	dec de			;9131	1b 	. 
	ld a,e			;9132	7b 	{ 
	or d			;9133	b2 	. 
	jp nz,l912bh		;9134	c2 2b 91 	. + . 
	scf			;9137	37 	7 
	ld a,0ffh		;9138	3e ff 	> . 
	exx			;913a	d9 	. 
	ret			;913b	c9 	. 
l913ch:
	bit 4,a		;913c	cb 67 	. g 
	jp z,l9147h		;913e	ca 47 91 	. G . 
	ld de,00028h		;9141	11 28 00 	. ( . 
	jp sub_9129h		;9144	c3 29 91 	. ) . 
l9147h:
	bit 3,a		;9147	cb 5f 	. _ 
	jp z,l9152h		;9149	ca 52 91 	. R . 
	ld de,00050h		;914c	11 50 00 	. P . 
	jp sub_9129h		;914f	c3 29 91 	. ) . 
l9152h:
	bit 2,a		;9152	cb 57 	. W 
	jp z,l915dh		;9154	ca 5d 91 	. ] . 
	ld de,000a0h		;9157	11 a0 00 	. . . 
	jp sub_9129h		;915a	c3 29 91 	. ) . 
l915dh:
	bit 1,a		;915d	cb 4f 	. O 
	jp z,l9168h		;915f	ca 68 91 	. h . 
	ld de,00140h		;9162	11 40 01 	. @ . 
	jp sub_9129h		;9165	c3 29 91 	. ) . 
l9168h:
	ld de,00280h		;9168	11 80 02 	. . . 
	jp sub_9129h		;916b	c3 29 91 	. ) . 
l916eh:
	ld bc,l8408h		;916e	01 08 84 	. . . 
	ld e,000h		;9171	1e 00 	. . 
	ld a,(078ech)		;9173	3a ec 78 	: . x 
	ld h,a			;9176	67 	g 
	ld a,(078edh)		;9177	3a ed 78 	: . x 
	ld l,a			;917a	6f 	o 
	ld a,(078eeh)		;917b	3a ee 78 	: . x 
	ld d,a			;917e	57 	W 
	and 080h		;917f	e6 80 	. . 
	jr z,l9184h		;9181	28 01 	( . 
	inc c			;9183	0c 	. 
l9184h:
	call sub_918ah		;9184	cd 8a 91 	. . . 
	jp l8febh		;9187	c3 eb 8f 	. . . 
sub_918ah:
	bit 5,l		;918a	cb 6d 	. m 
	jr z,l918fh		;918c	28 01 	( . 
l918eh:
	ret			;918e	c9 	. 
l918fh:
	push bc			;918f	c5 	. 
	bit 4,l		;9190	cb 65 	. e 
	jp z,l91a1h		;9192	ca a1 91 	. . . 
	ld bc,00002h		;9195	01 02 00 	. . . 
	call sub_896bh		;9198	cd 6b 89 	. k . 
	and 0ffh		;919b	e6 ff 	. . 
l919dh:
	pop bc			;919d	c1 	. 
	jp l918eh		;919e	c3 8e 91 	. . . 
l91a1h:
	bit 3,l		;91a1	cb 5d 	. ] 
	jp z,l91b2h		;91a3	ca b2 91 	. . . 
	ld bc,0000eh		;91a6	01 0e 00 	. . . 
	call sub_896bh		;91a9	cd 6b 89 	. k . 
	ld b,000h		;91ac	06 00 	. . 
	or a			;91ae	b7 	. 
	jp l919dh		;91af	c3 9d 91 	. . . 
l91b2h:
	bit 2,l		;91b2	cb 55 	. U 
	jp z,l91c2h		;91b4	ca c2 91 	. . . 
	ld bc,00028h		;91b7	01 28 00 	. ( . 
	call sub_896bh		;91ba	cd 6b 89 	. k . 
	or a			;91bd	b7 	. 
	or a			;91be	b7 	. 
	jp l919dh		;91bf	c3 9d 91 	. . . 
l91c2h:
	bit 1,l		;91c2	cb 4d 	. M 
	jp z,l91d6h		;91c4	ca d6 91 	. . . 
	ld bc,0005ch		;91c7	01 5c 00 	. \ . 
	call sub_896bh		;91ca	cd 6b 89 	. k . 
	and 0ffh		;91cd	e6 ff 	. . 
	and 0ffh		;91cf	e6 ff 	. . 
	and 0ffh		;91d1	e6 ff 	. . 
	jp l919dh		;91d3	c3 9d 91 	. . . 
l91d6h:
	ld bc,000c7h		;91d6	01 c7 00 	. . . 
	call sub_896bh		;91d9	cd 6b 89 	. k . 
	dec bc			;91dc	0b 	. 
	or a			;91dd	b7 	. 
	jp l919dh		;91de	c3 9d 91 	. . . 
sub_91e1h:
	or a			;91e1	b7 	. 
	bit 0,a		;91e2	cb 47 	. G 
	bit 0,a		;91e4	cb 47 	. G 
	bit 0,a		;91e6	cb 47 	. G 
	call sub_91ech		;91e8	cd ec 91 	. . . 
	ret			;91eb	c9 	. 
sub_91ech:
	push bc			;91ec	c5 	. 
	ld a,l			;91ed	7d 	} 
	and 022h		;91ee	e6 22 	. " 
	jp z,l9203h		;91f0	ca 03 92 	. . . 
	push af			;91f3	f5 	. 
	push af			;91f4	f5 	. 
	pop af			;91f5	f1 	. 
	pop af			;91f6	f1 	. 
l91f7h:
	dec bc			;91f7	0b 	. 
	bit 0,a		;91f8	cb 47 	. G 
	or a			;91fa	b7 	. 
	pop bc			;91fb	c1 	. 
	call sub_918ah		;91fc	cd 8a 91 	. . . 
	call sub_918ah		;91ff	cd 8a 91 	. . . 
	ret			;9202	c9 	. 
l9203h:
	ld a,l			;9203	7d 	} 
	and 018h		;9204	e6 18 	. . 
	jr z,l920eh		;9206	28 06 	( . 
	ld a,000h		;9208	3e 00 	> . 
	xor a			;920a	af 	. 
	jp l91f7h		;920b	c3 f7 91 	. . . 
l920eh:
	xor a			;920e	af 	. 
	jr l91f7h		;920f	18 e6 	. . 
l9211h:
	ld a,(078eeh)		;9211	3a ee 78 	: . x 
	bit 2,a		;9214	cb 57 	. W 
	jr z,l921ch		;9216	28 04 	( . 
	ld a,00dh		;9218	3e 0d 	> . 
	jr l922ah		;921a	18 0e 	. . 
l921ch:
	bit 0,a		;921c	cb 47 	. G 
	jr z,l9224h		;921e	28 04 	( . 
	ld a,00ah		;9220	3e 0a 	> . 
	jr l922ah		;9222	18 06 	. . 
l9224h:
	ld a,00dh		;9224	3e 0d 	> . 
	ld (hl),a			;9226	77 	w 
	inc hl			;9227	23 	# 
	ld a,00ah		;9228	3e 0a 	> . 
l922ah:
	ld (hl),a			;922a	77 	w 
	inc hl			;922b	23 	# 
	ret			;922c	c9 	. 
	im 1		;922d	ed 56 	. V 
	di			;922f	f3 	. 
	ld a,001h		;9230	3e 01 	> . 
	out (019h),a		;9232	d3 19 	. . 
	in a,(015h)		;9234	db 15 	. . 
	and 0bfh		;9236	e6 bf 	. . 
	nop			;9238	00 	. 
	nop			;9239	00 	. 
	out (015h),a		;923a	d3 15 	. . 
	jp 0fffah		;923c	c3 fa ff 	. . . 
l923fh:
	ld a,001h		;923f	3e 01 	> . 
	ld (07900h),a		;9241	32 00 79 	2 . y 
	out (019h),a		;9244	d3 19 	. . 
	jp 0fffdh		;9246	c3 fd ff 	. . . 
sub_9249h:
	push hl			;9249	e5 	. 
	push hl			;924a	e5 	. 
	push af			;924b	f5 	. 
	push de			;924c	d5 	. 
	ld hl,00009h		;924d	21 09 00 	! . . 
	add hl,sp			;9250	39 	9 
	ld d,(hl)			;9251	56 	V 
	ld a,(07900h)		;9252	3a 00 79 	: . y 
	ld (hl),a			;9255	77 	w 
	dec hl			;9256	2b 	+ 
	ld e,(hl)			;9257	5e 	^ 
	dec hl			;9258	2b 	+ 
	ld a,(de)			;9259	1a 	. 
	ld (07900h),a		;925a	32 00 79 	2 . y 
	out (019h),a		;925d	d3 19 	. . 
	inc de			;925f	13 	. 
	ld (hl),092h		;9260	36 92 	6 . 
	dec hl			;9262	2b 	+ 
	ld (hl),06eh		;9263	36 6e 	6 n 
	ld a,(de)			;9265	1a 	. 
	ld l,a			;9266	6f 	o 
	inc de			;9267	13 	. 
	ld a,(de)			;9268	1a 	. 
	ld h,a			;9269	67 	g 
	pop de			;926a	d1 	. 
	pop af			;926b	f1 	. 
	ex (sp),hl			;926c	e3 	. 
	ret			;926d	c9 	. 
	push af			;926e	f5 	. 
	push hl			;926f	e5 	. 
	ld hl,00005h		;9270	21 05 00 	! . . 
	add hl,sp			;9273	39 	9 
	ld a,(hl)			;9274	7e 	~ 
	ld (07900h),a		;9275	32 00 79 	2 . y 
	out (019h),a		;9278	d3 19 	. . 
	pop hl			;927a	e1 	. 
	pop af			;927b	f1 	. 
	inc sp			;927c	33 	3 
	inc sp			;927d	33 	3 
	ret			;927e	c9 	. 
sub_927fh:
	ld hl,07964h		;927f	21 64 79 	! d y 
	bit 7,(hl)		;9282	cb 7e 	. ~ 
	jr nz,l92a0h		;9284	20 1a 	  . 
l9286h:
	ld hl,07965h		;9286	21 65 79 	! e y 
	bit 4,(hl)		;9289	cb 66 	. f 
	jr z,l929ah		;928b	28 0d 	( . 
	res 4,(hl)		;928d	cb a6 	. . 
	ld a,(079e8h)		;928f	3a e8 79 	: . y 
l9292h:
	ld de,(07920h)		;9292	ed 5b 20 79 	. [   y 
	call sub_8468h		;9296	cd 68 84 	. h . 
	ret			;9299	c9 	. 
l929ah:
	set 4,(hl)		;929a	cb e6 	. . 
	ld a,0f7h		;929c	3e f7 	> . 
	jr l9292h		;929e	18 f2 	. . 
l92a0h:
	ld hl,(07ffdh)		;92a0	2a fd 7f 	* .  
	xor a			;92a3	af 	. 
	cp h			;92a4	bc 	. 
	jr nz,l9286h		;92a5	20 df 	  . 
	cp l			;92a7	bd 	. 
	jr nz,l9286h		;92a8	20 dc 	  . 
	ld a,(07965h)		;92aa	3a 65 79 	: e y 
	xor 010h		;92ad	ee 10 	. . 
	ld (07965h),a		;92af	32 65 79 	2 e y 
	bit 4,a		;92b2	cb 67 	. g 
	jr nz,l92cch		;92b4	20 16 	  . 
	ld a,020h		;92b6	3e 20 	>   
	ld de,00000h		;92b8	11 00 00 	. . . 
	ld b,060h		;92bb	06 60 	. ` 
	call sub_86b3h		;92bd	cd b3 86 	. . . 
	ld hl,07f40h		;92c0	21 40 7f 	! @  
	ld de,00107h		;92c3	11 07 01 	. . . 
	ld b,02dh		;92c6	06 2d 	. - 
	call sub_8687h		;92c8	cd 87 86 	. . . 
	ret			;92cb	c9 	. 
l92cch:
	ld de,00000h		;92cc	11 00 00 	. . . 
	ld a,0f7h		;92cf	3e f7 	> . 
	ld b,019h		;92d1	06 19 	. . 
	call sub_86b3h		;92d3	cd b3 86 	. . . 
	ld de,00117h		;92d6	11 17 01 	. . . 
	ld a,0f7h		;92d9	3e f7 	> . 
	ld b,019h		;92db	06 19 	. . 
	call sub_86b3h		;92dd	cd b3 86 	. . . 
	ld de,00107h		;92e0	11 07 01 	. . . 
	ld hl,allreset_start		;92e3	21 ec 92 	! . . 
	ld b,009h		;92e6	06 09 	. . 
	call sub_84cdh		;92e8	cd cd 84 	. . . 
	ret			;92eb	c9 	. 

; BLOCK 'allreset' (start 0x92ec end 0x92f4)
allreset_start:
	defb 041h		;92ec	41 	A 
	defb 04ch		;92ed	4c 	L 
	defb 04ch		;92ee	4c 	L 
	defb 020h		;92ef	20 	  
	defb 052h		;92f0	52 	R 
	defb 045h		;92f1	45 	E 
	defb 053h		;92f2	53 	S 
	defb 045h		;92f3	45 	E 
allreset_end:
	ld d,h			;92f4	54 	T 
sub_92f5h:
	ld hl,07901h		;92f5	21 01 79 	! . y 
	set 0,(hl)		;92f8	cb c6 	. . 
l92fah:
	call sub_8564h		;92fa	cd 64 85 	. d . 
	ret			;92fd	c9 	. 
sub_92feh:
	ld hl,07901h		;92fe	21 01 79 	! . y 
	res 0,(hl)		;9301	cb 86 	. . 
	jr l92fah		;9303	18 f5 	. . 
sub_9305h:
	push af			;9305	f5 	. 
	ld a,001h		;9306	3e 01 	> . 
l9308h:
	ld (07900h),a		;9308	32 00 79 	2 . y 
	out (019h),a		;930b	d3 19 	. . 
	pop af			;930d	f1 	. 
	ret			;930e	c9 	. 
sub_930fh:
	push af			;930f	f5 	. 
	ld a,002h		;9310	3e 02 	> . 
	jr l9308h		;9312	18 f4 	. . 
sub_9314h:
	push af			;9314	f5 	. 
	ld a,003h		;9315	3e 03 	> . 
	jr l9308h		;9317	18 ef 	. . 
sub_9319h:
	push af			;9319	f5 	. 
	ld a,004h		;931a	3e 04 	> . 
	jr l9308h		;931c	18 ea 	. . 
sub_931eh:
	push af			;931e	f5 	. 
	ld a,005h		;931f	3e 05 	> . 
	jr l9308h		;9321	18 e5 	. . 
sub_9323h:
	push af			;9323	f5 	. 
	ld a,007h		;9324	3e 07 	> . 
	jr l9308h		;9326	18 e0 	. . 
sub_9328h:
	ld a,(07965h)		;9328	3a 65 79 	: e y 
	and 0e0h		;932b	e6 e0 	. . 
	or 001h		;932d	f6 01 	. . 
	ld (07965h),a		;932f	32 65 79 	2 e y 
	ret			;9332	c9 	. 
sub_9333h:
	ld hl,07d00h		;9333	21 00 7d 	! . } 
	ld d,h			;9336	54 	T 
	ld e,l			;9337	5d 	] 
	inc de			;9338	13 	. 
	ld (hl),00dh		;9339	36 0d 	6 . 
	ld bc,000ffh		;933b	01 ff 00 	. . . 
	ldir		;933e	ed b0 	. . 
	ret			;9340	c9 	. 
sub_9341h:
	ld hl,07903h		;9341	21 03 79 	! . y 
	res 1,(hl)		;9344	cb 8e 	. . 
	call sub_854dh		;9346	cd 4d 85 	. M . 
	ret			;9349	c9 	. 
l934ah:
	call sub_9363h		;934a	cd 63 93 	. c . 
	in a,(01fh)		;934d	db 1f 	. . 
	jr l9359h		;934f	18 08 	. . 
sub_9351h:
	call sub_9363h		;9351	cd 63 93 	. c . 
	ld a,05ah		;9354	3e 5a 	> Z 
	ld (07f20h),a		;9356	32 20 7f 	2    
l9359h:
	call 0ff43h		;9359	cd 43 ff 	. C . 
	call 0ff55h		;935c	cd 55 ff 	. U . 
	call sub_8cfeh		;935f	cd fe 8c 	. . . 
	ret			;9362	c9 	. 
sub_9363h:
	ld hl,07f20h		;9363	21 20 7f 	!    
	ld b,008h		;9366	06 08 	. . 
	ld a,0a5h		;9368	3e a5 	> . 
l936ah:
	ld (hl),a			;936a	77 	w 
	inc hl			;936b	23 	# 
	djnz l936ah		;936c	10 fc 	. . 
	ret			;936e	c9 	. 
sub_936fh:
	call 0ff9ah		;936f	cd 9a ff 	. . . 
	jr nc,l9391h		;9372	30 1d 	0 . 
l9374h:
	ld hl,07965h		;9374	21 65 79 	! e y 
	res 1,(hl)		;9377	cb 8e 	. . 
	ret			;9379	c9 	. 
sub_937ah:
	ld hl,(07f3ah)		;937a	2a 3a 7f 	* :  
	dec hl			;937d	2b 	+ 
	ld a,(hl)			;937e	7e 	~ 
	inc a			;937f	3c 	< 
	jr z,l9374h		;9380	28 f2 	( . 
	ld (07f3ah),hl		;9382	22 3a 7f 	" :  
	call sub_930fh		;9385	cd 0f 93 	. . . 
	call 0ff94h		;9388	cd 94 ff 	. . . 
	call sub_9305h		;938b	cd 05 93 	. . . 
	ld (07f3ah),hl		;938e	22 3a 7f 	" :  
l9391h:
	ld hl,079d9h		;9391	21 d9 79 	! . y 
	set 3,(hl)		;9394	cb de 	. . 
	ld hl,079dah		;9396	21 da 79 	! . y 
	res 5,(hl)		;9399	cb ae 	. . 
	ld hl,07965h		;939b	21 65 79 	! e y 
	set 1,(hl)		;939e	cb ce 	. . 
	call 0ffa0h		;93a0	cd a0 ff 	. . . 
	ret			;93a3	c9 	. 
	call sub_a49dh		;93a4	cd 9d a4 	. . . 
	cp 023h		;93a7	fe 23 	. # 
	jr nz,l93fdh		;93a9	20 52 	  R 
	call sub_a49dh		;93ab	cd 9d a4 	. . . 
	cp 052h		;93ae	fe 52 	. R 
	jr z,l93c6h		;93b0	28 14 	( . 
	cp 030h		;93b2	fe 30 	. 0 
	jp c,l8379h		;93b4	da 79 83 	. y . 
	jp z,l835eh		;93b7	ca 5e 83 	. ^ . 
	cp 03ah		;93ba	fe 3a 	. : 
	jp nc,l8379h		;93bc	d2 79 83 	. y . 
	cp 038h		;93bf	fe 38 	. 8 
	jp nc,l835eh		;93c1	d2 5e 83 	. ^ . 
	and 00fh		;93c4	e6 0f 	. . 
l93c6h:
	ld (079b5h),a		;93c6	32 b5 79 	2 . y 
	call sub_a49dh		;93c9	cd 9d a4 	. . . 
	cp 02ch		;93cc	fe 2c 	. , 
	jp nz,l8379h		;93ce	c2 79 83 	. y . 
l93d1h:
	call sub_930fh		;93d1	cd 0f 93 	. . . 
	call 0fffdh		;93d4	cd fd ff 	. . . 
	call sub_9305h		;93d7	cd 05 93 	. . . 
	ret c			;93da	d8 	. 
	call sub_930fh		;93db	cd 0f 93 	. . . 
	call 0ffcdh		;93de	cd cd ff 	. . . 
	call sub_9305h		;93e1	cd 05 93 	. . . 
	ret c			;93e4	d8 	. 
	ld a,(079b5h)		;93e5	3a b5 79 	: . y 
	cp 052h		;93e8	fe 52 	. R 
	jr z,l9406h		;93ea	28 1a 	( . 
	ld (07900h),a		;93ec	32 00 79 	2 . y 
	out (019h),a		;93ef	d3 19 	. . 
	ld (079b5h),ix		;93f1	dd 22 b5 79 	. " . y 
	ld hl,l940ch		;93f5	21 0c 94 	! . . 
	push hl			;93f8	e5 	. 
	ld hl,(07f18h)		;93f9	2a 18 7f 	* .  
	jp (hl)			;93fc	e9 	. 
l93fdh:
	dec ix		;93fd	dd 2b 	. + 
	ld a,001h		;93ff	3e 01 	> . 
	ld (079b5h),a		;9401	32 b5 79 	2 . y 
	jr l93d1h		;9404	18 cb 	. . 
l9406h:
	call sub_930fh		;9406	cd 0f 93 	. . . 
	call 0fefbh		;9409	cd fb fe 	. . . 
l940ch:
	call sub_9305h		;940c	cd 05 93 	. . . 
	ld ix,(079b5h)		;940f	dd 2a b5 79 	. * . y 
	and a			;9413	a7 	. 
	ret			;9414	c9 	. 
l9415h:
	call sub_9305h		;9415	cd 05 93 	. . . 
	call sub_b1cah		;9418	cd ca b1 	. . . 
l941bh:
	call sub_9314h		;941b	cd 14 93 	. . . 
	ret			;941e	c9 	. 
l941fh:
	call sub_9305h		;941f	cd 05 93 	. . . 
	call sub_b02eh		;9422	cd 2e b0 	. . . 
	jr l941bh		;9425	18 f4 	. . 
l9427h:
	call sub_9305h		;9427	cd 05 93 	. . . 
	call sub_9bach		;942a	cd ac 9b 	. . . 
	jr l941bh		;942d	18 ec 	. . 
	call sub_9305h		;942f	cd 05 93 	. . . 
	call sub_b1cah		;9432	cd ca b1 	. . . 
l9435h:
	call sub_9319h		;9435	cd 19 93 	. . . 
	ret			;9438	c9 	. 
l9439h:
	call sub_9305h		;9439	cd 05 93 	. . . 
	call sub_9bach		;943c	cd ac 9b 	. . . 
	jr l9435h		;943f	18 f4 	. . 
sub_9441h:
	call sub_9323h		;9441	cd 23 93 	. # . 
	jp 0fff9h		;9444	c3 f9 ff 	. . . 
l9447h:
	ld hl,07903h		;9447	21 03 79 	! . y 
	set 2,(hl)		;944a	cb d6 	. . 
	xor a			;944c	af 	. 
	ld b,008h		;944d	06 08 	. . 
	ld hl,07998h		;944f	21 98 79 	! . y 
l9452h:
	cp (hl)			;9452	be 	. 
	jr nz,l945dh		;9453	20 08 	  . 
	inc hl			;9455	23 	# 
	djnz l9452h		;9456	10 fa 	. . 
	ld hl,07903h		;9458	21 03 79 	! . y 
	res 2,(hl)		;945b	cb 96 	. . 
l945dh:
	call sub_854dh		;945d	cd 4d 85 	. M . 
	call sub_ac03h		;9460	cd 03 ac 	. . . 
	ld hl,(079e1h)		;9463	2a e1 79 	* . y 
	inc hl			;9466	23 	# 
	ld (07f3ah),hl		;9467	22 3a 7f 	" :  
	call sub_ae9dh		;946a	cd 9d ae 	. . . 
	call sub_a07eh		;946d	cd 7e a0 	. ~ . 
	ld hl,07965h		;9470	21 65 79 	! e y 
	set 0,(hl)		;9473	cb c6 	. . 
	call 0ff23h		;9475	cd 23 ff 	. # . 
	jp l94a8h		;9478	c3 a8 94 	. . . 
l947bh:
	cp 005h		;947b	fe 05 	. . 
	jr c,l949ah		;947d	38 1b 	8 . 
	cp 006h		;947f	fe 06 	. . 
	jr z,l94a3h		;9481	28 20 	(   
	cp 010h		;9483	fe 10 	. . 
	jp c,l94d2h		;9485	da d2 94 	. . . 
	cp 012h		;9488	fe 12 	. . 
	jp z,l94d2h		;948a	ca d2 94 	. . . 
	cp 015h		;948d	fe 15 	. . 
	jp nc,l94d2h		;948f	d2 d2 94 	. . . 
	call sub_9935h		;9492	cd 35 99 	. 5 . 
	call sub_854dh		;9495	cd 4d 85 	. M . 
	jr l94a8h		;9498	18 0e 	. . 
l949ah:
	cp 000h		;949a	fe 00 	. . 
	jr z,l94a8h		;949c	28 0a 	( . 
l949eh:
	call sub_98fah		;949e	cd fa 98 	. . . 
	jr l94a8h		;94a1	18 05 	. . 
l94a3h:
	call sub_9351h		;94a3	cd 51 93 	. Q . 
	jr l94a8h		;94a6	18 00 	. . 
l94a8h:
	call sub_b02eh		;94a8	cd 2e b0 	. . . 
l94abh:
	ld a,(07906h)		;94ab	3a 06 79 	: . y 
	cp 0f0h		;94ae	fe f0 	. . 
	jr z,l949eh		;94b0	28 ec 	( . 
	cp 0f1h		;94b2	fe f1 	. . 
	jp z,la0dfh		;94b4	ca df a0 	. . . 
	call sub_ba11h		;94b7	cd 11 ba 	. . . 
	jr nc,l94a8h		;94ba	30 ec 	0 . 
	ld hl,0796eh		;94bc	21 6e 79 	! n y 
	res 7,(hl)		;94bf	cb be 	. . 
	cp 0f2h		;94c1	fe f2 	. . 
	jr z,l94a8h		;94c3	28 e3 	( . 
	cp 0f3h		;94c5	fe f3 	. . 
	jr z,l94a8h		;94c7	28 df 	( . 
	cp 0f7h		;94c9	fe f7 	. . 
	jr z,l94a8h		;94cb	28 db 	( . 
	cp 020h		;94cd	fe 20 	.   
	jp c,l947bh		;94cf	da 7b 94 	. { . 
l94d2h:
	ld hl,07902h		;94d2	21 02 79 	! . y 
	bit 5,(hl)		;94d5	cb 6e 	. n 
	jp nz,l984ch		;94d7	c2 4c 98 	. L . 
	cp 020h		;94da	fe 20 	.   
	jp c,l9717h		;94dc	da 17 97 	. . . 
	cp 0f8h		;94df	fe f8 	. . 
	jp z,l9808h		;94e1	ca 08 98 	. . . 
	cp 0f4h		;94e4	fe f4 	. . 
	jp nz,l94f4h		;94e6	c2 f4 94 	. . . 
	ld hl,079dah		;94e9	21 da 79 	! . y 
	bit 0,(hl)		;94ec	cb 46 	. F 
	jp z,l94a8h		;94ee	ca a8 94 	. . . 
	jp l9803h		;94f1	c3 03 98 	. . . 
l94f4h:
	ld a,(079dah)		;94f4	3a da 79 	: . y 
	bit 1,a		;94f7	cb 4f 	. O 
	jp nz,l94a8h		;94f9	c2 a8 94 	. . . 
	ld hl,079dfh		;94fc	21 df 79 	! . y 
	res 0,(hl)		;94ff	cb 86 	. . 
	bit 0,a		;9501	cb 47 	. G 
	jp z,l9661h		;9503	ca 61 96 	. a . 
	call sub_a796h		;9506	cd 96 a7 	. . . 
	ld a,(07f14h)		;9509	3a 14 7f 	: .  
	cp 0d0h		;950c	fe d0 	. . 
	jp z,l9661h		;950e	ca 61 96 	. a . 
	ld hl,07964h		;9511	21 64 79 	! d y 
	res 4,(hl)		;9514	cb a6 	. . 
	ld a,(07906h)		;9516	3a 06 79 	: . y 
	cp 02ah		;9519	fe 2a 	. * 
	jr z,l9535h		;951b	28 18 	( . 
	cp 02bh		;951d	fe 2b 	. + 
	jr z,l9535h		;951f	28 14 	( . 
	cp 02dh		;9521	fe 2d 	. - 
	jr z,l9535h		;9523	28 10 	( . 
	cp 02fh		;9525	fe 2f 	. / 
	jr z,l9535h		;9527	28 0c 	( . 
	cp 05eh		;9529	fe 5e 	. ^ 
	jr z,l9535h		;952b	28 08 	( . 
	cp 03ch		;952d	fe 3c 	. < 
	jr c,l9581h		;952f	38 50 	8 P 
	cp 03fh		;9531	fe 3f 	. ? 
	jr nc,l9581h		;9533	30 4c 	0 L 
l9535h:
	push af			;9535	f5 	. 
	call sub_a7a9h		;9536	cd a9 a7 	. . . 
	pop af			;9539	f1 	. 
	inc iy		;953a	fd 23 	. # 
	ld (iy+000h),a		;953c	fd 77 00 	. w . 
l953fh:
	ld hl,0fefeh		;953f	21 fe fe 	! . . 
	ld (07906h),hl		;9542	22 06 79 	" . y 
	ld hl,07d00h		;9545	21 00 7d 	! . } 
	ld (07908h),hl		;9548	22 08 79 	" . y 
	push iy		;954b	fd e5 	. . 
	pop de			;954d	d1 	. 
	ex de,hl			;954e	eb 	. 
	xor a			;954f	af 	. 
	sbc hl,de		;9550	ed 52 	. R 
	ld a,l			;9552	7d 	} 
	inc a			;9553	3c 	< 
	ld (0790ah),a		;9554	32 0a 79 	2 . y 
l9557h:
	call sub_a7f4h		;9557	cd f4 a7 	. . . 
l955ah:
	ld hl,079dah		;955a	21 da 79 	! . y 
	set 5,(hl)		;955d	cb ee 	. . 
	res 7,(hl)		;955f	cb be 	. . 
	ld hl,079dfh		;9561	21 df 79 	! . y 
	res 0,(hl)		;9564	cb 86 	. . 
	ld hl,079d8h		;9566	21 d8 79 	! . y 
	res 4,(hl)		;9569	cb a6 	. . 
	call sub_b1cah		;956b	cd ca b1 	. . . 
	jp l94a8h		;956e	c3 a8 94 	. . . 
l9571h:
	and 017h		;9571	e6 17 	. . 
	jr nz,l9557h		;9573	20 e2 	  . 
	ld a,(07f35h)		;9575	3a 35 7f 	: 5  
	and 006h		;9578	e6 06 	. . 
	jr z,l955ah		;957a	28 de 	( . 
	call sub_aa11h		;957c	cd 11 aa 	. . . 
	jr l955ah		;957f	18 d9 	. . 
l9581h:
	cp 0feh		;9581	fe fe 	. . 
	jp nz,l9661h		;9583	c2 61 96 	. a . 
	ld a,(07907h)		;9586	3a 07 79 	: . y 
	cp 080h		;9589	fe 80 	. . 
	jp c,l9661h		;958b	da 61 96 	. a . 
	jr nz,l9595h		;958e	20 05 	  . 
	ld hl,07964h		;9590	21 64 79 	! d y 
	set 4,(hl)		;9593	cb e6 	. . 
l9595h:
	cp 0bfh		;9595	fe bf 	. . 
	jr z,l95c7h		;9597	28 2e 	( . 
	cp 081h		;9599	fe 81 	. . 
	jp z,l9661h		;959b	ca 61 96 	. a . 
	cp 082h		;959e	fe 82 	. . 
	jp z,l9661h		;95a0	ca 61 96 	. a . 
	cp 083h		;95a3	fe 83 	. . 
	jr nz,l95c2h		;95a5	20 1b 	  . 
	call sub_a7a9h		;95a7	cd a9 a7 	. . . 
	inc iy		;95aa	fd 23 	. # 
	ld a,052h		;95ac	3e 52 	> R 
	ld (iy+000h),a		;95ae	fd 77 00 	. w . 
	inc iy		;95b1	fd 23 	. # 
	ld a,04fh		;95b3	3e 4f 	> O 
	ld (iy+000h),a		;95b5	fd 77 00 	. w . 
	inc iy		;95b8	fd 23 	. # 
	ld a,054h		;95ba	3e 54 	> T 
	ld (iy+000h),a		;95bc	fd 77 00 	. w . 
	jp l953fh		;95bf	c3 3f 95 	. ? . 
l95c2h:
	cp 0a1h		;95c2	fe a1 	. . 
	jp nc,l9661h		;95c4	d2 61 96 	. a . 
l95c7h:
	call sub_9333h		;95c7	cd 33 93 	. 3 . 
	ld hl,07f36h		;95ca	21 36 7f 	! 6  
	res 4,(hl)		;95cd	cb a6 	. . 
	set 1,(hl)		;95cf	cb ce 	. . 
	dec hl			;95d1	2b 	+ 
	res 5,(hl)		;95d2	cb ae 	. . 
	ld a,(079dah)		;95d4	3a da 79 	: . y 
	and 0e0h		;95d7	e6 e0 	. . 
	ld (079dah),a		;95d9	32 da 79 	2 . y 
	ld hl,07965h		;95dc	21 65 79 	! e y 
	res 2,(hl)		;95df	cb 96 	. . 
	ld a,(07907h)		;95e1	3a 07 79 	: . y 
	cp 084h		;95e4	fe 84 	. . 
	ld hl,079d8h		;95e6	21 d8 79 	! . y 
	jr nz,l95f3h		;95e9	20 08 	  . 
	bit 4,(hl)		;95eb	cb 66 	. f 
	jr z,l95f3h		;95ed	28 04 	( . 
	res 4,(hl)		;95ef	cb a6 	. . 
	jr l960fh		;95f1	18 1c 	. . 
l95f3h:
	res 4,(hl)		;95f3	cb a6 	. . 
	call sub_930fh		;95f5	cd 0f 93 	. . . 
	call 0ff13h		;95f8	cd 13 ff 	. . . 
	call sub_9305h		;95fb	cd 05 93 	. . . 
	ld ix,07d00h		;95fe	dd 21 00 7d 	. ! . } 
	jr c,l964dh		;9602	38 49 	8 I 
	call sub_818ah		;9604	cd 8a 81 	. . . 
	call sub_81bbh		;9607	cd bb 81 	. . . 
	call l81ach		;960a	cd ac 81 	. . . 
	jr c,l964dh		;960d	38 3e 	8 > 
l960fh:
	call sub_a752h		;960f	cd 52 a7 	. R . 
	ld a,(07964h)		;9612	3a 64 79 	: d y 
	ld hl,079dfh		;9615	21 df 79 	! . y 
	bit 4,a		;9618	cb 67 	. g 
	jr z,l9620h		;961a	28 04 	( . 
	bit 5,a		;961c	cb 6f 	. o 
	jr nz,l9649h		;961e	20 29 	  ) 
l9620h:
	res 0,(hl)		;9620	cb 86 	. . 
l9622h:
	ld hl,07964h		;9622	21 64 79 	! d y 
	res 4,(hl)		;9625	cb a6 	. . 
	ld hl,079dah		;9627	21 da 79 	! . y 
	set 0,(hl)		;962a	cb c6 	. . 
	ld a,(07904h)		;962c	3a 04 79 	: . y 
	push af			;962f	f5 	. 
	and 0bfh		;9630	e6 bf 	. . 
	ld (07904h),a		;9632	32 04 79 	2 . y 
	call sub_a85bh		;9635	cd 5b a8 	. [ . 
	ld hl,07904h		;9638	21 04 79 	! . y 
	pop bc			;963b	c1 	. 
	ld (hl),b			;963c	70 	p 
	jr c,l964dh		;963d	38 0e 	8 . 
	ld hl,07901h		;963f	21 01 79 	! . y 
	res 0,(hl)		;9642	cb 86 	. . 
	call sub_854dh		;9644	cd 4d 85 	. M . 
	jr l9655h		;9647	18 0c 	. . 
l9649h:
	set 0,(hl)		;9649	cb c6 	. . 
	jr l9622h		;964b	18 d5 	. . 
l964dh:
	call errorin_end+1		;964d	cd 5b a6 	. [ . 
	jr l9655h		;9650	18 03 	. . 
l9652h:
	call sub_b1cah		;9652	cd ca b1 	. . . 
l9655h:
	jp l94a8h		;9655	c3 a8 94 	. . . 
l9658h:
	ld hl,07f35h		;9658	21 35 7f 	! 5  
	bit 0,(hl)		;965b	cb 46 	. F 
	jr z,l9652h		;965d	28 f3 	( . 
	jr l9695h		;965f	18 34 	. 4 
l9661h:
	ld a,(079dah)		;9661	3a da 79 	: . y 
	bit 5,a		;9664	cb 6f 	. o 
	jp z,l9571h		;9666	ca 71 95 	. q . 
	bit 0,a		;9669	cb 47 	. G 
	jp nz,l9557h		;966b	c2 57 95 	. W . 
	bit 6,a		;966e	cb 77 	. w 
	jr nz,l9652h		;9670	20 e0 	  . 
	ld a,(07906h)		;9672	3a 06 79 	: . y 
	cp 0feh		;9675	fe fe 	. . 
	jr nz,l9652h		;9677	20 d9 	  . 
	ld a,(07907h)		;9679	3a 07 79 	: . y 
	cp 080h		;967c	fe 80 	. . 
	jr c,l9652h		;967e	38 d2 	8 . 
	jr z,l968eh		;9680	28 0c 	( . 
	cp 0bfh		;9682	fe bf 	. . 
	jr z,l968eh		;9684	28 08 	( . 
	cp 0a1h		;9686	fe a1 	. . 
	jr nc,l9652h		;9688	30 c8 	0 . 
	cp 084h		;968a	fe 84 	. . 
	jr c,l9652h		;968c	38 c4 	8 . 
l968eh:
	ld a,(07f35h)		;968e	3a 35 7f 	: 5  
	and 006h		;9691	e6 06 	. . 
	jr nz,l9658h		;9693	20 c3 	  . 
l9695h:
	call sub_ae13h		;9695	cd 13 ae 	. . . 
	ld hl,07c00h		;9698	21 00 7c 	! . | 
	ld de,07d00h		;969b	11 00 7d 	. . } 
	ld bc,00100h		;969e	01 00 01 	. . . 
	ldir		;96a1	ed b0 	. . 
	ld ix,07cffh		;96a3	dd 21 ff 7c 	. ! . | 
	call sub_a49dh		;96a7	cd 9d a4 	. . . 
	dec ix		;96aa	dd 2b 	. + 
	ld hl,07f18h		;96ac	21 18 7f 	! .  
	ld (hl),000h		;96af	36 00 	6 . 
l96b1h:
	inc ix		;96b1	dd 23 	. # 
	ld a,(ix+000h)		;96b3	dd 7e 00 	. ~ . 
	cp 02bh		;96b6	fe 2b 	. + 
	jr z,l96b1h		;96b8	28 f7 	( . 
	cp 02dh		;96ba	fe 2d 	. - 
	jr nz,l96c1h		;96bc	20 03 	  . 
	inc (hl)			;96be	34 	4 
	jr l96b1h		;96bf	18 f0 	. . 
l96c1h:
	cp 02eh		;96c1	fe 2e 	. . 
	jr z,l96cah		;96c3	28 05 	( . 
	call sub_a4f5h		;96c5	cd f5 a4 	. . . 
	jr c,l96fch		;96c8	38 32 	8 2 
l96cah:
	dec ix		;96ca	dd 2b 	. + 
	ld hl,07f33h		;96cc	21 33 7f 	! 3  
	res 1,(hl)		;96cf	cb 8e 	. . 
	call sub_930fh		;96d1	cd 0f 93 	. . . 
	call 0ff2bh		;96d4	cd 2b ff 	. + . 
	call sub_9305h		;96d7	cd 05 93 	. . . 
	jr c,l9706h		;96da	38 2a 	8 * 
	inc ix		;96dc	dd 23 	. # 
	ld a,(ix+000h)		;96de	dd 7e 00 	. ~ . 
	cp 00dh		;96e1	fe 0d 	. . 
	jr nz,l96fch		;96e3	20 17 	  . 
	ld hl,07f18h		;96e5	21 18 7f 	! .  
	bit 0,(hl)		;96e8	cb 46 	. F 
	jr z,l96f1h		;96ea	28 05 	( . 
	ld hl,07f11h		;96ec	21 11 7f 	! .  
	set 3,(hl)		;96ef	cb de 	. . 
l96f1h:
	call sub_9333h		;96f1	cd 33 93 	. 3 . 
	ld a,000h		;96f4	3e 00 	> . 
	ld (079eah),a		;96f6	32 ea 79 	2 . y 
	jp l95c7h		;96f9	c3 c7 95 	. . . 
l96fch:
	ld hl,079dah		;96fc	21 da 79 	! . y 
	set 6,(hl)		;96ff	cb f6 	. . 
	call sub_b1cah		;9701	cd ca b1 	. . . 
	jr l9774h		;9704	18 6e 	. n 
l9706h:
	call sub_9333h		;9706	cd 33 93 	. 3 . 
	ld a,000h		;9709	3e 00 	> . 
	ld (079eah),a		;970b	32 ea 79 	2 . y 
	ld ix,07d00h		;970e	dd 21 00 7d 	. ! . } 
	call errorin_end+1		;9712	cd 5b a6 	. [ . 
	jr l9774h		;9715	18 5d 	. ] 
l9717h:
	cp 008h		;9717	fe 08 	. . 
	jr c,l9722h		;9719	38 07 	8 . 
	cp 00ah		;971b	fe 0a 	. . 
	jr c,l9768h		;971d	38 49 	8 I 
	jp z,l94f4h		;971f	ca f4 94 	. . . 
l9722h:
	cp 012h		;9722	fe 12 	. . 
	jr z,l9768h		;9724	28 42 	( B 
	cp 01ch		;9726	fe 1c 	. . 
	jr nc,l9777h		;9728	30 4d 	0 M 
	cp 019h		;972a	fe 19 	. . 
	jp nc,l9808h		;972c	d2 08 98 	. . . 
	cp 00eh		;972f	fe 0e 	. . 
	jp z,l97dbh		;9731	ca db 97 	. . . 
	jp z,l94a8h		;9734	ca a8 94 	. . . 
	cp 00fh		;9737	fe 0f 	. . 
	jp z,l94a8h		;9739	ca a8 94 	. . . 
	cp 016h		;973c	fe 16 	. . 
	jp z,l97f4h		;973e	ca f4 97 	. . . 
	cp 007h		;9741	fe 07 	. . 
	jr z,l9797h		;9743	28 52 	( R 
	ld hl,079dfh		;9745	21 df 79 	! . y 
	res 0,(hl)		;9748	cb 86 	. . 
	res 1,(hl)		;974a	cb 8e 	. . 
	cp 00dh		;974c	fe 0d 	. . 
	jr nc,l97a6h		;974e	30 56 	0 V 
	cp 00bh		;9750	fe 0b 	. . 
	jr c,l97a6h		;9752	38 52 	8 R 
	cp 00bh		;9754	fe 0b 	. . 
	jr z,l9760h		;9756	28 08 	( . 
	call sub_9341h		;9758	cd 41 93 	. A . 
	call la9f2h		;975b	cd f2 a9 	. . . 
	jr l9774h		;975e	18 14 	. . 
l9760h:
	call sub_9341h		;9760	cd 41 93 	. A . 
	call sub_a0d8h		;9763	cd d8 a0 	. . . 
	jr l9774h		;9766	18 0c 	. . 
l9768h:
	ld a,(079dah)		;9768	3a da 79 	: . y 
	bit 5,a		;976b	cb 6f 	. o 
	jr z,l9774h		;976d	28 05 	( . 
	and 003h		;976f	e6 03 	. . 
	call z,sub_b1cah		;9771	cc ca b1 	. . . 
l9774h:
	jp l94a8h		;9774	c3 a8 94 	. . . 
l9777h:
	ld hl,079dfh		;9777	21 df 79 	! . y 
	res 0,(hl)		;977a	cb 86 	. . 
	res 1,(hl)		;977c	cb 8e 	. . 
	cp 01eh		;977e	fe 1e 	. . 
	jr c,l9792h		;9780	38 10 	8 . 
	cp 01fh		;9782	fe 1f 	. . 
	jr z,l978dh		;9784	28 07 	( . 
	call sub_997bh		;9786	cd 7b 99 	. { . 
	jr c,l9800h		;9789	38 75 	8 u 
	jr l9774h		;978b	18 e7 	. . 
l978dh:
	call sub_99cch		;978d	cd cc 99 	. . . 
	jr l9774h		;9790	18 e2 	. . 
l9792h:
	call sub_9b96h		;9792	cd 96 9b 	. . . 
	jr l9774h		;9795	18 dd 	. . 
l9797h:
	ld hl,079dfh		;9797	21 df 79 	! . y 
	res 1,(hl)		;979a	cb 8e 	. . 
	ld hl,079dah		;979c	21 da 79 	! . y 
	bit 1,(hl)		;979f	cb 4e 	. N 
	call z,sub_a0bbh		;97a1	cc bb a0 	. . . 
	jr l9774h		;97a4	18 ce 	. . 
l97a6h:
	ld hl,079dah		;97a6	21 da 79 	! . y 
	bit 1,(hl)		;97a9	cb 4e 	. N 
	jr nz,l9774h		;97ab	20 c7 	  . 
	cp 00dh		;97ad	fe 0d 	. . 
	jr z,l97c2h		;97af	28 11 	( . 
	cp 005h		;97b1	fe 05 	. . 
	jr z,l97c7h		;97b3	28 12 	( . 
	cp 015h		;97b5	fe 15 	. . 
	jr z,l97cch		;97b7	28 13 	( . 
	cp 018h		;97b9	fe 18 	. . 
	jr z,l97d1h		;97bb	28 14 	( . 
	call 0ff82h		;97bd	cd 82 ff 	. . . 
	jr l9774h		;97c0	18 b2 	. . 
l97c2h:
	call sub_9c2ah		;97c2	cd 2a 9c 	. * . 
	jr l9774h		;97c5	18 ad 	. . 
l97c7h:
	call sub_a6c1h		;97c7	cd c1 a6 	. . . 
	jr l9774h		;97ca	18 a8 	. . 
l97cch:
	call 0ffe2h		;97cc	cd e2 ff 	. . . 
	jr l9774h		;97cf	18 a3 	. . 
l97d1h:
	call 0ff7fh		;97d1	cd 7f ff 	.  . 
	jr l9774h		;97d4	18 9e 	. . 
	call 0ff6ah		;97d6	cd 6a ff 	. j . 
	jr l9774h		;97d9	18 99 	. . 
l97dbh:
	call sub_b02eh		;97db	cd 2e b0 	. . . 
	ld a,(07906h)		;97de	3a 06 79 	: . y 
	cp 02eh		;97e1	fe 2e 	. . 
	jr z,l97efh		;97e3	28 0a 	( . 
	call sub_a4f5h		;97e5	cd f5 a4 	. . . 
	jr c,l9800h		;97e8	38 16 	8 . 
	call 0ff7ch		;97ea	cd 7c ff 	. | . 
	jr l9849h		;97ed	18 5a 	. Z 
l97efh:
	call 0ff79h		;97ef	cd 79 ff 	. y . 
	jr l9849h		;97f2	18 55 	. U 
l97f4h:
	ld hl,079dah		;97f4	21 da 79 	! . y 
	bit 0,(hl)		;97f7	cb 46 	. F 
	jr nz,l9803h		;97f9	20 08 	  . 
	ld a,02dh		;97fb	3e 2d 	> - 
	ld (07906h),a		;97fd	32 06 79 	2 . y 
l9800h:
	jp l94abh		;9800	c3 ab 94 	. . . 
l9803h:
	call 0ff67h		;9803	cd 67 ff 	. g . 
	jr l9849h		;9806	18 41 	. A 
l9808h:
	ld hl,07f35h		;9808	21 35 7f 	! 5  
	ld a,(hl)			;980b	7e 	~ 
	and 006h		;980c	e6 06 	. . 
	jr z,l981bh		;980e	28 0b 	( . 
	bit 0,(hl)		;9810	cb 46 	. F 
	jr z,l9849h		;9812	28 35 	( 5 
	ld hl,079dah		;9814	21 da 79 	! . y 
	bit 4,(hl)		;9817	cb 66 	. f 
	jr nz,l9849h		;9819	20 2e 	  . 
l981bh:
	ld hl,079dfh		;981b	21 df 79 	! . y 
	res 0,(hl)		;981e	cb 86 	. . 
	res 1,(hl)		;9820	cb 8e 	. . 
	ld hl,079dah		;9822	21 da 79 	! . y 
	bit 1,(hl)		;9825	cb 4e 	. N 
	jr nz,l9849h		;9827	20 20 	    
	ld a,(07906h)		;9829	3a 06 79 	: . y 
	cp 0f8h		;982c	fe f8 	. . 
	jr z,l9843h		;982e	28 13 	( . 
	cp 01bh		;9830	fe 1b 	. . 
	jr z,l983eh		;9832	28 0a 	( . 
	cp 01ah		;9834	fe 1a 	. . 
	jr z,l9846h		;9836	28 0e 	( . 
	call 0ff6dh		;9838	cd 6d ff 	. m . 
	jp l94a8h		;983b	c3 a8 94 	. . . 
l983eh:
	call 0ff76h		;983e	cd 76 ff 	. v . 
	jr l9849h		;9841	18 06 	. . 
l9843h:
	call 0ff70h		;9843	cd 70 ff 	. p . 
l9846h:
	call 0ff73h		;9846	cd 73 ff 	. s . 
l9849h:
	jp l94a8h		;9849	c3 a8 94 	. . . 
l984ch:
	cp 0feh		;984c	fe fe 	. . 
	jr z,l9854h		;984e	28 04 	( . 
	cp 0f2h		;9850	fe f2 	. . 
	jr nc,l9849h		;9852	30 f5 	0 . 
l9854h:
	cp 020h		;9854	fe 20 	.   
	jr nc,l9896h		;9856	30 3e 	0 > 
	cp 01eh		;9858	fe 1e 	. . 
	jr nc,l98b4h		;985a	30 58 	0 X 
	cp 01ch		;985c	fe 1c 	. . 
	jr nc,l98b9h		;985e	30 59 	0 Y 
	cp 00bh		;9860	fe 0b 	. . 
	jr z,l98c5h		;9862	28 61 	( a 
	cp 00ch		;9864	fe 0c 	. . 
	jr z,l98c5h		;9866	28 5d 	( ] 
	ld hl,079dah		;9868	21 da 79 	! . y 
	bit 1,(hl)		;986b	cb 4e 	. N 
	jr nz,l9849h		;986d	20 da 	  . 
	cp 017h		;986f	fe 17 	. . 
	jr nc,l9849h		;9871	30 d6 	0 . 
	cp 016h		;9873	fe 16 	. . 
	jr z,l98beh		;9875	28 47 	( G 
	cp 00eh		;9877	fe 0e 	. . 
	jr z,l9849h		;9879	28 ce 	( . 
	cp 00fh		;987b	fe 0f 	. . 
	jr z,l9849h		;987d	28 ca 	( . 
	cp 007h		;987f	fe 07 	. . 
	jr z,l98e0h		;9881	28 5d 	( ] 
	ld hl,079dfh		;9883	21 df 79 	! . y 
	res 0,(hl)		;9886	cb 86 	. . 
	res 1,(hl)		;9888	cb 8e 	. . 
	cp 00dh		;988a	fe 0d 	. . 
	jr z,l98eah		;988c	28 5c 	( \ 
	cp 005h		;988e	fe 05 	. . 
	jr z,l98efh		;9890	28 5d 	( ] 
	cp 015h		;9892	fe 15 	. . 
	jr z,l98f4h		;9894	28 5e 	( ^ 
l9896h:
	ld a,(079dah)		;9896	3a da 79 	: . y 
	bit 2,a		;9899	cb 57 	. W 
	jr nz,l98abh		;989b	20 0e 	  . 
l989dh:
	bit 1,a		;989d	cb 4f 	. O 
	jr nz,l9849h		;989f	20 a8 	  . 
l98a1h:
	ld hl,079dah		;98a1	21 da 79 	! . y 
	set 5,(hl)		;98a4	cb ee 	. . 
	call sub_b1cah		;98a6	cd ca b1 	. . . 
	jr l9849h		;98a9	18 9e 	. . 
l98abh:
	bit 5,a		;98ab	cb 6f 	. o 
	jr nz,l989dh		;98ad	20 ee 	  . 
	call sub_a7f4h		;98af	cd f4 a7 	. . . 
	jr l98a1h		;98b2	18 ed 	. . 
l98b4h:
	call sub_9af0h		;98b4	cd f0 9a 	. . . 
	jr l9849h		;98b7	18 90 	. . 
l98b9h:
	call sub_9bdfh		;98b9	cd df 9b 	. . . 
	jr l9849h		;98bc	18 8b 	. . 
l98beh:
	ld a,02dh		;98be	3e 2d 	> - 
	ld (07906h),a		;98c0	32 06 79 	2 . y 
	jr l9896h		;98c3	18 d1 	. . 
l98c5h:
	ld hl,079dfh		;98c5	21 df 79 	! . y 
	res 0,(hl)		;98c8	cb 86 	. . 
	res 1,(hl)		;98ca	cb 8e 	. . 
	cp 00bh		;98cc	fe 0b 	. . 
	jr z,l98d8h		;98ce	28 08 	( . 
	call sub_9341h		;98d0	cd 41 93 	. A . 
	call la9f2h		;98d3	cd f2 a9 	. . . 
	jr l98f7h		;98d6	18 1f 	. . 
l98d8h:
	call sub_9341h		;98d8	cd 41 93 	. A . 
	call sub_a0d8h		;98db	cd d8 a0 	. . . 
	jr l98f7h		;98de	18 17 	. . 
l98e0h:
	ld hl,079dfh		;98e0	21 df 79 	! . y 
	res 1,(hl)		;98e3	cb 8e 	. . 
	call sub_a0bbh		;98e5	cd bb a0 	. . . 
	jr l98f7h		;98e8	18 0d 	. . 
l98eah:
	call sub_9dd8h		;98ea	cd d8 9d 	. . . 
	jr l98f7h		;98ed	18 08 	. . 
l98efh:
	call sub_a6c1h		;98ef	cd c1 a6 	. . . 
	jr l98f7h		;98f2	18 03 	. . 
l98f4h:
	call 0ffe2h		;98f4	cd e2 ff 	. . . 
l98f7h:
	jp l94a8h		;98f7	c3 a8 94 	. . . 
sub_98fah:
	ld hl,079dah		;98fa	21 da 79 	! . y 
	bit 1,(hl)		;98fd	cb 4e 	. N 
	ret nz			;98ff	c0 	. 
	cp 0f0h		;9900	fe f0 	. . 
	jr z,l992dh		;9902	28 29 	( ) 
	dec a			;9904	3d 	= 
	jr z,l9919h		;9905	28 12 	( . 
	dec a			;9907	3d 	= 
	jr z,l991dh		;9908	28 13 	( . 
	dec a			;990a	3d 	= 
	jr z,l9925h		;990b	28 18 	( . 
	call sub_9314h		;990d	cd 14 93 	. . . 
	call 0ffe8h		;9910	cd e8 ff 	. . . 
l9913h:
	call sub_9305h		;9913	cd 05 93 	. . . 
	jp 0ffcdh		;9916	c3 cd ff 	. . . 
l9919h:
	call sub_a056h		;9919	cd 56 a0 	. V . 
	ret			;991c	c9 	. 
l991dh:
	call sub_9314h		;991d	cd 14 93 	. . . 
	call 0ffe2h		;9920	cd e2 ff 	. . . 
	jr l9913h		;9923	18 ee 	. . 
l9925h:
	call sub_9314h		;9925	cd 14 93 	. . . 
	call 0ffe5h		;9928	cd e5 ff 	. . . 
	jr l9913h		;992b	18 e6 	. . 
l992dh:
	call sub_931eh		;992d	cd 1e 93 	. . . 
	call 0fffdh		;9930	cd fd ff 	. . . 
	jr l9913h		;9933	18 de 	. . 
sub_9935h:
	cp 013h		;9935	fe 13 	. . 
	jr z,l995ah		;9937	28 21 	( ! 
	ld hl,07901h		;9939	21 01 79 	! . y 
	cp 011h		;993c	fe 11 	. . 
	jr c,l9950h		;993e	38 10 	8 . 
	jr z,l9954h		;9940	28 12 	( . 
	bit 2,(hl)		;9942	cb 56 	. V 
	jr nz,l994ch		;9944	20 06 	  . 
	ld b,002h		;9946	06 02 	. . 
l9948h:
	ld a,(hl)			;9948	7e 	~ 
	xor b			;9949	a8 	. 
	ld (hl),a			;994a	77 	w 
	ret			;994b	c9 	. 
l994ch:
	ld b,008h		;994c	06 08 	. . 
	jr l9948h		;994e	18 f8 	. . 
l9950h:
	ld b,010h		;9950	06 10 	. . 
	jr l9948h		;9952	18 f4 	. . 
l9954h:
	ld b,004h		;9954	06 04 	. . 
	res 3,(hl)		;9956	cb 9e 	. . 
	jr l9948h		;9958	18 ee 	. . 
l995ah:
	ld a,(07903h)		;995a	3a 03 79 	: . y 
	bit 6,a		;995d	cb 77 	. w 
	jr nz,l996bh		;995f	20 0a 	  . 
	bit 5,a		;9961	cb 6f 	. o 
	jr nz,l9973h		;9963	20 0e 	  . 
	set 5,a		;9965	cb ef 	. . 
	ld (07903h),a		;9967	32 03 79 	2 . y 
	ret			;996a	c9 	. 
l996bh:
	and 09fh		;996b	e6 9f 	. . 
	or 010h		;996d	f6 10 	. . 
	ld (07903h),a		;996f	32 03 79 	2 . y 
	ret			;9972	c9 	. 
l9973h:
	set 6,a		;9973	cb f7 	. . 
	res 4,a		;9975	cb a7 	. . 
	ld (07903h),a		;9977	32 03 79 	2 . y 
	ret			;997a	c9 	. 
sub_997bh:
	ld hl,07f35h		;997b	21 35 7f 	! 5  
	bit 4,(hl)		;997e	cb 66 	. f 
	jr z,l99b7h		;9980	28 35 	( 5 
l9982h:
	ld a,(079dah)		;9982	3a da 79 	: . y 
	bit 5,a		;9985	cb 6f 	. o 
	jr z,l998dh		;9987	28 04 	( . 
	and 013h		;9989	e6 13 	. . 
	jr z,l99beh		;998b	28 31 	( 1 
l998dh:
	call sub_9341h		;998d	cd 41 93 	. A . 
	and a			;9990	a7 	. 
	ld hl,079d9h		;9991	21 d9 79 	! . y 
	bit 4,(hl)		;9994	cb 66 	. f 
	ret nz			;9996	c0 	. 
	ld hl,07965h		;9997	21 65 79 	! e y 
	bit 1,(hl)		;999a	cb 4e 	. N 
	ret nz			;999c	c0 	. 
	set 3,(hl)		;999d	cb de 	. . 
	call sub_aad6h		;999f	cd d6 aa 	. . . 
	ld a,(07928h)		;99a2	3a 28 79 	: ( y 
	and a			;99a5	a7 	. 
	call nz,sub_ab39h		;99a6	c4 39 ab 	. 9 . 
	ld hl,00317h		;99a9	21 17 03 	! . . 
	ld (07922h),hl		;99ac	22 22 79 	" " y 
	call sub_b02eh		;99af	cd 2e b0 	. . . 
	call la9f2h		;99b2	cd f2 a9 	. . . 
	scf			;99b5	37 	7 
	ret			;99b6	c9 	. 
l99b7h:
	ld hl,079d9h		;99b7	21 d9 79 	! . y 
	bit 1,(hl)		;99ba	cb 4e 	. N 
	jr nz,l9982h		;99bc	20 c4 	  . 
l99beh:
	ld a,(079dah)		;99be	3a da 79 	: . y 
	and 017h		;99c1	e6 17 	. . 
	ret nz			;99c3	c0 	. 
	call sub_9c1ah		;99c4	cd 1a 9c 	. . . 
	call sub_b1cah		;99c7	cd ca b1 	. . . 
	and a			;99ca	a7 	. 
	ret			;99cb	c9 	. 
sub_99cch:
	ld hl,07f35h		;99cc	21 35 7f 	! 5  
	bit 4,(hl)		;99cf	cb 66 	. f 
	jr z,l99beh		;99d1	28 eb 	( . 
	ld a,(079dah)		;99d3	3a da 79 	: . y 
	bit 5,a		;99d6	cb 6f 	. o 
	jr z,l99deh		;99d8	28 04 	( . 
	and 011h		;99da	e6 11 	. . 
	jr z,l99beh		;99dc	28 e0 	( . 
l99deh:
	call 0ff9dh		;99de	cd 9d ff 	. . . 
	ld de,07d00h		;99e1	11 00 7d 	. . } 
	ld hl,07c00h		;99e4	21 00 7c 	! . | 
	ld bc,00100h		;99e7	01 00 01 	. . . 
	ldir		;99ea	ed b0 	. . 
	ld a,(07927h)		;99ec	3a 27 79 	: ' y 
	ld (079f1h),a		;99ef	32 f1 79 	2 . y 
	ld hl,07f36h		;99f2	21 36 7f 	! 6  
	res 1,(hl)		;99f5	cb 8e 	. . 
	set 0,(hl)		;99f7	cb c6 	. . 
	ld ix,(07aa2h)		;99f9	dd 2a a2 7a 	. * . z 
	ld (07f38h),ix		;99fd	dd 22 38 7f 	. " 8  
	ld a,(07f35h)		;9a01	3a 35 7f 	: 5  
	and 00eh		;9a04	e6 0e 	. . 
	jr z,l9a72h		;9a06	28 6a 	( j 
	call sub_9c1ah		;9a08	cd 1a 9c 	. . . 
	jr nz,l9a6ah		;9a0b	20 5d 	  ] 
	ld hl,07f35h		;9a0d	21 35 7f 	! 5  
	bit 0,(hl)		;9a10	cb 46 	. F 
	jr z,l9a19h		;9a12	28 05 	( . 
	res 0,(hl)		;9a14	cb 86 	. . 
	jp la450h		;9a16	c3 50 a4 	. P . 
l9a19h:
	bit 3,(hl)		;9a19	cb 5e 	. ^ 
	jr nz,l9a5fh		;9a1b	20 42 	  B 
l9a1dh:
	xor a			;9a1d	af 	. 
	ld (07920h),a		;9a1e	32 20 79 	2   y 
	ld hl,079dah		;9a21	21 da 79 	! . y 
	bit 5,(hl)		;9a24	cb 6e 	. n 
	jr nz,l9a34h		;9a26	20 0c 	  . 
	call sub_930fh		;9a28	cd 0f 93 	. . . 
	call 0ff7ch		;9a2b	cd 7c ff 	. | . 
	call sub_9305h		;9a2e	cd 05 93 	. . . 
	jp la485h		;9a31	c3 85 a4 	. . . 
l9a34h:
	call sub_ab6bh		;9a34	cd 6b ab 	. k . 
	jr c,l9a5bh		;9a37	38 22 	8 " 
	ld a,(079dah)		;9a39	3a da 79 	: . y 
	and 0c0h		;9a3c	e6 c0 	. . 
	ld (079dah),a		;9a3e	32 da 79 	2 . y 
	call sub_a49dh		;9a41	cd 9d a4 	. . . 
	dec ix		;9a44	dd 2b 	. + 
	cp 02ch		;9a46	fe 2c 	. , 
	jp nz,la485h		;9a48	c2 85 a4 	. . . 
	inc ix		;9a4b	dd 23 	. # 
	call sub_92f5h		;9a4d	cd f5 92 	. . . 
	ld hl,07f36h		;9a50	21 36 7f 	! 6  
	res 1,(hl)		;9a53	cb 8e 	. . 
	call 0ffdch		;9a55	cd dc ff 	. . . 
	jp la1deh		;9a58	c3 de a1 	. . . 
l9a5bh:
	call errorin_end+1		;9a5b	cd 5b a6 	. [ . 
	ret			;9a5e	c9 	. 
l9a5fh:
	ld a,(07f35h)		;9a5f	3a 35 7f 	: 5  
	and 0f1h		;9a62	e6 f1 	. . 
	ld (07f35h),a		;9a64	32 35 7f 	2 5  
	jp la485h		;9a67	c3 85 a4 	. . . 
l9a6ah:
	res 0,(hl)		;9a6a	cb 86 	. . 
	ld hl,07965h		;9a6c	21 65 79 	! e y 
	res 1,(hl)		;9a6f	cb 8e 	. . 
	ret			;9a71	c9 	. 
l9a72h:
	ld hl,07f35h		;9a72	21 35 7f 	! 5  
	res 0,(hl)		;9a75	cb 86 	. . 
	ld a,(079dah)		;9a77	3a da 79 	: . y 
	and 0c0h		;9a7a	e6 c0 	. . 
	ld (079dah),a		;9a7c	32 da 79 	2 . y 
	ld hl,07965h		;9a7f	21 65 79 	! e y 
	bit 1,(hl)		;9a82	cb 4e 	. N 
	jr z,l9a94h		;9a84	28 0e 	( . 
	call sub_92f5h		;9a86	cd f5 92 	. . . 
	call sub_a144h		;9a89	cd 44 a1 	. D . 
	jr c,l9a5fh		;9a8c	38 d1 	8 . 
	ld a,000h		;9a8e	3e 00 	> . 
	ld (0797eh),a		;9a90	32 7e 79 	2 ~ y 
	ret			;9a93	c9 	. 
l9a94h:
	set 1,(hl)		;9a94	cb ce 	. . 
	call sub_92f5h		;9a96	cd f5 92 	. . . 
	call sub_a144h		;9a99	cd 44 a1 	. D . 
	ret c			;9a9c	d8 	. 
	call sub_8ce3h		;9a9d	cd e3 8c 	. . . 
	ret			;9aa0	c9 	. 
l9aa1h:
	ld b,a			;9aa1	47 	G 
	ld hl,(079e1h)		;9aa2	2a e1 79 	* . y 
	inc hl			;9aa5	23 	# 
	ld a,(hl)			;9aa6	7e 	~ 
	cp 0ffh		;9aa7	fe ff 	. . 
	ld a,b			;9aa9	78 	x 
	jr z,l9acfh		;9aaa	28 23 	( # 
	cp 01fh		;9aac	fe 1f 	. . 
	jr nz,l9ad6h		;9aae	20 26 	  & 
	ld a,(07924h)		;9ab0	3a 24 79 	: $ y 
	ld b,a			;9ab3	47 	G 
	ld a,(07925h)		;9ab4	3a 25 79 	: % y 
	cp b			;9ab7	b8 	. 
	jr z,l9ae4h		;9ab8	28 2a 	( * 
	ld a,(07926h)		;9aba	3a 26 79 	: & y 
	dec a			;9abd	3d 	= 
	cp b			;9abe	b8 	. 
	jr nz,l9acfh		;9abf	20 0e 	  . 
	ld hl,(07f3ah)		;9ac1	2a 3a 7f 	* :  
	inc hl			;9ac4	23 	# 
	inc hl			;9ac5	23 	# 
	ld e,(hl)			;9ac6	5e 	^ 
	ld d,000h		;9ac7	16 00 	. . 
	add hl,de			;9ac9	19 	. 
	inc hl			;9aca	23 	# 
	ld a,(hl)			;9acb	7e 	~ 
	inc a			;9acc	3c 	< 
	jr nz,l9ae4h		;9acd	20 15 	  . 
l9acfh:
	call sub_9c1ah		;9acf	cd 1a 9c 	. . . 
	call sub_b1cah		;9ad2	cd ca b1 	. . . 
	ret			;9ad5	c9 	. 
l9ad6h:
	ld a,(07924h)		;9ad6	3a 24 79 	: $ y 
	and a			;9ad9	a7 	. 
	jr nz,l9acfh		;9ada	20 f3 	  . 
	ld hl,(07f3ah)		;9adc	2a 3a 7f 	* :  
	dec hl			;9adf	2b 	+ 
	ld a,(hl)			;9ae0	7e 	~ 
	inc a			;9ae1	3c 	< 
	jr z,l9acfh		;9ae2	28 eb 	( . 
l9ae4h:
	ld hl,07965h		;9ae4	21 65 79 	! e y 
	bit 1,(hl)		;9ae7	cb 4e 	. N 
	res 1,(hl)		;9ae9	cb 8e 	. . 
	ret nz			;9aeb	c0 	. 
	res 2,(hl)		;9aec	cb 96 	. . 
	jr l9afeh		;9aee	18 0e 	. . 
sub_9af0h:
	ld hl,079dah		;9af0	21 da 79 	! . y 
	bit 1,(hl)		;9af3	cb 4e 	. N 
	ret nz			;9af5	c0 	. 
	call sub_9b86h		;9af6	cd 86 9b 	. . . 
	ret nz			;9af9	c0 	. 
	bit 5,(hl)		;9afa	cb 6e 	. n 
	jr nz,l9aa1h		;9afc	20 a3 	  . 
l9afeh:
	ld hl,07f35h		;9afe	21 35 7f 	! 5  
	bit 4,(hl)		;9b01	cb 66 	. f 
	jr z,l9b28h		;9b03	28 23 	( # 
	call sub_9341h		;9b05	cd 41 93 	. A . 
	ld hl,079dah		;9b08	21 da 79 	! . y 
	bit 2,(hl)		;9b0b	cb 56 	. V 
	jr z,l9b21h		;9b0d	28 12 	( . 
l9b0fh:
	call sub_9c1ah		;9b0f	cd 1a 9c 	. . . 
l9b12h:
	ld a,(07906h)		;9b12	3a 06 79 	: . y 
	cp 01fh		;9b15	fe 1f 	. . 
	jr nz,l9b1dh		;9b17	20 04 	  . 
	call sub_936fh		;9b19	cd 6f 93 	. o . 
	ret			;9b1c	c9 	. 
l9b1dh:
	call sub_937ah		;9b1d	cd 7a 93 	. z . 
	ret			;9b20	c9 	. 
l9b21h:
	call sub_aad6h		;9b21	cd d6 aa 	. . . 
	call sub_ab4fh		;9b24	cd 4f ab 	. O . 
	ret			;9b27	c9 	. 
l9b28h:
	ld ix,(079e1h)		;9b28	dd 2a e1 79 	. * . y 
	inc ix		;9b2c	dd 23 	. # 
	ld a,(ix+000h)		;9b2e	dd 7e 00 	. ~ . 
	cp 0ffh		;9b31	fe ff 	. . 
	ret z			;9b33	c8 	. 
	call sub_9341h		;9b34	cd 41 93 	. A . 
	ld hl,079dah		;9b37	21 da 79 	! . y 
	bit 2,(hl)		;9b3a	cb 56 	. V 
	jr nz,l9b0fh		;9b3c	20 d1 	  . 
	ld hl,079d9h		;9b3e	21 d9 79 	! . y 
	bit 1,(hl)		;9b41	cb 4e 	. N 
	ld hl,07965h		;9b43	21 65 79 	! e y 
	jr z,l9b4eh		;9b46	28 06 	( . 
	bit 1,(hl)		;9b48	cb 4e 	. N 
	jr nz,l9b12h		;9b4a	20 c6 	  . 
	jr l9b21h		;9b4c	18 d3 	. . 
l9b4eh:
	bit 1,(hl)		;9b4e	cb 4e 	. N 
	jr nz,l9b12h		;9b50	20 c0 	  . 
	ld a,(07906h)		;9b52	3a 06 79 	: . y 
	cp 01fh		;9b55	fe 1f 	. . 
	jr z,l9b6ch		;9b57	28 13 	( . 
	ld ix,(079e3h)		;9b59	dd 2a e3 79 	. * . y 
	dec ix		;9b5d	dd 2b 	. + 
	ld (07f3ah),ix		;9b5f	dd 22 3a 7f 	. " :  
	call sub_930fh		;9b63	cd 0f 93 	. . . 
	call 0ff94h		;9b66	cd 94 ff 	. . . 
	call sub_9305h		;9b69	cd 05 93 	. . . 
l9b6ch:
	ld hl,079d9h		;9b6c	21 d9 79 	! . y 
	set 3,(hl)		;9b6f	cb de 	. . 
	ld a,(079dah)		;9b71	3a da 79 	: . y 
	and 0c0h		;9b74	e6 c0 	. . 
	or 004h		;9b76	f6 04 	. . 
	ld (079dah),a		;9b78	32 da 79 	2 . y 
	ld (07f3ah),ix		;9b7b	dd 22 3a 7f 	. " :  
	call 0ffa0h		;9b7f	cd a0 ff 	. . . 
	call sub_9c20h		;9b82	cd 20 9c 	.   . 
	ret			;9b85	c9 	. 
sub_9b86h:
	ld b,a			;9b86	47 	G 
	ld a,(07902h)		;9b87	3a 02 79 	: . y 
	cpl			;9b8a	2f 	/ 
	bit 3,a		;9b8b	cb 5f 	. _ 
	jr z,l9b94h		;9b8d	28 05 	( . 
	ld a,(079d9h)		;9b8f	3a d9 79 	: . y 
	bit 4,a		;9b92	cb 67 	. g 
l9b94h:
	ld a,b			;9b94	78 	x 
	ret			;9b95	c9 	. 
sub_9b96h:
	ld hl,07f33h		;9b96	21 33 7f 	! 3  
	ld (hl),000h		;9b99	36 00 	6 . 
	ld hl,079d9h		;9b9b	21 d9 79 	! . y 
	res 3,(hl)		;9b9e	cb 9e 	. . 
	ld hl,079dah		;9ba0	21 da 79 	! . y 
	bit 1,(hl)		;9ba3	cb 4e 	. N 
	jr z,l9bbch		;9ba5	28 15 	( . 
l9ba7h:
	bit 5,(hl)		;9ba7	cb 6e 	. n 
	ret z			;9ba9	c8 	. 
	res 1,(hl)		;9baa	cb 8e 	. . 
sub_9bach:
	call sub_9341h		;9bac	cd 41 93 	. A . 
	ld a,(07f38h)		;9baf	3a 38 7f 	: 8  
	ld (079eah),a		;9bb2	32 ea 79 	2 . y 
l9bb5h:
	call sub_9c20h		;9bb5	cd 20 9c 	.   . 
	call sub_acafh		;9bb8	cd af ac 	. . . 
	ret			;9bbb	c9 	. 
l9bbch:
	bit 5,(hl)		;9bbc	cb 6e 	. n 
	ret z			;9bbe	c8 	. 
	bit 0,(hl)		;9bbf	cb 46 	. F 
	jr z,l9bd8h		;9bc1	28 15 	( . 
	res 0,(hl)		;9bc3	cb 86 	. . 
	ld a,(07f38h)		;9bc5	3a 38 7f 	: 8  
	ld b,a			;9bc8	47 	G 
	ld a,(07906h)		;9bc9	3a 06 79 	: . y 
	cp 01ch		;9bcc	fe 1c 	. . 
	jr nz,l9bd2h		;9bce	20 02 	  . 
	ld b,000h		;9bd0	06 00 	. . 
l9bd2h:
	ld a,b			;9bd2	78 	x 
	ld (079eah),a		;9bd3	32 ea 79 	2 . y 
	jr l9bb5h		;9bd6	18 dd 	. . 
l9bd8h:
	call sub_9c1ah		;9bd8	cd 1a 9c 	. . . 
	call sub_b1cah		;9bdb	cd ca b1 	. . . 
	ret			;9bde	c9 	. 
sub_9bdfh:
	ld hl,079dfh		;9bdf	21 df 79 	! . y 
	res 0,(hl)		;9be2	cb 86 	. . 
	ld hl,079d9h		;9be4	21 d9 79 	! . y 
	res 3,(hl)		;9be7	cb 9e 	. . 
	ld hl,079dah		;9be9	21 da 79 	! . y 
	bit 1,(hl)		;9bec	cb 4e 	. N 
	jr nz,l9ba7h		;9bee	20 b7 	  . 
	bit 2,(hl)		;9bf0	cb 56 	. V 
	jr z,l9c13h		;9bf2	28 1f 	( . 
	bit 5,(hl)		;9bf4	cb 6e 	. n 
	jr nz,l9c13h		;9bf6	20 1b 	  . 
	set 5,(hl)		;9bf8	cb ee 	. . 
	call sub_9c20h		;9bfa	cd 20 9c 	.   . 
	call 0ff29h		;9bfd	cd 29 ff 	. ) . 
	ld de,(07929h)		;9c00	ed 5b 29 79 	. [ ) y 
	ld (07920h),de		;9c04	ed 53 20 79 	. S   y 
	ld hl,07965h		;9c08	21 65 79 	! e y 
	res 4,(hl)		;9c0b	cb a6 	. . 
	set 2,(hl)		;9c0d	cb d6 	. . 
	call sub_927fh		;9c0f	cd 7f 92 	.  . 
	ret			;9c12	c9 	. 
l9c13h:
	call sub_9c1ah		;9c13	cd 1a 9c 	. . . 
	call sub_b1cah		;9c16	cd ca b1 	. . . 
	ret			;9c19	c9 	. 
sub_9c1ah:
	ld hl,07965h		;9c1a	21 65 79 	! e y 
	bit 1,(hl)		;9c1d	cb 4e 	. N 
	ret nz			;9c1f	c0 	. 
sub_9c20h:
	call sub_8ce3h		;9c20	cd e3 8c 	. . . 
	ld hl,07965h		;9c23	21 65 79 	! e y 
	set 1,(hl)		;9c26	cb ce 	. . 
	xor a			;9c28	af 	. 
	ret			;9c29	c9 	. 
sub_9c2ah:
	call sub_92f5h		;9c2a	cd f5 92 	. . . 
	call sub_ae13h		;9c2d	cd 13 ae 	. . . 
	ld a,(07f35h)		;9c30	3a 35 7f 	: 5  
	xor 014h		;9c33	ee 14 	. . 
	and 015h		;9c35	e6 15 	. . 
	jr nz,l9c4fh		;9c37	20 16 	  . 
	ld bc,00100h		;9c39	01 00 01 	. . . 
	ld hl,07c00h		;9c3c	21 00 7c 	! . | 
	ld de,07d00h		;9c3f	11 00 7d 	. . } 
	ldir		;9c42	ed b0 	. . 
	ld ix,(07aa2h)		;9c44	dd 2a a2 7a 	. * . z 
	ld (07f38h),ix		;9c48	dd 22 38 7f 	. " 8  
	jp l9a1dh		;9c4c	c3 1d 9a 	. . . 
l9c4fh:
	ld ix,07cffh		;9c4f	dd 21 ff 7c 	. ! . | 
	ld hl,079dah		;9c53	21 da 79 	! . y 
	bit 5,(hl)		;9c56	cb 6e 	. n 
	jr z,l9c79h		;9c58	28 1f 	( . 
	ld hl,07f35h		;9c5a	21 35 7f 	! 5  
	ld a,(hl)			;9c5d	7e 	~ 
	and 006h		;9c5e	e6 06 	. . 
	jr z,l9c7eh		;9c60	28 1c 	( . 
	ld a,(hl)			;9c62	7e 	~ 
	and 011h		;9c63	e6 11 	. . 
	cp 010h		;9c65	fe 10 	. . 
	jr nz,l9c7eh		;9c67	20 15 	  . 
	ld hl,07927h		;9c69	21 27 79 	! ' y 
	ld d,07dh		;9c6c	16 7d 	. } 
	ld e,(hl)			;9c6e	5e 	^ 
	dec de			;9c6f	1b 	. 
	push de			;9c70	d5 	. 
	pop ix		;9c71	dd e1 	. . 
	jr l9c7eh		;9c73	18 09 	. . 
l9c75h:
	call errorin_end+1		;9c75	cd 5b a6 	. [ . 
	ret			;9c78	c9 	. 
l9c79h:
	call sub_9333h		;9c79	cd 33 93 	. 3 . 
	jr l9ca7h		;9c7c	18 29 	. ) 
l9c7eh:
	ld ix,07bffh		;9c7e	dd 21 ff 7b 	. ! . { 
	ld iy,07cffh		;9c82	fd 21 ff 7c 	. ! . | 
	ld a,(07927h)		;9c86	3a 27 79 	: ' y 
	cp 000h		;9c89	fe 00 	. . 
	jr z,l9c9ah		;9c8b	28 0d 	( . 
	ld b,a			;9c8d	47 	G 
l9c8eh:
	inc ix		;9c8e	dd 23 	. # 
	inc iy		;9c90	fd 23 	. # 
	ld a,(ix+000h)		;9c92	dd 7e 00 	. ~ . 
	ld (iy+000h),a		;9c95	fd 77 00 	. w . 
	djnz l9c8eh		;9c98	10 f4 	. . 
l9c9ah:
	call 0fff4h		;9c9a	cd f4 ff 	. . . 
	jr c,l9c75h		;9c9d	38 d6 	8 . 
	call sub_9d26h		;9c9f	cd 26 9d 	. & . 
	ld hl,0797dh		;9ca2	21 7d 79 	! } y 
	res 0,(hl)		;9ca5	cb 86 	. . 
l9ca7h:
	ld ix,07cffh		;9ca7	dd 21 ff 7c 	. ! . | 
	ld hl,07f35h		;9cab	21 35 7f 	! 5  
	bit 4,(hl)		;9cae	cb 66 	. f 
	jr z,l9cech		;9cb0	28 3a 	( : 
	bit 0,(hl)		;9cb2	cb 46 	. F 
	jr nz,l9cech		;9cb4	20 36 	  6 
	bit 3,(hl)		;9cb6	cb 5e 	. ^ 
	jr z,l9cdah		;9cb8	28 20 	(   
	ld a,(079dah)		;9cba	3a da 79 	: . y 
	bit 0,a		;9cbd	cb 47 	. G 
	jr nz,l9cc5h		;9cbf	20 04 	  . 
	bit 5,a		;9cc1	cb 6f 	. o 
	jr nz,l9cf5h		;9cc3	20 30 	  0 
l9cc5h:
	and 0c0h		;9cc5	e6 c0 	. . 
	ld (079dah),a		;9cc7	32 da 79 	2 . y 
	res 0,(hl)		;9cca	cb 86 	. . 
	call 0ff9dh		;9ccc	cd 9d ff 	. . . 
	ld ix,(07aa2h)		;9ccf	dd 2a a2 7a 	. * . z 
	ld (07f38h),ix		;9cd3	dd 22 38 7f 	. " 8  
	jp l9a5fh		;9cd7	c3 5f 9a 	. _ . 
l9cdah:
	bit 1,(hl)		;9cda	cb 4e 	. N 
	jr z,l9cech		;9cdc	28 0e 	( . 
	call 0ff9dh		;9cde	cd 9d ff 	. . . 
	ld ix,(07aa2h)		;9ce1	dd 2a a2 7a 	. * . z 
	ld (07f38h),ix		;9ce5	dd 22 38 7f 	. " 8  
	jp l9a1dh		;9ce9	c3 1d 9a 	. . . 
l9cech:
	ld a,(079dah)		;9cec	3a da 79 	: . y 
	xor 020h		;9cef	ee 20 	.   
	and 021h		;9cf1	e6 21 	. ! 
	jr nz,l9d1fh		;9cf3	20 2a 	  * 
l9cf5h:
	ld a,(07f36h)		;9cf5	3a 36 7f 	: 6  
	and 0efh		;9cf8	e6 ef 	. . 
	or 002h		;9cfa	f6 02 	. . 
	ld (07f36h),a		;9cfc	32 36 7f 	2 6  
	ld hl,07f35h		;9cff	21 35 7f 	! 5  
	res 5,(hl)		;9d02	cb ae 	. . 
	ld a,(079dah)		;9d04	3a da 79 	: . y 
	and 0e0h		;9d07	e6 e0 	. . 
	ld (079dah),a		;9d09	32 da 79 	2 . y 
	ld hl,07965h		;9d0c	21 65 79 	! e y 
	res 2,(hl)		;9d0f	cb 96 	. . 
	call sub_adc1h		;9d11	cd c1 ad 	. . . 
	xor a			;9d14	af 	. 
	ld (07920h),a		;9d15	32 20 79 	2   y 
	ld ix,07cffh		;9d18	dd 21 ff 7c 	. ! . | 
	jp la13dh		;9d1c	c3 3d a1 	. = . 
l9d1fh:
	call sub_a7f4h		;9d1f	cd f4 a7 	. . . 
	call sub_92feh		;9d22	cd fe 92 	. . . 
	ret			;9d25	c9 	. 
sub_9d26h:
	push iy		;9d26	fd e5 	. . 
	pop hl			;9d28	e1 	. 
	ld b,l			;9d29	45 	E 
	ld a,0ffh		;9d2a	3e ff 	> . 
	sub b			;9d2c	90 	. 
	ret z			;9d2d	c8 	. 
	ld b,a			;9d2e	47 	G 
	ld a,00dh		;9d2f	3e 0d 	> . 
l9d31h:
	inc hl			;9d31	23 	# 
	ld (hl),a			;9d32	77 	w 
	djnz l9d31h		;9d33	10 fc 	. . 
	ret			;9d35	c9 	. 
l9d36h:
	call errorin_end+1		;9d36	cd 5b a6 	. [ . 
	call 0ff1ah		;9d39	cd 1a ff 	. . . 
l9d3ch:
	call sub_b02eh		;9d3c	cd 2e b0 	. . . 
	cp 00ch		;9d3f	fe 0c 	. . 
	jr z,l9d6ch		;9d41	28 29 	( ) 
	cp 00bh		;9d43	fe 0b 	. . 
	jr z,l9d71h		;9d45	28 2a 	( * 
	cp 01ch		;9d47	fe 1c 	. . 
	jr z,l9d4fh		;9d49	28 04 	( . 
	cp 01dh		;9d4b	fe 1d 	. . 
	jr nz,l9d3ch		;9d4d	20 ed 	  . 
l9d4fh:
	ld a,(079dfh)		;9d4f	3a df 79 	: . y 
	and 0fch		;9d52	e6 fc 	. . 
	ld (079dfh),a		;9d54	32 df 79 	2 . y 
	ld hl,079dah		;9d57	21 da 79 	! . y 
	res 1,(hl)		;9d5a	cb 8e 	. . 
	ld a,(07f38h)		;9d5c	3a 38 7f 	: 8  
	ld (079eah),a		;9d5f	32 ea 79 	2 . y 
	call sub_9c20h		;9d62	cd 20 9c 	.   . 
	call sub_ac96h		;9d65	cd 96 ac 	. . . 
l9d68h:
	call sub_9341h		;9d68	cd 41 93 	. A . 
	ret			;9d6b	c9 	. 
l9d6ch:
	call la9f2h		;9d6c	cd f2 a9 	. . . 
	jr l9d74h		;9d6f	18 03 	. . 
l9d71h:
	call sub_a0d8h		;9d71	cd d8 a0 	. . . 
l9d74h:
	ld hl,079dfh		;9d74	21 df 79 	! . y 
	res 0,(hl)		;9d77	cb 86 	. . 
	set 1,(hl)		;9d79	cb ce 	. . 
	jr l9d68h		;9d7b	18 eb 	. . 
l9d7dh:
	and a			;9d7d	a7 	. 
	ld hl,07902h		;9d7e	21 02 79 	! . y 
	bit 3,(hl)		;9d81	cb 5e 	. ^ 
	ret nz			;9d83	c0 	. 
	ld iy,07cffh		;9d84	fd 21 ff 7c 	. ! . | 
	dec ix		;9d88	dd 2b 	. + 
	call 0fff4h		;9d8a	cd f4 ff 	. . . 
	jr c,l9d36h		;9d8d	38 a7 	8 . 
	call sub_9d26h		;9d8f	cd 26 9d 	. & . 
	call 0ff1ah		;9d92	cd 1a ff 	. . . 
	ld ix,07cffh		;9d95	dd 21 ff 7c 	. ! . | 
	call sub_a49dh		;9d99	cd 9d a4 	. . . 
	cp 00dh		;9d9c	fe 0d 	. . 
	jr z,l9dc4h		;9d9e	28 24 	( $ 
	cp 0feh		;9da0	fe fe 	. . 
	jr nz,l9db6h		;9da2	20 12 	  . 
	ld a,(ix+001h)		;9da4	dd 7e 01 	. ~ . 
	cp 060h		;9da7	fe 60 	. ` 
	jr z,l9db3h		;9da9	28 08 	( . 
	cp 064h		;9dab	fe 64 	. d 
	jr z,l9db3h		;9dad	28 04 	( . 
	cp 050h		;9daf	fe 50 	. P 
	jr nc,l9db6h		;9db1	30 03 	0 . 
l9db3h:
	jp l9cf5h		;9db3	c3 f5 9c 	. . . 
l9db6h:
	call sub_8369h		;9db6	cd 69 83 	. i . 
	push ix		;9db9	dd e5 	. . 
	call sub_adc1h		;9dbb	cd c1 ad 	. . . 
	pop ix		;9dbe	dd e1 	. . 
	call errorin_end+1		;9dc0	cd 5b a6 	. [ . 
	ret			;9dc3	c9 	. 
l9dc4h:
	ld a,(07902h)		;9dc4	3a 02 79 	: . y 
	bit 3,a		;9dc7	cb 5f 	. _ 
	jr nz,l9dd3h		;9dc9	20 08 	  . 
	call sub_a7f4h		;9dcb	cd f4 a7 	. . . 
l9dceh:
	call sub_92feh		;9dce	cd fe 92 	. . . 
	xor a			;9dd1	af 	. 
	ret			;9dd2	c9 	. 
l9dd3h:
	call sub_a7f0h		;9dd3	cd f0 a7 	. . . 
	jr l9dceh		;9dd6	18 f6 	. . 
sub_9dd8h:
	call sub_92f5h		;9dd8	cd f5 92 	. . . 
	ld a,(079dah)		;9ddb	3a da 79 	: . y 
	bit 5,a		;9dde	cb 6f 	. o 
	jr z,l9dc4h		;9de0	28 e2 	( . 
	call sub_ae13h		;9de2	cd 13 ae 	. . . 
	ld ix,07bffh		;9de5	dd 21 ff 7b 	. ! . { 
	call sub_a49dh		;9de9	cd 9d a4 	. . . 
	call sub_a4f5h		;9dec	cd f5 a4 	. . . 
	jr c,l9d7dh		;9def	38 8c 	8 . 
	call sub_9b86h		;9df1	cd 86 9b 	. . . 
	jr nz,l9dc4h		;9df4	20 ce 	  . 
	call 0ff43h		;9df6	cd 43 ff 	. C . 
	call sub_8029h		;9df9	cd 29 80 	. ) . 
	ld a,(07f11h)		;9dfc	3a 11 7f 	: .  
	and 0f0h		;9dff	e6 f0 	. . 
	ld (07f11h),a		;9e01	32 11 7f 	2 .  
	ld ix,07bffh		;9e04	dd 21 ff 7b 	. ! . { 
l9e08h:
	call sub_a49dh		;9e08	cd 9d a4 	. . . 
	cp 030h		;9e0b	fe 30 	. 0 
	jr z,l9e08h		;9e0d	28 f9 	( . 
	dec ix		;9e0f	dd 2b 	. + 
	ld hl,07f14h		;9e11	21 14 7f 	! .  
	ld b,006h		;9e14	06 06 	. . 
l9e16h:
	ld (07f18h),ix		;9e16	dd 22 18 7f 	. " .  
	inc ix		;9e1a	dd 23 	. # 
	ld a,(ix+000h)		;9e1c	dd 7e 00 	. ~ . 
	call sub_a4f5h		;9e1f	cd f5 a4 	. . . 
	jr c,l9e63h		;9e22	38 3f 	8 ? 
	ld c,a			;9e24	4f 	O 
	ld a,b			;9e25	78 	x 
	cp 006h		;9e26	fe 06 	. . 
	jr z,l9e3bh		;9e28	28 11 	( . 
	xor a			;9e2a	af 	. 
	rld		;9e2b	ed 6f 	. o 
	dec hl			;9e2d	2b 	+ 
	rld		;9e2e	ed 6f 	. o 
	dec hl			;9e30	2b 	+ 
	rld		;9e31	ed 6f 	. o 
	ld a,(07f11h)		;9e33	3a 11 7f 	: .  
	add a,010h		;9e36	c6 10 	. . 
	ld (07f11h),a		;9e38	32 11 7f 	2 .  
l9e3bh:
	ld a,c			;9e3b	79 	y 
	and 00fh		;9e3c	e6 0f 	. . 
	ld hl,07f14h		;9e3e	21 14 7f 	! .  
	or (hl)			;9e41	b6 	. 
	ld (hl),a			;9e42	77 	w 
	djnz l9e16h		;9e43	10 d1 	. . 
l9e45h:
	ld a,041h		;9e45	3e 41 	> A 
	call l837bh		;9e47	cd 7b 83 	. { . 
	ld hl,07902h		;9e4a	21 02 79 	! . y 
	bit 3,(hl)		;9e4d	cb 5e 	. ^ 
	ret nz			;9e4f	c0 	. 
	jp l9d36h		;9e50	c3 36 9d 	. 6 . 
l9e53h:
	inc ix		;9e53	dd 23 	. # 
	ld a,(ix+000h)		;9e55	dd 7e 00 	. ~ . 
	inc iy		;9e58	fd 23 	. # 
	ld (iy+000h),a		;9e5a	fd 77 00 	. w . 
	cp 00dh		;9e5d	fe 0d 	. . 
	jr nz,l9e53h		;9e5f	20 f2 	  . 
	jr l9eb8h		;9e61	18 55 	. U 
l9e63h:
	xor a			;9e63	af 	. 
	ld hl,07f14h		;9e64	21 14 7f 	! .  
	rld		;9e67	ed 6f 	. o 
	dec hl			;9e69	2b 	+ 
	rld		;9e6a	ed 6f 	. o 
	dec hl			;9e6c	2b 	+ 
	rld		;9e6d	ed 6f 	. o 
	djnz l9e63h		;9e6f	10 f2 	. . 
	ld ix,(07f18h)		;9e71	dd 2a 18 7f 	. * .  
	ld a,(07902h)		;9e75	3a 02 79 	: . y 
	bit 3,a		;9e78	cb 5f 	. _ 
	jr nz,l9e89h		;9e7a	20 0d 	  . 
	ld a,(ix+001h)		;9e7c	dd 7e 01 	. ~ . 
	cp 03ah		;9e7f	fe 3a 	. : 
	jr z,l9e87h		;9e81	28 04 	( . 
	cp 020h		;9e83	fe 20 	.   
	jr nz,l9e89h		;9e85	20 02 	  . 
l9e87h:
	inc ix		;9e87	dd 23 	. # 
l9e89h:
	ld (07f38h),ix		;9e89	dd 22 38 7f 	. " 8  
	call sub_ac3bh		;9e8d	cd 3b ac 	. ; . 
	call sub_930fh		;9e90	cd 0f 93 	. . . 
	call 0fff1h		;9e93	cd f1 ff 	. . . 
	call sub_9305h		;9e96	cd 05 93 	. . . 
	ld ix,(07f38h)		;9e99	dd 2a 38 7f 	. * 8  
	jr c,l9e45h		;9e9d	38 a6 	8 . 
	ld iy,07d00h		;9e9f	fd 21 00 7d 	. ! . } 
	ld hl,07902h		;9ea3	21 02 79 	! . y 
	bit 3,(hl)		;9ea6	cb 5e 	. ^ 
	jr nz,l9e53h		;9ea8	20 a9 	  . 
	ld hl,(07f18h)		;9eaa	2a 18 7f 	* .  
	push hl			;9ead	e5 	. 
	call 0ff34h		;9eae	cd 34 ff 	. 4 . 
	pop hl			;9eb1	e1 	. 
	ld (07f18h),hl		;9eb2	22 18 7f 	" .  
	jp c,l9d36h		;9eb5	da 36 9d 	. 6 . 
l9eb8h:
	call sub_9d26h		;9eb8	cd 26 9d 	. & . 
	ld hl,07f35h		;9ebb	21 35 7f 	! 5  
	res 4,(hl)		;9ebe	cb a6 	. . 
	ld hl,07cffh		;9ec0	21 ff 7c 	! . | 
	ld (07f38h),hl		;9ec3	22 38 7f 	" 8  
	push iy		;9ec6	fd e5 	. . 
	pop bc			;9ec8	c1 	. 
	ld a,c			;9ec9	79 	y 
	ld (07f0ah),a		;9eca	32 0a 7f 	2 .  
	ld hl,(079e3h)		;9ecd	2a e3 79 	* . y 
	dec hl			;9ed0	2b 	+ 
	ld de,(079e1h)		;9ed1	ed 5b e1 79 	. [ . y 
	xor a			;9ed5	af 	. 
	sbc hl,de		;9ed6	ed 52 	. R 
	jp z,l9f6eh		;9ed8	ca 6e 9f 	. n . 
	call sub_930fh		;9edb	cd 0f 93 	. . . 
	call 0ffdfh		;9ede	cd df ff 	. . . 
	call sub_9305h		;9ee1	cd 05 93 	. . . 
	jp c,l9f73h		;9ee4	da 73 9f 	. s . 
	inc ix		;9ee7	dd 23 	. # 
	inc ix		;9ee9	dd 23 	. # 
	push ix		;9eeb	dd e5 	. . 
	pop hl			;9eed	e1 	. 
	call sub_9febh		;9eee	cd eb 9f 	. . . 
	inc hl			;9ef1	23 	# 
	push hl			;9ef2	e5 	. 
	pop ix		;9ef3	dd e1 	. . 
	ld e,b			;9ef5	58 	X 
	ld a,(07f0ah)		;9ef6	3a 0a 7f 	: .  
	ld d,a			;9ef9	57 	W 
	cp 001h		;9efa	fe 01 	. . 
	jr nz,l9f10h		;9efc	20 12 	  . 
	ld a,b			;9efe	78 	x 
	ld d,000h		;9eff	16 00 	. . 
	add a,003h		;9f01	c6 03 	. . 
	ld e,a			;9f03	5f 	_ 
	jr nc,l9f07h		;9f04	30 01 	0 . 
	inc d			;9f06	14 	. 
l9f07h:
	ld hl,00000h		;9f07	21 00 00 	! . . 
	and a			;9f0a	a7 	. 
	sbc hl,de		;9f0b	ed 52 	. R 
	ex de,hl			;9f0d	eb 	. 
	jr l9f18h		;9f0e	18 08 	. . 
l9f10h:
	ld a,d			;9f10	7a 	z 
	sub e			;9f11	93 	. 
	jp nc,l9f91h		;9f12	d2 91 9f 	. . . 
	ld e,a			;9f15	5f 	_ 
	ld d,0ffh		;9f16	16 ff 	. . 
l9f18h:
	call sub_a006h		;9f18	cd 06 a0 	. . . 
	push ix		;9f1b	dd e5 	. . 
	pop bc			;9f1d	c1 	. 
	dec bc			;9f1e	0b 	. 
	xor a			;9f1f	af 	. 
	sbc hl,bc		;9f20	ed 42 	. B 
	ld b,h			;9f22	44 	D 
	ld c,l			;9f23	4d 	M 
	push ix		;9f24	dd e5 	. . 
	pop hl			;9f26	e1 	. 
	add hl,de			;9f27	19 	. 
	ex de,hl			;9f28	eb 	. 
	push ix		;9f29	dd e5 	. . 
	pop hl			;9f2b	e1 	. 
	ldir		;9f2c	ed b0 	. . 
	dec de			;9f2e	1b 	. 
	call sub_a02eh		;9f2f	cd 2e a0 	. . . 
	ld a,(07f0ah)		;9f32	3a 0a 7f 	: .  
	cp 001h		;9f35	fe 01 	. . 
	jp z,l9dc4h		;9f37	ca c4 9d 	. . . 
l9f3ah:
	ld iy,(07f3ah)		;9f3a	fd 2a 3a 7f 	. * :  
	inc iy		;9f3e	fd 23 	. # 
	inc iy		;9f40	fd 23 	. # 
	ld a,(07f0ah)		;9f42	3a 0a 7f 	: .  
	ld (iy+000h),a		;9f45	fd 77 00 	. w . 
	ld c,a			;9f48	4f 	O 
	ld b,000h		;9f49	06 00 	. . 
	ld hl,07d01h		;9f4b	21 01 7d 	! . } 
	push iy		;9f4e	fd e5 	. . 
	pop de			;9f50	d1 	. 
	inc de			;9f51	13 	. 
	ldir		;9f52	ed b0 	. . 
	call sub_ac3bh		;9f54	cd 3b ac 	. ; . 
	ld a,(079dah)		;9f57	3a da 79 	: . y 
	and 0c0h		;9f5a	e6 c0 	. . 
	or 004h		;9f5c	f6 04 	. . 
	ld (079dah),a		;9f5e	32 da 79 	2 . y 
	ld hl,079d9h		;9f61	21 d9 79 	! . y 
	set 3,(hl)		;9f64	cb de 	. . 
	call 0ff26h		;9f66	cd 26 ff 	. & . 
	call sub_92feh		;9f69	cd fe 92 	. . . 
	xor a			;9f6c	af 	. 
	ret			;9f6d	c9 	. 
l9f6eh:
	inc de			;9f6e	13 	. 
	ld (07f3ah),de		;9f6f	ed 53 3a 7f 	. S :  
l9f73h:
	ld a,(07f0ah)		;9f73	3a 0a 7f 	: .  
	cp 001h		;9f76	fe 01 	. . 
	jp z,l9dc4h		;9f78	ca c4 9d 	. . . 
	ld b,000h		;9f7b	06 00 	. . 
	add a,003h		;9f7d	c6 03 	. . 
	jr nc,l9f82h		;9f7f	30 01 	0 . 
	inc b			;9f81	04 	. 
l9f82h:
	ld hl,07f03h		;9f82	21 03 7f 	! .  
	ld (hl),001h		;9f85	36 01 	6 . 
	ld de,(07f3ah)		;9f87	ed 5b 3a 7f 	. [ :  
	ld (07f08h),de		;9f8b	ed 53 08 7f 	. S .  
	jr l9f9eh		;9f8f	18 0d 	. . 
l9f91h:
	jr z,l9f3ah		;9f91	28 a7 	( . 
	ld hl,07f03h		;9f93	21 03 7f 	! .  
	ld (hl),000h		;9f96	36 00 	6 . 
	ld (07f08h),ix		;9f98	dd 22 08 7f 	. " .  
	ld b,000h		;9f9c	06 00 	. . 
l9f9eh:
	ld c,a			;9f9e	4f 	O 
	call sub_a006h		;9f9f	cd 06 a0 	. . . 
	push hl			;9fa2	e5 	. 
	pop ix		;9fa3	dd e1 	. . 
	add hl,bc			;9fa5	09 	. 
	ld de,(079fch)		;9fa6	ed 5b fc 79 	. [ . y 
	ex de,hl			;9faa	eb 	. 
	sbc hl,de		;9fab	ed 52 	. R 
	jr z,l9fdbh		;9fad	28 2c 	( , 
	jr c,l9fdbh		;9faf	38 2a 	8 * 
	call sub_a011h		;9fb1	cd 11 a0 	. . . 
	push ix		;9fb4	dd e5 	. . 
	pop hl			;9fb6	e1 	. 
	ld bc,(07f08h)		;9fb7	ed 4b 08 7f 	. K .  
	dec bc			;9fbb	0b 	. 
	xor a			;9fbc	af 	. 
	sbc hl,bc		;9fbd	ed 42 	. B 
	ld b,h			;9fbf	44 	D 
	ld c,l			;9fc0	4d 	M 
	push ix		;9fc1	dd e5 	. . 
	pop hl			;9fc3	e1 	. 
	lddr		;9fc4	ed b8 	. . 
	ld a,(07f03h)		;9fc6	3a 03 7f 	: .  
	cp 001h		;9fc9	fe 01 	. . 
	jp nz,l9f3ah		;9fcb	c2 3a 9f 	. : . 
	ld hl,(07f3ah)		;9fce	2a 3a 7f 	* :  
	ld bc,(07f18h)		;9fd1	ed 4b 18 7f 	. K .  
	ld (hl),b			;9fd5	70 	p 
	inc hl			;9fd6	23 	# 
	ld (hl),c			;9fd7	71 	q 
	jp l9f3ah		;9fd8	c3 3a 9f 	. : . 
l9fdbh:
	call sub_8388h		;9fdb	cd 88 83 	. . . 
	ld hl,07902h		;9fde	21 02 79 	! . y 
	bit 3,(hl)		;9fe1	cb 5e 	. ^ 
	ret nz			;9fe3	c0 	. 
	ld ix,07d00h		;9fe4	dd 21 00 7d 	. ! . } 
	jp l9d36h		;9fe8	c3 36 9d 	. 6 . 
sub_9febh:
	ld b,000h		;9feb	06 00 	. . 
l9fedh:
	ld a,01fh		;9fed	3e 1f 	> . 
l9fefh:
	inc hl			;9fef	23 	# 
	inc b			;9ff0	04 	. 
	cp (hl)			;9ff1	be 	. 
	jr z,l9ffah		;9ff2	28 06 	( . 
	ld a,00dh		;9ff4	3e 0d 	> . 
	cp (hl)			;9ff6	be 	. 
	jr nz,l9fedh		;9ff7	20 f4 	  . 
	ret			;9ff9	c9 	. 
l9ffah:
	inc hl			;9ffa	23 	# 
	inc hl			;9ffb	23 	# 
	inc b			;9ffc	04 	. 
	inc b			;9ffd	04 	. 
	jr l9fefh		;9ffe	18 ef 	. . 
sub_a000h:
	ld hl,07902h		;a000	21 02 79 	! . y 
	bit 3,(hl)		;a003	cb 5e 	. ^ 
	ret			;a005	c9 	. 
sub_a006h:
	call sub_a000h		;a006	cd 00 a0 	. . . 
	ld hl,(079e3h)		;a009	2a e3 79 	* . y 
	ret z			;a00c	c8 	. 
	ld hl,(07975h)		;a00d	2a 75 79 	* u y 
	ret			;a010	c9 	. 
sub_a011h:
	call sub_a000h		;a011	cd 00 a0 	. . . 
	jr nz,la01bh		;a014	20 05 	  . 
	ld (079e3h),de		;a016	ed 53 e3 79 	. S . y 
	ret			;a01a	c9 	. 
la01bh:
	ld (07975h),de		;a01b	ed 53 75 79 	. S u y 
	ld hl,(07973h)		;a01f	2a 73 79 	* s y 
	add hl,bc			;a022	09 	. 
	ld (07973h),hl		;a023	22 73 79 	" s y 
	ld hl,(079e3h)		;a026	2a e3 79 	* . y 
	add hl,bc			;a029	09 	. 
	ld (079e3h),hl		;a02a	22 e3 79 	" . y 
	ret			;a02d	c9 	. 
sub_a02eh:
	call sub_a000h		;a02e	cd 00 a0 	. . . 
	jr nz,la038h		;a031	20 05 	  . 
	ld (079e3h),de		;a033	ed 53 e3 79 	. S . y 
	ret			;a037	c9 	. 
la038h:
	ld hl,(07975h)		;a038	2a 75 79 	* u y 
	ld (07975h),de		;a03b	ed 53 75 79 	. S u y 
	or a			;a03f	b7 	. 
	sbc hl,de		;a040	ed 52 	. R 
	ex de,hl			;a042	eb 	. 
	ld hl,(07973h)		;a043	2a 73 79 	* s y 
	or a			;a046	b7 	. 
	sbc hl,de		;a047	ed 52 	. R 
	ld (07973h),hl		;a049	22 73 79 	" s y 
	ld hl,(079e3h)		;a04c	2a e3 79 	* . y 
	or a			;a04f	b7 	. 
	sbc hl,de		;a050	ed 52 	. R 
	ld (079e3h),hl		;a052	22 e3 79 	" . y 
	ret			;a055	c9 	. 
sub_a056h:
	ld hl,07f35h		;a056	21 35 7f 	! 5  
	bit 4,(hl)		;a059	cb 66 	. f 
	jr z,la05fh		;a05b	28 02 	( . 
	set 0,(hl)		;a05d	cb c6 	. . 
la05fh:
	ld hl,07904h		;a05f	21 04 79 	! . y 
	res 5,(hl)		;a062	cb ae 	. . 
	ld a,(07902h)		;a064	3a 02 79 	: . y 
	and 060h		;a067	e6 60 	. ` 
	xor 060h		;a069	ee 60 	. ` 
	ld (07902h),a		;a06b	32 02 79 	2 . y 
	call 0ff9dh		;a06e	cd 9d ff 	. . . 
	call sub_854dh		;a071	cd 4d 85 	. M . 
	ld a,020h		;a074	3e 20 	>   
	ld de,00000h		;a076	11 00 00 	. . . 
	ld b,060h		;a079	06 60 	. ` 
	call sub_86b3h		;a07b	cd b3 86 	. . . 
sub_a07eh:
	ld a,(07902h)		;a07e	3a 02 79 	: . y 
	ld hl,la0aah		;a081	21 aa a0 	! . . 
	and 040h		;a084	e6 40 	. @ 
	jr nz,la08bh		;a086	20 03 	  . 
	ld hl,la0aeh		;a088	21 ae a0 	! . . 
la08bh:
	ld de,00000h		;a08b	11 00 00 	. . . 
	ld b,(hl)			;a08e	46 	F 
	inc hl			;a08f	23 	# 
	call sub_84cdh		;a090	cd cd 84 	. . . 
	inc e			;a093	1c 	. 
	inc e			;a094	1c 	. 
	ld hl,la0b6h		;a095	21 b6 a0 	! . . 
	ld b,(hl)			;a098	46 	F 
	inc hl			;a099	23 	# 
	call sub_84cdh		;a09a	cd cd 84 	. . . 
	xor a			;a09d	af 	. 
	ld (07923h),a		;a09e	32 23 79 	2 # y 
	call sub_a7f4h		;a0a1	cd f4 a7 	. . . 
	ld hl,079dfh		;a0a4	21 df 79 	! . y 
	res 0,(hl)		;a0a7	cb 86 	. . 
	ret			;a0a9	c9 	. 
la0aah:
	inc bc			;a0aa	03 	. 

; BLOCK 'runprogr' (start 0xa0ab end 0xa0ba)
runprogr_start:
	defb 052h		;a0ab	52 	R 
	defb 055h		;a0ac	55 	U 
	defb 04eh		;a0ad	4e 	N 
la0aeh:
	defb 007h		;a0ae	07 	. 
	defb 050h		;a0af	50 	P 
	defb 052h		;a0b0	52 	R 
	defb 04fh		;a0b1	4f 	O 
	defb 047h		;a0b2	47 	G 
	defb 052h		;a0b3	52 	R 
	defb 041h		;a0b4	41 	A 
	defb 04dh		;a0b5	4d 	M 
la0b6h:
	defb 004h		;a0b6	04 	. 
	defb 04dh		;a0b7	4d 	M 
	defb 04fh		;a0b8	4f 	O 
	defb 044h		;a0b9	44 	D 
runprogr_end:
	ld b,l			;a0ba	45 	E 
sub_a0bbh:
	call 0fff1h		;a0bb	cd f1 ff 	. . . 
	ld hl,07904h		;a0be	21 04 79 	! . y 
	bit 6,(hl)		;a0c1	cb 76 	. v 
	jr z,la0cbh		;a0c3	28 06 	( . 
	res 6,(hl)		;a0c5	cb b6 	. . 
la0c7h:
	call sub_854dh		;a0c7	cd 4d 85 	. M . 
	ret			;a0ca	c9 	. 
la0cbh:
	ld hl,079bdh		;a0cb	21 bd 79 	! . y 
	bit 2,(hl)		;a0ce	cb 56 	. V 
	ret z			;a0d0	c8 	. 
	ld hl,07904h		;a0d1	21 04 79 	! . y 
	set 6,(hl)		;a0d4	cb f6 	. . 
	jr la0c7h		;a0d6	18 ef 	. . 
sub_a0d8h:
	call 0ff85h		;a0d8	cd 85 ff 	. . . 
	call sub_ac03h		;a0db	cd 03 ac 	. . . 
	ret			;a0de	c9 	. 
la0dfh:
	ld hl,079dah		;a0df	21 da 79 	! . y 
	bit 1,(hl)		;a0e2	cb 4e 	. N 
	jp nz,l94a8h		;a0e4	c2 a8 94 	. . . 
	call sub_9323h		;a0e7	cd 23 93 	. # . 
	call 0fff6h		;a0ea	cd f6 ff 	. . . 
	call sub_9305h		;a0ed	cd 05 93 	. . . 
	jp c,0ffcdh		;a0f0	da cd ff 	. . . 
	ld sp,07ffeh		;a0f3	31 fe 7f 	1 .  
	ld hl,07901h		;a0f6	21 01 79 	! . y 
	set 1,(hl)		;a0f9	cb ce 	. . 
	inc hl			;a0fb	23 	# 
	ld (hl),040h		;a0fc	36 40 	6 @ 
	inc hl			;a0fe	23 	# 
	inc hl			;a0ff	23 	# 
la100h:
	res 5,(hl)		;a100	cb ae 	. . 
	res 6,(hl)		;a102	cb b6 	. . 
	ld a,020h		;a104	3e 20 	>   
	ld b,018h		;a106	06 18 	. . 
	ld hl,07f10h		;a108	21 10 7f 	! .  
la10bh:
	ld (hl),a			;a10b	77 	w 
	inc hl			;a10c	23 	# 
	djnz la10bh		;a10d	10 fc 	. . 
	call sub_ac03h		;a10f	cd 03 ac 	. . . 
	call sub_ae9dh		;a112	cd 9d ae 	. . . 
	call sub_a07eh		;a115	cd 7e a0 	. ~ . 
	ld hl,07965h		;a118	21 65 79 	! e y 
	set 0,(hl)		;a11b	cb c6 	. . 
	ld de,07c00h		;a11d	11 00 7c 	. . | 
	ld hl,la136h		;a120	21 36 a1 	! 6 . 
	ld c,(hl)			;a123	4e 	N 
	ld b,000h		;a124	06 00 	. . 
	inc hl			;a126	23 	# 
	ldir		;a127	ed b0 	. . 
	ld a,00dh		;a129	3e 0d 	> . 
	ld (07906h),a		;a12b	32 06 79 	2 . y 
	ld hl,079dah		;a12e	21 da 79 	! . y 
	set 5,(hl)		;a131	cb ee 	. . 
	jp l94abh		;a133	c3 ab 94 	. . . 
la136h:
	ld b,047h		;a136	06 47 	. G 
	ld l,031h		;a138	2e 31 	. 1 
	jr nc,$+50		;a13a	30 30 	0 0 
	dec c			;a13c	0d 	. 
la13dh:
	ld hl,07f36h		;a13d	21 36 7f 	! 6  
	bit 1,(hl)		;a140	cb 4e 	. N 
	jr nz,la16dh		;a142	20 29 	  ) 
sub_a144h:
	call sub_a4a7h		;a144	cd a7 a4 	. . . 
	jr nc,la14eh		;a147	30 05 	0 . 
	dec ix		;a149	dd 2b 	. + 
	jp la258h		;a14b	c3 58 a2 	. X . 
la14eh:
	cp 027h		;a14e	fe 27 	. ' 
	jr z,la15bh		;a150	28 09 	( . 
	cp 03ah		;a152	fe 3a 	. : 
	jr nz,la170h		;a154	20 1a 	  . 
	call sub_a49dh		;a156	cd 9d a4 	. . . 
	jr la14eh		;a159	18 f3 	. . 
la15bh:
	call sub_930fh		;a15b	cd 0f 93 	. . . 
	call 0ffeeh		;a15e	cd ee ff 	. . . 
	call sub_9305h		;a161	cd 05 93 	. . . 
	ld (07aa0h),ix		;a164	dd 22 a0 7a 	. " . z 
	inc ix		;a168	dd 23 	. # 
	jp la26eh		;a16a	c3 6e a2 	. n . 
la16dh:
	call sub_a49dh		;a16d	cd 9d a4 	. . . 
la170h:
	cp 0fdh		;a170	fe fd 	. . 
	jp z,la23ch		;a172	ca 3c a2 	. < . 
	cp 0feh		;a175	fe fe 	. . 
	jr nz,la18fh		;a177	20 16 	  . 
	inc ix		;a179	dd 23 	. # 
	ld a,(ix+000h)		;a17b	dd 7e 00 	. ~ . 
	cp 080h		;a17e	fe 80 	. . 
	jr nc,la198h		;a180	30 16 	0 . 
	jr la1b5h		;a182	18 31 	. 1 
la184h:
	ld hl,07f35h		;a184	21 35 7f 	! 5  
	res 4,(hl)		;a187	cb a6 	. . 
	call sub_ae71h		;a189	cd 71 ae 	. q . 
	jp la22bh		;a18c	c3 2b a2 	. + . 
la18fh:
	cp 0ffh		;a18f	fe ff 	. . 
	jr z,la184h		;a191	28 f1 	( . 
	cp 00dh		;a193	fe 0d 	. . 
	jp z,la232h		;a195	ca 32 a2 	. 2 . 
la198h:
	ld hl,07f36h		;a198	21 36 7f 	! 6  
	bit 1,(hl)		;a19b	cb 4e 	. N 
	jr z,la1ach		;a19d	28 0d 	( . 
	ld b,a			;a19f	47 	G 
	xor a			;a1a0	af 	. 
	ld (0796bh),a		;a1a1	32 6b 79 	2 k y 
	ld hl,0797dh		;a1a4	21 7d 79 	! } y 
	res 0,(hl)		;a1a7	cb 86 	. . 
	res 1,(hl)		;a1a9	cb 8e 	. . 
	ld a,b			;a1ab	78 	x 
la1ach:
	call sub_a4eeh		;a1ac	cd ee a4 	. . . 
	jp nc,la2fbh		;a1af	d2 fb a2 	. . . 
	jp la37dh		;a1b2	c3 7d a3 	. } . 
la1b5h:
	ld h,000h		;a1b5	26 00 	& . 
	ld l,a			;a1b7	6f 	o 
	ld d,000h		;a1b8	16 00 	. . 
	ld e,a			;a1ba	5f 	_ 
	sla e		;a1bb	cb 23 	. # 
	rl d		;a1bd	cb 12 	. . 
	add hl,de			;a1bf	19 	. 
	ld de,laeaeh		;a1c0	11 ae ae 	. . . 
	add hl,de			;a1c3	19 	. 
	ld a,(hl)			;a1c4	7e 	~ 
	cp 000h		;a1c5	fe 00 	. . 
	jr z,la239h		;a1c7	28 70 	( p 
	inc hl			;a1c9	23 	# 
	ld b,a			;a1ca	47 	G 
	ld a,(07f36h)		;a1cb	3a 36 7f 	: 6  
	bit 1,a		;a1ce	cb 4f 	. O 
	jp nz,la421h		;a1d0	c2 21 a4 	. ! . 
	ld a,b			;a1d3	78 	x 
	bit 7,a		;a1d4	cb 7f 	.  
	jr z,la1f0h		;a1d6	28 18 	( . 
	call sub_a24ch		;a1d8	cd 4c a2 	. L . 
	call sub_9305h		;a1db	cd 05 93 	. . . 
la1deh:
	jr c,la235h		;a1de	38 55 	8 U 
	ld a,(07f35h)		;a1e0	3a 35 7f 	: 5  
	and 02eh		;a1e3	e6 2e 	. . 
	jr nz,la1f5h		;a1e5	20 0e 	  . 
	ld a,(07f36h)		;a1e7	3a 36 7f 	: 6  
	and 060h		;a1ea	e6 60 	. ` 
	jr nz,la213h		;a1ec	20 25 	  % 
	jr la258h		;a1ee	18 68 	. h 
la1f0h:
	call sub_8369h		;a1f0	cd 69 83 	. i . 
	jr la235h		;a1f3	18 40 	. @ 
la1f5h:
	and 020h		;a1f5	e6 20 	.   
	jr nz,la208h		;a1f7	20 0f 	  . 
	ld hl,07f36h		;a1f9	21 36 7f 	! 6  
	res 0,(hl)		;a1fc	cb 86 	. . 
	ld (07aa2h),ix		;a1fe	dd 22 a2 7a 	. " . z 
	ld (07aa0h),ix		;a202	dd 22 a0 7a 	. " . z 
	jr la22eh		;a206	18 26 	. & 
la208h:
	call sub_930fh		;a208	cd 0f 93 	. . . 
	call 0ff7ch		;a20b	cd 7c ff 	. | . 
	call sub_9305h		;a20e	cd 05 93 	. . . 
	jr la258h		;a211	18 45 	. E 
la213h:
	ld b,a			;a213	47 	G 
	ld a,(07f36h)		;a214	3a 36 7f 	: 6  
	and 09fh		;a217	e6 9f 	. . 
	ld (07f36h),a		;a219	32 36 7f 	2 6  
	bit 5,b		;a21c	cb 68 	. h 
	jp z,la16dh		;a21e	ca 6d a1 	. m . 
	jr la22bh		;a221	18 08 	. . 
la223h:
	ld hl,07f35h		;a223	21 35 7f 	! 5  
	res 5,(hl)		;a226	cb ae 	. . 
	call sub_9328h		;a228	cd 28 93 	. ( . 
la22bh:
	call sub_a7f4h		;a22b	cd f4 a7 	. . . 
la22eh:
	call sub_92feh		;a22e	cd fe 92 	. . . 
	ret			;a231	c9 	. 
la232h:
	call l8379h		;a232	cd 79 83 	. y . 
la235h:
	call sub_a5f0h		;a235	cd f0 a5 	. . . 
	ret			;a238	c9 	. 
la239h:
	call l8379h		;a239	cd 79 83 	. y . 
la23ch:
	ld hl,07f36h		;a23c	21 36 7f 	! 6  
	bit 1,(hl)		;a23f	cb 4e 	. N 
	jr z,la235h		;a241	28 f2 	( . 
	jr la248h		;a243	18 03 	. . 
la245h:
	call l8379h		;a245	cd 79 83 	. y . 
la248h:
	call errorin_end+1		;a248	cd 5b a6 	. [ . 
	ret			;a24b	c9 	. 
sub_a24ch:
	and 00fh		;a24c	e6 0f 	. . 
	ld (07900h),a		;a24e	32 00 79 	2 . y 
	out (019h),a		;a251	d3 19 	. . 
	ld e,(hl)			;a253	5e 	^ 
	inc hl			;a254	23 	# 
	ld d,(hl)			;a255	56 	V 
	ex de,hl			;a256	eb 	. 
	jp (hl)			;a257	e9 	. 
la258h:
	ld (07aa0h),ix		;a258	dd 22 a0 7a 	. " . z 
	call sub_a49dh		;a25c	cd 9d a4 	. . . 
	ld hl,07f36h		;a25f	21 36 7f 	! 6  
	cp 03ah		;a262	fe 3a 	. : 
	jr z,la2aeh		;a264	28 48 	( H 
	cp 00dh		;a266	fe 0d 	. . 
	jr nz,la232h		;a268	20 c8 	  . 
	bit 3,(hl)		;a26a	cb 5e 	. ^ 
	jr nz,la29eh		;a26c	20 30 	  0 
la26eh:
	inc ix		;a26e	dd 23 	. # 
	ld a,(ix+000h)		;a270	dd 7e 00 	. ~ . 
	cp 0ffh		;a273	fe ff 	. . 
	jr z,la2aah		;a275	28 33 	( 3 
	inc ix		;a277	dd 23 	. # 
	inc ix		;a279	dd 23 	. # 
la27bh:
	ld hl,07f35h		;a27b	21 35 7f 	! 5  
	bit 5,(hl)		;a27e	cb 6e 	. n 
	jr nz,la2c4h		;a280	20 42 	  B 
	ld a,(07f36h)		;a282	3a 36 7f 	: 6  
	and 005h		;a285	e6 05 	. . 
	jr nz,la2d5h		;a287	20 4c 	  L 
	call sub_8d3ch		;a289	cd 3c 8d 	. < . 
	jr nz,la2c4h		;a28c	20 36 	  6 
	ld a,(07931h)		;a28e	3a 31 79 	: 1 y 
	add a,010h		;a291	c6 10 	. . 
	ld (07931h),a		;a293	32 31 79 	2 1 y 
	jr nc,la29bh		;a296	30 03 	0 . 
	call sub_8d49h		;a298	cd 49 8d 	. I . 
la29bh:
	jp sub_a144h		;a29b	c3 44 a1 	. D . 
la29eh:
	res 3,(hl)		;a29e	cb 9e 	. . 
	ld ix,(07f3ah)		;a2a0	dd 2a 3a 7f 	. * :  
	ld (07f38h),ix		;a2a4	dd 22 38 7f 	. " 8  
	jr la27bh		;a2a8	18 d1 	. . 
la2aah:
	dec ix		;a2aa	dd 2b 	. + 
	jr la27bh		;a2ac	18 cd 	. . 
la2aeh:
	bit 3,(hl)		;a2ae	cb 5e 	. ^ 
	jr nz,la29eh		;a2b0	20 ec 	  . 
	ld hl,07f35h		;a2b2	21 35 7f 	! 5  
	bit 5,(hl)		;a2b5	cb 6e 	. n 
	jr nz,la2c4h		;a2b7	20 0b 	  . 
	call sub_8d3ch		;a2b9	cd 3c 8d 	. < . 
	jr nz,la2c4h		;a2bc	20 06 	  . 
	call sub_a49dh		;a2be	cd 9d a4 	. . . 
	jp la14eh		;a2c1	c3 4e a1 	. N . 
la2c4h:
	ld hl,07f35h		;a2c4	21 35 7f 	! 5  
	res 5,(hl)		;a2c7	cb ae 	. . 
	call sub_9328h		;a2c9	cd 28 93 	. ( . 
	ld (07aa2h),ix		;a2cc	dd 22 a2 7a 	. " . z 
	call sub_a6c1h		;a2d0	cd c1 a6 	. . . 
	jr la2f8h		;a2d3	18 23 	. # 
la2d5h:
	ld hl,07f36h		;a2d5	21 36 7f 	! 6  
	res 0,(hl)		;a2d8	cb 86 	. . 
	dec hl			;a2da	2b 	+ 
	set 0,(hl)		;a2db	cb c6 	. . 
	ld hl,079dah		;a2dd	21 da 79 	! . y 
	set 2,(hl)		;a2e0	cb d6 	. . 
	ld (07aa2h),ix		;a2e2	dd 22 a2 7a 	. " . z 
	ld iy,07cffh		;a2e6	fd 21 ff 7c 	. ! . | 
	call sub_a73dh		;a2ea	cd 3d a7 	. = . 
	ld (iy+001h),03ah		;a2ed	fd 36 01 3a 	. 6 . : 
	ld (iy+002h),00dh		;a2f1	fd 36 02 0d 	. 6 . . 
	call breakin_end		;a2f5	cd fc a6 	. . . 
la2f8h:
	jp la22eh		;a2f8	c3 2e a2 	. . . 
la2fbh:
	dec ix		;a2fb	dd 2b 	. + 
	ld hl,07f36h		;a2fd	21 36 7f 	! 6  
	bit 1,(hl)		;a300	cb 4e 	. N 
	jr z,la321h		;a302	28 1d 	( . 
	ld hl,07904h		;a304	21 04 79 	! . y 
	bit 6,(hl)		;a307	cb 76 	. v 
	jr z,la321h		;a309	28 16 	( . 
	call 0fff1h		;a30b	cd f1 ff 	. . . 
	jr c,la363h		;a30e	38 53 	8 S 
	call 0ff8eh		;a310	cd 8e ff 	. . . 
	jp c,la248h		;a313	da 48 a2 	. H . 
	ld ix,07cffh		;a316	dd 21 ff 7c 	. ! . | 
	ld hl,07f35h		;a31a	21 35 7f 	! 5  
	bit 5,(hl)		;a31d	cb 6e 	. n 
	jr nz,la2c4h		;a31f	20 a3 	  . 
la321h:
	ld (079b5h),ix		;a321	dd 22 b5 79 	. " . y 
	ld a,(07f33h)		;a325	3a 33 7f 	: 3  
	and 09fh		;a328	e6 9f 	. . 
	or 002h		;a32a	f6 02 	. . 
	ld (07f33h),a		;a32c	32 33 7f 	2 3  
	call sub_930fh		;a32f	cd 0f 93 	. . . 
	call 0ff91h		;a332	cd 91 ff 	. . . 
	call sub_9305h		;a335	cd 05 93 	. . . 
	jp c,la23ch		;a338	da 3c a2 	. < . 
	ld b,a			;a33b	47 	G 
	call sub_a49dh		;a33c	cd 9d a4 	. . . 
	cp 03dh		;a33f	fe 3d 	. = 
	jr nz,la36dh		;a341	20 2a 	  * 
	call sub_930fh		;a343	cd 0f 93 	. . . 
	call 0ff22h		;a346	cd 22 ff 	. " . 
	call sub_9305h		;a349	cd 05 93 	. . . 
	jp c,la23ch		;a34c	da 3c a2 	. < . 
	ld hl,07f36h		;a34f	21 36 7f 	! 6  
	bit 1,(hl)		;a352	cb 4e 	. N 
	jp nz,la3beh		;a354	c2 be a3 	. . . 
	call sub_a49dh		;a357	cd 9d a4 	. . . 
	cp 02ch		;a35a	fe 2c 	. , 
	jr z,la321h		;a35c	28 c3 	( . 
	dec ix		;a35e	dd 2b 	. + 
	jp la258h		;a360	c3 58 a2 	. X . 
la363h:
	ld hl,07904h		;a363	21 04 79 	! . y 
	res 6,(hl)		;a366	cb b6 	. . 
	call sub_854dh		;a368	cd 4d 85 	. M . 
	jr la321h		;a36b	18 b4 	. . 
la36dh:
	ld ix,(079b5h)		;a36d	dd 2a b5 79 	. * . y 
	ld hl,07f36h		;a371	21 36 7f 	! 6  
	bit 1,(hl)		;a374	cb 4e 	. N 
	jr nz,la3aeh		;a376	20 36 	  6 
	inc ix		;a378	dd 23 	. # 
la37ah:
	jp la232h		;a37a	c3 32 a2 	. 2 . 
la37dh:
	ld hl,07f36h		;a37d	21 36 7f 	! 6  
	bit 1,(hl)		;a380	cb 4e 	. N 
	jr z,la37ah		;a382	28 f6 	( . 
	dec ix		;a384	dd 2b 	. + 
	ld hl,07904h		;a386	21 04 79 	! . y 
	bit 6,(hl)		;a389	cb 76 	. v 
	jr z,la3aah		;a38b	28 1d 	( . 
	call 0fff1h		;a38d	cd f1 ff 	. . . 
	jr c,la3a2h		;a390	38 10 	8 . 
	call 0ff8eh		;a392	cd 8e ff 	. . . 
	jp c,la248h		;a395	da 48 a2 	. H . 
	ld hl,07f35h		;a398	21 35 7f 	! 5  
	bit 5,(hl)		;a39b	cb 6e 	. n 
	jr z,la3aah		;a39d	28 0b 	( . 
la39fh:
	jp la223h		;a39f	c3 23 a2 	. # . 
la3a2h:
	ld hl,07904h		;a3a2	21 04 79 	! . y 
	res 6,(hl)		;a3a5	cb b6 	. . 
	call sub_854dh		;a3a7	cd 4d 85 	. M . 
la3aah:
	ld ix,07cffh		;a3aa	dd 21 ff 7c 	. ! . | 
la3aeh:
	call sub_930fh		;a3ae	cd 0f 93 	. . . 
	call 0fffdh		;a3b1	cd fd ff 	. . . 
	call sub_9305h		;a3b4	cd 05 93 	. . . 
	jr c,la40bh		;a3b7	38 52 	8 R 
	call sub_a4fch		;a3b9	cd fc a4 	. . . 
	jr c,la40bh		;a3bc	38 4d 	8 M 
la3beh:
	ld hl,079dah		;a3be	21 da 79 	! . y 
	set 0,(hl)		;a3c1	cb c6 	. . 
	call sub_a49dh		;a3c3	cd 9d a4 	. . . 
	cp 00dh		;a3c6	fe 0d 	. . 
	jr z,la3f7h		;a3c8	28 2d 	( - 
	cp 02ch		;a3ca	fe 2c 	. , 
	jp nz,la245h		;a3cc	c2 45 a2 	. E . 
	ld hl,079bdh		;a3cf	21 bd 79 	! . y 
	bit 2,(hl)		;a3d2	cb 56 	. V 
	jr nz,la3deh		;a3d4	20 08 	  . 
	ld hl,07904h		;a3d6	21 04 79 	! . y 
	res 6,(hl)		;a3d9	cb b6 	. . 
	call sub_854dh		;a3db	cd 4d 85 	. M . 
la3deh:
	call sub_a85bh		;a3de	cd 5b a8 	. [ . 
	jr c,la40bh		;a3e1	38 28 	8 ( 
	ld hl,07f35h		;a3e3	21 35 7f 	! 5  
	bit 5,(hl)		;a3e6	cb 6e 	. n 
	jr nz,la39fh		;a3e8	20 b5 	  . 
	call sub_a49dh		;a3ea	cd 9d a4 	. . . 
	dec ix		;a3ed	dd 2b 	. + 
	call sub_a4eeh		;a3ef	cd ee a4 	. . . 
	jr c,la3aeh		;a3f2	38 ba 	8 . 
	jp la321h		;a3f4	c3 21 a3 	. ! . 
la3f7h:
	call sub_a85bh		;a3f7	cd 5b a8 	. [ . 
	jr c,la40bh		;a3fa	38 0f 	8 . 
	ld hl,07f35h		;a3fc	21 35 7f 	! 5  
	bit 5,(hl)		;a3ff	cb 6e 	. n 
	jr nz,la39fh		;a401	20 9c 	  . 
	ld (079b5h),ix		;a403	dd 22 b5 79 	. " . y 
	call sub_92feh		;a407	cd fe 92 	. . . 
	ret			;a40a	c9 	. 
la40bh:
	jp errorin_end+1		;a40b	c3 5b a6 	. [ . 
la40eh:
	ld hl,07f36h		;a40e	21 36 7f 	! 6  
	bit 5,(hl)		;a411	cb 6e 	. n 
	jp z,la248h		;a413	ca 48 a2 	. H . 
	res 5,(hl)		;a416	cb ae 	. . 
	jp la235h		;a418	c3 35 a2 	. 5 . 
la41bh:
	call sub_8369h		;a41b	cd 69 83 	. i . 
	jp la248h		;a41e	c3 48 a2 	. H . 
la421h:
	bit 6,b		;a421	cb 70 	. p 
	jr z,la41bh		;a423	28 f6 	( . 
	ld a,b			;a425	78 	x 
	and 00fh		;a426	e6 0f 	. . 
	call sub_a24ch		;a428	cd 4c a2 	. L . 
	call sub_9305h		;a42b	cd 05 93 	. . . 
	jr c,la40eh		;a42e	38 de 	8 . 
	ld hl,07f35h		;a430	21 35 7f 	! 5  
	bit 5,(hl)		;a433	cb 6e 	. n 
	jp nz,la223h		;a435	c2 23 a2 	. # . 
	call sub_a49dh		;a438	cd 9d a4 	. . . 
	cp 00dh		;a43b	fe 0d 	. . 
	jp nz,la245h		;a43d	c2 45 a2 	. E . 
	ld hl,07f36h		;a440	21 36 7f 	! 6  
	bit 4,(hl)		;a443	cb 66 	. f 
	jr z,la469h		;a445	28 22 	( " 
	res 1,(hl)		;a447	cb 8e 	. . 
	ld a,(07f35h)		;a449	3a 35 7f 	: 5  
	and 00eh		;a44c	e6 0e 	. . 
	jr z,la473h		;a44e	28 23 	( # 
la450h:
	ld a,(07f35h)		;a450	3a 35 7f 	: 5  
	and 006h		;a453	e6 06 	. . 
	jr z,la47dh		;a455	28 26 	( & 
	call sub_a72eh		;a457	cd 2e a7 	. . . 
	ld h,d			;a45a	62 	b 
	ld l,000h		;a45b	2e 00 	. . 
	ld (07920h),hl		;a45d	22 20 79 	"   y 
	ld (0792bh),hl		;a460	22 2b 79 	" + y 
	call sub_aa11h		;a463	cd 11 aa 	. . . 
la466h:
	jp la22eh		;a466	c3 2e a2 	. . . 
la469h:
	ld hl,079dah		;a469	21 da 79 	! . y 
	bit 2,(hl)		;a46c	cb 56 	. V 
	jr nz,la466h		;a46e	20 f6 	  . 
	jp la22bh		;a470	c3 2b a2 	. + . 
la473h:
	call sub_ae34h		;a473	cd 34 ae 	. 4 . 
	ld ix,(07f3ah)		;a476	dd 2a 3a 7f 	. * :  
	jp sub_a144h		;a47a	c3 44 a1 	. D . 
la47dh:
	ld ix,(07aa2h)		;a47d	dd 2a a2 7a 	. * . z 
	ld (07f38h),ix		;a481	dd 22 38 7f 	. " 8  
la485h:
	ld a,(07f35h)		;a485	3a 35 7f 	: 5  
	and 0f1h		;a488	e6 f1 	. . 
	ld (07f35h),a		;a48a	32 35 7f 	2 5  
	ld hl,07f36h		;a48d	21 36 7f 	! 6  
	res 1,(hl)		;a490	cb 8e 	. . 
	ld a,(079dah)		;a492	3a da 79 	: . y 
	and 0c0h		;a495	e6 c0 	. . 
	ld (079dah),a		;a497	32 da 79 	2 . y 
	jp la258h		;a49a	c3 58 a2 	. X . 
sub_a49dh:
	inc ix		;a49d	dd 23 	. # 
	ld a,(ix+000h)		;a49f	dd 7e 00 	. ~ . 
	cp 020h		;a4a2	fe 20 	.   
	jr z,sub_a49dh		;a4a4	28 f7 	( . 
	ret			;a4a6	c9 	. 
sub_a4a7h:
	call sub_a49dh		;a4a7	cd 9d a4 	. . . 
	cp 022h		;a4aa	fe 22 	. " 
	jr nz,la4cdh		;a4ac	20 1f 	  . 
la4aeh:
	inc ix		;a4ae	dd 23 	. # 
	ld a,(ix+000h)		;a4b0	dd 7e 00 	. ~ . 
	cp 00dh		;a4b3	fe 0d 	. . 
	jr z,la4cbh		;a4b5	28 14 	( . 
	cp 022h		;a4b7	fe 22 	. " 
	jr nz,la4aeh		;a4b9	20 f3 	  . 
la4bbh:
	call sub_a49dh		;a4bb	cd 9d a4 	. . . 
	cp 00dh		;a4be	fe 0d 	. . 
	jr z,la4cbh		;a4c0	28 09 	( . 
	cp 03ah		;a4c2	fe 3a 	. : 
	jr nz,la4c9h		;a4c4	20 03 	  . 
	call sub_a49dh		;a4c6	cd 9d a4 	. . . 
la4c9h:
	and a			;a4c9	a7 	. 
	ret			;a4ca	c9 	. 
la4cbh:
	scf			;a4cb	37 	7 
	ret			;a4cc	c9 	. 
la4cdh:
	cp 02ah		;a4cd	fe 2a 	. * 
	jr nz,la4c9h		;a4cf	20 f8 	  . 
	inc ix		;a4d1	dd 23 	. # 
	ld a,(ix+000h)		;a4d3	dd 7e 00 	. ~ . 
	call sub_a4eeh		;a4d6	cd ee a4 	. . . 
	jr c,la4eah		;a4d9	38 0f 	8 . 
la4dbh:
	inc ix		;a4db	dd 23 	. # 
	ld a,(ix+000h)		;a4dd	dd 7e 00 	. ~ . 
	call sub_a4eeh		;a4e0	cd ee a4 	. . . 
	jr nc,la4dbh		;a4e3	30 f6 	0 . 
	call sub_a4f5h		;a4e5	cd f5 a4 	. . . 
	jr nc,la4dbh		;a4e8	30 f1 	0 . 
la4eah:
	dec ix		;a4ea	dd 2b 	. + 
	jr la4bbh		;a4ec	18 cd 	. . 
sub_a4eeh:
	cp 041h		;a4ee	fe 41 	. A 
	ret c			;a4f0	d8 	. 
	cp 05bh		;a4f1	fe 5b 	. [ 
	ccf			;a4f3	3f 	? 
	ret			;a4f4	c9 	. 
sub_a4f5h:
	cp 030h		;a4f5	fe 30 	. 0 
	ret c			;a4f7	d8 	. 
	cp 03ah		;a4f8	fe 3a 	. : 
	ccf			;a4fa	3f 	? 
	ret			;a4fb	c9 	. 
sub_a4fch:
	ld a,(07f14h)		;a4fc	3a 14 7f 	: .  
	cp 0d0h		;a4ff	fe d0 	. . 
	jr z,la558h		;a501	28 55 	( U 
	ld hl,07903h		;a503	21 03 79 	! . y 
	bit 3,(hl)		;a506	cb 5e 	. ^ 
	jr z,la558h		;a508	28 4e 	( N 
	ld hl,07f11h		;a50a	21 11 7f 	! .  
	res 3,(hl)		;a50d	cb 9e 	. . 
	call sub_80cdh		;a50f	cd cd 80 	. . . 
	ld hl,07990h		;a512	21 90 79 	! . y 
	call l8225h		;a515	cd 25 82 	. % . 
	ld hl,0796eh		;a518	21 6e 79 	! n y 
	bit 3,(hl)		;a51b	cb 5e 	. ^ 
	call nz,sub_8145h		;a51d	c4 45 81 	. E . 
	call sub_930fh		;a520	cd 0f 93 	. . . 
	ld a,(0796dh)		;a523	3a 6d 79 	: m y 
	sub 02ah		;a526	d6 2a 	. * 
	jr z,la55dh		;a528	28 33 	( 3 
	dec a			;a52a	3d 	= 
	jr z,la562h		;a52b	28 35 	( 5 
	sub 002h		;a52d	d6 02 	. . 
	jr z,la567h		;a52f	28 36 	( 6 
	call 0ffa0h		;a531	cd a0 ff 	. . . 
la534h:
	call sub_9305h		;a534	cd 05 93 	. . . 
	ret c			;a537	d8 	. 
	call sub_81bbh		;a538	cd bb 81 	. . . 
	call l81ach		;a53b	cd ac 81 	. . . 
	call sub_a752h		;a53e	cd 52 a7 	. R . 
	ld a,(07904h)		;a541	3a 04 79 	: . y 
	rla			;a544	17 	. 
	rla			;a545	17 	. 
	ret nc			;a546	d0 	. 
	call sub_a56ch		;a547	cd 6c a5 	. l . 
	ret c			;a54a	d8 	. 
	ld bc,00008h		;a54b	01 08 00 	. . . 
	ld de,07f10h		;a54e	11 10 7f 	. .  
	ld hl,079c8h		;a551	21 c8 79 	! . y 
	ldir		;a554	ed b0 	. . 
	and a			;a556	a7 	. 
	ret			;a557	c9 	. 
la558h:
	call sub_a752h		;a558	cd 52 a7 	. R . 
	and a			;a55b	a7 	. 
	ret			;a55c	c9 	. 
la55dh:
	call 0ffa3h		;a55d	cd a3 ff 	. . . 
	jr la534h		;a560	18 d2 	. . 
la562h:
	call 0ffa9h		;a562	cd a9 ff 	. . . 
	jr la534h		;a565	18 cd 	. . 
la567h:
	call 0ffa6h		;a567	cd a6 ff 	. . . 
	jr la534h		;a56a	18 c8 	. . 
sub_a56ch:
	ld hl,07990h		;a56c	21 90 79 	! . y 
	ld de,07f10h		;a56f	11 10 7f 	. .  
	ld bc,00008h		;a572	01 08 00 	. . . 
	ldir		;a575	ed b0 	. . 
	ld a,(07f33h)		;a577	3a 33 7f 	: 3  
	and 0feh		;a57a	e6 fe 	. . 
	or 082h		;a57c	f6 82 	. . 
	ld (07f33h),a		;a57e	32 33 7f 	2 3  
	xor a			;a581	af 	. 
	ld (079e7h),a		;a582	32 e7 79 	2 . y 
	ld hl,079dfh		;a585	21 df 79 	! . y 
	res 1,(hl)		;a588	cb 8e 	. . 
	ld hl,07964h		;a58a	21 64 79 	! d y 
	res 6,(hl)		;a58d	cb b6 	. . 
	call sub_83b4h		;a58f	cd b4 83 	. . . 
	ld hl,00000h		;a592	21 00 00 	! . . 
	ld (07f0eh),hl		;a595	22 0e 7f 	" .  
	ld (07f3ch),hl		;a598	22 3c 7f 	" <  
	ld hl,079dfh		;a59b	21 df 79 	! . y 
	res 0,(hl)		;a59e	cb 86 	. . 
	call sub_930fh		;a5a0	cd 0f 93 	. . . 
	call 0ff16h		;a5a3	cd 16 ff 	. . . 
	call sub_9305h		;a5a6	cd 05 93 	. . . 
	ret c			;a5a9	d8 	. 
	ld hl,079dfh		;a5aa	21 df 79 	! . y 
	res 0,(hl)		;a5ad	cb 86 	. . 
	push iy		;a5af	fd e5 	. . 
	pop hl			;a5b1	e1 	. 
	ld de,07a5fh		;a5b2	11 5f 7a 	. _ z 
	sbc hl,de		;a5b5	ed 52 	. R 
	ld c,l			;a5b7	4d 	M 
	ld hl,07f10h		;a5b8	21 10 7f 	! .  
	ld a,020h		;a5bb	3e 20 	>   
	ld (hl),a			;a5bd	77 	w 
	inc hl			;a5be	23 	# 
	ld (hl),a			;a5bf	77 	w 
	ld a,(0796eh)		;a5c0	3a 6e 79 	: n y 
	bit 3,a		;a5c3	cb 5f 	. _ 
	jr nz,la5cch		;a5c5	20 05 	  . 
	ld a,(0796dh)		;a5c7	3a 6d 79 	: m y 
	inc hl			;a5ca	23 	# 
	ld (hl),a			;a5cb	77 	w 
la5cch:
	inc hl			;a5cc	23 	# 
	ld de,07a60h		;a5cd	11 60 7a 	. ` z 
	ld b,000h		;a5d0	06 00 	. . 
	ex de,hl			;a5d2	eb 	. 
	ldir		;a5d3	ed b0 	. . 
	ex de,hl			;a5d5	eb 	. 
	ld a,(0796eh)		;a5d6	3a 6e 79 	: n y 
	bit 3,a		;a5d9	cb 5f 	. _ 
	jr z,la5e2h		;a5db	28 05 	( . 
	ld a,(0796dh)		;a5dd	3a 6d 79 	: m y 
	ld (hl),a			;a5e0	77 	w 
	inc hl			;a5e1	23 	# 
la5e2h:
	ld a,028h		;a5e2	3e 28 	> ( 
	sub l			;a5e4	95 	. 
	ld b,a			;a5e5	47 	G 
	ld a,020h		;a5e6	3e 20 	>   
la5e8h:
	ld (hl),a			;a5e8	77 	w 
	inc hl			;a5e9	23 	# 
	djnz la5e8h		;a5ea	10 fc 	. . 
	call 0ffd0h		;a5ec	cd d0 ff 	. . . 
	ret			;a5ef	c9 	. 
sub_a5f0h:
	ld (07f38h),ix		;a5f0	dd 22 38 7f 	. " 8  
	ld (07aa4h),ix		;a5f4	dd 22 a4 7a 	. " . z 
	ld (07aa0h),ix		;a5f8	dd 22 a0 7a 	. " . z 
	ld hl,07f35h		;a5fc	21 35 7f 	! 5  
	res 4,(hl)		;a5ff	cb a6 	. . 
	ld de,07d00h		;a601	11 00 7d 	. . } 
	ld hl,errorin_start		;a604	21 51 a6 	! Q . 
	ld bc,00006h		;a607	01 06 00 	. . . 
	ldir		;a60a	ed b0 	. . 
	call sub_a699h		;a60c	cd 99 a6 	. . . 
	ld hl,la657h		;a60f	21 57 a6 	! W . 
	ld bc,00004h		;a612	01 04 00 	. . . 
	ldir		;a615	ed b0 	. . 
	dec de			;a617	1b 	. 
	push de			;a618	d5 	. 
	pop iy		;a619	fd e1 	. . 
	ld (07f3ah),ix		;a61b	dd 22 3a 7f 	. " :  
	call sub_930fh		;a61f	cd 0f 93 	. . . 
	call 0ff94h		;a622	cd 94 ff 	. . . 
	call sub_9305h		;a625	cd 05 93 	. . . 
	dec ix		;a628	dd 2b 	. + 
	call 0ff88h		;a62a	cd 88 ff 	. . . 
	ld (iy+001h),00dh		;a62d	fd 36 01 0d 	. 6 . . 
	ld hl,079d9h		;a631	21 d9 79 	! . y 
	set 1,(hl)		;a634	cb ce 	. . 
	ld a,(079dah)		;a636	3a da 79 	: . y 
	and 0c0h		;a639	e6 c0 	. . 
	or 002h		;a63b	f6 02 	. . 
	ld (079dah),a		;a63d	32 da 79 	2 . y 
	call breakin_end		;a640	cd fc a6 	. . . 
la643h:
	ld hl,07903h		;a643	21 03 79 	! . y 
	set 1,(hl)		;a646	cb ce 	. . 
	ld hl,07901h		;a648	21 01 79 	! . y 
	res 0,(hl)		;a64b	cb 86 	. . 
	call sub_854dh		;a64d	cd 4d 85 	. M . 
	ret			;a650	c9 	. 

; BLOCK 'errorin' (start 0xa651 end 0xa65a)
errorin_start:
	defb 045h		;a651	45 	E 
	defb 052h		;a652	52 	R 
	defb 052h		;a653	52 	R 
	defb 04fh		;a654	4f 	O 
	defb 052h		;a655	52 	R 
	defb 020h		;a656	20 	  
la657h:
	defb 020h		;a657	20 	  
	defb 049h		;a658	49 	I 
	defb 04eh		;a659	4e 	N 
errorin_end:
	jr nz,$-49		;a65a	20 cd 	  . 
	or l			;a65c	b5 	. 
	and (hl)			;a65d	a6 	. 
	ld (07f38h),ix		;a65e	dd 22 38 7f 	. " 8  
	ld de,07f10h		;a662	11 10 7f 	. .  
	ld hl,errorin_start		;a665	21 51 a6 	! Q . 
	ld bc,00006h		;a668	01 06 00 	. . . 
	ldir		;a66b	ed b0 	. . 
	call sub_a699h		;a66d	cd 99 a6 	. . . 
	ld hl,07f10h		;a670	21 10 7f 	! .  
sub_a673h:
	push hl			;a673	e5 	. 
	ld a,(07965h)		;a674	3a 65 79 	: e y 
	and 0e1h		;a677	e6 e1 	. . 
	ld (07965h),a		;a679	32 65 79 	2 e y 
	call sub_a72eh		;a67c	cd 2e a7 	. . . 
	ld e,017h		;a67f	1e 17 	. . 
	ld (07922h),de		;a681	ed 53 22 79 	. S " y 
	ld e,000h		;a685	1e 00 	. . 
	ld b,018h		;a687	06 18 	. . 
	pop hl			;a689	e1 	. 
	call sub_84cdh		;a68a	cd cd 84 	. . . 
	ld a,(079dah)		;a68d	3a da 79 	: . y 
	and 0fah		;a690	e6 fa 	. . 
	or 002h		;a692	f6 02 	. . 
	ld (079dah),a		;a694	32 da 79 	2 . y 
	jr la643h		;a697	18 aa 	. . 
sub_a699h:
	ld a,(07f34h)		;a699	3a 34 7f 	: 4  
	ld b,a			;a69c	47 	G 
	rra			;a69d	1f 	. 
	rra			;a69e	1f 	. 
	rra			;a69f	1f 	. 
	rra			;a6a0	1f 	. 
	and 00fh		;a6a1	e6 0f 	. . 
	or 030h		;a6a3	f6 30 	. 0 
	cp 030h		;a6a5	fe 30 	. 0 
	jr nz,la6abh		;a6a7	20 02 	  . 
	ld a,020h		;a6a9	3e 20 	>   
la6abh:
	ld (de),a			;a6ab	12 	. 
	inc de			;a6ac	13 	. 
	ld a,b			;a6ad	78 	x 
	and 00fh		;a6ae	e6 0f 	. . 
	or 030h		;a6b0	f6 30 	. 0 
	ld (de),a			;a6b2	12 	. 
	inc de			;a6b3	13 	. 
	ret			;a6b4	c9 	. 
	ld hl,07f10h		;a6b5	21 10 7f 	! .  
	ld a,020h		;a6b8	3e 20 	>   
	ld b,018h		;a6ba	06 18 	. . 
la6bch:
	ld (hl),a			;a6bc	77 	w 
	inc hl			;a6bd	23 	# 
	djnz la6bch		;a6be	10 fc 	. . 
	ret			;a6c0	c9 	. 
sub_a6c1h:
	ld hl,07f35h		;a6c1	21 35 7f 	! 5  
	bit 4,(hl)		;a6c4	cb 66 	. f 
	ret z			;a6c6	c8 	. 
	bit 0,(hl)		;a6c7	cb 46 	. F 
	ret nz			;a6c9	c0 	. 
	set 0,(hl)		;a6ca	cb c6 	. . 
	call sub_ae13h		;a6cc	cd 13 ae 	. . . 
	ld a,(079dah)		;a6cf	3a da 79 	: . y 
	and 0ddh		;a6d2	e6 dd 	. . 
	or 010h		;a6d4	f6 10 	. . 
	ld (079dah),a		;a6d6	32 da 79 	2 . y 
	ld de,07d00h		;a6d9	11 00 7d 	. . } 
	ld hl,breakin_start		;a6dc	21 f3 a6 	! . . 
	ld bc,00009h		;a6df	01 09 00 	. . . 
	ldir		;a6e2	ed b0 	. . 
	dec de			;a6e4	1b 	. 
	push de			;a6e5	d5 	. 
	pop iy		;a6e6	fd e1 	. . 
	call sub_a73dh		;a6e8	cd 3d a7 	. = . 
	ld (iy+001h),00dh		;a6eb	fd 36 01 0d 	. 6 . . 
	call breakin_end		;a6ef	cd fc a6 	. . . 
	ret			;a6f2	c9 	. 

; BLOCK 'breakin' (start 0xa6f3 end 0xa6fc)
breakin_start:
	defb 042h		;a6f3	42 	B 
	defb 052h		;a6f4	52 	R 
	defb 045h		;a6f5	45 	E 
	defb 041h		;a6f6	41 	A 
	defb 04bh		;a6f7	4b 	K 
	defb 020h		;a6f8	20 	  
	defb 049h		;a6f9	49 	I 
	defb 04eh		;a6fa	4e 	N 
	defb 020h		;a6fb	20 	  
breakin_end:
	call sub_a72eh		;a6fc	cd 2e a7 	. . . 
	ld e,000h		;a6ff	1e 00 	. . 
	ld (07922h),de		;a701	ed 53 22 79 	. S " y 
	ld a,010h		;a705	3e 10 	> . 
	ld (07f08h),a		;a707	32 08 7f 	2 .  
	ld hl,07965h		;a70a	21 65 79 	! e y 
	res 2,(hl)		;a70d	cb 96 	. . 
	ld hl,07d00h		;a70f	21 00 7d 	! . } 
	ld a,00dh		;a712	3e 0d 	> . 
	ld bc,00018h		;a714	01 18 00 	. . . 
	cpir		;a717	ed b1 	. . 
	jr z,la71dh		;a719	28 02 	( . 
	ld l,018h		;a71b	2e 18 	. . 
la71dh:
	ld b,l			;a71d	45 	E 
	ld de,(07922h)		;a71e	ed 5b 22 79 	. [ " y 
	dec l			;a722	2d 	- 
	ld a,l			;a723	7d 	} 
	ld (07922h),a		;a724	32 22 79 	2 " y 
	ld hl,07d00h		;a727	21 00 7d 	! . } 
	call sub_84cdh		;a72a	cd cd 84 	. . . 
	ret			;a72d	c9 	. 
sub_a72eh:
	ld a,(07923h)		;a72e	3a 23 79 	: # y 
	inc a			;a731	3c 	< 
	cp 004h		;a732	fe 04 	. . 
	jr c,la73bh		;a734	38 05 	8 . 
	call sub_84f7h		;a736	cd f7 84 	. . . 
	ld a,003h		;a739	3e 03 	> . 
la73bh:
	ld d,a			;a73b	57 	W 
	ret			;a73c	c9 	. 
sub_a73dh:
	ld hl,(07aa0h)		;a73d	2a a0 7a 	* . z 
	ld (07f3ah),hl		;a740	22 3a 7f 	" :  
	call sub_930fh		;a743	cd 0f 93 	. . . 
	call 0ff94h		;a746	cd 94 ff 	. . . 
	call sub_9305h		;a749	cd 05 93 	. . . 
	dec ix		;a74c	dd 2b 	. + 
	call 0ff88h		;a74e	cd 88 ff 	. . . 
	ret			;a751	c9 	. 
sub_a752h:
	call l80d8h		;a752	cd d8 80 	. . . 
	call sub_842ah		;a755	cd 2a 84 	. * . 
	jr nc,la78ah		;a758	30 30 	0 0 
	ld hl,07f18h		;a75a	21 18 7f 	! .  
	ld de,079a0h		;a75d	11 a0 79 	. . y 
	ld bc,00008h		;a760	01 08 00 	. . . 
	ldir		;a763	ed b0 	. . 
	call l80d8h		;a765	cd d8 80 	. . . 
	ld hl,079d8h		;a768	21 d8 79 	! . y 
	bit 4,(hl)		;a76b	cb 66 	. f 
	jr z,la78ah		;a76d	28 1b 	( . 
	call sub_83b4h		;a76f	cd b4 83 	. . . 
	call sub_930fh		;a772	cd 0f 93 	. . . 
	call 0ff1fh		;a775	cd 1f ff 	. . . 
	call sub_9305h		;a778	cd 05 93 	. . . 
	call sub_83b4h		;a77b	cd b4 83 	. . . 
	call l80d8h		;a77e	cd d8 80 	. . . 
	ld hl,079a0h		;a781	21 a0 79 	! . y 
	ld de,07f10h		;a784	11 10 7f 	. .  
	call sub_a79ch		;a787	cd 9c a7 	. . . 
la78ah:
	ld hl,07f18h		;a78a	21 18 7f 	! .  
	ld de,079c8h		;a78d	11 c8 79 	. . y 
	ld bc,00008h		;a790	01 08 00 	. . . 
	ldir		;a793	ed b0 	. . 
	ret			;a795	c9 	. 
sub_a796h:
	ld hl,079c8h		;a796	21 c8 79 	! . y 
	ld de,07f10h		;a799	11 10 7f 	. .  
sub_a79ch:
	ld bc,00008h		;a79c	01 08 00 	. . . 
la79fh:
	ld a,(de)			;a79f	1a 	. 
	ldi		;a7a0	ed a0 	. . 
	dec hl			;a7a2	2b 	+ 
	ld (hl),a			;a7a3	77 	w 
	inc hl			;a7a4	23 	# 
	jp pe,la79fh		;a7a5	ea 9f a7 	. . . 
	ret			;a7a8	c9 	. 
sub_a7a9h:
	call sub_930fh		;a7a9	cd 0f 93 	. . . 
	call 0fff7h		;a7ac	cd f7 ff 	. . . 
	call sub_9305h		;a7af	cd 05 93 	. . . 
	ld a,002h		;a7b2	3e 02 	> . 
	ld (07f33h),a		;a7b4	32 33 7f 	2 3  
	xor a			;a7b7	af 	. 
	ld (079e7h),a		;a7b8	32 e7 79 	2 . y 
	ld hl,079dfh		;a7bb	21 df 79 	! . y 
	res 0,(hl)		;a7be	cb 86 	. . 
	set 1,(hl)		;a7c0	cb ce 	. . 
	call sub_930fh		;a7c2	cd 0f 93 	. . . 
	call 0fff4h		;a7c5	cd f4 ff 	. . . 
	call sub_9305h		;a7c8	cd 05 93 	. . . 
	ld hl,079dfh		;a7cb	21 df 79 	! . y 
	res 1,(hl)		;a7ce	cb 8e 	. . 
la7d0h:
	ld hl,(079d2h)		;a7d0	2a d2 79 	* . y 
	ld (079f8h),hl		;a7d3	22 f8 79 	" . y 
	ld hl,(079d4h)		;a7d6	2a d4 79 	* . y 
	ld (079fah),hl		;a7d9	22 fa 79 	" . y 
	ret			;a7dc	c9 	. 
sub_a7ddh:
	ld a,020h		;a7dd	3e 20 	>   
	ld b,060h		;a7df	06 60 	. ` 
	ld de,00000h		;a7e1	11 00 00 	. . . 
	call sub_86b3h		;a7e4	cd b3 86 	. . . 
	ld a,0ffh		;a7e7	3e ff 	> . 
	ld (07923h),a		;a7e9	32 23 79 	2 # y 
	call sub_a7f4h		;a7ec	cd f4 a7 	. . . 
	ret			;a7ef	c9 	. 
sub_a7f0h:
	ld a,03ch		;a7f0	3e 3c 	> < 
	jr la7f6h		;a7f2	18 02 	. . 
sub_a7f4h:
	ld a,03eh		;a7f4	3e 3e 	> > 
la7f6h:
	push af			;a7f6	f5 	. 
	ld a,(079dah)		;a7f7	3a da 79 	: . y 
	and 080h		;a7fa	e6 80 	. . 
	ld (079dah),a		;a7fc	32 da 79 	2 . y 
	ld a,(07965h)		;a7ff	3a 65 79 	: e y 
	and 0e1h		;a802	e6 e1 	. . 
	ld (07965h),a		;a804	32 65 79 	2 e y 
	ld bc,000ffh		;a807	01 ff 00 	. . . 
	ld hl,07c00h		;a80a	21 00 7c 	! . | 
	ld de,07c01h		;a80d	11 01 7c 	. . | 
	ld (hl),00dh		;a810	36 0d 	6 . 
	ldir		;a812	ed b0 	. . 
	ld hl,07913h		;a814	21 13 79 	! . y 
	ld (hl),000h		;a817	36 00 	6 . 
	ld b,00ch		;a819	06 0c 	. . 
	ld a,0ffh		;a81b	3e ff 	> . 
la81dh:
	inc hl			;a81d	23 	# 
	ld (hl),a			;a81e	77 	w 
	djnz la81dh		;a81f	10 fc 	. . 
	xor a			;a821	af 	. 
	ld hl,00000h		;a822	21 00 00 	! . . 
	ld (07924h),a		;a825	32 24 79 	2 $ y 
	ld (07925h),a		;a828	32 25 79 	2 % y 
	ld (07929h),hl		;a82b	22 29 79 	" ) y 
	ld (07927h),a		;a82e	32 27 79 	2 ' y 
	ld (07928h),a		;a831	32 28 79 	2 ( y 
	ld (07922h),a		;a834	32 22 79 	2 " y 
	call sub_a72eh		;a837	cd 2e a7 	. . . 
	ld a,d			;a83a	7a 	z 
	ld (07923h),a		;a83b	32 23 79 	2 # y 
	ld h,a			;a83e	67 	g 
	ld l,000h		;a83f	2e 00 	. . 
	ld (07920h),hl		;a841	22 20 79 	"   y 
	ld (0792bh),hl		;a844	22 2b 79 	" + y 
	ex de,hl			;a847	eb 	. 
	pop af			;a848	f1 	. 
	call sub_8468h		;a849	cd 68 84 	. h . 
	ld a,0ffh		;a84c	3e ff 	> . 
	ld (07926h),a		;a84e	32 26 79 	2 & y 
	ld hl,0796eh		;a851	21 6e 79 	! n y 
	res 0,(hl)		;a854	cb 86 	. . 
	xor a			;a856	af 	. 
	ld (0790bh),a		;a857	32 0b 79 	2 . y 
	ret			;a85a	c9 	. 
sub_a85bh:
	call sub_842ah		;a85b	cd 2a 84 	. * . 
	jr nc,la8d3h		;a85e	30 73 	0 s 
	ld hl,07964h		;a860	21 64 79 	! d y 
	bit 0,(hl)		;a863	cb 46 	. F 
	jr z,la86bh		;a865	28 04 	( . 
	call sub_a937h		;a867	cd 37 a9 	. 7 . 
	ret c			;a86a	d8 	. 
la86bh:
	ld hl,07a60h		;a86b	21 60 7a 	! ` z 
	ld a,020h		;a86e	3e 20 	>   
	ld b,018h		;a870	06 18 	. . 
la872h:
	ld (hl),a			;a872	77 	w 
	inc hl			;a873	23 	# 
	djnz la872h		;a874	10 fc 	. . 
	ld a,(07f33h)		;a876	3a 33 7f 	: 3  
	and 0f8h		;a879	e6 f8 	. . 
	or 080h		;a87b	f6 80 	. . 
	ld (07f33h),a		;a87d	32 33 7f 	2 3  
	xor a			;a880	af 	. 
	ld (079e7h),a		;a881	32 e7 79 	2 . y 
	ld hl,079dfh		;a884	21 df 79 	! . y 
	res 1,(hl)		;a887	cb 8e 	. . 
	call sub_930fh		;a889	cd 0f 93 	. . . 
	call 0fff4h		;a88c	cd f4 ff 	. . . 
	call sub_9305h		;a88f	cd 05 93 	. . . 
	ret c			;a892	d8 	. 
	ld hl,07a60h		;a893	21 60 7a 	! ` z 
	ld de,07f10h		;a896	11 10 7f 	. .  
	ld bc,00018h		;a899	01 18 00 	. . . 
	ldir		;a89c	ed b0 	. . 
	ld hl,07904h		;a89e	21 04 79 	! . y 
	bit 6,(hl)		;a8a1	cb 76 	. v 
	jr z,la8a9h		;a8a3	28 04 	( . 
	call 0ffd0h		;a8a5	cd d0 ff 	. . . 
	ret c			;a8a8	d8 	. 
la8a9h:
	ld a,(079dah)		;a8a9	3a da 79 	: . y 
	rra			;a8ac	1f 	. 
	ret nc			;a8ad	d0 	. 
	ld (07f38h),ix		;a8ae	dd 22 38 7f 	. " 8  
	call sub_a72eh		;a8b2	cd 2e a7 	. . . 
	ld e,017h		;a8b5	1e 17 	. . 
	ld (07922h),de		;a8b7	ed 53 22 79 	. S " y 
	ld e,000h		;a8bb	1e 00 	. . 
	ld b,018h		;a8bd	06 18 	. . 
	ld hl,07f10h		;a8bf	21 10 7f 	! .  
	call sub_84cdh		;a8c2	cd cd 84 	. . . 
la8c5h:
	ld ix,(07f38h)		;a8c5	dd 2a 38 7f 	. * 8  
	ld a,(07964h)		;a8c9	3a 64 79 	: d y 
	rra			;a8cc	1f 	. 
	ret nc			;a8cd	d0 	. 
	call sub_a9c3h		;a8ce	cd c3 a9 	. . . 
	xor a			;a8d1	af 	. 
	ret			;a8d2	c9 	. 
la8d3h:
	ld (07f38h),ix		;a8d3	dd 22 38 7f 	. " 8  
	call sub_a9dah		;a8d7	cd da a9 	. . . 
	inc ix		;a8da	dd 23 	. # 
	ld a,(ix+000h)		;a8dc	dd 7e 00 	. ~ . 
	push af			;a8df	f5 	. 
	ld (ix+000h),00dh		;a8e0	dd 36 00 0d 	. 6 . . 
	ld hl,07904h		;a8e4	21 04 79 	! . y 
	bit 6,(hl)		;a8e7	cb 76 	. v 
	jr z,la902h		;a8e9	28 17 	( . 
	ld a,010h		;a8eb	3e 10 	> . 
	ld (07f08h),a		;a8ed	32 08 7f 	2 .  
	ld ix,(079cdh)		;a8f0	dd 2a cd 79 	. * . y 
	dec ix		;a8f4	dd 2b 	. + 
	call 0ffc7h		;a8f6	cd c7 ff 	. . . 
	jr c,la932h		;a8f9	38 37 	8 7 
	ld hl,07f35h		;a8fb	21 35 7f 	! 5  
	bit 5,(hl)		;a8fe	cb 6e 	. n 
	jr nz,la929h		;a900	20 27 	  ' 
la902h:
	ld a,(079dah)		;a902	3a da 79 	: . y 
	rra			;a905	1f 	. 
	jr nc,la929h		;a906	30 21 	0 ! 
	ld hl,07965h		;a908	21 65 79 	! e y 
	res 2,(hl)		;a90b	cb 96 	. . 
	call sub_a72eh		;a90d	cd 2e a7 	. . . 
	ld e,000h		;a910	1e 00 	. . 
	ld hl,(079cdh)		;a912	2a cd 79 	* . y 
	ld a,(079cfh)		;a915	3a cf 79 	: . y 
	and a			;a918	a7 	. 
	jr z,la934h		;a919	28 19 	( . 
	cp 061h		;a91b	fe 61 	. a 
	jr c,la921h		;a91d	38 02 	8 . 
	ld a,060h		;a91f	3e 60 	> ` 
la921h:
	ld b,a			;a921	47 	G 
	call sub_84cdh		;a922	cd cd 84 	. . . 
	ld (07922h),de		;a925	ed 53 22 79 	. S " y 
la929h:
	call sub_a9dah		;a929	cd da a9 	. . . 
	pop de			;a92c	d1 	. 
	ld (ix+001h),d		;a92d	dd 72 01 	. r . 
	jr la8c5h		;a930	18 93 	. . 
la932h:
	pop de			;a932	d1 	. 
	ret			;a933	c9 	. 
la934h:
	inc a			;a934	3c 	< 
	jr la921h		;a935	18 ea 	. . 
sub_a937h:
	ld a,(079dfh)		;a937	3a df 79 	: . y 
	rra			;a93a	1f 	. 
	jr c,la998h		;a93b	38 5b 	8 [ 
	ld hl,07964h		;a93d	21 64 79 	! d y 
	res 5,(hl)		;a940	cb ae 	. . 
	ld a,(07f10h)		;a942	3a 10 7f 	: .  
	cp 000h		;a945	fe 00 	. . 
	jr z,la98fh		;a947	28 46 	( F 
	and 0f0h		;a949	e6 f0 	. . 
	cp 090h		;a94b	fe 90 	. . 
	jr nz,la998h		;a94d	20 49 	  I 
	ld a,(07f10h)		;a94f	3a 10 7f 	: .  
	cp 099h		;a952	fe 99 	. . 
	jr nz,la98ah		;a954	20 34 	  4 
	call sub_a9cch		;a956	cd cc a9 	. . . 
	ld b,a			;a959	47 	G 
	ld a,015h		;a95a	3e 15 	> . 
	sub b			;a95c	90 	. 
	cp 00bh		;a95d	fe 0b 	. . 
	jr c,la9abh		;a95f	38 4a 	8 J 
	jr nz,la98ah		;a961	20 27 	  ' 
	ld a,(07f12h)		;a963	3a 12 7f 	: .  
	cp 050h		;a966	fe 50 	. P 
	jr c,la98ah		;a968	38 20 	8   
la96ah:
	ld hl,07f17h		;a96a	21 17 7f 	! .  
	xor a			;a96d	af 	. 
	ld b,005h		;a96e	06 05 	. . 
la970h:
	ld (hl),a			;a970	77 	w 
	dec hl			;a971	2b 	+ 
	djnz la970h		;a972	10 fc 	. . 
	ld (hl),010h		;a974	36 10 	6 . 
	dec hl			;a976	2b 	+ 
	ld a,010h		;a977	3e 10 	> . 
	add a,(hl)			;a979	86 	. 
	daa			;a97a	27 	' 
	ld (hl),a			;a97b	77 	w 
	dec hl			;a97c	2b 	+ 
	ld a,(hl)			;a97d	7e 	~ 
	adc a,000h		;a97e	ce 00 	. . 
	daa			;a980	27 	' 
	ld (hl),a			;a981	77 	w 
	cp 010h		;a982	fe 10 	. . 
	jr nz,la9b6h		;a984	20 30 	  0 
	call sub_834ah		;a986	cd 4a 83 	. J . 
	ret			;a989	c9 	. 
la98ah:
	call sub_8029h		;a98a	cd 29 80 	. ) . 
	jr la9b6h		;a98d	18 27 	. ' 
la98fh:
	call sub_a9cch		;a98f	cd cc a9 	. . . 
	cp 00bh		;a992	fe 0b 	. . 
	jr c,la9a7h		;a994	38 11 	8 . 
	jr la9b6h		;a996	18 1e 	. . 
la998h:
	ld hl,07964h		;a998	21 64 79 	! d y 
	set 5,(hl)		;a99b	cb ee 	. . 
	ld hl,079f8h		;a99d	21 f8 79 	! . y 
	set 3,(hl)		;a9a0	cb de 	. . 
	inc hl			;a9a2	23 	# 
	ld (hl),002h		;a9a3	36 02 	6 . 
	inc hl			;a9a5	23 	# 
	ld a,(hl)			;a9a6	7e 	~ 
la9a7h:
	ld b,a			;a9a7	47 	G 
	ld a,00bh		;a9a8	3e 0b 	> . 
	sub b			;a9aa	90 	. 
la9abh:
	call sub_930fh		;a9ab	cd 0f 93 	. . . 
	call 0ff37h		;a9ae	cd 37 ff 	. 7 . 
	call sub_9305h		;a9b1	cd 05 93 	. . . 
	jr c,la96ah		;a9b4	38 b4 	8 . 
la9b6h:
	ld hl,07f10h		;a9b6	21 10 7f 	! .  
	ld de,07988h		;a9b9	11 88 79 	. . y 
	ld bc,00008h		;a9bc	01 08 00 	. . . 
	ldir		;a9bf	ed b0 	. . 
	and a			;a9c1	a7 	. 
	ret			;a9c2	c9 	. 
sub_a9c3h:
	ld hl,079f8h		;a9c3	21 f8 79 	! . y 
	res 3,(hl)		;a9c6	cb 9e 	. . 
	inc hl			;a9c8	23 	# 
	ld (hl),00bh		;a9c9	36 0b 	6 . 
	ret			;a9cb	c9 	. 
sub_a9cch:
	ld a,(07f11h)		;a9cc	3a 11 7f 	: .  
	and 0f0h		;a9cf	e6 f0 	. . 
	rrca			;a9d1	0f 	. 
	rrca			;a9d2	0f 	. 
	rrca			;a9d3	0f 	. 
	rrca			;a9d4	0f 	. 
	ld hl,079fah		;a9d5	21 fa 79 	! . y 
	add a,(hl)			;a9d8	86 	. 
	ret			;a9d9	c9 	. 
sub_a9dah:
	ld ix,(079cdh)		;a9da	dd 2a cd 79 	. * . y 
	dec ix		;a9de	dd 2b 	. + 
	ld a,(079cfh)		;a9e0	3a cf 79 	: . y 
	ld b,000h		;a9e3	06 00 	. . 
	ld c,a			;a9e5	4f 	O 
	add ix,bc		;a9e6	dd 09 	. . 
	ret			;a9e8	c9 	. 
la9e9h:
	call sub_a7ddh		;a9e9	cd dd a7 	. . . 
	ld hl,079dfh		;a9ec	21 df 79 	! . y 
	res 0,(hl)		;a9ef	cb 86 	. . 
	ret			;a9f1	c9 	. 
la9f2h:
	ld a,(079d7h)		;a9f2	3a d7 79 	: . y 
	and 0cah		;a9f5	e6 ca 	. . 
	ld (079d7h),a		;a9f7	32 d7 79 	2 . y 
	ld a,(07f33h)		;a9fa	3a 33 7f 	: 3  
	and 08fh		;a9fd	e6 8f 	. . 
	ld (07f33h),a		;a9ff	32 33 7f 	2 3  
	ld a,(07f35h)		;aa02	3a 35 7f 	: 5  
	bit 4,a		;aa05	cb 67 	. g 
	jr z,la9e9h		;aa07	28 e0 	( . 
	bit 0,a		;aa09	cb 47 	. G 
	jr nz,la9e9h		;aa0b	20 dc 	  . 
	and 006h		;aa0d	e6 06 	. . 
	jr z,la9e9h		;aa0f	28 d8 	( . 
sub_aa11h:
	ld h,07ch		;aa11	26 7c 	& | 
	ld a,(07927h)		;aa13	3a 27 79 	: ' y 
	ld l,a			;aa16	6f 	o 
	ld a,(07925h)		;aa17	3a 25 79 	: % y 
	sub l			;aa1a	95 	. 
	inc a			;aa1b	3c 	< 
	ld b,a			;aa1c	47 	G 
	ld a,00dh		;aa1d	3e 0d 	> . 
laa1fh:
	ld (hl),a			;aa1f	77 	w 
	inc hl			;aa20	23 	# 
	djnz laa1fh		;aa21	10 fc 	. . 
	ld a,(07927h)		;aa23	3a 27 79 	: ' y 
	ld (07924h),a		;aa26	32 24 79 	2 $ y 
	ld (07925h),a		;aa29	32 25 79 	2 % y 
	call sub_b733h		;aa2c	cd 33 b7 	. 3 . 
	call sub_b75bh		;aa2f	cd 5b b7 	. [ . 
	dec hl			;aa32	2b 	+ 
	ld h,(hl)			;aa33	66 	f 
	ld a,l			;aa34	7d 	} 
	sub 013h		;aa35	d6 13 	. . 
	ld l,a			;aa37	6f 	o 
	ld a,(07925h)		;aa38	3a 25 79 	: % y 
	sub h			;aa3b	94 	. 
	ld h,a			;aa3c	67 	g 
	ld (07929h),hl		;aa3d	22 29 79 	" ) y 
	ld a,(07927h)		;aa40	3a 27 79 	: ' y 
	cp 000h		;aa43	fe 00 	. . 
	jr nz,laa62h		;aa45	20 1b 	  . 
	ld de,(0792bh)		;aa47	ed 5b 2b 79 	. [ + y 
	ld a,03fh		;aa4b	3e 3f 	> ? 
	call sub_8468h		;aa4d	cd 68 84 	. h . 
	xor a			;aa50	af 	. 
	ld (07928h),a		;aa51	32 28 79 	2 ( y 
	ld a,(079dah)		;aa54	3a da 79 	: . y 
	and 0c0h		;aa57	e6 c0 	. . 
	ld (079dah),a		;aa59	32 da 79 	2 . y 
	ld de,(0792bh)		;aa5c	ed 5b 2b 79 	. [ + y 
	jr laa9dh		;aa60	18 3b 	. ; 
laa62h:
	inc a			;aa62	3c 	< 
	ld b,a			;aa63	47 	G 
	ld de,(0792bh)		;aa64	ed 5b 2b 79 	. [ + y 
	ld hl,07c00h		;aa68	21 00 7c 	! . | 
	call sub_84cdh		;aa6b	cd cd 84 	. . . 
	ld a,(0792ch)		;aa6e	3a 2c 79 	: , y 
	sub c			;aa71	91 	. 
	jr nc,laa75h		;aa72	30 01 	0 . 
	xor a			;aa74	af 	. 
laa75h:
	ld (0792ch),a		;aa75	32 2c 79 	2 , y 
	push de			;aa78	d5 	. 
	ld a,05fh		;aa79	3e 5f 	> _ 
	call sub_8468h		;aa7b	cd 68 84 	. h . 
	ld b,000h		;aa7e	06 00 	. . 
	ld a,(07927h)		;aa80	3a 27 79 	: ' y 
	inc a			;aa83	3c 	< 
	ld hl,07917h		;aa84	21 17 79 	! . y 
laa87h:
	cp (hl)			;aa87	be 	. 
	jr c,laa8eh		;aa88	38 04 	8 . 
	inc b			;aa8a	04 	. 
	inc hl			;aa8b	23 	# 
	jr laa87h		;aa8c	18 f9 	. . 
laa8eh:
	ld a,b			;aa8e	78 	x 
	ld (07928h),a		;aa8f	32 28 79 	2 ( y 
	ld a,(079dah)		;aa92	3a da 79 	: . y 
	and 0c0h		;aa95	e6 c0 	. . 
	or 020h		;aa97	f6 20 	.   
	ld (079dah),a		;aa99	32 da 79 	2 . y 
	pop de			;aa9c	d1 	. 
laa9dh:
	ld hl,07965h		;aa9d	21 65 79 	! e y 
	res 2,(hl)		;aaa0	cb 96 	. . 
	ld (07920h),de		;aaa2	ed 53 20 79 	. S   y 
	ld hl,(07922h)		;aaa6	2a 22 79 	* " y 
	ld (07922h),de		;aaa9	ed 53 22 79 	. S " y 
	ld a,h			;aaad	7c 	| 
	sub d			;aaae	92 	. 
	ret c			;aaaf	d8 	. 
	jr nz,laac7h		;aab0	20 15 	  . 
	ld a,l			;aab2	7d 	} 
	sub e			;aab3	93 	. 
	ret z			;aab4	c8 	. 
	ccf			;aab5	3f 	? 
	ret nc			;aab6	d0 	. 
laab7h:
	ld b,a			;aab7	47 	G 
	inc e			;aab8	1c 	. 
	ld a,017h		;aab9	3e 17 	> . 
	cp e			;aabb	bb 	. 
	jr nc,laac1h		;aabc	30 03 	0 . 
	ld e,000h		;aabe	1e 00 	. . 
	inc d			;aac0	14 	. 
laac1h:
	ld a,020h		;aac1	3e 20 	>   
	call sub_86b3h		;aac3	cd b3 86 	. . . 
	ret			;aac6	c9 	. 
laac7h:
	ld b,a			;aac7	47 	G 
	ld a,0e8h		;aac8	3e e8 	> . 
laacah:
	add a,018h		;aaca	c6 18 	. . 
	djnz laacah		;aacc	10 fc 	. . 
	ld b,a			;aace	47 	G 
	ld a,018h		;aacf	3e 18 	> . 
	sub e			;aad1	93 	. 
	add a,l			;aad2	85 	. 
	add a,b			;aad3	80 	. 
	jr laab7h		;aad4	18 e1 	. . 
sub_aad6h:
	ld hl,(07aa0h)		;aad6	2a a0 7a 	* . z 
	ld (07f3ah),hl		;aad9	22 3a 7f 	" :  
	ld hl,079d9h		;aadc	21 d9 79 	! . y 
	set 3,(hl)		;aadf	cb de 	. . 
	ld a,(079dah)		;aae1	3a da 79 	: . y 
	and 0c0h		;aae4	e6 c0 	. . 
	or 024h		;aae6	f6 24 	. $ 
	ld (079dah),a		;aae8	32 da 79 	2 . y 
	call sub_9c20h		;aaeb	cd 20 9c 	.   . 
	call sub_930fh		;aaee	cd 0f 93 	. . . 
	call 0ff94h		;aaf1	cd 94 ff 	. . . 
	call sub_9305h		;aaf4	cd 05 93 	. . . 
	ld de,(07f3ah)		;aaf7	ed 5b 3a 7f 	. [ :  
	push ix		;aafb	dd e5 	. . 
	pop hl			;aafd	e1 	. 
	inc hl			;aafe	23 	# 
	inc hl			;aaff	23 	# 
	inc hl			;ab00	23 	# 
	call sub_ad9eh		;ab01	cd 9e ad 	. . . 
	ld (079eah),a		;ab04	32 ea 79 	2 . y 
	ld (07f3ah),ix		;ab07	dd 22 3a 7f 	. " :  
	call 0ffa0h		;ab0b	cd a0 ff 	. . . 
	ld hl,(07f04h)		;ab0e	2a 04 7f 	* .  
	ld (07922h),hl		;ab11	22 22 79 	" " y 
	ld a,(07924h)		;ab14	3a 24 79 	: $ y 
	ld l,a			;ab17	6f 	o 
	ld h,07ch		;ab18	26 7c 	& | 
	ld a,(hl)			;ab1a	7e 	~ 
	ld (079e8h),a		;ab1b	32 e8 79 	2 . y 
	ld de,(07920h)		;ab1e	ed 5b 20 79 	. [   y 
	ld hl,07965h		;ab22	21 65 79 	! e y 
	cp 00dh		;ab25	fe 0d 	. . 
	jr z,lab33h		;ab27	28 0a 	( . 
	set 4,(hl)		;ab29	cb e6 	. . 
	set 2,(hl)		;ab2b	cb d6 	. . 
	ld a,0f7h		;ab2d	3e f7 	> . 
lab2fh:
	call sub_8468h		;ab2f	cd 68 84 	. h . 
	ret			;ab32	c9 	. 
lab33h:
	res 2,(hl)		;ab33	cb 96 	. . 
	ld a,05fh		;ab35	3e 5f 	> _ 
	jr lab2fh		;ab37	18 f6 	. . 
sub_ab39h:
	ld hl,07bffh		;ab39	21 ff 7b 	! . { 
	ld b,000h		;ab3c	06 00 	. . 
	ld a,03ah		;ab3e	3e 3a 	> : 
lab40h:
	inc b			;ab40	04 	. 
	inc hl			;ab41	23 	# 
	cp (hl)			;ab42	be 	. 
	jr nz,lab40h		;ab43	20 fb 	  . 
	ld hl,07c00h		;ab45	21 00 7c 	! . | 
	ld de,00000h		;ab48	11 00 00 	. . . 
	call sub_84cdh		;ab4b	cd cd 84 	. . . 
	ret			;ab4e	c9 	. 
sub_ab4fh:
	ld hl,07bffh		;ab4f	21 ff 7b 	! . { 
	ld e,0ffh		;ab52	1e ff 	. . 
	ld a,03ah		;ab54	3e 3a 	> : 
lab56h:
	inc e			;ab56	1c 	. 
	inc hl			;ab57	23 	# 
	cp (hl)			;ab58	be 	. 
	jr nz,lab56h		;ab59	20 fb 	  . 
	ld (hl),020h		;ab5b	36 20 	6   
	ld a,(07928h)		;ab5d	3a 28 79 	: ( y 
	cp 000h		;ab60	fe 00 	. . 
	ret nz			;ab62	c0 	. 
	ld d,000h		;ab63	16 00 	. . 
	ld a,020h		;ab65	3e 20 	>   
	call sub_8468h		;ab67	cd 68 84 	. h . 
	ret			;ab6a	c9 	. 
sub_ab6bh:
	ld (07f38h),ix		;ab6b	dd 22 38 7f 	. " 8  
	ld (079b5h),ix		;ab6f	dd 22 b5 79 	. " . y 
	ld a,(07927h)		;ab73	3a 27 79 	: ' y 
	ld l,a			;ab76	6f 	o 
	ld h,07dh		;ab77	26 7d 	& } 
	dec hl			;ab79	2b 	+ 
	push hl			;ab7a	e5 	. 
	pop ix		;ab7b	dd e1 	. . 
	ld a,(ix+001h)		;ab7d	dd 7e 01 	. ~ . 
	cp 00dh		;ab80	fe 0d 	. . 
	jr nz,lab92h		;ab82	20 0e 	  . 
	ld ix,(07f38h)		;ab84	dd 2a 38 7f 	. * 8  
	call sub_930fh		;ab88	cd 0f 93 	. . . 
	call 0ff7ch		;ab8b	cd 7c ff 	. | . 
	call sub_9305h		;ab8e	cd 05 93 	. . . 
	ret			;ab91	c9 	. 
lab92h:
	ld iy,(079eeh)		;ab92	fd 2a ee 79 	. * . y 
	ld hl,07f35h		;ab96	21 35 7f 	! 5  
	bit 2,(hl)		;ab99	cb 56 	. V 
	jr z,labd4h		;ab9b	28 37 	( 7 
	ld a,(079f0h)		;ab9d	3a f0 79 	: . y 
	ld b,a			;aba0	47 	G 
	or a			;aba1	b7 	. 
	jr nz,labach		;aba2	20 08 	  . 
	inc iy		;aba4	fd 23 	. # 
	ld (iy+000h),0f5h		;aba6	fd 36 00 f5 	. 6 . . 
	ld b,007h		;abaa	06 07 	. . 
labach:
	push ix		;abac	dd e5 	. . 
	pop hl			;abae	e1 	. 
labafh:
	inc hl			;abaf	23 	# 
	ld a,(hl)			;abb0	7e 	~ 
	cp 022h		;abb1	fe 22 	. " 
	jr z,labceh		;abb3	28 19 	( . 
	cp 00dh		;abb5	fe 0d 	. . 
	jr z,labceh		;abb7	28 15 	( . 
	inc iy		;abb9	fd 23 	. # 
	ld (iy+000h),a		;abbb	fd 77 00 	. w . 
	djnz labafh		;abbe	10 ef 	. . 
labc0h:
	ld ix,(07f38h)		;abc0	dd 2a 38 7f 	. * 8  
	ld a,(07f35h)		;abc4	3a 35 7f 	: 5  
	and 0f1h		;abc7	e6 f1 	. . 
	ld (07f35h),a		;abc9	32 35 7f 	2 5  
	and a			;abcc	a7 	. 
	ret			;abcd	c9 	. 
labceh:
	ld (iy+001h),000h		;abce	fd 36 01 00 	. 6 . . 
	jr labc0h		;abd2	18 ec 	. . 
labd4h:
	call sub_930fh		;abd4	cd 0f 93 	. . . 
	call 0fffdh		;abd7	cd fd ff 	. . . 
	call sub_9305h		;abda	cd 05 93 	. . . 
	ret c			;abdd	d8 	. 
	ld a,(ix+001h)		;abde	dd 7e 01 	. ~ . 
	cp 00dh		;abe1	fe 0d 	. . 
	jr nz,labffh		;abe3	20 1a 	  . 
	ld a,(07f14h)		;abe5	3a 14 7f 	: .  
	cp 0d0h		;abe8	fe d0 	. . 
	jr nc,labffh		;abea	30 13 	0 . 
	ld de,(079eeh)		;abec	ed 5b ee 79 	. [ . y 
	inc de			;abf0	13 	. 
	ld hl,07f10h		;abf1	21 10 7f 	! .  
	ld bc,00008h		;abf4	01 08 00 	. . . 
	ldir		;abf7	ed b0 	. . 
	ld ix,(079b5h)		;abf9	dd 2a b5 79 	. * . y 
	and a			;abfd	a7 	. 
	ret			;abfe	c9 	. 
labffh:
	call sub_838ch		;abff	cd 8c 83 	. . . 
	ret			;ac02	c9 	. 
sub_ac03h:
	ld hl,07f36h		;ac03	21 36 7f 	! 6  
	res 2,(hl)		;ac06	cb 96 	. . 
	xor a			;ac08	af 	. 
	ld (07964h),a		;ac09	32 64 79 	2 d y 
	ld hl,07980h		;ac0c	21 80 79 	! . y 
	ld b,008h		;ac0f	06 08 	. . 
lac11h:
	ld (hl),a			;ac11	77 	w 
	inc hl			;ac12	23 	# 
	djnz lac11h		;ac13	10 fc 	. . 
	call sub_a7ddh		;ac15	cd dd a7 	. . . 
	ld a,(07901h)		;ac18	3a 01 79 	: . y 
	and 006h		;ac1b	e6 06 	. . 
	ld (07901h),a		;ac1d	32 01 79 	2 . y 
	ld a,(07902h)		;ac20	3a 02 79 	: . y 
	and 078h		;ac23	e6 78 	. x 
	ld (07902h),a		;ac25	32 02 79 	2 . y 
	ld a,(07903h)		;ac28	3a 03 79 	: . y 
	and 07dh		;ac2b	e6 7d 	. } 
	ld (07903h),a		;ac2d	32 03 79 	2 . y 
	ld a,(07904h)		;ac30	3a 04 79 	: . y 
	and 060h		;ac33	e6 60 	. ` 
	ld (07904h),a		;ac35	32 04 79 	2 . y 
	call sub_854dh		;ac38	cd 4d 85 	. M . 
sub_ac3bh:
	ld a,(07f35h)		;ac3b	3a 35 7f 	: 5  
	and 0c0h		;ac3e	e6 c0 	. . 
	ld (07f35h),a		;ac40	32 35 7f 	2 5  
	ld a,(07f37h)		;ac43	3a 37 7f 	: 7  
	and 03fh		;ac46	e6 3f 	. ? 
	ld (07f37h),a		;ac48	32 37 7f 	2 7  
	ld a,(07965h)		;ac4b	3a 65 79 	: e y 
	and 0e1h		;ac4e	e6 e1 	. . 
	ld (07965h),a		;ac50	32 65 79 	2 e y 
	xor a			;ac53	af 	. 
	ld (0797dh),a		;ac54	32 7d 79 	2 } y 
	ld (07931h),a		;ac57	32 31 79 	2 1 y 
	ld a,(079d7h)		;ac5a	3a d7 79 	: . y 
	and 0f3h		;ac5d	e6 f3 	. . 
	ld (079d7h),a		;ac5f	32 d7 79 	2 . y 
	ld a,(079d8h)		;ac62	3a d8 79 	: . y 
	and 0cah		;ac65	e6 ca 	. . 
	or 002h		;ac67	f6 02 	. . 
	ld (079d8h),a		;ac69	32 d8 79 	2 . y 
	ld hl,00000h		;ac6c	21 00 00 	! . . 
	ld (079e5h),hl		;ac6f	22 e5 79 	" . y 
	ld a,(079d9h)		;ac72	3a d9 79 	: . y 
	and 0f9h		;ac75	e6 f9 	. . 
	ld (079d9h),a		;ac77	32 d9 79 	2 . y 
	ld hl,079dah		;ac7a	21 da 79 	! . y 
	res 6,(hl)		;ac7d	cb b6 	. . 
	call sub_ac8ch		;ac7f	cd 8c ac 	. . . 
	ld hl,(079e1h)		;ac82	2a e1 79 	* . y 
	inc hl			;ac85	23 	# 
	inc hl			;ac86	23 	# 
	inc hl			;ac87	23 	# 
	ld (079feh),hl		;ac88	22 fe 79 	" . y 
	ret			;ac8b	c9 	. 
sub_ac8ch:
	ld hl,00000h		;ac8c	21 00 00 	! . . 
	ld (079f8h),hl		;ac8f	22 f8 79 	" . y 
	ld (079fah),hl		;ac92	22 fa 79 	" . y 
	ret			;ac95	c9 	. 
sub_ac96h:
	call sub_a72eh		;ac96	cd 2e a7 	. . . 
	ld e,000h		;ac99	1e 00 	. . 
	push de			;ac9b	d5 	. 
	ld hl,0796eh		;ac9c	21 6e 79 	! n y 
	res 0,(hl)		;ac9f	cb 86 	. . 
	ld hl,07bffh		;aca1	21 ff 7b 	! . { 
	call sub_9febh		;aca4	cd eb 9f 	. . . 
	ld a,(079eah)		;aca7	3a ea 79 	: . y 
	ld (07924h),a		;acaa	32 24 79 	2 $ y 
	jr lacf2h		;acad	18 43 	. C 
sub_acafh:
	call sub_a72eh		;acaf	cd 2e a7 	. . . 
	ld e,000h		;acb2	1e 00 	. . 
	push de			;acb4	d5 	. 
	ld hl,07d00h		;acb5	21 00 7d 	! . } 
	ld a,(079eah)		;acb8	3a ea 79 	: . y 
	ld e,a			;acbb	5f 	_ 
	ld d,h			;acbc	54 	T 
	call sub_ad9eh		;acbd	cd 9e ad 	. . . 
	ld (079eah),a		;acc0	32 ea 79 	2 . y 
	ld hl,0796eh		;acc3	21 6e 79 	! n y 
	res 0,(hl)		;acc6	cb 86 	. . 
	ld ix,07cffh		;acc8	dd 21 ff 7c 	. ! . | 
	ld iy,07bffh		;accc	fd 21 ff 7b 	. ! . { 
	ld a,(07927h)		;acd0	3a 27 79 	: ' y 
	cp 000h		;acd3	fe 00 	. . 
	jr z,lace4h		;acd5	28 0d 	( . 
	ld b,a			;acd7	47 	G 
lacd8h:
	inc ix		;acd8	dd 23 	. # 
	inc iy		;acda	fd 23 	. # 
	ld a,(ix+000h)		;acdc	dd 7e 00 	. ~ . 
	ld (iy+000h),a		;acdf	fd 77 00 	. w . 
	djnz lacd8h		;ace2	10 f4 	. . 
lace4h:
	call 0ff97h		;ace4	cd 97 ff 	. . . 
	cp 0ffh		;ace7	fe ff 	. . 
	jr nz,lacech		;ace9	20 01 	  . 
	dec a			;aceb	3d 	= 
lacech:
	ld (07924h),a		;acec	32 24 79 	2 $ y 
	push iy		;acef	fd e5 	. . 
	pop hl			;acf1	e1 	. 
lacf2h:
	ld a,l			;acf2	7d 	} 
	ld (07925h),a		;acf3	32 25 79 	2 % y 
	ld c,018h		;acf6	0e 18 	. . 
	call 0ff91h		;acf8	cd 91 ff 	. . . 
	call 0ff94h		;acfb	cd 94 ff 	. . . 
	pop de			;acfe	d1 	. 
	ld (0792bh),de		;acff	ed 53 2b 79 	. S + y 
	ld a,(0792ah)		;ad03	3a 2a 79 	: * y 
	cp 004h		;ad06	fe 04 	. . 
	jr nc,lad62h		;ad08	30 58 	0 X 
	xor a			;ad0a	af 	. 
	ld (07928h),a		;ad0b	32 28 79 	2 ( y 
	ld a,(07925h)		;ad0e	3a 25 79 	: % y 
	inc a			;ad11	3c 	< 
	and a			;ad12	a7 	. 
	jr z,lad5fh		;ad13	28 4a 	( J 
lad15h:
	cp 061h		;ad15	fe 61 	. a 
	jr c,lad1bh		;ad17	38 02 	8 . 
	ld a,060h		;ad19	3e 60 	> ` 
lad1bh:
	ld b,a			;ad1b	47 	G 
	ld hl,07c00h		;ad1c	21 00 7c 	! . | 
	call sub_84cdh		;ad1f	cd cd 84 	. . . 
	ld a,(0792ch)		;ad22	3a 2c 79 	: , y 
	sub c			;ad25	91 	. 
	ld (0792ch),a		;ad26	32 2c 79 	2 , y 
lad29h:
	ld (07922h),de		;ad29	ed 53 22 79 	. S " y 
	ld de,(07929h)		;ad2d	ed 5b 29 79 	. [ ) y 
	ld a,(0792ch)		;ad31	3a 2c 79 	: , y 
	add a,d			;ad34	82 	. 
	ld hl,07928h		;ad35	21 28 79 	! ( y 
	sub (hl)			;ad38	96 	. 
	ld d,a			;ad39	57 	W 
	ld (07920h),de		;ad3a	ed 53 20 79 	. S   y 
	ld a,(07924h)		;ad3e	3a 24 79 	: $ y 
	ld hl,07925h		;ad41	21 25 79 	! % y 
	cp (hl)			;ad44	be 	. 
	ld a,(07965h)		;ad45	3a 65 79 	: e y 
	jr z,lad91h		;ad48	28 47 	( G 
	or 014h		;ad4a	f6 14 	. . 
	ld (07965h),a		;ad4c	32 65 79 	2 e y 
	ld a,(07924h)		;ad4f	3a 24 79 	: $ y 
	ld l,a			;ad52	6f 	o 
	ld h,07ch		;ad53	26 7c 	& | 
	ld a,(hl)			;ad55	7e 	~ 
	ld (079e8h),a		;ad56	32 e8 79 	2 . y 
	ld a,0f7h		;ad59	3e f7 	> . 
lad5bh:
	call sub_8468h		;ad5b	cd 68 84 	. h . 
	ret			;ad5e	c9 	. 
lad5fh:
	dec a			;ad5f	3d 	= 
	jr lad15h		;ad60	18 b3 	. . 
lad62h:
	sub 003h		;ad62	d6 03 	. . 
	ld (07928h),a		;ad64	32 28 79 	2 ( y 
	add a,013h		;ad67	c6 13 	. . 
	ld l,a			;ad69	6f 	o 
	ld h,079h		;ad6a	26 79 	& y 
	ld l,(hl)			;ad6c	6e 	n 
	ld h,07ch		;ad6d	26 7c 	& | 
	ld a,l			;ad6f	7d 	} 
	add a,060h		;ad70	c6 60 	. ` 
	jr c,lad7fh		;ad72	38 0b 	8 . 
	ld b,060h		;ad74	06 60 	. ` 
	call sub_84cdh		;ad76	cd cd 84 	. . . 
lad79h:
	xor a			;ad79	af 	. 
	ld (0792ch),a		;ad7a	32 2c 79 	2 , y 
	jr lad29h		;ad7d	18 aa 	. . 
lad7fh:
	push af			;ad7f	f5 	. 
	ld b,a			;ad80	47 	G 
	ld a,060h		;ad81	3e 60 	> ` 
	sub b			;ad83	90 	. 
	ld b,a			;ad84	47 	G 
	call sub_84cdh		;ad85	cd cd 84 	. . . 
	pop bc			;ad88	c1 	. 
	inc b			;ad89	04 	. 
	ld a,020h		;ad8a	3e 20 	>   
	call sub_86b3h		;ad8c	cd b3 86 	. . . 
	jr lad79h		;ad8f	18 e8 	. . 
lad91h:
	and 0fbh		;ad91	e6 fb 	. . 
	ld (07965h),a		;ad93	32 65 79 	2 e y 
	ld (07922h),de		;ad96	ed 53 22 79 	. S " y 
	ld a,05fh		;ad9a	3e 5f 	> _ 
	jr lad5bh		;ad9c	18 bd 	. . 
sub_ad9eh:
	ld c,l			;ad9e	4d 	M 
lad9fh:
	push hl			;ad9f	e5 	. 
	xor a			;ada0	af 	. 
	sbc hl,de		;ada1	ed 52 	. R 
	pop hl			;ada3	e1 	. 
	jr nc,ladb7h		;ada4	30 11 	0 . 
	ld a,(hl)			;ada6	7e 	~ 
	cp 00dh		;ada7	fe 0d 	. . 
	jr z,ladbbh		;ada9	28 10 	( . 
	ld c,l			;adab	4d 	M 
	cp 01fh		;adac	fe 1f 	. . 
	jr z,ladbdh		;adae	28 0d 	( . 
	cp 0feh		;adb0	fe fe 	. . 
	jr z,ladbeh		;adb2	28 0a 	( . 
ladb4h:
	inc hl			;adb4	23 	# 
	jr lad9fh		;adb5	18 e8 	. . 
ladb7h:
	jr z,ladbbh		;adb7	28 02 	( . 
	ld a,c			;adb9	79 	y 
	ret			;adba	c9 	. 
ladbbh:
	ld a,l			;adbb	7d 	} 
	ret			;adbc	c9 	. 
ladbdh:
	inc hl			;adbd	23 	# 
ladbeh:
	inc hl			;adbe	23 	# 
	jr ladb4h		;adbf	18 f3 	. . 
sub_adc1h:
	ld ix,07cffh		;adc1	dd 21 ff 7c 	. ! . | 
	ld iy,07bffh		;adc5	fd 21 ff 7b 	. ! . { 
	call 0ff97h		;adc9	cd 97 ff 	. . . 
	push iy		;adcc	fd e5 	. . 
	pop bc			;adce	c1 	. 
	inc c			;adcf	0c 	. 
	ld b,c			;add0	41 	A 
	ld de,(0792bh)		;add1	ed 5b 2b 79 	. [ + y 
	ld hl,07c00h		;add5	21 00 7c 	! . | 
	call sub_84cdh		;add8	cd cd 84 	. . . 
	ld bc,(07922h)		;addb	ed 4b 22 79 	. K " y 
	ld (07922h),de		;addf	ed 53 22 79 	. S " y 
	inc e			;ade3	1c 	. 
	ld a,e			;ade4	7b 	{ 
	cp 018h		;ade5	fe 18 	. . 
	jr c,ladech		;ade7	38 03 	8 . 
	ld e,000h		;ade9	1e 00 	. . 
	inc d			;adeb	14 	. 
ladech:
	ld a,b			;adec	78 	x 
	sub d			;aded	92 	. 
	ret c			;adee	d8 	. 
	jr nz,ladfch		;adef	20 0b 	  . 
	ld a,c			;adf1	79 	y 
	sub e			;adf2	93 	. 
	ret c			;adf3	d8 	. 
	inc a			;adf4	3c 	< 
	ld b,a			;adf5	47 	G 
ladf6h:
	ld a,020h		;adf6	3e 20 	>   
	call sub_86b3h		;adf8	cd b3 86 	. . . 
	ret			;adfb	c9 	. 
ladfch:
	ld l,a			;adfc	6f 	o 
	ld a,d			;adfd	7a 	z 
	cp 004h		;adfe	fe 04 	. . 
	ret nc			;ae00	d0 	. 
	xor a			;ae01	af 	. 
lae02h:
	dec l			;ae02	2d 	- 
	jr z,lae09h		;ae03	28 04 	( . 
	add a,018h		;ae05	c6 18 	. . 
	jr lae02h		;ae07	18 f9 	. . 
lae09h:
	ld b,a			;ae09	47 	G 
	ld a,018h		;ae0a	3e 18 	> . 
	sub e			;ae0c	93 	. 
	add a,b			;ae0d	80 	. 
	add a,c			;ae0e	81 	. 
	ld b,a			;ae0f	47 	G 
	inc b			;ae10	04 	. 
	jr ladf6h		;ae11	18 e3 	. . 
sub_ae13h:
	ld a,(079dah)		;ae13	3a da 79 	: . y 
	xor 020h		;ae16	ee 20 	.   
	and 023h		;ae18	e6 23 	. # 
	ret nz			;ae1a	c0 	. 
	ld hl,07965h		;ae1b	21 65 79 	! e y 
	bit 2,(hl)		;ae1e	cb 56 	. V 
	jr z,lae30h		;ae20	28 0e 	( . 
	bit 4,(hl)		;ae22	cb 66 	. f 
	ret z			;ae24	c8 	. 
	ld a,(079e8h)		;ae25	3a e8 79 	: . y 
lae28h:
	ld de,(07920h)		;ae28	ed 5b 20 79 	. [   y 
	call sub_8468h		;ae2c	cd 68 84 	. h . 
	ret			;ae2f	c9 	. 
lae30h:
	ld a,020h		;ae30	3e 20 	>   
	jr lae28h		;ae32	18 f4 	. . 
sub_ae34h:
	call sub_ae41h		;ae34	cd 41 ae 	. A . 
	ld hl,(07f3ah)		;ae37	2a 3a 7f 	* :  
	ld (07f38h),hl		;ae3a	22 38 7f 	" 8  
	call sub_83b4h		;ae3d	cd b4 83 	. . . 
	ret			;ae40	c9 	. 
sub_ae41h:
	ld a,(079dah)		;ae41	3a da 79 	: . y 
	and 0c0h		;ae44	e6 c0 	. . 
	ld (079dah),a		;ae46	32 da 79 	2 . y 
	ld hl,079d7h		;ae49	21 d7 79 	! . y 
	res 4,(hl)		;ae4c	cb a6 	. . 
	ld a,(079d9h)		;ae4e	3a d9 79 	: . y 
	and 07dh		;ae51	e6 7d 	. } 
	ld (079d9h),a		;ae53	32 d9 79 	2 . y 
	ld a,(079d8h)		;ae56	3a d8 79 	: . y 
	and 0ceh		;ae59	e6 ce 	. . 
	ld (079d8h),a		;ae5b	32 d8 79 	2 . y 
	ld a,(07f35h)		;ae5e	3a 35 7f 	: 5  
	and 0d0h		;ae61	e6 d0 	. . 
	or 010h		;ae63	f6 10 	. . 
	ld (07f35h),a		;ae65	32 35 7f 	2 5  
	ld a,(07f36h)		;ae68	3a 36 7f 	: 6  
	and 014h		;ae6b	e6 14 	. . 
	ld (07f36h),a		;ae6d	32 36 7f 	2 6  
	ret			;ae70	c9 	. 
sub_ae71h:
	ld a,(0796bh)		;ae71	3a 6b 79 	: k y 
	cp 000h		;ae74	fe 00 	. . 
	jr z,lae91h		;ae76	28 19 	( . 
	ld c,a			;ae78	4f 	O 
	ld b,000h		;ae79	06 00 	. . 
	ld hl,07938h		;ae7b	21 38 79 	! 8 y 
	ld de,07f10h		;ae7e	11 10 7f 	. .  
	ldir		;ae81	ed b0 	. . 
	ld b,a			;ae83	47 	G 
	ld a,018h		;ae84	3e 18 	> . 
	sub b			;ae86	90 	. 
	ld b,a			;ae87	47 	G 
	ld a,020h		;ae88	3e 20 	>   
lae8ah:
	ld (de),a			;ae8a	12 	. 
	inc de			;ae8b	13 	. 
	djnz lae8ah		;ae8c	10 fc 	. . 
	call sub_bde1h		;ae8e	cd e1 bd 	. . . 
lae91h:
	call sub_ae9dh		;ae91	cd 9d ae 	. . . 
	ld a,(0797dh)		;ae94	3a 7d 79 	: } y 
	and 0f8h		;ae97	e6 f8 	. . 
	ld (0797dh),a		;ae99	32 7d 79 	2 } y 
	ret			;ae9c	c9 	. 
sub_ae9dh:
	ld b,018h		;ae9d	06 18 	. . 
	ld a,020h		;ae9f	3e 20 	>   
	ld hl,07938h		;aea1	21 38 79 	! 8 y 
laea4h:
	ld (hl),a			;aea4	77 	w 
	inc hl			;aea5	23 	# 
	djnz laea4h		;aea6	10 fc 	. . 
	ld hl,0796bh		;aea8	21 6b 79 	! k y 
	ld (hl),000h		;aeab	36 00 	6 . 
	ret			;aead	c9 	. 
laeaeh:
	nop			;aeae	00 	. 
	nop			;aeaf	00 	. 
	nop			;aeb0	00 	. 
	nop			;aeb1	00 	. 
	nop			;aeb2	00 	. 
	nop			;aeb3	00 	. 
	nop			;aeb4	00 	. 
	nop			;aeb5	00 	. 
	nop			;aeb6	00 	. 
	nop			;aeb7	00 	. 
	nop			;aeb8	00 	. 
	nop			;aeb9	00 	. 
	nop			;aeba	00 	. 
	nop			;aebb	00 	. 
	nop			;aebc	00 	. 
	nop			;aebd	00 	. 
	nop			;aebe	00 	. 
	nop			;aebf	00 	. 
	nop			;aec0	00 	. 
	nop			;aec1	00 	. 
	nop			;aec2	00 	. 
	nop			;aec3	00 	. 
	nop			;aec4	00 	. 
	nop			;aec5	00 	. 
	nop			;aec6	00 	. 
	nop			;aec7	00 	. 
	nop			;aec8	00 	. 
	nop			;aec9	00 	. 
	nop			;aeca	00 	. 
	nop			;aecb	00 	. 
	nop			;aecc	00 	. 
	nop			;aecd	00 	. 
	nop			;aece	00 	. 
	nop			;aecf	00 	. 
	nop			;aed0	00 	. 
	nop			;aed1	00 	. 
	nop			;aed2	00 	. 
	nop			;aed3	00 	. 
	nop			;aed4	00 	. 
	nop			;aed5	00 	. 
	nop			;aed6	00 	. 
	nop			;aed7	00 	. 
	nop			;aed8	00 	. 
	nop			;aed9	00 	. 
	nop			;aeda	00 	. 
	ld b,e			;aedb	43 	C 
	ex de,hl			;aedc	eb 	. 
	rst 38h			;aedd	ff 	. 
	ld b,d			;aede	42 	B 
	ld c,a			;aedf	4f 	O 
	rst 38h			;aee0	ff 	. 
	ld b,c			;aee1	41 	A 
	and e			;aee2	a3 	. 
	rst 38h			;aee3	ff 	. 
	ld b,d			;aee4	42 	B 
	ld (hl),b			;aee5	70 	p 
	rst 38h			;aee6	ff 	. 
	ld b,c			;aee7	41 	A 
	and (hl)			;aee8	a6 	. 
	rst 38h			;aee9	ff 	. 
	ld b,c			;aeea	41 	A 
	xor c			;aeeb	a9 	. 
	rst 38h			;aeec	ff 	. 
	ld b,c			;aeed	41 	A 
	xor h			;aeee	ac 	. 
	rst 38h			;aeef	ff 	. 
	ld b,c			;aef0	41 	A 
	xor a			;aef1	af 	. 
	rst 38h			;aef2	ff 	. 
	ld b,c			;aef3	41 	A 
	or d			;aef4	b2 	. 
	rst 38h			;aef5	ff 	. 
	ld b,h			;aef6	44 	D 
	xor 0ffh		;aef7	ee ff 	. . 
	nop			;aef9	00 	. 
	nop			;aefa	00 	. 
	nop			;aefb	00 	. 
	nop			;aefc	00 	. 
	nop			;aefd	00 	. 
	nop			;aefe	00 	. 
	ld b,c			;aeff	41 	A 
	or l			;af00	b5 	. 
	rst 38h			;af01	ff 	. 
	ld b,h			;af02	44 	D 
	ex de,hl			;af03	eb 	. 
	rst 38h			;af04	ff 	. 
	nop			;af05	00 	. 
	nop			;af06	00 	. 
	nop			;af07	00 	. 
	nop			;af08	00 	. 
	nop			;af09	00 	. 
	nop			;af0a	00 	. 
	nop			;af0b	00 	. 
	nop			;af0c	00 	. 
	nop			;af0d	00 	. 
	pop bc			;af0e	c1 	. 
	cp b			;af0f	b8 	. 
	rst 38h			;af10	ff 	. 
	pop bc			;af11	c1 	. 
	ld b,(hl)			;af12	46 	F 
	rst 38h			;af13	ff 	. 
	pop bc			;af14	c1 	. 
	ld c,c			;af15	49 	I 
	rst 38h			;af16	ff 	. 
	ld b,h			;af17	44 	D 
	call p,000ffh		;af18	f4 ff 00 	. . . 
	nop			;af1b	00 	. 
	nop			;af1c	00 	. 
	jp nz,0ff3dh		;af1d	c2 3d ff 	. = . 
	jp nz,0ff40h		;af20	c2 40 ff 	. @ . 
	jp nz,0ff43h		;af23	c2 43 ff 	. C . 
	jp nz,0ff46h		;af26	c2 46 ff 	. F . 
	pop bc			;af29	c1 	. 
	cp e			;af2a	bb 	. 
	rst 38h			;af2b	ff 	. 
	jp nz,0ff49h		;af2c	c2 49 ff 	. I . 
	jp nz,0ff4ch		;af2f	c2 4c ff 	. L . 
	pop bc			;af32	c1 	. 
	cp (hl)			;af33	be 	. 
	rst 38h			;af34	ff 	. 
	pop bc			;af35	c1 	. 
	pop bc			;af36	c1 	. 
	rst 38h			;af37	ff 	. 
	jp nz,0ff8bh		;af38	c2 8b ff 	. . . 
	jp nz,0ff52h		;af3b	c2 52 ff 	. R . 
	pop bc			;af3e	c1 	. 
	call nz,0c1ffh		;af3f	c4 ff c1 	. . . 
	and h			;af42	a4 	. 
	sub e			;af43	93 	. 
	pop bc			;af44	c1 	. 
	jp z,000ffh		;af45	ca ff 00 	. . . 
	nop			;af48	00 	. 
	nop			;af49	00 	. 
	nop			;af4a	00 	. 
	nop			;af4b	00 	. 
	nop			;af4c	00 	. 
	nop			;af4d	00 	. 
	nop			;af4e	00 	. 
	nop			;af4f	00 	. 
	nop			;af50	00 	. 
	nop			;af51	00 	. 
	nop			;af52	00 	. 
	nop			;af53	00 	. 
	nop			;af54	00 	. 
	nop			;af55	00 	. 
	nop			;af56	00 	. 
	nop			;af57	00 	. 
	nop			;af58	00 	. 
	nop			;af59	00 	. 
	nop			;af5a	00 	. 
	nop			;af5b	00 	. 
	nop			;af5c	00 	. 
	nop			;af5d	00 	. 
	nop			;af5e	00 	. 
	ld b,h			;af5f	44 	D 
	rst 30h			;af60	f7 	. 
	rst 38h			;af61	ff 	. 
	ld b,h			;af62	44 	D 
	jp m,000ffh		;af63	fa ff 00 	. . . 
	nop			;af66	00 	. 
	nop			;af67	00 	. 
	nop			;af68	00 	. 
	nop			;af69	00 	. 
	nop			;af6a	00 	. 
	nop			;af6b	00 	. 
	nop			;af6c	00 	. 
	nop			;af6d	00 	. 
	nop			;af6e	00 	. 
	nop			;af6f	00 	. 
	nop			;af70	00 	. 
	nop			;af71	00 	. 
	nop			;af72	00 	. 
	nop			;af73	00 	. 
	nop			;af74	00 	. 
	nop			;af75	00 	. 
	nop			;af76	00 	. 
	nop			;af77	00 	. 
	nop			;af78	00 	. 
	nop			;af79	00 	. 
	nop			;af7a	00 	. 
	nop			;af7b	00 	. 
	nop			;af7c	00 	. 
	jp nz,0ff5bh		;af7d	c2 5b ff 	. [ . 
	nop			;af80	00 	. 
	nop			;af81	00 	. 
	nop			;af82	00 	. 
	nop			;af83	00 	. 
	nop			;af84	00 	. 
	nop			;af85	00 	. 
	nop			;af86	00 	. 
	nop			;af87	00 	. 
	nop			;af88	00 	. 
	nop			;af89	00 	. 
	nop			;af8a	00 	. 
	nop			;af8b	00 	. 
	nop			;af8c	00 	. 
	nop			;af8d	00 	. 
	nop			;af8e	00 	. 
	nop			;af8f	00 	. 
	nop			;af90	00 	. 
	nop			;af91	00 	. 
	nop			;af92	00 	. 
	nop			;af93	00 	. 
	nop			;af94	00 	. 
	nop			;af95	00 	. 
	nop			;af96	00 	. 
	nop			;af97	00 	. 
	nop			;af98	00 	. 
	nop			;af99	00 	. 
	nop			;af9a	00 	. 
	nop			;af9b	00 	. 
	nop			;af9c	00 	. 
	nop			;af9d	00 	. 
	add a,d			;af9e	82 	. 
	ld e,(hl)			;af9f	5e 	^ 
	rst 38h			;afa0	ff 	. 
	add a,d			;afa1	82 	. 
	ld h,c			;afa2	61 	a 
	rst 38h			;afa3	ff 	. 
	add a,c			;afa4	81 	. 
	ld a,c			;afa5	79 	y 
	add a,e			;afa6	83 	. 
	add a,c			;afa7	81 	. 
	ld a,c			;afa8	79 	y 
	add a,e			;afa9	83 	. 
	add a,d			;afaa	82 	. 
	ld a,c			;afab	79 	y 
	add a,e			;afac	83 	. 
	add a,d			;afad	82 	. 
	ld h,a			;afae	67 	g 
	rst 38h			;afaf	ff 	. 
	add a,d			;afb0	82 	. 
	ld l,d			;afb1	6a 	j 
	rst 38h			;afb2	ff 	. 
	add a,c			;afb3	81 	. 
	out (0ffh),a		;afb4	d3 ff 	. . 
	add a,d			;afb6	82 	. 
	ld l,l			;afb7	6d 	m 
	rst 38h			;afb8	ff 	. 
	add a,d			;afb9	82 	. 
	xor 0ffh		;afba	ee ff 	. . 
	add a,d			;afbc	82 	. 
	ld (hl),e			;afbd	73 	s 
	rst 38h			;afbe	ff 	. 
	add a,c			;afbf	81 	. 
	sub 0ffh		;afc0	d6 ff 	. . 
	add a,d			;afc2	82 	. 
	halt			;afc3	76 	v 
	rst 38h			;afc4	ff 	. 
	add a,d			;afc5	82 	. 
	ld a,c			;afc6	79 	y 
	rst 38h			;afc7	ff 	. 
	add a,d			;afc8	82 	. 
	ld a,h			;afc9	7c 	| 
	rst 38h			;afca	ff 	. 
	nop			;afcb	00 	. 
	nop			;afcc	00 	. 
	nop			;afcd	00 	. 
	pop bc			;afce	c1 	. 
	exx			;afcf	d9 	. 
	rst 38h			;afd0	ff 	. 
	add a,c			;afd1	81 	. 
	call c,sub_82ffh		;afd2	dc ff 82 	. . . 
	ld a,a			;afd5	7f 	 
	rst 38h			;afd6	ff 	. 
	nop			;afd7	00 	. 
	nop			;afd8	00 	. 
	nop			;afd9	00 	. 
	pop bc			;afda	c1 	. 
	rst 18h			;afdb	df 	. 
	rst 38h			;afdc	ff 	. 
	add a,d			;afdd	82 	. 
	ld h,h			;afde	64 	d 
	rst 38h			;afdf	ff 	. 
	add a,d			;afe0	82 	. 
	add a,d			;afe1	82 	. 
	rst 38h			;afe2	ff 	. 
	nop			;afe3	00 	. 
	nop			;afe4	00 	. 
	nop			;afe5	00 	. 
	nop			;afe6	00 	. 
	nop			;afe7	00 	. 
	nop			;afe8	00 	. 
	nop			;afe9	00 	. 
	nop			;afea	00 	. 
	nop			;afeb	00 	. 
	nop			;afec	00 	. 
	nop			;afed	00 	. 
	nop			;afee	00 	. 
	nop			;afef	00 	. 
	nop			;aff0	00 	. 
	nop			;aff1	00 	. 
	nop			;aff2	00 	. 
	nop			;aff3	00 	. 
	nop			;aff4	00 	. 
	nop			;aff5	00 	. 
	nop			;aff6	00 	. 
	nop			;aff7	00 	. 
	nop			;aff8	00 	. 
	nop			;aff9	00 	. 
	nop			;affa	00 	. 
	nop			;affb	00 	. 
	nop			;affc	00 	. 
	nop			;affd	00 	. 
	nop			;affe	00 	. 
	nop			;afff	00 	. 
lb000h:
	nop			;b000	00 	. 
	nop			;b001	00 	. 
	nop			;b002	00 	. 
	nop			;b003	00 	. 
	nop			;b004	00 	. 
	nop			;b005	00 	. 
	nop			;b006	00 	. 
	nop			;b007	00 	. 
	nop			;b008	00 	. 
	nop			;b009	00 	. 
	nop			;b00a	00 	. 
	nop			;b00b	00 	. 
	nop			;b00c	00 	. 
	nop			;b00d	00 	. 
	nop			;b00e	00 	. 
	nop			;b00f	00 	. 
	nop			;b010	00 	. 
	nop			;b011	00 	. 
	nop			;b012	00 	. 
	nop			;b013	00 	. 
	nop			;b014	00 	. 
	nop			;b015	00 	. 
	nop			;b016	00 	. 
	nop			;b017	00 	. 
	nop			;b018	00 	. 
	nop			;b019	00 	. 
	nop			;b01a	00 	. 
	nop			;b01b	00 	. 
	nop			;b01c	00 	. 
	nop			;b01d	00 	. 
	nop			;b01e	00 	. 
	nop			;b01f	00 	. 
	nop			;b020	00 	. 
	nop			;b021	00 	. 
	nop			;b022	00 	. 
	nop			;b023	00 	. 
	nop			;b024	00 	. 
	nop			;b025	00 	. 
	nop			;b026	00 	. 
	nop			;b027	00 	. 
	nop			;b028	00 	. 
	nop			;b029	00 	. 
	nop			;b02a	00 	. 
	nop			;b02b	00 	. 
	nop			;b02c	00 	. 
	nop			;b02d	00 	. 
sub_b02eh:
	ld hl,0790ch		;b02e	21 0c 79 	! . y 
	ld (hl),000h		;b031	36 00 	6 . 
	ld hl,07901h		;b033	21 01 79 	! . y 
	bit 2,(hl)		;b036	cb 56 	. V 
	jr nz,lb0a0h		;b038	20 66 	  f 
	ld a,(0790bh)		;b03a	3a 0b 79 	: . y 
	cp 000h		;b03d	fe 00 	. . 
	jr nz,lb048h		;b03f	20 07 	  . 
	call sub_b1abh		;b041	cd ab b1 	. . . 
	cp 0feh		;b044	fe fe 	. . 
	jr z,lb053h		;b046	28 0b 	( . 
lb048h:
	call sub_b16bh		;b048	cd 6b b1 	. k . 
	ret			;b04b	c9 	. 
lb04ch:
	ld c,a			;b04c	4f 	O 
	push bc			;b04d	c5 	. 
	call sub_b187h		;b04e	cd 87 b1 	. . . 
	pop bc			;b051	c1 	. 
	ld a,c			;b052	79 	y 
lb053h:
	call sub_b172h		;b053	cd 72 b1 	. r . 
	call 0fff7h		;b056	cd f7 ff 	. . . 
	ld (07908h),de		;b059	ed 53 08 79 	. S . y 
	ld a,b			;b05d	78 	x 
	ld (0790ah),a		;b05e	32 0a 79 	2 . y 
	ld hl,(07906h)		;b061	2a 06 79 	* . y 
	ld a,l			;b064	7d 	} 
	ld b,h			;b065	44 	D 
	ret			;b066	c9 	. 
lb067h:
	push af			;b067	f5 	. 
	call sub_b187h		;b068	cd 87 b1 	. . . 
	pop hl			;b06b	e1 	. 
	ld a,(07906h)		;b06c	3a 06 79 	: . y 
	and 0dfh		;b06f	e6 df 	. . 
	cp 04eh		;b071	fe 4e 	. N 
	ld a,h			;b073	7c 	| 
	jr nz,lb048h		;b074	20 d2 	  . 
	cp 027h		;b076	fe 27 	. ' 
	jr z,lb08bh		;b078	28 11 	( . 
	cp 00dh		;b07a	fe 0d 	. . 
	jr z,lb082h		;b07c	28 04 	( . 
	cp 020h		;b07e	fe 20 	.   
	jr c,lb048h		;b080	38 c6 	8 . 
lb082h:
	ld (0790bh),a		;b082	32 0b 79 	2 . y 
	ld a,0ddh		;b085	3e dd 	> . 
	call sub_b170h		;b087	cd 70 b1 	. p . 
	ret			;b08a	c9 	. 
lb08bh:
	ld a,0ddh		;b08b	3e dd 	> . 
	jr lb048h		;b08d	18 b9 	. . 
lb08fh:
	call sub_b16bh		;b08f	cd 6b b1 	. k . 
	call sub_b179h		;b092	cd 79 b1 	. y . 
	jr nc,lb103h		;b095	30 6c 	0 l 
	ret			;b097	c9 	. 
lb098h:
	call sub_9935h		;b098	cd 35 99 	. 5 . 
	call sub_854dh		;b09b	cd 4d 85 	. M . 
	jr lb0aah		;b09e	18 0a 	. . 
lb0a0h:
	ld a,(0790bh)		;b0a0	3a 0b 79 	: . y 
	cp 000h		;b0a3	fe 00 	. . 
	jr nz,lb08fh		;b0a5	20 e8 	  . 
	ld (07906h),a		;b0a7	32 06 79 	2 . y 
lb0aah:
	call sub_b1abh		;b0aa	cd ab b1 	. . . 
	cp 058h		;b0ad	fe 58 	. X 
	jr z,lb0aah		;b0af	28 f9 	( . 
	cp 078h		;b0b1	fe 78 	. x 
	jr z,lb0aah		;b0b3	28 f5 	( . 
	cp 0feh		;b0b5	fe fe 	. . 
	jr z,lb04ch		;b0b7	28 93 	( . 
	cp 014h		;b0b9	fe 14 	. . 
	jr z,lb098h		;b0bb	28 db 	( . 
	call sub_b179h		;b0bd	cd 79 b1 	. y . 
	jr c,lb067h		;b0c0	38 a5 	8 . 
	ld b,a			;b0c2	47 	G 
	ld hl,07906h		;b0c3	21 06 79 	! . y 
	ld a,(hl)			;b0c6	7e 	~ 
	cp 000h		;b0c7	fe 00 	. . 
	jr z,lb0d2h		;b0c9	28 07 	( . 
	inc hl			;b0cb	23 	# 
	ld a,(hl)			;b0cc	7e 	~ 
	cp 000h		;b0cd	fe 00 	. . 
	jr z,lb0d2h		;b0cf	28 01 	( . 
	inc hl			;b0d1	23 	# 
lb0d2h:
	ld (hl),b			;b0d2	70 	p 
	inc hl			;b0d3	23 	# 
	ld (hl),000h		;b0d4	36 00 	6 . 
	ld hl,07906h		;b0d6	21 06 79 	! . y 
	call sub_9319h		;b0d9	cd 19 93 	. . . 
	call 0ffd6h		;b0dc	cd d6 ff 	. . . 
	call sub_9305h		;b0df	cd 05 93 	. . . 
	jr nc,lb0f8h		;b0e2	30 14 	0 . 
	cp 000h		;b0e4	fe 00 	. . 
	jr z,lb0f1h		;b0e6	28 09 	( . 
	ld hl,07907h		;b0e8	21 07 79 	! . y 
	ld a,(hl)			;b0eb	7e 	~ 
	ld (0790bh),a		;b0ec	32 0b 79 	2 . y 
	ld (hl),000h		;b0ef	36 00 	6 . 
lb0f1h:
	call sub_b187h		;b0f1	cd 87 b1 	. . . 
	ld a,(07906h)		;b0f4	3a 06 79 	: . y 
	ret			;b0f7	c9 	. 
lb0f8h:
	cp 000h		;b0f8	fe 00 	. . 
	jr nz,lb157h		;b0fa	20 5b 	  [ 
	ld a,(0790ch)		;b0fc	3a 0c 79 	: . y 
	cp 000h		;b0ff	fe 00 	. . 
	jr nz,lb11fh		;b101	20 1c 	  . 
lb103h:
	ld a,(07921h)		;b103	3a 21 79 	: ! y 
	cp 003h		;b106	fe 03 	. . 
	ld d,003h		;b108	16 03 	. . 
	ld a,002h		;b10a	3e 02 	> . 
	jr nz,lb112h		;b10c	20 04 	  . 
	ld d,000h		;b10e	16 00 	. . 
	ld a,001h		;b110	3e 01 	> . 
lb112h:
	ld (0790ch),a		;b112	32 0c 79 	2 . y 
	ld e,013h		;b115	1e 13 	. . 
	ld b,019h		;b117	06 19 	. . 
	ld hl,07f40h		;b119	21 40 7f 	! @  
	call sub_8620h		;b11c	cd 20 86 	.   . 
lb11fh:
	ld hl,07907h		;b11f	21 07 79 	! . y 
	ld bc,00003h		;b122	01 03 00 	. . . 
	xor a			;b125	af 	. 
lb126h:
	cpi		;b126	ed a1 	. . 
	jr nz,lb126h		;b128	20 fc 	  . 
	ld b,c			;b12a	41 	A 
lb12bh:
	ld (hl),a			;b12b	77 	w 
	inc hl			;b12c	23 	# 
	djnz lb12bh		;b12d	10 fc 	. . 
lb12fh:
	ld a,(0790ch)		;b12f	3a 0c 79 	: . y 
	dec a			;b132	3d 	= 
	jr z,lb137h		;b133	28 02 	( . 
	ld a,003h		;b135	3e 03 	> . 
lb137h:
	ld d,a			;b137	57 	W 
	ld e,014h		;b138	1e 14 	. . 
	ld b,003h		;b13a	06 03 	. . 
	ld hl,07906h		;b13c	21 06 79 	! . y 
	push de			;b13f	d5 	. 
	call sub_84cdh		;b140	cd cd 84 	. . . 
	pop de			;b143	d1 	. 
	ld e,013h		;b144	1e 13 	. . 
	ld a,05bh		;b146	3e 5b 	> [ 
	push de			;b148	d5 	. 
	call sub_8468h		;b149	cd 68 84 	. h . 
	pop de			;b14c	d1 	. 
	ld e,017h		;b14d	1e 17 	. . 
	ld a,05dh		;b14f	3e 5d 	> ] 
	call sub_8468h		;b151	cd 68 84 	. h . 
	jp lb0aah		;b154	c3 aa b0 	. . . 
lb157h:
	ld c,a			;b157	4f 	O 
	ld b,000h		;b158	06 00 	. . 
	ld hl,07906h		;b15a	21 06 79 	! . y 
	ld d,h			;b15d	54 	T 
	ld e,l			;b15e	5d 	] 
	add hl,bc			;b15f	09 	. 
	ld a,(hl)			;b160	7e 	~ 
	ex de,hl			;b161	eb 	. 
	ld (hl),a			;b162	77 	w 
	inc hl			;b163	23 	# 
	ld (hl),000h		;b164	36 00 	6 . 
	inc hl			;b166	23 	# 
	ld (hl),000h		;b167	36 00 	6 . 
	jr lb12fh		;b169	18 c4 	. . 
sub_b16bh:
	ld hl,0790bh		;b16b	21 0b 79 	! . y 
	ld (hl),000h		;b16e	36 00 	6 . 
sub_b170h:
	ld b,000h		;b170	06 00 	. . 
sub_b172h:
	ld hl,07906h		;b172	21 06 79 	! . y 
	ld (hl),a			;b175	77 	w 
	inc hl			;b176	23 	# 
	ld (hl),b			;b177	70 	p 
	ret			;b178	c9 	. 
sub_b179h:
	cp 041h		;b179	fe 41 	. A 
	ret c			;b17b	d8 	. 
	cp 05bh		;b17c	fe 5b 	. [ 
	ccf			;b17e	3f 	? 
	ret nc			;b17f	d0 	. 
	cp 061h		;b180	fe 61 	. a 
	ret c			;b182	d8 	. 
	cp 07bh		;b183	fe 7b 	. { 
	ccf			;b185	3f 	? 
	ret			;b186	c9 	. 
sub_b187h:
	ld hl,07901h		;b187	21 01 79 	! . y 
	res 3,(hl)		;b18a	cb 9e 	. . 
	call sub_854dh		;b18c	cd 4d 85 	. M . 
	ld a,(0790ch)		;b18f	3a 0c 79 	: . y 
	cp 000h		;b192	fe 00 	. . 
	ret z			;b194	c8 	. 
	dec a			;b195	3d 	= 
	ld d,003h		;b196	16 03 	. . 
	jr nz,lb19ch		;b198	20 02 	  . 
	ld d,000h		;b19a	16 00 	. . 
lb19ch:
	ld e,013h		;b19c	1e 13 	. . 
	ld b,019h		;b19e	06 19 	. . 
	ld hl,07f40h		;b1a0	21 40 7f 	! @  
	call sub_8687h		;b1a3	cd 87 86 	. . . 
	xor a			;b1a6	af 	. 
	ld (0790ch),a		;b1a7	32 0c 79 	2 . y 
	ret			;b1aa	c9 	. 
sub_b1abh:
	call l8764h		;b1ab	cd 64 87 	. d . 
	call sub_8c1fh		;b1ae	cd 1f 8c 	. . . 
	cp 010h		;b1b1	fe 10 	. . 
	ret z			;b1b3	c8 	. 
	cp 0f5h		;b1b4	fe f5 	. . 
	ret z			;b1b6	c8 	. 
	cp 0f6h		;b1b7	fe f6 	. . 
	ret z			;b1b9	c8 	. 
	ld hl,07901h		;b1ba	21 01 79 	! . y 
	bit 4,(hl)		;b1bd	cb 66 	. f 
	ret z			;b1bf	c8 	. 
	res 4,(hl)		;b1c0	cb a6 	. . 
	push af			;b1c2	f5 	. 
	push bc			;b1c3	c5 	. 
	call sub_854dh		;b1c4	cd 4d 85 	. M . 
	pop bc			;b1c7	c1 	. 
	pop af			;b1c8	f1 	. 
	ret			;b1c9	c9 	. 
sub_b1cah:
	ld a,(07906h)		;b1ca	3a 06 79 	: . y 
	cp 020h		;b1cd	fe 20 	.   
	jp c,lb2b5h		;b1cf	da b5 b2 	. . . 
	cp 0feh		;b1d2	fe fe 	. . 
	jr z,lb240h		;b1d4	28 6a 	( j 
	ld b,a			;b1d6	47 	G 
	ld a,(07907h)		;b1d7	3a 07 79 	: . y 
	cp 000h		;b1da	fe 00 	. . 
	jr nz,lb22dh		;b1dc	20 4f 	  O 
	ld a,b			;b1de	78 	x 
	ld hl,07924h		;b1df	21 24 79 	! $ y 
	ld l,(hl)			;b1e2	6e 	n 
	ld h,07ch		;b1e3	26 7c 	& | 
	ld (hl),a			;b1e5	77 	w 
	ld de,(07920h)		;b1e6	ed 5b 20 79 	. [   y 
	ld (079e8h),a		;b1ea	32 e8 79 	2 . y 
	call sub_8468h		;b1ed	cd 68 84 	. h . 
	ld a,(07924h)		;b1f0	3a 24 79 	: $ y 
	ld hl,07925h		;b1f3	21 25 79 	! % y 
	cp (hl)			;b1f6	be 	. 
	jr nz,lb21bh		;b1f7	20 22 	  " 
	inc a			;b1f9	3c 	< 
	ld (07925h),a		;b1fa	32 25 79 	2 % y 
	ld a,(07920h)		;b1fd	3a 20 79 	:   y 
	cp 017h		;b200	fe 17 	. . 
	jr nz,lb21bh		;b202	20 17 	  . 
	call sub_b733h		;b204	cd 33 b7 	. 3 . 
	ld a,(0796eh)		;b207	3a 6e 79 	: n y 
	rra			;b20a	1f 	. 
	jr nc,lb21bh		;b20b	30 0e 	0 . 
	ld a,(07921h)		;b20d	3a 21 79 	: ! y 
	cp 003h		;b210	fe 03 	. . 
	jr z,lb21bh		;b212	28 07 	( . 
	ld d,a			;b214	57 	W 
	inc d			;b215	14 	. 
	ld e,000h		;b216	1e 00 	. . 
	call sub_85b7h		;b218	cd b7 85 	. . . 
lb21bh:
	call sub_b522h		;b21b	cd 22 b5 	. " . 
lb21eh:
	ld hl,07925h		;b21e	21 25 79 	! % y 
	ld a,(07924h)		;b221	3a 24 79 	: $ y 
	cp (hl)			;b224	be 	. 
	ret nz			;b225	c0 	. 
	ld hl,(07920h)		;b226	2a 20 79 	*   y 
	ld (07922h),hl		;b229	22 22 79 	" " y 
	ret			;b22c	c9 	. 
lb22dh:
	xor a			;b22d	af 	. 
	ld c,a			;b22e	4f 	O 
	ld hl,07906h		;b22f	21 06 79 	! . y 
lb232h:
	cp (hl)			;b232	be 	. 
	jr z,lb239h		;b233	28 04 	( . 
	inc hl			;b235	23 	# 
	inc c			;b236	0c 	. 
	jr lb232h		;b237	18 f9 	. . 
lb239h:
	ld b,000h		;b239	06 00 	. . 
	ld hl,07906h		;b23b	21 06 79 	! . y 
	jr lb249h		;b23e	18 09 	. . 
lb240h:
	ld a,(0790ah)		;b240	3a 0a 79 	: . y 
	ld c,a			;b243	4f 	O 
	ld b,000h		;b244	06 00 	. . 
	ld hl,(07908h)		;b246	2a 08 79 	* . y 
lb249h:
	ld a,(07924h)		;b249	3a 24 79 	: $ y 
	ld e,a			;b24c	5f 	_ 
	ld d,07ch		;b24d	16 7c 	. | 
	ld a,(07926h)		;b24f	3a 26 79 	: & y 
lb252h:
	ldi		;b252	ed a0 	. . 
	jp po,lb25ah		;b254	e2 5a b2 	. Z . 
	cp e			;b257	bb 	. 
	jr nz,lb252h		;b258	20 f8 	  . 
lb25ah:
	ld a,e			;b25a	7b 	{ 
	ld (07f13h),a		;b25b	32 13 7f 	2 .  
	ld hl,07925h		;b25e	21 25 79 	! % y 
	cp (hl)			;b261	be 	. 
	jr c,lb26ah		;b262	38 06 	8 . 
	jr z,lb26ah		;b264	28 04 	( . 
	ld (hl),a			;b266	77 	w 
	call sub_b71dh		;b267	cd 1d b7 	. . . 
lb26ah:
	ld hl,(07922h)		;b26a	2a 22 79 	* " y 
	push hl			;b26d	e5 	. 
	call sub_b2f8h		;b26e	cd f8 b2 	. . . 
	pop hl			;b271	e1 	. 
	ld (07922h),hl		;b272	22 22 79 	" " y 
	ld a,(07924h)		;b275	3a 24 79 	: $ y 
	ld (07f12h),a		;b278	32 12 7f 	2 .  
	ld a,(07f13h)		;b27b	3a 13 7f 	: .  
	ld (07924h),a		;b27e	32 24 79 	2 $ y 
	ld hl,07925h		;b281	21 25 79 	! % y 
	cp (hl)			;b284	be 	. 
	jr c,lb2aah		;b285	38 23 	8 # 
	jr z,lb290h		;b287	28 07 	( . 
	ld a,(07f13h)		;b289	3a 13 7f 	: .  
	ld (hl),a			;b28c	77 	w 
	call sub_b733h		;b28d	cd 33 b7 	. 3 . 
lb290h:
	ld a,(07924h)		;b290	3a 24 79 	: $ y 
	ld hl,07926h		;b293	21 26 79 	! & y 
	cp (hl)			;b296	be 	. 
	jr nz,lb2aah		;b297	20 11 	  . 
	dec a			;b299	3d 	= 
	ld (07924h),a		;b29a	32 24 79 	2 $ y 
	call sub_b399h		;b29d	cd 99 b3 	. . . 
	ld (07929h),bc		;b2a0	ed 43 29 79 	. C ) y 
	call sub_b6e2h		;b2a4	cd e2 b6 	. . . 
	jp lb21eh		;b2a7	c3 1e b2 	. . . 
lb2aah:
	ld hl,07965h		;b2aa	21 65 79 	! e y 
	res 4,(hl)		;b2ad	cb a6 	. . 
	call sub_b5cch		;b2af	cd cc b5 	. . . 
	jp lb21eh		;b2b2	c3 1e b2 	. . . 
lb2b5h:
	cp 008h		;b2b5	fe 08 	. . 
	ret c			;b2b7	d8 	. 
	cp 00dh		;b2b8	fe 0d 	. . 
	jr c,lb2dbh		;b2ba	38 1f 	8 . 
	cp 012h		;b2bc	fe 12 	. . 
	jr z,lb2d6h		;b2be	28 16 	( . 
	cp 01ch		;b2c0	fe 1c 	. . 
	ret c			;b2c2	d8 	. 
	sub 01ch		;b2c3	d6 1c 	. . 
	ld hl,lb2efh		;b2c5	21 ef b2 	! . . 
lb2c8h:
	ld c,a			;b2c8	4f 	O 
	sla c		;b2c9	cb 21 	. ! 
	ld b,000h		;b2cb	06 00 	. . 
	add hl,bc			;b2cd	09 	. 
	ld e,(hl)			;b2ce	5e 	^ 
	inc hl			;b2cf	23 	# 
	ld d,(hl)			;b2d0	56 	V 
	ex de,hl			;b2d1	eb 	. 
lb2d2h:
	call sub_b2e2h		;b2d2	cd e2 b2 	. . . 
	ret			;b2d5	c9 	. 
lb2d6h:
	ld hl,lb456h		;b2d6	21 56 b4 	! V . 
	jr lb2d2h		;b2d9	18 f7 	. . 
lb2dbh:
	sub 008h		;b2db	d6 08 	. . 
	ld hl,lb2e3h		;b2dd	21 e3 b2 	! . . 
	jr lb2c8h		;b2e0	18 e6 	. . 
sub_b2e2h:
	jp (hl)			;b2e2	e9 	. 
lb2e3h:
	rra			;b2e3	1f 	. 
	or h			;b2e4	b4 	. 
	ld a,(0bfb4h)		;b2e5	3a b4 bf 	: . . 
	or h			;b2e8	b4 	. 
	rst 30h			;b2e9	f7 	. 
	or d			;b2ea	b2 	. 
	rst 30h			;b2eb	f7 	. 
	or d			;b2ec	b2 	. 
	ld d,(hl)			;b2ed	56 	V 
	or h			;b2ee	b4 	. 
lb2efh:
	ld (04cb5h),hl		;b2ef	22 b5 4c 	" . L 
	or l			;b2f2	b5 	. 
	ld h,b			;b2f3	60 	` 
	or l			;b2f4	b5 	. 
	adc a,c			;b2f5	89 	. 
	or l			;b2f6	b5 	. 
	ret			;b2f7	c9 	. 
sub_b2f8h:
	ld a,(07924h)		;b2f8	3a 24 79 	: $ y 
	call sub_b399h		;b2fb	cd 99 b3 	. . . 
	ld (07929h),bc		;b2fe	ed 43 29 79 	. C ) y 
	ld hl,0792ah		;b302	21 2a 79 	! * y 
	ld a,(07928h)		;b305	3a 28 79 	: ( y 
	cp (hl)			;b308	be 	. 
	jr z,lb30dh		;b309	28 02 	( . 
	jr nc,lb332h		;b30b	30 25 	0 % 
lb30dh:
	add a,003h		;b30d	c6 03 	. . 
	ld b,a			;b30f	47 	G 
	ld a,(0792ch)		;b310	3a 2c 79 	: , y 
	ld c,a			;b313	4f 	O 
	ld a,b			;b314	78 	x 
	sub c			;b315	91 	. 
	cp (hl)			;b316	be 	. 
	jr c,lb35ah		;b317	38 41 	8 A 
	ld a,(07928h)		;b319	3a 28 79 	: ( y 
	ld b,a			;b31c	47 	G 
	ld a,(0792ch)		;b31d	3a 2c 79 	: , y 
	sub b			;b320	90 	. 
	add a,(hl)			;b321	86 	. 
	ld d,a			;b322	57 	W 
	ld a,(07929h)		;b323	3a 29 79 	: ) y 
	ld e,a			;b326	5f 	_ 
	ld hl,07c00h		;b327	21 00 7c 	! . | 
	ld a,(07924h)		;b32a	3a 24 79 	: $ y 
	ld l,a			;b32d	6f 	o 
lb32eh:
	call sub_b3c2h		;b32e	cd c2 b3 	. . . 
	ret			;b331	c9 	. 
lb332h:
	sub (hl)			;b332	96 	. 
	ld b,a			;b333	47 	G 
	ld a,(07928h)		;b334	3a 28 79 	: ( y 
	sub b			;b337	90 	. 
	ld (07928h),a		;b338	32 28 79 	2 ( y 
	push hl			;b33b	e5 	. 
	and a			;b33c	a7 	. 
	call sub_b76bh		;b33d	cd 6b b7 	. k . 
	ld a,018h		;b340	3e 18 	> . 
	sub b			;b342	90 	. 
	ld e,a			;b343	5f 	_ 
	ld d,000h		;b344	16 00 	. . 
	pop hl			;b346	e1 	. 
	ld a,(hl)			;b347	7e 	~ 
	call sub_b38eh		;b348	cd 8e b3 	. . . 
	push de			;b34b	d5 	. 
	push hl			;b34c	e5 	. 
	ld e,000h		;b34d	1e 00 	. . 
	ld a,020h		;b34f	3e 20 	>   
	ld b,018h		;b351	06 18 	. . 
	call sub_86b3h		;b353	cd b3 86 	. . . 
	pop hl			;b356	e1 	. 
	pop de			;b357	d1 	. 
	jr lb368h		;b358	18 0e 	. . 
lb35ah:
	ld a,(hl)			;b35a	7e 	~ 
	cp 003h		;b35b	fe 03 	. . 
	jr c,lb370h		;b35d	38 11 	8 . 
	sub 003h		;b35f	d6 03 	. . 
	call sub_b38bh		;b361	cd 8b b3 	. . . 
	ld (0792bh),de		;b364	ed 53 2b 79 	. S + y 
lb368h:
	ld a,(07925h)		;b368	3a 25 79 	: % y 
	ld (07f13h),a		;b36b	32 13 7f 	2 .  
	jr lb32eh		;b36e	18 be 	. . 
lb370h:
	ld a,003h		;b370	3e 03 	> . 
	sub (hl)			;b372	96 	. 
	ld hl,0792ch		;b373	21 2c 79 	! , y 
lb376h:
	cp (hl)			;b376	be 	. 
	jr z,lb383h		;b377	28 0a 	( . 
	push af			;b379	f5 	. 
	push hl			;b37a	e5 	. 
	call sub_84f7h		;b37b	cd f7 84 	. . . 
	pop hl			;b37e	e1 	. 
	inc (hl)			;b37f	34 	4 
	pop af			;b380	f1 	. 
	jr lb376h		;b381	18 f3 	. . 
lb383h:
	ld d,(hl)			;b383	56 	V 
	ld e,000h		;b384	1e 00 	. . 
	ld hl,07913h		;b386	21 13 79 	! . y 
	jr lb368h		;b389	18 dd 	. . 
sub_b38bh:
	ld de,00000h		;b38b	11 00 00 	. . . 
sub_b38eh:
	ld hl,07913h		;b38e	21 13 79 	! . y 
	add a,l			;b391	85 	. 
	ld l,a			;b392	6f 	o 
	ld a,(hl)			;b393	7e 	~ 
	ld hl,07c00h		;b394	21 00 7c 	! . | 
	ld l,a			;b397	6f 	o 
	ret			;b398	c9 	. 
sub_b399h:
	ld b,000h		;b399	06 00 	. . 
	ld hl,07913h		;b39b	21 13 79 	! . y 
lb39eh:
	cp (hl)			;b39e	be 	. 
	jr c,lb3a5h		;b39f	38 04 	8 . 
	inc b			;b3a1	04 	. 
	inc hl			;b3a2	23 	# 
	jr lb39eh		;b3a3	18 f9 	. . 
lb3a5h:
	dec b			;b3a5	05 	. 
	dec hl			;b3a6	2b 	+ 
	sub (hl)			;b3a7	96 	. 
	ld c,a			;b3a8	4f 	O 
	ld a,b			;b3a9	78 	x 
	cp 000h		;b3aa	fe 00 	. . 
	jr z,lb3b7h		;b3ac	28 09 	( . 
	ld hl,0796eh		;b3ae	21 6e 79 	! n y 
	bit 0,(hl)		;b3b1	cb 46 	. F 
	ret z			;b3b3	c8 	. 
	inc c			;b3b4	0c 	. 
	inc c			;b3b5	0c 	. 
	ret			;b3b6	c9 	. 
lb3b7h:
	ld a,(0792bh)		;b3b7	3a 2b 79 	: + y 
	add a,c			;b3ba	81 	. 
	ld c,a			;b3bb	4f 	O 
	sub 018h		;b3bc	d6 18 	. . 
	ret c			;b3be	d8 	. 
	ld c,a			;b3bf	4f 	O 
	inc b			;b3c0	04 	. 
	ret			;b3c1	c9 	. 
sub_b3c2h:
	ld a,(07f13h)		;b3c2	3a 13 7f 	: .  
	ld b,a			;b3c5	47 	G 
	ld a,017h		;b3c6	3e 17 	> . 
	add a,l			;b3c8	85 	. 
	jr c,lb3f5h		;b3c9	38 2a 	8 * 
	sub e			;b3cb	93 	. 
	cp b			;b3cc	b8 	. 
	jr nc,lb3f5h		;b3cd	30 26 	0 & 
	ld a,018h		;b3cf	3e 18 	> . 
	sub e			;b3d1	93 	. 
	ld b,a			;b3d2	47 	G 
	ld a,d			;b3d3	7a 	z 
	cp 003h		;b3d4	fe 03 	. . 
	jr z,lb402h		;b3d6	28 2a 	( * 
	call sub_84cdh		;b3d8	cd cd 84 	. . . 
	inc d			;b3db	14 	. 
	ld e,000h		;b3dc	1e 00 	. . 
	ld a,(0796eh)		;b3de	3a 6e 79 	: n y 
	bit 0,a		;b3e1	cb 47 	. G 
	jr z,lb3f2h		;b3e3	28 0d 	( . 
	ld b,002h		;b3e5	06 02 	. . 
	ld a,020h		;b3e7	3e 20 	>   
	push hl			;b3e9	e5 	. 
	push de			;b3ea	d5 	. 
	call sub_86b3h		;b3eb	cd b3 86 	. . . 
	pop de			;b3ee	d1 	. 
	pop hl			;b3ef	e1 	. 
	ld e,002h		;b3f0	1e 02 	. . 
lb3f2h:
	inc hl			;b3f2	23 	# 
	jr sub_b3c2h		;b3f3	18 cd 	. . 
lb3f5h:
	ld a,(07f13h)		;b3f5	3a 13 7f 	: .  
	sub l			;b3f8	95 	. 
	ld b,a			;b3f9	47 	G 
	jr z,lb401h		;b3fa	28 05 	( . 
	add a,e			;b3fc	83 	. 
	cp 017h		;b3fd	fe 17 	. . 
	jr nc,lb402h		;b3ff	30 01 	0 . 
lb401h:
	inc b			;b401	04 	. 
lb402h:
	push hl			;b402	e5 	. 
	ld a,l			;b403	7d 	} 
	add a,b			;b404	80 	. 
	jr nc,lb40ch		;b405	30 05 	0 . 
	ld c,a			;b407	4f 	O 
	inc c			;b408	0c 	. 
	ld a,b			;b409	78 	x 
	sub c			;b40a	91 	. 
	ld b,a			;b40b	47 	G 
lb40ch:
	ld a,b			;b40c	78 	x 
	add a,e			;b40d	83 	. 
	sub 018h		;b40e	d6 18 	. . 
	jr c,lb416h		;b410	38 04 	8 . 
	ld l,a			;b412	6f 	o 
	ld a,b			;b413	78 	x 
	sub l			;b414	95 	. 
	ld b,a			;b415	47 	G 
lb416h:
	pop hl			;b416	e1 	. 
	call sub_84cdh		;b417	cd cd 84 	. . . 
	ld (07922h),de		;b41a	ed 53 22 79 	. S " y 
	ret			;b41e	c9 	. 
	ld h,07ch		;b41f	26 7c 	& | 
	ld a,(07924h)		;b421	3a 24 79 	: $ y 
	ld l,a			;b424	6f 	o 
	ld a,(07927h)		;b425	3a 27 79 	: ' y 
	cp l			;b428	bd 	. 
	ret z			;b429	c8 	. 
	ld a,(07925h)		;b42a	3a 25 79 	: % y 
	sub l			;b42d	95 	. 
	inc a			;b42e	3c 	< 
	ld c,a			;b42f	4f 	O 
	ld a,(07924h)		;b430	3a 24 79 	: $ y 
	dec a			;b433	3d 	= 
	ld (07924h),a		;b434	32 24 79 	2 $ y 
	dec hl			;b437	2b 	+ 
	jr lb446h		;b438	18 0c 	. . 
	ld a,(07924h)		;b43a	3a 24 79 	: $ y 
	ld h,07ch		;b43d	26 7c 	& | 
	ld l,a			;b43f	6f 	o 
	ld a,(07925h)		;b440	3a 25 79 	: % y 
	sub l			;b443	95 	. 
	ret z			;b444	c8 	. 
	ld c,a			;b445	4f 	O 
lb446h:
	ld b,000h		;b446	06 00 	. . 
	ld d,h			;b448	54 	T 
	ld e,l			;b449	5d 	] 
	inc hl			;b44a	23 	# 
	ldir		;b44b	ed b0 	. . 
	ld a,(07925h)		;b44d	3a 25 79 	: % y 
	dec a			;b450	3d 	= 
	ld (07925h),a		;b451	32 25 79 	2 % y 
	jr lb47fh		;b454	18 29 	. ) 
lb456h:
	ld h,07ch		;b456	26 7c 	& | 
	ld a,(07924h)		;b458	3a 24 79 	: $ y 
	ld l,a			;b45b	6f 	o 
	ld a,(07925h)		;b45c	3a 25 79 	: % y 
	sub l			;b45f	95 	. 
	ld c,a			;b460	4f 	O 
	ld b,000h		;b461	06 00 	. . 
	cp 000h		;b463	fe 00 	. . 
	ret z			;b465	c8 	. 
	ld d,h			;b466	54 	T 
	ld a,(07925h)		;b467	3a 25 79 	: % y 
	ld l,a			;b46a	6f 	o 
	ld e,a			;b46b	5f 	_ 
	dec l			;b46c	2d 	- 
	push de			;b46d	d5 	. 
	lddr		;b46e	ed b8 	. . 
	ld a,020h		;b470	3e 20 	>   
	ld (de),a			;b472	12 	. 
	pop de			;b473	d1 	. 
	ld a,(07926h)		;b474	3a 26 79 	: & y 
	cp e			;b477	bb 	. 
	jr z,lb4bah		;b478	28 40 	( @ 
	inc e			;b47a	1c 	. 
	ld a,e			;b47b	7b 	{ 
	ld (07925h),a		;b47c	32 25 79 	2 % y 
lb47fh:
	ld hl,(07922h)		;b47f	2a 22 79 	* " y 
	push hl			;b482	e5 	. 
	call sub_b71dh		;b483	cd 1d b7 	. . . 
	ld a,(07925h)		;b486	3a 25 79 	: % y 
	ld (07f13h),a		;b489	32 13 7f 	2 .  
	call sub_b2f8h		;b48c	cd f8 b2 	. . . 
	call sub_b6e2h		;b48f	cd e2 b6 	. . . 
	pop hl			;b492	e1 	. 
	ld de,(07922h)		;b493	ed 5b 22 79 	. [ " y 
	ld a,h			;b497	7c 	| 
	sub d			;b498	92 	. 
	ret c			;b499	d8 	. 
	jr z,lb4b4h		;b49a	28 18 	( . 
	ld b,a			;b49c	47 	G 
	xor a			;b49d	af 	. 
lb49eh:
	add a,018h		;b49e	c6 18 	. . 
	djnz lb49eh		;b4a0	10 fc 	. . 
	add a,l			;b4a2	85 	. 
	sub e			;b4a3	93 	. 
lb4a4h:
	ld b,a			;b4a4	47 	G 
	inc e			;b4a5	1c 	. 
	ld a,e			;b4a6	7b 	{ 
	cp 018h		;b4a7	fe 18 	. . 
	jr c,lb4aeh		;b4a9	38 03 	8 . 
	ld e,000h		;b4ab	1e 00 	. . 
	inc d			;b4ad	14 	. 
lb4aeh:
	ld a,020h		;b4ae	3e 20 	>   
	call sub_86b3h		;b4b0	cd b3 86 	. . . 
	ret			;b4b3	c9 	. 
lb4b4h:
	ld a,l			;b4b4	7d 	} 
	sub e			;b4b5	93 	. 
	ret c			;b4b6	d8 	. 
	ret z			;b4b7	c8 	. 
	jr lb4a4h		;b4b8	18 ea 	. . 
lb4bah:
	ld a,00dh		;b4ba	3e 0d 	> . 
	ld (de),a			;b4bc	12 	. 
	jr lb47fh		;b4bd	18 c0 	. . 
	ld a,(07905h)		;b4bf	3a 05 79 	: . y 
	ld b,a			;b4c2	47 	G 
	ld a,(07924h)		;b4c3	3a 24 79 	: $ y 
	ld c,a			;b4c6	4f 	O 
lb4c7h:
	sub b			;b4c7	90 	. 
	jr nc,lb4c7h		;b4c8	30 fd 	0 . 
	neg		;b4ca	ed 44 	. D 
	add a,c			;b4cc	81 	. 
	jr c,lb4d1h		;b4cd	38 02 	8 . 
	jr nz,lb4d4h		;b4cf	20 03 	  . 
lb4d1h:
	ld a,(07926h)		;b4d1	3a 26 79 	: & y 
lb4d4h:
	ld hl,07926h		;b4d4	21 26 79 	! & y 
	cp (hl)			;b4d7	be 	. 
	jr c,lb4deh		;b4d8	38 04 	8 . 
	ld a,(07926h)		;b4da	3a 26 79 	: & y 
	dec a			;b4dd	3d 	= 
lb4deh:
	ld hl,07925h		;b4de	21 25 79 	! % y 
	cp (hl)			;b4e1	be 	. 
	jr z,lb4e6h		;b4e2	28 02 	( . 
	jr nc,lb4f1h		;b4e4	30 0b 	0 . 
lb4e6h:
	ld b,a			;b4e6	47 	G 
	ld hl,07924h		;b4e7	21 24 79 	! $ y 
	ld a,(hl)			;b4ea	7e 	~ 
	ld (07f12h),a		;b4eb	32 12 7f 	2 .  
	ld (hl),b			;b4ee	70 	p 
	jr lb55eh		;b4ef	18 6d 	. m 
lb4f1h:
	sub (hl)			;b4f1	96 	. 
	ld b,a			;b4f2	47 	G 
	ld h,07ch		;b4f3	26 7c 	& | 
	ld a,(07925h)		;b4f5	3a 25 79 	: % y 
	ld l,a			;b4f8	6f 	o 
	ld a,020h		;b4f9	3e 20 	>   
lb4fbh:
	ld (hl),a			;b4fb	77 	w 
	inc hl			;b4fc	23 	# 
	djnz lb4fbh		;b4fd	10 fc 	. . 
	ld (hl),00dh		;b4ff	36 0d 	6 . 
	ld a,(07924h)		;b501	3a 24 79 	: $ y 
	ld (07f12h),a		;b504	32 12 7f 	2 .  
	ld a,(07925h)		;b507	3a 25 79 	: % y 
	ld (07924h),a		;b50a	32 24 79 	2 $ y 
	ld a,l			;b50d	7d 	} 
	ld (07925h),a		;b50e	32 25 79 	2 % y 
	ld (07f13h),a		;b511	32 13 7f 	2 .  
	call sub_b71dh		;b514	cd 1d b7 	. . . 
	call sub_b2f8h		;b517	cd f8 b2 	. . . 
	ld a,(07925h)		;b51a	3a 25 79 	: % y 
	ld (07924h),a		;b51d	32 24 79 	2 $ y 
	jr lb55eh		;b520	18 3c 	. < 
sub_b522h:
	ld a,(07924h)		;b522	3a 24 79 	: $ y 
	ld hl,07925h		;b525	21 25 79 	! % y 
	cp (hl)			;b528	be 	. 
	jr z,lb546h		;b529	28 1b 	( . 
	inc a			;b52b	3c 	< 
	ld hl,07926h		;b52c	21 26 79 	! & y 
	cp (hl)			;b52f	be 	. 
	jr z,lb53bh		;b530	28 09 	( . 
	ld (07924h),a		;b532	32 24 79 	2 $ y 
	dec a			;b535	3d 	= 
	ld (07f12h),a		;b536	32 12 7f 	2 .  
	jr lb55eh		;b539	18 23 	. # 
lb53bh:
	dec a			;b53b	3d 	= 
	call sub_b399h		;b53c	cd 99 b3 	. . . 
	ld (07929h),bc		;b53f	ed 43 29 79 	. C ) y 
	call sub_b6e2h		;b543	cd e2 b6 	. . . 
lb546h:
	ld hl,07965h		;b546	21 65 79 	! e y 
	res 1,(hl)		;b549	cb 8e 	. . 
	ret			;b54b	c9 	. 
	ld a,(07924h)		;b54c	3a 24 79 	: $ y 
	ld hl,07927h		;b54f	21 27 79 	! ' y 
	cp (hl)			;b552	be 	. 
	jr z,lb546h		;b553	28 f1 	( . 
	jr c,lb546h		;b555	38 ef 	8 . 
	ld (07f12h),a		;b557	32 12 7f 	2 .  
	dec a			;b55a	3d 	= 
	ld (07924h),a		;b55b	32 24 79 	2 $ y 
lb55eh:
	jr sub_b5cch		;b55e	18 6c 	. l 
	ld a,(07924h)		;b560	3a 24 79 	: $ y 
	ld hl,07927h		;b563	21 27 79 	! ' y 
	cp (hl)			;b566	be 	. 
	jr z,lb546h		;b567	28 dd 	( . 
	ld (07f12h),a		;b569	32 12 7f 	2 .  
	sub 016h		;b56c	d6 16 	. . 
	jr c,lb581h		;b56e	38 11 	8 . 
	ld hl,0796eh		;b570	21 6e 79 	! n y 
	bit 0,(hl)		;b573	cb 46 	. F 
	jr nz,lb57bh		;b575	20 04 	  . 
	sub 002h		;b577	d6 02 	. . 
	jr c,lb581h		;b579	38 06 	8 . 
lb57bh:
	ld hl,07927h		;b57b	21 27 79 	! ' y 
	cp (hl)			;b57e	be 	. 
	jr nc,lb584h		;b57f	30 03 	0 . 
lb581h:
	ld a,(07927h)		;b581	3a 27 79 	: ' y 
lb584h:
	ld (07924h),a		;b584	32 24 79 	2 $ y 
	jr sub_b5cch		;b587	18 43 	. C 
	ld a,(07924h)		;b589	3a 24 79 	: $ y 
	ld hl,07925h		;b58c	21 25 79 	! % y 
	cp (hl)			;b58f	be 	. 
	jr z,lb546h		;b590	28 b4 	( . 
	inc a			;b592	3c 	< 
	ld hl,07926h		;b593	21 26 79 	! & y 
	cp (hl)			;b596	be 	. 
	jr z,lb53bh		;b597	28 a2 	( . 
	dec a			;b599	3d 	= 
	ld (07f12h),a		;b59a	32 12 7f 	2 .  
	add a,018h		;b59d	c6 18 	. . 
	jp c,lb5c6h		;b59f	da c6 b5 	. . . 
	ld hl,0796eh		;b5a2	21 6e 79 	! n y 
	bit 0,(hl)		;b5a5	cb 46 	. F 
	jr z,lb5afh		;b5a7	28 06 	( . 
	cp 01ah		;b5a9	fe 1a 	. . 
	jr c,lb5c2h		;b5ab	38 15 	8 . 
	sub 002h		;b5ad	d6 02 	. . 
lb5afh:
	ld hl,07925h		;b5af	21 25 79 	! % y 
	cp (hl)			;b5b2	be 	. 
	jr c,lb5b6h		;b5b3	38 01 	8 . 
	ld a,(hl)			;b5b5	7e 	~ 
lb5b6h:
	ld hl,07926h		;b5b6	21 26 79 	! & y 
	cp (hl)			;b5b9	be 	. 
	jr nz,lb5bdh		;b5ba	20 01 	  . 
	dec a			;b5bc	3d 	= 
lb5bdh:
	ld (07924h),a		;b5bd	32 24 79 	2 $ y 
	jr sub_b5cch		;b5c0	18 0a 	. . 
lb5c2h:
	ld a,018h		;b5c2	3e 18 	> . 
	jr lb5afh		;b5c4	18 e9 	. . 
lb5c6h:
	ld a,(07926h)		;b5c6	3a 26 79 	: & y 
	dec a			;b5c9	3d 	= 
	jr lb5afh		;b5ca	18 e3 	. . 
sub_b5cch:
	ld hl,07924h		;b5cc	21 24 79 	! $ y 
	ld a,(07f12h)		;b5cf	3a 12 7f 	: .  
	cp (hl)			;b5d2	be 	. 
	ret z			;b5d3	c8 	. 
	call sub_b7a2h		;b5d4	cd a2 b7 	. . . 
	ld a,(07f12h)		;b5d7	3a 12 7f 	: .  
	call sub_b399h		;b5da	cd 99 b3 	. . . 
	ld (07f28h),bc		;b5dd	ed 43 28 7f 	. C (  
	ld a,(07924h)		;b5e1	3a 24 79 	: $ y 
	call sub_b399h		;b5e4	cd 99 b3 	. . . 
	ld (07929h),bc		;b5e7	ed 43 29 79 	. C ) y 
	ld a,(07f29h)		;b5eb	3a 29 7f 	: )  
	sub b			;b5ee	90 	. 
	jr z,lb649h		;b5ef	28 58 	( X 
	jr nc,lb650h		;b5f1	30 5d 	0 ] 
	neg		;b5f3	ed 44 	. D 
	cp 004h		;b5f5	fe 04 	. . 
	jp nc,lb69ah		;b5f7	d2 9a b6 	. . . 
	ld hl,07928h		;b5fa	21 28 79 	! ( y 
	ld a,(0792ah)		;b5fd	3a 2a 79 	: * y 
	sub (hl)			;b600	96 	. 
	ld b,a			;b601	47 	G 
	ld hl,0792ch		;b602	21 2c 79 	! , y 
	ld a,003h		;b605	3e 03 	> . 
	sub (hl)			;b607	96 	. 
	cp b			;b608	b8 	. 
	jr nc,lb649h		;b609	30 3e 	0 > 
	ld a,(0792ch)		;b60b	3a 2c 79 	: , y 
	add a,b			;b60e	80 	. 
	sub 003h		;b60f	d6 03 	. . 
	ld b,a			;b611	47 	G 
lb612h:
	push bc			;b612	c5 	. 
	call sub_84f7h		;b613	cd f7 84 	. . . 
	ld hl,0792ch		;b616	21 2c 79 	! , y 
	xor a			;b619	af 	. 
	cp (hl)			;b61a	be 	. 
	jr nz,lb64dh		;b61b	20 30 	  0 
	ld hl,07928h		;b61d	21 28 79 	! ( y 
	inc (hl)			;b620	34 	4 
lb621h:
	ld l,014h		;b621	2e 14 	. . 
	call sub_b768h		;b623	cd 68 b7 	. h . 
	call sub_b6ddh		;b626	cd dd b6 	. . . 
	ld d,003h		;b629	16 03 	. . 
	call sub_b780h		;b62b	cd 80 b7 	. . . 
	ld a,(07928h)		;b62e	3a 28 79 	: ( y 
	add a,003h		;b631	c6 03 	. . 
	ld hl,0792ch		;b633	21 2c 79 	! , y 
	sub (hl)			;b636	96 	. 
	ld hl,07913h		;b637	21 13 79 	! . y 
	add a,l			;b63a	85 	. 
	ld l,a			;b63b	6f 	o 
	ld l,(hl)			;b63c	6e 	n 
	ld h,07ch		;b63d	26 7c 	& | 
	call sub_84cdh		;b63f	cd cd 84 	. . . 
	pop bc			;b642	c1 	. 
	djnz lb612h		;b643	10 cd 	. . 
lb645h:
	ld (07922h),de		;b645	ed 53 22 79 	. S " y 
lb649h:
	call sub_b6e2h		;b649	cd e2 b6 	. . . 
	ret			;b64c	c9 	. 
lb64dh:
	dec (hl)			;b64d	35 	5 
	jr lb621h		;b64e	18 d1 	. . 
lb650h:
	cp 004h		;b650	fe 04 	. . 
	jr nc,lb692h		;b652	30 3e 	0 > 
	ld hl,07928h		;b654	21 28 79 	! ( y 
	ld a,(0792ah)		;b657	3a 2a 79 	: * y 
	sub (hl)			;b65a	96 	. 
	ld b,a			;b65b	47 	G 
	ld hl,0792ch		;b65c	21 2c 79 	! , y 
	ld a,003h		;b65f	3e 03 	> . 
	sub (hl)			;b661	96 	. 
	sub b			;b662	90 	. 
	jr nc,lb649h		;b663	30 e4 	0 . 
	ld a,b			;b665	78 	x 
	neg		;b666	ed 44 	. D 
	ld b,a			;b668	47 	G 
lb669h:
	push bc			;b669	c5 	. 
	ld de,00000h		;b66a	11 00 00 	. . . 
	call sub_85b7h		;b66d	cd b7 85 	. . . 
	ld hl,07928h		;b670	21 28 79 	! ( y 
	dec (hl)			;b673	35 	5 
	ld a,(hl)			;b674	7e 	~ 
	ld hl,07913h		;b675	21 13 79 	! . y 
	add a,l			;b678	85 	. 
	ld l,a			;b679	6f 	o 
	push hl			;b67a	e5 	. 
	call sub_b768h		;b67b	cd 68 b7 	. h . 
	call sub_b6ddh		;b67e	cd dd b6 	. . . 
	ld d,000h		;b681	16 00 	. . 
	pop hl			;b683	e1 	. 
	ld l,(hl)			;b684	6e 	n 
	ld h,07ch		;b685	26 7c 	& | 
	call sub_84cdh		;b687	cd cd 84 	. . . 
	pop bc			;b68a	c1 	. 
	djnz lb669h		;b68b	10 dc 	. . 
	ld de,00317h		;b68d	11 17 03 	. . . 
	jr lb645h		;b690	18 b3 	. . 
lb692h:
	ld a,(0792ah)		;b692	3a 2a 79 	: * y 
	ld (07928h),a		;b695	32 28 79 	2 ( y 
	jr lb6a3h		;b698	18 09 	. . 
lb69ah:
	ld a,(0792ah)		;b69a	3a 2a 79 	: * y 
	ld b,003h		;b69d	06 03 	. . 
	sub b			;b69f	90 	. 
	ld (07928h),a		;b6a0	32 28 79 	2 ( y 
lb6a3h:
	ld d,000h		;b6a3	16 00 	. . 
lb6a5h:
	push de			;b6a5	d5 	. 
	ld hl,0796eh		;b6a6	21 6e 79 	! n y 
	bit 0,(hl)		;b6a9	cb 46 	. F 
	jr z,lb6b6h		;b6ab	28 09 	( . 
	ld e,000h		;b6ad	1e 00 	. . 
	ld a,020h		;b6af	3e 20 	>   
	ld b,002h		;b6b1	06 02 	. . 
	call sub_86b3h		;b6b3	cd b3 86 	. . . 
lb6b6h:
	pop de			;b6b6	d1 	. 
	push de			;b6b7	d5 	. 
	ld a,(07928h)		;b6b8	3a 28 79 	: ( y 
	add a,d			;b6bb	82 	. 
	ld hl,07913h		;b6bc	21 13 79 	! . y 
	add a,l			;b6bf	85 	. 
	ld l,a			;b6c0	6f 	o 
	push hl			;b6c1	e5 	. 
	call sub_b768h		;b6c2	cd 68 b7 	. h . 
	call sub_b6ddh		;b6c5	cd dd b6 	. . . 
	call sub_b780h		;b6c8	cd 80 b7 	. . . 
	pop hl			;b6cb	e1 	. 
	ld l,(hl)			;b6cc	6e 	n 
	ld h,07ch		;b6cd	26 7c 	& | 
	call sub_84cdh		;b6cf	cd cd 84 	. . . 
	pop de			;b6d2	d1 	. 
	inc d			;b6d3	14 	. 
	ld a,d			;b6d4	7a 	z 
	cp 004h		;b6d5	fe 04 	. . 
	jr c,lb6a5h		;b6d7	38 cc 	8 . 
	dec d			;b6d9	15 	. 
	jp lb645h		;b6da	c3 45 b6 	. E . 
sub_b6ddh:
	ld a,018h		;b6dd	3e 18 	> . 
	sub b			;b6df	90 	. 
	ld e,a			;b6e0	5f 	_ 
	ret			;b6e1	c9 	. 
sub_b6e2h:
	ld de,(07929h)		;b6e2	ed 5b 29 79 	. [ ) y 
	ld hl,07928h		;b6e6	21 28 79 	! ( y 
	ld a,(0792ch)		;b6e9	3a 2c 79 	: , y 
	add a,d			;b6ec	82 	. 
	sub (hl)			;b6ed	96 	. 
	ld d,a			;b6ee	57 	W 
	ld (07920h),de		;b6ef	ed 53 20 79 	. S   y 
	ld hl,07924h		;b6f3	21 24 79 	! $ y 
	ld a,(07925h)		;b6f6	3a 25 79 	: % y 
	cp (hl)			;b6f9	be 	. 
	ld hl,07965h		;b6fa	21 65 79 	! e y 
	jr nz,lb715h		;b6fd	20 16 	  . 
	res 2,(hl)		;b6ff	cb 96 	. . 
	ld (07922h),de		;b701	ed 53 22 79 	. S " y 
	ld a,05fh		;b705	3e 5f 	> _ 
lb707h:
	call sub_8468h		;b707	cd 68 84 	. h . 
	ld a,(07924h)		;b70a	3a 24 79 	: $ y 
	ld l,a			;b70d	6f 	o 
	ld h,07ch		;b70e	26 7c 	& | 
	ld a,(hl)			;b710	7e 	~ 
	ld (079e8h),a		;b711	32 e8 79 	2 . y 
	ret			;b714	c9 	. 
lb715h:
	ld a,014h		;b715	3e 14 	> . 
	or (hl)			;b717	b6 	. 
	ld (hl),a			;b718	77 	w 
	ld a,0f7h		;b719	3e f7 	> . 
	jr lb707h		;b71b	18 ea 	. . 
sub_b71dh:
	call sub_b75bh		;b71d	cd 5b b7 	. [ . 
	push de			;b720	d5 	. 
	call sub_b736h		;b721	cd 36 b7 	. 6 . 
	pop de			;b724	d1 	. 
	ex de,hl			;b725	eb 	. 
	and a			;b726	a7 	. 
	sbc hl,de		;b727	ed 52 	. R 
	ret nc			;b729	d0 	. 
	ld hl,0796eh		;b72a	21 6e 79 	! n y 
	bit 0,(hl)		;b72d	cb 46 	. F 
	call nz,sub_b791h		;b72f	c4 91 b7 	. . . 
	ret			;b732	c9 	. 
sub_b733h:
	call sub_b75bh		;b733	cd 5b b7 	. [ . 
sub_b736h:
	dec hl			;b736	2b 	+ 
	ld a,(07925h)		;b737	3a 25 79 	: % y 
	cp (hl)			;b73a	be 	. 
	ret z			;b73b	c8 	. 
lb73ch:
	ld d,h			;b73c	54 	T 
	ld e,l			;b73d	5d 	] 
	call sub_b768h		;b73e	cd 68 b7 	. h . 
	ex de,hl			;b741	eb 	. 
	ld a,(hl)			;b742	7e 	~ 
	add a,b			;b743	80 	. 
	ret c			;b744	d8 	. 
	ld b,a			;b745	47 	G 
	ld a,(07925h)		;b746	3a 25 79 	: % y 
	cp b			;b749	b8 	. 
	jr c,lb751h		;b74a	38 05 	8 . 
	inc hl			;b74c	23 	# 
	ld (hl),b			;b74d	70 	p 
	jr nz,lb73ch		;b74e	20 ec 	  . 
	ret			;b750	c9 	. 
lb751h:
	ld b,(hl)			;b751	46 	F 
	ld a,(07925h)		;b752	3a 25 79 	: % y 
	cp b			;b755	b8 	. 
	ret nc			;b756	d0 	. 
	ld (hl),0ffh		;b757	36 ff 	6 . 
	jr sub_b736h		;b759	18 db 	. . 
sub_b75bh:
	ld hl,07912h		;b75b	21 12 79 	! . y 
	ld a,0ffh		;b75e	3e ff 	> . 
lb760h:
	inc hl			;b760	23 	# 
	cp (hl)			;b761	be 	. 
	jr nz,lb760h		;b762	20 fc 	  . 
	ld d,h			;b764	54 	T 
	ld e,l			;b765	5d 	] 
	dec de			;b766	1b 	. 
	ret			;b767	c9 	. 
sub_b768h:
	ld a,013h		;b768	3e 13 	> . 
	cp l			;b76a	bd 	. 
sub_b76bh:
	jr z,lb778h		;b76b	28 0b 	( . 
	ld b,018h		;b76d	06 18 	. . 
	ld hl,0796eh		;b76f	21 6e 79 	! n y 
	bit 0,(hl)		;b772	cb 46 	. F 
	ret z			;b774	c8 	. 
	ld b,016h		;b775	06 16 	. . 
	ret			;b777	c9 	. 
lb778h:
	ld hl,0792bh		;b778	21 2b 79 	! + y 
	ld a,018h		;b77b	3e 18 	> . 
	sub (hl)			;b77d	96 	. 
	ld b,a			;b77e	47 	G 
	ret			;b77f	c9 	. 
sub_b780h:
	ld hl,07913h		;b780	21 13 79 	! . y 
	ld a,(0792ah)		;b783	3a 2a 79 	: * y 
	add a,l			;b786	85 	. 
	ld l,a			;b787	6f 	o 
	ld a,(hl)			;b788	7e 	~ 
	add a,b			;b789	80 	. 
	ret nc			;b78a	d0 	. 
	inc a			;b78b	3c 	< 
	ld l,a			;b78c	6f 	o 
	ld a,b			;b78d	78 	x 
	sub l			;b78e	95 	. 
	ld b,a			;b78f	47 	G 
	ret			;b790	c9 	. 
sub_b791h:
	call sub_b75bh		;b791	cd 5b b7 	. [ . 
	ld a,e			;b794	7b 	{ 
	sub 013h		;b795	d6 13 	. . 
	ld b,a			;b797	47 	G 
	sub 004h		;b798	d6 04 	. . 
	ret nc			;b79a	d0 	. 
	ld d,b			;b79b	50 	P 
	ld e,000h		;b79c	1e 00 	. . 
	call sub_85b7h		;b79e	cd b7 85 	. . . 
	ret			;b7a1	c9 	. 
sub_b7a2h:
	ld a,(07f12h)		;b7a2	3a 12 7f 	: .  
	ld hl,07925h		;b7a5	21 25 79 	! % y 
	cp (hl)			;b7a8	be 	. 
	jr z,lb7bdh		;b7a9	28 12 	( . 
	ld a,(07965h)		;b7ab	3a 65 79 	: e y 
	cpl			;b7ae	2f 	/ 
	and 014h		;b7af	e6 14 	. . 
	ret nz			;b7b1	c0 	. 
	ld a,(079e8h)		;b7b2	3a e8 79 	: . y 
lb7b5h:
	ld de,(07920h)		;b7b5	ed 5b 20 79 	. [   y 
	call sub_8468h		;b7b9	cd 68 84 	. h . 
	ret			;b7bc	c9 	. 
lb7bdh:
	ld a,020h		;b7bd	3e 20 	>   
	jr lb7b5h		;b7bf	18 f4 	. . 
lb7c1h:
	call sub_b985h		;b7c1	cd 85 b9 	. . . 
	call sub_b9c4h		;b7c4	cd c4 b9 	. . . 
lb7c7h:
	call sub_b9a7h		;b7c7	cd a7 b9 	. . . 
	call sub_b02eh		;b7ca	cd 2e b0 	. . . 
	ld hl,07903h		;b7cd	21 03 79 	! . y 
	bit 1,(hl)		;b7d0	cb 4e 	. N 
	jr nz,lb7deh		;b7d2	20 0a 	  . 
	cp 0f0h		;b7d4	fe f0 	. . 
	jp z,l992dh		;b7d6	ca 2d 99 	. - . 
	cp 0f1h		;b7d9	fe f1 	. . 
	jp z,la0dfh		;b7db	ca df a0 	. . . 
lb7deh:
	call sub_b9a7h		;b7de	cd a7 b9 	. . . 
	ld hl,lb7c7h		;b7e1	21 c7 b7 	! . . 
	push hl			;b7e4	e5 	. 
	call sub_ba11h		;b7e5	cd 11 ba 	. . . 
	ret nc			;b7e8	d0 	. 
	cp 0feh		;b7e9	fe fe 	. . 
	jr z,lb7f0h		;b7eb	28 03 	( . 
	cp 0f0h		;b7ed	fe f0 	. . 
	ret nc			;b7ef	d0 	. 
lb7f0h:
	cp 020h		;b7f0	fe 20 	.   
	jr nc,lb833h		;b7f2	30 3f 	0 ? 
	cp 01eh		;b7f4	fe 1e 	. . 
	jp nc,sub_9af0h		;b7f6	d2 f0 9a 	. . . 
	cp 01ch		;b7f9	fe 1c 	. . 
	jp nc,sub_9bdfh		;b7fb	d2 df 9b 	. . . 
	cp 00bh		;b7fe	fe 0b 	. . 
	jr z,lb85fh		;b800	28 5d 	( ] 
	cp 00ch		;b802	fe 0c 	. . 
	jr z,lb85fh		;b804	28 59 	( Y 
	cp 006h		;b806	fe 06 	. . 
	jr z,lb86eh		;b808	28 64 	( d 
	ld hl,079dah		;b80a	21 da 79 	! . y 
	bit 1,(hl)		;b80d	cb 4e 	. N 
	ret nz			;b80f	c0 	. 
	cp 015h		;b810	fe 15 	. . 
	ret nc			;b812	d0 	. 
	cp 012h		;b813	fe 12 	. . 
	jr z,lb833h		;b815	28 1c 	( . 
	cp 010h		;b817	fe 10 	. . 
	jr nc,lb859h		;b819	30 3e 	0 > 
	cp 00eh		;b81b	fe 0e 	. . 
	ret nc			;b81d	d0 	. 
	cp 00dh		;b81e	fe 0d 	. . 
	jr z,lb885h		;b820	28 63 	( c 
	cp 008h		;b822	fe 08 	. . 
	jr nc,lb833h		;b824	30 0d 	0 . 
	cp 007h		;b826	fe 07 	. . 
	jp z,sub_a0bbh		;b828	ca bb a0 	. . . 
	cp 005h		;b82b	fe 05 	. . 
	jr c,lb877h		;b82d	38 48 	8 H 
	pop hl			;b82f	e1 	. 
	jp lb995h		;b830	c3 95 b9 	. . . 
lb833h:
	ld hl,079dah		;b833	21 da 79 	! . y 
	bit 2,(hl)		;b836	cb 56 	. V 
	jr nz,lb84bh		;b838	20 11 	  . 
lb83ah:
	bit 1,(hl)		;b83a	cb 4e 	. N 
	ret nz			;b83c	c0 	. 
lb83dh:
	set 5,(hl)		;b83d	cb ee 	. . 
	call sub_b8f4h		;b83f	cd f4 b8 	. . . 
	call sub_b1cah		;b842	cd ca b1 	. . . 
	ld a,007h		;b845	3e 07 	> . 
	ld (07905h),a		;b847	32 05 79 	2 . y 
	ret			;b84a	c9 	. 
lb84bh:
	bit 5,(hl)		;b84b	cb 6e 	. n 
	jr nz,lb83ah		;b84d	20 eb 	  . 
	push af			;b84f	f5 	. 
	call sub_a7f0h		;b850	cd f0 a7 	. . . 
	pop af			;b853	f1 	. 
	ld hl,079dah		;b854	21 da 79 	! . y 
	jr lb83dh		;b857	18 e4 	. . 
lb859h:
	call sub_9935h		;b859	cd 35 99 	. 5 . 
	jp sub_854dh		;b85c	c3 4d 85 	. M . 
lb85fh:
	call sub_9341h		;b85f	cd 41 93 	. A . 
	call sub_a7ddh		;b862	cd dd a7 	. . . 
	ld de,(07920h)		;b865	ed 5b 20 79 	. [   y 
	ld a,03ch		;b869	3e 3c 	> < 
	jp sub_8468h		;b86b	c3 68 84 	. h . 
lb86eh:
	call sub_b9a7h		;b86e	cd a7 b9 	. . . 
	call sub_9351h		;b871	cd 51 93 	. Q . 
	jp sub_b9a7h		;b874	c3 a7 b9 	. . . 
lb877h:
	call sub_b9a7h		;b877	cd a7 b9 	. . . 
	cp 001h		;b87a	fe 01 	. . 
	jp z,l9913h		;b87c	ca 13 99 	. . . 
	call sub_98fah		;b87f	cd fa 98 	. . . 
	jp sub_b9a7h		;b882	c3 a7 b9 	. . . 
lb885h:
	ld hl,079dah		;b885	21 da 79 	! . y 
	bit 5,(hl)		;b888	cb 6e 	. n 
	jr z,lb8cfh		;b88a	28 43 	( C 
	call sub_9dd8h		;b88c	cd d8 9d 	. . . 
	jr c,lb8ebh		;b88f	38 5a 	8 Z 
	or a			;b891	b7 	. 
	ret z			;b892	c8 	. 
	push hl			;b893	e5 	. 
	ld hl,07965h		;b894	21 65 79 	! e y 
	res 2,(hl)		;b897	cb 96 	. . 
	pop hl			;b899	e1 	. 
	push af			;b89a	f5 	. 
	call sub_92feh		;b89b	cd fe 92 	. . . 
	call 0ff1ah		;b89e	cd 1a ff 	. . . 
	pop af			;b8a1	f1 	. 
	nop			;b8a2	00 	. 
	nop			;b8a3	00 	. 
	nop			;b8a4	00 	. 
	nop			;b8a5	00 	. 
	cp 04ch		;b8a6	fe 4c 	. L 
	jr z,lb8c4h		;b8a8	28 1a 	( . 
	cp 052h		;b8aa	fe 52 	. R 
	jr z,lb8d7h		;b8ac	28 29 	( ) 
	jr lb907h		;b8ae	18 57 	. W 
	call 0ff2ch		;b8b0	cd 2c ff 	. , . 
	jr nc,lb8cfh		;b8b3	30 1a 	0 . 
	ld a,(07f34h)		;b8b5	3a 34 7f 	: 4  
	cp 010h		;b8b8	fe 10 	. . 
	ld de,lb963h		;b8ba	11 63 b9 	. c . 
	jr z,lb8c2h		;b8bd	28 03 	( . 
	ld de,lb973h		;b8bf	11 73 b9 	. s . 
lb8c2h:
	jr lb90ah		;b8c2	18 46 	. F 
lb8c4h:
	call 0ff8bh		;b8c4	cd 8b ff 	. . . 
	jr c,lb8d2h		;b8c7	38 09 	8 . 
	ld hl,079dah		;b8c9	21 da 79 	! . y 
	bit 2,(hl)		;b8cc	cb 56 	. V 
	ret nz			;b8ce	c0 	. 
lb8cfh:
	jp sub_a7f0h		;b8cf	c3 f0 a7 	. . . 
lb8d2h:
	ld de,lb97ah		;b8d2	11 7a b9 	. z . 
	jr lb90ah		;b8d5	18 33 	. 3 
lb8d7h:
	call 0ff2fh		;b8d7	cd 2f ff 	. / . 
	jr nc,lb8cfh		;b8da	30 f3 	0 . 
	ld a,(07f34h)		;b8dc	3a 34 7f 	: 4  
	cp 010h		;b8df	fe 10 	. . 
	ld de,lb963h		;b8e1	11 63 b9 	. c . 
	jr z,lb8e9h		;b8e4	28 03 	( . 
	ld de,lb96ah		;b8e6	11 6a b9 	. j . 
lb8e9h:
	jr lb90ah		;b8e9	18 1f 	. . 
lb8ebh:
	ld a,(07f34h)		;b8eb	3a 34 7f 	: 4  
	cp 060h		;b8ee	fe 60 	. ` 
	jr z,lb919h		;b8f0	28 27 	( ' 
	jr lb907h		;b8f2	18 13 	. . 
sub_b8f4h:
	cp 00ah		;b8f4	fe 0a 	. . 
	ret nz			;b8f6	c0 	. 
	push af			;b8f7	f5 	. 
	ld a,(07924h)		;b8f8	3a 24 79 	: $ y 
	cp 008h		;b8fb	fe 08 	. . 
	ld a,007h		;b8fd	3e 07 	> . 
	jr nc,lb902h		;b8ff	30 01 	0 . 
	inc a			;b901	3c 	< 
lb902h:
	ld (07905h),a		;b902	32 05 79 	2 . y 
	pop af			;b905	f1 	. 
	ret			;b906	c9 	. 
lb907h:
	ld de,msgwords_start		;b907	11 4e b9 	. N . 
lb90ah:
	call sub_b921h		;b90a	cd 21 b9 	. ! . 
	call sub_b944h		;b90d	cd 44 b9 	. D . 
lb910h:
	ld hl,07b20h		;b910	21 20 7b 	!   { 
	call sub_a673h		;b913	cd 73 a6 	. s . 
	jp 0ff1ah		;b916	c3 1a ff 	. . . 
lb919h:
	ld de,lb957h		;b919	11 57 b9 	. W . 
	call sub_b921h		;b91c	cd 21 b9 	. ! . 
	jr lb910h		;b91f	18 ef 	. . 
sub_b921h:
	push de			;b921	d5 	. 
	ld bc,00100h		;b922	01 00 01 	. . . 
	ld de,07d00h		;b925	11 00 7d 	. . } 
	ld hl,07c00h		;b928	21 00 7c 	! . | 
	ldir		;b92b	ed b0 	. . 
	pop de			;b92d	d1 	. 
	ld hl,07b20h		;b92e	21 20 7b 	!   { 
	ld b,018h		;b931	06 18 	. . 
lb933h:
	ld (hl),000h		;b933	36 00 	6 . 
	inc hl			;b935	23 	# 
	djnz lb933h		;b936	10 fb 	. . 
	ex de,hl			;b938	eb 	. 
	ld de,07b21h		;b939	11 21 7b 	. ! { 
lb93ch:
	ld a,(hl)			;b93c	7e 	~ 
	inc hl			;b93d	23 	# 
	or a			;b93e	b7 	. 
	ret z			;b93f	c8 	. 
	ld (de),a			;b940	12 	. 
	inc de			;b941	13 	. 
	jr lb93ch		;b942	18 f8 	. . 
sub_b944h:
	inc de			;b944	13 	. 
	ld hl,lb97fh		;b945	21 7f b9 	!  . 
	ld bc,00005h		;b948	01 05 00 	. . . 
	defb 0edh,0b0h,0c9h		;b94b	ed b0 c9 	. . . 

; BLOCK 'msgwords' (start 0xb94e end 0xb984)
msgwords_start:
	defb 04ch		;b94e	4c 	L 
	defb 049h		;b94f	49 	I 
	defb 04eh		;b950	4e 	N 
	defb 045h		;b951	45 	E 
	defb 020h		;b952	20 	  
	defb 04eh		;b953	4e 	N 
	defb 04fh		;b954	4f 	O 
	defb 02eh		;b955	2e 	. 
	defb 000h		;b956	00 	. 
lb957h:
	defb 04dh		;b957	4d 	M 
	defb 045h		;b958	45 	E 
	defb 04dh		;b959	4d 	M 
	defb 04fh		;b95a	4f 	O 
	defb 052h		;b95b	52 	R 
	defb 059h		;b95c	59 	Y 
	defb 020h		;b95d	20 	  
	defb 04fh		;b95e	4f 	O 
	defb 056h		;b95f	56 	V 
	defb 045h		;b960	45 	E 
	defb 052h		;b961	52 	R 
	defb 000h		;b962	00 	. 
lb963h:
	defb 053h		;b963	53 	S 
	defb 059h		;b964	59 	Y 
	defb 04eh		;b965	4e 	N 
	defb 054h		;b966	54 	T 
	defb 041h		;b967	41 	A 
	defb 058h		;b968	58 	X 
	defb 000h		;b969	00 	. 
lb96ah:
	defb 052h		;b96a	52 	R 
	defb 045h		;b96b	45 	E 
	defb 04eh		;b96c	4e 	N 
	defb 055h		;b96d	55 	U 
	defb 04dh		;b96e	4d 	M 
	defb 042h		;b96f	42 	B 
	defb 045h		;b970	45 	E 
	defb 052h		;b971	52 	R 
	defb 000h		;b972	00 	. 
lb973h:
	defb 044h		;b973	44 	D 
	defb 045h		;b974	45 	E 
	defb 04ch		;b975	4c 	L 
	defb 045h		;b976	45 	E 
	defb 054h		;b977	54 	T 
	defb 045h		;b978	45 	E 
	defb 000h		;b979	00 	. 
lb97ah:
	defb 04ch		;b97a	4c 	L 
	defb 049h		;b97b	49 	I 
	defb 053h		;b97c	53 	S 
	defb 054h		;b97d	54 	T 
	defb 000h		;b97e	00 	. 
lb97fh:
	defb 045h		;b97f	45 	E 
	defb 052h		;b980	52 	R 
	defb 052h		;b981	52 	R 
	defb 04fh		;b982	4f 	O 
	defb 052h		;b983	52 	R 
msgwords_end:
	nop			;b984	00 	. 
sub_b985h:
	ld bc,00010h		;b985	01 10 00 	. . . 
	ld de,07b00h		;b988	11 00 7b 	. . { 
	ld hl,079d0h		;b98b	21 d0 79 	! . y 
	ldir		;b98e	ed b0 	. . 
	ld hl,07f30h		;b990	21 30 7f 	! 0  
	jr lb9a3h		;b993	18 0e 	. . 
lb995h:
	ld bc,00010h		;b995	01 10 00 	. . . 
	ld de,079d0h		;b998	11 d0 79 	. . y 
	ld hl,07b00h		;b99b	21 00 7b 	! . { 
	ldir		;b99e	ed b0 	. . 
	ld de,07f30h		;b9a0	11 30 7f 	. 0  
lb9a3h:
	ld c,010h		;b9a3	0e 10 	. . 
	ldir		;b9a5	ed b0 	. . 
sub_b9a7h:
	ld de,(079e1h)		;b9a7	ed 5b e1 79 	. [ . y 
	ld hl,(07973h)		;b9ab	2a 73 79 	* s y 
	ld (079e1h),hl		;b9ae	22 e1 79 	" . y 
	ld (07973h),de		;b9b1	ed 53 73 79 	. S s y 
	ld de,(079e3h)		;b9b5	ed 5b e3 79 	. [ . y 
	ld hl,(07975h)		;b9b9	2a 75 79 	* u y 
	ld (079e3h),hl		;b9bc	22 e3 79 	" . y 
	ld (07975h),de		;b9bf	ed 53 75 79 	. S u y 
	ret			;b9c3	c9 	. 
sub_b9c4h:
	ld hl,(079e1h)		;b9c4	2a e1 79 	* . y 
	inc hl			;b9c7	23 	# 
	ld (07f3ah),hl		;b9c8	22 3a 7f 	" :  
	ld hl,079d9h		;b9cb	21 d9 79 	! . y 
	res 1,(hl)		;b9ce	cb 8e 	. . 
	res 3,(hl)		;b9d0	cb 9e 	. . 
	xor a			;b9d2	af 	. 
	ld (079dah),a		;b9d3	32 da 79 	2 . y 
	ld (07f35h),a		;b9d6	32 35 7f 	2 5  
	ld a,020h		;b9d9	3e 20 	>   
	ld b,060h		;b9db	06 60 	. ` 
	ld de,00000h		;b9dd	11 00 00 	. . . 
	call sub_86b3h		;b9e0	cd b3 86 	. . . 
	ld b,00bh		;b9e3	06 0b 	. . 
	ld de,00000h		;b9e5	11 00 00 	. . . 
	ld hl,textedit_start		;b9e8	21 f5 b9 	! . . 
	call sub_84cdh		;b9eb	cd cd 84 	. . . 
	xor a			;b9ee	af 	. 
	ld (07923h),a		;b9ef	32 23 79 	2 # y 
	jp sub_a7f0h		;b9f2	c3 f0 a7 	. . . 

; BLOCK 'textedit' (start 0xb9f5 end 0xb9ff)
textedit_start:
	defb 054h		;b9f5	54 	T 
	defb 045h		;b9f6	45 	E 
	defb 058h		;b9f7	58 	X 
	defb 054h		;b9f8	54 	T 
	defb 020h		;b9f9	20 	  
	defb 045h		;b9fa	45 	E 
	defb 044h		;b9fb	44 	D 
	defb 049h		;b9fc	49 	I 
	defb 054h		;b9fd	54 	T 
	defb 04fh		;b9fe	4f 	O 
textedit_end:
	ld d,d			;b9ff	52 	R 
lba00h:
	push af			;ba00	f5 	. 
	pop iy		;ba01	fd e1 	. . 
	in a,(019h)		;ba03	db 19 	. . 
	push af			;ba05	f5 	. 
	push iy		;ba06	fd e5 	. . 
	pop af			;ba08	f1 	. 
	out (019h),a		;ba09	d3 19 	. . 
	ldir		;ba0b	ed b0 	. . 
	pop af			;ba0d	f1 	. 
	out (019h),a		;ba0e	d3 19 	. . 
	ret			;ba10	c9 	. 
sub_ba11h:
	ld hl,0796eh		;ba11	21 6e 79 	! n y 
	cp 0feh		;ba14	fe fe 	. . 
	jr nz,lba51h		;ba16	20 39 	  9 
	ld a,(07907h)		;ba18	3a 07 79 	: . y 
	cp 098h		;ba1b	fe 98 	. . 
	jr nc,lba41h		;ba1d	30 22 	0 " 
	cp 095h		;ba1f	fe 95 	. . 
	jr c,lba5fh		;ba21	38 3c 	8 < 
	bit 7,(hl)		;ba23	cb 7e 	. ~ 
	jr z,lba5fh		;ba25	28 38 	( 8 
	sbc a,00bh		;ba27	de 0b 	. . 
lba29h:
	res 7,(hl)		;ba29	cb be 	. . 
	ld (07907h),a		;ba2b	32 07 79 	2 . y 
	ld b,a			;ba2e	47 	G 
	call sub_bee9h		;ba2f	cd e9 be 	. . . 
	ld (07908h),de		;ba32	ed 53 08 79 	. S . y 
	ld a,b			;ba36	78 	x 
	ld (0790ah),a		;ba37	32 0a 79 	2 . y 
	ld a,0feh		;ba3a	3e fe 	> . 
	ld hl,0796eh		;ba3c	21 6e 79 	! n y 
	jr lba62h		;ba3f	18 21 	. ! 
lba41h:
	cp 0a0h		;ba41	fe a0 	. . 
	jr nc,lba5fh		;ba43	30 1a 	0 . 
	cp 09dh		;ba45	fe 9d 	. . 
	jr c,lba5fh		;ba47	38 16 	8 . 
	bit 7,(hl)		;ba49	cb 7e 	. ~ 
	jr z,lba5fh		;ba4b	28 12 	( . 
	sbc a,010h		;ba4d	de 10 	. . 
	jr lba29h		;ba4f	18 d8 	. . 
lba51h:
	cp 0f5h		;ba51	fe f5 	. . 
	jr z,lba59h		;ba53	28 04 	( . 
	cp 0f6h		;ba55	fe f6 	. . 
	jr nz,lba62h		;ba57	20 09 	  . 
lba59h:
	ld a,(hl)			;ba59	7e 	~ 
	xor 080h		;ba5a	ee 80 	. . 
	ld (hl),a			;ba5c	77 	w 
	xor a			;ba5d	af 	. 
	ret			;ba5e	c9 	. 
lba5fh:
	ld a,(07906h)		;ba5f	3a 06 79 	: . y 
lba62h:
	scf			;ba62	37 	7 
	ret			;ba63	c9 	. 
	nop			;ba64	00 	. 
	nop			;ba65	00 	. 
	nop			;ba66	00 	. 
	nop			;ba67	00 	. 
	nop			;ba68	00 	. 
	nop			;ba69	00 	. 
	nop			;ba6a	00 	. 
	nop			;ba6b	00 	. 
	nop			;ba6c	00 	. 
	nop			;ba6d	00 	. 
	nop			;ba6e	00 	. 
	nop			;ba6f	00 	. 
	nop			;ba70	00 	. 
	nop			;ba71	00 	. 
	nop			;ba72	00 	. 
	nop			;ba73	00 	. 
	nop			;ba74	00 	. 
	nop			;ba75	00 	. 
	nop			;ba76	00 	. 
	nop			;ba77	00 	. 
	nop			;ba78	00 	. 
	nop			;ba79	00 	. 
	nop			;ba7a	00 	. 
	nop			;ba7b	00 	. 
	nop			;ba7c	00 	. 
	nop			;ba7d	00 	. 
	nop			;ba7e	00 	. 
	nop			;ba7f	00 	. 
	nop			;ba80	00 	. 
	nop			;ba81	00 	. 
	nop			;ba82	00 	. 
	nop			;ba83	00 	. 
	nop			;ba84	00 	. 
	nop			;ba85	00 	. 
	nop			;ba86	00 	. 
	nop			;ba87	00 	. 
	nop			;ba88	00 	. 
	nop			;ba89	00 	. 
	nop			;ba8a	00 	. 
	nop			;ba8b	00 	. 
	nop			;ba8c	00 	. 
	nop			;ba8d	00 	. 
	nop			;ba8e	00 	. 
	nop			;ba8f	00 	. 
	nop			;ba90	00 	. 
	nop			;ba91	00 	. 
	nop			;ba92	00 	. 
	nop			;ba93	00 	. 
	nop			;ba94	00 	. 
	nop			;ba95	00 	. 
	nop			;ba96	00 	. 
	nop			;ba97	00 	. 
	nop			;ba98	00 	. 
	nop			;ba99	00 	. 
	nop			;ba9a	00 	. 
	nop			;ba9b	00 	. 
	nop			;ba9c	00 	. 
	nop			;ba9d	00 	. 
	nop			;ba9e	00 	. 
	nop			;ba9f	00 	. 
	nop			;baa0	00 	. 
	nop			;baa1	00 	. 
	nop			;baa2	00 	. 
	nop			;baa3	00 	. 
	nop			;baa4	00 	. 
	nop			;baa5	00 	. 
	nop			;baa6	00 	. 
	nop			;baa7	00 	. 
	nop			;baa8	00 	. 
	nop			;baa9	00 	. 
	nop			;baaa	00 	. 
	nop			;baab	00 	. 
	nop			;baac	00 	. 
	nop			;baad	00 	. 
	nop			;baae	00 	. 
	nop			;baaf	00 	. 
	nop			;bab0	00 	. 
	nop			;bab1	00 	. 
	nop			;bab2	00 	. 
	nop			;bab3	00 	. 
	nop			;bab4	00 	. 
	nop			;bab5	00 	. 
	nop			;bab6	00 	. 
	nop			;bab7	00 	. 
	nop			;bab8	00 	. 
	nop			;bab9	00 	. 
	nop			;baba	00 	. 
	nop			;babb	00 	. 
	nop			;babc	00 	. 
	nop			;babd	00 	. 
	nop			;babe	00 	. 
	nop			;babf	00 	. 
	nop			;bac0	00 	. 
	nop			;bac1	00 	. 
	nop			;bac2	00 	. 
	nop			;bac3	00 	. 
	nop			;bac4	00 	. 
	nop			;bac5	00 	. 
	nop			;bac6	00 	. 
	nop			;bac7	00 	. 
	nop			;bac8	00 	. 
	nop			;bac9	00 	. 
	nop			;baca	00 	. 
	nop			;bacb	00 	. 
	nop			;bacc	00 	. 
	nop			;bacd	00 	. 
	nop			;bace	00 	. 
	nop			;bacf	00 	. 
	nop			;bad0	00 	. 
	nop			;bad1	00 	. 
	nop			;bad2	00 	. 
	nop			;bad3	00 	. 
	nop			;bad4	00 	. 
	nop			;bad5	00 	. 
	nop			;bad6	00 	. 
	nop			;bad7	00 	. 
	nop			;bad8	00 	. 
	nop			;bad9	00 	. 
	nop			;bada	00 	. 
	nop			;badb	00 	. 
	nop			;badc	00 	. 
	nop			;badd	00 	. 
	nop			;bade	00 	. 
	nop			;badf	00 	. 
	nop			;bae0	00 	. 
	nop			;bae1	00 	. 
	nop			;bae2	00 	. 
	nop			;bae3	00 	. 
	nop			;bae4	00 	. 
	nop			;bae5	00 	. 
	nop			;bae6	00 	. 
	nop			;bae7	00 	. 
	nop			;bae8	00 	. 
	nop			;bae9	00 	. 
	nop			;baea	00 	. 
	nop			;baeb	00 	. 
	nop			;baec	00 	. 
	nop			;baed	00 	. 
	nop			;baee	00 	. 
	nop			;baef	00 	. 
	nop			;baf0	00 	. 
	nop			;baf1	00 	. 
	nop			;baf2	00 	. 
	nop			;baf3	00 	. 
	nop			;baf4	00 	. 
	nop			;baf5	00 	. 
	nop			;baf6	00 	. 
	nop			;baf7	00 	. 
	nop			;baf8	00 	. 
	nop			;baf9	00 	. 
	nop			;bafa	00 	. 
	nop			;bafb	00 	. 
	nop			;bafc	00 	. 
	nop			;bafd	00 	. 
	nop			;bafe	00 	. 
	nop			;baff	00 	. 
	nop			;bb00	00 	. 
	nop			;bb01	00 	. 
	nop			;bb02	00 	. 
	nop			;bb03	00 	. 
	nop			;bb04	00 	. 
	nop			;bb05	00 	. 
	nop			;bb06	00 	. 
	nop			;bb07	00 	. 
	nop			;bb08	00 	. 
	nop			;bb09	00 	. 
	nop			;bb0a	00 	. 
	nop			;bb0b	00 	. 
	nop			;bb0c	00 	. 
	nop			;bb0d	00 	. 
	nop			;bb0e	00 	. 
	nop			;bb0f	00 	. 
	nop			;bb10	00 	. 
	nop			;bb11	00 	. 
	nop			;bb12	00 	. 
	nop			;bb13	00 	. 
	nop			;bb14	00 	. 
	nop			;bb15	00 	. 
	nop			;bb16	00 	. 
	nop			;bb17	00 	. 
	nop			;bb18	00 	. 
	nop			;bb19	00 	. 
	nop			;bb1a	00 	. 
	nop			;bb1b	00 	. 
	nop			;bb1c	00 	. 
	nop			;bb1d	00 	. 
	nop			;bb1e	00 	. 
	nop			;bb1f	00 	. 
	nop			;bb20	00 	. 
	nop			;bb21	00 	. 
	nop			;bb22	00 	. 
	nop			;bb23	00 	. 
	nop			;bb24	00 	. 
	nop			;bb25	00 	. 
	nop			;bb26	00 	. 
	nop			;bb27	00 	. 
	nop			;bb28	00 	. 
	nop			;bb29	00 	. 
	nop			;bb2a	00 	. 
	nop			;bb2b	00 	. 
	nop			;bb2c	00 	. 
	nop			;bb2d	00 	. 
	nop			;bb2e	00 	. 
	nop			;bb2f	00 	. 
	nop			;bb30	00 	. 
	nop			;bb31	00 	. 
	nop			;bb32	00 	. 
	nop			;bb33	00 	. 
	nop			;bb34	00 	. 
	nop			;bb35	00 	. 
	nop			;bb36	00 	. 
	nop			;bb37	00 	. 
	nop			;bb38	00 	. 
	nop			;bb39	00 	. 
	nop			;bb3a	00 	. 
	nop			;bb3b	00 	. 
	nop			;bb3c	00 	. 
	nop			;bb3d	00 	. 
	nop			;bb3e	00 	. 
	nop			;bb3f	00 	. 
	nop			;bb40	00 	. 
	nop			;bb41	00 	. 
	nop			;bb42	00 	. 
	nop			;bb43	00 	. 
	nop			;bb44	00 	. 
	nop			;bb45	00 	. 
	nop			;bb46	00 	. 
	nop			;bb47	00 	. 
	nop			;bb48	00 	. 
	nop			;bb49	00 	. 
	nop			;bb4a	00 	. 
	nop			;bb4b	00 	. 
	nop			;bb4c	00 	. 
	nop			;bb4d	00 	. 
	nop			;bb4e	00 	. 
	nop			;bb4f	00 	. 
	nop			;bb50	00 	. 
	nop			;bb51	00 	. 
	nop			;bb52	00 	. 
	nop			;bb53	00 	. 
	nop			;bb54	00 	. 
	nop			;bb55	00 	. 
	nop			;bb56	00 	. 
	nop			;bb57	00 	. 
	nop			;bb58	00 	. 
	nop			;bb59	00 	. 
	nop			;bb5a	00 	. 
	nop			;bb5b	00 	. 
	nop			;bb5c	00 	. 
	nop			;bb5d	00 	. 
	nop			;bb5e	00 	. 
	nop			;bb5f	00 	. 
	nop			;bb60	00 	. 
	nop			;bb61	00 	. 
	nop			;bb62	00 	. 
	nop			;bb63	00 	. 
	nop			;bb64	00 	. 
	nop			;bb65	00 	. 
	nop			;bb66	00 	. 
	nop			;bb67	00 	. 
	nop			;bb68	00 	. 
	nop			;bb69	00 	. 
	nop			;bb6a	00 	. 
	nop			;bb6b	00 	. 
	nop			;bb6c	00 	. 
	nop			;bb6d	00 	. 
	nop			;bb6e	00 	. 
	nop			;bb6f	00 	. 
	nop			;bb70	00 	. 
	nop			;bb71	00 	. 
	nop			;bb72	00 	. 
	nop			;bb73	00 	. 
	nop			;bb74	00 	. 
	nop			;bb75	00 	. 
	nop			;bb76	00 	. 
	nop			;bb77	00 	. 
	nop			;bb78	00 	. 
	nop			;bb79	00 	. 
	nop			;bb7a	00 	. 
	nop			;bb7b	00 	. 
	nop			;bb7c	00 	. 
	nop			;bb7d	00 	. 
	nop			;bb7e	00 	. 
	nop			;bb7f	00 	. 
	nop			;bb80	00 	. 
	nop			;bb81	00 	. 
	nop			;bb82	00 	. 
	nop			;bb83	00 	. 
	nop			;bb84	00 	. 
	nop			;bb85	00 	. 
	nop			;bb86	00 	. 
	nop			;bb87	00 	. 
	nop			;bb88	00 	. 
	nop			;bb89	00 	. 
	nop			;bb8a	00 	. 
	nop			;bb8b	00 	. 
	nop			;bb8c	00 	. 
	nop			;bb8d	00 	. 
	nop			;bb8e	00 	. 
	nop			;bb8f	00 	. 
	nop			;bb90	00 	. 
	nop			;bb91	00 	. 
	nop			;bb92	00 	. 
	nop			;bb93	00 	. 
	nop			;bb94	00 	. 
	nop			;bb95	00 	. 
	nop			;bb96	00 	. 
	nop			;bb97	00 	. 
	nop			;bb98	00 	. 
	nop			;bb99	00 	. 
	nop			;bb9a	00 	. 
	nop			;bb9b	00 	. 
	nop			;bb9c	00 	. 
	nop			;bb9d	00 	. 
	nop			;bb9e	00 	. 
	nop			;bb9f	00 	. 
	nop			;bba0	00 	. 
	nop			;bba1	00 	. 
	nop			;bba2	00 	. 
	nop			;bba3	00 	. 
	nop			;bba4	00 	. 
	nop			;bba5	00 	. 
	nop			;bba6	00 	. 
	nop			;bba7	00 	. 
	nop			;bba8	00 	. 
	nop			;bba9	00 	. 
	nop			;bbaa	00 	. 
	nop			;bbab	00 	. 
	nop			;bbac	00 	. 
	nop			;bbad	00 	. 
	nop			;bbae	00 	. 
	nop			;bbaf	00 	. 
	nop			;bbb0	00 	. 
	nop			;bbb1	00 	. 
	nop			;bbb2	00 	. 
	nop			;bbb3	00 	. 
	nop			;bbb4	00 	. 
	nop			;bbb5	00 	. 
	nop			;bbb6	00 	. 
	nop			;bbb7	00 	. 
	nop			;bbb8	00 	. 
	nop			;bbb9	00 	. 
	nop			;bbba	00 	. 
	nop			;bbbb	00 	. 
	nop			;bbbc	00 	. 
	nop			;bbbd	00 	. 
	nop			;bbbe	00 	. 
	nop			;bbbf	00 	. 
	nop			;bbc0	00 	. 
	nop			;bbc1	00 	. 
	nop			;bbc2	00 	. 
	nop			;bbc3	00 	. 
	nop			;bbc4	00 	. 
	nop			;bbc5	00 	. 
	nop			;bbc6	00 	. 
	nop			;bbc7	00 	. 
	nop			;bbc8	00 	. 
	nop			;bbc9	00 	. 
	nop			;bbca	00 	. 
	nop			;bbcb	00 	. 
	nop			;bbcc	00 	. 
	nop			;bbcd	00 	. 
	nop			;bbce	00 	. 
	nop			;bbcf	00 	. 
	nop			;bbd0	00 	. 
	nop			;bbd1	00 	. 
	nop			;bbd2	00 	. 
	nop			;bbd3	00 	. 
	nop			;bbd4	00 	. 
	nop			;bbd5	00 	. 
	nop			;bbd6	00 	. 
	nop			;bbd7	00 	. 
	nop			;bbd8	00 	. 
	nop			;bbd9	00 	. 
	nop			;bbda	00 	. 
	nop			;bbdb	00 	. 
	nop			;bbdc	00 	. 
	nop			;bbdd	00 	. 
	nop			;bbde	00 	. 
	nop			;bbdf	00 	. 
	nop			;bbe0	00 	. 
	nop			;bbe1	00 	. 
	nop			;bbe2	00 	. 
	nop			;bbe3	00 	. 
	nop			;bbe4	00 	. 
	nop			;bbe5	00 	. 
	nop			;bbe6	00 	. 
	nop			;bbe7	00 	. 
	nop			;bbe8	00 	. 
	nop			;bbe9	00 	. 
	nop			;bbea	00 	. 
	nop			;bbeb	00 	. 
	nop			;bbec	00 	. 
	nop			;bbed	00 	. 
	nop			;bbee	00 	. 
	nop			;bbef	00 	. 
	nop			;bbf0	00 	. 
	nop			;bbf1	00 	. 
	nop			;bbf2	00 	. 
	nop			;bbf3	00 	. 
	nop			;bbf4	00 	. 
	nop			;bbf5	00 	. 
	nop			;bbf6	00 	. 
	nop			;bbf7	00 	. 
	nop			;bbf8	00 	. 
	nop			;bbf9	00 	. 
	nop			;bbfa	00 	. 
	nop			;bbfb	00 	. 
	nop			;bbfc	00 	. 
	nop			;bbfd	00 	. 
	nop			;bbfe	00 	. 
	nop			;bbff	00 	. 
	nop			;bc00	00 	. 
	nop			;bc01	00 	. 
	nop			;bc02	00 	. 
	nop			;bc03	00 	. 
	nop			;bc04	00 	. 
	nop			;bc05	00 	. 
	nop			;bc06	00 	. 
	nop			;bc07	00 	. 
	nop			;bc08	00 	. 
	nop			;bc09	00 	. 
	nop			;bc0a	00 	. 
	nop			;bc0b	00 	. 
	nop			;bc0c	00 	. 
	nop			;bc0d	00 	. 
	nop			;bc0e	00 	. 
	nop			;bc0f	00 	. 
	nop			;bc10	00 	. 
	nop			;bc11	00 	. 
	nop			;bc12	00 	. 
	nop			;bc13	00 	. 
	nop			;bc14	00 	. 
	nop			;bc15	00 	. 
	nop			;bc16	00 	. 
	nop			;bc17	00 	. 
	nop			;bc18	00 	. 
	nop			;bc19	00 	. 
	nop			;bc1a	00 	. 
	nop			;bc1b	00 	. 
	nop			;bc1c	00 	. 
	nop			;bc1d	00 	. 
	nop			;bc1e	00 	. 
	nop			;bc1f	00 	. 
	nop			;bc20	00 	. 
	nop			;bc21	00 	. 
	nop			;bc22	00 	. 
	nop			;bc23	00 	. 
	nop			;bc24	00 	. 
	nop			;bc25	00 	. 
	nop			;bc26	00 	. 
	nop			;bc27	00 	. 
	nop			;bc28	00 	. 
	nop			;bc29	00 	. 
	nop			;bc2a	00 	. 
	nop			;bc2b	00 	. 
	nop			;bc2c	00 	. 
	nop			;bc2d	00 	. 
	nop			;bc2e	00 	. 
	nop			;bc2f	00 	. 
	nop			;bc30	00 	. 
	nop			;bc31	00 	. 
	nop			;bc32	00 	. 
	nop			;bc33	00 	. 
	nop			;bc34	00 	. 
	nop			;bc35	00 	. 
	nop			;bc36	00 	. 
	nop			;bc37	00 	. 
	nop			;bc38	00 	. 
	nop			;bc39	00 	. 
	nop			;bc3a	00 	. 
	nop			;bc3b	00 	. 
	nop			;bc3c	00 	. 
	nop			;bc3d	00 	. 
	nop			;bc3e	00 	. 
	nop			;bc3f	00 	. 
	nop			;bc40	00 	. 
	nop			;bc41	00 	. 
	nop			;bc42	00 	. 
	nop			;bc43	00 	. 
	nop			;bc44	00 	. 
	nop			;bc45	00 	. 
	nop			;bc46	00 	. 
	nop			;bc47	00 	. 
	nop			;bc48	00 	. 
	nop			;bc49	00 	. 
	nop			;bc4a	00 	. 
	nop			;bc4b	00 	. 
	nop			;bc4c	00 	. 
	nop			;bc4d	00 	. 
	nop			;bc4e	00 	. 
	call sub_9249h		;bc4f	cd 49 92 	. I . 
	ld (bc),a			;bc52	02 	. 
	rst 10h			;bc53	d7 	. 
	cp 0cdh		;bc54	fe cd 	. . 
	ld c,c			;bc56	49 	I 
	sub d			;bc57	92 	. 
	ld (bc),a			;bc58	02 	. 
	djnz $+1		;bc59	10 ff 	. . 
	call sub_9249h		;bc5b	cd 49 92 	. I . 
	ld (bc),a			;bc5e	02 	. 
	ld sp,0cdffh		;bc5f	31 ff cd 	1 . . 
	ld c,c			;bc62	49 	I 
	sub d			;bc63	92 	. 
	ld (bc),a			;bc64	02 	. 
	inc (hl)			;bc65	34 	4 
	rst 38h			;bc66	ff 	. 
	call sub_9249h		;bc67	cd 49 92 	. I . 
	ld (bc),a			;bc6a	02 	. 
	ld a,(0cdffh)		;bc6b	3a ff cd 	: . . 
	ld c,c			;bc6e	49 	I 
	sub d			;bc6f	92 	. 
	dec b			;bc70	05 	. 
	jp m,0cdffh		;bc71	fa ff cd 	. . . 
	ld c,c			;bc74	49 	I 
	sub d			;bc75	92 	. 
	ld (bc),a			;bc76	02 	. 
	ld d,l			;bc77	55 	U 
	rst 38h			;bc78	ff 	. 
	call sub_9249h		;bc79	cd 49 92 	. I . 
	ld (bc),a			;bc7c	02 	. 
	ld bc,0cdffh		;bc7d	01 ff cd 	. . . 
	ld c,c			;bc80	49 	I 
	sub d			;bc81	92 	. 
	ld (bc),a			;bc82	02 	. 
	inc b			;bc83	04 	. 
	rst 38h			;bc84	ff 	. 
	call sub_9249h		;bc85	cd 49 92 	. I . 
	ld (bc),a			;bc88	02 	. 
	rlca			;bc89	07 	. 
	rst 38h			;bc8a	ff 	. 
	call sub_9249h		;bc8b	cd 49 92 	. I . 
	ld (bc),a			;bc8e	02 	. 
	ld a,(bc)			;bc8f	0a 	. 
	rst 38h			;bc90	ff 	. 
	jp sub_ba11h		;bc91	c3 11 ba 	. . . 
	call sub_9249h		;bc94	cd 49 92 	. I . 
	inc b			;bc97	04 	. 
	pop de			;bc98	d1 	. 
	rst 38h			;bc99	ff 	. 
	call sub_9249h		;bc9a	cd 49 92 	. I . 
	ld bc,0ff17h		;bc9d	01 17 ff 	. . . 
	jp lba00h		;bca0	c3 00 ba 	. . . 
	call sub_9249h		;bca3	cd 49 92 	. I . 
	inc b			;bca6	04 	. 
	xor 0ffh		;bca7	ee ff 	. . 
	call sub_9441h		;bca9	cd 41 94 	. A . 
	call l992dh		;bcac	cd 2d 99 	. - . 
	call la0dfh		;bcaf	cd df a0 	. . . 
	call sub_9249h		;bcb2	cd 49 92 	. I . 
	ld (bc),a			;bcb5	02 	. 
	ret m			;bcb6	f8 	. 
	cp 0c3h		;bcb7	fe c3 	. . 
	cpl			;bcb9	2f 	/ 
	sub h			;bcba	94 	. 
	jp l9439h		;bcbb	c3 39 94 	. 9 . 
	call sub_9249h		;bcbe	cd 49 92 	. I . 
	inc b			;bcc1	04 	. 
	set 7,a		;bcc2	cb ff 	. . 
	call sub_9249h		;bcc4	cd 49 92 	. I . 
	inc bc			;bcc7	03 	. 
	cp b			;bcc8	b8 	. 
	rst 38h			;bcc9	ff 	. 
	call sub_9249h		;bcca	cd 49 92 	. I . 
	inc bc			;bccd	03 	. 
	cp e			;bcce	bb 	. 
	rst 38h			;bccf	ff 	. 
	call sub_9249h		;bcd0	cd 49 92 	. I . 
	inc b			;bcd3	04 	. 
	adc a,0ffh		;bcd4	ce ff 	. . 
	jp l8d04h		;bcd6	c3 04 8d 	. . . 
	jp sub_a4fch		;bcd9	c3 fc a4 	. . . 
	jp sub_9c1ah		;bcdc	c3 1a 9c 	. . . 
	jp sub_911dh		;bcdf	c3 1d 91 	. . . 
	jp sub_8fb6h		;bce2	c3 b6 8f 	. . . 
	jp sub_8fbah		;bce5	c3 ba 8f 	. . . 
	jp sub_8db9h		;bce8	c3 b9 8d 	. . . 
	jp sub_8dd7h		;bceb	c3 d7 8d 	. . . 
	jp l9211h		;bcee	c3 11 92 	. . . 
	call sub_9249h		;bcf1	cd 49 92 	. I . 
	inc bc			;bcf4	03 	. 
	cp (hl)			;bcf5	be 	. 
	rst 38h			;bcf6	ff 	. 
	call sub_9249h		;bcf7	cd 49 92 	. I . 
	inc bc			;bcfa	03 	. 
	pop bc			;bcfb	c1 	. 
	rst 38h			;bcfc	ff 	. 
	jp sub_879fh		;bcfd	c3 9f 87 	. . . 
	jp sub_8620h		;bd00	c3 20 86 	.   . 
	call sub_9249h		;bd03	cd 49 92 	. I . 
	inc bc			;bd06	03 	. 
	out (0ffh),a		;bd07	d3 ff 	. . 
	call sub_9249h		;bd09	cd 49 92 	. I . 
	inc bc			;bd0c	03 	. 
	sub 0ffh		;bd0d	d6 ff 	. . 
	call sub_9249h		;bd0f	cd 49 92 	. I . 
	inc bc			;bd12	03 	. 
	exx			;bd13	d9 	. 
	rst 38h			;bd14	ff 	. 
	jp l8e9eh		;bd15	c3 9e 8e 	. . . 
	jp l8de3h		;bd18	c3 e3 8d 	. . . 
	call sub_9249h		;bd1b	cd 49 92 	. I . 
	ld bc,0ff37h		;bd1e	01 37 ff 	. 7 . 
	call sub_9249h		;bd21	cd 49 92 	. I . 
	ld bc,0ff3ah		;bd24	01 3a ff 	. : . 
	call sub_9249h		;bd27	cd 49 92 	. I . 
	ld bc,0ff3dh		;bd2a	01 3d ff 	. = . 
	call sub_9249h		;bd2d	cd 49 92 	. I . 
	ld bc,sub_9351h		;bd30	01 51 93 	. Q . 
	jp sub_9341h		;bd33	c3 41 93 	. A . 
	jp l8d23h		;bd36	c3 23 8d 	. # . 
	jp sub_927fh		;bd39	c3 7f 92 	.  . 
	call sub_9249h		;bd3c	cd 49 92 	. I . 
	inc b			;bd3f	04 	. 
	defb 0fdh,0ffh,0cdh	;illegal sequence		;bd40	fd ff cd 	. . . 
	ld c,c			;bd43	49 	I 
	sub d			;bd44	92 	. 
	ld (bc),a			;bd45	02 	. 
	cp 0feh		;bd46	fe fe 	. . 
	jp l9913h		;bd48	c3 13 99 	. . . 
	call sub_9249h		;bd4b	cd 49 92 	. I . 
	ld bc,0ff40h		;bd4e	01 40 ff 	. @ . 
	call sub_9249h		;bd51	cd 49 92 	. I . 
	ld bc,0ff43h		;bd54	01 43 ff 	. C . 
	jp l8bfdh		;bd57	c3 fd 8b 	. . . 
	call sub_9249h		;bd5a	cd 49 92 	. I . 
	ld (bc),a			;bd5d	02 	. 
	inc e			;bd5e	1c 	. 
	rst 38h			;bd5f	ff 	. 
	call sub_9249h		;bd60	cd 49 92 	. I . 
	inc b			;bd63	04 	. 
	pop af			;bd64	f1 	. 
	rst 38h			;bd65	ff 	. 
	jp sub_ac8ch		;bd66	c3 8c ac 	. . . 
	call sub_9249h		;bd69	cd 49 92 	. I . 
	inc bc			;bd6c	03 	. 
	rst 18h			;bd6d	df 	. 
	rst 38h			;bd6e	ff 	. 
	call sub_9249h		;bd6f	cd 49 92 	. I . 
	ld bc,0ff4ch		;bd72	01 4c ff 	. L . 
	call sub_9249h		;bd75	cd 49 92 	. I . 
	ld bc,0ff4fh		;bd78	01 4f ff 	. O . 
	call sub_9249h		;bd7b	cd 49 92 	. I . 
	ld bc,0ff9ah		;bd7e	01 9a ff 	. . . 
	call sub_9249h		;bd81	cd 49 92 	. I . 
	ld bc,0ff52h		;bd84	01 52 ff 	. R . 
	call sub_9249h		;bd87	cd 49 92 	. I . 
	ld bc,0ff55h		;bd8a	01 55 ff 	. U . 
	call sub_9249h		;bd8d	cd 49 92 	. I . 
	ld bc,0ff58h		;bd90	01 58 ff 	. X . 
	call sub_9249h		;bd93	cd 49 92 	. I . 
	ld bc,0ff5bh		;bd96	01 5b ff 	. [ . 
	call sub_9249h		;bd99	cd 49 92 	. I . 
	ld bc,0ff5eh		;bd9c	01 5e ff 	. ^ . 
	call sub_9249h		;bd9f	cd 49 92 	. I . 
	ld bc,0ff61h		;bda2	01 61 ff 	. a . 
	call sub_9249h		;bda5	cd 49 92 	. I . 
	ld bc,0ff64h		;bda8	01 64 ff 	. d . 
	call sub_9249h		;bdab	cd 49 92 	. I . 
	ld (bc),a			;bdae	02 	. 
	ld e,(hl)			;bdaf	5e 	^ 
	rst 38h			;bdb0	ff 	. 
	call sub_9249h		;bdb1	cd 49 92 	. I . 
	inc b			;bdb4	04 	. 
	exx			;bdb5	d9 	. 
	rst 38h			;bdb6	ff 	. 
	call sub_9249h		;bdb7	cd 49 92 	. I . 
	inc b			;bdba	04 	. 
	call c,0cdffh		;bdbb	dc ff cd 	. . . 
	ld c,c			;bdbe	49 	I 
	sub d			;bdbf	92 	. 
	inc b			;bdc0	04 	. 
	jp m,0cdffh		;bdc1	fa ff cd 	. . . 
	ld c,c			;bdc4	49 	I 
	sub d			;bdc5	92 	. 
	inc b			;bdc6	04 	. 
	rst 18h			;bdc7	df 	. 
	rst 38h			;bdc8	ff 	. 
	call sub_9249h		;bdc9	cd 49 92 	. I . 
	inc b			;bdcc	04 	. 
	jp po,0cdffh		;bdcd	e2 ff cd 	. . . 
	ld c,c			;bdd0	49 	I 
	sub d			;bdd1	92 	. 
	inc b			;bdd2	04 	. 
	call p,0cdffh		;bdd3	f4 ff cd 	. . . 
	ld c,c			;bdd6	49 	I 
	sub d			;bdd7	92 	. 
	inc b			;bdd8	04 	. 
	push hl			;bdd9	e5 	. 
	rst 38h			;bdda	ff 	. 
	call sub_9249h		;bddb	cd 49 92 	. I . 
	inc b			;bdde	04 	. 
	ret pe			;bddf	e8 	. 
	rst 38h			;bde0	ff 	. 
sub_bde1h:
	call sub_9249h		;bde1	cd 49 92 	. I . 
	ld bc,0ffd0h		;bde4	01 d0 ff 	. . . 
	jp sub_a796h		;bde7	c3 96 a7 	. . . 
	jp sub_a7a9h		;bdea	c3 a9 a7 	. . . 
	jp sub_adc1h		;bded	c3 c1 ad 	. . . 
	jp sub_9328h		;bdf0	c3 28 93 	. ( . 
	jp la7d0h		;bdf3	c3 d0 a7 	. . . 
	jp sub_acafh		;bdf6	c3 af ac 	. . . 
	call sub_9249h		;bdf9	cd 49 92 	. I . 
	inc bc			;bdfc	03 	. 
	xor 0ffh		;bdfd	ee ff 	. . 
	call sub_9249h		;bdff	cd 49 92 	. I . 
	ld bc,0ff8eh		;be02	01 8e ff 	. . . 
	jp sub_ae71h		;be05	c3 71 ae 	. q . 
	jp errorin_end+1		;be08	c3 5b a6 	. [ . 
	call sub_9249h		;be0b	cd 49 92 	. I . 
	ld bc,0ff20h		;be0e	01 20 ff 	.   . 
	call sub_9249h		;be11	cd 49 92 	. I . 
	ld bc,0ff1dh		;be14	01 1d ff 	. . . 
	call sub_9249h		;be17	cd 49 92 	. I . 
	ld (bc),a			;be1a	02 	. 
	scf			;be1b	37 	7 
	xor c			;be1c	a9 	. 
	call sub_9249h		;be1d	cd 49 92 	. I . 
	ld bc,lb7c1h		;be20	01 c1 b7 	. . . 
	jp l9415h		;be23	c3 15 94 	. . . 
	jp sub_ac3bh		;be26	c3 3b ac 	. ; . 
	jp lae91h		;be29	c3 91 ae 	. . . 
	jp sub_98fah		;be2c	c3 fa 98 	. . . 
	jp l941fh		;be2f	c3 1f 94 	. . . 
sub_be32h:
	call sub_9249h		;be32	cd 49 92 	. I . 
	ld bc,l934ah		;be35	01 4a 93 	. J . 
	jp sub_a7f4h		;be38	c3 f4 a7 	. . . 
	call sub_9249h		;be3b	cd 49 92 	. I . 
	ld (bc),a			;be3e	02 	. 
	jr z,$+1		;be3f	28 ff 	( . 
	jp sub_9333h		;be41	c3 33 93 	. 3 . 
	jp sub_92feh		;be44	c3 fe 92 	. . . 
	jp sub_a752h		;be47	c3 52 a7 	. R . 
	jp sub_a72eh		;be4a	c3 2e a7 	. . . 
	call sub_9249h		;be4d	cd 49 92 	. I . 
	ld (bc),a			;be50	02 	. 
	dec hl			;be51	2b 	+ 
	rst 38h			;be52	ff 	. 
	jp sub_8881h		;be53	c3 81 88 	. . . 
	jp sub_8c1fh		;be56	c3 1f 8c 	. . . 
	jp sub_b02eh		;be59	c3 2e b0 	. . . 
	jp sub_9935h		;be5c	c3 35 99 	. 5 . 
	jp l843ah		;be5f	c3 3a 84 	. : . 
	jp sub_8468h		;be62	c3 68 84 	. h . 
	jp sub_85b7h		;be65	c3 b7 85 	. . . 
	jp sub_a85bh		;be68	c3 5b a8 	. [ . 
	jp sub_b3c2h		;be6b	c3 c2 b3 	. . . 
	call sub_9249h		;be6e	cd 49 92 	. I . 
	ld (bc),a			;be71	02 	. 
	ld l,0ffh		;be72	2e ff 	. . 
	call sub_9249h		;be74	cd 49 92 	. I . 
	ld bc,sub_a0bbh		;be77	01 bb a0 	. . . 
	call sub_9249h		;be7a	cd 49 92 	. I . 
	ld (bc),a			;be7d	02 	. 
	adc a,b			;be7e	88 	. 
	rst 38h			;be7f	ff 	. 
	call sub_9249h		;be80	cd 49 92 	. I . 
	ld bc,0ffe5h		;be83	01 e5 ff 	. . . 
	call sub_9249h		;be86	cd 49 92 	. I . 
	ld bc,0ff9dh		;be89	01 9d ff 	. . . 
	call sub_9249h		;be8c	cd 49 92 	. I . 
	ld bc,0ffebh		;be8f	01 eb ff 	. . . 
	jp l8ccdh		;be92	c3 cd 8c 	. . . 
	call sub_9249h		;be95	cd 49 92 	. I . 
	ld (bc),a			;be98	02 	. 
	adc a,e			;be99	8b 	. 
	rst 38h			;be9a	ff 	. 
	call sub_9249h		;be9b	cd 49 92 	. I . 
	ld (bc),a			;be9e	02 	. 
	adc a,(hl)			;be9f	8e 	. 
	rst 38h			;bea0	ff 	. 
	call sub_9249h		;bea1	cd 49 92 	. I . 
	ld (bc),a			;bea4	02 	. 
	sub c			;bea5	91 	. 
	rst 38h			;bea6	ff 	. 
	call sub_9249h		;bea7	cd 49 92 	. I . 
	ld (bc),a			;beaa	02 	. 
	dec h			;beab	25 	% 
	rst 38h			;beac	ff 	. 
	call sub_9249h		;bead	cd 49 92 	. I . 
	ld bc,0ffeeh		;beb0	01 ee ff 	. . . 
	call sub_9249h		;beb3	cd 49 92 	. I . 
	ld bc,0fff1h		;beb6	01 f1 ff 	. . . 
	call sub_9249h		;beb9	cd 49 92 	. I . 
	ld (bc),a			;bebc	02 	. 
	sub a			;bebd	97 	. 
	rst 38h			;bebe	ff 	. 
	call sub_9249h		;bebf	cd 49 92 	. I . 
	ld (bc),a			;bec2	02 	. 
	sbc a,d			;bec3	9a 	. 
	rst 38h			;bec4	ff 	. 
	call sub_9249h		;bec5	cd 49 92 	. I . 
	ld (bc),a			;bec8	02 	. 
	sbc a,l			;bec9	9d 	. 
	rst 38h			;beca	ff 	. 
	call sub_9249h		;becb	cd 49 92 	. I . 
	ld (bc),a			;bece	02 	. 
	and b			;becf	a0 	. 
	rst 38h			;bed0	ff 	. 
	call sub_9249h		;bed1	cd 49 92 	. I . 
	ld (bc),a			;bed4	02 	. 
	and e			;bed5	a3 	. 
	rst 38h			;bed6	ff 	. 
	call sub_9249h		;bed7	cd 49 92 	. I . 
	ld (bc),a			;beda	02 	. 
	and (hl)			;bedb	a6 	. 
	rst 38h			;bedc	ff 	. 
	call sub_9249h		;bedd	cd 49 92 	. I . 
	ld (bc),a			;bee0	02 	. 
	xor c			;bee1	a9 	. 
	rst 38h			;bee2	ff 	. 
	call sub_9249h		;bee3	cd 49 92 	. I . 
	ld bc,0fff4h		;bee6	01 f4 ff 	. . . 
sub_bee9h:
	call sub_9249h		;bee9	cd 49 92 	. I . 
	ld bc,0fff7h		;beec	01 f7 ff 	. . . 
	call sub_9249h		;beef	cd 49 92 	. I . 
	ld (bc),a			;bef2	02 	. 
	xor h			;bef3	ac 	. 
	rst 38h			;bef4	ff 	. 
	call sub_9249h		;bef5	cd 49 92 	. I . 
	ld (bc),a			;bef8	02 	. 
	add a,l			;bef9	85 	. 
	rst 38h			;befa	ff 	. 
	call sub_9249h		;befb	cd 49 92 	. I . 
	ld (bc),a			;befe	02 	. 
	xor a			;beff	af 	. 
	rst 38h			;bf00	ff 	. 
	call sub_9249h		;bf01	cd 49 92 	. I . 
	ld (bc),a			;bf04	02 	. 
	or d			;bf05	b2 	. 
	rst 38h			;bf06	ff 	. 
	call sub_9249h		;bf07	cd 49 92 	. I . 
	ld (bc),a			;bf0a	02 	. 
	or l			;bf0b	b5 	. 
	rst 38h			;bf0c	ff 	. 
	call sub_9249h		;bf0d	cd 49 92 	. I . 
	ld (bc),a			;bf10	02 	. 
	cp b			;bf11	b8 	. 
	rst 38h			;bf12	ff 	. 
	call sub_9249h		;bf13	cd 49 92 	. I . 
	ld (bc),a			;bf16	02 	. 
	cp e			;bf17	bb 	. 
	rst 38h			;bf18	ff 	. 
	call sub_9249h		;bf19	cd 49 92 	. I . 
	ld (bc),a			;bf1c	02 	. 
	cp (hl)			;bf1d	be 	. 
	rst 38h			;bf1e	ff 	. 
	call sub_9249h		;bf1f	cd 49 92 	. I . 
	ld (bc),a			;bf22	02 	. 
	call nz,0cdffh		;bf23	c4 ff cd 	. . . 
	ld c,c			;bf26	49 	I 
	sub d			;bf27	92 	. 
	ld (bc),a			;bf28	02 	. 
	pop bc			;bf29	c1 	. 
	rst 38h			;bf2a	ff 	. 
	call sub_9249h		;bf2b	cd 49 92 	. I . 
	ld (bc),a			;bf2e	02 	. 
	ld a,h			;bf2f	7c 	| 
	rst 38h			;bf30	ff 	. 
	call sub_9249h		;bf31	cd 49 92 	. I . 
	ld (bc),a			;bf34	02 	. 
	jp z,0cdffh		;bf35	ca ff cd 	. . . 
	ld c,c			;bf38	49 	I 
	sub d			;bf39	92 	. 
	ld (bc),a			;bf3a	02 	. 
	call 0cdffh		;bf3b	cd ff cd 	. . . 
	ld c,c			;bf3e	49 	I 
	sub d			;bf3f	92 	. 
	ld (bc),a			;bf40	02 	. 
	ret nc			;bf41	d0 	. 
	rst 38h			;bf42	ff 	. 
	call sub_9249h		;bf43	cd 49 92 	. I . 
	ld (bc),a			;bf46	02 	. 
	out (0ffh),a		;bf47	d3 ff 	. . 
	call sub_9249h		;bf49	cd 49 92 	. I . 
	ld (bc),a			;bf4c	02 	. 
	sub 0ffh		;bf4d	d6 ff 	. . 
	call sub_9249h		;bf4f	cd 49 92 	. I . 
	ld (bc),a			;bf52	02 	. 
	exx			;bf53	d9 	. 
	rst 38h			;bf54	ff 	. 
	call sub_9249h		;bf55	cd 49 92 	. I . 
	ld (bc),a			;bf58	02 	. 
	call c,0cdffh		;bf59	dc ff cd 	. . . 
	ld c,c			;bf5c	49 	I 
	sub d			;bf5d	92 	. 
	ld (bc),a			;bf5e	02 	. 
	rst 18h			;bf5f	df 	. 
	rst 38h			;bf60	ff 	. 
	call sub_9249h		;bf61	cd 49 92 	. I . 
	ld (bc),a			;bf64	02 	. 
	jp po,0cdffh		;bf65	e2 ff cd 	. . . 
	ld c,c			;bf68	49 	I 
	sub d			;bf69	92 	. 
	ld (bc),a			;bf6a	02 	. 
	push hl			;bf6b	e5 	. 
	rst 38h			;bf6c	ff 	. 
	call sub_9249h		;bf6d	cd 49 92 	. I . 
	ld (bc),a			;bf70	02 	. 
	ret pe			;bf71	e8 	. 
	rst 38h			;bf72	ff 	. 
	call sub_9249h		;bf73	cd 49 92 	. I . 
	ld (bc),a			;bf76	02 	. 
	ex de,hl			;bf77	eb 	. 
	rst 38h			;bf78	ff 	. 
	call sub_9249h		;bf79	cd 49 92 	. I . 
	ld (bc),a			;bf7c	02 	. 
	xor 0ffh		;bf7d	ee ff 	. . 
	call sub_9249h		;bf7f	cd 49 92 	. I . 
	ld (bc),a			;bf82	02 	. 
	pop af			;bf83	f1 	. 
	rst 38h			;bf84	ff 	. 
	call sub_9249h		;bf85	cd 49 92 	. I . 
	ld (bc),a			;bf88	02 	. 
	call p,0cdffh		;bf89	f4 ff cd 	. . . 
	ld c,c			;bf8c	49 	I 
	sub d			;bf8d	92 	. 
	ld (bc),a			;bf8e	02 	. 
	rst 30h			;bf8f	f7 	. 
	rst 38h			;bf90	ff 	. 
	call sub_9249h		;bf91	cd 49 92 	. I . 
	ld (bc),a			;bf94	02 	. 
	jp m,0cdffh		;bf95	fa ff cd 	. . . 
	ld c,c			;bf98	49 	I 
	sub d			;bf99	92 	. 
	inc bc			;bf9a	03 	. 
	pop af			;bf9b	f1 	. 
	rst 38h			;bf9c	ff 	. 
	call sub_9249h		;bf9d	cd 49 92 	. I . 
	inc bc			;bfa0	03 	. 
	call p,0c3ffh		;bfa1	f4 ff c3 	. . . 
	adc a,(hl)			;bfa4	8e 	. 
	adc a,(hl)			;bfa5	8e 	. 
	jp sub_8d49h		;bfa6	c3 49 8d 	. I . 
	jp l8e76h		;bfa9	c3 76 8e 	. v . 
	jp sub_8e50h		;bfac	c3 50 8e 	. P . 
	jp sub_8f9ch		;bfaf	c3 9c 8f 	. . . 
	jp l8e94h		;bfb2	c3 94 8e 	. . . 
	jp sub_8d3ch		;bfb5	c3 3c 8d 	. < . 
	jp l9447h		;bfb8	c3 47 94 	. G . 
	call sub_9249h		;bfbb	cd 49 92 	. I . 
	ld (bc),a			;bfbe	02 	. 
	defb 0fdh,0ffh,0c3h	;illegal sequence		;bfbf	fd ff c3 	. . . 
	dec l			;bfc2	2d 	- 
	add a,a			;bfc3	87 	. 
	jp l871ah		;bfc4	c3 1a 87 	. . . 
	jp l872dh		;bfc7	c3 2d 87 	. - . 
	jp sub_92f5h		;bfca	c3 f5 92 	. . . 
	jp l8764h		;bfcd	c3 64 87 	. d . 
	jp sub_8687h		;bfd0	c3 87 86 	. . . 
	jp l86ech		;bfd3	c3 ec 86 	. . . 
	jp l86cdh		;bfd6	c3 cd 86 	. . . 
	jp l9427h		;bfd9	c3 27 94 	. ' . 
	jp sub_aa11h		;bfdc	c3 11 aa 	. . . 
	jp sub_b1cah		;bfdf	c3 ca b1 	. . . 
	jp sub_a7ddh		;bfe2	c3 dd a7 	. . . 
	jp sub_ae13h		;bfe5	c3 13 ae 	. . . 
	jp sub_854dh		;bfe8	c3 4d 85 	. M . 
	jp sub_84f7h		;bfeb	c3 f7 84 	. . . 
	jp sub_86b3h		;bfee	c3 b3 86 	. . . 
stringout:
	jp sub_84cdh		;bff1	c3 cd 84 	. . . 
runmode:
	jp l923fh		;bff4	c3 3f 92 	. ? . 
	jp sub_ac03h		;bff7	c3 03 ac 	. . . 
	jp sub_88abh		;bffa	c3 ab 88 	. . . 
	dec bc			;bffd	0b 	. 
	ld e,000h		;bffe	1e 00 	. . 
