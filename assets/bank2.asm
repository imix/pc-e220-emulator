; z80dasm 1.1.3
; command line: z80dasm -l -a -S symbols.sym -b bank2.blk -g 0xC000 -t bank2.bin

	org	0c000h

lc000h:
	call sub_db67h		;c000	cd 67 db 	. g . 
	jr c,lc00eh		;c003	38 09 	8 . 
lc005h:
	call 0816ah		;c005	cd 6a 81 	. j . 
	call sub_c488h		;c008	cd 88 c4 	. . . 
	jp 081ach		;c00b	c3 ac 81 	. . . 
lc00eh:
	ld hl,07f1dh		;c00e	21 1d 7f 	! .  
	ld de,07f15h		;c011	11 15 7f 	. .  
	ld bc,00002h		;c014	01 02 00 	. . . 
	ldir		;c017	ed b0 	. . 
	ld a,(de)			;c019	1a 	. 
	add a,(hl)			;c01a	86 	. 
	ld (de),a			;c01b	12 	. 
	and a			;c01c	a7 	. 
	ret			;c01d	c9 	. 
lc01eh:
	call sub_db67h		;c01e	cd 67 db 	. g . 
	jp c,0838ch		;c021	da 8c 83 	. . . 
	call 0816ah		;c024	cd 6a 81 	. j . 
	call sub_c485h		;c027	cd 85 c4 	. . . 
	jp 081ach		;c02a	c3 ac 81 	. . . 
lc02dh:
	call sub_dad5h		;c02d	cd d5 da 	. . . 
	call 0816ah		;c030	cd 6a 81 	. j . 
	call sub_c4ffh		;c033	cd ff c4 	. . . 
	jp 081ach		;c036	c3 ac 81 	. . . 
lc039h:
	call sub_dad5h		;c039	cd d5 da 	. . . 
	call 0816ah		;c03c	cd 6a 81 	. j . 
	call sub_c579h		;c03f	cd 79 c5 	. y . 
	jp 081ach		;c042	c3 ac 81 	. . . 
lc045h:
	call sub_dad5h		;c045	cd d5 da 	. . . 
	call 0816ah		;c048	cd 6a 81 	. j . 
	ld a,(07f0ah)		;c04b	3a 0a 7f 	: .  
	call sub_cdceh		;c04e	cd ce cd 	. . . 
	jp 081ach		;c051	c3 ac 81 	. . . 
	call 0818ah		;c054	cd 8a 81 	. . . 
	call sub_c999h		;c057	cd 99 c9 	. . . 
	jp 081ach		;c05a	c3 ac 81 	. . . 
	call 0818ah		;c05d	cd 8a 81 	. . . 
	call sub_c99dh		;c060	cd 9d c9 	. . . 
	jp 081ach		;c063	c3 ac 81 	. . . 
	call 0818ah		;c066	cd 8a 81 	. . . 
	call sub_d0d2h		;c069	cd d2 d0 	. . . 
	jp 081ach		;c06c	c3 ac 81 	. . . 
	call 0818ah		;c06f	cd 8a 81 	. . . 
	call sub_ca94h		;c072	cd 94 ca 	. . . 
	jp 081ach		;c075	c3 ac 81 	. . . 
	call 0818ah		;c078	cd 8a 81 	. . . 
	call sub_caa1h		;c07b	cd a1 ca 	. . . 
	jp 081ach		;c07e	c3 ac 81 	. . . 
	call 0818ah		;c081	cd 8a 81 	. . . 
	call sub_c606h		;c084	cd 06 c6 	. . . 
	jp 081ach		;c087	c3 ac 81 	. . . 
	call 0818ah		;c08a	cd 8a 81 	. . . 
	call sub_cf4ch		;c08d	cd 4c cf 	. L . 
	jp 081ach		;c090	c3 ac 81 	. . . 
	call 0818ah		;c093	cd 8a 81 	. . . 
	call sub_cf51h		;c096	cd 51 cf 	. Q . 
	jp 081ach		;c099	c3 ac 81 	. . . 
	call 0818ah		;c09c	cd 8a 81 	. . . 
	call sub_cf48h		;c09f	cd 48 cf 	. H . 
	jp 081ach		;c0a2	c3 ac 81 	. . . 
	call 0818ah		;c0a5	cd 8a 81 	. . . 
	call sub_d14ah		;c0a8	cd 4a d1 	. J . 
	jp 081ach		;c0ab	c3 ac 81 	. . . 
	call 0818ah		;c0ae	cd 8a 81 	. . . 
	call sub_d146h		;c0b1	cd 46 d1 	. F . 
	jp 081ach		;c0b4	c3 ac 81 	. . . 
	call 0818ah		;c0b7	cd 8a 81 	. . . 
	call sub_d142h		;c0ba	cd 42 d1 	. B . 
	jp 081ach		;c0bd	c3 ac 81 	. . . 
	call 0818ah		;c0c0	cd 8a 81 	. . . 
	call sub_cc8ah		;c0c3	cd 8a cc 	. . . 
	jp 081ach		;c0c6	c3 ac 81 	. . . 
	call 0818ah		;c0c9	cd 8a 81 	. . . 
	ld a,(07f0ah)		;c0cc	3a 0a 7f 	: .  
	call sub_d476h		;c0cf	cd 76 d4 	. v . 
	jp 081ach		;c0d2	c3 ac 81 	. . . 
	call 0818ah		;c0d5	cd 8a 81 	. . . 
	call sub_d0d9h		;c0d8	cd d9 d0 	. . . 
	jp 081ach		;c0db	c3 ac 81 	. . . 
	call 0818ah		;c0de	cd 8a 81 	. . . 
	call sub_c576h		;c0e1	cd 76 c5 	. v . 
	jp 081ach		;c0e4	c3 ac 81 	. . . 
	call 0818ah		;c0e7	cd 8a 81 	. . . 
	call sub_c4fch		;c0ea	cd fc c4 	. . . 
	jp 081ach		;c0ed	c3 ac 81 	. . . 
	call 0818ah		;c0f0	cd 8a 81 	. . . 
	call sub_ce7eh		;c0f3	cd 7e ce 	. ~ . 
	jp 081ach		;c0f6	c3 ac 81 	. . . 
	call 0818ah		;c0f9	cd 8a 81 	. . . 
	call sub_cf00h		;c0fc	cd 00 cf 	. . . 
	jp 081ach		;c0ff	c3 ac 81 	. . . 
	call 0818ah		;c102	cd 8a 81 	. . . 
	call sub_cecfh		;c105	cd cf ce 	. . . 
	jp 081ach		;c108	c3 ac 81 	. . . 
	call 0818ah		;c10b	cd 8a 81 	. . . 
	call sub_ec6ah		;c10e	cd 6a ec 	. j . 
	jp 081ach		;c111	c3 ac 81 	. . . 
	call 0818ah		;c114	cd 8a 81 	. . . 
	call sub_cb99h		;c117	cd 99 cb 	. . . 
	jp 081ach		;c11a	c3 ac 81 	. . . 
sub_c11dh:
	call 0818ah		;c11d	cd 8a 81 	. . . 
	call sub_cb99h		;c120	cd 99 cb 	. . . 
	jr c,lc13ch		;c123	38 17 	8 . 
	call 083b4h		;c125	cd b4 83 	. . . 
	ld a,(ix+000h)		;c128	dd 7e 00 	. ~ . 
	cp 02eh		;c12b	fe 2e 	. . 
	jr nz,lc138h		;c12d	20 09 	  . 
lc12fh:
	inc ix		;c12f	dd 23 	. # 
	ld a,(ix+000h)		;c131	dd 7e 00 	. ~ . 
	cp 030h		;c134	fe 30 	. 0 
	jr z,lc12fh		;c136	28 f7 	( . 
lc138h:
	call 083b4h		;c138	cd b4 83 	. . . 
	and a			;c13b	a7 	. 
lc13ch:
	jp 081ach		;c13c	c3 ac 81 	. . . 
lc13fh:
	ld a,(079f2h)		;c13f	3a f2 79 	: . y 
	cp 002h		;c142	fe 02 	. . 
	jp nz,0834eh		;c144	c2 4e 83 	. N . 
	call sub_db67h		;c147	cd 67 db 	. g . 
	jp c,0838ch		;c14a	da 8c 83 	. . . 
	call 0816ah		;c14d	cd 6a 81 	. j . 
	call sub_cd8bh		;c150	cd 8b cd 	. . . 
	jr lc169h		;c153	18 14 	. . 
lc155h:
	ld a,(079f2h)		;c155	3a f2 79 	: . y 
	cp 002h		;c158	fe 02 	. . 
	jp nz,0834eh		;c15a	c2 4e 83 	. N . 
	call sub_db67h		;c15d	cd 67 db 	. g . 
	jp c,0838ch		;c160	da 8c 83 	. . . 
	call 0816ah		;c163	cd 6a 81 	. j . 
	call sub_cd31h		;c166	cd 31 cd 	. 1 . 
lc169h:
	ret c			;c169	d8 	. 
	call 0819eh		;c16a	cd 9e 81 	. . . 
	ld de,07808h		;c16d	11 08 78 	. . x 
	call sub_dca2h		;c170	cd a2 dc 	. . . 
	ld l,018h		;c173	2e 18 	. . 
	ld e,000h		;c175	1e 00 	. . 
	ld bc,00008h		;c177	01 08 00 	. . . 
	ldir		;c17a	ed b0 	. . 
	ret			;c17c	c9 	. 
sub_c17dh:
	ld bc,07f19h		;c17d	01 19 7f 	. .  
	ld hl,07f11h		;c180	21 11 7f 	! .  
lc183h:
	ld d,(hl)			;c183	56 	V 
	ld a,(hl)			;c184	7e 	~ 
	and 0f0h		;c185	e6 f0 	. . 
	ld (hl),a			;c187	77 	w 
	ld a,(bc)			;c188	0a 	. 
	sub (hl)			;c189	96 	. 
	daa			;c18a	27 	' 
	ld (bc),a			;c18b	02 	. 
	dec l			;c18c	2d 	- 
	dec c			;c18d	0d 	. 
	ld a,(bc)			;c18e	0a 	. 
	sbc a,(hl)			;c18f	9e 	. 
	daa			;c190	27 	' 
	ld (bc),a			;c191	02 	. 
	inc l			;c192	2c 	, 
	ld (hl),d			;c193	72 	r 
	ret			;c194	c9 	. 
lc195h:
	ld bc,07f11h		;c195	01 11 7f 	. .  
	ld hl,07f19h		;c198	21 19 7f 	! .  
	jr lc183h		;c19b	18 e6 	. . 
sub_c19dh:
	ld hl,07f1ah		;c19d	21 1a 7f 	! .  
lc1a0h:
	ld b,006h		;c1a0	06 06 	. . 
	ld a,000h		;c1a2	3e 00 	> . 
lc1a4h:
	rrd		;c1a4	ed 67 	. g 
	inc l			;c1a6	2c 	, 
	djnz lc1a4h		;c1a7	10 fb 	. . 
	ret			;c1a9	c9 	. 
sub_c1aah:
	ld hl,07f12h		;c1aa	21 12 7f 	! .  
	jr lc1a0h		;c1ad	18 f1 	. . 
sub_c1afh:
	ld hl,07f19h		;c1af	21 19 7f 	! .  
	jr lc1b7h		;c1b2	18 03 	. . 
sub_c1b4h:
	ld hl,07f11h		;c1b4	21 11 7f 	! .  
lc1b7h:
	ld a,010h		;c1b7	3e 10 	> . 
	add a,(hl)			;c1b9	86 	. 
	daa			;c1ba	27 	' 
	ld (hl),a			;c1bb	77 	w 
	dec l			;c1bc	2d 	- 
	ld a,000h		;c1bd	3e 00 	> . 
	adc a,(hl)			;c1bf	8e 	. 
	daa			;c1c0	27 	' 
	ld (hl),a			;c1c1	77 	w 
	ret			;c1c2	c9 	. 
sub_c1c3h:
	ld hl,07f11h		;c1c3	21 11 7f 	! .  
	jr lc1d0h		;c1c6	18 08 	. . 
	ld hl,07f29h		;c1c8	21 29 7f 	! )  
	jr lc1d0h		;c1cb	18 03 	. . 
sub_c1cdh:
	ld hl,07f19h		;c1cd	21 19 7f 	! .  
lc1d0h:
	ld a,(hl)			;c1d0	7e 	~ 
	sub 010h		;c1d1	d6 10 	. . 
	daa			;c1d3	27 	' 
	ld (hl),a			;c1d4	77 	w 
	dec l			;c1d5	2d 	- 
	ld a,(hl)			;c1d6	7e 	~ 
	sbc a,000h		;c1d7	de 00 	. . 
	daa			;c1d9	27 	' 
	ld (hl),a			;c1da	77 	w 
	ret			;c1db	c9 	. 
	ld hl,07f1fh		;c1dc	21 1f 7f 	! .  
	jr lc1e9h		;c1df	18 08 	. . 
sub_c1e1h:
	ld hl,07f2fh		;c1e1	21 2f 7f 	! /  
	jr lc1e9h		;c1e4	18 03 	. . 
sub_c1e6h:
	ld hl,07f17h		;c1e6	21 17 7f 	! .  
lc1e9h:
	xor a			;c1e9	af 	. 
	ld b,006h		;c1ea	06 06 	. . 
lc1ech:
	rld		;c1ec	ed 6f 	. o 
	dec l			;c1ee	2d 	- 
	djnz lc1ech		;c1ef	10 fb 	. . 
	ld b,a			;c1f1	47 	G 
	ld a,(hl)			;c1f2	7e 	~ 
	and 0f0h		;c1f3	e6 f0 	. . 
	or b			;c1f5	b0 	. 
	ld (hl),a			;c1f6	77 	w 
	ret			;c1f7	c9 	. 
	ld hl,07f28h		;c1f8	21 28 7f 	! (  
	jr lc205h		;c1fb	18 08 	. . 
	ld hl,07f20h		;c1fd	21 20 7f 	!    
	jr lc205h		;c200	18 03 	. . 
	ld hl,07f10h		;c202	21 10 7f 	! .  
lc205h:
	ld a,000h		;c205	3e 00 	> . 
	ld b,008h		;c207	06 08 	. . 
lc209h:
	rrd		;c209	ed 67 	. g 
	inc l			;c20b	2c 	, 
	djnz lc209h		;c20c	10 fb 	. . 
	ret			;c20e	c9 	. 
	ld hl,07f2fh		;c20f	21 2f 7f 	! /  
	jr lc21ch		;c212	18 08 	. . 
	ld hl,07f27h		;c214	21 27 7f 	! '  
	jr lc21ch		;c217	18 03 	. . 
sub_c219h:
	ld hl,07f17h		;c219	21 17 7f 	! .  
lc21ch:
	ld a,000h		;c21c	3e 00 	> . 
	ld b,008h		;c21e	06 08 	. . 
lc220h:
	rld		;c220	ed 6f 	. o 
	dec l			;c222	2d 	- 
	djnz lc220h		;c223	10 fb 	. . 
	ret			;c225	c9 	. 
sub_c226h:
	ld hl,07f31h		;c226	21 31 7f 	! 1  
	ld a,004h		;c229	3e 04 	> . 
	and (hl)			;c22b	a6 	. 
	rrca			;c22c	0f 	. 
	rrca			;c22d	0f 	. 
	ld c,a			;c22e	4f 	O 
	ld a,001h		;c22f	3e 01 	> . 
	and (hl)			;c231	a6 	. 
	rlca			;c232	07 	. 
	rlca			;c233	07 	. 
	ld b,a			;c234	47 	G 
	ld a,0fah		;c235	3e fa 	> . 
	and (hl)			;c237	a6 	. 
	or b			;c238	b0 	. 
	or c			;c239	b1 	. 
	ld (hl),a			;c23a	77 	w 
	ret			;c23b	c9 	. 
sub_c23ch:
	ld de,07f11h		;c23c	11 11 7f 	. .  
	ld hl,07f29h		;c23f	21 29 7f 	! )  
lc242h:
	ld a,(de)			;c242	1a 	. 
	and 0f0h		;c243	e6 f0 	. . 
	ld b,a			;c245	47 	G 
	ld a,(hl)			;c246	7e 	~ 
	and 00fh		;c247	e6 0f 	. . 
	or b			;c249	b0 	. 
	ld (hl),a			;c24a	77 	w 
	dec e			;c24b	1d 	. 
	dec l			;c24c	2d 	- 
	ld a,(de)			;c24d	1a 	. 
	ld (hl),a			;c24e	77 	w 
	ret			;c24f	c9 	. 
sub_c250h:
	ld de,07f19h		;c250	11 19 7f 	. .  
	ld hl,07f11h		;c253	21 11 7f 	! .  
	jr lc242h		;c256	18 ea 	. . 
sub_c258h:
	ld de,07f11h		;c258	11 11 7f 	. .  
	ld hl,07f19h		;c25b	21 19 7f 	! .  
	jr lc242h		;c25e	18 e2 	. . 
sub_c260h:
	ld hl,07f11h		;c260	21 11 7f 	! .  
	ld de,07f19h		;c263	11 19 7f 	. .  
lc266h:
	ld bc,00007h		;c266	01 07 00 	. . . 
	ld a,(de)			;c269	1a 	. 
	ldir		;c26a	ed b0 	. . 
	and 0f0h		;c26c	e6 f0 	. . 
	ld b,a			;c26e	47 	G 
	ld a,e			;c26f	7b 	{ 
	sub 007h		;c270	d6 07 	. . 
	ld e,a			;c272	5f 	_ 
	ld a,(de)			;c273	1a 	. 
	and 00fh		;c274	e6 0f 	. . 
	or b			;c276	b0 	. 
	ld (de),a			;c277	12 	. 
	ret			;c278	c9 	. 
sub_c279h:
	ld hl,07f19h		;c279	21 19 7f 	! .  
	ld de,07f11h		;c27c	11 11 7f 	. .  
	jr lc266h		;c27f	18 e5 	. . 
	ld hl,07f21h		;c281	21 21 7f 	! !  
	ld de,07f11h		;c284	11 11 7f 	. .  
	jr lc266h		;c287	18 dd 	. . 
sub_c289h:
	ld hl,07f19h		;c289	21 19 7f 	! .  
	ld de,07f21h		;c28c	11 21 7f 	. !  
	jr lc266h		;c28f	18 d5 	. . 
sub_c291h:
	ld hl,07f11h		;c291	21 11 7f 	! .  
	ld de,07f21h		;c294	11 21 7f 	. !  
	jr lc266h		;c297	18 cd 	. . 
sub_c299h:
	ld hl,07f19h		;c299	21 19 7f 	! .  
	jr lc2a1h		;c29c	18 03 	. . 
	ld hl,07f11h		;c29e	21 11 7f 	! .  
lc2a1h:
	ld a,(hl)			;c2a1	7e 	~ 
	and 0f0h		;c2a2	e6 f0 	. . 
	ld b,a			;c2a4	47 	G 
	ld a,(hl)			;c2a5	7e 	~ 
	and 00fh		;c2a6	e6 0f 	. . 
	sub b			;c2a8	90 	. 
	daa			;c2a9	27 	' 
	ld (hl),a			;c2aa	77 	w 
	dec l			;c2ab	2d 	- 
	ld a,000h		;c2ac	3e 00 	> . 
	sbc a,(hl)			;c2ae	9e 	. 
	daa			;c2af	27 	' 
	ld (hl),a			;c2b0	77 	w 
	and a			;c2b1	a7 	. 
	ret			;c2b2	c9 	. 
sub_c2b3h:
	ld hl,07f31h		;c2b3	21 31 7f 	! 1  
	ld a,(hl)			;c2b6	7e 	~ 
	and 003h		;c2b7	e6 03 	. . 
	rra			;c2b9	1f 	. 
	ld b,000h		;c2ba	06 00 	. . 
	adc a,b			;c2bc	88 	. 
	and 001h		;c2bd	e6 01 	. . 
	ld b,a			;c2bf	47 	G 
	ld a,(hl)			;c2c0	7e 	~ 
	and 0feh		;c2c1	e6 fe 	. . 
	or b			;c2c3	b0 	. 
	ld (hl),a			;c2c4	77 	w 
	ret			;c2c5	c9 	. 
sub_c2c6h:
	ld de,07f19h		;c2c6	11 19 7f 	. .  
	ld hl,07f11h		;c2c9	21 11 7f 	! .  
	ld a,(de)			;c2cc	1a 	. 
	and 0f0h		;c2cd	e6 f0 	. . 
	ld c,a			;c2cf	4f 	O 
	ld a,(de)			;c2d0	1a 	. 
	and 00fh		;c2d1	e6 0f 	. . 
	ld b,a			;c2d3	47 	G 
	ld a,(hl)			;c2d4	7e 	~ 
	and 0f0h		;c2d5	e6 f0 	. . 
	or b			;c2d7	b0 	. 
	ld (de),a			;c2d8	12 	. 
	ld e,01fh		;c2d9	1e 1f 	. . 
	ld l,017h		;c2db	2e 17 	. . 
	jr lc2f6h		;c2dd	18 17 	. . 
	ld de,07f11h		;c2df	11 11 7f 	. .  
	ld hl,07f19h		;c2e2	21 19 7f 	! .  
	ld a,(de)			;c2e5	1a 	. 
	and 0f0h		;c2e6	e6 f0 	. . 
	ld c,a			;c2e8	4f 	O 
	ld a,(de)			;c2e9	1a 	. 
	and 00fh		;c2ea	e6 0f 	. . 
	ld b,a			;c2ec	47 	G 
	ld a,(hl)			;c2ed	7e 	~ 
	and 0f0h		;c2ee	e6 f0 	. . 
	or b			;c2f0	b0 	. 
	ld (de),a			;c2f1	12 	. 
	ld e,017h		;c2f2	1e 17 	. . 
	ld l,01fh		;c2f4	2e 1f 	. . 
lc2f6h:
	ld b,007h		;c2f6	06 07 	. . 
	and a			;c2f8	a7 	. 
lc2f9h:
	ld a,(de)			;c2f9	1a 	. 
	sbc a,(hl)			;c2fa	9e 	. 
	daa			;c2fb	27 	' 
	ld (de),a			;c2fc	12 	. 
	dec e			;c2fd	1d 	. 
	dec l			;c2fe	2d 	- 
	djnz lc2f9h		;c2ff	10 f8 	. . 
	inc e			;c301	1c 	. 
	ex af,af'			;c302	08 	. 
	ld a,(de)			;c303	1a 	. 
	and 00fh		;c304	e6 0f 	. . 
	or c			;c306	b1 	. 
	ld (de),a			;c307	12 	. 
	ex af,af'			;c308	08 	. 
	ret			;c309	c9 	. 
sub_c30ah:
	ld de,07f1fh		;c30a	11 1f 7f 	. .  
	ld hl,07f17h		;c30d	21 17 7f 	! .  
	ld b,007h		;c310	06 07 	. . 
	and a			;c312	a7 	. 
lc313h:
	ld a,(de)			;c313	1a 	. 
	sbc a,(hl)			;c314	9e 	. 
	daa			;c315	27 	' 
	ld (de),a			;c316	12 	. 
	dec e			;c317	1d 	. 
	dec l			;c318	2d 	- 
	djnz lc313h		;c319	10 f8 	. . 
	ret			;c31b	c9 	. 
sub_c31ch:
	ld hl,07f15h		;c31c	21 15 7f 	! .  
	ld a,(hl)			;c31f	7e 	~ 
	cp 099h		;c320	fe 99 	. . 
	jr nz,lc343h		;c322	20 1f 	  . 
	inc l			;c324	2c 	, 
	ld a,(hl)			;c325	7e 	~ 
	cp 099h		;c326	fe 99 	. . 
	jr nz,lc341h		;c328	20 17 	  . 
	ld a,001h		;c32a	3e 01 	> . 
	add a,(hl)			;c32c	86 	. 
	daa			;c32d	27 	' 
	ld (hl),a			;c32e	77 	w 
	dec l			;c32f	2d 	- 
	ld b,005h		;c330	06 05 	. . 
lc332h:
	ld a,000h		;c332	3e 00 	> . 
	adc a,(hl)			;c334	8e 	. 
	daa			;c335	27 	' 
	ld (hl),a			;c336	77 	w 
	dec l			;c337	2d 	- 
	djnz lc332h		;c338	10 f8 	. . 
lc33ah:
	ld l,017h		;c33a	2e 17 	. . 
	ld (hl),000h		;c33c	36 00 	6 . 
	jp 082e9h		;c33e	c3 e9 82 	. . . 
lc341h:
	and a			;c341	a7 	. 
	ret			;c342	c9 	. 
lc343h:
	or a			;c343	b7 	. 
	jr nz,lc341h		;c344	20 fb 	  . 
	inc l			;c346	2c 	, 
	ld a,(hl)			;c347	7e 	~ 
	or a			;c348	b7 	. 
	jr z,lc33ah		;c349	28 ef 	( . 
	ret			;c34b	c9 	. 
sub_c34ch:
	ld hl,07f11h		;c34c	21 11 7f 	! .  
	ld a,(hl)			;c34f	7e 	~ 
	and 0f0h		;c350	e6 f0 	. . 
	ld b,a			;c352	47 	G 
	ld a,(hl)			;c353	7e 	~ 
	and 00fh		;c354	e6 0f 	. . 
	ld (hl),a			;c356	77 	w 
	ld hl,07f19h		;c357	21 19 7f 	! .  
	ld a,(hl)			;c35a	7e 	~ 
	and 0f0h		;c35b	e6 f0 	. . 
	rrca			;c35d	0f 	. 
	rrca			;c35e	0f 	. 
	rrca			;c35f	0f 	. 
	rrca			;c360	0f 	. 
	or b			;c361	b0 	. 
	ld (07f0ah),a		;c362	32 0a 7f 	2 .  
	ld a,(hl)			;c365	7e 	~ 
	and 00fh		;c366	e6 0f 	. . 
	ld (hl),a			;c368	77 	w 
	ret			;c369	c9 	. 
sub_c36ah:
	ld hl,07f11h		;c36a	21 11 7f 	! .  
	ld a,(07f0ah)		;c36d	3a 0a 7f 	: .  
	and 0f0h		;c370	e6 f0 	. . 
	ld b,a			;c372	47 	G 
	ld a,(hl)			;c373	7e 	~ 
	and 00fh		;c374	e6 0f 	. . 
	or b			;c376	b0 	. 
	ld (hl),a			;c377	77 	w 
	ld l,019h		;c378	2e 19 	. . 
	ld a,(07f0ah)		;c37a	3a 0a 7f 	: .  
	and 00fh		;c37d	e6 0f 	. . 
	rlca			;c37f	07 	. 
	rlca			;c380	07 	. 
	rlca			;c381	07 	. 
	rlca			;c382	07 	. 
	ld b,a			;c383	47 	G 
	ld a,(hl)			;c384	7e 	~ 
	and 00fh		;c385	e6 0f 	. . 
	or b			;c387	b0 	. 
	ld (hl),a			;c388	77 	w 
	ret			;c389	c9 	. 
lc38ah:
	ld bc,07f11h		;c38a	01 11 7f 	. .  
	ld hl,07f19h		;c38d	21 19 7f 	! .  
	ld a,(hl)			;c390	7e 	~ 
	and 0f0h		;c391	e6 f0 	. . 
	ld d,a			;c393	57 	W 
	ld a,(bc)			;c394	0a 	. 
	add a,d			;c395	82 	. 
	daa			;c396	27 	' 
	ld (bc),a			;c397	02 	. 
	dec l			;c398	2d 	- 
	dec c			;c399	0d 	. 
	ld a,(bc)			;c39a	0a 	. 
	adc a,(hl)			;c39b	8e 	. 
	daa			;c39c	27 	' 
	ld (bc),a			;c39d	02 	. 
	ret			;c39e	c9 	. 
sub_c39fh:
	ld a,(07f11h)		;c39f	3a 11 7f 	: .  
	and 0f0h		;c3a2	e6 f0 	. . 
	ld c,a			;c3a4	4f 	O 
	ld hl,07f17h		;c3a5	21 17 7f 	! .  
	ld de,07f1fh		;c3a8	11 1f 7f 	. .  
	jr lc3b9h		;c3ab	18 0c 	. . 
sub_c3adh:
	ld a,(07f19h)		;c3ad	3a 19 7f 	: .  
	and 0f0h		;c3b0	e6 f0 	. . 
	ld c,a			;c3b2	4f 	O 
	ld hl,07f1fh		;c3b3	21 1f 7f 	! .  
	ld de,07f17h		;c3b6	11 17 7f 	. .  
lc3b9h:
	ld b,007h		;c3b9	06 07 	. . 
	and a			;c3bb	a7 	. 
lc3bch:
	ld a,(de)			;c3bc	1a 	. 
	adc a,(hl)			;c3bd	8e 	. 
	daa			;c3be	27 	' 
	ld (hl),a			;c3bf	77 	w 
	dec l			;c3c0	2d 	- 
	dec e			;c3c1	1d 	. 
	djnz lc3bch		;c3c2	10 f8 	. . 
	inc l			;c3c4	2c 	, 
	ld a,(hl)			;c3c5	7e 	~ 
	and 00fh		;c3c6	e6 0f 	. . 
	or c			;c3c8	b1 	. 
	ld (hl),a			;c3c9	77 	w 
	and a			;c3ca	a7 	. 
	ret			;c3cb	c9 	. 
sub_c3cch:
	ld b,007h		;c3cc	06 07 	. . 
	ld hl,07f17h		;c3ce	21 17 7f 	! .  
	ld de,07f1fh		;c3d1	11 1f 7f 	. .  
	and a			;c3d4	a7 	. 
lc3d5h:
	ld a,(de)			;c3d5	1a 	. 
	adc a,(hl)			;c3d6	8e 	. 
	daa			;c3d7	27 	' 
	ld (hl),a			;c3d8	77 	w 
	dec l			;c3d9	2d 	- 
	dec e			;c3da	1d 	. 
	djnz lc3d5h		;c3db	10 f8 	. . 
	ret			;c3dd	c9 	. 
	ld b,007h		;c3de	06 07 	. . 
	ld hl,07f1fh		;c3e0	21 1f 7f 	! .  
	ld de,07f17h		;c3e3	11 17 7f 	. .  
	and a			;c3e6	a7 	. 
	jr lc3d5h		;c3e7	18 ec 	. . 
sub_c3e9h:
	inc l			;c3e9	2c 	, 
	inc e			;c3ea	1c 	. 
	ld a,(de)			;c3eb	1a 	. 
	add a,(hl)			;c3ec	86 	. 
	daa			;c3ed	27 	' 
	ld (hl),a			;c3ee	77 	w 
	dec l			;c3ef	2d 	- 
	dec e			;c3f0	1d 	. 
	ld a,(de)			;c3f1	1a 	. 
	adc a,(hl)			;c3f2	8e 	. 
	daa			;c3f3	27 	' 
	ld (hl),a			;c3f4	77 	w 
	ret			;c3f5	c9 	. 
sub_c3f6h:
	ld a,(079e0h)		;c3f6	3a e0 79 	: . y 
	rrca			;c3f9	0f 	. 
	rrca			;c3fa	0f 	. 
	rrca			;c3fb	0f 	. 
	rrca			;c3fc	0f 	. 
	add a,010h		;c3fd	c6 10 	. . 
	ld b,a			;c3ff	47 	G 
	ld a,(07f20h)		;c400	3a 20 7f 	:    
	sub b			;c403	90 	. 
	rrca			;c404	0f 	. 
	rrca			;c405	0f 	. 
	rrca			;c406	0f 	. 
	rrca			;c407	0f 	. 
	and 00fh		;c408	e6 0f 	. . 
lc40ah:
	ld e,017h		;c40a	1e 17 	. . 
	ld hl,07f30h		;c40c	21 30 7f 	! 0  
	res 0,(hl)		;c40f	cb 86 	. . 
	and a			;c411	a7 	. 
	rra			;c412	1f 	. 
	jr c,lc417h		;c413	38 02 	8 . 
	set 0,(hl)		;c415	cb c6 	. . 
lc417h:
	ld d,a			;c417	57 	W 
	ld a,005h		;c418	3e 05 	> . 
	sub d			;c41a	92 	. 
	ld b,a			;c41b	47 	G 
	ld a,e			;c41c	7b 	{ 
	sub d			;c41d	92 	. 
	ld d,a			;c41e	57 	W 
	ld l,a			;c41f	6f 	o 
	ld h,07fh		;c420	26 7f 	&  
	ld a,(07f30h)		;c422	3a 30 7f 	: 0  
	bit 0,a		;c425	cb 47 	. G 
	ld a,050h		;c427	3e 50 	> P 
	jr z,lc42dh		;c429	28 02 	( . 
	ld a,005h		;c42b	3e 05 	> . 
lc42dh:
	add a,(hl)			;c42d	86 	. 
	daa			;c42e	27 	' 
	ld (hl),a			;c42f	77 	w 
	dec b			;c430	05 	. 
	inc b			;c431	04 	. 
	jr z,lc43ch		;c432	28 08 	( . 
lc434h:
	dec l			;c434	2d 	- 
	ld a,000h		;c435	3e 00 	> . 
	adc a,(hl)			;c437	8e 	. 
	daa			;c438	27 	' 
	ld (hl),a			;c439	77 	w 
	djnz lc434h		;c43a	10 f8 	. . 
lc43ch:
	push af			;c43c	f5 	. 
	ld l,d			;c43d	6a 	j 
	ld a,(07f30h)		;c43e	3a 30 7f 	: 0  
	bit 0,a		;c441	cb 47 	. G 
	ld a,(hl)			;c443	7e 	~ 
	jr z,lc44ah		;c444	28 04 	( . 
	and 0f0h		;c446	e6 f0 	. . 
	jr lc44bh		;c448	18 01 	. . 
lc44ah:
	xor a			;c44a	af 	. 
lc44bh:
	ld (hl),a			;c44b	77 	w 
	inc l			;c44c	2c 	, 
	ld b,007h		;c44d	06 07 	. . 
	ld a,000h		;c44f	3e 00 	> . 
lc451h:
	ld (hl),a			;c451	77 	w 
	inc l			;c452	2c 	, 
	djnz lc451h		;c453	10 fc 	. . 
	pop af			;c455	f1 	. 
	ret			;c456	c9 	. 
sub_c457h:
	ld de,07a78h		;c457	11 78 7a 	. x z 
	ld hl,07f10h		;c45a	21 10 7f 	! .  
	ld bc,00008h		;c45d	01 08 00 	. . . 
	ldir		;c460	ed b0 	. . 
sub_c462h:
	ld hl,07a78h		;c462	21 78 7a 	! x z 
	ld de,07f10h		;c465	11 10 7f 	. .  
	ld bc,00008h		;c468	01 08 00 	. . . 
lc46bh:
	ldir		;c46b	ed b0 	. . 
	ld e,010h		;c46d	1e 10 	. . 
	ld a,099h		;c46f	3e 99 	> . 
	ld (de),a			;c471	12 	. 
	inc e			;c472	1c 	. 
	ld a,090h		;c473	3e 90 	> . 
	ld (de),a			;c475	12 	. 
	ret			;c476	c9 	. 
sub_c477h:
	call 08024h		;c477	cd 24 80 	. $ . 
	ld hl,07a9ch		;c47a	21 9c 7a 	! . z 
	ld de,07f12h		;c47d	11 12 7f 	. .  
	ld bc,00002h		;c480	01 02 00 	. . . 
	jr lc46bh		;c483	18 e6 	. . 
sub_c485h:
	call 081e8h		;c485	cd e8 81 	. . . 
sub_c488h:
	ld a,(07f12h)		;c488	3a 12 7f 	: .  
	and 0f0h		;c48b	e6 f0 	. . 
	jr z,lc4b5h		;c48d	28 26 	( & 
	ld a,(07f1ah)		;c48f	3a 1a 7f 	: .  
	and 0f0h		;c492	e6 f0 	. . 
	jr z,lc4b8h		;c494	28 22 	( " 
	call sub_c17dh		;c496	cd 7d c1 	. } . 
lc499h:
	ld a,(07f18h)		;c499	3a 18 7f 	: .  
	bit 7,a		;c49c	cb 7f 	.  
	jr z,lc4a8h		;c49e	28 08 	( . 
	call sub_c19dh		;c4a0	cd 9d c1 	. . . 
	call sub_c1afh		;c4a3	cd af c1 	. . . 
	jr lc499h		;c4a6	18 f1 	. . 
lc4a8h:
	call sub_c1cdh		;c4a8	cd cd c1 	. . . 
	jr c,lc4d5h		;c4ab	38 28 	8 ( 
	call sub_c1aah		;c4ad	cd aa c1 	. . . 
	call sub_c1b4h		;c4b0	cd b4 c1 	. . . 
	jr lc499h		;c4b3	18 e4 	. . 
lc4b5h:
	call 080a7h		;c4b5	cd a7 80 	. . . 
lc4b8h:
	ld hl,07f11h		;c4b8	21 11 7f 	! .  
	ld a,(hl)			;c4bb	7e 	~ 
	and 00fh		;c4bc	e6 0f 	. . 
	jr nz,lc4d2h		;c4be	20 12 	  . 
	ld b,005h		;c4c0	06 05 	. . 
lc4c2h:
	inc l			;c4c2	2c 	, 
	ld a,(hl)			;c4c3	7e 	~ 
	and 0ffh		;c4c4	e6 ff 	. . 
	jr nz,lc4d2h		;c4c6	20 0a 	  . 
	djnz lc4c2h		;c4c8	10 f8 	. . 
	inc l			;c4ca	2c 	, 
	ld a,(hl)			;c4cb	7e 	~ 
	and 0f0h		;c4cc	e6 f0 	. . 
	jr nz,lc4d2h		;c4ce	20 02 	  . 
	ld (hl),000h		;c4d0	36 00 	6 . 
lc4d2h:
	jp 082e9h		;c4d2	c3 e9 82 	. . . 
lc4d5h:
	call sub_c2b3h		;c4d5	cd b3 c2 	. . . 
	bit 0,(hl)		;c4d8	cb 46 	. F 
	jr nz,lc4e7h		;c4da	20 0b 	  . 
	call sub_c3adh		;c4dc	cd ad c3 	. . . 
lc4dfh:
	call sub_c279h		;c4df	cd 79 c2 	. y . 
	call sub_c2b3h		;c4e2	cd b3 c2 	. . . 
	jr lc4b8h		;c4e5	18 d1 	. . 
lc4e7h:
	call sub_c2c6h		;c4e7	cd c6 c2 	. . . 
	jr c,lc4f1h		;c4ea	38 05 	8 . 
	call 081e8h		;c4ec	cd e8 81 	. . . 
	jr lc4dfh		;c4ef	18 ee 	. . 
lc4f1h:
	call sub_c279h		;c4f1	cd 79 c2 	. y . 
	call 08053h		;c4f4	cd 53 80 	. S . 
	call sub_c2c6h		;c4f7	cd c6 c2 	. . . 
	jr lc4dfh		;c4fa	18 e3 	. . 
sub_c4fch:
	call 080cdh		;c4fc	cd cd 80 	. . . 
sub_c4ffh:
	call sub_c2b3h		;c4ff	cd b3 c2 	. . . 
	ld bc,07f11h		;c502	01 11 7f 	. .  
	ld hl,07f19h		;c505	21 19 7f 	! .  
	ld a,(bc)			;c508	0a 	. 
	add a,(hl)			;c509	86 	. 
	daa			;c50a	27 	' 
	ld (bc),a			;c50b	02 	. 
	dec l			;c50c	2d 	- 
	dec c			;c50d	0d 	. 
	ld a,(bc)			;c50e	0a 	. 
	adc a,(hl)			;c50f	8e 	. 
	daa			;c510	27 	' 
	ld (bc),a			;c511	02 	. 
	ld hl,07f11h		;c512	21 11 7f 	! .  
	ld de,07f21h		;c515	11 21 7f 	. !  
	ld bc,00007h		;c518	01 07 00 	. . . 
	ldir		;c51b	ed b0 	. . 
	call sub_c34ch		;c51d	cd 4c c3 	. L . 
	ld hl,07f11h		;c520	21 11 7f 	! .  
	ld b,007h		;c523	06 07 	. . 
	xor a			;c525	af 	. 
lc526h:
	ld (hl),a			;c526	77 	w 
	inc l			;c527	2c 	, 
	djnz lc526h		;c528	10 fc 	. . 
	ld a,00bh		;c52a	3e 0b 	> . 
	ld (07f09h),a		;c52c	32 09 7f 	2 .  
lc52fh:
	ld a,(07f27h)		;c52f	3a 27 7f 	: '  
	and 00fh		;c532	e6 0f 	. . 
	ld c,a			;c534	4f 	O 
	ld b,006h		;c535	06 06 	. . 
	ld hl,07f22h		;c537	21 22 7f 	! "  
	xor a			;c53a	af 	. 
lc53bh:
	rrd		;c53b	ed 67 	. g 
	inc l			;c53d	2c 	, 
	djnz lc53bh		;c53e	10 fb 	. . 
lc540h:
	ld b,007h		;c540	06 07 	. . 
	ld a,c			;c542	79 	y 
	sub 001h		;c543	d6 01 	. . 
	jr c,lc559h		;c545	38 12 	8 . 
	ld c,a			;c547	4f 	O 
	ld hl,07f17h		;c548	21 17 7f 	! .  
	ld de,07f1fh		;c54b	11 1f 7f 	. .  
	and a			;c54e	a7 	. 
lc54fh:
	ld a,(de)			;c54f	1a 	. 
	adc a,(hl)			;c550	8e 	. 
	daa			;c551	27 	' 
	ld (hl),a			;c552	77 	w 
	dec l			;c553	2d 	- 
	dec e			;c554	1d 	. 
	djnz lc54fh		;c555	10 f8 	. . 
	jr lc540h		;c557	18 e7 	. . 
lc559h:
	ld a,(07f09h)		;c559	3a 09 7f 	: .  
	sub 001h		;c55c	d6 01 	. . 
	jr c,lc570h		;c55e	38 10 	8 . 
	ld (07f09h),a		;c560	32 09 7f 	2 .  
	ld hl,07f11h		;c563	21 11 7f 	! .  
	ld b,007h		;c566	06 07 	. . 
	xor a			;c568	af 	. 
lc569h:
	rrd		;c569	ed 67 	. g 
	inc l			;c56b	2c 	, 
	djnz lc569h		;c56c	10 fb 	. . 
	jr lc52fh		;c56e	18 bf 	. . 
lc570h:
	call sub_c36ah		;c570	cd 6a c3 	. j . 
	jp 082e9h		;c573	c3 e9 82 	. . . 
sub_c576h:
	call 0803eh		;c576	cd 3e 80 	. > . 
sub_c579h:
	call sub_c2b3h		;c579	cd b3 c2 	. . . 
	call sub_c1b4h		;c57c	cd b4 c1 	. . . 
	ld bc,07f19h		;c57f	01 19 7f 	. .  
	ld hl,07f11h		;c582	21 11 7f 	! .  
	ld a,(bc)			;c585	0a 	. 
	sub (hl)			;c586	96 	. 
	daa			;c587	27 	' 
	ld (bc),a			;c588	02 	. 
	ld (hl),a			;c589	77 	w 
	dec l			;c58a	2d 	- 
	dec c			;c58b	0d 	. 
	ld a,(bc)			;c58c	0a 	. 
	sbc a,(hl)			;c58d	9e 	. 
	daa			;c58e	27 	' 
	ld (bc),a			;c58f	02 	. 
	ld (hl),a			;c590	77 	w 
	call sub_c34ch		;c591	cd 4c c3 	. L . 
	ld hl,07f21h		;c594	21 21 7f 	! !  
	ld b,007h		;c597	06 07 	. . 
	xor a			;c599	af 	. 
lc59ah:
	ld (hl),a			;c59a	77 	w 
	inc l			;c59b	2c 	, 
	djnz lc59ah		;c59c	10 fc 	. . 
	ld a,00ch		;c59e	3e 0c 	> . 
	ld (07f09h),a		;c5a0	32 09 7f 	2 .  
lc5a3h:
	ld b,007h		;c5a3	06 07 	. . 
	xor a			;c5a5	af 	. 
	ld hl,07f27h		;c5a6	21 27 7f 	! '  
lc5a9h:
	rld		;c5a9	ed 6f 	. o 
	dec l			;c5ab	2d 	- 
	djnz lc5a9h		;c5ac	10 fb 	. . 
lc5aeh:
	ld b,007h		;c5ae	06 07 	. . 
	ld de,07f1fh		;c5b0	11 1f 7f 	. .  
	ld hl,07f17h		;c5b3	21 17 7f 	! .  
	and a			;c5b6	a7 	. 
lc5b7h:
	ld a,(de)			;c5b7	1a 	. 
	sbc a,(hl)			;c5b8	9e 	. 
	daa			;c5b9	27 	' 
	ld (de),a			;c5ba	12 	. 
	dec l			;c5bb	2d 	- 
	dec e			;c5bc	1d 	. 
	djnz lc5b7h		;c5bd	10 f8 	. . 
	jr c,lc5d0h		;c5bf	38 0f 	8 . 
	ld hl,07f27h		;c5c1	21 27 7f 	! '  
	ld a,(hl)			;c5c4	7e 	~ 
	inc a			;c5c5	3c 	< 
	ld (hl),a			;c5c6	77 	w 
	and 00fh		;c5c7	e6 0f 	. . 
	cp 00ah		;c5c9	fe 0a 	. . 
	jr nz,lc5aeh		;c5cb	20 e1 	  . 
	jp 083a8h		;c5cd	c3 a8 83 	. . . 
lc5d0h:
	ld b,007h		;c5d0	06 07 	. . 
	ld hl,07f1fh		;c5d2	21 1f 7f 	! .  
	ld de,07f17h		;c5d5	11 17 7f 	. .  
	and a			;c5d8	a7 	. 
lc5d9h:
	ld a,(de)			;c5d9	1a 	. 
	adc a,(hl)			;c5da	8e 	. 
	daa			;c5db	27 	' 
	ld (hl),a			;c5dc	77 	w 
	dec l			;c5dd	2d 	- 
	dec e			;c5de	1d 	. 
	djnz lc5d9h		;c5df	10 f8 	. . 
	ld b,007h		;c5e1	06 07 	. . 
	ld l,01fh		;c5e3	2e 1f 	. . 
	xor a			;c5e5	af 	. 
lc5e6h:
	rld		;c5e6	ed 6f 	. o 
	dec l			;c5e8	2d 	- 
	djnz lc5e6h		;c5e9	10 fb 	. . 
	ld a,(07f09h)		;c5eb	3a 09 7f 	: .  
	sub 001h		;c5ee	d6 01 	. . 
	ld (07f09h),a		;c5f0	32 09 7f 	2 .  
	jr nc,lc5a3h		;c5f3	30 ae 	0 . 
	ld bc,00007h		;c5f5	01 07 00 	. . . 
	ld de,07f11h		;c5f8	11 11 7f 	. .  
	ld hl,07f21h		;c5fb	21 21 7f 	! !  
	ldir		;c5fe	ed b0 	. . 
	call sub_c36ah		;c600	cd 6a c3 	. j . 
	jp 082e9h		;c603	c3 e9 82 	. . . 
sub_c606h:
	ld a,(07f31h)		;c606	3a 31 7f 	: 1  
	bit 0,a		;c609	cb 47 	. G 
	jp nz,083ach		;c60b	c2 ac 83 	. . . 
	ld hl,07f11h		;c60e	21 11 7f 	! .  
	ld de,07f19h		;c611	11 19 7f 	. .  
	ld a,(hl)			;c614	7e 	~ 
	ld (de),a			;c615	12 	. 
	dec l			;c616	2d 	- 
	dec e			;c617	1d 	. 
	ld a,(hl)			;c618	7e 	~ 
	ld (de),a			;c619	12 	. 
	call sub_c3e9h		;c61a	cd e9 c3 	. . . 
	call sub_c3e9h		;c61d	cd e9 c3 	. . . 
	call sub_c3e9h		;c620	cd e9 c3 	. . . 
	call sub_c3e9h		;c623	cd e9 c3 	. . . 
	ld a,000h		;c626	3e 00 	> . 
	rrd		;c628	ed 67 	. g 
	inc l			;c62a	2c 	, 
	rrd		;c62b	ed 67 	. g 
	jr nc,lc634h		;c62d	30 05 	0 . 
	dec l			;c62f	2d 	- 
	ld a,090h		;c630	3e 90 	> . 
	or (hl)			;c632	b6 	. 
	ld (hl),a			;c633	77 	w 
lc634h:
	ld a,(07f11h)		;c634	3a 11 7f 	: .  
	and 00fh		;c637	e6 0f 	. . 
	jr z,lc63eh		;c639	28 03 	( . 
	call sub_c1e6h		;c63b	cd e6 c1 	. . . 
lc63eh:
	call 08053h		;c63e	cd 53 80 	. S . 
	ld a,(07f1ah)		;c641	3a 1a 7f 	: .  
	or 010h		;c644	f6 10 	. . 
	ld (07f1ah),a		;c646	32 1a 7f 	2 .  
	call sub_c1c3h		;c649	cd c3 c1 	. . . 
	call sub_c34ch		;c64c	cd 4c c3 	. L . 
	ld a,(07f31h)		;c64f	3a 31 7f 	: 1  
	and 0cfh		;c652	e6 cf 	. . 
	ld (07f31h),a		;c654	32 31 7f 	2 1  
	ld a,01ah		;c657	3e 1a 	> . 
	ld (07f08h),a		;c659	32 08 7f 	2 .  
lc65ch:
	ld b,007h		;c65c	06 07 	. . 
	ld hl,07f1fh		;c65e	21 1f 7f 	! .  
	ld de,07f17h		;c661	11 17 7f 	. .  
	and a			;c664	a7 	. 
lc665h:
	ld a,(de)			;c665	1a 	. 
	sbc a,(hl)			;c666	9e 	. 
	daa			;c667	27 	' 
	ld (de),a			;c668	12 	. 
	dec e			;c669	1d 	. 
	dec l			;c66a	2d 	- 
	djnz lc665h		;c66b	10 f8 	. . 
	jr c,lc691h		;c66d	38 22 	8 " 
lc66fh:
	ld a,(07f08h)		;c66f	3a 08 7f 	: .  
	ld l,a			;c672	6f 	o 
	sub 019h		;c673	d6 19 	. . 
	ld b,a			;c675	47 	G 
	ld h,07fh		;c676	26 7f 	&  
	ld c,002h		;c678	0e 02 	. . 
	ld a,(07f31h)		;c67a	3a 31 7f 	: 1  
	and 010h		;c67d	e6 10 	. . 
	jr nz,lc683h		;c67f	20 02 	  . 
	ld c,020h		;c681	0e 20 	.   
lc683h:
	ld a,c			;c683	79 	y 
	add a,(hl)			;c684	86 	. 
	daa			;c685	27 	' 
	ld (hl),a			;c686	77 	w 
lc687h:
	ld a,000h		;c687	3e 00 	> . 
	dec l			;c689	2d 	- 
	adc a,(hl)			;c68a	8e 	. 
	daa			;c68b	27 	' 
	ld (hl),a			;c68c	77 	w 
	djnz lc687h		;c68d	10 f8 	. . 
	jr lc65ch		;c68f	18 cb 	. . 
lc691h:
	ld hl,07f31h		;c691	21 31 7f 	! 1  
	bit 5,(hl)		;c694	cb 6e 	. n 
	jr z,lc6a4h		;c696	28 0c 	( . 
	res 5,(hl)		;c698	cb ae 	. . 
	ld a,(07f11h)		;c69a	3a 11 7f 	: .  
	and 00fh		;c69d	e6 0f 	. . 
	ld (07f11h),a		;c69f	32 11 7f 	2 .  
	jr lc66fh		;c6a2	18 cb 	. . 
lc6a4h:
	call sub_c3cch		;c6a4	cd cc c3 	. . . 
	ld a,(07f08h)		;c6a7	3a 08 7f 	: .  
	ld hl,07f31h		;c6aa	21 31 7f 	! 1  
	bit 4,(hl)		;c6ad	cb 66 	. f 
	jr z,lc6e8h		;c6af	28 37 	( 7 
	res 4,(hl)		;c6b1	cb a6 	. . 
	ld l,a			;c6b3	6f 	o 
	ld h,07fh		;c6b4	26 7f 	&  
	ld a,(hl)			;c6b6	7e 	~ 
	sub 001h		;c6b7	d6 01 	. . 
	ld (hl),a			;c6b9	77 	w 
	inc l			;c6ba	2c 	, 
	set 4,(hl)		;c6bb	cb e6 	. . 
	ld a,(07f08h)		;c6bd	3a 08 7f 	: .  
	inc a			;c6c0	3c 	< 
	ld (07f08h),a		;c6c1	32 08 7f 	2 .  
	cp 020h		;c6c4	fe 20 	.   
	jr nz,lc6f3h		;c6c6	20 2b 	  + 
	call sub_c279h		;c6c8	cd 79 c2 	. y . 
	call sub_c3cch		;c6cb	cd cc c3 	. . . 
	call sub_c3cch		;c6ce	cd cc c3 	. . . 
	call sub_c3cch		;c6d1	cd cc c3 	. . . 
	call sub_c3cch		;c6d4	cd cc c3 	. . . 
	ld a,(07f0ah)		;c6d7	3a 0a 7f 	: .  
	and 0f0h		;c6da	e6 f0 	. . 
	ld b,a			;c6dc	47 	G 
	ld hl,07f11h		;c6dd	21 11 7f 	! .  
	ld a,(hl)			;c6e0	7e 	~ 
	and 00fh		;c6e1	e6 0f 	. . 
	or b			;c6e3	b0 	. 
	ld (hl),a			;c6e4	77 	w 
	jp 082e9h		;c6e5	c3 e9 82 	. . . 
lc6e8h:
	set 4,(hl)		;c6e8	cb e6 	. . 
	ld l,a			;c6ea	6f 	o 
	ld h,07fh		;c6eb	26 7f 	&  
	ld a,(hl)			;c6ed	7e 	~ 
	sub 010h		;c6ee	d6 10 	. . 
	ld (hl),a			;c6f0	77 	w 
	set 0,(hl)		;c6f1	cb c6 	. . 
lc6f3h:
	ld a,(07f11h)		;c6f3	3a 11 7f 	: .  
	and 00fh		;c6f6	e6 0f 	. . 
	jr z,lc6ffh		;c6f8	28 05 	( . 
	ld hl,07f31h		;c6fa	21 31 7f 	! 1  
	set 5,(hl)		;c6fd	cb ee 	. . 
lc6ffh:
	ld b,007h		;c6ff	06 07 	. . 
	ld hl,07f17h		;c701	21 17 7f 	! .  
	xor a			;c704	af 	. 
lc705h:
	rld		;c705	ed 6f 	. o 
	dec l			;c707	2d 	- 
	djnz lc705h		;c708	10 fb 	. . 
	ld l,011h		;c70a	2e 11 	. . 
	ld a,(hl)			;c70c	7e 	~ 
	and 00fh		;c70d	e6 0f 	. . 
	ld (hl),a			;c70f	77 	w 
	jp lc65ch		;c710	c3 5c c6 	. \ . 
sub_c713h:
	ld hl,07f30h		;c713	21 30 7f 	! 0  
	res 0,(hl)		;c716	cb 86 	. . 
	and a			;c718	a7 	. 
	rra			;c719	1f 	. 
	jr nc,lc71eh		;c71a	30 02 	0 . 
	set 0,(hl)		;c71c	cb c6 	. . 
lc71eh:
	ld b,a			;c71e	47 	G 
	ld a,017h		;c71f	3e 17 	> . 
	sub b			;c721	90 	. 
	ld e,a			;c722	5f 	_ 
	ld d,07fh		;c723	16 7f 	.  
	add a,008h		;c725	c6 08 	. . 
	ld l,a			;c727	6f 	o 
	ld h,07fh		;c728	26 7f 	&  
	inc b			;c72a	04 	. 
	ld a,(07f30h)		;c72b	3a 30 7f 	: 0  
	bit 0,a		;c72e	cb 47 	. G 
	jr z,lc73ch		;c730	28 0a 	( . 
lc732h:
	ld a,(de)			;c732	1a 	. 
	ld c,(hl)			;c733	4e 	N 
	ld (hl),a			;c734	77 	w 
	ld a,c			;c735	79 	y 
	ld (de),a			;c736	12 	. 
	inc l			;c737	2c 	, 
	inc e			;c738	1c 	. 
	djnz lc732h		;c739	10 f7 	. . 
	ret			;c73b	c9 	. 
lc73ch:
	ld a,(hl)			;c73c	7e 	~ 
	push af			;c73d	f5 	. 
	push hl			;c73e	e5 	. 
	ld a,(hl)			;c73f	7e 	~ 
	and 00fh		;c740	e6 0f 	. . 
	ld (hl),a			;c742	77 	w 
lc743h:
	ld a,(de)			;c743	1a 	. 
	ld c,(hl)			;c744	4e 	N 
	ld (hl),a			;c745	77 	w 
	ld a,c			;c746	79 	y 
	ld (de),a			;c747	12 	. 
	inc l			;c748	2c 	, 
	inc e			;c749	1c 	. 
	djnz lc743h		;c74a	10 f7 	. . 
	pop hl			;c74c	e1 	. 
	pop af			;c74d	f1 	. 
	and 0f0h		;c74e	e6 f0 	. . 
	ld (hl),a			;c750	77 	w 
	ret			;c751	c9 	. 
sub_c752h:
	call 080cdh		;c752	cd cd 80 	. . . 
	call sub_c1c3h		;c755	cd c3 c1 	. . . 
	jr lc760h		;c758	18 06 	. . 
sub_c75ah:
	call 080cdh		;c75a	cd cd 80 	. . . 
	call sub_c1b4h		;c75d	cd b4 c1 	. . . 
lc760h:
	call 08062h		;c760	cd 62 80 	. b . 
	ld a,(07f10h)		;c763	3a 10 7f 	: .  
	and 0f0h		;c766	e6 f0 	. . 
	cp 090h		;c768	fe 90 	. . 
	jr nz,lc78dh		;c76a	20 21 	  ! 
	call sub_c1b4h		;c76c	cd b4 c1 	. . . 
	ld a,(07f10h)		;c76f	3a 10 7f 	: .  
	and 0f0h		;c772	e6 f0 	. . 
	cp 090h		;c774	fe 90 	. . 
	ld a,00ah		;c776	3e 0a 	> . 
	jr nz,lc7a5h		;c778	20 2b 	  + 
	ld hl,07f12h		;c77a	21 12 7f 	! .  
	ld de,07f1ah		;c77d	11 1a 7f 	. .  
	ld b,006h		;c780	06 06 	. . 
lc782h:
	ld c,(hl)			;c782	4e 	N 
	ld a,(de)			;c783	1a 	. 
	ld (hl),a			;c784	77 	w 
	ld a,c			;c785	79 	y 
	ld (de),a			;c786	12 	. 
	inc l			;c787	2c 	, 
	inc e			;c788	1c 	. 
	djnz lc782h		;c789	10 f7 	. . 
	jr lc7a8h		;c78b	18 1b 	. . 
lc78dh:
	cp 010h		;c78d	fe 10 	. . 
	jr z,lc7a8h		;c78f	28 17 	( . 
	ld a,(07f10h)		;c791	3a 10 7f 	: .  
	and 00fh		;c794	e6 0f 	. . 
	jr nz,lc7a8h		;c796	20 10 	  . 
	ld a,(07f11h)		;c798	3a 11 7f 	: .  
	and 0f0h		;c79b	e6 f0 	. . 
	rlca			;c79d	07 	. 
	rlca			;c79e	07 	. 
	rlca			;c79f	07 	. 
	rlca			;c7a0	07 	. 
	ld b,a			;c7a1	47 	G 
	ld a,009h		;c7a2	3e 09 	> . 
	sub b			;c7a4	90 	. 
lc7a5h:
	call sub_c713h		;c7a5	cd 13 c7 	. . . 
lc7a8h:
	call sub_c250h		;c7a8	cd 50 c2 	. P . 
	jp 082e9h		;c7ab	c3 e9 82 	. . . 
sub_c7aeh:
	call 08010h		;c7ae	cd 10 80 	. . . 
	ld hl,07903h		;c7b1	21 03 79 	! . y 
	bit 4,(hl)		;c7b4	cb 66 	. f 
	jr z,lc7ceh		;c7b6	28 16 	( . 
	bit 5,(hl)		;c7b8	cb 6e 	. n 
	jr nz,lc7c1h		;c7ba	20 05 	  . 
	call sub_c8f6h		;c7bc	cd f6 c8 	. . . 
	scf			;c7bf	37 	7 
	ret			;c7c0	c9 	. 
lc7c1h:
	ld hl,07f18h		;c7c1	21 18 7f 	! .  
	ld (hl),099h		;c7c4	36 99 	6 . 
	inc l			;c7c6	2c 	, 
	ld (hl),090h		;c7c7	36 90 	6 . 
	inc l			;c7c9	2c 	, 
	ld (hl),090h		;c7ca	36 90 	6 . 
	scf			;c7cc	37 	7 
	ret			;c7cd	c9 	. 
lc7ceh:
	and a			;c7ce	a7 	. 
	ret			;c7cf	c9 	. 
sub_c7d0h:
	ld hl,07f18h		;c7d0	21 18 7f 	! .  
	ld a,(hl)			;c7d3	7e 	~ 
	and 0f0h		;c7d4	e6 f0 	. . 
	jr nz,lc7f7h		;c7d6	20 1f 	  . 
	ld a,(hl)			;c7d8	7e 	~ 
	inc l			;c7d9	2c 	, 
	cp 001h		;c7da	fe 01 	. . 
	jr nz,lc7ech		;c7dc	20 0e 	  . 
	ld a,(hl)			;c7de	7e 	~ 
	and 0f0h		;c7df	e6 f0 	. . 
	cp 030h		;c7e1	fe 30 	. 0 
	jr nc,lc7f7h		;c7e3	30 12 	0 . 
	rlca			;c7e5	07 	. 
	rlca			;c7e6	07 	. 
	rlca			;c7e7	07 	. 
	rlca			;c7e8	07 	. 
	add a,00ah		;c7e9	c6 0a 	. . 
	ret			;c7eb	c9 	. 
lc7ech:
	or a			;c7ec	b7 	. 
	jr nz,lc7f7h		;c7ed	20 08 	  . 
	ld a,(hl)			;c7ef	7e 	~ 
	rlca			;c7f0	07 	. 
	rlca			;c7f1	07 	. 
	rlca			;c7f2	07 	. 
	rlca			;c7f3	07 	. 
	and 00fh		;c7f4	e6 0f 	. . 
	ret			;c7f6	c9 	. 
lc7f7h:
	ld a,00eh		;c7f7	3e 0e 	> . 
	ret			;c7f9	c9 	. 
sub_c7fah:
	ld hl,07f18h		;c7fa	21 18 7f 	! .  
	ld a,(hl)			;c7fd	7e 	~ 
	and 0ffh		;c7fe	e6 ff 	. . 
	jr nz,lc80fh		;c800	20 0d 	  . 
	inc l			;c802	2c 	, 
	ld a,(hl)			;c803	7e 	~ 
	and 0f0h		;c804	e6 f0 	. . 
	cp 080h		;c806	fe 80 	. . 
	jr nc,lc80fh		;c808	30 05 	0 . 
	rlca			;c80a	07 	. 
	rlca			;c80b	07 	. 
	rlca			;c80c	07 	. 
	rlca			;c80d	07 	. 
	ret			;c80e	c9 	. 
lc80fh:
	ld a,007h		;c80f	3e 07 	> . 
	ret			;c811	c9 	. 
sub_c812h:
	ld a,000h		;c812	3e 00 	> . 
	ld (07f0dh),a		;c814	32 0d 7f 	2 .  
	call 0805dh		;c817	cd 5d 80 	. ] . 
	jp 08053h		;c81a	c3 53 80 	. S . 
sub_c81dh:
	ld hl,07f30h		;c81d	21 30 7f 	! 0  
	set 3,(hl)		;c820	cb de 	. . 
	jr lc829h		;c822	18 05 	. . 
sub_c824h:
	ld hl,07f30h		;c824	21 30 7f 	! 0  
	res 3,(hl)		;c827	cb 9e 	. . 
lc829h:
	ld l,021h		;c829	2e 21 	. ! 
	ld a,(hl)			;c82b	7e 	~ 
	and 0f0h		;c82c	e6 f0 	. . 
	ld c,a			;c82e	4f 	O 
	ld a,(hl)			;c82f	7e 	~ 
	and 00fh		;c830	e6 0f 	. . 
	ld (hl),a			;c832	77 	w 
	ld l,020h		;c833	2e 20 	.   
	ld a,006h		;c835	3e 06 	> . 
	ld (07f00h),a		;c837	32 00 7f 	2 .  
	ld b,a			;c83a	47 	G 
	inc b			;c83b	04 	. 
	bit 4,(hl)		;c83c	cb 66 	. f 
	jr z,lc849h		;c83e	28 09 	( . 
	ld l,021h		;c840	2e 21 	. ! 
	ld a,000h		;c842	3e 00 	> . 
lc844h:
	rrd		;c844	ed 67 	. g 
	inc l			;c846	2c 	, 
	djnz lc844h		;c847	10 fb 	. . 
lc849h:
	ld l,020h		;c849	2e 20 	.   
	ld a,(hl)			;c84b	7e 	~ 
	rlca			;c84c	07 	. 
	rlca			;c84d	07 	. 
	rlca			;c84e	07 	. 
	rlca			;c84f	07 	. 
	and 00fh		;c850	e6 0f 	. . 
	rra			;c852	1f 	. 
	ld b,a			;c853	47 	G 
	ld a,(07f00h)		;c854	3a 00 7f 	: .  
	sub b			;c857	90 	. 
	ld (07f00h),a		;c858	32 00 7f 	2 .  
	add a,021h		;c85b	c6 21 	. ! 
	ld l,a			;c85d	6f 	o 
	ld a,(07f19h)		;c85e	3a 19 7f 	: .  
	and 0f0h		;c861	e6 f0 	. . 
	ld b,a			;c863	47 	G 
	push bc			;c864	c5 	. 
	ld a,(07f00h)		;c865	3a 00 7f 	: .  
	inc a			;c868	3c 	< 
	ld b,a			;c869	47 	G 
	ld de,07f1fh		;c86a	11 1f 7f 	. .  
	ld a,(07f30h)		;c86d	3a 30 7f 	: 0  
	bit 3,a		;c870	cb 5f 	. _ 
	jr z,lc87fh		;c872	28 0b 	( . 
	and a			;c874	a7 	. 
lc875h:
	ld a,(de)			;c875	1a 	. 
	adc a,(hl)			;c876	8e 	. 
	daa			;c877	27 	' 
	ld (de),a			;c878	12 	. 
	dec l			;c879	2d 	- 
	dec e			;c87a	1d 	. 
	djnz lc875h		;c87b	10 f8 	. . 
	jr lc888h		;c87d	18 09 	. . 
lc87fh:
	and a			;c87f	a7 	. 
lc880h:
	ld a,(de)			;c880	1a 	. 
	sbc a,(hl)			;c881	9e 	. 
	daa			;c882	27 	' 
	ld (de),a			;c883	12 	. 
	dec l			;c884	2d 	- 
	dec e			;c885	1d 	. 
	djnz lc880h		;c886	10 f8 	. . 
lc888h:
	jr nc,lc8aah		;c888	30 20 	0   
	ld a,e			;c88a	7b 	{ 
	sub 019h		;c88b	d6 19 	. . 
	ld b,a			;c88d	47 	G 
	inc b			;c88e	04 	. 
	ld a,(07f30h)		;c88f	3a 30 7f 	: 0  
	bit 3,a		;c892	cb 5f 	. _ 
	jr z,lc8a1h		;c894	28 0b 	( . 
	scf			;c896	37 	7 
lc897h:
	ld a,(de)			;c897	1a 	. 
	adc a,000h		;c898	ce 00 	. . 
	daa			;c89a	27 	' 
	ld (de),a			;c89b	12 	. 
	dec e			;c89c	1d 	. 
	djnz lc897h		;c89d	10 f8 	. . 
	jr lc8aah		;c89f	18 09 	. . 
lc8a1h:
	scf			;c8a1	37 	7 
lc8a2h:
	ld a,(de)			;c8a2	1a 	. 
	sbc a,000h		;c8a3	de 00 	. . 
	daa			;c8a5	27 	' 
	ld (de),a			;c8a6	12 	. 
	dec e			;c8a7	1d 	. 
	djnz lc8a2h		;c8a8	10 f8 	. . 
lc8aah:
	pop bc			;c8aa	c1 	. 
	ld l,019h		;c8ab	2e 19 	. . 
	ld a,(hl)			;c8ad	7e 	~ 
	and 00fh		;c8ae	e6 0f 	. . 
	or b			;c8b0	b0 	. 
	ld (hl),a			;c8b1	77 	w 
	ld l,021h		;c8b2	2e 21 	. ! 
	ld a,(hl)			;c8b4	7e 	~ 
	or c			;c8b5	b1 	. 
	ld (hl),a			;c8b6	77 	w 
	ret			;c8b7	c9 	. 
sub_c8b8h:
	add a,00dh		;c8b8	c6 0d 	. . 
	cp 014h		;c8ba	fe 14 	. . 
	jr c,lc8c8h		;c8bc	38 0a 	8 . 
	ld a,013h		;c8be	3e 13 	> . 
	jr lc8c8h		;c8c0	18 06 	. . 
sub_c8c2h:
	cp 00dh		;c8c2	fe 0d 	. . 
lc8c4h:
	jr c,lc8c8h		;c8c4	38 02 	8 . 
	ld a,00ch		;c8c6	3e 0c 	> . 
lc8c8h:
	add a,a			;c8c8	87 	. 
	ld b,a			;c8c9	47 	G 
	add a,a			;c8ca	87 	. 
	add a,b			;c8cb	80 	. 
	ld c,a			;c8cc	4f 	O 
	ld b,000h		;c8cd	06 00 	. . 
	ld hl,lc900h		;c8cf	21 00 c9 	! . . 
	add hl,bc			;c8d2	09 	. 
	ld de,07f1ah		;c8d3	11 1a 7f 	. .  
	ld bc,00006h		;c8d6	01 06 00 	. . . 
	ldir		;c8d9	ed b0 	. . 
	ld e,019h		;c8db	1e 19 	. . 
	ld a,(de)			;c8dd	1a 	. 
	and 0f0h		;c8de	e6 f0 	. . 
	ld (de),a			;c8e0	12 	. 
	ret			;c8e1	c9 	. 
sub_c8e2h:
	ld hl,0c978h		;c8e2	21 78 c9 	! x . 
lc8e5h:
	ld de,07f18h		;c8e5	11 18 7f 	. .  
	ld bc,00008h		;c8e8	01 08 00 	. . . 
	ldir		;c8eb	ed b0 	. . 
	ld a,(07f31h)		;c8ed	3a 31 7f 	: 1  
	and 0fdh		;c8f0	e6 fd 	. . 
	ld (07f31h),a		;c8f2	32 31 7f 	2 1  
	ret			;c8f5	c9 	. 
sub_c8f6h:
	ld hl,lc980h		;c8f6	21 80 c9 	! . . 
	jr lc8e5h		;c8f9	18 ea 	. . 
lc8fbh:
	ld hl,0c988h		;c8fb	21 88 c9 	! . . 
	jr lc8e5h		;c8fe	18 e5 	. . 
lc900h:
	jr nc,lc912h		;c900	30 10 	0 . 
	add hl,hl			;c902	29 	) 
	sbc a,c			;c903	99 	. 
	ld d,(hl)			;c904	56 	V 
	ld h,h			;c905	64 	d 
	ld b,c			;c906	41 	A 
	add hl,sp			;c907	39 	9 
	ld h,085h		;c908	26 85 	& . 
	dec d			;c90a	15 	. 
	add a,d			;c90b	82 	. 
	ld b,e			;c90c	43 	C 
	ld hl,03737h		;c90d	21 37 37 	! 7 7 
	add a,d			;c910	82 	. 
	ld h,h			;c911	64 	d 
lc912h:
	ld b,e			;c912	43 	C 
	ld b,b			;c913	40 	@ 
	ld (hl),a			;c914	77 	w 
	ld b,a			;c915	47 	G 
	sub e			;c916	93 	. 
	add hl,de			;c917	19 	. 
	ld b,e			;c918	43 	C 
	ld b,d			;c919	42 	B 
	ld (hl),d			;c91a	72 	r 
	halt			;c91b	76 	v 
	add a,(hl)			;c91c	86 	. 
	daa			;c91d	27 	' 
	ld b,e			;c91e	43 	C 
	ld b,d			;c91f	42 	B 
	sub d			;c920	92 	. 
	ld sp,04504h		;c921	31 04 45 	1 . E 
	ld b,e			;c924	43 	C 
	ld b,d			;c925	42 	B 
	sub h			;c926	94 	. 
	ld h,047h		;c927	26 47 	& G 
	ld d,(hl)			;c929	56 	V 
	ld b,e			;c92a	43 	C 
	ld b,d			;c92b	42 	B 
	sub h			;c92c	94 	. 
	ld b,(hl)			;c92d	46 	F 
	ld bc,04389h		;c92e	01 89 43 	. . C 
	ld b,d			;c931	42 	B 
	sub h			;c932	94 	. 
	ld b,a			;c933	47 	G 
	sub a			;c934	97 	. 
	ld (04243h),a		;c935	32 43 42 	2 C B 
	sub h			;c938	94 	. 
	ld c,b			;c939	48 	H 
	ld d,086h		;c93a	16 86 	. . 
	ld b,e			;c93c	43 	C 
	ld b,d			;c93d	42 	B 
	sub h			;c93e	94 	. 
	ld c,b			;c93f	48 	H 
	jr lc8c4h		;c940	18 82 	. . 
	ld b,e			;c942	43 	C 
	ld b,d			;c943	42 	B 
	sub h			;c944	94 	. 
	ld c,b			;c945	48 	H 
	add hl,de			;c946	19 	. 
	ld bc,04243h		;c947	01 43 42 	. C B 
	sub h			;c94a	94 	. 
	ld c,b			;c94b	48 	H 
	add hl,de			;c94c	19 	. 
	inc bc			;c94d	03 	. 
	ld b,l			;c94e	45 	E 
	nop			;c94f	00 	. 
	nop			;c950	00 	. 
	nop			;c951	00 	. 
	nop			;c952	00 	. 
	nop			;c953	00 	. 
	ld d,a			;c954	57 	W 
	djnz lc9b0h		;c955	10 59 	. Y 
	ld sp,05037h		;c957	31 37 50 	1 7 P 
	ld d,a			;c95a	57 	W 
	add hl,hl			;c95b	29 	) 
	jr c,$+107		;c95c	38 69 	8 i 
	halt			;c95e	76 	v 
	add a,e			;c95f	83 	. 
	ld d,a			;c960	57 	W 
	add hl,hl			;c961	29 	) 
	ld d,a			;c962	57 	W 
	ld h,b			;c963	60 	` 
	ld b,c			;c964	41 	A 
	ld b,l			;c965	45 	E 
	ld d,a			;c966	57 	W 
	add hl,hl			;c967	29 	) 
	ld d,a			;c968	57 	W 
	ld a,c			;c969	79 	y 
	ld (05721h),a		;c96a	32 21 57 	2 ! W 
	add hl,hl			;c96d	29 	) 
	ld d,a			;c96e	57 	W 
	ld a,c			;c96f	79 	y 
	ld d,c			;c970	51 	Q 
	ld de,02957h		;c971	11 57 29 	. W ) 
	ld d,a			;c974	57 	W 
	ld a,c			;c975	79 	y 
	ld d,c			;c976	51 	Q 
	ld sp,09099h		;c977	31 99 90 	1 . . 
	ld b,e			;c97a	43 	C 
	ld b,d			;c97b	42 	B 
	sub h			;c97c	94 	. 
	ld c,b			;c97d	48 	H 
	add hl,de			;c97e	19 	. 
	inc bc			;c97f	03 	. 
lc980h:
	nop			;c980	00 	. 
	djnz $+89		;c981	10 57 	. W 
	add hl,hl			;c983	29 	) 
	ld d,a			;c984	57 	W 
	ld a,c			;c985	79 	y 
	ld d,c			;c986	51 	Q 
	ld sp,00000h		;c987	31 00 00 	1 . . 
	ld sp,05941h		;c98a	31 41 59 	1 A Y 
	ld h,053h		;c98d	26 53 	& S 
	ld e,c			;c98f	59 	Y 
sub_c990h:
	ld b,000h		;c990	06 00 	. . 
	ld hl,07964h		;c992	21 64 79 	! d y 
	set 7,(hl)		;c995	cb fe 	. . 
	jr lc9a4h		;c997	18 0b 	. . 
sub_c999h:
	ld b,040h		;c999	06 40 	. @ 
	jr lc99fh		;c99b	18 02 	. . 
sub_c99dh:
	ld b,000h		;c99d	06 00 	. . 
lc99fh:
	ld hl,07964h		;c99f	21 64 79 	! d y 
	res 7,(hl)		;c9a2	cb be 	. . 
lc9a4h:
	ld hl,07f31h		;c9a4	21 31 7f 	! 1  
	ld a,(hl)			;c9a7	7e 	~ 
	and 03fh		;c9a8	e6 3f 	. ? 
	or b			;c9aa	b0 	. 
	ld (hl),a			;c9ab	77 	w 
	ld l,031h		;c9ac	2e 31 	. 1 
	bit 0,(hl)		;c9ae	cb 46 	. F 
lc9b0h:
	jp nz,083ach		;c9b0	c2 ac 83 	. . . 
	ld l,012h		;c9b3	2e 12 	. . 
	ld a,0f0h		;c9b5	3e f0 	> . 
	and (hl)			;c9b7	a6 	. 
	jp z,083ach		;c9b8	ca ac 83 	. . . 
	ld l,010h		;c9bb	2e 10 	. . 
	ld a,0f0h		;c9bd	3e f0 	> . 
	and (hl)			;c9bf	a6 	. 
	jr z,lc9cah		;c9c0	28 08 	( . 
	ld l,031h		;c9c2	2e 31 	. 1 
	set 7,(hl)		;c9c4	cb fe 	. . 
	call sub_c576h		;c9c6	cd 76 c5 	. v . 
	ret c			;c9c9	d8 	. 
lc9cah:
	call sub_c23ch		;c9ca	cd 3c c2 	. < . 
	call 08078h		;c9cd	cd 78 80 	. x . 
	ld a,(07f12h)		;c9d0	3a 12 7f 	: .  
	sub 010h		;c9d3	d6 10 	. . 
	ld (07f12h),a		;c9d5	32 12 7f 	2 .  
	call 082e9h		;c9d8	cd e9 82 	. . . 
	ret c			;c9db	d8 	. 
	call sub_c258h		;c9dc	cd 58 c2 	. X . 
	call sub_c299h		;c9df	cd 99 c2 	. . . 
	call sub_d40bh		;c9e2	cd 0b d4 	. . . 
	call sub_c1c3h		;c9e5	cd c3 c1 	. . . 
	call 082e9h		;c9e8	cd e9 82 	. . . 
	ret c			;c9eb	d8 	. 
	call 080cdh		;c9ec	cd cd 80 	. . . 
	call 08024h		;c9ef	cd 24 80 	. $ . 
	ld de,07f28h		;c9f2	11 28 7f 	. (  
	ld hl,07f11h		;c9f5	21 11 7f 	! .  
	ld b,(hl)			;c9f8	46 	F 
	ld a,(de)			;c9f9	1a 	. 
	and 00fh		;c9fa	e6 0f 	. . 
	ld (hl),a			;c9fc	77 	w 
	ld a,b			;c9fd	78 	x 
	ld (de),a			;c9fe	12 	. 
	inc l			;c9ff	2c 	, 
	inc e			;ca00	1c 	. 
	ld b,(hl)			;ca01	46 	F 
	ld a,(de)			;ca02	1a 	. 
	and 0f0h		;ca03	e6 f0 	. . 
	ld (hl),a			;ca05	77 	w 
	ld a,b			;ca06	78 	x 
	ld (de),a			;ca07	12 	. 
	call 082e9h		;ca08	cd e9 82 	. . . 
	ret c			;ca0b	d8 	. 
	ld a,(07964h)		;ca0c	3a 64 79 	: d y 
	bit 7,a		;ca0f	cb 7f 	.  
	jr z,lca30h		;ca11	28 1d 	( . 
	call 08083h		;ca13	cd 83 80 	. . . 
	call 0829ah		;ca16	cd 9a 82 	. . . 
	call sub_c4ffh		;ca19	cd ff c4 	. . . 
	ret c			;ca1c	d8 	. 
	call 08093h		;ca1d	cd 93 80 	. . . 
	call 08145h		;ca20	cd 45 81 	. E . 
	call 08083h		;ca23	cd 83 80 	. . . 
	call 0829ah		;ca26	cd 9a 82 	. . . 
	call sub_c4ffh		;ca29	cd ff c4 	. . . 
	ret c			;ca2c	d8 	. 
	call 08093h		;ca2d	cd 93 80 	. . . 
lca30h:
	call sub_c488h		;ca30	cd 88 c4 	. . . 
	ret c			;ca33	d8 	. 
	ld a,(07f31h)		;ca34	3a 31 7f 	: 1  
	bit 7,a		;ca37	cb 7f 	.  
	jr z,lca3eh		;ca39	28 03 	( . 
	call 081e8h		;ca3b	cd e8 81 	. . . 
lca3eh:
	ld a,(07f31h)		;ca3e	3a 31 7f 	: 1  
	bit 6,a		;ca41	cb 77 	. w 
	jr z,lca4fh		;ca43	28 0a 	( . 
	call sub_c8e2h		;ca45	cd e2 c8 	. . . 
	call 08145h		;ca48	cd 45 81 	. E . 
	call sub_c579h		;ca4b	cd 79 c5 	. y . 
	ret c			;ca4e	d8 	. 
lca4fh:
	ld a,(07f31h)		;ca4f	3a 31 7f 	: 1  
	and 03fh		;ca52	e6 3f 	. ? 
	ld (07f31h),a		;ca54	32 31 7f 	2 1  
	ret			;ca57	c9 	. 
sub_ca58h:
	call 0818ah		;ca58	cd 8a 81 	. . . 
	call 081bbh		;ca5b	cd bb 81 	. . . 
	ret c			;ca5e	d8 	. 
	call sub_c752h		;ca5f	cd 52 c7 	. R . 
	ret c			;ca62	d8 	. 
	ld a,(07f31h)		;ca63	3a 31 7f 	: 1  
	bit 0,a		;ca66	cb 47 	. G 
	jr z,lca83h		;ca68	28 19 	( . 
	call 082d2h		;ca6a	cd d2 82 	. . . 
	jr c,lca83h		;ca6d	38 14 	8 . 
	call 080a7h		;ca6f	cd a7 80 	. . . 
	call 082e9h		;ca72	cd e9 82 	. . . 
	ret c			;ca75	d8 	. 
	call 0803eh		;ca76	cd 3e 80 	. > . 
	call 08145h		;ca79	cd 45 81 	. E . 
	call sub_c485h		;ca7c	cd 85 c4 	. . . 
	ret c			;ca7f	d8 	. 
lca80h:
	jp 081ach		;ca80	c3 ac 81 	. . . 
lca83h:
	call 080a7h		;ca83	cd a7 80 	. . . 
	call 082e9h		;ca86	cd e9 82 	. . . 
	jr lca80h		;ca89	18 f5 	. . 
lca8bh:
	ld a,(07f11h)		;ca8b	3a 11 7f 	: .  
	and 0f7h		;ca8e	e6 f7 	. . 
	ld (07f11h),a		;ca90	32 11 7f 	2 .  
	ret			;ca93	c9 	. 
sub_ca94h:
	call 08108h		;ca94	cd 08 81 	. . . 
	call sub_c4fch		;ca97	cd fc c4 	. . . 
	ret c			;ca9a	d8 	. 
	call 08093h		;ca9b	cd 93 80 	. . . 
	jp sub_c4ffh		;ca9e	c3 ff c4 	. . . 
sub_caa1h:
	ld hl,07964h		;caa1	21 64 79 	! d y 
	bit 0,(hl)		;caa4	cb 46 	. F 
	jr nz,lcaadh		;caa6	20 05 	  . 
	res 4,(hl)		;caa8	cb a6 	. . 
	jp lcacfh		;caaa	c3 cf ca 	. . . 
lcaadh:
	bit 4,(hl)		;caad	cb 66 	. f 
	jr nz,lcac2h		;caaf	20 11 	  . 
	call 0be17h		;cab1	cd 17 be 	. . . 
	ld hl,079f8h		;cab4	21 f8 79 	! . y 
	res 3,(hl)		;cab7	cb 9e 	. . 
	ld l,0f9h		;cab9	2e f9 	. . 
	ld a,00bh		;cabb	3e 0b 	> . 
	ld (hl),a			;cabd	77 	w 
	jp c,0834ah		;cabe	da 4a 83 	. J . 
	ret			;cac1	c9 	. 
lcac2h:
	ld hl,07988h		;cac2	21 88 79 	! . y 
	ld de,07f10h		;cac5	11 10 7f 	. .  
	ld bc,00008h		;cac8	01 08 00 	. . . 
	ldir		;cacb	ed b0 	. . 
	and a			;cacd	a7 	. 
	ret			;cace	c9 	. 
lcacfh:
	ld hl,079f8h		;cacf	21 f8 79 	! . y 
	ld de,07f24h		;cad2	11 24 7f 	. $  
	ld bc,00004h		;cad5	01 04 00 	. . . 
	ldir		;cad8	ed b0 	. . 
	ld hl,07f25h		;cada	21 25 7f 	! %  
	ld a,(hl)			;cadd	7e 	~ 
	or a			;cade	b7 	. 
	jr nz,lcae8h		;cadf	20 07 	  . 
	ld l,026h		;cae1	2e 26 	. & 
	ld a,(hl)			;cae3	7e 	~ 
	or a			;cae4	b7 	. 
	jr nz,lcafch		;cae5	20 15 	  . 
	ret			;cae7	c9 	. 
lcae8h:
	call sub_f084h		;cae8	cd 84 f0 	. . . 
	ld hl,07f24h		;caeb	21 24 7f 	! $  
	bit 3,(hl)		;caee	cb 5e 	. ^ 
	jr nz,lcaffh		;caf0	20 0d 	  . 
	ld l,019h		;caf2	2e 19 	. . 
	bit 6,(hl)		;caf4	cb 76 	. v 
	jr nz,lcb04h		;caf6	20 0c 	  . 
	cp 00ah		;caf8	fe 0a 	. . 
	jr c,lcb04h		;cafa	38 08 	8 . 
lcafch:
	jp 0834ah		;cafc	c3 4a 83 	. J . 
lcaffh:
	call sub_cb90h		;caff	cd 90 cb 	. . . 
	jr lcb42h		;cb02	18 3e 	. > 
lcb04h:
	ld hl,07f25h		;cb04	21 25 7f 	! %  
	ld a,(hl)			;cb07	7e 	~ 
	cp 001h		;cb08	fe 01 	. . 
	jr z,lcafch		;cb0a	28 f0 	( . 
	call sub_cb90h		;cb0c	cd 90 cb 	. . . 
	ld hl,07f10h		;cb0f	21 10 7f 	! .  
	ld a,(hl)			;cb12	7e 	~ 
	and 0ffh		;cb13	e6 ff 	. . 
	jr z,lcb38h		;cb15	28 21 	( ! 
	cp 099h		;cb17	fe 99 	. . 
	jr nz,lcafch		;cb19	20 e1 	  . 
	ld c,010h		;cb1b	0e 10 	. . 
lcb1dh:
	ld hl,07f12h		;cb1d	21 12 7f 	! .  
	ld b,006h		;cb20	06 06 	. . 
	ld a,000h		;cb22	3e 00 	> . 
lcb24h:
	rrd		;cb24	ed 67 	. g 
	inc l			;cb26	2c 	, 
	djnz lcb24h		;cb27	10 fb 	. . 
	ld a,c			;cb29	79 	y 
	ld hl,07f11h		;cb2a	21 11 7f 	! .  
	add a,(hl)			;cb2d	86 	. 
	daa			;cb2e	27 	' 
	ld (hl),a			;cb2f	77 	w 
	dec l			;cb30	2d 	- 
	ld a,000h		;cb31	3e 00 	> . 
	adc a,(hl)			;cb33	8e 	. 
	daa			;cb34	27 	' 
	ld (hl),a			;cb35	77 	w 
	jr nc,lcb1dh		;cb36	30 e5 	0 . 
lcb38h:
	ld hl,07f11h		;cb38	21 11 7f 	! .  
	ld a,(07f20h)		;cb3b	3a 20 7f 	:    
	sub (hl)			;cb3e	96 	. 
	ld (07f20h),a		;cb3f	32 20 7f 	2    
lcb42h:
	ld hl,07f25h		;cb42	21 25 7f 	! %  
	ld a,(hl)			;cb45	7e 	~ 
	rrca			;cb46	0f 	. 
	rrca			;cb47	0f 	. 
	rrca			;cb48	0f 	. 
	rrca			;cb49	0f 	. 
	ld b,a			;cb4a	47 	G 
	ld l,020h		;cb4b	2e 20 	.   
	ld a,(hl)			;cb4d	7e 	~ 
	and 0f0h		;cb4e	e6 f0 	. . 
	add a,b			;cb50	80 	. 
	ld b,a			;cb51	47 	G 
	jr c,lcb58h		;cb52	38 04 	8 . 
	cp 0c0h		;cb54	fe c0 	. . 
	jr c,lcafch		;cb56	38 a4 	8 . 
lcb58h:
	ld l,026h		;cb58	2e 26 	. & 
	ld a,(hl)			;cb5a	7e 	~ 
	or a			;cb5b	b7 	. 
	jr z,lcb8ah		;cb5c	28 2c 	( , 
	dec a			;cb5e	3d 	= 
	rrca			;cb5f	0f 	. 
	rrca			;cb60	0f 	. 
	rrca			;cb61	0f 	. 
	rrca			;cb62	0f 	. 
	ld c,a			;cb63	4f 	O 
	ld l,020h		;cb64	2e 20 	.   
	ld a,(hl)			;cb66	7e 	~ 
	and 0f0h		;cb67	e6 f0 	. . 
	ld b,a			;cb69	47 	G 
	ld a,c			;cb6a	79 	y 
	sub b			;cb6b	90 	. 
	jr nc,lcafch		;cb6c	30 8e 	0 . 
	ld l,026h		;cb6e	2e 26 	. & 
	ld a,(hl)			;cb70	7e 	~ 
	dec a			;cb71	3d 	= 
	ld (079e0h),a		;cb72	32 e0 79 	2 . y 
	call sub_c3f6h		;cb75	cd f6 c3 	. . . 
	ld hl,07f12h		;cb78	21 12 7f 	! .  
	ld a,(hl)			;cb7b	7e 	~ 
	and 0f0h		;cb7c	e6 f0 	. . 
	jr z,lcb8ah		;cb7e	28 0a 	( . 
	call sub_c1e6h		;cb80	cd e6 c1 	. . . 
	call 082e9h		;cb83	cd e9 82 	. . . 
	ret c			;cb86	d8 	. 
	jp lcae8h		;cb87	c3 e8 ca 	. . . 
lcb8ah:
	call sub_c1e6h		;cb8a	cd e6 c1 	. . . 
	jp 082e9h		;cb8d	c3 e9 82 	. . . 
sub_cb90h:
	ld hl,07f20h		;cb90	21 20 7f 	!    
	ld a,0abh		;cb93	3e ab 	> . 
	ld (hl),a			;cb95	77 	w 
	jp 082c1h		;cb96	c3 c1 82 	. . . 
sub_cb99h:
	call sub_cc39h		;cb99	cd 39 cc 	. 9 . 
	ret c			;cb9c	d8 	. 
	ld a,(07f31h)		;cb9d	3a 31 7f 	: 1  
	bit 0,a		;cba0	cb 47 	. G 
	jp nz,083ach		;cba2	c2 ac 83 	. . . 
	ld a,(07f13h)		;cba5	3a 13 7f 	: .  
	cp 0f0h		;cba8	fe f0 	. . 
	jr nc,lcbb9h		;cbaa	30 0d 	0 . 
	call sub_c260h		;cbac	cd 60 c2 	. ` . 
lcbafh:
	call 08062h		;cbaf	cd 62 80 	. b . 
	ld a,01bh		;cbb2	3e 1b 	> . 
	ld (07f08h),a		;cbb4	32 08 7f 	2 .  
	jr lcbe8h		;cbb7	18 2f 	. / 
lcbb9h:
	call 08053h		;cbb9	cd 53 80 	. S . 
	call sub_cc6ah		;cbbc	cd 6a cc 	. j . 
	ld hl,07f31h		;cbbf	21 31 7f 	! 1  
	set 0,(hl)		;cbc2	cb c6 	. . 
	jr lcbafh		;cbc4	18 e9 	. . 
lcbc6h:
	and 00fh		;cbc6	e6 0f 	. . 
	or (hl)			;cbc8	b6 	. 
	ld (hl),a			;cbc9	77 	w 
lcbcah:
	ld a,(07f03h)		;cbca	3a 03 7f 	: .  
	sub 001h		;cbcd	d6 01 	. . 
	ld (07f03h),a		;cbcf	32 03 7f 	2 .  
	jr nc,lcbedh		;cbd2	30 19 	0 . 
	ld hl,07f18h		;cbd4	21 18 7f 	! .  
	ld a,(hl)			;cbd7	7e 	~ 
	sub 010h		;cbd8	d6 10 	. . 
	ld (hl),a			;cbda	77 	w 
	jr c,lcc36h		;cbdb	38 59 	8 Y 
	bit 4,(hl)		;cbdd	cb 66 	. f 
	jr z,lcbe8h		;cbdf	28 07 	( . 
	ld a,(07f08h)		;cbe1	3a 08 7f 	: .  
	inc a			;cbe4	3c 	< 
	ld (07f08h),a		;cbe5	32 08 7f 	2 .  
lcbe8h:
	ld a,003h		;cbe8	3e 03 	> . 
	ld (07f03h),a		;cbea	32 03 7f 	2 .  
lcbedh:
	ld hl,07f13h		;cbed	21 13 7f 	! .  
	ld de,07f23h		;cbf0	11 23 7f 	. #  
	ld bc,00005h		;cbf3	01 05 00 	. . . 
	ldir		;cbf6	ed b0 	. . 
	ld b,005h		;cbf8	06 05 	. . 
	ld de,07f27h		;cbfa	11 27 7f 	. '  
	ld hl,07f17h		;cbfd	21 17 7f 	! .  
	and a			;cc00	a7 	. 
	call lc3d5h		;cc01	cd d5 c3 	. . . 
	jp c,0834ah		;cc04	da 4a 83 	. J . 
	ld hl,07f18h		;cc07	21 18 7f 	! .  
	ld a,(hl)			;cc0a	7e 	~ 
	rrca			;cc0b	0f 	. 
	rrca			;cc0c	0f 	. 
	rrca			;cc0d	0f 	. 
	rrca			;cc0e	0f 	. 
	and a			;cc0f	a7 	. 
	rra			;cc10	1f 	. 
	ld a,(07f08h)		;cc11	3a 08 7f 	: .  
	ld l,a			;cc14	6f 	o 
	ld a,(hl)			;cc15	7e 	~ 
	jr nc,lcc25h		;cc16	30 0d 	0 . 
	and 0f0h		;cc18	e6 f0 	. . 
	add a,(hl)			;cc1a	86 	. 
	ld (hl),a			;cc1b	77 	w 
	jr nc,lcbcah		;cc1c	30 ac 	0 . 
lcc1eh:
	ld hl,07f17h		;cc1e	21 17 7f 	! .  
	set 0,(hl)		;cc21	cb c6 	. . 
	jr lcbcah		;cc23	18 a5 	. . 
lcc25h:
	ld b,a			;cc25	47 	G 
	ld a,(hl)			;cc26	7e 	~ 
	and 0f0h		;cc27	e6 f0 	. . 
	ld (hl),a			;cc29	77 	w 
	ld a,b			;cc2a	78 	x 
	rla			;cc2b	17 	. 
	bit 4,a		;cc2c	cb 67 	. g 
	jr z,lcbc6h		;cc2e	28 96 	( . 
	and 00fh		;cc30	e6 0f 	. . 
	or (hl)			;cc32	b6 	. 
	ld (hl),a			;cc33	77 	w 
	jr lcc1eh		;cc34	18 e8 	. . 
lcc36h:
	jp 082e9h		;cc36	c3 e9 82 	. . . 
sub_cc39h:
	call sub_c752h		;cc39	cd 52 c7 	. R . 
	ret c			;cc3c	d8 	. 
	ld a,(07f12h)		;cc3d	3a 12 7f 	: .  
	and 0f0h		;cc40	e6 f0 	. . 
	jp nz,083ach		;cc42	c2 ac 83 	. . . 
	call 080a7h		;cc45	cd a7 80 	. . . 
	ld a,(07f10h)		;cc48	3a 10 7f 	: .  
	and 00fh		;cc4b	e6 0f 	. . 
	jp nz,083ach		;cc4d	c2 ac 83 	. . . 
lcc50h:
	call sub_c1b4h		;cc50	cd b4 c1 	. . . 
	call 082c1h		;cc53	cd c1 82 	. . . 
	ld hl,07f19h		;cc56	21 19 7f 	! .  
	ld a,010h		;cc59	3e 10 	> . 
	add a,(hl)			;cc5b	86 	. 
	ld (hl),a			;cc5c	77 	w 
	cp 0b0h		;cc5d	fe b0 	. . 
	jr nz,lcc50h		;cc5f	20 ef 	  . 
	ld l,018h		;cc61	2e 18 	. . 
	ld a,(hl)			;cc63	7e 	~ 
	and 00fh		;cc64	e6 0f 	. . 
	or 090h		;cc66	f6 90 	. . 
	ld (hl),a			;cc68	77 	w 
	ret			;cc69	c9 	. 
sub_cc6ah:
	ld h,07fh		;cc6a	26 7f 	&  
	ld b,017h		;cc6c	06 17 	. . 
	ld a,000h		;cc6e	3e 00 	> . 
lcc70h:
	add a,0ffh		;cc70	c6 ff 	. . 
	ld l,b			;cc72	68 	h 
	ld e,(hl)			;cc73	5e 	^ 
	ld a,b			;cc74	78 	x 
	set 3,a		;cc75	cb df 	. . 
	ld l,a			;cc77	6f 	o 
	ld a,(hl)			;cc78	7e 	~ 
	sbc a,e			;cc79	9b 	. 
	ld (hl),a			;cc7a	77 	w 
	ld a,000h		;cc7b	3e 00 	> . 
	jr nc,lcc81h		;cc7d	30 02 	0 . 
	ld a,001h		;cc7f	3e 01 	> . 
lcc81h:
	dec b			;cc81	05 	. 
	ld d,a			;cc82	57 	W 
	ld a,012h		;cc83	3e 12 	> . 
	cp b			;cc85	b8 	. 
	ld a,d			;cc86	7a 	z 
	jr nz,lcc70h		;cc87	20 e7 	  . 
	ret			;cc89	c9 	. 
sub_cc8ah:
	call 081bbh		;cc8a	cd bb 81 	. . . 
	ret c			;cc8d	d8 	. 
	call sub_c752h		;cc8e	cd 52 c7 	. R . 
	ret c			;cc91	d8 	. 
	ld hl,07f31h		;cc92	21 31 7f 	! 1  
	bit 1,(hl)		;cc95	cb 4e 	. N 
	jp nz,083ach		;cc97	c2 ac 83 	. . . 
	ld l,012h		;cc9a	2e 12 	. . 
	ld a,(hl)			;cc9c	7e 	~ 
	and 0f0h		;cc9d	e6 f0 	. . 
	jp nz,083ach		;cc9f	c2 ac 83 	. . . 
	ld l,019h		;cca2	2e 19 	. . 
	ld a,(hl)			;cca4	7e 	~ 
	sub 020h		;cca5	d6 20 	.   
	daa			;cca7	27 	' 
	dec l			;cca8	2d 	- 
	ld a,(hl)			;cca9	7e 	~ 
	sbc a,000h		;ccaa	de 00 	. . 
	daa			;ccac	27 	' 
	jp nc,0834ah		;ccad	d2 4a 83 	. J . 
	call 080a7h		;ccb0	cd a7 80 	. . . 
	ld l,012h		;ccb3	2e 12 	. . 
	ld a,(hl)			;ccb5	7e 	~ 
	and 0f0h		;ccb6	e6 f0 	. . 
	jr z,lccceh		;ccb8	28 14 	( . 
	ld b,(hl)			;ccba	46 	F 
	dec l			;ccbb	2d 	- 
	ld a,(hl)			;ccbc	7e 	~ 
	and 0f0h		;ccbd	e6 f0 	. . 
	ld a,b			;ccbf	78 	x 
	jr nz,lccc6h		;ccc0	20 04 	  . 
	rrca			;ccc2	0f 	. 
	rrca			;ccc3	0f 	. 
	rrca			;ccc4	0f 	. 
	rrca			;ccc5	0f 	. 
lccc6h:
	ld (07f08h),a		;ccc6	32 08 7f 	2 .  
	call 08073h		;ccc9	cd 73 80 	. s . 
	jr lcce8h		;cccc	18 1a 	. . 
lccceh:
	call 0803eh		;ccce	cd 3e 80 	. > . 
	call 08145h		;ccd1	cd 45 81 	. E . 
lccd4h:
	and a			;ccd4	a7 	. 
	ret			;ccd5	c9 	. 
lccd6h:
	ld a,d			;ccd6	7a 	z 
	or (hl)			;ccd7	b6 	. 
	ld (hl),a			;ccd8	77 	w 
	call 082eeh		;ccd9	cd ee 82 	. . . 
	ret c			;ccdc	d8 	. 
	ld hl,07f12h		;ccdd	21 12 7f 	! .  
	ld de,07f1ah		;cce0	11 1a 7f 	. .  
	ld bc,00006h		;cce3	01 06 00 	. . . 
	ldir		;cce6	ed b0 	. . 
lcce8h:
	ld hl,07f08h		;cce8	21 08 7f 	! .  
	ld a,(hl)			;cceb	7e 	~ 
	sub 001h		;ccec	d6 01 	. . 
	daa			;ccee	27 	' 
	ld (hl),a			;ccef	77 	w 
	jr z,lccd4h		;ccf0	28 e2 	( . 
	and 0f0h		;ccf2	e6 f0 	. . 
	jr z,lccf9h		;ccf4	28 03 	( . 
	call sub_c1b4h		;ccf6	cd b4 c1 	. . . 
lccf9h:
	ld l,011h		;ccf9	2e 11 	. . 
	ld d,(hl)			;ccfb	56 	V 
	ld b,007h		;ccfc	06 07 	. . 
lccfeh:
	ld (hl),000h		;ccfe	36 00 	6 . 
	inc l			;cd00	2c 	, 
	djnz lccfeh		;cd01	10 fb 	. . 
	ld a,(07f08h)		;cd03	3a 08 7f 	: .  
	ld e,a			;cd06	5f 	_ 
	and 00fh		;cd07	e6 0f 	. . 
lcd09h:
	push de			;cd09	d5 	. 
lcd0ah:
	sub 001h		;cd0a	d6 01 	. . 
	ld c,a			;cd0c	4f 	O 
	jr c,lcd15h		;cd0d	38 06 	8 . 
	call sub_c3cch		;cd0f	cd cc c3 	. . . 
	ld a,c			;cd12	79 	y 
	jr lcd0ah		;cd13	18 f5 	. . 
lcd15h:
	pop de			;cd15	d1 	. 
	ld a,e			;cd16	7b 	{ 
	and 0f0h		;cd17	e6 f0 	. . 
	ld hl,07f11h		;cd19	21 11 7f 	! .  
	jr z,lccd6h		;cd1c	28 b8 	( . 
	ld b,007h		;cd1e	06 07 	. . 
	ld a,000h		;cd20	3e 00 	> . 
lcd22h:
	rrd		;cd22	ed 67 	. g 
	inc l			;cd24	2c 	, 
	djnz lcd22h		;cd25	10 fb 	. . 
	ld a,e			;cd27	7b 	{ 
	and 0f0h		;cd28	e6 f0 	. . 
	rrca			;cd2a	0f 	. 
	rrca			;cd2b	0f 	. 
	rrca			;cd2c	0f 	. 
	rrca			;cd2d	0f 	. 
	ld e,a			;cd2e	5f 	_ 
	jr lcd09h		;cd2f	18 d8 	. . 
sub_cd31h:
	call 08083h		;cd31	cd 83 80 	. . . 
	ld a,(07f31h)		;cd34	3a 31 7f 	: 1  
	ld (0792eh),a		;cd37	32 2e 79 	2 . y 
	call 08145h		;cd3a	cd 45 81 	. E . 
	call 0829fh		;cd3d	cd 9f 82 	. . . 
	call sub_c4fch		;cd40	cd fc c4 	. . . 
	ret c			;cd43	d8 	. 
	call 080cdh		;cd44	cd cd 80 	. . . 
	call 08247h		;cd47	cd 47 82 	. G . 
	call 0829fh		;cd4a	cd 9f 82 	. . . 
	call sub_c4fch		;cd4d	cd fc c4 	. . . 
	ret c			;cd50	d8 	. 
	call 082a4h		;cd51	cd a4 82 	. . . 
	call sub_c488h		;cd54	cd 88 c4 	. . . 
	ret c			;cd57	d8 	. 
	call sub_c606h		;cd58	cd 06 c6 	. . . 
	ret c			;cd5b	d8 	. 
	call 08242h		;cd5c	cd 42 82 	. B . 
	call 08093h		;cd5f	cd 93 80 	. . . 
	call sub_c579h		;cd62	cd 79 c5 	. y . 
	jp c,083ach		;cd65	da ac 83 	. . . 
	call sub_d146h		;cd68	cd 46 d1 	. F . 
	ret c			;cd6b	d8 	. 
	call 081bbh		;cd6c	cd bb 81 	. . . 
	ret c			;cd6f	d8 	. 
	ld a,(0792eh)		;cd70	3a 2e 79 	: . y 
	and 001h		;cd73	e6 01 	. . 
	ld hl,07f31h		;cd75	21 31 7f 	! 1  
	res 0,(hl)		;cd78	cb 86 	. . 
	or (hl)			;cd7a	b6 	. 
	ld (hl),a			;cd7b	77 	w 
	call 080cdh		;cd7c	cd cd 80 	. . . 
	call 08247h		;cd7f	cd 47 82 	. G . 
	call 081bbh		;cd82	cd bb 81 	. . . 
	ret c			;cd85	d8 	. 
	call 082a9h		;cd86	cd a9 82 	. . . 
	and a			;cd89	a7 	. 
	ret			;cd8a	c9 	. 
sub_cd8bh:
	ld a,(07f31h)		;cd8b	3a 31 7f 	: 1  
	bit 1,a		;cd8e	cb 4f 	. O 
	jp nz,083ach		;cd90	c2 ac 83 	. . . 
	call 0829fh		;cd93	cd 9f 82 	. . . 
	call 0822eh		;cd96	cd 2e 82 	. . . 
	call sub_cf51h		;cd99	cd 51 cf 	. Q . 
	ret c			;cd9c	d8 	. 
	call 0829ah		;cd9d	cd 9a 82 	. . . 
	call 0822eh		;cda0	cd 2e 82 	. . . 
	call 080a7h		;cda3	cd a7 80 	. . . 
	call sub_cf4ch		;cda6	cd 4c cf 	. L . 
	ret c			;cda9	d8 	. 
	call 082a4h		;cdaa	cd a4 82 	. . . 
	call sub_c4ffh		;cdad	cd ff c4 	. . . 
	ret c			;cdb0	d8 	. 
	call 081bbh		;cdb1	cd bb 81 	. . . 
	ret c			;cdb4	d8 	. 
	call 08108h		;cdb5	cd 08 81 	. . . 
	call 08233h		;cdb8	cd 33 82 	. 3 . 
	call 082a4h		;cdbb	cd a4 82 	. . . 
	call sub_c4ffh		;cdbe	cd ff c4 	. . . 
	ret c			;cdc1	d8 	. 
	call 081bbh		;cdc2	cd bb 81 	. . . 
	ret c			;cdc5	d8 	. 
	call 08093h		;cdc6	cd 93 80 	. . . 
	call 082a9h		;cdc9	cd a9 82 	. . . 
	and a			;cdcc	a7 	. 
	ret			;cdcd	c9 	. 
sub_cdceh:
	ld (0792eh),a		;cdce	32 2e 79 	2 . y 
	call 08083h		;cdd1	cd 83 80 	. . . 
	ld a,(0792eh)		;cdd4	3a 2e 79 	: . y 
	bit 0,a		;cdd7	cb 47 	. G 
	jr z,lcde3h		;cdd9	28 08 	( . 
	call sub_c576h		;cddb	cd 76 c5 	. v . 
	ret c			;cdde	d8 	. 
	call sub_c31ch		;cddf	cd 1c c3 	. . . 
	ret c			;cde2	d8 	. 
lcde3h:
	call 080f8h		;cde3	cd f8 80 	. . . 
	ld hl,07f31h		;cde6	21 31 7f 	! 1  
	ld a,000h		;cde9	3e 00 	> . 
	bit 3,(hl)		;cdeb	cb 5e 	. ^ 
	jr z,lce34h		;cded	28 45 	( E 
	ld a,(07f12h)		;cdef	3a 12 7f 	: .  
	and 0f0h		;cdf2	e6 f0 	. . 
	jr nz,lce27h		;cdf4	20 31 	  1 
	call 0803eh		;cdf6	cd 3e 80 	. > . 
	call 080a7h		;cdf9	cd a7 80 	. . . 
	and a			;cdfc	a7 	. 
	ret			;cdfd	c9 	. 
lcdfeh:
	call 080ddh		;cdfe	cd dd 80 	. . . 
	call sub_c576h		;ce01	cd 76 c5 	. v . 
	ret c			;ce04	d8 	. 
	call sub_c31ch		;ce05	cd 1c c3 	. . . 
	ret c			;ce08	d8 	. 
	call 080f8h		;ce09	cd f8 80 	. . . 
	call sub_ceadh		;ce0c	cd ad ce 	. . . 
	jp nc,083ach		;ce0f	d2 ac 83 	. . . 
	bit 4,(hl)		;ce12	cb 66 	. f 
	jp z,083ach		;ce14	ca ac 83 	. . . 
	call 080ddh		;ce17	cd dd 80 	. . . 
	call sub_c576h		;ce1a	cd 76 c5 	. v . 
	ret c			;ce1d	d8 	. 
	call sub_c31ch		;ce1e	cd 1c c3 	. . . 
	ret c			;ce21	d8 	. 
	call 080f8h		;ce22	cd f8 80 	. . . 
	jr lce32h		;ce25	18 0b 	. . 
lce27h:
	call sub_ceadh		;ce27	cd ad ce 	. . . 
	jr nc,lcdfeh		;ce2a	30 d2 	0 . 
	ld a,000h		;ce2c	3e 00 	> . 
	bit 4,(hl)		;ce2e	cb 66 	. f 
	jr z,lce34h		;ce30	28 02 	( . 
lce32h:
	ld a,020h		;ce32	3e 20 	>   
lce34h:
	ld hl,07f31h		;ce34	21 31 7f 	! 1  
	res 3,(hl)		;ce37	cb 9e 	. . 
	res 5,(hl)		;ce39	cb ae 	. . 
	or (hl)			;ce3b	b6 	. 
	ld (hl),a			;ce3c	77 	w 
	ld l,02ah		;ce3d	2e 2a 	. * 
	ld a,(hl)			;ce3f	7e 	~ 
	and 0f0h		;ce40	e6 f0 	. . 
	jr nz,lce58h		;ce42	20 14 	  . 
	ld l,031h		;ce44	2e 31 	. 1 
	bit 0,(hl)		;ce46	cb 46 	. F 
	jp nz,083ach		;ce48	c2 ac 83 	. . . 
	ld l,012h		;ce4b	2e 12 	. . 
	ld a,(hl)			;ce4d	7e 	~ 
	and 0f0h		;ce4e	e6 f0 	. . 
	jp z,083ach		;ce50	ca ac 83 	. . . 
	call 08024h		;ce53	cd 24 80 	. $ . 
	and a			;ce56	a7 	. 
	ret			;ce57	c9 	. 
lce58h:
	call 080ddh		;ce58	cd dd 80 	. . . 
	call 080cdh		;ce5b	cd cd 80 	. . . 
	call 080bah		;ce5e	cd ba 80 	. . . 
	call 08295h		;ce61	cd 95 82 	. . . 
	call sub_c990h		;ce64	cd 90 c9 	. . . 
	ret c			;ce67	d8 	. 
	call sub_d0d9h		;ce68	cd d9 d0 	. . . 
	ret c			;ce6b	d8 	. 
	ld hl,07f31h		;ce6c	21 31 7f 	! 1  
	set 0,(hl)		;ce6f	cb c6 	. . 
	bit 5,(hl)		;ce71	cb 6e 	. n 
	jr nz,lce77h		;ce73	20 02 	  . 
	res 0,(hl)		;ce75	cb 86 	. . 
lce77h:
	call 082e9h		;ce77	cd e9 82 	. . . 
	ret c			;ce7a	d8 	. 
	jp sub_c31ch		;ce7b	c3 1c c3 	. . . 
sub_ce7eh:
	call 082d2h		;ce7e	cd d2 82 	. . . 
	jr c,lcea6h		;ce81	38 23 	8 # 
	ld hl,07f31h		;ce83	21 31 7f 	! 1  
	res 2,(hl)		;ce86	cb 96 	. . 
	call sub_c226h		;ce88	cd 26 c2 	. & . 
	call sub_c99dh		;ce8b	cd 9d c9 	. . . 
	ret c			;ce8e	d8 	. 
	call 080cdh		;ce8f	cd cd 80 	. . . 
	call 08024h		;ce92	cd 24 80 	. $ . 
	ld l,012h		;ce95	2e 12 	. . 
	ld a,(hl)			;ce97	7e 	~ 
	or 030h		;ce98	f6 30 	. 0 
	ld (hl),a			;ce9a	77 	w 
	call sub_c579h		;ce9b	cd 79 c5 	. y . 
	ret c			;ce9e	d8 	. 
	call sub_d0d9h		;ce9f	cd d9 d0 	. . . 
	ret c			;cea2	d8 	. 
	call sub_c226h		;cea3	cd 26 c2 	. & . 
lcea6h:
	call 082e9h		;cea6	cd e9 82 	. . . 
	ret c			;cea9	d8 	. 
	jp sub_c31ch		;ceaa	c3 1c c3 	. . . 
sub_ceadh:
	call sub_c752h		;cead	cd 52 c7 	. R . 
	jr c,lcecch		;ceb0	38 1a 	8 . 
	ld hl,07f12h		;ceb2	21 12 7f 	! .  
	ld a,(hl)			;ceb5	7e 	~ 
	and 0f0h		;ceb6	e6 f0 	. . 
	jr nz,lcecah		;ceb8	20 10 	  . 
	call 080a7h		;ceba	cd a7 80 	. . . 
	call sub_c1c3h		;cebd	cd c3 c1 	. . . 
	call sub_c752h		;cec0	cd 52 c7 	. R . 
	jr c,lcecch		;cec3	38 07 	8 . 
	ld hl,07f12h		;cec5	21 12 7f 	! .  
	scf			;cec8	37 	7 
	ret			;cec9	c9 	. 
lcecah:
	and a			;ceca	a7 	. 
	ret			;cecb	c9 	. 
lcecch:
	pop hl			;cecc	e1 	. 
	scf			;cecd	37 	7 
	ret			;cece	c9 	. 
sub_cecfh:
	call 08242h		;cecf	cd 42 82 	. B . 
	call sub_c752h		;ced2	cd 52 c7 	. R . 
	ret c			;ced5	d8 	. 
	call 08083h		;ced6	cd 83 80 	. . . 
	call sub_cf37h		;ced9	cd 37 cf 	. 7 . 
	call sub_c4ffh		;cedc	cd ff c4 	. . . 
	ret c			;cedf	d8 	. 
	call 08093h		;cee0	cd 93 80 	. . . 
	call sub_c488h		;cee3	cd 88 c4 	. . . 
	ret c			;cee6	d8 	. 
	call sub_c75ah		;cee7	cd 5a c7 	. Z . 
	ret c			;ceea	d8 	. 
	call 08083h		;ceeb	cd 83 80 	. . . 
	call sub_cf37h		;ceee	cd 37 cf 	. 7 . 
	call sub_c4ffh		;cef1	cd ff c4 	. . . 
	ret c			;cef4	d8 	. 
	ld hl,079bdh		;cef5	21 bd 79 	! . y 
	set 0,(hl)		;cef8	cb c6 	. . 
lcefah:
	call 08093h		;cefa	cd 93 80 	. . . 
	jp sub_c488h		;cefd	c3 88 c4 	. . . 
sub_cf00h:
	call sub_c75ah		;cf00	cd 5a c7 	. Z . 
	ret c			;cf03	d8 	. 
	call 08083h		;cf04	cd 83 80 	. . . 
	call sub_cf37h		;cf07	cd 37 cf 	. 7 . 
	call 08145h		;cf0a	cd 45 81 	. E . 
	call sub_c579h		;cf0d	cd 79 c5 	. y . 
	ret c			;cf10	d8 	. 
	call 080f8h		;cf11	cd f8 80 	. . . 
	call 080bah		;cf14	cd ba 80 	. . . 
	call sub_c752h		;cf17	cd 52 c7 	. R . 
	ret c			;cf1a	d8 	. 
	call 08083h		;cf1b	cd 83 80 	. . . 
	call 080cdh		;cf1e	cd cd 80 	. . . 
	call 080ddh		;cf21	cd dd 80 	. . . 
	call 08145h		;cf24	cd 45 81 	. E . 
	call sub_c488h		;cf27	cd 88 c4 	. . . 
	ret c			;cf2a	d8 	. 
	call sub_cf37h		;cf2b	cd 37 cf 	. 7 . 
	call 08145h		;cf2e	cd 45 81 	. E . 
	call sub_c579h		;cf31	cd 79 c5 	. y . 
	ret c			;cf34	d8 	. 
	jr lcefah		;cf35	18 c3 	. . 
sub_cf37h:
	call 08010h		;cf37	cd 10 80 	. . . 
	ld l,01ah		;cf3a	2e 1a 	. . 
	ld a,060h		;cf3c	3e 60 	> ` 
	ld (hl),a			;cf3e	77 	w 
	dec l			;cf3f	2d 	- 
	ld a,090h		;cf40	3e 90 	> . 
	ld (hl),a			;cf42	77 	w 
	dec l			;cf43	2d 	- 
	ld a,099h		;cf44	3e 99 	> . 
	ld (hl),a			;cf46	77 	w 
	ret			;cf47	c9 	. 
sub_cf48h:
	ld b,001h		;cf48	06 01 	. . 
	jr lcf4eh		;cf4a	18 02 	. . 
sub_cf4ch:
	ld b,000h		;cf4c	06 00 	. . 
lcf4eh:
	xor a			;cf4e	af 	. 
	jr lcf5ah		;cf4f	18 09 	. . 
sub_cf51h:
	ld hl,07f31h		;cf51	21 31 7f 	! 1  
	res 0,(hl)		;cf54	cb 86 	. . 
	ld b,000h		;cf56	06 00 	. . 
	ld a,001h		;cf58	3e 01 	> . 
lcf5ah:
	ld (07f0fh),a		;cf5a	32 0f 7f 	2 .  
	ld hl,07f30h		;cf5d	21 30 7f 	! 0  
	ld a,(hl)			;cf60	7e 	~ 
	res 0,a		;cf61	cb 87 	. . 
	or b			;cf63	b0 	. 
	ld (hl),a			;cf64	77 	w 
	call sub_c7aeh		;cf65	cd ae c7 	. . . 
	jr nc,lcf8ch		;cf68	30 22 	0 " 
	call sub_c4ffh		;cf6a	cd ff c4 	. . . 
	jp c,083ach		;cf6d	da ac 83 	. . . 
	ld hl,07f17h		;cf70	21 17 7f 	! .  
	ld a,006h		;cf73	3e 06 	> . 
	add a,(hl)			;cf75	86 	. 
	daa			;cf76	27 	' 
	ld (hl),a			;cf77	77 	w 
	ld b,006h		;cf78	06 06 	. . 
lcf7ah:
	ld a,000h		;cf7a	3e 00 	> . 
	dec l			;cf7c	2d 	- 
	adc a,(hl)			;cf7d	8e 	. 
	daa			;cf7e	27 	' 
	ld (hl),a			;cf7f	77 	w 
	djnz lcf7ah		;cf80	10 f8 	. . 
	ld l,017h		;cf82	2e 17 	. . 
	ld a,(hl)			;cf84	7e 	~ 
	and 0f0h		;cf85	e6 f0 	. . 
	ld (hl),a			;cf87	77 	w 
	call 082e9h		;cf88	cd e9 82 	. . . 
	ret c			;cf8b	d8 	. 
lcf8ch:
	ld hl,07f10h		;cf8c	21 10 7f 	! .  
	ld de,07f28h		;cf8f	11 28 7f 	. (  
	ld bc,00002h		;cf92	01 02 00 	. . . 
	ldir		;cf95	ed b0 	. . 
	call sub_c226h		;cf97	cd 26 c2 	. & . 
	res 0,(hl)		;cf9a	cb 86 	. . 
	xor a			;cf9c	af 	. 
	ld (07f0eh),a		;cf9d	32 0e 7f 	2 .  
	ld l,010h		;cfa0	2e 10 	. . 
	ld a,(hl)			;cfa2	7e 	~ 
	and 0f0h		;cfa3	e6 f0 	. . 
	cp 090h		;cfa5	fe 90 	. . 
	jp z,ld062h		;cfa7	ca 62 d0 	. b . 
	ld a,(hl)			;cfaa	7e 	~ 
	and 00fh		;cfab	e6 0f 	. . 
	jp nz,083ach		;cfad	c2 ac 83 	. . . 
	call 08010h		;cfb0	cd 10 80 	. . . 
	ld l,019h		;cfb3	2e 19 	. . 
	ld a,(hl)			;cfb5	7e 	~ 
	or 036h		;cfb6	f6 36 	. 6 
	ld (hl),a			;cfb8	77 	w 
	call 08078h		;cfb9	cd 78 80 	. x . 
lcfbch:
	ld d,07fh		;cfbc	16 7f 	.  
	ld h,07fh		;cfbe	26 7f 	&  
lcfc0h:
	ld e,011h		;cfc0	1e 11 	. . 
	ld l,019h		;cfc2	2e 19 	. . 
	and a			;cfc4	a7 	. 
	ld b,002h		;cfc5	06 02 	. . 
lcfc7h:
	ld a,(de)			;cfc7	1a 	. 
	sbc a,(hl)			;cfc8	9e 	. 
	daa			;cfc9	27 	' 
	ld (de),a			;cfca	12 	. 
	dec e			;cfcb	1d 	. 
	dec l			;cfcc	2d 	- 
	djnz lcfc7h		;cfcd	10 f8 	. . 
	jr c,lcfdah		;cfcf	38 09 	8 . 
	ld a,(07f0eh)		;cfd1	3a 0e 7f 	: .  
	inc a			;cfd4	3c 	< 
	ld (07f0eh),a		;cfd5	32 0e 7f 	2 .  
	jr lcfc0h		;cfd8	18 e6 	. . 
lcfdah:
	ld e,011h		;cfda	1e 11 	. . 
	ld l,019h		;cfdc	2e 19 	. . 
	and a			;cfde	a7 	. 
	ld b,002h		;cfdf	06 02 	. . 
lcfe1h:
	ld a,(de)			;cfe1	1a 	. 
	adc a,(hl)			;cfe2	8e 	. 
	daa			;cfe3	27 	' 
	ld (de),a			;cfe4	12 	. 
	dec e			;cfe5	1d 	. 
	dec l			;cfe6	2d 	- 
	djnz lcfe1h		;cfe7	10 f8 	. . 
	ld l,019h		;cfe9	2e 19 	. . 
	ld a,(hl)			;cfeb	7e 	~ 
	cp 009h		;cfec	fe 09 	. . 
	jr z,ld010h		;cfee	28 20 	(   
	ld l,029h		;cff0	2e 29 	. ) 
	ld a,(hl)			;cff2	7e 	~ 
	sub 010h		;cff3	d6 10 	. . 
	daa			;cff5	27 	' 
	ld (hl),a			;cff6	77 	w 
	dec l			;cff7	2d 	- 
	ld a,(hl)			;cff8	7e 	~ 
	sbc a,000h		;cff9	de 00 	. . 
	daa			;cffb	27 	' 
	ld (hl),a			;cffc	77 	w 
	jr c,ld004h		;cffd	38 05 	8 . 
	call sub_c219h		;cfff	cd 19 c2 	. . . 
	jr lcfbch		;d002	18 b8 	. . 
ld004h:
	ld l,019h		;d004	2e 19 	. . 
	ld a,(hl)			;d006	7e 	~ 
	sub 02dh		;d007	d6 2d 	. - 
	ld (hl),a			;d009	77 	w 
	xor a			;d00a	af 	. 
	ld (07f0eh),a		;d00b	32 0e 7f 	2 .  
	jr lcfbch		;d00e	18 ac 	. . 
ld010h:
	ld a,(07f0fh)		;d010	3a 0f 7f 	: .  
	ld hl,07f0eh		;d013	21 0e 7f 	! .  
	add a,(hl)			;d016	86 	. 
	ld (hl),a			;d017	77 	w 
	ld (07f0fh),a		;d018	32 0f 7f 	2 .  
	ld hl,07f1ah		;d01b	21 1a 7f 	! .  
	ld a,(hl)			;d01e	7e 	~ 
	or 050h		;d01f	f6 50 	. P 
	ld (hl),a			;d021	77 	w 
	dec l			;d022	2d 	- 
	ld a,(hl)			;d023	7e 	~ 
	sub 005h		;d024	d6 05 	. . 
	ld (hl),a			;d026	77 	w 
	ld de,07f12h		;d027	11 12 7f 	. .  
	ld hl,07f1ah		;d02a	21 1a 7f 	! .  
	ld b,002h		;d02d	06 02 	. . 
	and a			;d02f	a7 	. 
ld030h:
	ld a,(de)			;d030	1a 	. 
	sbc a,(hl)			;d031	9e 	. 
	daa			;d032	27 	' 
	ld (de),a			;d033	12 	. 
	dec e			;d034	1d 	. 
	dec l			;d035	2d 	- 
	djnz ld030h		;d036	10 f8 	. . 
	jr nc,ld04bh		;d038	30 11 	0 . 
	ld e,012h		;d03a	1e 12 	. . 
	ld l,01ah		;d03c	2e 1a 	. . 
	ld b,002h		;d03e	06 02 	. . 
	and a			;d040	a7 	. 
ld041h:
	ld a,(de)			;d041	1a 	. 
	adc a,(hl)			;d042	8e 	. 
	daa			;d043	27 	' 
	ld (de),a			;d044	12 	. 
	dec e			;d045	1d 	. 
	dec l			;d046	2d 	- 
	djnz ld041h		;d047	10 f8 	. . 
	jr ld05eh		;d049	18 13 	. . 
ld04bh:
	call sub_c30ah		;d04b	cd 0a c3 	. . . 
	ld l,019h		;d04e	2e 19 	. . 
	ld e,011h		;d050	1e 11 	. . 
	ld bc,00007h		;d052	01 07 00 	. . . 
	ldir		;d055	ed b0 	. . 
	ld a,(07f0fh)		;d057	3a 0f 7f 	: .  
	inc a			;d05a	3c 	< 
	ld (07f0fh),a		;d05b	32 0f 7f 	2 .  
ld05eh:
	call 082e9h		;d05e	cd e9 82 	. . . 
	ret c			;d061	d8 	. 
ld062h:
	call sub_c1c3h		;d062	cd c3 c1 	. . . 
	call sub_c258h		;d065	cd 58 c2 	. X . 
	call sub_c299h		;d068	cd 99 c2 	. . . 
	call sub_d213h		;d06b	cd 13 d2 	. . . 
	call 082e9h		;d06e	cd e9 82 	. . . 
	ret c			;d071	d8 	. 
	call 08145h		;d072	cd 45 81 	. E . 
	call 08078h		;d075	cd 78 80 	. x . 
	call 082e9h		;d078	cd e9 82 	. . . 
	ret c			;d07b	d8 	. 
	call sub_c579h		;d07c	cd 79 c5 	. y . 
	ret c			;d07f	d8 	. 
	call sub_c226h		;d080	cd 26 c2 	. & . 
	ld hl,07f30h		;d083	21 30 7f 	! 0  
	bit 0,(hl)		;d086	cb 46 	. F 
	jr z,ld0a6h		;d088	28 1c 	( . 
	res 0,(hl)		;d08a	cb 86 	. . 
	ld hl,07f0fh		;d08c	21 0f 7f 	! .  
	bit 0,(hl)		;d08f	cb 46 	. F 
	jr z,ld099h		;d091	28 06 	( . 
	call sub_c576h		;d093	cd 76 c5 	. v . 
	jp c,0834ah		;d096	da 4a 83 	. J . 
ld099h:
	ld hl,07f0eh		;d099	21 0e 7f 	! .  
	bit 0,(hl)		;d09c	cb 46 	. F 
	jr z,ld0a3h		;d09e	28 03 	( . 
	call 081e8h		;d0a0	cd e8 81 	. . . 
ld0a3h:
	jp 082e9h		;d0a3	c3 e9 82 	. . . 
ld0a6h:
	call 08108h		;d0a6	cd 08 81 	. . . 
	call sub_c4fch		;d0a9	cd fc c4 	. . . 
	ret c			;d0ac	d8 	. 
	call 0803eh		;d0ad	cd 3e 80 	. > . 
	call sub_c488h		;d0b0	cd 88 c4 	. . . 
	ret c			;d0b3	d8 	. 
	call sub_c606h		;d0b4	cd 06 c6 	. . . 
	ret c			;d0b7	d8 	. 
	call 08093h		;d0b8	cd 93 80 	. . . 
	ld hl,07f0fh		;d0bb	21 0f 7f 	! .  
	bit 0,(hl)		;d0be	cb 46 	. F 
	jr z,ld0c5h		;d0c0	28 03 	( . 
	call 08043h		;d0c2	cd 43 80 	. C . 
ld0c5h:
	ld hl,07f0eh		;d0c5	21 0e 7f 	! .  
	bit 1,(hl)		;d0c8	cb 4e 	. N 
	jr z,ld0cfh		;d0ca	28 03 	( . 
	call 081e8h		;d0cc	cd e8 81 	. . . 
ld0cfh:
	jp sub_c579h		;d0cf	c3 79 c5 	. y . 
sub_d0d2h:
	call sub_c8e2h		;d0d2	cd e2 c8 	. . . 
	call sub_c4ffh		;d0d5	cd ff c4 	. . . 
	ret c			;d0d8	d8 	. 
sub_d0d9h:
	ld hl,07f10h		;d0d9	21 10 7f 	! .  
	ld a,(hl)			;d0dc	7e 	~ 
	and 0f0h		;d0dd	e6 f0 	. . 
	jr nz,ld113h		;d0df	20 32 	  2 
	call sub_c1c3h		;d0e1	cd c3 c1 	. . . 
	jr c,ld0eeh		;d0e4	38 08 	8 . 
	call sub_c1c3h		;d0e6	cd c3 c1 	. . . 
	jr nc,ld12bh		;d0e9	30 40 	0 @ 
	call sub_c1e6h		;d0eb	cd e6 c1 	. . . 
ld0eeh:
	ld hl,07f12h		;d0ee	21 12 7f 	! .  
	ld a,(hl)			;d0f1	7e 	~ 
	ld b,a			;d0f2	47 	G 
	and 00fh		;d0f3	e6 0f 	. . 
	ld (hl),a			;d0f5	77 	w 
	ld a,b			;d0f6	78 	x 
	ld l,011h		;d0f7	2e 11 	. . 
	and 0f0h		;d0f9	e6 f0 	. . 
	ld b,(hl)			;d0fb	46 	F 
	ld (hl),a			;d0fc	77 	w 
	ld a,b			;d0fd	78 	x 
	and 00fh		;d0fe	e6 0f 	. . 
	ld l,010h		;d100	2e 10 	. . 
	ld (hl),a			;d102	77 	w 
	ld l,017h		;d103	2e 17 	. . 
	ld b,006h		;d105	06 06 	. . 
	ld a,000h		;d107	3e 00 	> . 
ld109h:
	rld		;d109	ed 6f 	. o 
	dec l			;d10b	2d 	- 
	djnz ld109h		;d10c	10 fb 	. . 
	call 08073h		;d10e	cd 73 80 	. s . 
	jr ld11fh		;d111	18 0c 	. . 
ld113h:
	call sub_c258h		;d113	cd 58 c2 	. X . 
	call sub_c299h		;d116	cd 99 c2 	. . . 
	call sub_c1cdh		;d119	cd cd c1 	. . . 
	call 08078h		;d11c	cd 78 80 	. x . 
ld11fh:
	call sub_d2dfh		;d11f	cd df d2 	. . . 
	ret c			;d122	d8 	. 
	call sub_c279h		;d123	cd 79 c2 	. y . 
	call 082c1h		;d126	cd c1 82 	. . . 
	jr ld131h		;d129	18 06 	. . 
ld12bh:
	call 081e8h		;d12b	cd e8 81 	. . . 
	call 08029h		;d12e	cd 29 80 	. ) . 
ld131h:
	ld hl,07f31h		;d131	21 31 7f 	! 1  
	bit 0,(hl)		;d134	cb 46 	. F 
	jr z,ld140h		;d136	28 08 	( . 
	res 0,(hl)		;d138	cb 86 	. . 
	call sub_c576h		;d13a	cd 76 c5 	. v . 
	jp c,0834ah		;d13d	da 4a 83 	. J . 
ld140h:
	and a			;d140	a7 	. 
	ret			;d141	c9 	. 
sub_d142h:
	ld b,001h		;d142	06 01 	. . 
	jr ld14ch		;d144	18 06 	. . 
sub_d146h:
	ld b,002h		;d146	06 02 	. . 
	jr ld14ch		;d148	18 02 	. . 
sub_d14ah:
	ld b,000h		;d14a	06 00 	. . 
ld14ch:
	ld hl,07f30h		;d14c	21 30 7f 	! 0  
	ld a,(hl)			;d14f	7e 	~ 
	and 0fch		;d150	e6 fc 	. . 
	or b			;d152	b0 	. 
	ld (hl),a			;d153	77 	w 
	call 082e9h		;d154	cd e9 82 	. . . 
	ret c			;d157	d8 	. 
	call sub_c226h		;d158	cd 26 c2 	. & . 
	res 0,(hl)		;d15b	cb 86 	. . 
	ld hl,07f30h		;d15d	21 30 7f 	! 0  
	bit 0,(hl)		;d160	cb 46 	. F 
	jr nz,ld191h		;d162	20 2d 	  - 
	call 08108h		;d164	cd 08 81 	. . . 
	call sub_c4fch		;d167	cd fc c4 	. . . 
	jp c,083ach		;d16a	da ac 83 	. . . 
	call 0803eh		;d16d	cd 3e 80 	. > . 
	call sub_c485h		;d170	cd 85 c4 	. . . 
	ret c			;d173	d8 	. 
	call sub_c606h		;d174	cd 06 c6 	. . . 
	ret c			;d177	d8 	. 
	call 08093h		;d178	cd 93 80 	. . . 
	ld hl,07f30h		;d17b	21 30 7f 	! 0  
	bit 1,(hl)		;d17e	cb 4e 	. N 
	jr z,ld185h		;d180	28 03 	( . 
	call 08145h		;d182	cd 45 81 	. E . 
ld185h:
	ld hl,07f12h		;d185	21 12 7f 	! .  
	ld a,(hl)			;d188	7e 	~ 
	and 0f0h		;d189	e6 f0 	. . 
	jr z,ld1d7h		;d18b	28 4a 	( J 
	call sub_c579h		;d18d	cd 79 c5 	. y . 
	ret c			;d190	d8 	. 
ld191h:
	ld hl,07f12h		;d191	21 12 7f 	! .  
	ld a,(hl)			;d194	7e 	~ 
	and 0f0h		;d195	e6 f0 	. . 
	jr z,ld1e3h		;d197	28 4a 	( J 
	ld l,030h		;d199	2e 30 	. 0 
	res 2,(hl)		;d19b	cb 96 	. . 
	ld l,010h		;d19d	2e 10 	. . 
	ld a,(hl)			;d19f	7e 	~ 
	and 0f0h		;d1a0	e6 f0 	. . 
	jr nz,ld1adh		;d1a2	20 09 	  . 
	call sub_c576h		;d1a4	cd 76 c5 	. v . 
	ret c			;d1a7	d8 	. 
	ld hl,07f30h		;d1a8	21 30 7f 	! 0  
	set 2,(hl)		;d1ab	cb d6 	. . 
ld1adh:
	call sub_c258h		;d1ad	cd 58 c2 	. X . 
	call sub_c299h		;d1b0	cd 99 c2 	. . . 
	call sub_d346h		;d1b3	cd 46 d3 	. F . 
	ret c			;d1b6	d8 	. 
	call sub_c1b4h		;d1b7	cd b4 c1 	. . . 
	call 082e9h		;d1ba	cd e9 82 	. . . 
	ret c			;d1bd	d8 	. 
	ld hl,07f30h		;d1be	21 30 7f 	! 0  
	bit 2,(hl)		;d1c1	cb 56 	. V 
	jr z,ld1e3h		;d1c3	28 1e 	( . 
	call 08010h		;d1c5	cd 10 80 	. . . 
	ld l,01ah		;d1c8	2e 1a 	. . 
	ld a,(hl)			;d1ca	7e 	~ 
	or 090h		;d1cb	f6 90 	. . 
	ld (hl),a			;d1cd	77 	w 
	dec l			;d1ce	2d 	- 
	set 4,(hl)		;d1cf	cb e6 	. . 
	call sub_c485h		;d1d1	cd 85 c4 	. . . 
	ret c			;d1d4	d8 	. 
	jr ld1e3h		;d1d5	18 0c 	. . 
ld1d7h:
	call 08024h		;d1d7	cd 24 80 	. $ . 
	ld l,012h		;d1da	2e 12 	. . 
	ld a,(hl)			;d1dc	7e 	~ 
	or 090h		;d1dd	f6 90 	. . 
	ld (hl),a			;d1df	77 	w 
	dec l			;d1e0	2d 	- 
	set 4,(hl)		;d1e1	cb e6 	. . 
ld1e3h:
	call sub_c226h		;d1e3	cd 26 c2 	. & . 
	ld l,030h		;d1e6	2e 30 	. 0 
	bit 1,(hl)		;d1e8	cb 4e 	. N 
	jr z,ld202h		;d1ea	28 16 	( . 
	ld l,031h		;d1ec	2e 31 	. 1 
	bit 0,(hl)		;d1ee	cb 46 	. F 
	jr z,ld202h		;d1f0	28 10 	( . 
	call 08010h		;d1f2	cd 10 80 	. . . 
	ld l,01ah		;d1f5	2e 1a 	. . 
	ld a,(hl)			;d1f7	7e 	~ 
	or 018h		;d1f8	f6 18 	. . 
	ld (hl),a			;d1fa	77 	w 
	dec l			;d1fb	2d 	- 
	set 5,(hl)		;d1fc	cb ee 	. . 
	call sub_c488h		;d1fe	cd 88 c4 	. . . 
	ret c			;d201	d8 	. 
ld202h:
	call sub_c7aeh		;d202	cd ae c7 	. . . 
	jr nc,ld20eh		;d205	30 07 	0 . 
	call 08145h		;d207	cd 45 81 	. E . 
	call sub_c579h		;d20a	cd 79 c5 	. y . 
	ret c			;d20d	d8 	. 
ld20eh:
	xor a			;d20e	af 	. 
	ld (07f30h),a		;d20f	32 30 7f 	2 0  
	ret			;d212	c9 	. 
sub_d213h:
	call sub_c812h		;d213	cd 12 c8 	. . . 
ld216h:
	call sub_c7fah		;d216	cd fa c7 	. . . 
	call sub_c8b8h		;d219	cd b8 c8 	. . . 
	call sub_d292h		;d21c	cd 92 d2 	. . . 
	jr z,ld23dh		;d21f	28 1c 	( . 
	inc (hl)			;d221	34 	4 
	ld hl,07f2fh		;d222	21 2f 7f 	! /  
	ld a,000h		;d225	3e 00 	> . 
	ld b,007h		;d227	06 07 	. . 
ld229h:
	rld		;d229	ed 6f 	. o 
	dec l			;d22b	2d 	- 
	djnz ld229h		;d22c	10 fb 	. . 
	ld l,019h		;d22e	2e 19 	. . 
	ld a,010h		;d230	3e 10 	> . 
	add a,(hl)			;d232	86 	. 
	daa			;d233	27 	' 
	ld (hl),a			;d234	77 	w 
	dec l			;d235	2d 	- 
	ld a,000h		;d236	3e 00 	> . 
	adc a,(hl)			;d238	8e 	. 
	daa			;d239	27 	' 
	ld (hl),a			;d23a	77 	w 
	jr ld216h		;d23b	18 d9 	. . 
ld23dh:
	call 08062h		;d23d	cd 62 80 	. b . 
	call 08053h		;d240	cd 53 80 	. S . 
	ld l,019h		;d243	2e 19 	. . 
	set 0,(hl)		;d245	cb c6 	. . 
ld247h:
	call sub_c7fah		;d247	cd fa c7 	. . . 
	call sub_d2d2h		;d24a	cd d2 d2 	. . . 
	add a,b			;d24d	80 	. 
	ld (hl),a			;d24e	77 	w 
	ld l,02fh		;d24f	2e 2f 	. / 
	ld a,(hl)			;d251	7e 	~ 
	and 00fh		;d252	e6 0f 	. . 
	ld (07f03h),a		;d254	32 03 7f 	2 .  
ld257h:
	ld a,(07f03h)		;d257	3a 03 7f 	: .  
	sub 001h		;d25a	d6 01 	. . 
	ld (07f03h),a		;d25c	32 03 7f 	2 .  
	jr c,ld275h		;d25f	38 14 	8 . 
	call sub_c291h		;d261	cd 91 c2 	. . . 
	call sub_c39fh		;d264	cd 9f c3 	. . . 
	ld l,020h		;d267	2e 20 	.   
	ld a,(hl)			;d269	7e 	~ 
	and 0f0h		;d26a	e6 f0 	. . 
	cp 0e0h		;d26c	fe e0 	. . 
	jr z,ld257h		;d26e	28 e7 	( . 
	call sub_c824h		;d270	cd 24 c8 	. $ . 
	jr ld257h		;d273	18 e2 	. . 
ld275h:
	ld hl,07f0dh		;d275	21 0d 7f 	! .  
	ld a,(hl)			;d278	7e 	~ 
	sub 001h		;d279	d6 01 	. . 
	ld (hl),a			;d27b	77 	w 
	jr c,ld289h		;d27c	38 0b 	8 . 
	call sub_c1cdh		;d27e	cd cd c1 	. . . 
	call 082bch		;d281	cd bc 82 	. . . 
	call 082c1h		;d284	cd c1 82 	. . . 
	jr ld247h		;d287	18 be 	. . 
ld289h:
	ld a,(07f30h)		;d289	3a 30 7f 	: 0  
	and 00fh		;d28c	e6 0f 	. . 
	ld (07f30h),a		;d28e	32 30 7f 	2 0  
	ret			;d291	c9 	. 
sub_d292h:
	call sub_c34ch		;d292	cd 4c c3 	. L . 
	ld h,07fh		;d295	26 7f 	&  
	ld d,07fh		;d297	16 7f 	.  
ld299h:
	ld b,007h		;d299	06 07 	. . 
	ld l,01fh		;d29b	2e 1f 	. . 
	ld e,017h		;d29d	1e 17 	. . 
	and a			;d29f	a7 	. 
ld2a0h:
	ld a,(de)			;d2a0	1a 	. 
	sbc a,(hl)			;d2a1	9e 	. 
	daa			;d2a2	27 	' 
	ld (de),a			;d2a3	12 	. 
	dec l			;d2a4	2d 	- 
	dec e			;d2a5	1d 	. 
	djnz ld2a0h		;d2a6	10 f8 	. . 
	jr c,ld2afh		;d2a8	38 05 	8 . 
	ld l,02fh		;d2aa	2e 2f 	. / 
	inc (hl)			;d2ac	34 	4 
	jr ld299h		;d2ad	18 ea 	. . 
ld2afh:
	ld b,007h		;d2af	06 07 	. . 
	ld l,01fh		;d2b1	2e 1f 	. . 
	ld e,017h		;d2b3	1e 17 	. . 
	and a			;d2b5	a7 	. 
ld2b6h:
	ld a,(de)			;d2b6	1a 	. 
	adc a,(hl)			;d2b7	8e 	. 
	daa			;d2b8	27 	' 
	ld (de),a			;d2b9	12 	. 
	dec l			;d2ba	2d 	- 
	dec e			;d2bb	1d 	. 
	djnz ld2b6h		;d2bc	10 f8 	. . 
	ld l,017h		;d2be	2e 17 	. . 
	ld b,007h		;d2c0	06 07 	. . 
	xor a			;d2c2	af 	. 
ld2c3h:
	rld		;d2c3	ed 6f 	. o 
	dec l			;d2c5	2d 	- 
	djnz ld2c3h		;d2c6	10 fb 	. . 
	call sub_c36ah		;d2c8	cd 6a c3 	. j . 
	ld hl,07f0dh		;d2cb	21 0d 7f 	! .  
	ld a,(hl)			;d2ce	7e 	~ 
	cp 00ch		;d2cf	fe 0c 	. . 
	ret			;d2d1	c9 	. 
sub_d2d2h:
	rrca			;d2d2	0f 	. 
	rrca			;d2d3	0f 	. 
	rrca			;d2d4	0f 	. 
	rrca			;d2d5	0f 	. 
	ld hl,07f20h		;d2d6	21 20 7f 	!    
	ld b,a			;d2d9	47 	G 
	ld a,(hl)			;d2da	7e 	~ 
	and 00fh		;d2db	e6 0f 	. . 
	or b			;d2dd	b0 	. 
	ret			;d2de	c9 	. 
sub_d2dfh:
	call sub_c812h		;d2df	cd 12 c8 	. . . 
ld2e2h:
	call sub_c7d0h		;d2e2	cd d0 c7 	. . . 
	call sub_c8c2h		;d2e5	cd c2 c8 	. . . 
	call sub_d292h		;d2e8	cd 92 d2 	. . . 
	jr z,ld300h		;d2eb	28 13 	( . 
	inc (hl)			;d2ed	34 	4 
	call sub_c1e1h		;d2ee	cd e1 c1 	. . . 
	ld l,019h		;d2f1	2e 19 	. . 
	ld a,010h		;d2f3	3e 10 	> . 
	add a,(hl)			;d2f5	86 	. 
	daa			;d2f6	27 	' 
	ld (hl),a			;d2f7	77 	w 
	dec l			;d2f8	2d 	- 
	ld a,000h		;d2f9	3e 00 	> . 
	adc a,(hl)			;d2fb	8e 	. 
	daa			;d2fc	27 	' 
	ld (hl),a			;d2fd	77 	w 
	jr ld2e2h		;d2fe	18 e2 	. . 
ld300h:
	call 08062h		;d300	cd 62 80 	. b . 
	call 08053h		;d303	cd 53 80 	. S . 
	ld l,019h		;d306	2e 19 	. . 
	set 0,(hl)		;d308	cb c6 	. . 
ld30ah:
	call sub_c7d0h		;d30a	cd d0 c7 	. . . 
	call sub_d2d2h		;d30d	cd d2 d2 	. . . 
	ld (hl),a			;d310	77 	w 
	ld l,02fh		;d311	2e 2f 	. / 
	ld a,(hl)			;d313	7e 	~ 
	and 00fh		;d314	e6 0f 	. . 
	ld (07f03h),a		;d316	32 03 7f 	2 .  
ld319h:
	ld a,(07f03h)		;d319	3a 03 7f 	: .  
	sub 001h		;d31c	d6 01 	. . 
	ld (07f03h),a		;d31e	32 03 7f 	2 .  
	jr c,ld334h		;d321	38 11 	8 . 
	call sub_c289h		;d323	cd 89 c2 	. . . 
	ld l,020h		;d326	2e 20 	.   
	ld a,(hl)			;d328	7e 	~ 
	and 0f0h		;d329	e6 f0 	. . 
	cp 0e0h		;d32b	fe e0 	. . 
	jr z,ld319h		;d32d	28 ea 	( . 
	call sub_c81dh		;d32f	cd 1d c8 	. . . 
	jr ld319h		;d332	18 e5 	. . 
ld334h:
	ld hl,07f0dh		;d334	21 0d 7f 	! .  
	ld a,(hl)			;d337	7e 	~ 
	sub 001h		;d338	d6 01 	. . 
	ld (hl),a			;d33a	77 	w 
	jp c,ld289h		;d33b	da 89 d2 	. . . 
	call 082bch		;d33e	cd bc 82 	. . . 
	call sub_c1cdh		;d341	cd cd c1 	. . . 
	jr ld30ah		;d344	18 c4 	. . 
sub_d346h:
	call sub_c812h		;d346	cd 12 c8 	. . . 
	ld hl,07f1ah		;d349	21 1a 7f 	! .  
	set 4,(hl)		;d34c	cb e6 	. . 
ld34eh:
	call sub_c7fah		;d34e	cd fa c7 	. . . 
	rrca			;d351	0f 	. 
	rrca			;d352	0f 	. 
	rrca			;d353	0f 	. 
	rrca			;d354	0f 	. 
	ld hl,07f20h		;d355	21 20 7f 	!    
	ld b,a			;d358	47 	G 
	ld a,(hl)			;d359	7e 	~ 
	and 00fh		;d35a	e6 0f 	. . 
	or b			;d35c	b0 	. 
	add a,b			;d35d	80 	. 
	ld (hl),a			;d35e	77 	w 
	call sub_c34ch		;d35f	cd 4c c3 	. L . 
ld362h:
	call sub_c291h		;d362	cd 91 c2 	. . . 
	ld b,007h		;d365	06 07 	. . 
	ld hl,07f1fh		;d367	21 1f 7f 	! .  
	ld de,07f17h		;d36a	11 17 7f 	. .  
	and a			;d36d	a7 	. 
ld36eh:
	ld a,(de)			;d36e	1a 	. 
	sbc a,(hl)			;d36f	9e 	. 
	daa			;d370	27 	' 
	ld (de),a			;d371	12 	. 
	dec e			;d372	1d 	. 
	dec l			;d373	2d 	- 
	djnz ld36eh		;d374	10 f8 	. . 
	jr c,ld389h		;d376	38 11 	8 . 
	ld l,02fh		;d378	2e 2f 	. / 
	inc (hl)			;d37a	34 	4 
	ld l,020h		;d37b	2e 20 	.   
	ld a,(hl)			;d37d	7e 	~ 
	and 0f0h		;d37e	e6 f0 	. . 
	cp 0e0h		;d380	fe e0 	. . 
	jr z,ld362h		;d382	28 de 	( . 
	call sub_c81dh		;d384	cd 1d c8 	. . . 
	jr ld362h		;d387	18 d9 	. . 
ld389h:
	call sub_d3bah		;d389	cd ba d3 	. . . 
	jr z,ld3a9h		;d38c	28 1b 	( . 
	inc (hl)			;d38e	34 	4 
	ld l,02fh		;d38f	2e 2f 	. / 
	ld b,007h		;d391	06 07 	. . 
	ld a,000h		;d393	3e 00 	> . 
ld395h:
	rld		;d395	ed 6f 	. o 
	dec l			;d397	2d 	- 
	djnz ld395h		;d398	10 fb 	. . 
	ld l,019h		;d39a	2e 19 	. . 
	ld a,010h		;d39c	3e 10 	> . 
	add a,(hl)			;d39e	86 	. 
	daa			;d39f	27 	' 
	ld (hl),a			;d3a0	77 	w 
	dec l			;d3a1	2d 	- 
	ld a,000h		;d3a2	3e 00 	> . 
	adc a,(hl)			;d3a4	8e 	. 
	daa			;d3a5	27 	' 
	ld (hl),a			;d3a6	77 	w 
	jr ld34eh		;d3a7	18 a5 	. . 
ld3a9h:
	call 08062h		;d3a9	cd 62 80 	. b . 
ld3ach:
	call sub_c7fah		;d3ac	cd fa c7 	. . . 
	call sub_c8b8h		;d3af	cd b8 c8 	. . . 
	call sub_d3ddh		;d3b2	cd dd d3 	. . . 
	jr c,ld3ach		;d3b5	38 f5 	8 . 
	jp ld289h		;d3b7	c3 89 d2 	. . . 
sub_d3bah:
	ld b,007h		;d3ba	06 07 	. . 
	ld l,01fh		;d3bc	2e 1f 	. . 
	ld e,017h		;d3be	1e 17 	. . 
	and a			;d3c0	a7 	. 
ld3c1h:
	ld a,(de)			;d3c1	1a 	. 
	adc a,(hl)			;d3c2	8e 	. 
	daa			;d3c3	27 	' 
	ld (de),a			;d3c4	12 	. 
	dec e			;d3c5	1d 	. 
	dec l			;d3c6	2d 	- 
	djnz ld3c1h		;d3c7	10 f8 	. . 
	ld l,017h		;d3c9	2e 17 	. . 
	ld b,007h		;d3cb	06 07 	. . 
	xor a			;d3cd	af 	. 
ld3ceh:
	rld		;d3ce	ed 6f 	. o 
	dec l			;d3d0	2d 	- 
	djnz ld3ceh		;d3d1	10 fb 	. . 
	call sub_c36ah		;d3d3	cd 6a c3 	. j . 
	ld hl,07f0dh		;d3d6	21 0d 7f 	! .  
	ld a,(hl)			;d3d9	7e 	~ 
	cp 00ch		;d3da	fe 0c 	. . 
	ret			;d3dc	c9 	. 
sub_d3ddh:
	ld hl,07f2fh		;d3dd	21 2f 7f 	! /  
	ld a,(hl)			;d3e0	7e 	~ 
	and 00fh		;d3e1	e6 0f 	. . 
	ld (07f03h),a		;d3e3	32 03 7f 	2 .  
ld3e6h:
	ld a,(07f03h)		;d3e6	3a 03 7f 	: .  
	sub 001h		;d3e9	d6 01 	. . 
	ld (07f03h),a		;d3eb	32 03 7f 	2 .  
	jr c,ld3f5h		;d3ee	38 05 	8 . 
	call sub_c39fh		;d3f0	cd 9f c3 	. . . 
	jr ld3e6h		;d3f3	18 f1 	. . 
ld3f5h:
	ld hl,07f0dh		;d3f5	21 0d 7f 	! .  
	ld a,(hl)			;d3f8	7e 	~ 
	sub 001h		;d3f9	d6 01 	. . 
	ld (hl),a			;d3fb	77 	w 
	jr c,ld409h		;d3fc	38 0b 	8 . 
	call sub_c1cdh		;d3fe	cd cd c1 	. . . 
	call 082bch		;d401	cd bc 82 	. . . 
	call 082c1h		;d404	cd c1 82 	. . . 
	scf			;d407	37 	7 
	ret			;d408	c9 	. 
ld409h:
	and a			;d409	a7 	. 
	ret			;d40a	c9 	. 
sub_d40bh:
	call sub_c812h		;d40b	cd 12 c8 	. . . 
	ld hl,07f1ah		;d40e	21 1a 7f 	! .  
	set 4,(hl)		;d411	cb e6 	. . 
ld413h:
	call sub_c7d0h		;d413	cd d0 c7 	. . . 
	rrca			;d416	0f 	. 
	rrca			;d417	0f 	. 
	rrca			;d418	0f 	. 
	rrca			;d419	0f 	. 
	ld hl,07f20h		;d41a	21 20 7f 	!    
	ld b,a			;d41d	47 	G 
	ld a,(hl)			;d41e	7e 	~ 
	and 00fh		;d41f	e6 0f 	. . 
	or b			;d421	b0 	. 
	ld (hl),a			;d422	77 	w 
	call sub_c34ch		;d423	cd 4c c3 	. L . 
ld426h:
	ld b,007h		;d426	06 07 	. . 
	ld hl,07f1fh		;d428	21 1f 7f 	! .  
	ld de,07f17h		;d42b	11 17 7f 	. .  
	and a			;d42e	a7 	. 
ld42fh:
	ld a,(de)			;d42f	1a 	. 
	sbc a,(hl)			;d430	9e 	. 
	daa			;d431	27 	' 
	ld (de),a			;d432	12 	. 
	dec l			;d433	2d 	- 
	dec e			;d434	1d 	. 
	djnz ld42fh		;d435	10 f8 	. . 
	jr c,ld44dh		;d437	38 14 	8 . 
	ld l,02fh		;d439	2e 2f 	. / 
	inc (hl)			;d43b	34 	4 
	call sub_c289h		;d43c	cd 89 c2 	. . . 
	ld l,020h		;d43f	2e 20 	.   
	ld a,(hl)			;d441	7e 	~ 
	and 0f0h		;d442	e6 f0 	. . 
	cp 0e0h		;d444	fe e0 	. . 
	jr z,ld426h		;d446	28 de 	( . 
	call sub_c81dh		;d448	cd 1d c8 	. . . 
	jr ld426h		;d44b	18 d9 	. . 
ld44dh:
	call sub_d3bah		;d44d	cd ba d3 	. . . 
	jr z,ld465h		;d450	28 13 	( . 
	inc (hl)			;d452	34 	4 
	call sub_c1e1h		;d453	cd e1 c1 	. . . 
	ld l,019h		;d456	2e 19 	. . 
	ld a,010h		;d458	3e 10 	> . 
	add a,(hl)			;d45a	86 	. 
	daa			;d45b	27 	' 
	ld (hl),a			;d45c	77 	w 
	dec l			;d45d	2d 	- 
	ld a,000h		;d45e	3e 00 	> . 
	adc a,(hl)			;d460	8e 	. 
	daa			;d461	27 	' 
	ld (hl),a			;d462	77 	w 
	jr ld413h		;d463	18 ae 	. . 
ld465h:
	call 08062h		;d465	cd 62 80 	. b . 
ld468h:
	call sub_c7d0h		;d468	cd d0 c7 	. . . 
	call sub_c8c2h		;d46b	cd c2 c8 	. . . 
	call sub_d3ddh		;d46e	cd dd d3 	. . . 
	jr c,ld468h		;d471	38 f5 	8 . 
	jp ld289h		;d473	c3 89 d2 	. . . 
sub_d476h:
	ld (0792eh),a		;d476	32 2e 79 	2 . y 
	cp 08bh		;d479	fe 8b 	. . 
	jr z,ld49dh		;d47b	28 20 	(   
	cp 08eh		;d47d	fe 8e 	. . 
	jr z,ld49dh		;d47f	28 1c 	( . 
	ld hl,07f10h		;d481	21 10 7f 	! .  
	ld a,(hl)			;d484	7e 	~ 
	and 0f0h		;d485	e6 f0 	. . 
	cp 090h		;d487	fe 90 	. . 
	jr nz,ld49dh		;d489	20 12 	  . 
	ld a,(hl)			;d48b	7e 	~ 
	and 00fh		;d48c	e6 0f 	. . 
	cp 009h		;d48e	fe 09 	. . 
	jr z,ld496h		;d490	28 04 	( . 
ld492h:
	call sub_d4ach		;d492	cd ac d4 	. . . 
	ret			;d495	c9 	. 
ld496h:
	ld l,011h		;d496	2e 11 	. . 
	ld a,(hl)			;d498	7e 	~ 
	cp 070h		;d499	fe 70 	. p 
	jr c,ld492h		;d49b	38 f5 	8 . 
ld49dh:
	ld a,(0792eh)		;d49d	3a 2e 79 	: . y 
	cp 08dh		;d4a0	fe 8d 	. . 
	jr c,ld4a8h		;d4a2	38 04 	8 . 
	call sub_d530h		;d4a4	cd 30 d5 	. 0 . 
	ret			;d4a7	c9 	. 
ld4a8h:
	call sub_d4efh		;d4a8	cd ef d4 	. . . 
	ret			;d4ab	c9 	. 
sub_d4ach:
	call 08108h		;d4ac	cd 08 81 	. . . 
	call sub_c4fch		;d4af	cd fc c4 	. . . 
	ret c			;d4b2	d8 	. 
	call 080cdh		;d4b3	cd cd 80 	. . . 
	call 08024h		;d4b6	cd 24 80 	. $ . 
	ld l,012h		;d4b9	2e 12 	. . 
	ld a,(hl)			;d4bb	7e 	~ 
	or 030h		;d4bc	f6 30 	. 0 
	ld (hl),a			;d4be	77 	w 
	ld a,(0792eh)		;d4bf	3a 2e 79 	: . y 
	cp 08dh		;d4c2	fe 8d 	. . 
	jr nc,ld4c9h		;d4c4	30 03 	0 . 
	call 081e8h		;d4c6	cd e8 81 	. . . 
ld4c9h:
	ld a,(0792eh)		;d4c9	3a 2e 79 	: . y 
	cp 08ch		;d4cc	fe 8c 	. . 
	jr z,ld4deh		;d4ce	28 0e 	( . 
	cp 08fh		;d4d0	fe 8f 	. . 
	jr z,ld4deh		;d4d2	28 0a 	( . 
	call 081e8h		;d4d4	cd e8 81 	. . . 
	ld hl,07f12h		;d4d7	21 12 7f 	! .  
	ld a,(hl)			;d4da	7e 	~ 
	or 060h		;d4db	f6 60 	. ` 
	ld (hl),a			;d4dd	77 	w 
ld4deh:
	call sub_c579h		;d4de	cd 79 c5 	. y . 
	ret c			;d4e1	d8 	. 
	call 0803eh		;d4e2	cd 3e 80 	. > . 
	call sub_c488h		;d4e5	cd 88 c4 	. . . 
	ret c			;d4e8	d8 	. 
	call 08093h		;d4e9	cd 93 80 	. . . 
	jp sub_c4ffh		;d4ec	c3 ff c4 	. . . 
sub_d4efh:
	call sub_d0d2h		;d4ef	cd d2 d0 	. . . 
	jr c,ld554h		;d4f2	38 60 	8 ` 
	call 08108h		;d4f4	cd 08 81 	. . . 
	call sub_c576h		;d4f7	cd 76 c5 	. v . 
	jr c,ld554h		;d4fa	38 58 	8 X 
	call 080f8h		;d4fc	cd f8 80 	. . . 
	call 08093h		;d4ff	cd 93 80 	. . . 
	call sub_c485h		;d502	cd 85 c4 	. . . 
	ret c			;d505	d8 	. 
	call 08093h		;d506	cd 93 80 	. . . 
	call 08108h		;d509	cd 08 81 	. . . 
	call 080ddh		;d50c	cd dd 80 	. . . 
	call sub_c488h		;d50f	cd 88 c4 	. . . 
	ret c			;d512	d8 	. 
	call 08093h		;d513	cd 93 80 	. . . 
	ld a,(0792eh)		;d516	3a 2e 79 	: . y 
	cp 08ch		;d519	fe 8c 	. . 
	jr nz,ld520h		;d51b	20 03 	  . 
ld51dh:
	jp sub_c579h		;d51d	c3 79 c5 	. y . 
ld520h:
	cp 08ah		;d520	fe 8a 	. . 
	jr z,ld527h		;d522	28 03 	( . 
	call 080cdh		;d524	cd cd 80 	. . . 
ld527h:
	call 08024h		;d527	cd 24 80 	. $ . 
	ld l,012h		;d52a	2e 12 	. . 
	set 5,(hl)		;d52c	cb ee 	. . 
	jr ld51dh		;d52e	18 ed 	. . 
sub_d530h:
	ld a,(0792eh)		;d530	3a 2e 79 	: . y 
	cp 08fh		;d533	fe 8f 	. . 
	jr nz,ld55eh		;d535	20 27 	  ' 
	call 080f8h		;d537	cd f8 80 	. . . 
	call 0803eh		;d53a	cd 3e 80 	. > . 
	call sub_c488h		;d53d	cd 88 c4 	. . . 
	ret c			;d540	d8 	. 
	call 08108h		;d541	cd 08 81 	. . . 
	call 080ddh		;d544	cd dd 80 	. . . 
	call 0803eh		;d547	cd 3e 80 	. > . 
	call sub_c485h		;d54a	cd 85 c4 	. . . 
	ret c			;d54d	d8 	. 
	call 08093h		;d54e	cd 93 80 	. . . 
	call sub_c579h		;d551	cd 79 c5 	. y . 
ld554h:
	jp c,083ach		;d554	da ac 83 	. . . 
	call sub_c606h		;d557	cd 06 c6 	. . . 
	ret c			;d55a	d8 	. 
	jp sub_c999h		;d55b	c3 99 c9 	. . . 
ld55eh:
	call sub_c226h		;d55e	cd 26 c2 	. & . 
	res 0,(hl)		;d561	cb 86 	. . 
	ld a,(0792eh)		;d563	3a 2e 79 	: . y 
	cp 08eh		;d566	fe 8e 	. . 
	jr nz,ld56dh		;d568	20 03 	  . 
	call sub_c226h		;d56a	cd 26 c2 	. & . 
ld56dh:
	call 08108h		;d56d	cd 08 81 	. . . 
	call sub_c4fch		;d570	cd fc c4 	. . . 
	jr c,ld554h		;d573	38 df 	8 . 
	call 0803eh		;d575	cd 3e 80 	. > . 
	call 08145h		;d578	cd 45 81 	. E . 
	ld a,(0792eh)		;d57b	3a 2e 79 	: . y 
	cp 08eh		;d57e	fe 8e 	. . 
	jr nz,ld585h		;d580	20 03 	  . 
	call 081e8h		;d582	cd e8 81 	. . . 
ld585h:
	call sub_c488h		;d585	cd 88 c4 	. . . 
	ret c			;d588	d8 	. 
	call sub_c606h		;d589	cd 06 c6 	. . . 
	ret c			;d58c	d8 	. 
	call 08093h		;d58d	cd 93 80 	. . . 
	call sub_c488h		;d590	cd 88 c4 	. . . 
	ret c			;d593	d8 	. 
	call sub_c999h		;d594	cd 99 c9 	. . . 
	ret c			;d597	d8 	. 
	call sub_c226h		;d598	cd 26 c2 	. & . 
	and a			;d59b	a7 	. 
	ret			;d59c	c9 	. 
	call sub_efa5h		;d59d	cd a5 ef 	. . . 
	ret c			;d5a0	d8 	. 
	ld hl,07f18h		;d5a1	21 18 7f 	! .  
	ld c,(hl)			;d5a4	4e 	N 
	inc l			;d5a5	2c 	, 
	ld b,(hl)			;d5a6	46 	F 
	ld hl,0ffffh		;d5a7	21 ff ff 	! . . 
	and a			;d5aa	a7 	. 
	sbc hl,bc		;d5ab	ed 42 	. B 
	ld (07f18h),hl		;d5ad	22 18 7f 	" .  
	jp le1cfh		;d5b0	c3 cf e1 	. . . 
ld5b3h:
	ld hl,07f31h		;d5b3	21 31 7f 	! 1  
	res 6,(hl)		;d5b6	cb b6 	. . 
	jr ld5bfh		;d5b8	18 05 	. . 
ld5bah:
	ld hl,07f31h		;d5ba	21 31 7f 	! 1  
	set 6,(hl)		;d5bd	cb f6 	. . 
ld5bfh:
	call sub_efa5h		;d5bf	cd a5 ef 	. . . 
	ret c			;d5c2	d8 	. 
	call 08083h		;d5c3	cd 83 80 	. . . 
	call sub_dad0h		;d5c6	cd d0 da 	. . . 
	call sub_efb3h		;d5c9	cd b3 ef 	. . . 
	ret c			;d5cc	d8 	. 
	ld hl,07f18h		;d5cd	21 18 7f 	! .  
	ld de,07f28h		;d5d0	11 28 7f 	. (  
	ld b,002h		;d5d3	06 02 	. . 
	ld a,(07f31h)		;d5d5	3a 31 7f 	: 1  
	bit 6,a		;d5d8	cb 77 	. w 
	jr z,ld5e8h		;d5da	28 0c 	( . 
ld5dch:
	ld a,(de)			;d5dc	1a 	. 
	and (hl)			;d5dd	a6 	. 
	ld (hl),a			;d5de	77 	w 
	inc l			;d5df	2c 	, 
	inc e			;d5e0	1c 	. 
	djnz ld5dch		;d5e1	10 f9 	. . 
ld5e3h:
	call le1cfh		;d5e3	cd cf e1 	. . . 
	and a			;d5e6	a7 	. 
	ret			;d5e7	c9 	. 
ld5e8h:
	ld a,(de)			;d5e8	1a 	. 
	or (hl)			;d5e9	b6 	. 
	ld (hl),a			;d5ea	77 	w 
	inc l			;d5eb	2c 	, 
	inc e			;d5ec	1c 	. 
	djnz ld5e8h		;d5ed	10 f9 	. . 
	jr ld5e3h		;d5ef	18 f2 	. . 
	call 0818ah		;d5f1	cd 8a 81 	. . . 
	call 082d2h		;d5f4	cd d2 82 	. . . 
	jp c,ld745h		;d5f7	da 45 d7 	. E . 
	ld a,(07f31h)		;d5fa	3a 31 7f 	: 1  
	bit 0,a		;d5fd	cb 47 	. G 
	jp nz,ld730h		;d5ff	c2 30 d7 	. 0 . 
	call 08024h		;d602	cd 24 80 	. $ . 
	ld hl,07f12h		;d605	21 12 7f 	! .  
	set 4,(hl)		;d608	cb e6 	. . 
	and a			;d60a	a7 	. 
	ret			;d60b	c9 	. 
ld60ch:
	call sub_db67h		;d60c	cd 67 db 	. g . 
	jr nc,ld61bh		;d60f	30 0a 	0 . 
	call 08145h		;d611	cd 45 81 	. E . 
ld614h:
	ld hl,07f30h		;d614	21 30 7f 	! 0  
	set 1,(hl)		;d617	cb ce 	. . 
	jr ld64eh		;d619	18 33 	. 3 
ld61bh:
	call 0816ah		;d61b	cd 6a 81 	. j . 
	call sub_d781h		;d61e	cd 81 d7 	. . . 
	jp c,ld779h		;d621	da 79 d7 	. y . 
	jp ld6cdh		;d624	c3 cd d6 	. . . 
ld627h:
	call sub_db67h		;d627	cd 67 db 	. g . 
	jr c,ld614h		;d62a	38 e8 	8 . 
	call 0816ah		;d62c	cd 6a 81 	. j . 
	call sub_d781h		;d62f	cd 81 d7 	. . . 
	jp c,ld6cdh		;d632	da cd d6 	. . . 
	ld hl,07f30h		;d635	21 30 7f 	! 0  
	bit 0,(hl)		;d638	cb 46 	. F 
	jp z,ld6cdh		;d63a	ca cd d6 	. . . 
	jp ld779h		;d63d	c3 79 d7 	. y . 
ld640h:
	call sub_db67h		;d640	cd 67 db 	. g . 
	jp nc,ld6bch		;d643	d2 bc d6 	. . . 
	call 08145h		;d646	cd 45 81 	. E . 
ld649h:
	ld hl,07f30h		;d649	21 30 7f 	! 0  
	res 1,(hl)		;d64c	cb 8e 	. . 
ld64eh:
	ld hl,07f1fh		;d64e	21 1f 7f 	! .  
	ld a,(hl)			;d651	7e 	~ 
	or a			;d652	b7 	. 
	jr z,ld6b3h		;d653	28 5e 	( ^ 
	ld (07f08h),a		;d655	32 08 7f 	2 .  
	ld a,(07f17h)		;d658	3a 17 7f 	: .  
	or a			;d65b	b7 	. 
	jp z,ld730h		;d65c	ca 30 d7 	. 0 . 
	ld (07f09h),a		;d65f	32 09 7f 	2 .  
	ld hl,07f08h		;d662	21 08 7f 	! .  
	dec (hl)			;d665	35 	5 
	ld l,009h		;d666	2e 09 	. . 
	dec (hl)			;d668	35 	5 
	ld ix,(07f15h)		;d669	dd 2a 15 7f 	. * .  
	dec ix		;d66d	dd 2b 	. + 
	ld iy,(07f1dh)		;d66f	fd 2a 1d 7f 	. * .  
	dec iy		;d673	fd 2b 	. + 
ld675h:
	ld l,015h		;d675	2e 15 	. . 
	inc (hl)			;d677	34 	4 
	inc ix		;d678	dd 23 	. # 
	ld a,(ix+000h)		;d67a	dd 7e 00 	. ~ . 
	ld b,a			;d67d	47 	G 
	ld l,01dh		;d67e	2e 1d 	. . 
	inc (hl)			;d680	34 	4 
	inc iy		;d681	fd 23 	. # 
	ld a,(iy+000h)		;d683	fd 7e 00 	. ~ . 
	cp b			;d686	b8 	. 
	jp c,ld745h		;d687	da 45 d7 	. E . 
	jp nz,ld730h		;d68a	c2 30 d7 	. 0 . 
	ld l,008h		;d68d	2e 08 	. . 
	ld a,(hl)			;d68f	7e 	~ 
	sub 001h		;d690	d6 01 	. . 
	ld (hl),a			;d692	77 	w 
	jr c,ld6a0h		;d693	38 0b 	8 . 
	ld l,009h		;d695	2e 09 	. . 
	ld a,(hl)			;d697	7e 	~ 
	sub 001h		;d698	d6 01 	. . 
	ld (hl),a			;d69a	77 	w 
	jr nc,ld675h		;d69b	30 d8 	0 . 
	jp ld730h		;d69d	c3 30 d7 	. 0 . 
ld6a0h:
	ld l,009h		;d6a0	2e 09 	. . 
	ld a,(hl)			;d6a2	7e 	~ 
	sub 001h		;d6a3	d6 01 	. . 
	ld (hl),a			;d6a5	77 	w 
	jp nc,ld745h		;d6a6	d2 45 d7 	. E . 
ld6a9h:
	ld a,(07f30h)		;d6a9	3a 30 7f 	: 0  
	bit 1,a		;d6ac	cb 4f 	. O 
	jp z,ld745h		;d6ae	ca 45 d7 	. E . 
	jr ld730h		;d6b1	18 7d 	. } 
ld6b3h:
	ld l,017h		;d6b3	2e 17 	. . 
	ld a,(hl)			;d6b5	7e 	~ 
	or a			;d6b6	b7 	. 
	jp nz,ld745h		;d6b7	c2 45 d7 	. E . 
	jr ld6a9h		;d6ba	18 ed 	. . 
ld6bch:
	call 0816ah		;d6bc	cd 6a 81 	. j . 
	call sub_d781h		;d6bf	cd 81 d7 	. . . 
	jp c,ld779h		;d6c2	da 79 d7 	. y . 
	ld hl,07f30h		;d6c5	21 30 7f 	! 0  
	bit 0,(hl)		;d6c8	cb 46 	. F 
	jp z,ld779h		;d6ca	ca 79 d7 	. y . 
ld6cdh:
	call 08024h		;d6cd	cd 24 80 	. $ . 
	ld l,012h		;d6d0	2e 12 	. . 
	set 4,(hl)		;d6d2	cb e6 	. . 
	ld l,031h		;d6d4	2e 31 	. 1 
	set 0,(hl)		;d6d6	cb c6 	. . 
	call 0819eh		;d6d8	cd 9e 81 	. . . 
	and a			;d6db	a7 	. 
	ret			;d6dc	c9 	. 
ld6ddh:
	call sub_db67h		;d6dd	cd 67 db 	. g . 
	jp c,ld649h		;d6e0	da 49 d6 	. I . 
	call 0816ah		;d6e3	cd 6a 81 	. j . 
	call sub_d781h		;d6e6	cd 81 d7 	. . . 
	jr c,ld6cdh		;d6e9	38 e2 	8 . 
	jp ld779h		;d6eb	c3 79 d7 	. y . 
ld6eeh:
	call sub_db67h		;d6ee	cd 67 db 	. g . 
	jr nc,ld74ah		;d6f1	30 57 	0 W 
	ld hl,07f30h		;d6f3	21 30 7f 	! 0  
	set 1,(hl)		;d6f6	cb ce 	. . 
ld6f8h:
	ld hl,07f17h		;d6f8	21 17 7f 	! .  
	ld a,(hl)			;d6fb	7e 	~ 
	ld l,01fh		;d6fc	2e 1f 	. . 
	cp (hl)			;d6fe	be 	. 
	jr nz,ld73eh		;d6ff	20 3d 	  = 
	ld l,008h		;d701	2e 08 	. . 
	sub 001h		;d703	d6 01 	. . 
	ld (hl),a			;d705	77 	w 
	jr c,ld729h		;d706	38 21 	8 ! 
	ld ix,(07f15h)		;d708	dd 2a 15 7f 	. * .  
	dec ix		;d70c	dd 2b 	. + 
	ld iy,(07f1dh)		;d70e	fd 2a 1d 7f 	. * .  
	dec iy		;d712	fd 2b 	. + 
ld714h:
	inc ix		;d714	dd 23 	. # 
	ld b,(ix+000h)		;d716	dd 46 00 	. F . 
	inc iy		;d719	fd 23 	. # 
	ld a,(iy+000h)		;d71b	fd 7e 00 	. ~ . 
	cp b			;d71e	b8 	. 
	jr nz,ld73eh		;d71f	20 1d 	  . 
	ld l,008h		;d721	2e 08 	. . 
	ld a,(hl)			;d723	7e 	~ 
	sub 001h		;d724	d6 01 	. . 
	ld (hl),a			;d726	77 	w 
	jr nc,ld714h		;d727	30 eb 	0 . 
ld729h:
	ld hl,07f30h		;d729	21 30 7f 	! 0  
	bit 1,(hl)		;d72c	cb 4e 	. N 
	jr z,ld745h		;d72e	28 15 	( . 
ld730h:
	call 08024h		;d730	cd 24 80 	. $ . 
	ld hl,07f12h		;d733	21 12 7f 	! .  
	set 4,(hl)		;d736	cb e6 	. . 
	ld l,011h		;d738	2e 11 	. . 
	set 3,(hl)		;d73a	cb de 	. . 
	jr ld748h		;d73c	18 0a 	. . 
ld73eh:
	ld hl,07f30h		;d73e	21 30 7f 	! 0  
	bit 1,(hl)		;d741	cb 4e 	. N 
	jr z,ld730h		;d743	28 eb 	( . 
ld745h:
	call 08024h		;d745	cd 24 80 	. $ . 
ld748h:
	and a			;d748	a7 	. 
	ret			;d749	c9 	. 
ld74ah:
	call 0816ah		;d74a	cd 6a 81 	. j . 
	call sub_d781h		;d74d	cd 81 d7 	. . . 
	jr c,ld779h		;d750	38 27 	8 ' 
	ld hl,07f30h		;d752	21 30 7f 	! 0  
	bit 0,(hl)		;d755	cb 46 	. F 
	jr nz,ld779h		;d757	20 20 	    
	jp ld6cdh		;d759	c3 cd d6 	. . . 
ld75ch:
	call sub_db67h		;d75c	cd 67 db 	. g . 
	jr nc,ld768h		;d75f	30 07 	0 . 
	ld hl,07f30h		;d761	21 30 7f 	! 0  
	res 1,(hl)		;d764	cb 8e 	. . 
	jr ld6f8h		;d766	18 90 	. . 
ld768h:
	call 0816ah		;d768	cd 6a 81 	. j . 
	call sub_d781h		;d76b	cd 81 d7 	. . . 
	jp c,ld6cdh		;d76e	da cd d6 	. . . 
	ld hl,07f30h		;d771	21 30 7f 	! 0  
	bit 0,(hl)		;d774	cb 46 	. F 
	jp nz,ld6cdh		;d776	c2 cd d6 	. . . 
ld779h:
	call 08024h		;d779	cd 24 80 	. $ . 
	call 0819eh		;d77c	cd 9e 81 	. . . 
	and a			;d77f	a7 	. 
	ret			;d780	c9 	. 
sub_d781h:
	call 081bbh		;d781	cd bb 81 	. . . 
	jp c,ld810h		;d784	da 10 d8 	. . . 
	call 08145h		;d787	cd 45 81 	. E . 
	call 081bbh		;d78a	cd bb 81 	. . . 
	jp c,ld810h		;d78d	da 10 d8 	. . . 
	call 08145h		;d790	cd 45 81 	. E . 
	ld hl,07f30h		;d793	21 30 7f 	! 0  
	res 0,(hl)		;d796	cb 86 	. . 
	ld l,031h		;d798	2e 31 	. 1 
	bit 0,(hl)		;d79a	cb 46 	. F 
	jr nz,ld7d4h		;d79c	20 36 	  6 
	bit 1,(hl)		;d79e	cb 4e 	. N 
	jr nz,ld7cdh		;d7a0	20 2b 	  + 
ld7a2h:
	ld hl,07f10h		;d7a2	21 10 7f 	! .  
	ld a,(hl)			;d7a5	7e 	~ 
	ld l,018h		;d7a6	2e 18 	. . 
	and 0f0h		;d7a8	e6 f0 	. . 
	jr nz,ld7ddh		;d7aa	20 31 	  1 
	ld a,(hl)			;d7ac	7e 	~ 
	and 0f0h		;d7ad	e6 f0 	. . 
	jr nz,ld7ebh		;d7af	20 3a 	  : 
ld7b1h:
	ld de,07f12h		;d7b1	11 12 7f 	. .  
	ld hl,07f1ah		;d7b4	21 1a 7f 	! .  
	ld b,002h		;d7b7	06 02 	. . 
	and a			;d7b9	a7 	. 
ld7bah:
	dec e			;d7ba	1d 	. 
	dec l			;d7bb	2d 	- 
	ld a,(de)			;d7bc	1a 	. 
	sbc a,(hl)			;d7bd	9e 	. 
	daa			;d7be	27 	' 
	ld (de),a			;d7bf	12 	. 
	djnz ld7bah		;d7c0	10 f8 	. . 
	jr c,ld807h		;d7c2	38 43 	8 C 
	ld a,(de)			;d7c4	1a 	. 
	or a			;d7c5	b7 	. 
	jr nz,ld7cdh		;d7c6	20 05 	  . 
	inc e			;d7c8	1c 	. 
	ld a,(de)			;d7c9	1a 	. 
	or a			;d7ca	b7 	. 
	jr z,ld7f4h		;d7cb	28 27 	( ' 
ld7cdh:
	ld hl,07f30h		;d7cd	21 30 7f 	! 0  
	set 0,(hl)		;d7d0	cb c6 	. . 
ld7d2h:
	and a			;d7d2	a7 	. 
	ret			;d7d3	c9 	. 
ld7d4h:
	bit 1,(hl)		;d7d4	cb 4e 	. N 
	jr z,ld807h		;d7d6	28 2f 	( / 
	call 08145h		;d7d8	cd 45 81 	. E . 
	jr ld7a2h		;d7db	18 c5 	. . 
ld7ddh:
	ld a,(hl)			;d7dd	7e 	~ 
	and 0f0h		;d7de	e6 f0 	. . 
	jr nz,ld7b1h		;d7e0	20 cf 	  . 
	ld l,01ah		;d7e2	2e 1a 	. . 
	ld a,(hl)			;d7e4	7e 	~ 
	and 0f0h		;d7e5	e6 f0 	. . 
	jr nz,ld807h		;d7e7	20 1e 	  . 
	jr ld7cdh		;d7e9	18 e2 	. . 
ld7ebh:
	ld l,012h		;d7eb	2e 12 	. . 
	ld a,(hl)			;d7ed	7e 	~ 
	and 0f0h		;d7ee	e6 f0 	. . 
	jr z,ld807h		;d7f0	28 15 	( . 
	jr ld7cdh		;d7f2	18 d9 	. . 
ld7f4h:
	ld de,07f16h		;d7f4	11 16 7f 	. .  
	ld hl,07f1eh		;d7f7	21 1e 7f 	! .  
	ld b,005h		;d7fa	06 05 	. . 
	and a			;d7fc	a7 	. 
ld7fdh:
	ld a,(de)			;d7fd	1a 	. 
	sbc a,(hl)			;d7fe	9e 	. 
	daa			;d7ff	27 	' 
	ld (de),a			;d800	12 	. 
	dec l			;d801	2d 	- 
	dec e			;d802	1d 	. 
	djnz ld7fdh		;d803	10 f8 	. . 
	jr nc,ld809h		;d805	30 02 	0 . 
ld807h:
	scf			;d807	37 	7 
	ret			;d808	c9 	. 
ld809h:
	call 082d2h		;d809	cd d2 82 	. . . 
	jr c,ld7d2h		;d80c	38 c4 	8 . 
	jr ld7cdh		;d80e	18 bd 	. . 
ld810h:
	pop hl			;d810	e1 	. 
	scf			;d811	37 	7 
	ret			;d812	c9 	. 
ld813h:
	ld hl,07964h		;d813	21 64 79 	! d y 
	res 2,(hl)		;d816	cb 96 	. . 
	jr ld81fh		;d818	18 05 	. . 
ld81ah:
	ld hl,07964h		;d81a	21 64 79 	! d y 
	set 2,(hl)		;d81d	cb d6 	. . 
ld81fh:
	ld a,(079f2h)		;d81f	3a f2 79 	: . y 
	cp 002h		;d822	fe 02 	. . 
	jp nz,0834eh		;d824	c2 4e 83 	. N . 
	call sub_db67h		;d827	cd 67 db 	. g . 
	jp c,0838ch		;d82a	da 8c 83 	. . . 
	call 0816ah		;d82d	cd 6a 81 	. j . 
	ld a,(07f31h)		;d830	3a 31 7f 	: 1  
	and 003h		;d833	e6 03 	. . 
	jp nz,083ach		;d835	c2 ac 83 	. . . 
	call 08145h		;d838	cd 45 81 	. E . 
	call 081bbh		;d83b	cd bb 81 	. . . 
	ret c			;d83e	d8 	. 
	call 08145h		;d83f	cd 45 81 	. E . 
	call 081bbh		;d842	cd bb 81 	. . . 
	ret c			;d845	d8 	. 
	ld de,07980h		;d846	11 80 79 	. . y 
	call sub_dca2h		;d849	cd a2 dc 	. . . 
	call 080f8h		;d84c	cd f8 80 	. . . 
	call 08083h		;d84f	cd 83 80 	. . . 
	call 08024h		;d852	cd 24 80 	. $ . 
	ld hl,07010h		;d855	21 10 70 	! . p 
	ld (07f11h),hl		;d858	22 11 7f 	" .  
	call sub_c485h		;d85b	cd 85 c4 	. . . 
	jr c,ld8bah		;d85e	38 5a 	8 Z 
	ld a,(07f31h)		;d860	3a 31 7f 	: 1  
	rra			;d863	1f 	. 
	jr nc,ld8bah		;d864	30 54 	0 T 
	call 080ddh		;d866	cd dd 80 	. . . 
	call 08093h		;d869	cd 93 80 	. . . 
	call sub_c485h		;d86c	cd 85 c4 	. . . 
	ret c			;d86f	d8 	. 
	call sub_cc8ah		;d870	cd 8a cc 	. . . 
	ret c			;d873	d8 	. 
	call 08108h		;d874	cd 08 81 	. . . 
	ld hl,(079f5h)		;d877	2a f5 79 	* . y 
	ld h,07ah		;d87a	26 7a 	& z 
	call sub_dd0eh		;d87c	cd 0e dd 	. . . 
	call sub_cc8ah		;d87f	cd 8a cc 	. . . 
	ret c			;d882	d8 	. 
	call 08093h		;d883	cd 93 80 	. . . 
	call 08145h		;d886	cd 45 81 	. E . 
	call sub_c579h		;d889	cd 79 c5 	. y . 
	ret c			;d88c	d8 	. 
	ld a,(07964h)		;d88d	3a 64 79 	: d y 
	and 004h		;d890	e6 04 	. . 
	jr z,ld8a8h		;d892	28 14 	( . 
	call 08108h		;d894	cd 08 81 	. . . 
	ld hl,07980h		;d897	21 80 79 	! . y 
	call sub_dd0eh		;d89a	cd 0e dd 	. . . 
	call sub_cc8ah		;d89d	cd 8a cc 	. . . 
	ret c			;d8a0	d8 	. 
	call 08093h		;d8a1	cd 93 80 	. . . 
	call sub_c579h		;d8a4	cd 79 c5 	. y . 
	ret c			;d8a7	d8 	. 
ld8a8h:
	ld a,(07f10h)		;d8a8	3a 10 7f 	: .  
	or a			;d8ab	b7 	. 
	jr z,ld8b5h		;d8ac	28 07 	( . 
	call sub_d965h		;d8ae	cd 65 d9 	. e . 
ld8b1h:
	jp nc,0819eh		;d8b1	d2 9e 81 	. . . 
	ret			;d8b4	c9 	. 
ld8b5h:
	call 081c6h		;d8b5	cd c6 81 	. . . 
	jr ld8b1h		;d8b8	18 f7 	. . 
ld8bah:
	call 080ddh		;d8ba	cd dd 80 	. . . 
	ld a,(07f10h)		;d8bd	3a 10 7f 	: .  
	or a			;d8c0	b7 	. 
	jr nz,ld90eh		;d8c1	20 4b 	  K 
	call sub_c752h		;d8c3	cd 52 c7 	. R . 
	ld a,(07f12h)		;d8c6	3a 12 7f 	: .  
	or a			;d8c9	b7 	. 
	jr nz,ld90eh		;d8ca	20 42 	  B 
	call 080bah		;d8cc	cd ba 80 	. . . 
	ld a,(07f10h)		;d8cf	3a 10 7f 	: .  
	or a			;d8d2	b7 	. 
	jr nz,ld90eh		;d8d3	20 39 	  9 
	call sub_c752h		;d8d5	cd 52 c7 	. R . 
	ld a,(07f12h)		;d8d8	3a 12 7f 	: .  
	or a			;d8db	b7 	. 
	jr nz,ld90eh		;d8dc	20 30 	  0 
	ld a,(07f22h)		;d8de	3a 22 7f 	: "  
	and 0f0h		;d8e1	e6 f0 	. . 
	jr z,ld94fh		;d8e3	28 6a 	( j 
	call 080ddh		;d8e5	cd dd 80 	. . . 
	call 08093h		;d8e8	cd 93 80 	. . . 
	call sub_c485h		;d8eb	cd 85 c4 	. . . 
	ret c			;d8ee	d8 	. 
	ld a,(07f31h)		;d8ef	3a 31 7f 	: 1  
	rra			;d8f2	1f 	. 
	jr c,ld90eh		;d8f3	38 19 	8 . 
	ld de,07980h		;d8f5	11 80 79 	. . y 
	call sub_dca2h		;d8f8	cd a2 dc 	. . . 
	ld a,(07964h)		;d8fb	3a 64 79 	: d y 
	and 004h		;d8fe	e6 04 	. . 
	ld a,(07f12h)		;d900	3a 12 7f 	: .  
	jr nz,ld911h		;d903	20 0c 	  . 
	or a			;d905	b7 	. 
	jr z,ld90eh		;d906	28 06 	( . 
	call sub_d991h		;d908	cd 91 d9 	. . . 
	jr nc,ld8a8h		;d90b	30 9b 	0 . 
	ret			;d90d	c9 	. 
ld90eh:
	jp 083ach		;d90e	c3 ac 83 	. . . 
ld911h:
	or a			;d911	b7 	. 
	jr z,ld94fh		;d912	28 3b 	( ; 
	call 0811fh		;d914	cd 1f 81 	. . . 
	call sub_c485h		;d917	cd 85 c4 	. . . 
	ret c			;d91a	d8 	. 
	ld a,(07f31h)		;d91b	3a 31 7f 	: 1  
	rra			;d91e	1f 	. 
	jr c,ld92ah		;d91f	38 09 	8 . 
	ld hl,07f20h		;d921	21 20 7f 	!    
	ld de,07980h		;d924	11 80 79 	. . y 
	call sub_d960h		;d927	cd 60 d9 	. ` . 
ld92ah:
	call 080ddh		;d92a	cd dd 80 	. . . 
	call sub_cc8ah		;d92d	cd 8a cc 	. . . 
	ret c			;d930	d8 	. 
	ld hl,(079f5h)		;d931	2a f5 79 	* . y 
	ld h,07ah		;d934	26 7a 	& z 
	call sub_d95dh		;d936	cd 5d d9 	. ] . 
	call sub_d991h		;d939	cd 91 d9 	. . . 
	ret c			;d93c	d8 	. 
	call 080cdh		;d93d	cd cd 80 	. . . 
	ld hl,(079f5h)		;d940	2a f5 79 	* . y 
	ld h,07ah		;d943	26 7a 	& z 
	call sub_dd0eh		;d945	cd 0e dd 	. . . 
	call sub_c579h		;d948	cd 79 c5 	. y . 
	jp nc,ld8a8h		;d94b	d2 a8 d8 	. . . 
	ret			;d94e	c9 	. 
ld94fh:
	call 08024h		;d94f	cd 24 80 	. $ . 
	ld a,010h		;d952	3e 10 	> . 
	ld (07f12h),a		;d954	32 12 7f 	2 .  
	jp ld8a8h		;d957	c3 a8 d8 	. . . 
sub_d95ah:
	ld hl,07f28h		;d95a	21 28 7f 	! (  
sub_d95dh:
	ld de,07f10h		;d95d	11 10 7f 	. .  
sub_d960h:
	ld b,008h		;d960	06 08 	. . 
	jp 08420h		;d962	c3 20 84 	.   . 
sub_d965h:
	ld hl,07f16h		;d965	21 16 7f 	! .  
	ld a,(hl)			;d968	7e 	~ 
	inc l			;d969	2c 	, 
	or a			;d96a	b7 	. 
	jr z,ld98ah		;d96b	28 1d 	( . 
	cp 099h		;d96d	fe 99 	. . 
	jr nz,ld98fh		;d96f	20 1e 	  . 
	ld a,(hl)			;d971	7e 	~ 
	and 0f0h		;d972	e6 f0 	. . 
	cp 090h		;d974	fe 90 	. . 
	jr nz,ld98fh		;d976	20 17 	  . 
	ld a,010h		;d978	3e 10 	> . 
	ld b,007h		;d97a	06 07 	. . 
ld97ch:
	adc a,(hl)			;d97c	8e 	. 
	daa			;d97d	27 	' 
	ld (hl),a			;d97e	77 	w 
	dec hl			;d97f	2b 	+ 
	ld a,000h		;d980	3e 00 	> . 
	djnz ld97ch		;d982	10 f8 	. . 
	ld (07f17h),a		;d984	32 17 7f 	2 .  
	jp 082e9h		;d987	c3 e9 82 	. . . 
ld98ah:
	ld a,(hl)			;d98a	7e 	~ 
	and 0f0h		;d98b	e6 f0 	. . 
	ret nz			;d98d	c0 	. 
	ld (hl),a			;d98e	77 	w 
ld98fh:
	or a			;d98f	b7 	. 
	ret			;d990	c9 	. 
sub_d991h:
	call 080bah		;d991	cd ba 80 	. . . 
ld994h:
	ld hl,07f11h		;d994	21 11 7f 	! .  
	ld a,(hl)			;d997	7e 	~ 
	call sub_dbbah		;d998	cd ba db 	. . . 
	and 00fh		;d99b	e6 0f 	. . 
	ld c,010h		;d99d	0e 10 	. . 
	rra			;d99f	1f 	. 
	jr nc,ld9a4h		;d9a0	30 02 	0 . 
	ld c,001h		;d9a2	0e 01 	. . 
ld9a4h:
	inc a			;d9a4	3c 	< 
	ld b,a			;d9a5	47 	G 
	add a,l			;d9a6	85 	. 
	ld l,a			;d9a7	6f 	o 
ld9a8h:
	ld a,(hl)			;d9a8	7e 	~ 
	sbc a,c			;d9a9	99 	. 
	daa			;d9aa	27 	' 
	ld (hl),a			;d9ab	77 	w 
	dec hl			;d9ac	2b 	+ 
	ld c,000h		;d9ad	0e 00 	. . 
	djnz ld9a8h		;d9af	10 f7 	. . 
	ld a,(07f12h)		;d9b1	3a 12 7f 	: .  
	call sub_dbbah		;d9b4	cd ba db 	. . . 
	and 00fh		;d9b7	e6 0f 	. . 
	jr nz,ld9cah		;d9b9	20 0f 	  . 
	ld de,07f17h		;d9bb	11 17 7f 	. .  
	ld c,006h		;d9be	0e 06 	. . 
	call sub_dba3h		;d9c0	cd a3 db 	. . . 
	ld de,07f11h		;d9c3	11 11 7f 	. .  
	ld a,(de)			;d9c6	1a 	. 
	sub 010h		;d9c7	d6 10 	. . 
	ld (de),a			;d9c9	12 	. 
ld9cah:
	ld hl,07981h		;d9ca	21 81 79 	! . y 
	ld de,07f11h		;d9cd	11 11 7f 	. .  
	ld b,007h		;d9d0	06 07 	. . 
ld9d2h:
	ld a,(de)			;d9d2	1a 	. 
	cp (hl)			;d9d3	be 	. 
	jr nz,ld9ddh		;d9d4	20 07 	  . 
	inc hl			;d9d6	23 	# 
	inc de			;d9d7	13 	. 
	djnz ld9d2h		;d9d8	10 f8 	. . 
	jp 080bah		;d9da	c3 ba 80 	. . . 
ld9ddh:
	call sub_d95ah		;d9dd	cd 5a d9 	. Z . 
	call 08093h		;d9e0	cd 93 80 	. . . 
	call sub_c4ffh		;d9e3	cd ff c4 	. . . 
	ret c			;d9e6	d8 	. 
	call sub_d95ah		;d9e7	cd 5a d9 	. Z . 
	jp ld994h		;d9ea	c3 94 d9 	. . . 
sub_d9edh:
	ld hl,079d8h		;d9ed	21 d8 79 	! . y 
	ld a,(hl)			;d9f0	7e 	~ 
	and 0cfh		;d9f1	e6 cf 	. . 
	ld (hl),a			;d9f3	77 	w 
	call 08379h		;d9f4	cd 79 83 	. y . 
	ld hl,079bdh		;d9f7	21 bd 79 	! . y 
	res 0,(hl)		;d9fa	cb 86 	. . 
	call sub_daadh		;d9fc	cd ad da 	. . . 
	bit 6,(hl)		;d9ff	cb 76 	. v 
	jr nz,lda08h		;da01	20 05 	  . 
	ld hl,079f7h		;da03	21 f7 79 	! . y 
	ld (hl),000h		;da06	36 00 	6 . 
lda08h:
	ld hl,00010h		;da08	21 10 00 	! . . 
	ld (079f5h),hl		;da0b	22 f5 79 	" . y 
	ld hl,079d6h		;da0e	21 d6 79 	! . y 
	ld (hl),050h		;da11	36 50 	6 P 
	ld l,0f2h		;da13	2e f2 	. . 
	ld (hl),001h		;da15	36 01 	6 . 
	ld hl,07f33h		;da17	21 33 7f 	! 3  
	res 0,(hl)		;da1a	cb 86 	. . 
lda1ch:
	call sub_dbc4h		;da1c	cd c4 db 	. . . 
	ld hl,lda77h		;da1f	21 77 da 	! w . 
	push hl			;da22	e5 	. 
	cp 0feh		;da23	fe fe 	. . 
	jp z,lde35h		;da25	ca 35 de 	. 5 . 
	call sub_e7a6h		;da28	cd a6 e7 	. . . 
	jp nc,lddf3h		;da2b	d2 f3 dd 	. . . 
	call sub_e7adh		;da2e	cd ad e7 	. . . 
	jp nc,ldd55h		;da31	d2 55 dd 	. U . 
	cp 02eh		;da34	fe 2e 	. . 
	jp z,ldd55h		;da36	ca 55 dd 	. U . 
	cp 02bh		;da39	fe 2b 	. + 
	jp z,lddb6h		;da3b	ca b6 dd 	. . . 
	cp 02dh		;da3e	fe 2d 	. - 
	jp z,lddb6h		;da40	ca b6 dd 	. . . 
	cp 02ah		;da43	fe 2a 	. * 
	jp z,ldc07h		;da45	ca 07 dc 	. . . 
	cp 02fh		;da48	fe 2f 	. / 
	jp z,ldc07h		;da4a	ca 07 dc 	. . . 
	cp 05eh		;da4d	fe 5e 	. ^ 
	jp z,ldc07h		;da4f	ca 07 dc 	. . . 
	cp 03fh		;da52	fe 3f 	. ? 
	jr nc,lda5bh		;da54	30 05 	0 . 
	cp 03ch		;da56	fe 3c 	. < 
	jp nc,ldd1dh		;da58	d2 1d dd 	. . . 
lda5bh:
	cp 02ch		;da5b	fe 2c 	. , 
	jp z,lde62h		;da5d	ca 62 de 	. b . 
	cp 028h		;da60	fe 28 	. ( 
	jp z,lde2ah		;da62	ca 2a de 	. * . 
	cp 029h		;da65	fe 29 	. ) 
	jp z,lde8fh		;da67	ca 8f de 	. . . 
	cp 022h		;da6a	fe 22 	. " 
	jp z,le112h		;da6c	ca 12 e1 	. . . 
	cp 026h		;da6f	fe 26 	. & 
	jp nz,lde3fh		;da71	c2 3f de 	. ? . 
	jp le14fh		;da74	c3 4f e1 	. O . 
lda77h:
	jr c,lda9bh		;da77	38 22 	8 " 
	ld a,(07f33h)		;da79	3a 33 7f 	: 3  
	rra			;da7c	1f 	. 
	jr nc,lda1ch		;da7d	30 9d 	0 . 
	call sub_dd15h		;da7f	cd 15 dd 	. . . 
	jr nc,lda8fh		;da82	30 0b 	0 . 
	call 0818ah		;da84	cd 8a 81 	. . . 
	call 081bbh		;da87	cd bb 81 	. . . 
	jr c,lda9bh		;da8a	38 0f 	8 . 
	call 081ach		;da8c	cd ac 81 	. . . 
lda8fh:
	dec ix		;da8f	dd 2b 	. + 
	ld a,(ix+000h)		;da91	dd 7e 00 	. ~ . 
	cp 0feh		;da94	fe fe 	. . 
	jr nz,lda9ah		;da96	20 02 	  . 
	dec ix		;da98	dd 2b 	. + 
lda9ah:
	or a			;da9a	b7 	. 
lda9bh:
	ld hl,07f37h		;da9b	21 37 7f 	! 7  
	res 7,(hl)		;da9e	cb be 	. . 
	res 6,(hl)		;daa0	cb b6 	. . 
	ret			;daa2	c9 	. 
sub_daa3h:
	push af			;daa3	f5 	. 
	ld hl,07f37h		;daa4	21 37 7f 	! 7  
	ld a,(hl)			;daa7	7e 	~ 
	and 0c0h		;daa8	e6 c0 	. . 
	ld (hl),a			;daaa	77 	w 
	pop af			;daab	f1 	. 
	ret			;daac	c9 	. 
sub_daadh:
	call sub_daa3h		;daad	cd a3 da 	. . . 
	set 0,(hl)		;dab0	cb c6 	. . 
	ret			;dab2	c9 	. 
ldab3h:
	call sub_daa3h		;dab3	cd a3 da 	. . . 
	set 1,(hl)		;dab6	cb ce 	. . 
	ret			;dab8	c9 	. 
sub_dab9h:
	call sub_daa3h		;dab9	cd a3 da 	. . . 
	set 3,(hl)		;dabc	cb de 	. . 
	ret			;dabe	c9 	. 
sub_dabfh:
	ld c,a			;dabf	4f 	O 
	ld hl,079f5h		;dac0	21 f5 79 	! . y 
	ld a,(hl)			;dac3	7e 	~ 
	cp 010h		;dac4	fe 10 	. . 
	ld b,a			;dac6	47 	G 
	ld a,c			;dac7	79 	y 
	ret			;dac8	c9 	. 
sub_dac9h:
	ld hl,079f6h		;dac9	21 f6 79 	! . y 
	ld a,(hl)			;dacc	7e 	~ 
	cp 000h		;dacd	fe 00 	. . 
	ret			;dacf	c9 	. 
sub_dad0h:
	ld de,07f10h		;dad0	11 10 7f 	. .  
	jr ldad8h		;dad3	18 03 	. . 
sub_dad5h:
	ld de,07f18h		;dad5	11 18 7f 	. .  
ldad8h:
	ld hl,079f5h		;dad8	21 f5 79 	! . y 
	ld a,(hl)			;dadb	7e 	~ 
	sub 008h		;dadc	d6 08 	. . 
	ld (hl),a			;dade	77 	w 
	ld l,a			;dadf	6f 	o 
	ld h,07ah		;dae0	26 7a 	& z 
	push hl			;dae2	e5 	. 
	pop ix		;dae3	dd e1 	. . 
ldae5h:
	ld bc,00008h		;dae5	01 08 00 	. . . 
	ldir		;dae8	ed b0 	. . 
	ret			;daea	c9 	. 
sub_daebh:
	ld c,a			;daeb	4f 	O 
	ld a,01dh		;daec	3e 1d 	> . 
	jr ldaf8h		;daee	18 08 	. . 
sub_daf0h:
	ld c,a			;daf0	4f 	O 
	ld a,026h		;daf1	3e 26 	> & 
	jr ldaf8h		;daf3	18 03 	. . 
sub_daf5h:
	ld c,a			;daf5	4f 	O 
	ld a,022h		;daf6	3e 22 	> " 
ldaf8h:
	ld hl,07f37h		;daf8	21 37 7f 	! 7  
	and (hl)			;dafb	a6 	. 
	ld a,c			;dafc	79 	y 
	ret z			;dafd	c8 	. 
	jp 08379h		;dafe	c3 79 83 	. y . 
sub_db01h:
	ld a,000h		;db01	3e 00 	> . 
	ld (07f08h),a		;db03	32 08 7f 	2 .  
	ld a,0d0h		;db06	3e d0 	> . 
	ld (07f14h),a		;db08	32 14 7f 	2 .  
	ld hl,(079f7h)		;db0b	2a f7 79 	* . y 
	ld h,07eh		;db0e	26 7e 	& ~ 
	ld (07f15h),hl		;db10	22 15 7f 	" .  
	dec hl			;db13	2b 	+ 
	push hl			;db14	e5 	. 
	pop iy		;db15	fd e1 	. . 
	ret			;db17	c9 	. 
sub_db18h:
	push af			;db18	f5 	. 
ldb19h:
	inc b			;db19	04 	. 
	ld a,b			;db1a	78 	x 
	cp 00bh		;db1b	fe 0b 	. . 
	jr nc,ldb2dh		;db1d	30 0e 	0 . 
	ld hl,07f16h		;db1f	21 16 7f 	! .  
	ld c,005h		;db22	0e 05 	. . 
	xor a			;db24	af 	. 
ldb25h:
	rld		;db25	ed 6f 	. o 
	dec hl			;db27	2b 	+ 
	dec c			;db28	0d 	. 
	jr nz,ldb25h		;db29	20 fa 	  . 
	jr ldb19h		;db2b	18 ec 	. . 
ldb2dh:
	pop af			;db2d	f1 	. 
	ret			;db2e	c9 	. 
ldb2fh:
	ld (07f0ah),a		;db2f	32 0a 7f 	2 .  
sub_db32h:
	ld a,(079f6h)		;db32	3a f6 79 	: . y 
	cp 010h		;db35	fe 10 	. . 
	jp z,0836dh		;db37	ca 6d 83 	. m . 
	ld l,a			;db3a	6f 	o 
	ld h,07ah		;db3b	26 7a 	& z 
	dec hl			;db3d	2b 	+ 
	push hl			;db3e	e5 	. 
	pop iy		;db3f	fd e1 	. . 
sub_db41h:
	ld a,(07f0ah)		;db41	3a 0a 7f 	: .  
	inc iy		;db44	fd 23 	. # 
	ld (iy+000h),a		;db46	fd 77 00 	. w . 
	inc iy		;db49	fd 23 	. # 
sub_db4bh:
	push iy		;db4b	fd e5 	. . 
	pop hl			;db4d	e1 	. 
	ld c,l			;db4e	4d 	M 
	ld hl,079f6h		;db4f	21 f6 79 	! . y 
	ld (hl),c			;db52	71 	q 
	or a			;db53	b7 	. 
	ret			;db54	c9 	. 
sub_db55h:
	ld hl,079d8h		;db55	21 d8 79 	! . y 
	or a			;db58	b7 	. 
	bit 4,(hl)		;db59	cb 66 	. f 
	ret z			;db5b	c8 	. 
	res 4,(hl)		;db5c	cb a6 	. . 
	call 083b4h		;db5e	cd b4 83 	. . . 
	call sub_c11dh		;db61	cd 1d c1 	. . . 
	jp 083b4h		;db64	c3 b4 83 	. . . 
sub_db67h:
	call sub_dad5h		;db67	cd d5 da 	. . . 
	ld c,a			;db6a	4f 	O 
	ld a,(07f1ch)		;db6b	3a 1c 7f 	: .  
	cp 0d0h		;db6e	fe d0 	. . 
	ld de,07f14h		;db70	11 14 7f 	. .  
	ld a,(de)			;db73	1a 	. 
	jr z,ldb7dh		;db74	28 07 	( . 
	cp 0d0h		;db76	fe d0 	. . 
	jr z,ldb81h		;db78	28 07 	( . 
	or a			;db7a	b7 	. 
	ld a,c			;db7b	79 	y 
	ret			;db7c	c9 	. 
ldb7dh:
	cp 0d0h		;db7d	fe d0 	. . 
	scf			;db7f	37 	7 
	ret z			;db80	c8 	. 
ldb81h:
	pop af			;db81	f1 	. 
	jp 0838ch		;db82	c3 8c 83 	. . . 
sub_db85h:
	ld l,a			;db85	6f 	o 
	ld h,07ah		;db86	26 7a 	& z 
	dec hl			;db88	2b 	+ 
	push hl			;db89	e5 	. 
	pop iy		;db8a	fd e1 	. . 
	ld a,(hl)			;db8c	7e 	~ 
	call sub_dc1eh		;db8d	cd 1e dc 	. . . 
	cp 009h		;db90	fe 09 	. . 
	ret			;db92	c9 	. 
sub_db93h:
	dec b			;db93	05 	. 
	inc b			;db94	04 	. 
	ret z			;db95	c8 	. 
ldb96h:
	inc ix		;db96	dd 23 	. # 
	ld a,(ix+000h)		;db98	dd 7e 00 	. ~ . 
	inc iy		;db9b	fd 23 	. # 
	ld (iy+000h),a		;db9d	fd 77 00 	. w . 
	djnz ldb96h		;dba0	10 f4 	. . 
	ret			;dba2	c9 	. 
sub_dba3h:
	push af			;dba3	f5 	. 
	ex de,hl			;dba4	eb 	. 
	xor a			;dba5	af 	. 
ldba6h:
	rld		;dba6	ed 6f 	. o 
	dec hl			;dba8	2b 	+ 
	dec c			;dba9	0d 	. 
	jr nz,ldba6h		;dbaa	20 fa 	  . 
	jr ldbb7h		;dbac	18 09 	. . 
sub_dbaeh:
	push af			;dbae	f5 	. 
	ex de,hl			;dbaf	eb 	. 
	xor a			;dbb0	af 	. 
ldbb1h:
	rrd		;dbb1	ed 67 	. g 
	inc hl			;dbb3	23 	# 
	dec c			;dbb4	0d 	. 
	jr nz,ldbb1h		;dbb5	20 fa 	  . 
ldbb7h:
	ex de,hl			;dbb7	eb 	. 
	pop af			;dbb8	f1 	. 
	ret			;dbb9	c9 	. 
sub_dbbah:
	rlc a		;dbba	cb 07 	. . 
	rlc a		;dbbc	cb 07 	. . 
	rlc a		;dbbe	cb 07 	. . 
	rlc a		;dbc0	cb 07 	. . 
	or a			;dbc2	b7 	. 
	ret			;dbc3	c9 	. 
sub_dbc4h:
	inc ix		;dbc4	dd 23 	. # 
	ld a,(ix+000h)		;dbc6	dd 7e 00 	. ~ . 
	cp 020h		;dbc9	fe 20 	.   
	ret nz			;dbcb	c0 	. 
	jr sub_dbc4h		;dbcc	18 f6 	. . 
ldbceh:
	cp 0e9h		;dbce	fe e9 	. . 
	jp z,ldd62h		;dbd0	ca 62 dd 	. b . 
	cp 0a6h		;dbd3	fe a6 	. . 
	jp z,ldce2h		;dbd5	ca e2 dc 	. . . 
	cp 0aeh		;dbd8	fe ae 	. . 
	jp z,ldd04h		;dbda	ca 04 dd 	. . . 
	cp 0afh		;dbdd	fe af 	. . 
	jp z,ldcedh		;dbdf	ca ed dc 	. . . 
	cp 083h		;dbe2	fe 83 	. . 
	jr z,ldc07h		;dbe4	28 21 	( ! 
	jr c,ldbebh		;dbe6	38 03 	8 . 
	cp 086h		;dbe8	fe 86 	. . 
	ret c			;dbea	d8 	. 
ldbebh:
	ld hl,0e528h		;dbeb	21 28 e5 	! ( . 
	ld e,a			;dbee	5f 	_ 
	ld d,000h		;dbef	16 00 	. . 
	add hl,de			;dbf1	19 	. 
	add hl,de			;dbf2	19 	. 
	inc hl			;dbf3	23 	# 
	ld d,(hl)			;dbf4	56 	V 
	dec d			;dbf5	15 	. 
	jr z,ldc07h		;dbf6	28 0f 	( . 
	inc d			;dbf8	14 	. 
	scf			;dbf9	37 	7 
	ret z			;dbfa	c8 	. 
	call sub_daf5h		;dbfb	cd f5 da 	. . . 
	ret c			;dbfe	d8 	. 
	call sub_daa3h		;dbff	cd a3 da 	. . . 
	set 4,(hl)		;dc02	cb e6 	. . 
	jp ldb2fh		;dc04	c3 2f db 	. / . 
ldc07h:
	call sub_daebh		;dc07	cd eb da 	. . . 
	ret c			;dc0a	d8 	. 
	dec ix		;dc0b	dd 2b 	. + 
ldc0dh:
	call sub_dab9h		;dc0d	cd b9 da 	. . . 
	inc ix		;dc10	dd 23 	. # 
	ld a,(ix+000h)		;dc12	dd 7e 00 	. ~ . 
	cp 0feh		;dc15	fe fe 	. . 
	jr nz,ldc75h		;dc17	20 5c 	  \ 
	ld a,(ix+001h)		;dc19	dd 7e 01 	. ~ . 
	jr ldc75h		;dc1c	18 57 	. W 
sub_dc1eh:
	cp 040h		;dc1e	fe 40 	. @ 
	jr nc,ldc3dh		;dc20	30 1b 	0 . 
	cp 030h		;dc22	fe 30 	. 0 
	jr nc,ldc3ah		;dc24	30 14 	0 . 
	sub 028h		;dc26	d6 28 	. ( 
	ld de,ldc32h		;dc28	11 32 dc 	. 2 . 
	add a,e			;dc2b	83 	. 
	ld e,a			;dc2c	5f 	_ 
	jr nc,ldc30h		;dc2d	30 01 	0 . 
	inc d			;dc2f	14 	. 
ldc30h:
	ld a,(de)			;dc30	1a 	. 
	ret			;dc31	c9 	. 
ldc32h:
	ld a,(bc)			;dc32	0a 	. 
	add hl,bc			;dc33	09 	. 
	dec b			;dc34	05 	. 
	ld b,009h		;dc35	06 09 	. . 
	ld b,000h		;dc37	06 00 	. . 
	dec b			;dc39	05 	. 
ldc3ah:
	ld a,007h		;dc3a	3e 07 	> . 
	ret			;dc3c	c9 	. 
ldc3dh:
	cp 080h		;dc3d	fe 80 	. . 
	jr nc,ldc54h		;dc3f	30 13 	0 . 
	cp 05eh		;dc41	fe 5e 	. ^ 
	jr z,ldc51h		;dc43	28 0c 	( . 
	jr c,ldc4eh		;dc45	38 07 	8 . 
	cp 064h		;dc47	fe 64 	. d 
	jr c,ldc3ah		;dc49	38 ef 	8 . 
	ld a,004h		;dc4b	3e 04 	> . 
	ret			;dc4d	c9 	. 
ldc4eh:
	ld a,009h		;dc4e	3e 09 	> . 
	ret			;dc50	c9 	. 
ldc51h:
	ld a,003h		;dc51	3e 03 	> . 
	ret			;dc53	c9 	. 
ldc54h:
	cp 083h		;dc54	fe 83 	. . 
	jr z,ldc51h		;dc56	28 f9 	( . 
	cp 080h		;dc58	fe 80 	. . 
	jr z,ldc6ch		;dc5a	28 10 	( . 
	cp 0bfh		;dc5c	fe bf 	. . 
	jr z,ldc6ch		;dc5e	28 0c 	( . 
	cp 086h		;dc60	fe 86 	. . 
	jr c,ldc72h		;dc62	38 0e 	8 . 
	cp 0a1h		;dc64	fe a1 	. . 
	jr z,ldc6fh		;dc66	28 07 	( . 
	cp 0a2h		;dc68	fe a2 	. . 
	jr z,ldc6fh		;dc6a	28 03 	( . 
ldc6ch:
	ld a,002h		;dc6c	3e 02 	> . 
	ret			;dc6e	c9 	. 
ldc6fh:
	ld a,008h		;dc6f	3e 08 	> . 
	ret			;dc71	c9 	. 
ldc72h:
	ld a,001h		;dc72	3e 01 	> . 
	ret			;dc74	c9 	. 
ldc75h:
	ld (07f0ah),a		;dc75	32 0a 7f 	2 .  
ldc78h:
	call sub_dac9h		;dc78	cd c9 da 	. . . 
	ld l,a			;dc7b	6f 	o 
	ld h,07ah		;dc7c	26 7a 	& z 
	dec hl			;dc7e	2b 	+ 
	push hl			;dc7f	e5 	. 
	pop iy		;dc80	fd e1 	. . 
	jr nz,ldca9h		;dc82	20 25 	  % 
	cp 010h		;dc84	fe 10 	. . 
	jp z,0836dh		;dc86	ca 6d 83 	. m . 
	call sub_db41h		;dc89	cd 41 db 	. A . 
ldc8ch:
	ld a,(079f5h)		;dc8c	3a f5 79 	: . y 
	cp 050h		;dc8f	fe 50 	. P 
	jp z,0836dh		;dc91	ca 6d 83 	. m . 
	call sub_db55h		;dc94	cd 55 db 	. U . 
	ret c			;dc97	d8 	. 
	ld hl,079f5h		;dc98	21 f5 79 	! . y 
	ld a,(hl)			;dc9b	7e 	~ 
	ld e,a			;dc9c	5f 	_ 
	ld d,07ah		;dc9d	16 7a 	. z 
	add a,008h		;dc9f	c6 08 	. . 
	ld (hl),a			;dca1	77 	w 
sub_dca2h:
	ld hl,07f10h		;dca2	21 10 7f 	! .  
	or a			;dca5	b7 	. 
	jp ldae5h		;dca6	c3 e5 da 	. . . 
ldca9h:
	ld a,(07f0ah)		;dca9	3a 0a 7f 	: .  
	call sub_dc1eh		;dcac	cd 1e dc 	. . . 
	ld (07f0bh),a		;dcaf	32 0b 7f 	2 .  
	ld a,(hl)			;dcb2	7e 	~ 
	call sub_dc1eh		;dcb3	cd 1e dc 	. . . 
	ld c,a			;dcb6	4f 	O 
	ld a,(07f0bh)		;dcb7	3a 0b 7f 	: .  
	cp c			;dcba	b9 	. 
	jr c,ldcdch		;dcbb	38 1f 	8 . 
	jr nz,ldccah		;dcbd	20 0b 	  . 
	ld a,(07f0ah)		;dcbf	3a 0a 7f 	: .  
	cp 05eh		;dcc2	fe 5e 	. ^ 
	jr z,ldcdch		;dcc4	28 16 	( . 
	cp 083h		;dcc6	fe 83 	. . 
	jr z,ldcdch		;dcc8	28 12 	( . 
ldccah:
	ld a,(07f0ah)		;dcca	3a 0a 7f 	: .  
	push af			;dccd	f5 	. 
	call sub_e559h		;dcce	cd 59 e5 	. Y . 
	call 083b4h		;dcd1	cd b4 83 	. . . 
	pop hl			;dcd4	e1 	. 
	ld a,h			;dcd5	7c 	| 
	ld (07f0ah),a		;dcd6	32 0a 7f 	2 .  
	jr nc,ldc78h		;dcd9	30 9d 	0 . 
	ret			;dcdb	c9 	. 
ldcdch:
	call sub_db32h		;dcdc	cd 32 db 	. 2 . 
	jr nc,ldc8ch		;dcdf	30 ab 	0 . 
	ret			;dce1	c9 	. 
ldce2h:
	call sub_daf5h		;dce2	cd f5 da 	. . . 
	ret c			;dce5	d8 	. 
	call sub_f8e6h		;dce6	cd e6 f8 	. . . 
	jp nc,ldab3h		;dce9	d2 b3 da 	. . . 
	ret			;dcec	c9 	. 
ldcedh:
	call sub_daf5h		;dced	cd f5 da 	. . . 
	ret c			;dcf0	d8 	. 
	ld hl,(079fch)		;dcf1	2a fc 79 	* . y 
	ld de,(079e3h)		;dcf4	ed 5b e3 79 	. [ . y 
	scf			;dcf8	37 	7 
	sbc hl,de		;dcf9	ed 52 	. R 
	ld (07f18h),hl		;dcfb	22 18 7f 	" .  
	call sub_e227h		;dcfe	cd 27 e2 	. ' . 
	jp ldab3h		;dd01	c3 b3 da 	. . . 
ldd04h:
	call sub_daf5h		;dd04	cd f5 da 	. . . 
	ret c			;dd07	d8 	. 
	call ldab3h		;dd08	cd b3 da 	. . . 
	ld hl,0c988h		;dd0b	21 88 c9 	! . . 
sub_dd0eh:
	ld de,07f10h		;dd0e	11 10 7f 	. .  
	or a			;dd11	b7 	. 
	jp ldae5h		;dd12	c3 e5 da 	. . . 
sub_dd15h:
	ld c,a			;dd15	4f 	O 
	ld a,(07f14h)		;dd16	3a 14 7f 	: .  
	cp 0d0h		;dd19	fe d0 	. . 
	ld a,c			;dd1b	79 	y 
	ret			;dd1c	c9 	. 
ldd1dh:
	call sub_daebh		;dd1d	cd eb da 	. . . 
	ret c			;dd20	d8 	. 
	cp 03ch		;dd21	fe 3c 	. < 
	jr nz,ldd34h		;dd23	20 0f 	  . 
	call sub_dbc4h		;dd25	cd c4 db 	. . . 
	cp 03dh		;dd28	fe 3d 	. = 
	jr nz,ldd43h		;dd2a	20 17 	  . 
	ld a,062h		;dd2c	3e 62 	> b 
ldd2eh:
	call sub_dab9h		;dd2e	cd b9 da 	. . . 
	jp ldc75h		;dd31	c3 75 dc 	. u . 
ldd34h:
	cp 03eh		;dd34	fe 3e 	. > 
	jr nz,ldd2eh		;dd36	20 f6 	  . 
	call sub_dbc4h		;dd38	cd c4 db 	. . . 
	cp 03dh		;dd3b	fe 3d 	. = 
	jr z,ldd4bh		;dd3d	28 0c 	( . 
	ld a,03eh		;dd3f	3e 3e 	> > 
	jr ldd51h		;dd41	18 0e 	. . 
ldd43h:
	cp 03eh		;dd43	fe 3e 	. > 
	jr nz,ldd4fh		;dd45	20 08 	  . 
	ld a,063h		;dd47	3e 63 	> c 
	jr ldd2eh		;dd49	18 e3 	. . 
ldd4bh:
	ld a,061h		;dd4b	3e 61 	> a 
	jr ldd2eh		;dd4d	18 df 	. . 
ldd4fh:
	ld a,03ch		;dd4f	3e 3c 	> < 
ldd51h:
	dec ix		;dd51	dd 2b 	. + 
	jr ldd2eh		;dd53	18 d9 	. . 
ldd55h:
	call sub_daf5h		;dd55	cd f5 da 	. . . 
	ret c			;dd58	d8 	. 
	dec ix		;dd59	dd 2b 	. + 
	call sub_dfc0h		;dd5b	cd c0 df 	. . . 
	jp nc,ldab3h		;dd5e	d2 b3 da 	. . . 
	ret			;dd61	c9 	. 
ldd62h:
	call sub_daf0h		;dd62	cd f0 da 	. . . 
	ret c			;dd65	d8 	. 
	call sub_db01h		;dd66	cd 01 db 	. . . 
	call 0bffah		;dd69	cd fa bf 	. . . 
	ld (07966h),a		;dd6c	32 66 79 	2 f y 
	ld hl,07965h		;dd6f	21 65 79 	! e y 
	set 0,(hl)		;dd72	cb c6 	. . 
	jr nc,ldd92h		;dd74	30 1c 	0 . 
	call sub_f99fh		;dd76	cd 9f f9 	. . . 
	and a			;dd79	a7 	. 
	jr z,ldd92h		;dd7a	28 16 	( . 
	ld c,a			;dd7c	4f 	O 
	push iy		;dd7d	fd e5 	. . 
	pop hl			;dd7f	e1 	. 
	ld a,l			;dd80	7d 	} 
	cp 0feh		;dd81	fe fe 	. . 
	jp z,08384h		;dd83	ca 84 83 	. . . 
	inc hl			;dd86	23 	# 
	ld (hl),c			;dd87	71 	q 
	ld a,001h		;dd88	3e 01 	> . 
	ld (07f08h),a		;dd8a	32 08 7f 	2 .  
	call sub_e13eh		;dd8d	cd 3e e1 	. > . 
	and a			;dd90	a7 	. 
	ret			;dd91	c9 	. 
ldd92h:
	xor a			;dd92	af 	. 
	ld (07f17h),a		;dd93	32 17 7f 	2 .  
	call ldab3h		;dd96	cd b3 da 	. . . 
	and a			;dd99	a7 	. 
	ret			;dd9a	c9 	. 
	call 0be8ch		;dd9b	cd 8c be 	. . . 
	jp nz,08394h		;dd9e	c2 94 83 	. . . 
	call sub_efa9h		;dda1	cd a9 ef 	. . . 
	ret c			;dda4	d8 	. 
	ld hl,(07f18h)		;dda5	2a 18 7f 	* .  
	ld (07f0eh),hl		;dda8	22 0e 7f 	" .  
	ld l,(hl)			;ddab	6e 	n 
	ld h,000h		;ddac	26 00 	& . 
	ld (07f18h),hl		;ddae	22 18 7f 	" .  
	call le1cfh		;ddb1	cd cf e1 	. . . 
	and a			;ddb4	a7 	. 
	ret			;ddb5	c9 	. 
lddb6h:
	call sub_daebh		;ddb6	cd eb da 	. . . 
	dec ix		;ddb9	dd 2b 	. + 
	jp nc,ldc0dh		;ddbb	d2 0d dc 	. . . 
	ld a,(07f37h)		;ddbe	3a 37 7f 	: 7  
	and 004h		;ddc1	e6 04 	. . 
	jr z,ldde6h		;ddc3	28 21 	( ! 
	ld hl,079f6h		;ddc5	21 f6 79 	! . y 
	dec (hl)			;ddc8	35 	5 
	ld l,(hl)			;ddc9	6e 	n 
	ld h,07ah		;ddca	26 7a 	& z 
	ld a,(hl)			;ddcc	7e 	~ 
	cp 065h		;ddcd	fe 65 	. e 
	jr nz,ldde6h		;ddcf	20 15 	  . 
	inc ix		;ddd1	dd 23 	. # 
	ld a,(ix+000h)		;ddd3	dd 7e 00 	. ~ . 
	cp 02dh		;ddd6	fe 2d 	. - 
	jr nz,lddefh		;ddd8	20 15 	  . 
ldddah:
	ld a,064h		;ddda	3e 64 	> d 
ldddch:
	call ldb2fh		;dddc	cd 2f db 	. / . 
	ret c			;dddf	d8 	. 
	call sub_daa3h		;dde0	cd a3 da 	. . . 
	set 2,(hl)		;dde3	cb d6 	. . 
	ret			;dde5	c9 	. 
ldde6h:
	inc ix		;dde6	dd 23 	. # 
	ld a,(ix+000h)		;dde8	dd 7e 00 	. ~ . 
	cp 02bh		;ddeb	fe 2b 	. + 
	jr z,ldddah		;dded	28 eb 	( . 
lddefh:
	ld a,065h		;ddef	3e 65 	> e 
	jr ldddch		;ddf1	18 e9 	. . 
lddf3h:
	call sub_daf5h		;ddf3	cd f5 da 	. . . 
	ret c			;ddf6	d8 	. 
	dec ix		;ddf7	dd 2b 	. + 
	call sub_e34bh		;ddf9	cd 4b e3 	. K . 
	ret c			;ddfc	d8 	. 
	ld hl,07f33h		;ddfd	21 33 7f 	! 3  
	ld a,(hl)			;de00	7e 	~ 
	bit 3,a		;de01	cb 5f 	. _ 
	jr nz,lde11h		;de03	20 0c 	  . 
	and 09dh		;de05	e6 9d 	. . 
	or 020h		;de07	f6 20 	.   
	ld (hl),a			;de09	77 	w 
	call sub_e235h		;de0a	cd 35 e2 	. 5 . 
	ret c			;de0d	d8 	. 
	jp ldab3h		;de0e	c3 b3 da 	. . . 
lde11h:
	call sub_db32h		;de11	cd 32 db 	. 2 . 
	jr c,lde27h		;de14	38 11 	8 . 
	ld hl,(079d6h)		;de16	2a d6 79 	* . y 
	ld h,07ah		;de19	26 7a 	& z 
	ld a,(07f0bh)		;de1b	3a 0b 7f 	: .  
	ld (hl),a			;de1e	77 	w 
	inc hl			;de1f	23 	# 
	push hl			;de20	e5 	. 
	pop iy		;de21	fd e1 	. . 
	ld a,l			;de23	7d 	} 
	ld (079d6h),a		;de24	32 d6 79 	2 . y 
lde27h:
	jp sub_daadh		;de27	c3 ad da 	. . . 
lde2ah:
	call sub_daf5h		;de2a	cd f5 da 	. . . 
	ret c			;de2d	d8 	. 
	call ldb2fh		;de2e	cd 2f db 	. / . 
	jp nc,sub_daadh		;de31	d2 ad da 	. . . 
	ret			;de34	c9 	. 
lde35h:
	inc ix		;de35	dd 23 	. # 
	ld a,(ix+000h)		;de37	dd 7e 00 	. ~ . 
	bit 7,a		;de3a	cb 7f 	.  
	jp nz,ldbceh		;de3c	c2 ce db 	. . . 
lde3fh:
	call sub_daebh		;de3f	cd eb da 	. . . 
	ret c			;de42	d8 	. 
lde43h:
	call sub_dac9h		;de43	cd c9 da 	. . . 
	jr nz,lde54h		;de46	20 0c 	  . 
lde48h:
	call sub_dabfh		;de48	cd bf da 	. . . 
	jp nz,08379h		;de4b	c2 79 83 	. y . 
	ld hl,07f33h		;de4e	21 33 7f 	! 3  
	set 0,(hl)		;de51	cb c6 	. . 
	ret			;de53	c9 	. 
lde54h:
	call sub_db85h		;de54	cd 85 db 	. . . 
	ccf			;de57	3f 	? 
	ret c			;de58	d8 	. 
	call sub_e559h		;de59	cd 59 e5 	. Y . 
	call 083b4h		;de5c	cd b4 83 	. . . 
	jr nc,lde43h		;de5f	30 e2 	0 . 
	ret			;de61	c9 	. 
lde62h:
	call sub_daebh		;de62	cd eb da 	. . . 
	ret c			;de65	d8 	. 
lde66h:
	call sub_dac9h		;de66	cd c9 da 	. . . 
	jr z,lde87h		;de69	28 1c 	( . 
	call sub_db85h		;de6b	cd 85 db 	. . . 
	jr c,lde7eh		;de6e	38 0e 	8 . 
lde70h:
	ld a,(ix+000h)		;de70	dd 7e 00 	. ~ . 
	call ldb2fh		;de73	cd 2f db 	. / . 
	ret c			;de76	d8 	. 
	call ldc8ch		;de77	cd 8c dc 	. . . 
	jp nc,sub_daadh		;de7a	d2 ad da 	. . . 
	ret			;de7d	c9 	. 
lde7eh:
	call sub_e559h		;de7e	cd 59 e5 	. Y . 
	call 083b4h		;de81	cd b4 83 	. . . 
	jr nc,lde66h		;de84	30 e0 	0 . 
	ret			;de86	c9 	. 
lde87h:
	ld a,(07f37h)		;de87	3a 37 7f 	: 7  
	rla			;de8a	17 	. 
	jr c,lde70h		;de8b	38 e3 	8 . 
	jr lde48h		;de8d	18 b9 	. . 
lde8fh:
	call sub_daebh		;de8f	cd eb da 	. . . 
	ret c			;de92	d8 	. 
	call sub_daa3h		;de93	cd a3 da 	. . . 
	set 5,(hl)		;de96	cb ee 	. . 
lde98h:
	call sub_dac9h		;de98	cd c9 da 	. . . 
	jr z,ldec1h		;de9b	28 24 	( $ 
	call sub_db85h		;de9d	cd 85 db 	. . . 
	jp nc,ldf3dh		;dea0	d2 3d df 	. = . 
	call sub_e559h		;dea3	cd 59 e5 	. Y . 
	call 083b4h		;dea6	cd b4 83 	. . . 
	jr nc,lde98h		;dea9	30 ed 	0 . 
	ret			;deab	c9 	. 
ldeach:
	ld hl,07f37h		;deac	21 37 7f 	! 7  
	bit 7,(hl)		;deaf	cb 7e 	. ~ 
	jr z,lde48h		;deb1	28 95 	( . 
	ld a,(079f5h)		;deb3	3a f5 79 	: . y 
	cp 018h		;deb6	fe 18 	. . 
	jp nz,08379h		;deb8	c2 79 83 	. y . 
	ld hl,07f33h		;debb	21 33 7f 	! 3  
	set 0,(hl)		;debe	cb c6 	. . 
	ret			;dec0	c9 	. 
ldec1h:
	ld a,(07f37h)		;dec1	3a 37 7f 	: 7  
	rla			;dec4	17 	. 
	jr c,lde48h		;dec5	38 81 	8 . 
	scf			;dec7	37 	7 
	ret			;dec8	c9 	. 
ldec9h:
	ld (07f3ah),hl		;dec9	22 3a 7f 	" :  
	call sub_db55h		;decc	cd 55 db 	. U . 
	ret c			;decf	d8 	. 
	ld iy,(07f3ah)		;ded0	fd 2a 3a 7f 	. * :  
	ld hl,07f08h		;ded4	21 08 7f 	! .  
	ld (hl),001h		;ded7	36 01 	6 . 
lded9h:
	push iy		;ded9	fd e5 	. . 
	pop de			;dedb	d1 	. 
	ld a,e			;dedc	7b 	{ 
	cp 000h		;dedd	fe 00 	. . 
	jr z,ldeach		;dedf	28 cb 	( . 
	inc (hl)			;dee1	34 	4 
	dec iy		;dee2	fd 2b 	. + 
	ld a,(iy+000h)		;dee4	fd 7e 00 	. ~ . 
	cp 02ch		;dee7	fe 2c 	. , 
	jr z,lded9h		;dee9	28 ee 	( . 
	ld c,a			;deeb	4f 	O 
	ld a,(hl)			;deec	7e 	~ 
	ld (079f2h),a		;deed	32 f2 79 	2 . y 
	ld a,c			;def0	79 	y 
	cp 028h		;def1	fe 28 	. ( 
	jp nz,ldf75h		;def3	c2 75 df 	. u . 
	push iy		;def6	fd e5 	. . 
	pop hl			;def8	e1 	. 
	ld a,l			;def9	7d 	} 
	cp 000h		;defa	fe 00 	. . 
	jp z,08379h		;defc	ca 79 83 	. y . 
	dec iy		;deff	fd 2b 	. + 
	ld a,(iy+000h)		;df01	fd 7e 00 	. ~ . 
	call sub_db4bh		;df04	cd 4b db 	. K . 
	call 083b4h		;df07	cd b4 83 	. . . 
	ld hl,ldf36h		;df0a	21 36 df 	! 6 . 
	push hl			;df0d	e5 	. 
	cp 0ebh		;df0e	fe eb 	. . 
	jp z,lf73fh		;df10	ca 3f f7 	. ? . 
	cp 0ech		;df13	fe ec 	. . 
	jp z,lf7b1h		;df15	ca b1 f7 	. . . 
	cp 0eah		;df18	fe ea 	. . 
	jp z,lf767h		;df1a	ca 67 f7 	. g . 
	cp 0b6h		;df1d	fe b6 	. . 
	jp z,ld81ah		;df1f	ca 1a d8 	. . . 
	cp 0b7h		;df22	fe b7 	. . 
	jp z,ld813h		;df24	ca 13 d8 	. . . 
	cp 081h		;df27	fe 81 	. . 
	jp z,lc13fh		;df29	ca 3f c1 	. ? . 
	cp 082h		;df2c	fe 82 	. . 
	jp z,lc155h		;df2e	ca 55 c1 	. U . 
	pop hl			;df31	e1 	. 
	scf			;df32	37 	7 
ldf33h:
	jp 083b4h		;df33	c3 b4 83 	. . . 
ldf36h:
	ld a,001h		;df36	3e 01 	> . 
	ld (079f2h),a		;df38	32 f2 79 	2 . y 
	jr ldf33h		;df3b	18 f6 	. . 
ldf3dh:
	ld a,(hl)			;df3d	7e 	~ 
	cp 02ch		;df3e	fe 2c 	. , 
	jr z,ldec9h		;df40	28 87 	( . 
	cp 028h		;df42	fe 28 	. ( 
	jr nz,ldf49h		;df44	20 03 	  . 
	jp sub_db4bh		;df46	c3 4b db 	. K . 
ldf49h:
	call sub_db55h		;df49	cd 55 db 	. U . 
	ret c			;df4c	d8 	. 
	ld c,a			;df4d	4f 	O 
	ld de,07f33h		;df4e	11 33 7f 	. 3  
	ld a,(de)			;df51	1a 	. 
	and 029h		;df52	e6 29 	. ) 
	or 028h		;df54	f6 28 	. ( 
	ld (de),a			;df56	12 	. 
	ld a,c			;df57	79 	y 
	call sub_db4bh		;df58	cd 4b db 	. K . 
	ld (07f0ah),a		;df5b	32 0a 7f 	2 .  
	call sub_e0f1h		;df5e	cd f1 e0 	. . . 
	call 083b4h		;df61	cd b4 83 	. . . 
	call sub_e423h		;df64	cd 23 e4 	. # . 
	jr c,ldf72h		;df67	38 09 	8 . 
	ld hl,(07f18h)		;df69	2a 18 7f 	* .  
	ld (079d0h),hl		;df6c	22 d0 79 	" . y 
ldf6fh:
	call sub_e44fh		;df6f	cd 4f e4 	. O . 
ldf72h:
	jp 083b4h		;df72	c3 b4 83 	. . . 
ldf75h:
	ld (07f0ah),a		;df75	32 0a 7f 	2 .  
	call sub_e7a6h		;df78	cd a6 e7 	. . . 
	ret c			;df7b	d8 	. 
	call sub_db4bh		;df7c	cd 4b db 	. K . 
	call sub_e0f1h		;df7f	cd f1 e0 	. . . 
	ld a,(07f08h)		;df82	3a 08 7f 	: .  
	cp 003h		;df85	fe 03 	. . 
	ccf			;df87	3f 	? 
	ret c			;df88	d8 	. 
	call sub_e423h		;df89	cd 23 e4 	. # . 
	ret c			;df8c	d8 	. 
	ld hl,(07f18h)		;df8d	2a 18 7f 	* .  
	ld (079d0h),hl		;df90	22 d0 79 	" . y 
	ld hl,079f5h		;df93	21 f5 79 	! . y 
	ld a,(hl)			;df96	7e 	~ 
	cp 010h		;df97	fe 10 	. . 
	jp z,08379h		;df99	ca 79 83 	. y . 
	sub 008h		;df9c	d6 08 	. . 
	ld (hl),a			;df9e	77 	w 
	ld l,a			;df9f	6f 	o 
	ld h,07ah		;dfa0	26 7a 	& z 
	push hl			;dfa2	e5 	. 
	pop iy		;dfa3	fd e1 	. . 
	call sub_dd0eh		;dfa5	cd 0e dd 	. . . 
	call sub_e423h		;dfa8	cd 23 e4 	. # . 
	ret c			;dfab	d8 	. 
	ld hl,(07f18h)		;dfac	2a 18 7f 	* .  
	ld (079d1h),hl		;dfaf	22 d1 79 	" . y 
	ld de,07f33h		;dfb2	11 33 7f 	. 3  
	ld a,(de)			;dfb5	1a 	. 
	and 02dh		;dfb6	e6 2d 	. - 
	or 028h		;dfb8	f6 28 	. ( 
	ld (de),a			;dfba	12 	. 
	call 083b4h		;dfbb	cd b4 83 	. . . 
	jr ldf6fh		;dfbe	18 af 	. . 
sub_dfc0h:
	ld hl,07f33h		;dfc0	21 33 7f 	! 3  
	res 1,(hl)		;dfc3	cb 8e 	. . 
sub_dfc5h:
	call 08029h		;dfc5	cd 29 80 	. ) . 
	ld b,000h		;dfc8	06 00 	. . 
	ld hl,09999h		;dfca	21 99 99 	! . . 
	ld (07f08h),hl		;dfcd	22 08 7f 	" .  
	push ix		;dfd0	dd e5 	. . 
	pop de			;dfd2	d1 	. 
	ld hl,07f33h		;dfd3	21 33 7f 	! 3  
	ld a,(hl)			;dfd6	7e 	~ 
	or 010h		;dfd7	f6 10 	. . 
	and 0f3h		;dfd9	e6 f3 	. . 
	ld (hl),a			;dfdb	77 	w 
ldfdch:
	inc de			;dfdc	13 	. 
	ld a,(de)			;dfdd	1a 	. 
	cp 020h		;dfde	fe 20 	.   
	jr z,ldfdch		;dfe0	28 fa 	( . 
	cp 030h		;dfe2	fe 30 	. 0 
	jr nz,ldfefh		;dfe4	20 09 	  . 
	res 4,(hl)		;dfe6	cb a6 	. . 
	push de			;dfe8	d5 	. 
	pop ix		;dfe9	dd e1 	. . 
	jr ldfdch		;dfeb	18 ef 	. . 
ldfedh:
	inc de			;dfed	13 	. 
	ld a,(de)			;dfee	1a 	. 
ldfefh:
	ld hl,07f33h		;dfef	21 33 7f 	! 3  
	call sub_e7adh		;dff2	cd ad e7 	. . . 
	jr nc,le010h		;dff5	30 19 	0 . 
	cp 02eh		;dff7	fe 2e 	. . 
	jp z,le0c5h		;dff9	ca c5 e0 	. . . 
	cp 020h		;dffc	fe 20 	.   
	jr z,ldfedh		;dffe	28 ed 	( . 
	and 0dfh		;e000	e6 df 	. . 
	cp 045h		;e002	fe 45 	. E 
	jr z,le042h		;e004	28 3c 	( < 
le006h:
	ld a,b			;e006	78 	x 
	or a			;e007	b7 	. 
	jp z,le0afh		;e008	ca af e0 	. . . 
	call sub_db18h		;e00b	cd 18 db 	. . . 
	jr le07fh		;e00e	18 6f 	. o 
le010h:
	ld hl,07f33h		;e010	21 33 7f 	! 3  
	res 4,(hl)		;e013	cb a6 	. . 
	bit 2,(hl)		;e015	cb 56 	. V 
	ld c,a			;e017	4f 	O 
	jr nz,le028h		;e018	20 0e 	  . 
	ld hl,07f09h		;e01a	21 09 7f 	! .  
	ld a,(hl)			;e01d	7e 	~ 
	add a,001h		;e01e	c6 01 	. . 
	daa			;e020	27 	' 
	ld (hl),a			;e021	77 	w 
	dec hl			;e022	2b 	+ 
	ld a,(hl)			;e023	7e 	~ 
	adc a,000h		;e024	ce 00 	. . 
	daa			;e026	27 	' 
	ld (hl),a			;e027	77 	w 
le028h:
	ld a,b			;e028	78 	x 
	cp 00ah		;e029	fe 0a 	. . 
	jr nc,le03ah		;e02b	30 0d 	0 . 
	inc b			;e02d	04 	. 
	ld hl,07f16h		;e02e	21 16 7f 	! .  
	ld a,c			;e031	79 	y 
	ld c,005h		;e032	0e 05 	. . 
le034h:
	rld		;e034	ed 6f 	. o 
	dec hl			;e036	2b 	+ 
	dec c			;e037	0d 	. 
	jr nz,le034h		;e038	20 fa 	  . 
le03ah:
	ld hl,07f33h		;e03a	21 33 7f 	! 3  
le03dh:
	push de			;e03d	d5 	. 
	pop ix		;e03e	dd e1 	. . 
	jr ldfedh		;e040	18 ab 	. . 
le042h:
	bit 1,(hl)		;e042	cb 4e 	. N 
	jr nz,le006h		;e044	20 c0 	  . 
	call sub_db18h		;e046	cd 18 db 	. . . 
	ld hl,07f33h		;e049	21 33 7f 	! 3  
le04ch:
	inc de			;e04c	13 	. 
	ld a,(de)			;e04d	1a 	. 
	call sub_e7adh		;e04e	cd ad e7 	. . . 
	jr nc,le07ah		;e051	30 27 	0 ' 
	cp 020h		;e053	fe 20 	.   
	jr z,le04ch		;e055	28 f5 	( . 
	cp 02bh		;e057	fe 2b 	. + 
	jr z,le063h		;e059	28 08 	( . 
	cp 02dh		;e05b	fe 2d 	. - 
	jr nz,le07fh		;e05d	20 20 	    
	ld a,(hl)			;e05f	7e 	~ 
	xor 008h		;e060	ee 08 	. . 
	ld (hl),a			;e062	77 	w 
le063h:
	push de			;e063	d5 	. 
	pop ix		;e064	dd e1 	. . 
	jr le04ch		;e066	18 e4 	. . 
le068h:
	ld hl,07f11h		;e068	21 11 7f 	! .  
	and 00fh		;e06b	e6 0f 	. . 
	rld		;e06d	ed 6f 	. o 
le06fh:
	inc de			;e06f	13 	. 
	ld a,(de)			;e070	1a 	. 
	cp 020h		;e071	fe 20 	.   
	jr z,le06fh		;e073	28 fa 	( . 
	call sub_e7adh		;e075	cd ad e7 	. . . 
	jr c,le07fh		;e078	38 05 	8 . 
le07ah:
	push de			;e07a	d5 	. 
	pop ix		;e07b	dd e1 	. . 
	jr le068h		;e07d	18 e9 	. . 
le07fh:
	ld hl,07f10h		;e07f	21 10 7f 	! .  
	ld (hl),000h		;e082	36 00 	6 . 
	ld a,(07f33h)		;e084	3a 33 7f 	: 3  
	bit 3,a		;e087	cb 5f 	. _ 
	jr z,le096h		;e089	28 0b 	( . 
	inc l			;e08b	2c 	, 
	xor a			;e08c	af 	. 
	sub (hl)			;e08d	96 	. 
	daa			;e08e	27 	' 
	ld (hl),a			;e08f	77 	w 
	dec hl			;e090	2b 	+ 
	ld a,000h		;e091	3e 00 	> . 
	sbc a,(hl)			;e093	9e 	. 
	daa			;e094	27 	' 
	ld (hl),a			;e095	77 	w 
le096h:
	inc l			;e096	2c 	, 
	ld a,(07f09h)		;e097	3a 09 7f 	: .  
	add a,(hl)			;e09a	86 	. 
	daa			;e09b	27 	' 
	ld (hl),a			;e09c	77 	w 
	dec hl			;e09d	2b 	+ 
	ld a,(07f08h)		;e09e	3a 08 7f 	: .  
	adc a,(hl)			;e0a1	8e 	. 
	daa			;e0a2	27 	' 
	ld (hl),a			;e0a3	77 	w 
	cp 090h		;e0a4	fe 90 	. . 
	jr c,le0b1h		;e0a6	38 09 	8 . 
	cp 099h		;e0a8	fe 99 	. . 
	jr z,le0b7h		;e0aa	28 0b 	( . 
le0ach:
	call 08029h		;e0ac	cd 29 80 	. ) . 
le0afh:
	or a			;e0af	b7 	. 
	ret			;e0b0	c9 	. 
le0b1h:
	or a			;e0b1	b7 	. 
	jr z,le0bch		;e0b2	28 08 	( . 
	jp 0834ah		;e0b4	c3 4a 83 	. J . 
le0b7h:
	inc hl			;e0b7	23 	# 
	ld a,(hl)			;e0b8	7e 	~ 
	or a			;e0b9	b7 	. 
	jr z,le0ach		;e0ba	28 f0 	( . 
le0bch:
	ld de,07f11h		;e0bc	11 11 7f 	. .  
	ld c,002h		;e0bf	0e 02 	. . 
	or a			;e0c1	b7 	. 
	jp sub_dba3h		;e0c2	c3 a3 db 	. . . 
le0c5h:
	bit 1,(hl)		;e0c5	cb 4e 	. N 
	jp nz,le006h		;e0c7	c2 06 e0 	. . . 
	res 4,(hl)		;e0ca	cb a6 	. . 
	bit 2,(hl)		;e0cc	cb 56 	. V 
	jr nz,le0d4h		;e0ce	20 04 	  . 
	set 2,(hl)		;e0d0	cb d6 	. . 
	inc b			;e0d2	04 	. 
	dec b			;e0d3	05 	. 
le0d4h:
	jp nz,le03dh		;e0d4	c2 3d e0 	. = . 
le0d7h:
	push de			;e0d7	d5 	. 
	pop ix		;e0d8	dd e1 	. . 
	inc de			;e0da	13 	. 
	ld a,(de)			;e0db	1a 	. 
	cp 030h		;e0dc	fe 30 	. 0 
	jp nz,ldfefh		;e0de	c2 ef df 	. . . 
	ld hl,07f09h		;e0e1	21 09 7f 	! .  
	ld a,(hl)			;e0e4	7e 	~ 
	sub 001h		;e0e5	d6 01 	. . 
	daa			;e0e7	27 	' 
	ld (hl),a			;e0e8	77 	w 
	dec hl			;e0e9	2b 	+ 
	ld a,(hl)			;e0ea	7e 	~ 
	sbc a,000h		;e0eb	de 00 	. . 
	daa			;e0ed	27 	' 
	ld (hl),a			;e0ee	77 	w 
	jr le0d7h		;e0ef	18 e6 	. . 
sub_e0f1h:
	ld hl,(079d6h)		;e0f1	2a d6 79 	* . y 
	ld h,07ah		;e0f4	26 7a 	& z 
	dec hl			;e0f6	2b 	+ 
	ld a,l			;e0f7	7d 	} 
	ld (079d6h),a		;e0f8	32 d6 79 	2 . y 
	ld a,(hl)			;e0fb	7e 	~ 
	ld (07f0bh),a		;e0fc	32 0b 7f 	2 .  
	cp 0f0h		;e0ff	fe f0 	. . 
	jr nc,le10bh		;e101	30 08 	0 . 
	cp 01bh		;e103	fe 1b 	. . 
	jr c,le10bh		;e105	38 04 	8 . 
	cp 0a0h		;e107	fe a0 	. . 
	jr nz,le110h		;e109	20 05 	  . 
le10bh:
	ld hl,07f33h		;e10b	21 33 7f 	! 3  
	set 2,(hl)		;e10e	cb d6 	. . 
le110h:
	or a			;e110	b7 	. 
	ret			;e111	c9 	. 
le112h:
	call sub_daf0h		;e112	cd f0 da 	. . . 
	ret c			;e115	d8 	. 
sub_e116h:
	call sub_db01h		;e116	cd 01 db 	. . . 
	ld de,07f08h		;e119	11 08 7f 	. .  
le11ch:
	inc ix		;e11c	dd 23 	. # 
	ld a,(ix+000h)		;e11e	dd 7e 00 	. ~ . 
	cp 022h		;e121	fe 22 	. " 
	jr z,sub_e13eh		;e123	28 19 	( . 
	cp 00dh		;e125	fe 0d 	. . 
	jr z,le13ch		;e127	28 13 	( . 
	ld c,a			;e129	4f 	O 
	ld a,l			;e12a	7d 	} 
	cp 0feh		;e12b	fe fe 	. . 
	jr z,le136h		;e12d	28 07 	( . 
	inc hl			;e12f	23 	# 
	ld (hl),c			;e130	71 	q 
	ex de,hl			;e131	eb 	. 
	inc (hl)			;e132	34 	4 
	ex de,hl			;e133	eb 	. 
	jr nz,le11ch		;e134	20 e6 	  . 
le136h:
	push hl			;e136	e5 	. 
	pop iy		;e137	fd e1 	. . 
	jp 08384h		;e139	c3 84 83 	. . . 
le13ch:
	dec ix		;e13c	dd 2b 	. + 
sub_e13eh:
	ld a,(07f08h)		;e13e	3a 08 7f 	: .  
	ld (07f17h),a		;e141	32 17 7f 	2 .  
	inc hl			;e144	23 	# 
	push hl			;e145	e5 	. 
	pop iy		;e146	fd e1 	. . 
	ld a,l			;e148	7d 	} 
	ld (079f7h),a		;e149	32 f7 79 	2 . y 
	jp ldab3h		;e14c	c3 b3 da 	. . . 
le14fh:
	call sub_daf5h		;e14f	cd f5 da 	. . . 
	ret c			;e152	d8 	. 
sub_e153h:
	inc ix		;e153	dd 23 	. # 
	ld a,(ix+000h)		;e155	dd 7e 00 	. ~ . 
	and 0dfh		;e158	e6 df 	. . 
	cp 048h		;e15a	fe 48 	. H 
	jp nz,08379h		;e15c	c2 79 83 	. y . 
le15fh:
	call sub_e1b8h		;e15f	cd b8 e1 	. . . 
	ld b,00ah		;e162	06 0a 	. . 
le164h:
	call sub_e1a4h		;e164	cd a4 e1 	. . . 
	jr c,le18bh		;e167	38 22 	8 " 
	ld de,07f16h		;e169	11 16 7f 	. .  
	ld c,005h		;e16c	0e 05 	. . 
	call sub_dba3h		;e16e	cd a3 db 	. . . 
	ld c,a			;e171	4f 	O 
	ld a,(de)			;e172	1a 	. 
	add a,010h		;e173	c6 10 	. . 
	ld (de),a			;e175	12 	. 
	ld a,c			;e176	79 	y 
	ld hl,07f16h		;e177	21 16 7f 	! .  
	or (hl)			;e17a	b6 	. 
	ld (hl),a			;e17b	77 	w 
	inc ix		;e17c	dd 23 	. # 
	ld a,(ix+000h)		;e17e	dd 7e 00 	. ~ . 
	djnz le164h		;e181	10 e1 	. . 
	call sub_e1a4h		;e183	cd a4 e1 	. . . 
	jr c,le195h		;e186	38 0d 	8 . 
	jp 0834ah		;e188	c3 4a 83 	. J . 
le18bh:
	ld de,07f16h		;e18b	11 16 7f 	. .  
	ld c,005h		;e18e	0e 05 	. . 
	call sub_dba3h		;e190	cd a3 db 	. . . 
	djnz le18bh		;e193	10 f6 	. . 
le195h:
	call 083b4h		;e195	cd b4 83 	. . . 
	call sub_c11dh		;e198	cd 1d c1 	. . . 
	call 083b4h		;e19b	cd b4 83 	. . . 
	ret c			;e19e	d8 	. 
	dec ix		;e19f	dd 2b 	. + 
	jp ldab3h		;e1a1	c3 b3 da 	. . . 
sub_e1a4h:
	call sub_e7adh		;e1a4	cd ad e7 	. . . 
	jr nc,le1b5h		;e1a7	30 0c 	0 . 
	and 0dfh		;e1a9	e6 df 	. . 
	cp 041h		;e1ab	fe 41 	. A 
	ret c			;e1ad	d8 	. 
	cp 047h		;e1ae	fe 47 	. G 
	ccf			;e1b0	3f 	? 
	ret c			;e1b1	d8 	. 
	sub 037h		;e1b2	d6 37 	. 7 
	ret			;e1b4	c9 	. 
le1b5h:
	and 00fh		;e1b5	e6 0f 	. . 
	ret			;e1b7	c9 	. 
sub_e1b8h:
	call 08024h		;e1b8	cd 24 80 	. $ . 
	ld hl,07f11h		;e1bb	21 11 7f 	! .  
	ld (hl),0f0h		;e1be	36 f0 	6 . 
	ld a,00ah		;e1c0	3e 0a 	> . 
	ld (07f08h),a		;e1c2	32 08 7f 	2 .  
le1c5h:
	inc ix		;e1c5	dd 23 	. # 
	ld a,(ix+000h)		;e1c7	dd 7e 00 	. ~ . 
	cp 030h		;e1ca	fe 30 	. 0 
	jr z,le1c5h		;e1cc	28 f7 	( . 
	ret			;e1ce	c9 	. 
le1cfh:
	call 08024h		;e1cf	cd 24 80 	. $ . 
	ld hl,07f30h		;e1d2	21 30 7f 	! 0  
	ld a,(hl)			;e1d5	7e 	~ 
	and 0fch		;e1d6	e6 fc 	. . 
	ld (hl),a			;e1d8	77 	w 
	ld a,(07f19h)		;e1d9	3a 19 7f 	: .  
	rla			;e1dc	17 	. 
	jr nc,le1f1h		;e1dd	30 12 	0 . 
	ld hl,07f30h		;e1df	21 30 7f 	! 0  
	set 0,(hl)		;e1e2	cb c6 	. . 
	ld de,(07f18h)		;e1e4	ed 5b 18 7f 	. [ .  
	ld hl,00000h		;e1e8	21 00 00 	! . . 
	or a			;e1eb	b7 	. 
	sbc hl,de		;e1ec	ed 52 	. R 
	ld (07f18h),hl		;e1ee	22 18 7f 	" .  
le1f1h:
	ld hl,(07f18h)		;e1f1	2a 18 7f 	* .  
	ld (07f0eh),hl		;e1f4	22 0e 7f 	" .  
	call 08010h		;e1f7	cd 10 80 	. . . 
	ld hl,07f1ch		;e1fa	21 1c 7f 	! .  
	set 4,(hl)		;e1fd	cb e6 	. . 
	call 080f0h		;e1ff	cd f0 80 	. . . 
	call 083bfh		;e202	cd bf 83 	. . . 
	ld a,(07f0fh)		;e205	3a 0f 7f 	: .  
	ld (07f0eh),a		;e208	32 0e 7f 	2 .  
	call 083bfh		;e20b	cd bf 83 	. . . 
	ld hl,07f11h		;e20e	21 11 7f 	! .  
	set 6,(hl)		;e211	cb f6 	. . 
	call 082e9h		;e213	cd e9 82 	. . . 
	ld hl,07f30h		;e216	21 30 7f 	! 0  
	bit 1,(hl)		;e219	cb 4e 	. N 
	ret nz			;e21b	c0 	. 
	bit 0,(hl)		;e21c	cb 46 	. F 
	ret z			;e21e	c8 	. 
	res 0,(hl)		;e21f	cb 86 	. . 
	ld hl,07f11h		;e221	21 11 7f 	! .  
	set 3,(hl)		;e224	cb de 	. . 
	ret			;e226	c9 	. 
sub_e227h:
	ld hl,07f30h		;e227	21 30 7f 	! 0  
	set 1,(hl)		;e22a	cb ce 	. . 
	call 08024h		;e22c	cd 24 80 	. $ . 
	jr le1f1h		;e22f	18 c0 	. . 
sub_e231h:
	call sub_e34bh		;e231	cd 4b e3 	. K . 
	ret c			;e234	d8 	. 
sub_e235h:
	ld a,(07f33h)		;e235	3a 33 7f 	: 3  
	bit 4,a		;e238	cb 67 	. g 
	jr z,le264h		;e23a	28 28 	( ( 
	bit 6,a		;e23c	cb 77 	. w 
	jp nz,08379h		;e23e	c2 79 83 	. y . 
	ld a,(07f0ah)		;e241	3a 0a 7f 	: .  
	sub 041h		;e244	d6 41 	. A 
	ld (07f18h),a		;e246	32 18 7f 	2 .  
	call 083b4h		;e249	cd b4 83 	. . . 
	ld l,a			;e24c	6f 	o 
	ld h,000h		;e24d	26 00 	& . 
	add hl,hl			;e24f	29 	) 
	add hl,hl			;e250	29 	) 
	add hl,hl			;e251	29 	) 
	ex de,hl			;e252	eb 	. 
	ld hl,078c7h		;e253	21 c7 78 	! . x 
	or a			;e256	b7 	. 
	sbc hl,de		;e257	ed 52 	. R 
	push hl			;e259	e5 	. 
	pop ix		;e25a	dd e1 	. . 
le25ch:
	call sub_e4d3h		;e25c	cd d3 e4 	. . . 
	ld a,(07f08h)		;e25f	3a 08 7f 	: .  
	jr le2beh		;e262	18 5a 	. Z 
le264h:
	bit 3,a		;e264	cb 5f 	. _ 
	jr z,le2c1h		;e266	28 59 	( Y 
	push af			;e268	f5 	. 
	ld hl,(07f0ah)		;e269	2a 0a 7f 	* .  
	ld (07a9eh),hl		;e26c	22 9e 7a 	" . z 
	ld hl,07f37h		;e26f	21 37 7f 	! 7  
	set 7,(hl)		;e272	cb fe 	. . 
	call sub_d9edh		;e274	cd ed d9 	. . . 
	jr c,le29fh		;e277	38 26 	8 & 
	call sub_e423h		;e279	cd 23 e4 	. # . 
	jr c,le29fh		;e27c	38 21 	8 ! 
	ld a,(de)			;e27e	1a 	. 
	ld (079d0h),a		;e27f	32 d0 79 	2 . y 
	call sub_dabfh		;e282	cd bf da 	. . . 
	jr z,le2a1h		;e285	28 1a 	( . 
	ld hl,07a10h		;e287	21 10 7a 	! . z 
	call sub_dd0eh		;e28a	cd 0e dd 	. . . 
	call sub_e423h		;e28d	cd 23 e4 	. # . 
	jr c,le29fh		;e290	38 0d 	8 . 
	ld a,(de)			;e292	1a 	. 
	ld (079d1h),a		;e293	32 d1 79 	2 . y 
	inc ix		;e296	dd 23 	. # 
	ld a,(ix+000h)		;e298	dd 7e 00 	. ~ . 
	cp 029h		;e29b	fe 29 	. ) 
	jr z,le2aeh		;e29d	28 0f 	( . 
le29fh:
	pop hl			;e29f	e1 	. 
	ret			;e2a0	c9 	. 
le2a1h:
	inc ix		;e2a1	dd 23 	. # 
	ld a,(ix+000h)		;e2a3	dd 7e 00 	. ~ . 
	cp 029h		;e2a6	fe 29 	. ) 
	jr nz,le29fh		;e2a8	20 f5 	  . 
	xor a			;e2aa	af 	. 
	ld (079d1h),a		;e2ab	32 d1 79 	2 . y 
le2aeh:
	call 083b4h		;e2ae	cd b4 83 	. . . 
	pop af			;e2b1	f1 	. 
	ld (07f33h),a		;e2b2	32 33 7f 	2 3  
	ld hl,(07a9eh)		;e2b5	2a 9e 7a 	* . z 
	ld (07f0ah),hl		;e2b8	22 0a 7f 	" .  
	call sub_e44fh		;e2bb	cd 4f e4 	. O . 
le2beh:
	jp 083b4h		;e2be	c3 b4 83 	. . . 
le2c1h:
	bit 6,a		;e2c1	cb 77 	. w 
	jp nz,08379h		;e2c3	c2 79 83 	. y . 
	call 083b4h		;e2c6	cd b4 83 	. . . 
	call sub_e3e9h		;e2c9	cd e9 e3 	. . . 
	jr c,le2dbh		;e2cc	38 0d 	8 . 
	ld de,00005h		;e2ce	11 05 00 	. . . 
	add ix,de		;e2d1	dd 19 	. . 
	ld a,(ix+000h)		;e2d3	dd 7e 00 	. ~ . 
	ld (07f08h),a		;e2d6	32 08 7f 	2 .  
	jr le25ch		;e2d9	18 81 	. . 
le2dbh:
	ld a,(07f33h)		;e2db	3a 33 7f 	: 3  
	bit 5,a		;e2de	cb 6f 	. o 
	jr z,le2fbh		;e2e0	28 19 	( . 
	call 08024h		;e2e2	cd 24 80 	. $ . 
	ld a,(07f33h)		;e2e5	3a 33 7f 	: 3  
	and 004h		;e2e8	e6 04 	. . 
	jr z,le2beh		;e2ea	28 d2 	( . 
	ld hl,07f14h		;e2ec	21 14 7f 	! .  
	ld (hl),0d0h		;e2ef	36 d0 	6 . 
	ld hl,(079f7h)		;e2f1	2a f7 79 	* . y 
	ld h,07eh		;e2f4	26 7e 	& ~ 
	ld (07f15h),hl		;e2f6	22 15 7f 	" .  
	jr le2beh		;e2f9	18 c3 	. . 
le2fbh:
	call 083b4h		;e2fb	cd b4 83 	. . . 
	bit 1,a		;e2fe	cb 4f 	. O 
	jr z,le346h		;e300	28 44 	( D 
	ld hl,(079fch)		;e302	2a fc 79 	* . y 
	bit 2,a		;e305	cb 57 	. W 
	ld de,0000fh		;e307	11 0f 00 	. . . 
	jr z,le30eh		;e30a	28 02 	( . 
	ld e,017h		;e30c	1e 17 	. . 
le30eh:
	or a			;e30e	b7 	. 
	sbc hl,de		;e30f	ed 52 	. R 
	push hl			;e311	e5 	. 
	pop iy		;e312	fd e1 	. . 
	jp c,08388h		;e314	da 88 83 	. . . 
	call sub_e42dh		;e317	cd 2d e4 	. - . 
	jp nc,08388h		;e31a	d2 88 83 	. . . 
	call sub_e410h		;e31d	cd 10 e4 	. . . 
	push iy		;e320	fd e5 	. . 
	pop hl			;e322	e1 	. 
	inc hl			;e323	23 	# 
	ld (hl),000h		;e324	36 00 	6 . 
	ld a,(07f33h)		;e326	3a 33 7f 	: 3  
	bit 2,a		;e329	cb 57 	. W 
	ld de,0080bh		;e32b	11 0b 08 	. . . 
	jr z,le333h		;e32e	28 03 	( . 
	ld de,01013h		;e330	11 13 10 	. . . 
le333h:
	inc hl			;e333	23 	# 
	ld (hl),e			;e334	73 	s 
	xor a			;e335	af 	. 
	ld c,a			;e336	4f 	O 
le337h:
	inc a			;e337	3c 	< 
	inc hl			;e338	23 	# 
	ld (hl),c			;e339	71 	q 
	cp 003h		;e33a	fe 03 	. . 
	jr nz,le340h		;e33c	20 02 	  . 
	ld (hl),d			;e33e	72 	r 
	push hl			;e33f	e5 	. 
le340h:
	cp e			;e340	bb 	. 
	jr nz,le337h		;e341	20 f4 	  . 
	ld a,d			;e343	7a 	z 
	pop iy		;e344	fd e1 	. . 
le346h:
	ld (07f08h),a		;e346	32 08 7f 	2 .  
	or a			;e349	b7 	. 
	ret			;e34a	c9 	. 
sub_e34bh:
	ld hl,07f33h		;e34b	21 33 7f 	! 3  
	ld a,(hl)			;e34e	7e 	~ 
	and 063h		;e34f	e6 63 	. c 
	ld (hl),a			;e351	77 	w 
	xor a			;e352	af 	. 
	ld (07f0bh),a		;e353	32 0b 7f 	2 .  
	call sub_dbc4h		;e356	cd c4 db 	. . . 
	ld (07f0ah),a		;e359	32 0a 7f 	2 .  
	call sub_e7a6h		;e35c	cd a6 e7 	. . . 
	jp c,08379h		;e35f	da 79 83 	. y . 
	inc ix		;e362	dd 23 	. # 
	ld a,(ix+000h)		;e364	dd 7e 00 	. ~ . 
	cp 024h		;e367	fe 24 	. $ 
	jr nz,le384h		;e369	20 19 	  . 
	set 2,(hl)		;e36b	cb d6 	. . 
	ld hl,07f0bh		;e36d	21 0b 7f 	! .  
	set 5,(hl)		;e370	cb ee 	. . 
	push ix		;e372	dd e5 	. . 
	call sub_dbc4h		;e374	cd c4 db 	. . . 
	cp 028h		;e377	fe 28 	. ( 
	jr nz,le3c6h		;e379	20 4b 	  K 
le37bh:
	pop hl			;e37b	e1 	. 
	ld hl,07f0bh		;e37c	21 0b 7f 	! .  
	set 7,(hl)		;e37f	cb fe 	. . 
	jp le3e2h		;e381	c3 e2 e3 	. . . 
le384h:
	call sub_e7a6h		;e384	cd a6 e7 	. . . 
	jr nc,le38eh		;e387	30 05 	0 . 
	call sub_e7adh		;e389	cd ad e7 	. . . 
	jr c,le3bbh		;e38c	38 2d 	8 - 
le38eh:
	ld (07f0bh),a		;e38e	32 0b 7f 	2 .  
le391h:
	inc ix		;e391	dd 23 	. # 
	ld a,(ix+000h)		;e393	dd 7e 00 	. ~ . 
	call sub_e7a6h		;e396	cd a6 e7 	. . . 
	jr nc,le391h		;e399	30 f6 	0 . 
	call sub_e7adh		;e39b	cd ad e7 	. . . 
	jr nc,le391h		;e39e	30 f1 	0 . 
	cp 024h		;e3a0	fe 24 	. $ 
	jr nz,le3cfh		;e3a2	20 2b 	  + 
	ld hl,07f33h		;e3a4	21 33 7f 	! 3  
	set 2,(hl)		;e3a7	cb d6 	. . 
	ld hl,07f0bh		;e3a9	21 0b 7f 	! .  
	ld a,040h		;e3ac	3e 40 	> @ 
	add a,(hl)			;e3ae	86 	. 
	ld (hl),a			;e3af	77 	w 
	push ix		;e3b0	dd e5 	. . 
	call sub_dbc4h		;e3b2	cd c4 db 	. . . 
	cp 028h		;e3b5	fe 28 	. ( 
	jr nz,le3cbh		;e3b7	20 12 	  . 
	jr le3dah		;e3b9	18 1f 	. . 
le3bbh:
	dec ix		;e3bb	dd 2b 	. + 
	push ix		;e3bd	dd e5 	. . 
	call sub_dbc4h		;e3bf	cd c4 db 	. . . 
	cp 028h		;e3c2	fe 28 	. ( 
	jr z,le37bh		;e3c4	28 b5 	( . 
le3c6h:
	ld hl,07f33h		;e3c6	21 33 7f 	! 3  
	set 4,(hl)		;e3c9	cb e6 	. . 
le3cbh:
	pop ix		;e3cb	dd e1 	. . 
	or a			;e3cd	b7 	. 
	ret			;e3ce	c9 	. 
le3cfh:
	dec ix		;e3cf	dd 2b 	. + 
	push ix		;e3d1	dd e5 	. . 
	call sub_dbc4h		;e3d3	cd c4 db 	. . . 
	cp 028h		;e3d6	fe 28 	. ( 
	jr nz,le3cbh		;e3d8	20 f1 	  . 
le3dah:
	pop hl			;e3da	e1 	. 
	ld hl,07f0bh		;e3db	21 0b 7f 	! .  
	ld a,080h		;e3de	3e 80 	> . 
	add a,(hl)			;e3e0	86 	. 
	ld (hl),a			;e3e1	77 	w 
le3e2h:
	ld hl,07f33h		;e3e2	21 33 7f 	! 3  
	set 3,(hl)		;e3e5	cb de 	. . 
	or a			;e3e7	b7 	. 
	ret			;e3e8	c9 	. 
sub_e3e9h:
	ld hl,(079fch)		;e3e9	2a fc 79 	* . y 
	dec hl			;e3ec	2b 	+ 
le3edh:
	ld de,077ffh		;e3ed	11 ff 77 	. . w 
	ex de,hl			;e3f0	eb 	. 
	scf			;e3f1	37 	7 
	sbc hl,de		;e3f2	ed 52 	. R 
	ex de,hl			;e3f4	eb 	. 
	ret c			;e3f5	d8 	. 
	inc hl			;e3f6	23 	# 
	ld a,(07f0ah)		;e3f7	3a 0a 7f 	: .  
	cp (hl)			;e3fa	be 	. 
	inc hl			;e3fb	23 	# 
	jr nz,le404h		;e3fc	20 06 	  . 
	ld a,(07f0bh)		;e3fe	3a 0b 7f 	: .  
	cp (hl)			;e401	be 	. 
	jr z,le40ch		;e402	28 08 	( . 
le404h:
	inc hl			;e404	23 	# 
	ld d,(hl)			;e405	56 	V 
	inc hl			;e406	23 	# 
	ld e,(hl)			;e407	5e 	^ 
	add hl,de			;e408	19 	. 
	jr nc,le3edh		;e409	30 e2 	0 . 
	ret			;e40b	c9 	. 
le40ch:
	push hl			;e40c	e5 	. 
	pop ix		;e40d	dd e1 	. . 
	ret			;e40f	c9 	. 
sub_e410h:
	ld (079fch),iy		;e410	fd 22 fc 79 	. " . y 
	ld a,(07f0ah)		;e414	3a 0a 7f 	: .  
	ld (iy+000h),a		;e417	fd 77 00 	. w . 
	inc iy		;e41a	fd 23 	. # 
	ld a,(07f0bh)		;e41c	3a 0b 7f 	: .  
	ld (iy+000h),a		;e41f	fd 77 00 	. w . 
	ret			;e422	c9 	. 
sub_e423h:
	call sub_ef9dh		;e423	cd 9d ef 	. . . 
	ld de,07f18h		;e426	11 18 7f 	. .  
	ret			;e429	c9 	. 
	ld (07f08h),hl		;e42a	22 08 7f 	" .  
sub_e42dh:
	push hl			;e42d	e5 	. 
	ld hl,(079e3h)		;e42e	2a e3 79 	* . y 
	push iy		;e431	fd e5 	. . 
	pop de			;e433	d1 	. 
	or a			;e434	b7 	. 
	sbc hl,de		;e435	ed 52 	. R 
	pop hl			;e437	e1 	. 
	ret			;e438	c9 	. 
le439h:
	push iy		;e439	fd e5 	. . 
	pop hl			;e43b	e1 	. 
	ld e,000h		;e43c	1e 00 	. . 
	ld bc,(07f08h)		;e43e	ed 4b 08 7f 	. K .  
	jr le447h		;e442	18 03 	. . 
le444h:
	inc hl			;e444	23 	# 
	ld (hl),e			;e445	73 	s 
	dec bc			;e446	0b 	. 
le447h:
	ld a,b			;e447	78 	x 
	or c			;e448	b1 	. 
	jr nz,le444h		;e449	20 f9 	  . 
	push hl			;e44b	e5 	. 
	pop iy		;e44c	fd e1 	. . 
	ret			;e44e	c9 	. 
sub_e44fh:
	ld hl,(079d0h)		;e44f	2a d0 79 	* . y 
	ld (07f0ch),hl		;e452	22 0c 7f 	" .  
	call sub_e3e9h		;e455	cd e9 e3 	. . . 
	jr c,le4a8h		;e458	38 4e 	8 N 
	ld a,(07f33h)		;e45a	3a 33 7f 	: 3  
	bit 6,a		;e45d	cb 77 	. w 
	ld a,030h		;e45f	3e 30 	> 0 
	jp nz,0837bh		;e461	c2 7b 83 	. { . 
	inc hl			;e464	23 	# 
	inc hl			;e465	23 	# 
	inc hl			;e466	23 	# 
	ld de,07f0ch		;e467	11 0c 7f 	. .  
	ex de,hl			;e46a	eb 	. 
	ld a,(de)			;e46b	1a 	. 
	cp (hl)			;e46c	be 	. 
	ld c,a			;e46d	4f 	O 
	jr c,le474h		;e46e	38 04 	8 . 
	inc hl			;e470	23 	# 
	inc de			;e471	13 	. 
	ld a,(de)			;e472	1a 	. 
	cp (hl)			;e473	be 	. 
le474h:
	jp c,0835ah		;e474	da 5a 83 	. Z . 
	ex de,hl			;e477	eb 	. 
	ld a,(de)			;e478	1a 	. 
	ld (07f0ah),a		;e479	32 0a 7f 	2 .  
	xor a			;e47c	af 	. 
	ld (07f0bh),a		;e47d	32 0b 7f 	2 .  
	ld b,a			;e480	47 	G 
	inc bc			;e481	03 	. 
	push hl			;e482	e5 	. 
	pop ix		;e483	dd e1 	. . 
	call sub_e4b2h		;e485	cd b2 e4 	. . . 
	ld a,(07f0ch)		;e488	3a 0c 7f 	: .  
	ld c,a			;e48b	4f 	O 
	ld b,000h		;e48c	06 00 	. . 
	add hl,bc			;e48e	09 	. 
	ld (07f0ah),hl		;e48f	22 0a 7f 	" .  
	inc ix		;e492	dd 23 	. # 
	ld a,(ix+000h)		;e494	dd 7e 00 	. ~ . 
	ld c,a			;e497	4f 	O 
	ld (07f08h),a		;e498	32 08 7f 	2 .  
	call sub_e4b2h		;e49b	cd b2 e4 	. . . 
	ex de,hl			;e49e	eb 	. 
	add ix,de		;e49f	dd 19 	. . 
	call sub_e4d3h		;e4a1	cd d3 e4 	. . . 
	ld a,(07f08h)		;e4a4	3a 08 7f 	: .  
	ret			;e4a7	c9 	. 
le4a8h:
	ld a,(07f33h)		;e4a8	3a 33 7f 	: 3  
	bit 6,a		;e4ab	cb 77 	. w 
	jp z,08356h		;e4ad	ca 56 83 	. V . 
	or a			;e4b0	b7 	. 
	ret			;e4b1	c9 	. 
sub_e4b2h:
	ld hl,00000h		;e4b2	21 00 00 	! . . 
	ld de,(07f0ah)		;e4b5	ed 5b 0a 7f 	. [ .  
	ld a,b			;e4b9	78 	x 
	or c			;e4ba	b1 	. 
	jr z,le4cfh		;e4bb	28 12 	( . 
le4bdh:
	rr b		;e4bd	cb 18 	. . 
	rr c		;e4bf	cb 19 	. . 
	jr nc,le4c5h		;e4c1	30 02 	0 . 
	add hl,de			;e4c3	19 	. 
	ret c			;e4c4	d8 	. 
le4c5h:
	ld a,b			;e4c5	78 	x 
	or c			;e4c6	b1 	. 
	jr z,le4cfh		;e4c7	28 06 	( . 
	rl e		;e4c9	cb 13 	. . 
	rl d		;e4cb	cb 12 	. . 
	jr nc,le4bdh		;e4cd	30 ee 	0 . 
le4cfh:
	ld (07f0ah),hl		;e4cf	22 0a 7f 	" .  
	ret			;e4d2	c9 	. 
sub_e4d3h:
	push ix		;e4d3	dd e5 	. . 
	ld hl,07f33h		;e4d5	21 33 7f 	! 3  
	bit 5,(hl)		;e4d8	cb 6e 	. n 
	jr z,le516h		;e4da	28 3a 	( : 
	bit 2,(hl)		;e4dc	cb 56 	. V 
	jr z,le53eh		;e4de	28 5e 	( ^ 
	ld a,0d0h		;e4e0	3e d0 	> . 
	ld (07f14h),a		;e4e2	32 14 7f 	2 .  
	ld hl,(079f7h)		;e4e5	2a f7 79 	* . y 
	ld h,07eh		;e4e8	26 7e 	& ~ 
	ld (07f15h),hl		;e4ea	22 15 7f 	" .  
	dec hl			;e4ed	2b 	+ 
	ld a,(07f08h)		;e4ee	3a 08 7f 	: .  
	ld b,a			;e4f1	47 	G 
	ld c,000h		;e4f2	0e 00 	. . 
	ld a,(07f33h)		;e4f4	3a 33 7f 	: 3  
	and 090h		;e4f7	e6 90 	. . 
	jr nz,le51eh		;e4f9	20 23 	  # 
le4fbh:
	ld a,l			;e4fb	7d 	} 
	cp 0feh		;e4fc	fe fe 	. . 
	jr z,le531h		;e4fe	28 31 	( 1 
	inc ix		;e500	dd 23 	. # 
	ld a,(ix+000h)		;e502	dd 7e 00 	. ~ . 
	or a			;e505	b7 	. 
	jr z,le50dh		;e506	28 05 	( . 
	inc hl			;e508	23 	# 
	ld (hl),a			;e509	77 	w 
	inc c			;e50a	0c 	. 
	djnz le4fbh		;e50b	10 ee 	. . 
le50dh:
	inc hl			;e50d	23 	# 
	ld a,l			;e50e	7d 	} 
	ld (079f7h),a		;e50f	32 f7 79 	2 . y 
	ld a,c			;e512	79 	y 
	ld (07f17h),a		;e513	32 17 7f 	2 .  
le516h:
	or a			;e516	b7 	. 
le517h:
	pop ix		;e517	dd e1 	. . 
	push ix		;e519	dd e5 	. . 
	pop iy		;e51b	fd e1 	. . 
	ret			;e51d	c9 	. 
le51eh:
	ld b,007h		;e51e	06 07 	. . 
	inc ix		;e520	dd 23 	. # 
	ld a,(ix+000h)		;e522	dd 7e 00 	. ~ . 
	cp 0f5h		;e525	fe f5 	. . 
	jr z,le4fbh		;e527	28 d2 	( . 
	ld a,(ix+002h)		;e529	dd 7e 02 	. ~ . 
	or a			;e52c	b7 	. 
	jr z,le50dh		;e52d	28 de 	( . 
	jr le54bh		;e52f	18 1a 	. . 
le531h:
	inc ix		;e531	dd 23 	. # 
	ld a,(ix+000h)		;e533	dd 7e 00 	. ~ . 
	or a			;e536	b7 	. 
	jr z,le50dh		;e537	28 d4 	( . 
	call 08384h		;e539	cd 84 83 	. . . 
	jr le517h		;e53c	18 d9 	. . 
le53eh:
	pop hl			;e53e	e1 	. 
	push hl			;e53f	e5 	. 
	inc hl			;e540	23 	# 
	call sub_dd0eh		;e541	cd 0e dd 	. . . 
	ld a,(07f10h)		;e544	3a 10 7f 	: .  
	cp 0f5h		;e547	fe f5 	. . 
	jr nz,le516h		;e549	20 cb 	  . 
le54bh:
	pop ix		;e54b	dd e1 	. . 
	jp 08390h		;e54d	c3 90 83 	. . . 
	call sub_cc39h		;e550	cd 39 cc 	. 9 . 
	ld hl,079d8h		;e553	21 d8 79 	! . y 
	set 4,(hl)		;e556	cb e6 	. . 
	ret			;e558	c9 	. 
sub_e559h:
	call 083b4h		;e559	cd b4 83 	. . . 
	ld hl,079f6h		;e55c	21 f6 79 	! . y 
	dec (hl)			;e55f	35 	5 
	call sub_db55h		;e560	cd 55 db 	. U . 
	ret c			;e563	d8 	. 
	ld hl,(079f6h)		;e564	2a f6 79 	* . y 
	ld h,07ah		;e567	26 7a 	& z 
	ld a,(hl)			;e569	7e 	~ 
le56ah:
	ld (07f0ah),a		;e56a	32 0a 7f 	2 .  
	cp 080h		;e56d	fe 80 	. . 
	jr c,le59bh		;e56f	38 2a 	8 * 
	ld hl,0e528h		;e571	21 28 e5 	! ( . 
	ld e,a			;e574	5f 	_ 
	ld d,000h		;e575	16 00 	. . 
	add hl,de			;e577	19 	. 
	add hl,de			;e578	19 	. 
	ld e,(hl)			;e579	5e 	^ 
	inc hl			;e57a	23 	# 
	ld d,(hl)			;e57b	56 	V 
	dec d			;e57c	15 	. 
	jr z,le5f4h		;e57d	28 75 	( u 
	dec d			;e57f	15 	. 
	jr z,le59fh		;e580	28 1d 	( . 
	inc d			;e582	14 	. 
	inc d			;e583	14 	. 
	jr z,le59fh		;e584	28 19 	( . 
	bit 7,d		;e586	cb 7a 	. z 
	set 7,d		;e588	cb fa 	. . 
	jr z,le593h		;e58a	28 07 	( . 
	call sub_dd15h		;e58c	cd 15 dd 	. . . 
	jr nc,le598h		;e58f	30 07 	0 . 
le591h:
	ex de,hl			;e591	eb 	. 
	jp (hl)			;e592	e9 	. 
le593h:
	call sub_dd15h		;e593	cd 15 dd 	. . . 
	jr nc,le591h		;e596	30 f9 	0 . 
le598h:
	jp 0838ch		;e598	c3 8c 83 	. . . 
le59bh:
	cp 066h		;e59b	fe 66 	. f 
	jr c,le5a2h		;e59d	38 03 	8 . 
le59fh:
	jp 08379h		;e59f	c3 79 83 	. y . 
le5a2h:
	cp 064h		;e5a2	fe 64 	. d 
	jr c,le5beh		;e5a4	38 18 	8 . 
	call sub_dd15h		;e5a6	cd 15 dd 	. . . 
	jr nc,le598h		;e5a9	30 ed 	0 . 
	ld c,a			;e5ab	4f 	O 
	ld hl,07f12h		;e5ac	21 12 7f 	! .  
	ld a,(hl)			;e5af	7e 	~ 
	or a			;e5b0	b7 	. 
	jp z,lf5c7h		;e5b1	ca c7 f5 	. . . 
	ld a,c			;e5b4	79 	y 
	cp 064h		;e5b5	fe 64 	. d 
	ret z			;e5b7	c8 	. 
	dec l			;e5b8	2d 	- 
	ld a,(hl)			;e5b9	7e 	~ 
	xor 008h		;e5ba	ee 08 	. . 
	ld (hl),a			;e5bc	77 	w 
	ret			;e5bd	c9 	. 
le5beh:
	cp 05eh		;e5be	fe 5e 	. ^ 
	jr z,le5f1h		;e5c0	28 2f 	( / 
	cp 02ah		;e5c2	fe 2a 	. * 
	jr z,le5f1h		;e5c4	28 2b 	( + 
	cp 02fh		;e5c6	fe 2f 	. / 
	jr z,le5f1h		;e5c8	28 27 	( ' 
	call sub_dabfh		;e5ca	cd bf da 	. . . 
	jr z,le59fh		;e5cd	28 d0 	( . 
	cp 02bh		;e5cf	fe 2b 	. + 
	jp z,lc000h		;e5d1	ca 00 c0 	. . . 
	cp 02dh		;e5d4	fe 2d 	. - 
	jp z,lc01eh		;e5d6	ca 1e c0 	. . . 
	cp 03dh		;e5d9	fe 3d 	. = 
	jp c,ld640h		;e5db	da 40 d6 	. @ . 
	jp z,ld6eeh		;e5de	ca ee d6 	. . . 
	cp 03eh		;e5e1	fe 3e 	. > 
	jp z,ld6ddh		;e5e3	ca dd d6 	. . . 
	cp 062h		;e5e6	fe 62 	. b 
	jp c,ld627h		;e5e8	da 27 d6 	. ' . 
	jp z,ld60ch		;e5eb	ca 0c d6 	. . . 
	jp ld75ch		;e5ee	c3 5c d7 	. \ . 
le5f1h:
	ld (07f0ah),a		;e5f1	32 0a 7f 	2 .  
le5f4h:
	call sub_dd15h		;e5f4	cd 15 dd 	. . . 
	jr nc,le598h		;e5f7	30 9f 	0 . 
	call sub_dabfh		;e5f9	cd bf da 	. . . 
	jr z,le59fh		;e5fc	28 a1 	( . 
	ld a,b			;e5fe	78 	x 
	sub 004h		;e5ff	d6 04 	. . 
	ld l,a			;e601	6f 	o 
	ld h,07ah		;e602	26 7a 	& z 
	ld a,(hl)			;e604	7e 	~ 
	cp 0d0h		;e605	fe d0 	. . 
	jr z,le598h		;e607	28 8f 	( . 
	ld a,(07f0ah)		;e609	3a 0a 7f 	: .  
	cp 02ah		;e60c	fe 2a 	. * 
	jp z,lc02dh		;e60e	ca 2d c0 	. - . 
	cp 02fh		;e611	fe 2f 	. / 
	jp z,lc039h		;e613	ca 39 c0 	. 9 . 
	cp 05eh		;e616	fe 5e 	. ^ 
	jp z,lc045h		;e618	ca 45 c0 	. E . 
	cp 083h		;e61b	fe 83 	. . 
	jp z,lc045h		;e61d	ca 45 c0 	. E . 
	cp 0a1h		;e620	fe a1 	. . 
	jp z,ld5bah		;e622	ca ba d5 	. . . 
	jp ld5b3h		;e625	c3 b3 d5 	. . . 
	ld a,b			;e628	78 	x 
	ret nz			;e629	c0 	. 
	ccf			;e62a	3f 	? 
	pop bc			;e62b	c1 	. 
	ld d,l			;e62c	55 	U 
	pop bc			;e62d	c1 	. 
	ld sp,hl			;e62e	f9 	. 
	push hl			;e62f	e5 	. 
	ld d,b			;e630	50 	P 
	push hl			;e631	e5 	. 
	dec e			;e632	1d 	. 
	pop bc			;e633	c1 	. 
	push de			;e634	d5 	. 
	ret nz			;e635	c0 	. 
	sbc a,0c0h		;e636	de c0 	. . 
	rst 20h			;e638	e7 	. 
	ret nz			;e639	c0 	. 
	ret p			;e63a	f0 	. 
	ret nz			;e63b	c0 	. 
	ret			;e63c	c9 	. 
	ret nz			;e63d	c0 	. 
	ret			;e63e	c9 	. 
	ret nz			;e63f	c0 	. 
	ret			;e640	c9 	. 
	ret nz			;e641	c0 	. 
	ret			;e642	c9 	. 
	ret nz			;e643	c0 	. 
	ret			;e644	c9 	. 
	ret nz			;e645	c0 	. 
	ret			;e646	c9 	. 
	ret nz			;e647	c0 	. 
	ret nz			;e648	c0 	. 
	ret nz			;e649	c0 	. 
	ld d,h			;e64a	54 	T 
	ret nz			;e64b	c0 	. 
	ld e,l			;e64c	5d 	] 
	ret nz			;e64d	c0 	. 
	ld h,(hl)			;e64e	66 	f 
	ret nz			;e64f	c0 	. 
	add a,c			;e650	81 	. 
	ret nz			;e651	c0 	. 
	adc a,d			;e652	8a 	. 
	ret nz			;e653	c0 	. 
	sub e			;e654	93 	. 
	ret nz			;e655	c0 	. 
	sbc a,h			;e656	9c 	. 
	ret nz			;e657	c0 	. 
	ld e,b			;e658	58 	X 
	jp z,lca8bh		;e659	ca 8b ca 	. . . 
	pop af			;e65c	f1 	. 
	push de			;e65d	d5 	. 
	ld sp,hl			;e65e	f9 	. 
	ret nz			;e65f	c0 	. 
	ld (bc),a			;e660	02 	. 
	pop bc			;e661	c1 	. 
	and l			;e662	a5 	. 
	ret nz			;e663	c0 	. 
	xor (hl)			;e664	ae 	. 
	ret nz			;e665	c0 	. 
	or a			;e666	b7 	. 
	ret nz			;e667	c0 	. 
	dec bc			;e668	0b 	. 
	pop bc			;e669	c1 	. 
	nop			;e66a	00 	. 
	ld bc,00100h		;e66b	01 00 01 	. . . 
	sbc a,l			;e66e	9d 	. 
	push de			;e66f	d5 	. 
	sbc a,e			;e670	9b 	. 
	defb 0ddh,000h,000h	;illegal sequence		;e671	dd 00 00 	. . . 
	nop			;e674	00 	. 
	nop			;e675	00 	. 
	nop			;e676	00 	. 
	nop			;e677	00 	. 
	nop			;e678	00 	. 
	nop			;e679	00 	. 
	nop			;e67a	00 	. 
	nop			;e67b	00 	. 
	nop			;e67c	00 	. 
	nop			;e67d	00 	. 
	nop			;e67e	00 	. 
	nop			;e67f	00 	. 
	nop			;e680	00 	. 
	nop			;e681	00 	. 
	nop			;e682	00 	. 
	nop			;e683	00 	. 
	nop			;e684	00 	. 
	ld (bc),a			;e685	02 	. 
	nop			;e686	00 	. 
	ld (bc),a			;e687	02 	. 
	nop			;e688	00 	. 
	nop			;e689	00 	. 
	nop			;e68a	00 	. 
	nop			;e68b	00 	. 
	nop			;e68c	00 	. 
	nop			;e68d	00 	. 
	nop			;e68e	00 	. 
	nop			;e68f	00 	. 
	nop			;e690	00 	. 
	nop			;e691	00 	. 
	nop			;e692	00 	. 
	nop			;e693	00 	. 
	nop			;e694	00 	. 
	ld (bc),a			;e695	02 	. 
	nop			;e696	00 	. 
	ld (bc),a			;e697	02 	. 
	nop			;e698	00 	. 
	nop			;e699	00 	. 
	nop			;e69a	00 	. 
	nop			;e69b	00 	. 
	nop			;e69c	00 	. 
	nop			;e69d	00 	. 
	nop			;e69e	00 	. 
	nop			;e69f	00 	. 
	nop			;e6a0	00 	. 
	nop			;e6a1	00 	. 
	nop			;e6a2	00 	. 
	nop			;e6a3	00 	. 
	nop			;e6a4	00 	. 
	nop			;e6a5	00 	. 
	ld l,a			;e6a6	6f 	o 
	ret nz			;e6a7	c0 	. 
	nop			;e6a8	00 	. 
	nop			;e6a9	00 	. 
	nop			;e6aa	00 	. 
	nop			;e6ab	00 	. 
	nop			;e6ac	00 	. 
	nop			;e6ad	00 	. 
	nop			;e6ae	00 	. 
	nop			;e6af	00 	. 
	nop			;e6b0	00 	. 
	nop			;e6b1	00 	. 
	nop			;e6b2	00 	. 
	nop			;e6b3	00 	. 
	nop			;e6b4	00 	. 
	nop			;e6b5	00 	. 
	nop			;e6b6	00 	. 
	nop			;e6b7	00 	. 
	nop			;e6b8	00 	. 
	nop			;e6b9	00 	. 
	nop			;e6ba	00 	. 
	nop			;e6bb	00 	. 
	nop			;e6bc	00 	. 
	nop			;e6bd	00 	. 
	nop			;e6be	00 	. 
	nop			;e6bf	00 	. 
	nop			;e6c0	00 	. 
	nop			;e6c1	00 	. 
	nop			;e6c2	00 	. 
	nop			;e6c3	00 	. 
	nop			;e6c4	00 	. 
	nop			;e6c5	00 	. 
	nop			;e6c6	00 	. 
	nop			;e6c7	00 	. 
	inc sp			;e6c8	33 	3 
	halt			;e6c9	76 	v 
	ld h,l			;e6ca	65 	e 
	ld (hl),l			;e6cb	75 	u 
	ld c,a			;e6cc	4f 	O 
	halt			;e6cd	76 	v 
	nop			;e6ce	00 	. 
	nop			;e6cf	00 	. 
	nop			;e6d0	00 	. 
	nop			;e6d1	00 	. 
	nop			;e6d2	00 	. 
	nop			;e6d3	00 	. 
	nop			;e6d4	00 	. 
	nop			;e6d5	00 	. 
	nop			;e6d6	00 	. 
	nop			;e6d7	00 	. 
	nop			;e6d8	00 	. 
	nop			;e6d9	00 	. 
	nop			;e6da	00 	. 
	nop			;e6db	00 	. 
	nop			;e6dc	00 	. 
	nop			;e6dd	00 	. 
	nop			;e6de	00 	. 
	nop			;e6df	00 	. 
	nop			;e6e0	00 	. 
	nop			;e6e1	00 	. 
	nop			;e6e2	00 	. 
	nop			;e6e3	00 	. 
	nop			;e6e4	00 	. 
	nop			;e6e5	00 	. 
	nop			;e6e6	00 	. 
	nop			;e6e7	00 	. 
	nop			;e6e8	00 	. 
	nop			;e6e9	00 	. 
	nop			;e6ea	00 	. 
	nop			;e6eb	00 	. 
	nop			;e6ec	00 	. 
	nop			;e6ed	00 	. 
	nop			;e6ee	00 	. 
	nop			;e6ef	00 	. 
	nop			;e6f0	00 	. 
	nop			;e6f1	00 	. 
	nop			;e6f2	00 	. 
	nop			;e6f3	00 	. 
	nop			;e6f4	00 	. 
	nop			;e6f5	00 	. 
	nop			;e6f6	00 	. 
	nop			;e6f7	00 	. 
	nop			;e6f8	00 	. 
	nop			;e6f9	00 	. 
	nop			;e6fa	00 	. 
	nop			;e6fb	00 	. 
	nop			;e6fc	00 	. 
	ld (bc),a			;e6fd	02 	. 
	nop			;e6fe	00 	. 
	ld (bc),a			;e6ff	02 	. 
	nop			;e700	00 	. 
	ld (bc),a			;e701	02 	. 
	nop			;e702	00 	. 
	nop			;e703	00 	. 
	nop			;e704	00 	. 
	nop			;e705	00 	. 
	nop			;e706	00 	. 
	nop			;e707	00 	. 
	ld d,h			;e708	54 	T 
	or 0beh		;e709	f6 be 	. . 
	or 000h		;e70b	f6 00 	. . 
	nop			;e70d	00 	. 
	nop			;e70e	00 	. 
	nop			;e70f	00 	. 
	nop			;e710	00 	. 
	nop			;e711	00 	. 
	nop			;e712	00 	. 
	nop			;e713	00 	. 
	nop			;e714	00 	. 
	nop			;e715	00 	. 
	nop			;e716	00 	. 
	nop			;e717	00 	. 
	nop			;e718	00 	. 
	nop			;e719	00 	. 
	nop			;e71a	00 	. 
	nop			;e71b	00 	. 
	nop			;e71c	00 	. 
	nop			;e71d	00 	. 
	nop			;e71e	00 	. 
	nop			;e71f	00 	. 
	nop			;e720	00 	. 
	nop			;e721	00 	. 
	nop			;e722	00 	. 
	nop			;e723	00 	. 
	nop			;e724	00 	. 
	nop			;e725	00 	. 
	nop			;e726	00 	. 
	nop			;e727	00 	. 
sub_e728h:
	call sub_dbc4h		;e728	cd c4 db 	. . . 
	cp 02ah		;e72b	fe 2a 	. * 
	jr z,le768h		;e72d	28 39 	( 9 
	cp 022h		;e72f	fe 22 	. " 
	jr z,le75dh		;e731	28 2a 	( * 
le733h:
	call sub_e7adh		;e733	cd ad e7 	. . . 
	jr c,le746h		;e736	38 0e 	8 . 
	dec ix		;e738	dd 2b 	. + 
	ld hl,07f33h		;e73a	21 33 7f 	! 3  
	set 1,(hl)		;e73d	cb ce 	. . 
	call sub_dfc5h		;e73f	cd c5 df 	. . . 
	ret c			;e742	d8 	. 
le743h:
	or 0ffh		;e743	f6 ff 	. . 
	ret			;e745	c9 	. 
le746h:
	cp 01fh		;e746	fe 1f 	. . 
	jp nz,08379h		;e748	c2 79 83 	. y . 
	call 08029h		;e74b	cd 29 80 	. ) . 
	inc ix		;e74e	dd 23 	. # 
	ld h,(ix+000h)		;e750	dd 66 00 	. f . 
	inc ix		;e753	dd 23 	. # 
	ld l,(ix+000h)		;e755	dd 6e 00 	. n . 
	ld (07f18h),hl		;e758	22 18 7f 	" .  
	xor a			;e75b	af 	. 
	ret			;e75c	c9 	. 
le75dh:
	ld a,000h		;e75d	3e 00 	> . 
	ld (079f7h),a		;e75f	32 f7 79 	2 . y 
	call sub_e116h		;e762	cd 16 e1 	. . . 
	ret c			;e765	d8 	. 
	jr le743h		;e766	18 db 	. . 
le768h:
	ld a,000h		;e768	3e 00 	> . 
	ld (079f7h),a		;e76a	32 f7 79 	2 . y 
	call sub_db01h		;e76d	cd 01 db 	. . . 
	inc ix		;e770	dd 23 	. # 
	ld a,(ix+000h)		;e772	dd 7e 00 	. ~ . 
	call sub_e7a6h		;e775	cd a6 e7 	. . . 
	jr le782h		;e778	18 08 	. . 
le77ah:
	inc ix		;e77a	dd 23 	. # 
	ld a,(ix+000h)		;e77c	dd 7e 00 	. ~ . 
	call sub_e79fh		;e77f	cd 9f e7 	. . . 
le782h:
	jr c,le78fh		;e782	38 0b 	8 . 
	ld c,a			;e784	4f 	O 
	ld a,l			;e785	7d 	} 
	cp 0feh		;e786	fe fe 	. . 
	jp z,08384h		;e788	ca 84 83 	. . . 
	inc hl			;e78b	23 	# 
	ld (hl),c			;e78c	71 	q 
	jr le77ah		;e78d	18 eb 	. . 
le78fh:
	inc l			;e78f	2c 	, 
	ld a,l			;e790	7d 	} 
	ld (079f7h),a		;e791	32 f7 79 	2 . y 
	ld hl,07f15h		;e794	21 15 7f 	! .  
	sub (hl)			;e797	96 	. 
	ld (07f17h),a		;e798	32 17 7f 	2 .  
	dec ix		;e79b	dd 2b 	. + 
	jr le743h		;e79d	18 a4 	. . 
sub_e79fh:
	cp 030h		;e79f	fe 30 	. 0 
	ret c			;e7a1	d8 	. 
	cp 03ah		;e7a2	fe 3a 	. : 
	ccf			;e7a4	3f 	? 
	ret nc			;e7a5	d0 	. 
sub_e7a6h:
	cp 041h		;e7a6	fe 41 	. A 
	ret c			;e7a8	d8 	. 
	cp 05bh		;e7a9	fe 5b 	. [ 
	ccf			;e7ab	3f 	? 
	ret			;e7ac	c9 	. 
sub_e7adh:
	cp 030h		;e7ad	fe 30 	. 0 
	ret c			;e7af	d8 	. 
	cp 03ah		;e7b0	fe 3a 	. : 
	ccf			;e7b2	3f 	? 
	ret			;e7b3	c9 	. 
le7b4h:
	ld a,(07902h)		;e7b4	3a 02 79 	: . y 
	and 040h		;e7b7	e6 40 	. @ 
le7b9h:
	jp z,08369h		;e7b9	ca 69 83 	. i . 
	call sub_dbc4h		;e7bc	cd c4 db 	. . . 
	dec ix		;e7bf	dd 2b 	. + 
	cp 00dh		;e7c1	fe 0d 	. . 
	jr nz,le7d3h		;e7c3	20 0e 	  . 
	ld hl,(079e1h)		;e7c5	2a e1 79 	* . y 
	inc hl			;e7c8	23 	# 
	ld a,(hl)			;e7c9	7e 	~ 
	inc a			;e7ca	3c 	< 
	ret z			;e7cb	c8 	. 
	inc hl			;e7cc	23 	# 
	inc hl			;e7cd	23 	# 
	ld (07f3ah),hl		;e7ce	22 3a 7f 	" :  
	jr le7dbh		;e7d1	18 08 	. . 
le7d3h:
	call sub_e728h		;e7d3	cd 28 e7 	. ( . 
	ret c			;e7d6	d8 	. 
	call sub_eddah		;e7d7	cd da ed 	. . . 
	ret c			;e7da	d8 	. 
le7dbh:
	call sub_e824h		;e7db	cd 24 e8 	. $ . 
	call 083b4h		;e7de	cd b4 83 	. . . 
	ld hl,079d8h		;e7e1	21 d8 79 	! . y 
	ld a,(hl)			;e7e4	7e 	~ 
	and 032h		;e7e5	e6 32 	. 2 
	or 002h		;e7e7	f6 02 	. . 
	ld (hl),a			;e7e9	77 	w 
	ld l,0d7h		;e7ea	2e d7 	. . 
	res 3,(hl)		;e7ec	cb 9e 	. . 
	ld l,0d9h		;e7ee	2e d9 	. . 
	ld a,(hl)			;e7f0	7e 	~ 
	and 079h		;e7f1	e6 79 	. y 
	ld (hl),a			;e7f3	77 	w 
	ld hl,00000h		;e7f4	21 00 00 	! . . 
	ld (079e5h),hl		;e7f7	22 e5 79 	" . y 
	ld hl,07964h		;e7fa	21 64 79 	! d y 
	res 0,(hl)		;e7fd	cb 86 	. . 
	call 0bd51h		;e7ff	cd 51 bd 	. Q . 
	call sub_eaach		;e802	cd ac ea 	. . . 
	ld hl,(079e1h)		;e805	2a e1 79 	* . y 
	inc hl			;e808	23 	# 
	inc hl			;e809	23 	# 
	inc hl			;e80a	23 	# 
	ld (079feh),hl		;e80b	22 fe 79 	" . y 
	call sub_f0e8h		;e80e	cd e8 f0 	. . . 
	or a			;e811	b7 	. 
	jp 083b4h		;e812	c3 b4 83 	. . . 
le815h:
	ld a,(07902h)		;e815	3a 02 79 	: . y 
	and 040h		;e818	e6 40 	. @ 
	jr z,le7b9h		;e81a	28 9d 	( . 
	call sub_e728h		;e81c	cd 28 e7 	. ( . 
	ret c			;e81f	d8 	. 
le820h:
	call sub_eddah		;e820	cd da ed 	. . . 
	ret c			;e823	d8 	. 
sub_e824h:
	ld hl,07f36h		;e824	21 36 7f 	! 6  
	bit 1,(hl)		;e827	cb 4e 	. N 
	jr nz,le82fh		;e829	20 04 	  . 
	set 3,(hl)		;e82b	cb de 	. . 
	or a			;e82d	b7 	. 
	ret			;e82e	c9 	. 
le82fh:
	set 4,(hl)		;e82f	cb e6 	. . 
	call 0be29h		;e831	cd 29 be 	. ) . 
	call 0be86h		;e834	cd 86 be 	. . . 
	ld hl,050a6h		;e837	21 a6 50 	! . P 
	ld (079f3h),hl		;e83a	22 f3 79 	" . y 
	ld hl,07f35h		;e83d	21 35 7f 	! 5  
	ld a,(hl)			;e840	7e 	~ 
	and 0f1h		;e841	e6 f1 	. . 
	ld (hl),a			;e843	77 	w 
	call 0beb3h		;e844	cd b3 be 	. . . 
	or a			;e847	b7 	. 
	ret			;e848	c9 	. 
le849h:
	call sub_e728h		;e849	cd 28 e7 	. ( . 
	ret c			;e84c	d8 	. 
	call sub_eddah		;e84d	cd da ed 	. . . 
	ret c			;e850	d8 	. 
le851h:
	ld hl,079f4h		;e851	21 f4 79 	! . y 
	ld a,(hl)			;e854	7e 	~ 
	cp 064h		;e855	fe 64 	. d 
	jp nc,08380h		;e857	d2 80 83 	. . . 
	ld e,a			;e85a	5f 	_ 
	inc a			;e85b	3c 	< 
	inc a			;e85c	3c 	< 
	ld (hl),a			;e85d	77 	w 
	ld d,079h		;e85e	16 79 	. y 
	call 0be80h		;e860	cd 80 be 	. . . 
	ld hl,07f36h		;e863	21 36 7f 	! 6  
	set 3,(hl)		;e866	cb de 	. . 
	or a			;e868	b7 	. 
	ret			;e869	c9 	. 
le86ah:
	ld hl,079f4h		;e86a	21 f4 79 	! . y 
	ld a,(hl)			;e86d	7e 	~ 
	cp 050h		;e86e	fe 50 	. P 
	jp z,083b0h		;e870	ca b0 83 	. . . 
	sub 002h		;e873	d6 02 	. . 
	ld (hl),a			;e875	77 	w 
	ld l,a			;e876	6f 	o 
	ld h,079h		;e877	26 79 	& y 
	ld e,(hl)			;e879	5e 	^ 
	inc hl			;e87a	23 	# 
	ld d,(hl)			;e87b	56 	V 
	ld (07f3ah),de		;e87c	ed 53 3a 7f 	. S :  
	jr sub_e824h		;e880	18 a2 	. . 
le882h:
	call sub_ea15h		;e882	cd 15 ea 	. . . 
	jr z,le894h		;e885	28 0d 	( . 
	call sub_e728h		;e887	cd 28 e7 	. ( . 
	ret c			;e88a	d8 	. 
	call sub_eddah		;e88b	cd da ed 	. . . 
	ret c			;e88e	d8 	. 
	ld hl,(07f3ah)		;e88f	2a 3a 7f 	* :  
	jr le89ah		;e892	18 06 	. . 
le894h:
	ld hl,(079e1h)		;e894	2a e1 79 	* . y 
	inc hl			;e897	23 	# 
	inc hl			;e898	23 	# 
	inc hl			;e899	23 	# 
le89ah:
	ld (079feh),hl		;e89a	22 fe 79 	" . y 
	ld hl,079d8h		;e89d	21 d8 79 	! . y 
	set 1,(hl)		;e8a0	cb ce 	. . 
	or a			;e8a2	b7 	. 
	ret			;e8a3	c9 	. 
le8a4h:
	ld hl,07f33h		;e8a4	21 33 7f 	! 3  
	ld a,(hl)			;e8a7	7e 	~ 
	and 09fh		;e8a8	e6 9f 	. . 
	or 002h		;e8aa	f6 02 	. . 
	ld (hl),a			;e8ac	77 	w 
	call sub_e231h		;e8ad	cd 31 e2 	. 1 . 
	ret c			;e8b0	d8 	. 
	ld (079ebh),iy		;e8b1	fd 22 eb 79 	. " . y 
	ld hl,0790eh		;e8b5	21 0e 79 	! . y 
	res 0,(hl)		;e8b8	cb 86 	. . 
	ld a,(07f33h)		;e8ba	3a 33 7f 	: 3  
	bit 2,a		;e8bd	cb 57 	. W 
	jr nz,le92fh		;e8bf	20 6e 	  n 
	xor a			;e8c1	af 	. 
	set 0,(hl)		;e8c2	cb c6 	. . 
le8c4h:
	ld (079edh),a		;e8c4	32 ed 79 	2 . y 
	push ix		;e8c7	dd e5 	. . 
	ld ix,(079feh)		;e8c9	dd 2a fe 79 	. * . y 
	ld a,(079d8h)		;e8cd	3a d8 79 	: . y 
	and 002h		;e8d0	e6 02 	. . 
	jr nz,le8ebh		;e8d2	20 17 	  . 
	call sub_dbc4h		;e8d4	cd c4 db 	. . . 
	cp 02ch		;e8d7	fe 2c 	. , 
	jr z,le8fdh		;e8d9	28 22 	( " 
	cp 00dh		;e8db	fe 0d 	. . 
	jr z,le91ch		;e8dd	28 3d 	( = 
	cp 03ah		;e8df	fe 3a 	. : 
	jr z,le8ebh		;e8e1	28 08 	( . 
	pop af			;e8e3	f1 	. 
	jp 08379h		;e8e4	c3 79 83 	. y . 
le8e7h:
	inc ix		;e8e7	dd 23 	. # 
	inc ix		;e8e9	dd 23 	. # 
le8ebh:
	inc ix		;e8eb	dd 23 	. # 
	ld a,(ix+000h)		;e8ed	dd 7e 00 	. ~ . 
	cp 0feh		;e8f0	fe fe 	. . 
	jr nz,le939h		;e8f2	20 45 	  E 
	inc ix		;e8f4	dd 23 	. # 
	ld a,(ix+000h)		;e8f6	dd 7e 00 	. ~ . 
	cp 05eh		;e8f9	fe 5e 	. ^ 
	jr nz,le8ebh		;e8fb	20 ee 	  . 
le8fdh:
	call sub_eed3h		;e8fd	cd d3 ee 	. . . 
	jr c,le92dh		;e900	38 2b 	8 + 
	ld (079feh),ix		;e902	dd 22 fe 79 	. " . y 
	ld hl,079d8h		;e906	21 d8 79 	! . y 
	res 1,(hl)		;e909	cb 8e 	. . 
	pop ix		;e90b	dd e1 	. . 
	call sub_dbc4h		;e90d	cd c4 db 	. . . 
	cp 02ch		;e910	fe 2c 	. , 
	jr z,le8a4h		;e912	28 90 	( . 
	dec ix		;e914	dd 2b 	. + 
	or a			;e916	b7 	. 
	ret			;e917	c9 	. 
le918h:
	cp 00dh		;e918	fe 0d 	. . 
	jr nz,le8ebh		;e91a	20 cf 	  . 
le91ch:
	inc ix		;e91c	dd 23 	. # 
	ld a,(ix+000h)		;e91e	dd 7e 00 	. ~ . 
	inc a			;e921	3c 	< 
	jr nz,le8e7h		;e922	20 c3 	  . 
	ld a,053h		;e924	3e 53 	> S 
	pop ix		;e926	dd e1 	. . 
	inc ix		;e928	dd 23 	. # 
	jp 0837bh		;e92a	c3 7b 83 	. { . 
le92dh:
	pop hl			;e92d	e1 	. 
	ret			;e92e	c9 	. 
le92fh:
	and 090h		;e92f	e6 90 	. . 
	ld a,(07f08h)		;e931	3a 08 7f 	: .  
	jr z,le8c4h		;e934	28 8e 	( . 
	xor a			;e936	af 	. 
	jr le8c4h		;e937	18 8b 	. . 
le939h:
	cp 01fh		;e939	fe 1f 	. . 
	jr nz,le918h		;e93b	20 db 	  . 
	jr le8e7h		;e93d	18 a8 	. . 
le93fh:
	ld a,(07902h)		;e93f	3a 02 79 	: . y 
	and 040h		;e942	e6 40 	. @ 
	jp z,08369h		;e944	ca 69 83 	. i . 
	ld hl,07f35h		;e947	21 35 7f 	! 5  
	ld a,(hl)			;e94a	7e 	~ 
	bit 4,a		;e94b	cb 67 	. g 
	ld a,013h		;e94d	3e 13 	> . 
	jp z,0837bh		;e94f	ca 7b 83 	. { . 
	ld a,(hl)			;e952	7e 	~ 
	and 009h		;e953	e6 09 	. . 
	ret z			;e955	c8 	. 
	res 0,(hl)		;e956	cb 86 	. . 
	ld hl,(07aa2h)		;e958	2a a2 7a 	* . z 
	ld (07f38h),hl		;e95b	22 38 7f 	" 8  
	ld (07f3ah),hl		;e95e	22 3a 7f 	" :  
	ld hl,07f36h		;e961	21 36 7f 	! 6  
	set 4,(hl)		;e964	cb e6 	. . 
	call sub_dbc4h		;e966	cd c4 db 	. . . 
	cp 00dh		;e969	fe 0d 	. . 
	call z,0be86h		;e96b	cc 86 be 	. . . 
	dec ix		;e96e	dd 2b 	. + 
	ret			;e970	c9 	. 
le971h:
	call sub_ea15h		;e971	cd 15 ea 	. . . 
	jr z,le9c0h		;e974	28 4a 	( J 
	cp 02ch		;e976	fe 2c 	. , 
	jr z,le9a1h		;e978	28 27 	( ' 
	call sub_d9edh		;e97a	cd ed d9 	. . . 
	ret c			;e97d	d8 	. 
	call sub_ef9dh		;e97e	cd 9d ef 	. . . 
	ret c			;e981	d8 	. 
	ld a,(07f18h)		;e982	3a 18 7f 	: .  
	cp 018h		;e985	fe 18 	. . 
	jr nc,le9c5h		;e987	30 3c 	0 < 
	ld (07920h),a		;e989	32 20 79 	2   y 
	call sub_dbc4h		;e98c	cd c4 db 	. . . 
	cp 02ch		;e98f	fe 2c 	. , 
	jr z,le9ach		;e991	28 19 	( . 
	dec ix		;e993	dd 2b 	. + 
le995h:
	call sub_ea15h		;e995	cd 15 ea 	. . . 
	jr nz,le9c0h		;e998	20 26 	  & 
	ld hl,0797dh		;e99a	21 7d 79 	! } y 
	set 0,(hl)		;e99d	cb c6 	. . 
	or a			;e99f	b7 	. 
	ret			;e9a0	c9 	. 
le9a1h:
	inc ix		;e9a1	dd 23 	. # 
	call sub_ea15h		;e9a3	cd 15 ea 	. . . 
	jr z,le9c0h		;e9a6	28 18 	( . 
	cp 02ch		;e9a8	fe 2c 	. , 
	jr z,le9c0h		;e9aa	28 14 	( . 
le9ach:
	call sub_d9edh		;e9ac	cd ed d9 	. . . 
	ret c			;e9af	d8 	. 
	call sub_ef9dh		;e9b0	cd 9d ef 	. . . 
	ret c			;e9b3	d8 	. 
	ld a,(07f18h)		;e9b4	3a 18 7f 	: .  
	cp 004h		;e9b7	fe 04 	. . 
	jr nc,le9c5h		;e9b9	30 0a 	0 . 
	ld (07921h),a		;e9bb	32 21 79 	2 ! y 
	jr le995h		;e9be	18 d5 	. . 
le9c0h:
	inc ix		;e9c0	dd 23 	. # 
	jp 08379h		;e9c2	c3 79 83 	. y . 
le9c5h:
	jp 0835eh		;e9c5	c3 5e 83 	. ^ . 
le9c8h:
	ld hl,0797dh		;e9c8	21 7d 79 	! } y 
	res 0,(hl)		;e9cb	cb 86 	. . 
	call sub_ea15h		;e9cd	cd 15 ea 	. . . 
	jr nz,le9c0h		;e9d0	20 ee 	  . 
	ld a,020h		;e9d2	3e 20 	>   
	ld b,060h		;e9d4	06 60 	. ` 
	ld de,00000h		;e9d6	11 00 00 	. . . 
	call 0bfeeh		;e9d9	cd ee bf 	. . . 
	xor a			;e9dc	af 	. 
	dec a			;e9dd	3d 	= 
	ld (07923h),a		;e9de	32 23 79 	2 # y 
	ret			;e9e1	c9 	. 
le9e2h:
	call sub_ea15h		;e9e2	cd 15 ea 	. . . 
	jr nz,le9c0h		;e9e5	20 d9 	  . 
	call 0bd51h		;e9e7	cd 51 bd 	. Q . 
	ld hl,07f35h		;e9ea	21 35 7f 	! 5  
	res 4,(hl)		;e9ed	cb a6 	. . 
	inc l			;e9ef	2c 	, 
	set 5,(hl)		;e9f0	cb ee 	. . 
	call 0be05h		;e9f2	cd 05 be 	. . . 
	ret			;e9f5	c9 	. 
le9f6h:
	call sub_ea15h		;e9f6	cd 15 ea 	. . . 
	jr nz,lea01h		;e9f9	20 06 	  . 
	ld hl,079d8h		;e9fb	21 d8 79 	! . y 
	set 2,(hl)		;e9fe	cb d6 	. . 
	ret			;ea00	c9 	. 
lea01h:
	call sub_d9edh		;ea01	cd ed d9 	. . . 
	ret c			;ea04	d8 	. 
	call sub_efa9h		;ea05	cd a9 ef 	. . . 
	ret c			;ea08	d8 	. 
	ld hl,079d8h		;ea09	21 d8 79 	! . y 
	res 2,(hl)		;ea0c	cb 96 	. . 
	ld hl,(07f18h)		;ea0e	2a 18 7f 	* .  
	ld (079e5h),hl		;ea11	22 e5 79 	" . y 
	ret			;ea14	c9 	. 
sub_ea15h:
	ld a,(ix+001h)		;ea15	dd 7e 01 	. ~ . 
	cp 00dh		;ea18	fe 0d 	. . 
	ret z			;ea1a	c8 	. 
	cp 03ah		;ea1b	fe 3a 	. : 
	ret z			;ea1d	c8 	. 
	cp 020h		;ea1e	fe 20 	.   
	ret nz			;ea20	c0 	. 
	inc ix		;ea21	dd 23 	. # 
	jr sub_ea15h		;ea23	18 f0 	. . 
sub_ea25h:
	push ix		;ea25	dd e5 	. . 
	pop hl			;ea27	e1 	. 
	ld c,000h		;ea28	0e 00 	. . 
	jr lea2eh		;ea2a	18 02 	. . 
lea2ch:
	inc hl			;ea2c	23 	# 
lea2dh:
	inc hl			;ea2d	23 	# 
lea2eh:
	inc hl			;ea2e	23 	# 
	ld a,(hl)			;ea2f	7e 	~ 
	cp 00dh		;ea30	fe 0d 	. . 
	jr z,lea49h		;ea32	28 15 	( . 
	cp 01fh		;ea34	fe 1f 	. . 
	jr z,lea2ch		;ea36	28 f4 	( . 
	cp 0feh		;ea38	fe fe 	. . 
	jr z,lea2dh		;ea3a	28 f1 	( . 
	cp 022h		;ea3c	fe 22 	. " 
	jr nz,lea41h		;ea3e	20 01 	  . 
	inc c			;ea40	0c 	. 
lea41h:
	bit 0,c		;ea41	cb 41 	. A 
	jr nz,lea2eh		;ea43	20 e9 	  . 
	cp 03ah		;ea45	fe 3a 	. : 
	jr nz,lea2eh		;ea47	20 e5 	  . 
lea49h:
	dec hl			;ea49	2b 	+ 
	push hl			;ea4a	e5 	. 
	pop ix		;ea4b	dd e1 	. . 
	ret			;ea4d	c9 	. 
lea4eh:
	ld a,(07f36h)		;ea4e	3a 36 7f 	: 6  
	and 002h		;ea51	e6 02 	. . 
	jr nz,lea78h		;ea53	20 23 	  # 
	call sub_ea15h		;ea55	cd 15 ea 	. . . 
	jr z,sub_eaach		;ea58	28 52 	( R 
lea5ah:
	call sub_d9edh		;ea5a	cd ed d9 	. . . 
	ret c			;ea5d	d8 	. 
	call sub_dd15h		;ea5e	cd 15 dd 	. . . 
	ret c			;ea61	d8 	. 
	call 083b4h		;ea62	cd b4 83 	. . . 
	ld hl,07964h		;ea65	21 64 79 	! d y 
	res 0,(hl)		;ea68	cb 86 	. . 
	call sub_eab8h		;ea6a	cd b8 ea 	. . . 
	jp 083b4h		;ea6d	c3 b4 83 	. . . 
lea70h:
	or a			;ea70	b7 	. 
	ld hl,07904h		;ea71	21 04 79 	! . y 
	res 6,(hl)		;ea74	cb b6 	. . 
	jr lea8bh		;ea76	18 13 	. . 
lea78h:
	ld (079a8h),ix		;ea78	dd 22 a8 79 	. " . y 
	ld a,(07904h)		;ea7c	3a 04 79 	: . y 
	bit 6,a		;ea7f	cb 77 	. w 
	jr z,lea8bh		;ea81	28 08 	( . 
	call 0beb3h		;ea83	cd b3 be 	. . . 
	jr c,lea70h		;ea86	38 e8 	8 . 
	call 0bdffh		;ea88	cd ff bd 	. . . 
lea8bh:
	ld (07f38h),ix		;ea8b	dd 22 38 7f 	. " 8  
	ret c			;ea8f	d8 	. 
	ld ix,(079a8h)		;ea90	dd 2a a8 79 	. * . y 
	inc ix		;ea94	dd 23 	. # 
	ld a,(ix+000h)		;ea96	dd 7e 00 	. ~ . 
	cp 00dh		;ea99	fe 0d 	. . 
	jr z,leaa6h		;ea9b	28 09 	( . 
	cp 022h		;ea9d	fe 22 	. " 
	jp nz,08379h		;ea9f	c2 79 83 	. y . 
	dec ix		;eaa2	dd 2b 	. + 
	jr lea5ah		;eaa4	18 b4 	. . 
leaa6h:
	ld a,(07964h)		;eaa6	3a 64 79 	: d y 
	and 001h		;eaa9	e6 01 	. . 
	ret nz			;eaab	c0 	. 
sub_eaach:
	ld hl,079f8h		;eaac	21 f8 79 	! . y 
	ld de,079d2h		;eaaf	11 d2 79 	. . y 
	call sub_ec4fh		;eab2	cd 4f ec 	. O . 
leab5h:
	jp 0bd66h		;eab5	c3 66 bd 	. f . 
sub_eab8h:
	ld ix,(07f15h)		;eab8	dd 2a 15 7f 	. * .  
	ld hl,(07f17h)		;eabc	2a 17 7f 	* .  
	ld h,000h		;eabf	26 00 	& . 
	ld (07f08h),hl		;eac1	22 08 7f 	" .  
	ld hl,07f33h		;eac4	21 33 7f 	! 3  
	ld a,(07f33h)		;eac7	3a 33 7f 	: 3  
	and 060h		;eaca	e6 60 	. ` 
	or 008h		;eacc	f6 08 	. . 
	ld (hl),a			;eace	77 	w 
	ld hl,00000h		;eacf	21 00 00 	! . . 
	ld (07f3ch),hl		;ead2	22 3c 7f 	" <  
	ld (07f3eh),hl		;ead5	22 3e 7f 	" >  
	ld a,(07f08h)		;ead8	3a 08 7f 	: .  
	or a			;eadb	b7 	. 
	jr z,leab5h		;eadc	28 d7 	( . 
	dec ix		;eade	dd 2b 	. + 
leae0h:
	inc ix		;eae0	dd 23 	. # 
	ld hl,leb04h		;eae2	21 04 eb 	! . . 
	push hl			;eae5	e5 	. 
	ld hl,07f33h		;eae6	21 33 7f 	! 3  
	ld c,(hl)			;eae9	4e 	N 
	ld a,(ix+000h)		;eaea	dd 7e 00 	. ~ . 
	cp 023h		;eaed	fe 23 	. # 
	jp z,leb74h		;eaef	ca 74 eb 	. t . 
	cp 026h		;eaf2	fe 26 	. & 
	jp z,lebd0h		;eaf4	ca d0 eb 	. . . 
	cp 05eh		;eaf7	fe 5e 	. ^ 
	jp z,lec07h		;eaf9	ca 07 ec 	. . . 
	cp 02eh		;eafc	fe 2e 	. . 
	jp z,leba6h		;eafe	ca a6 eb 	. . . 
	jp leb8dh		;eb01	c3 8d eb 	. . . 
leb04h:
	ret c			;eb04	d8 	. 
	ld hl,07f08h		;eb05	21 08 7f 	! .  
	dec (hl)			;eb08	35 	5 
	jr nz,leae0h		;eb09	20 d5 	  . 
	inc l			;eb0b	2c 	, 
	ld a,(07f33h)		;eb0c	3a 33 7f 	: 3  
	ld c,a			;eb0f	4f 	O 
	ld a,(hl)			;eb10	7e 	~ 
	bit 2,c		;eb11	cb 51 	. Q 
	ld hl,07f3fh		;eb13	21 3f 7f 	! ?  
	jr z,leb1eh		;eb16	28 06 	( . 
	bit 1,c		;eb18	cb 49 	. I 
	dec hl			;eb1a	2b 	+ 
	jr nz,leb1eh		;eb1b	20 01 	  . 
	dec hl			;eb1d	2b 	+ 
leb1eh:
	ld (hl),a			;eb1e	77 	w 
	ld hl,07f3ch		;eb1f	21 3c 7f 	! <  
	ld a,(hl)			;eb22	7e 	~ 
	and 008h		;eb23	e6 08 	. . 
	ld a,002h		;eb25	3e 02 	> . 
	inc hl			;eb27	23 	# 
	jr nz,leb31h		;eb28	20 07 	  . 
	ld a,(hl)			;eb2a	7e 	~ 
	cp 00ch		;eb2b	fe 0c 	. . 
	jr c,leb32h		;eb2d	38 03 	8 . 
	ld a,00bh		;eb2f	3e 0b 	> . 
leb31h:
	ld (hl),a			;eb31	77 	w 
leb32h:
	inc hl			;eb32	23 	# 
	ld a,(hl)			;eb33	7e 	~ 
	cp 00ah		;eb34	fe 0a 	. . 
	jr c,leb42h		;eb36	38 0a 	8 . 
	ld a,(07f3ch)		;eb38	3a 3c 7f 	: <  
	and 008h		;eb3b	e6 08 	. . 
	jr z,leb6bh		;eb3d	28 2c 	( , 
	ld a,00ah		;eb3f	3e 0a 	> . 
leb41h:
	ld (hl),a			;eb41	77 	w 
leb42h:
	dec hl			;eb42	2b 	+ 
	ld a,(07f3ch)		;eb43	3a 3c 7f 	: <  
	and 010h		;eb46	e6 10 	. . 
	jr z,leb4dh		;eb48	28 03 	( . 
	ld a,002h		;eb4a	3e 02 	> . 
	ld (hl),a			;eb4c	77 	w 
leb4dh:
	ld a,(hl)			;eb4d	7e 	~ 
	or a			;eb4e	b7 	. 
	jr nz,leb56h		;eb4f	20 05 	  . 
	inc l			;eb51	2c 	, 
	ld a,(hl)			;eb52	7e 	~ 
	or a			;eb53	b7 	. 
	jr z,leb62h		;eb54	28 0c 	( . 
leb56h:
	ld hl,(07f3ch)		;eb56	2a 3c 7f 	* <  
	ld (079f8h),hl		;eb59	22 f8 79 	" . y 
	ld a,(07f3eh)		;eb5c	3a 3e 7f 	: >  
	ld (079fah),a		;eb5f	32 fa 79 	2 . y 
leb62h:
	ld a,(07f3fh)		;eb62	3a 3f 7f 	: ?  
	or a			;eb65	b7 	. 
	ret z			;eb66	c8 	. 
	ld (079fbh),a		;eb67	32 fb 79 	2 . y 
	ret			;eb6a	c9 	. 
leb6bh:
	ld a,(hl)			;eb6b	7e 	~ 
	cp 00eh		;eb6c	fe 0e 	. . 
	jr c,leb42h		;eb6e	38 d2 	8 . 
	ld a,00dh		;eb70	3e 0d 	> . 
	jr leb41h		;eb72	18 cd 	. . 
leb74h:
	bit 3,c		;eb74	cb 59 	. Y 
	jr z,leb81h		;eb76	28 09 	( . 
	res 3,(hl)		;eb78	cb 9e 	. . 
	set 2,(hl)		;eb7a	cb d6 	. . 
leb7ch:
	ld hl,07f09h		;eb7c	21 09 7f 	! .  
	inc (hl)			;eb7f	34 	4 
	ret			;eb80	c9 	. 
leb81h:
	bit 0,c		;eb81	cb 41 	. A 
	jr nz,leba0h		;eb83	20 1b 	  . 
	bit 2,c		;eb85	cb 51 	. Q 
	jr z,leb92h		;eb87	28 09 	( . 
leb89h:
	bit 4,c		;eb89	cb 61 	. a 
	jr z,leb7ch		;eb8b	28 ef 	( . 
leb8dh:
	ld a,071h		;eb8d	3e 71 	> q 
	jp 0837bh		;eb8f	c3 7b 83 	. { . 
leb92h:
	ld a,(hl)			;eb92	7e 	~ 
	or 005h		;eb93	f6 05 	. . 
	ld (hl),a			;eb95	77 	w 
	ld hl,07f09h		;eb96	21 09 7f 	! .  
	ld a,(hl)			;eb99	7e 	~ 
	ld (hl),001h		;eb9a	36 01 	6 . 
leb9ch:
	ld (07f3fh),a		;eb9c	32 3f 7f 	2 ?  
	ret			;eb9f	c9 	. 
leba0h:
	bit 2,c		;eba0	cb 51 	. Q 
	jr z,leb8dh		;eba2	28 e9 	( . 
	jr leb89h		;eba4	18 e3 	. . 
leba6h:
	bit 3,c		;eba6	cb 59 	. Y 
	jr z,lebb2h		;eba8	28 08 	( . 
	ld a,(hl)			;ebaa	7e 	~ 
	or 006h		;ebab	f6 06 	. . 
	and 0f7h		;ebad	e6 f7 	. . 
	ld (hl),a			;ebaf	77 	w 
	jr lebc6h		;ebb0	18 14 	. . 
lebb2h:
	bit 1,c		;ebb2	cb 49 	. I 
	jr nz,leb8dh		;ebb4	20 d7 	  . 
	set 1,(hl)		;ebb6	cb ce 	. . 
	bit 2,c		;ebb8	cb 51 	. Q 
	jr z,leb92h		;ebba	28 d6 	( . 
	bit 4,c		;ebbc	cb 61 	. a 
	jr nz,leb8dh		;ebbe	20 cd 	  . 
	ld a,(07f09h)		;ebc0	3a 09 7f 	: .  
	or a			;ebc3	b7 	. 
	jr z,leb8dh		;ebc4	28 c7 	( . 
lebc6h:
	ld hl,07f09h		;ebc6	21 09 7f 	! .  
	ld a,(hl)			;ebc9	7e 	~ 
	ld (hl),001h		;ebca	36 01 	6 . 
lebcch:
	ld (07f3dh),a		;ebcc	32 3d 7f 	2 =  
	ret			;ebcf	c9 	. 
lebd0h:
	bit 3,c		;ebd0	cb 59 	. Y 
	jr z,lebdah		;ebd2	28 06 	( . 
	ld a,(hl)			;ebd4	7e 	~ 
	and 0f3h		;ebd5	e6 f3 	. . 
	ld (hl),a			;ebd7	77 	w 
	jr leb7ch		;ebd8	18 a2 	. . 
lebdah:
	bit 0,c		;ebda	cb 41 	. A 
	jr nz,lebfah		;ebdc	20 1c 	  . 
	bit 2,c		;ebde	cb 51 	. Q 
	jr z,leb7ch		;ebe0	28 9a 	( . 
	ld a,(hl)			;ebe2	7e 	~ 
	and 0fbh		;ebe3	e6 fb 	. . 
	or 001h		;ebe5	f6 01 	. . 
	ld (hl),a			;ebe7	77 	w 
	bit 4,a		;ebe8	cb 67 	. g 
	jr nz,lec01h		;ebea	20 15 	  . 
	bit 1,a		;ebec	cb 4f 	. O 
	jr z,lebc6h		;ebee	28 d6 	( . 
	ld hl,07f09h		;ebf0	21 09 7f 	! .  
	ld a,(hl)			;ebf3	7e 	~ 
	ld (hl),001h		;ebf4	36 01 	6 . 
	ld (07f3eh),a		;ebf6	32 3e 7f 	2 >  
	ret			;ebf9	c9 	. 
lebfah:
	bit 2,c		;ebfa	cb 51 	. Q 
	jp z,leb7ch		;ebfc	ca 7c eb 	. | . 
	jr leb8dh		;ebff	18 8c 	. . 
lec01h:
	ld a,001h		;ec01	3e 01 	> . 
lec03h:
	ld (07f09h),a		;ec03	32 09 7f 	2 .  
	ret			;ec06	c9 	. 
lec07h:
	ld hl,07f3ch		;ec07	21 3c 7f 	! <  
	set 3,(hl)		;ec0a	cb de 	. . 
	ld hl,07f33h		;ec0c	21 33 7f 	! 3  
	bit 3,c		;ec0f	cb 59 	. Y 
	jr z,lec1dh		;ec11	28 0a 	( . 
	ld a,(hl)			;ec13	7e 	~ 
	and 0f7h		;ec14	e6 f7 	. . 
	or 014h		;ec16	f6 14 	. . 
	ld (hl),a			;ec18	77 	w 
	ld a,002h		;ec19	3e 02 	> . 
	jr lec03h		;ec1b	18 e6 	. . 
lec1dh:
	bit 0,c		;ec1d	cb 41 	. A 
	jr nz,lec42h		;ec1f	20 21 	  ! 
	bit 2,c		;ec21	cb 51 	. Q 
	jr z,lec35h		;ec23	28 10 	( . 
lec25h:
	bit 4,c		;ec25	cb 61 	. a 
	ret nz			;ec27	c0 	. 
	set 4,(hl)		;ec28	cb e6 	. . 
	bit 1,c		;ec2a	cb 49 	. I 
	ld a,(07f09h)		;ec2c	3a 09 7f 	: .  
	jr z,lebcch		;ec2f	28 9b 	( . 
	ld (07f3eh),a		;ec31	32 3e 7f 	2 >  
	ret			;ec34	c9 	. 
lec35h:
	ld a,(hl)			;ec35	7e 	~ 
	or 015h		;ec36	f6 15 	. . 
	ld (hl),a			;ec38	77 	w 
	ld hl,07f09h		;ec39	21 09 7f 	! .  
	ld a,(hl)			;ec3c	7e 	~ 
	ld (hl),000h		;ec3d	36 00 	6 . 
	jp leb9ch		;ec3f	c3 9c eb 	. . . 
lec42h:
	bit 2,c		;ec42	cb 51 	. Q 
	jp z,leb8dh		;ec44	ca 8d eb 	. . . 
	jr lec25h		;ec47	18 dc 	. . 
sub_ec49h:
	ld hl,079d2h		;ec49	21 d2 79 	! . y 
	ld de,079f8h		;ec4c	11 f8 79 	. . y 
sub_ec4fh:
	ld bc,00004h		;ec4f	01 04 00 	. . . 
	ldir		;ec52	ed b0 	. . 
	ret			;ec54	c9 	. 
lec55h:
	call sub_c477h		;ec55	cd 77 c4 	. w . 
	call 082e9h		;ec58	cd e9 82 	. . . 
	ret c			;ec5b	d8 	. 
	call 0803eh		;ec5c	cd 3e 80 	. > . 
	call 082d2h		;ec5f	cd d2 82 	. . . 
	call nc,080cdh		;ec62	d4 cd 80 	. . . 
	call sub_c462h		;ec65	cd 62 c4 	. b . 
	jr lec73h		;ec68	18 09 	. . 
sub_ec6ah:
	ld a,(07f31h)		;ec6a	3a 31 7f 	: 1  
	rra			;ec6d	1f 	. 
	jr nc,lec7fh		;ec6e	30 0f 	0 . 
	call sub_c8e2h		;ec70	cd e2 c8 	. . . 
lec73h:
	call sub_c4ffh		;ec73	cd ff c4 	. . . 
	ret c			;ec76	d8 	. 
	ld hl,07f31h		;ec77	21 31 7f 	! 1  
	res 0,(hl)		;ec7a	cb 86 	. . 
	call sub_c457h		;ec7c	cd 57 c4 	. W . 
lec7fh:
	call 08108h		;ec7f	cd 08 81 	. . . 
	call sub_c462h		;ec82	cd 62 c4 	. b . 
	call 08010h		;ec85	cd 10 80 	. . . 
	ld hl,02310h		;ec88	21 10 23 	! . # 
	ld (07f19h),hl		;ec8b	22 19 7f 	" .  
	call sub_c4ffh		;ec8e	cd ff c4 	. . . 
	ret c			;ec91	d8 	. 
	ld a,(07f10h)		;ec92	3a 10 7f 	: .  
	and 0f0h		;ec95	e6 f0 	. . 
	jr nz,leca1h		;ec97	20 08 	  . 
lec99h:
	call sub_c1e6h		;ec99	cd e6 c1 	. . . 
	call sub_c1c3h		;ec9c	cd c3 c1 	. . . 
	jr nc,lec99h		;ec9f	30 f8 	0 . 
leca1h:
	call 08010h		;eca1	cd 10 80 	. . . 
	ld hl,07f1fh		;eca4	21 1f 7f 	! .  
	ld (hl),001h		;eca7	36 01 	6 . 
	call sub_c39fh		;eca9	cd 9f c3 	. . . 
	call sub_c457h		;ecac	cd 57 c4 	. W . 
	call 082e9h		;ecaf	cd e9 82 	. . . 
	ret c			;ecb2	d8 	. 
	ld hl,(07f28h)		;ecb3	2a 28 7f 	* (  
	ld a,l			;ecb6	7d 	} 
	and 0f0h		;ecb7	e6 f0 	. . 
	ret nz			;ecb9	c0 	. 
	ld a,(07f2ah)		;ecba	3a 2a 7f 	: *  
	or a			;ecbd	b7 	. 
	ret z			;ecbe	c8 	. 
	ld a,h			;ecbf	7c 	| 
	or l			;ecc0	b5 	. 
	jr nz,leccah		;ecc1	20 07 	  . 
	ld a,(07f2ah)		;ecc3	3a 2a 7f 	: *  
	cp 020h		;ecc6	fe 20 	.   
	ccf			;ecc8	3f 	? 
	ret nc			;ecc9	d0 	. 
leccah:
	call 08093h		;ecca	cd 93 80 	. . . 
	call sub_c4ffh		;eccd	cd ff c4 	. . . 
	ret c			;ecd0	d8 	. 
	call 081ach		;ecd1	cd ac 81 	. . . 
	call sub_ca58h		;ecd4	cd 58 ca 	. X . 
	ret c			;ecd7	d8 	. 
	call 0818ah		;ecd8	cd 8a 81 	. . . 
	call 0803eh		;ecdb	cd 3e 80 	. > . 
	jp sub_c488h		;ecde	c3 88 c4 	. . . 
sub_ece1h:
	call sub_dd15h		;ece1	cd 15 dd 	. . . 
	jr nc,led50h		;ece4	30 6a 	0 j 
	call sub_ef96h		;ece6	cd 96 ef 	. . . 
sub_ece9h:
	push ix		;ece9	dd e5 	. . 
	pop hl			;eceb	e1 	. 
	jr c,led32h		;ecec	38 44 	8 D 
	ld a,(07f36h)		;ecee	3a 36 7f 	: 6  
	and 002h		;ecf1	e6 02 	. . 
	jr z,led14h		;ecf3	28 1f 	( . 
lecf5h:
	ld hl,(079e1h)		;ecf5	2a e1 79 	* . y 
lecf8h:
	inc hl			;ecf8	23 	# 
lecf9h:
	ld a,(hl)			;ecf9	7e 	~ 
	cp 0ffh		;ecfa	fe ff 	. . 
	jr z,led32h		;ecfc	28 34 	( 4 
	ld b,a			;ecfe	47 	G 
	inc hl			;ecff	23 	# 
	ld c,(hl)			;ed00	4e 	N 
	ex de,hl			;ed01	eb 	. 
	ld hl,(07f18h)		;ed02	2a 18 7f 	* .  
	or a			;ed05	b7 	. 
	sbc hl,bc		;ed06	ed 42 	. B 
	ex de,hl			;ed08	eb 	. 
	jr c,led3dh		;ed09	38 32 	8 2 
	jr z,led43h		;ed0b	28 36 	( 6 
led0dh:
	inc hl			;ed0d	23 	# 
	ld e,(hl)			;ed0e	5e 	^ 
	ld d,000h		;ed0f	16 00 	. . 
	add hl,de			;ed11	19 	. 
	jr lecf8h		;ed12	18 e4 	. . 
led14h:
	ld hl,(07f38h)		;ed14	2a 38 7f 	* 8  
	call sub_ee31h		;ed17	cd 31 ee 	. 1 . 
	inc hl			;ed1a	23 	# 
	inc hl			;ed1b	23 	# 
	ld a,(hl)			;ed1c	7e 	~ 
	cp 0ffh		;ed1d	fe ff 	. . 
	jr z,lecf5h		;ed1f	28 d4 	( . 
	ld b,a			;ed21	47 	G 
	inc hl			;ed22	23 	# 
	ld c,(hl)			;ed23	4e 	N 
	ex de,hl			;ed24	eb 	. 
	ld hl,(07f18h)		;ed25	2a 18 7f 	* .  
	or a			;ed28	b7 	. 
	sbc hl,bc		;ed29	ed 42 	. B 
	ex de,hl			;ed2b	eb 	. 
	jr z,led43h		;ed2c	28 15 	( . 
	jr c,lecf5h		;ed2e	38 c5 	8 . 
	jr led0dh		;ed30	18 db 	. . 
led32h:
	ld (07f3ah),hl		;ed32	22 3a 7f 	" :  
	ld hl,00000h		;ed35	21 00 00 	! . . 
	ld (07f3ch),hl		;ed38	22 3c 7f 	" <  
	jr led40h		;ed3b	18 03 	. . 
led3dh:
	call led43h		;ed3d	cd 43 ed 	. C . 
led40h:
	jp 08362h		;ed40	c3 62 83 	. b . 
led43h:
	dec hl			;ed43	2b 	+ 
led44h:
	ld (07f3ah),hl		;ed44	22 3a 7f 	" :  
	ld ix,(07f3ah)		;ed47	dd 2a 3a 7f 	. * :  
	ld (07f3ch),bc		;ed4b	ed 43 3c 7f 	. C <  
	ret			;ed4f	c9 	. 
led50h:
	ld hl,0797dh		;ed50	21 7d 79 	! } y 
	res 3,(hl)		;ed53	cb 9e 	. . 
	call 08113h		;ed55	cd 13 81 	. . . 
	ld hl,(079e1h)		;ed58	2a e1 79 	* . y 
	ld b,000h		;ed5b	06 00 	. . 
led5dh:
	inc hl			;ed5d	23 	# 
	ld a,(hl)			;ed5e	7e 	~ 
	inc a			;ed5f	3c 	< 
	jr z,led32h		;ed60	28 d0 	( . 
	inc hl			;ed62	23 	# 
	inc hl			;ed63	23 	# 
	ld (07f0ch),hl		;ed64	22 0c 7f 	" .  
led67h:
	inc hl			;ed67	23 	# 
	ld a,(hl)			;ed68	7e 	~ 
	cp 020h		;ed69	fe 20 	.   
	jr z,led67h		;ed6b	28 fa 	( . 
	inc hl			;ed6d	23 	# 
	cp 022h		;ed6e	fe 22 	. " 
	jr z,led7fh		;ed70	28 0d 	( . 
	cp 02ah		;ed72	fe 2a 	. * 
	jr z,led92h		;ed74	28 1c 	( . 
led76h:
	ld hl,(07f0ch)		;ed76	2a 0c 7f 	* .  
	ld e,(hl)			;ed79	5e 	^ 
	ld d,000h		;ed7a	16 00 	. . 
	add hl,de			;ed7c	19 	. 
	jr led5dh		;ed7d	18 de 	. . 
led7fh:
	ld (07a15h),hl		;ed7f	22 15 7a 	" . z 
led82h:
	ld a,(hl)			;ed82	7e 	~ 
	cp 022h		;ed83	fe 22 	. " 
	jr z,leda1h		;ed85	28 1a 	( . 
	cp 00dh		;ed87	fe 0d 	. . 
	jr z,leda1h		;ed89	28 16 	( . 
	inc hl			;ed8b	23 	# 
	inc b			;ed8c	04 	. 
	jr nz,led82h		;ed8d	20 f3 	  . 
led8fh:
	jp led32h		;ed8f	c3 32 ed 	. 2 . 
led92h:
	ld (07a15h),hl		;ed92	22 15 7a 	" . z 
led95h:
	ld a,(hl)			;ed95	7e 	~ 
	call sub_e79fh		;ed96	cd 9f e7 	. . . 
	jr c,leda1h		;ed99	38 06 	8 . 
	inc hl			;ed9b	23 	# 
	inc b			;ed9c	04 	. 
	jr nz,led95h		;ed9d	20 f6 	  . 
	jr led8fh		;ed9f	18 ee 	. . 
leda1h:
	ld a,0d0h		;eda1	3e d0 	> . 
	ld (07a14h),a		;eda3	32 14 7a 	2 . z 
	ld a,b			;eda6	78 	x 
	ld (07a17h),a		;eda7	32 17 7a 	2 . z 
	ld a,018h		;edaa	3e 18 	> . 
	ld (079f5h),a		;edac	32 f5 79 	2 . y 
	call ld6eeh		;edaf	cd ee d6 	. . . 
	ld a,(07f12h)		;edb2	3a 12 7f 	: .  
	cp 010h		;edb5	fe 10 	. . 
	jr z,ledbeh		;edb7	28 05 	( . 
	call 080c5h		;edb9	cd c5 80 	. . . 
	jr led76h		;edbc	18 b8 	. . 
ledbeh:
	ld hl,(07f0ch)		;edbe	2a 0c 7f 	* .  
	dec hl			;edc1	2b 	+ 
	ld c,(hl)			;edc2	4e 	N 
	dec hl			;edc3	2b 	+ 
	ld b,(hl)			;edc4	46 	F 
	jp led44h		;edc5	c3 44 ed 	. D . 
ledc8h:
	ld (07f38h),ix		;edc8	dd 22 38 7f 	. " 8  
	call sub_ece1h		;edcc	cd e1 ec 	. . . 
ledcfh:
	ld ix,(07f38h)		;edcf	dd 2a 38 7f 	. * 8  
	ret c			;edd3	d8 	. 
	inc hl			;edd4	23 	# 
	inc hl			;edd5	23 	# 
	ld (07f3ah),hl		;edd6	22 3a 7f 	" :  
	ret			;edd9	c9 	. 
sub_eddah:
	jr nz,ledc8h		;edda	20 ec 	  . 
	ld (07f38h),ix		;eddc	dd 22 38 7f 	. " 8  
	or a			;ede0	b7 	. 
	call sub_ece9h		;ede1	cd e9 ec 	. . . 
	jr ledcfh		;ede4	18 e9 	. . 
lede6h:
	call sub_d9edh		;ede6	cd ed d9 	. . . 
	ret c			;ede9	d8 	. 
	call sub_dd15h		;edea	cd 15 dd 	. . . 
	ld a,(07f12h)		;eded	3a 12 7f 	: .  
	jr c,ledf5h		;edf0	38 03 	8 . 
	ld a,(07f17h)		;edf2	3a 17 7f 	: .  
ledf5h:
	or a			;edf5	b7 	. 
	jr z,lee2ah		;edf6	28 32 	( 2 
	call sub_dbc4h		;edf8	cd c4 db 	. . . 
	cp 0feh		;edfb	fe fe 	. . 
	scf			;edfd	37 	7 
	ret nz			;edfe	c0 	. 
	ld a,(ix+001h)		;edff	dd 7e 01 	. ~ . 
	cp 054h		;ee02	fe 54 	. T 
	jr z,lee0fh		;ee04	28 09 	( . 
	dec ix		;ee06	dd 2b 	. + 
lee08h:
	ld hl,07f36h		;ee08	21 36 7f 	! 6  
	set 6,(hl)		;ee0b	cb f6 	. . 
	or a			;ee0d	b7 	. 
	ret			;ee0e	c9 	. 
lee0fh:
	inc ix		;ee0f	dd 23 	. # 
	call sub_dbc4h		;ee11	cd c4 db 	. . . 
	dec ix		;ee14	dd 2b 	. + 
	cp 0feh		;ee16	fe fe 	. . 
	jr z,lee08h		;ee18	28 ee 	( . 
	push ix		;ee1a	dd e5 	. . 
	call sub_e728h		;ee1c	cd 28 e7 	. ( . 
	jr c,lee25h		;ee1f	38 04 	8 . 
	pop hl			;ee21	e1 	. 
	jp le820h		;ee22	c3 20 e8 	.   . 
lee25h:
	pop ix		;ee25	dd e1 	. . 
	jp lee44h		;ee27	c3 44 ee 	. D . 
lee2ah:
	push ix		;ee2a	dd e5 	. . 
	pop hl			;ee2c	e1 	. 
	jr sub_ee31h		;ee2d	18 02 	. . 
lee2fh:
	inc hl			;ee2f	23 	# 
lee30h:
	inc hl			;ee30	23 	# 
sub_ee31h:
	inc hl			;ee31	23 	# 
	ld a,(hl)			;ee32	7e 	~ 
	cp 0feh		;ee33	fe fe 	. . 
	jr z,lee30h		;ee35	28 f9 	( . 
	cp 01fh		;ee37	fe 1f 	. . 
	jr z,lee2fh		;ee39	28 f4 	( . 
	cp 00dh		;ee3b	fe 0d 	. . 
	jr nz,sub_ee31h		;ee3d	20 f2 	  . 
	dec hl			;ee3f	2b 	+ 
	push hl			;ee40	e5 	. 
	pop ix		;ee41	dd e1 	. . 
	ret			;ee43	c9 	. 
lee44h:
	ld hl,07f33h		;ee44	21 33 7f 	! 3  
	ld a,(hl)			;ee47	7e 	~ 
	and 09fh		;ee48	e6 9f 	. . 
	or 002h		;ee4a	f6 02 	. . 
	ld (hl),a			;ee4c	77 	w 
	call sub_e231h		;ee4d	cd 31 e2 	. 1 . 
	ret c			;ee50	d8 	. 
	call sub_dbc4h		;ee51	cd c4 db 	. . . 
	cp 03dh		;ee54	fe 3d 	. = 
	ld a,(07f08h)		;ee56	3a 08 7f 	: .  
	ld b,a			;ee59	47 	G 
	jp nz,08379h		;ee5a	c2 79 83 	. y . 
	call sub_ee72h		;ee5d	cd 72 ee 	. r . 
	ret c			;ee60	d8 	. 
	call sub_dbc4h		;ee61	cd c4 db 	. . . 
	cp 02ch		;ee64	fe 2c 	. , 
	jr z,lee44h		;ee66	28 dc 	( . 
	dec ix		;ee68	dd 2b 	. + 
	or a			;ee6a	b7 	. 
	ret			;ee6b	c9 	. 
lee6ch:
	and 090h		;ee6c	e6 90 	. . 
	jr z,lee86h		;ee6e	28 16 	( . 
	jr lee84h		;ee70	18 12 	. . 
sub_ee72h:
	ld (079ebh),iy		;ee72	fd 22 eb 79 	. " . y 
	ld a,(07f33h)		;ee76	3a 33 7f 	: 3  
	ld hl,0790eh		;ee79	21 0e 79 	! . y 
	res 0,(hl)		;ee7c	cb 86 	. . 
	bit 2,a		;ee7e	cb 57 	. W 
	jr nz,lee6ch		;ee80	20 ea 	  . 
	set 0,(hl)		;ee82	cb c6 	. . 
lee84h:
	ld b,000h		;ee84	06 00 	. . 
lee86h:
	ld a,b			;ee86	78 	x 
	ld (079edh),a		;ee87	32 ed 79 	2 . y 
	call sub_d9edh		;ee8a	cd ed d9 	. . . 
	ret c			;ee8d	d8 	. 
	call 0be47h		;ee8e	cd 47 be 	. G . 
	call sub_dd15h		;ee91	cd 15 dd 	. . . 
	ld hl,(079ebh)		;ee94	2a eb 79 	* . y 
	inc hl			;ee97	23 	# 
	ld a,(079edh)		;ee98	3a ed 79 	: . y 
	dec a			;ee9b	3d 	= 
	inc a			;ee9c	3c 	< 
	jr nz,leeb5h		;ee9d	20 16 	  . 
	ld a,(0790eh)		;ee9f	3a 0e 79 	: . y 
	bit 0,a		;eea2	cb 47 	. G 
	jr z,leeadh		;eea4	28 07 	( . 
	jp nc,0838ch		;eea6	d2 8c 83 	. . . 
leea9h:
	ex de,hl			;eea9	eb 	. 
	jp sub_dca2h		;eeaa	c3 a2 dc 	. . . 
leeadh:
	jp c,0838ch		;eead	da 8c 83 	. . . 
	ld (hl),0f5h		;eeb0	36 f5 	6 . 
	inc hl			;eeb2	23 	# 
	ld a,007h		;eeb3	3e 07 	> . 
leeb5h:
	jp c,0838ch		;eeb5	da 8c 83 	. . . 
	ld b,000h		;eeb8	06 00 	. . 
	ld c,a			;eeba	4f 	O 
	ex de,hl			;eebb	eb 	. 
	ld hl,(07f15h)		;eebc	2a 15 7f 	* .  
	ld a,(07f17h)		;eebf	3a 17 7f 	: .  
	cp c			;eec2	b9 	. 
	jr c,leecah		;eec3	38 05 	8 . 
	or a			;eec5	b7 	. 
	ret z			;eec6	c8 	. 
	ldir		;eec7	ed b0 	. . 
	ret			;eec9	c9 	. 
leecah:
	ld c,a			;eeca	4f 	O 
	or a			;eecb	b7 	. 
	jr z,leed0h		;eecc	28 02 	( . 
	ldir		;eece	ed b0 	. . 
leed0h:
	xor a			;eed0	af 	. 
	ld (de),a			;eed1	12 	. 
	ret			;eed2	c9 	. 
sub_eed3h:
	ld hl,(079ebh)		;eed3	2a eb 79 	* . y 
	inc hl			;eed6	23 	# 
	ld a,(079edh)		;eed7	3a ed 79 	: . y 
	or a			;eeda	b7 	. 
	jr nz,lef1ch		;eedb	20 3f 	  ? 
	ld a,(0790eh)		;eedd	3a 0e 79 	: . y 
	rra			;eee0	1f 	. 
	jr nc,lef12h		;eee1	30 2f 	0 / 
	call sub_f61eh		;eee3	cd 1e f6 	. . . 
	cp 026h		;eee6	fe 26 	. & 
	jr z,lef0ch		;eee8	28 22 	( " 
	dec ix		;eeea	dd 2b 	. + 
	ld a,(07f33h)		;eeec	3a 33 7f 	: 3  
	push af			;eeef	f5 	. 
	call sub_dfc0h		;eef0	cd c0 df 	. . . 
	pop hl			;eef3	e1 	. 
	ld a,h			;eef4	7c 	| 
	ld (07f33h),a		;eef5	32 33 7f 	2 3  
	ret c			;eef8	d8 	. 
leef9h:
	call sub_f5b5h		;eef9	cd b5 f5 	. . . 
	ld hl,(079ebh)		;eefc	2a eb 79 	* . y 
	inc hl			;eeff	23 	# 
	call sub_ea15h		;ef00	cd 15 ea 	. . . 
	jr z,leea9h		;ef03	28 a4 	( . 
	cp 02ch		;ef05	fe 2c 	. , 
	jr z,leea9h		;ef07	28 a0 	( . 
	jp le9c0h		;ef09	c3 c0 e9 	. . . 
lef0ch:
	call sub_e153h		;ef0c	cd 53 e1 	. S . 
	jr nc,leef9h		;ef0f	30 e8 	0 . 
	ret			;ef11	c9 	. 
lef12h:
	ld (hl),0f5h		;ef12	36 f5 	6 . 
	ld (079ebh),hl		;ef14	22 eb 79 	" . y 
	inc hl			;ef17	23 	# 
	ld b,007h		;ef18	06 07 	. . 
	jr lef1dh		;ef1a	18 01 	. . 
lef1ch:
	ld b,a			;ef1c	47 	G 
lef1dh:
	ld c,b			;ef1d	48 	H 
	call sub_dbc4h		;ef1e	cd c4 db 	. . . 
	cp 022h		;ef21	fe 22 	. " 
	jr z,lef75h		;ef23	28 50 	( P 
	push ix		;ef25	dd e5 	. . 
	pop hl			;ef27	e1 	. 
	push hl			;ef28	e5 	. 
	ld d,h			;ef29	54 	T 
	ld e,l			;ef2a	5d 	] 
	dec de			;ef2b	1b 	. 
lef2ch:
	ld a,(hl)			;ef2c	7e 	~ 
	cp 00dh		;ef2d	fe 0d 	. . 
	jr z,lef47h		;ef2f	28 16 	( . 
	cp 02ch		;ef31	fe 2c 	. , 
	jr z,lef47h		;ef33	28 12 	( . 
	cp 03ah		;ef35	fe 3a 	. : 
	jr z,lef47h		;ef37	28 0e 	( . 
	cp 020h		;ef39	fe 20 	.   
	jr z,lef3fh		;ef3b	28 02 	( . 
	ld d,h			;ef3d	54 	T 
	ld e,l			;ef3e	5d 	] 
lef3fh:
	inc hl			;ef3f	23 	# 
	djnz lef2ch		;ef40	10 ea 	. . 
	cp 020h		;ef42	fe 20 	.   
	jr z,lef47h		;ef44	28 01 	( . 
	xor a			;ef46	af 	. 
lef47h:
	ex de,hl			;ef47	eb 	. 
	push hl			;ef48	e5 	. 
	pop ix		;ef49	dd e1 	. . 
	pop de			;ef4b	d1 	. 
	push de			;ef4c	d5 	. 
	sbc hl,de		;ef4d	ed 52 	. R 
	ld b,h			;ef4f	44 	D 
	ld c,l			;ef50	4d 	M 
	inc bc			;ef51	03 	. 
	pop hl			;ef52	e1 	. 
	ld de,(079ebh)		;ef53	ed 5b eb 79 	. [ . y 
	inc de			;ef57	13 	. 
	jr c,lef5fh		;ef58	38 05 	8 . 
	ldir		;ef5a	ed b0 	. . 
	or a			;ef5c	b7 	. 
	jr z,lef62h		;ef5d	28 03 	( . 
lef5fh:
	ex de,hl			;ef5f	eb 	. 
	ld (hl),000h		;ef60	36 00 	6 . 
lef62h:
	and 00fh		;ef62	e6 0f 	. . 
	ret nz			;ef64	c0 	. 
lef65h:
	ld a,(ix+001h)		;ef65	dd 7e 01 	. ~ . 
	cp 00dh		;ef68	fe 0d 	. . 
	ret z			;ef6a	c8 	. 
	cp 02ch		;ef6b	fe 2c 	. , 
	ret z			;ef6d	c8 	. 
	cp 03ah		;ef6e	fe 3a 	. : 
	ret z			;ef70	c8 	. 
	inc ix		;ef71	dd 23 	. # 
	jr lef65h		;ef73	18 f0 	. . 
lef75h:
	ld a,(ix+001h)		;ef75	dd 7e 01 	. ~ . 
	cp 00dh		;ef78	fe 0d 	. . 
	jr z,lef93h		;ef7a	28 17 	( . 
	inc ix		;ef7c	dd 23 	. # 
	cp 022h		;ef7e	fe 22 	. " 
	jr z,lef93h		;ef80	28 11 	( . 
	ld (hl),a			;ef82	77 	w 
	inc hl			;ef83	23 	# 
	djnz lef75h		;ef84	10 ef 	. . 
lef86h:
	ld a,(ix+001h)		;ef86	dd 7e 01 	. ~ . 
	cp 00dh		;ef89	fe 0d 	. . 
	ret z			;ef8b	c8 	. 
	inc ix		;ef8c	dd 23 	. # 
	cp 022h		;ef8e	fe 22 	. " 
	ret z			;ef90	c8 	. 
	jr lef86h		;ef91	18 f3 	. . 
lef93h:
	ld (hl),000h		;ef93	36 00 	6 . 
	ret			;ef95	c9 	. 
sub_ef96h:
	ld hl,07f32h		;ef96	21 32 7f 	! 2  
	ld (hl),001h		;ef99	36 01 	6 . 
	jr lefbeh		;ef9b	18 21 	. ! 
sub_ef9dh:
	ld c,00ch		;ef9d	0e 0c 	. . 
	jr lefabh		;ef9f	18 0a 	. . 
sub_efa1h:
	ld c,004h		;efa1	0e 04 	. . 
	jr lefabh		;efa3	18 06 	. . 
sub_efa5h:
	ld c,00ah		;efa5	0e 0a 	. . 
	jr lefabh		;efa7	18 02 	. . 
sub_efa9h:
	ld c,008h		;efa9	0e 08 	. . 
lefabh:
	ld de,07f32h		;efab	11 32 7f 	. 2  
	ld a,(de)			;efae	1a 	. 
	and 0f0h		;efaf	e6 f0 	. . 
	or c			;efb1	b1 	. 
	ld (de),a			;efb2	12 	. 
sub_efb3h:
	call sub_dd15h		;efb3	cd 15 dd 	. . . 
	jp nc,0838ch		;efb6	d2 8c 83 	. . . 
	ld hl,07f32h		;efb9	21 32 7f 	! 2  
	res 7,(hl)		;efbc	cb be 	. . 
lefbeh:
	ld a,(07f11h)		;efbe	3a 11 7f 	: .  
	bit 3,a		;efc1	cb 5f 	. _ 
	jp nz,lf03fh		;efc3	c2 3f f0 	. ? . 
lefc6h:
	ld hl,07f10h		;efc6	21 10 7f 	! .  
	ld a,(hl)			;efc9	7e 	~ 
	cp 090h		;efca	fe 90 	. . 
	jp nc,lf04eh		;efcc	d2 4e f0 	. N . 
	or a			;efcf	b7 	. 
	jr nz,lf002h		;efd0	20 30 	  0 
	inc hl			;efd2	23 	# 
	xor a			;efd3	af 	. 
	rld		;efd4	ed 6f 	. o 
	ld (hl),000h		;efd6	36 00 	6 . 
	cp 005h		;efd8	fe 05 	. . 
	jr nc,lf002h		;efda	30 26 	0 & 
	inc a			;efdc	3c 	< 
	ld b,a			;efdd	47 	G 
	ld hl,00000h		;efde	21 00 00 	! . . 
lefe1h:
	ld de,07f14h		;efe1	11 14 7f 	. .  
	ld c,004h		;efe4	0e 04 	. . 
	call sub_dba3h		;efe6	cd a3 db 	. . . 
	inc de			;efe9	13 	. 
	ld a,(de)			;efea	1a 	. 
	and 00fh		;efeb	e6 0f 	. . 
	add a,l			;efed	85 	. 
	ld (de),a			;efee	12 	. 
	jr nc,leff4h		;efef	30 03 	0 . 
	inc h			;eff1	24 	$ 
	jr z,lf002h		;eff2	28 0e 	( . 
leff4h:
	ld l,a			;eff4	6f 	o 
	dec b			;eff5	05 	. 
	jr z,lf005h		;eff6	28 0d 	( . 
	add hl,hl			;eff8	29 	) 
	ld d,h			;eff9	54 	T 
	ld e,l			;effa	5d 	] 
	add hl,hl			;effb	29 	) 
	add hl,hl			;effc	29 	) 
	jr c,lf002h		;effd	38 03 	8 . 
	add hl,de			;efff	19 	. 
	jr nc,lefe1h		;f000	30 df 	0 . 
lf002h:
	jp 0835eh		;f002	c3 5e 83 	. ^ . 
lf005h:
	ld (07f18h),hl		;f005	22 18 7f 	" .  
lf008h:
	ld a,(07f32h)		;f008	3a 32 7f 	: 2  
	and 007h		;f00b	e6 07 	. . 
	jr z,lf030h		;f00d	28 21 	( ! 
	ld de,07f19h		;f00f	11 19 7f 	. .  
	cp 002h		;f012	fe 02 	. . 
	jr c,lf07eh		;f014	38 68 	8 h 
	cp 004h		;f016	fe 04 	. . 
	jr c,lf056h		;f018	38 3c 	8 < 
	ld c,a			;f01a	4f 	O 
	ld a,(de)			;f01b	1a 	. 
	or a			;f01c	b7 	. 
	jr nz,lf002h		;f01d	20 e3 	  . 
	dec de			;f01f	1b 	. 
	ld a,c			;f020	79 	y 
	cp 006h		;f021	fe 06 	. . 
	jr c,lf030h		;f023	38 0b 	8 . 
	ld a,(de)			;f025	1a 	. 
	jr z,lf02ch		;f026	28 04 	( . 
	cp 017h		;f028	fe 17 	. . 
	jr lf02eh		;f02a	18 02 	. . 
lf02ch:
	cp 051h		;f02c	fe 51 	. Q 
lf02eh:
	jr nc,lf002h		;f02e	30 d2 	0 . 
lf030h:
	ld de,(07f18h)		;f030	ed 5b 18 7f 	. [ .  
	ld a,d			;f034	7a 	z 
	or e			;f035	b3 	. 
	ret nz			;f036	c0 	. 
	ld a,(07f32h)		;f037	3a 32 7f 	: 2  
	bit 3,a		;f03a	cb 5f 	. _ 
	ret nz			;f03c	c0 	. 
	jr lf002h		;f03d	18 c3 	. . 
lf03fh:
	ld hl,07f32h		;f03f	21 32 7f 	! 2  
	ld a,(hl)			;f042	7e 	~ 
	and 00fh		;f043	e6 0f 	. . 
	cp 00ah		;f045	fe 0a 	. . 
	jr nz,lf002h		;f047	20 b9 	  . 
	set 7,(hl)		;f049	cb fe 	. . 
	jp lefc6h		;f04b	c3 c6 ef 	. . . 
lf04eh:
	ld hl,00000h		;f04e	21 00 00 	! . . 
	ld (07f18h),hl		;f051	22 18 7f 	" .  
	jr lf008h		;f054	18 b2 	. . 
lf056h:
	ld a,(de)			;f056	1a 	. 
	rla			;f057	17 	. 
	ld a,(07f32h)		;f058	3a 32 7f 	: 2  
	jr c,lf06fh		;f05b	38 12 	8 . 
	rla			;f05d	17 	. 
	jr nc,lf030h		;f05e	30 d0 	0 . 
	or a			;f060	b7 	. 
	ld hl,00000h		;f061	21 00 00 	! . . 
	ld de,(07f18h)		;f064	ed 5b 18 7f 	. [ .  
	sbc hl,de		;f068	ed 52 	. R 
	ld (07f18h),hl		;f06a	22 18 7f 	" .  
	jr lf030h		;f06d	18 c1 	. . 
lf06fh:
	rla			;f06f	17 	. 
	jr nc,lf002h		;f070	30 90 	0 . 
	ld a,(de)			;f072	1a 	. 
	cp 080h		;f073	fe 80 	. . 
	jr nz,lf002h		;f075	20 8b 	  . 
	dec de			;f077	1b 	. 
	ld a,(de)			;f078	1a 	. 
	or a			;f079	b7 	. 
	jr nz,lf002h		;f07a	20 86 	  . 
	jr lf030h		;f07c	18 b2 	. . 
lf07eh:
	ld a,(de)			;f07e	1a 	. 
	inc a			;f07f	3c 	< 
	jr z,lf002h		;f080	28 80 	( . 
	jr lf030h		;f082	18 ac 	. . 
sub_f084h:
	call 080d8h		;f084	cd d8 80 	. . . 
	ld de,07f18h		;f087	11 18 7f 	. .  
	ld a,(de)			;f08a	1a 	. 
	ld c,002h		;f08b	0e 02 	. . 
	inc e			;f08d	1c 	. 
	cp 090h		;f08e	fe 90 	. . 
	jr c,lf0b8h		;f090	38 26 	8 & 
	ex de,hl			;f092	eb 	. 
	set 2,(hl)		;f093	cb d6 	. . 
	ex de,hl			;f095	eb 	. 
	call sub_dba3h		;f096	cd a3 db 	. . . 
	inc de			;f099	13 	. 
	ld a,(de)			;f09a	1a 	. 
	ld c,a			;f09b	4f 	O 
	xor a			;f09c	af 	. 
	sub c			;f09d	91 	. 
	daa			;f09e	27 	' 
	ld (de),a			;f09f	12 	. 
lf0a0h:
	ld a,(07f18h)		;f0a0	3a 18 7f 	: .  
	ld c,a			;f0a3	4f 	O 
	call sub_dbbah		;f0a4	cd ba db 	. . . 
	and 00fh		;f0a7	e6 0f 	. . 
	add a,a			;f0a9	87 	. 
	ld b,a			;f0aa	47 	G 
	rla			;f0ab	17 	. 
	rla			;f0ac	17 	. 
	add a,b			;f0ad	80 	. 
	ld b,a			;f0ae	47 	G 
	ld a,c			;f0af	79 	y 
	and 00fh		;f0b0	e6 0f 	. . 
	add a,b			;f0b2	80 	. 
	ld b,a			;f0b3	47 	G 
	ld (07f0dh),a		;f0b4	32 0d 7f 	2 .  
	ret			;f0b7	c9 	. 
lf0b8h:
	call sub_dba3h		;f0b8	cd a3 db 	. . . 
	jr lf0a0h		;f0bb	18 e3 	. . 
lf0bdh:
	ld hl,07f35h		;f0bd	21 35 7f 	! 5  
	set 5,(hl)		;f0c0	cb ee 	. . 
	or a			;f0c2	b7 	. 
	ret			;f0c3	c9 	. 
lf0c4h:
	ld c,010h		;f0c4	0e 10 	. . 
	jr lf0ceh		;f0c6	18 06 	. . 
lf0c8h:
	ld c,030h		;f0c8	0e 30 	. 0 
	jr lf0ceh		;f0ca	18 02 	. . 
lf0cch:
	ld c,060h		;f0cc	0e 60 	. ` 
lf0ceh:
	ld hl,07903h		;f0ce	21 03 79 	! . y 
	ld a,(hl)			;f0d1	7e 	~ 
	and 08fh		;f0d2	e6 8f 	. . 
	or c			;f0d4	b1 	. 
	ld (hl),a			;f0d5	77 	w 
	call 0bfe8h		;f0d6	cd e8 bf 	. . . 
	or a			;f0d9	b7 	. 
	ret			;f0da	c9 	. 
lf0dbh:
	ld hl,07800h		;f0db	21 00 78 	! . x 
	ld de,07801h		;f0de	11 01 78 	. . x 
	ld (hl),000h		;f0e1	36 00 	6 . 
	ld bc,000cfh		;f0e3	01 cf 00 	. . . 
	ldir		;f0e6	ed b0 	. . 
sub_f0e8h:
	ld hl,07800h		;f0e8	21 00 78 	! . x 
	ld (079fch),hl		;f0eb	22 fc 79 	" . y 
	push af			;f0ee	f5 	. 
	ld hl,079d8h		;f0ef	21 d8 79 	! . y 
	ld a,(hl)			;f0f2	7e 	~ 
	and 036h		;f0f3	e6 36 	. 6 
	ld (hl),a			;f0f5	77 	w 
	pop af			;f0f6	f1 	. 
	ret			;f0f7	c9 	. 
sub_f0f8h:
	ld b,001h		;f0f8	06 01 	. . 
lf0fah:
	ld c,006h		;f0fa	0e 06 	. . 
	ld hl,07f1eh		;f0fc	21 1e 7f 	! .  
	call sub_f431h		;f0ff	cd 31 f4 	. 1 . 
	jr nz,lf0fah		;f102	20 f6 	  . 
	ret			;f104	c9 	. 
sub_f105h:
	ld de,07f0bh		;f105	11 0b 7f 	. .  
	jr lf10dh		;f108	18 03 	. . 
sub_f10ah:
	ld de,07f0ah		;f10a	11 0a 7f 	. .  
lf10dh:
	push iy		;f10d	fd e5 	. . 
	ex (sp),hl			;f10f	e3 	. 
	ld a,l			;f110	7d 	} 
	ld (de),a			;f111	12 	. 
	pop hl			;f112	e1 	. 
	ret			;f113	c9 	. 
sub_f114h:
	ld a,(07f11h)		;f114	3a 11 7f 	: .  
	bit 3,a		;f117	cb 5f 	. _ 
	jr nz,lf131h		;f119	20 16 	  . 
	ld a,(07f0fh)		;f11b	3a 0f 7f 	: .  
	or a			;f11e	b7 	. 
	jr nz,lf12eh		;f11f	20 0d 	  . 
	ld a,(07f33h)		;f121	3a 33 7f 	: 3  
	and 006h		;f124	e6 06 	. . 
	jr z,lf12ah		;f126	28 02 	( . 
	inc iy		;f128	fd 23 	. # 
lf12ah:
	call sub_f10ah		;f12a	cd 0a f1 	. . . 
	ret nz			;f12d	c0 	. 
lf12eh:
	inc iy		;f12e	fd 23 	. # 
	ret			;f130	c9 	. 
lf131h:
	ld a,02dh		;f131	3e 2d 	> - 
	ld (iy+001h),a		;f133	fd 77 01 	. w . 
	jr lf12eh		;f136	18 f6 	. . 
lf138h:
	ld hl,079dfh		;f138	21 df 79 	! . y 
	ld a,(hl)			;f13b	7e 	~ 
	and 0fch		;f13c	e6 fc 	. . 
	ld (hl),a			;f13e	77 	w 
	ld hl,07964h		;f13f	21 64 79 	! d y 
	set 6,(hl)		;f142	cb f6 	. . 
	jr lf14bh		;f144	18 05 	. . 
sub_f146h:
	ld hl,07964h		;f146	21 64 79 	! d y 
	res 6,(hl)		;f149	cb b6 	. . 
lf14bh:
	call 083b4h		;f14b	cd b4 83 	. . . 
	ld hl,(079f8h)		;f14e	2a f8 79 	* . y 
	ld (07f0eh),hl		;f151	22 0e 7f 	" .  
	ld hl,(079fah)		;f154	2a fa 79 	* . y 
	ld (07f3ch),hl		;f157	22 3c 7f 	" <  
lf15ah:
	call 0842ah		;f15a	cd 2a 84 	. * . 
	jp nc,lf210h		;f15d	d2 10 f2 	. . . 
	ld b,019h		;f160	06 19 	. . 
	ld hl,07a80h		;f162	21 80 7a 	! . z 
	ld a,020h		;f165	3e 20 	>   
lf167h:
	ld (hl),a			;f167	77 	w 
	inc hl			;f168	23 	# 
	djnz lf167h		;f169	10 fc 	. . 
	ld a,02eh		;f16b	3e 2e 	> . 
	ld (07a8bh),a		;f16d	32 8b 7a 	2 . z 
	call sub_f084h		;f170	cd 84 f0 	. . . 
	ld a,(07f0fh)		;f173	3a 0f 7f 	: .  
	or a			;f176	b7 	. 
	jr nz,lf19ch		;f177	20 23 	  # 
	ld a,(07f19h)		;f179	3a 19 7f 	: .  
	and 040h		;f17c	e6 40 	. @ 
	jr nz,lf1b4h		;f17e	20 34 	  4 
	ld a,b			;f180	78 	x 
	cp 00ah		;f181	fe 0a 	. . 
	jr c,lf1d9h		;f183	38 54 	8 T 
lf185h:
	ld a,(079d8h)		;f185	3a d8 79 	: . y 
	and 010h		;f188	e6 10 	. . 
	jr nz,lf1afh		;f18a	20 23 	  # 
	call sub_f3afh		;f18c	cd af f3 	. . . 
	ld hl,079dfh		;f18f	21 df 79 	! . y 
	set 0,(hl)		;f192	cb c6 	. . 
lf194h:
	ld hl,07964h		;f194	21 64 79 	! d y 
	res 6,(hl)		;f197	cb b6 	. . 
	jp 083b4h		;f199	c3 b4 83 	. . . 
lf19ch:
	ld a,(07f0eh)		;f19c	3a 0e 7f 	: .  
	and 008h		;f19f	e6 08 	. . 
	jr nz,lf185h		;f1a1	20 e2 	  . 
	ld a,(07f19h)		;f1a3	3a 19 7f 	: .  
	and 040h		;f1a6	e6 40 	. @ 
	jr nz,lf1d9h		;f1a8	20 2f 	  / 
	ld a,b			;f1aa	78 	x 
	cp 00ah		;f1ab	fe 0a 	. . 
	jr c,lf1d9h		;f1ad	38 2a 	8 * 
lf1afh:
	call 08375h		;f1af	cd 75 83 	. u . 
	jr lf194h		;f1b2	18 e0 	. . 
lf1b4h:
	ld de,07f20h		;f1b4	11 20 7f 	.    
	ld hl,07f12h		;f1b7	21 12 7f 	! .  
	ld bc,00006h		;f1ba	01 06 00 	. . . 
	ldir		;f1bd	ed b0 	. . 
	ld b,00ah		;f1bf	06 0a 	. . 
lf1c1h:
	ld de,07f20h		;f1c1	11 20 7f 	.    
	ld c,006h		;f1c4	0e 06 	. . 
	call sub_dbaeh		;f1c6	cd ae db 	. . . 
	ld a,(07f25h)		;f1c9	3a 25 7f 	: %  
	or a			;f1cc	b7 	. 
	jr nz,lf1d1h		;f1cd	20 02 	  . 
	djnz lf1c1h		;f1cf	10 f0 	. . 
lf1d1h:
	ld a,(07f0dh)		;f1d1	3a 0d 7f 	: .  
	add a,b			;f1d4	80 	. 
	cp 00bh		;f1d5	fe 0b 	. . 
	jr nc,lf1f0h		;f1d7	30 17 	0 . 
lf1d9h:
	ld a,(07902h)		;f1d9	3a 02 79 	: . y 
	and 020h		;f1dc	e6 20 	.   
	jr nz,lf1e6h		;f1de	20 06 	  . 
	ld a,(079dfh)		;f1e0	3a df 79 	: . y 
	rra			;f1e3	1f 	. 
	jr c,lf185h		;f1e4	38 9f 	8 . 
lf1e6h:
	call sub_f26eh		;f1e6	cd 6e f2 	. n . 
	ld hl,079dfh		;f1e9	21 df 79 	! . y 
	res 0,(hl)		;f1ec	cb 86 	. . 
	jr lf194h		;f1ee	18 a4 	. . 
lf1f0h:
	ld a,(079dfh)		;f1f0	3a df 79 	: . y 
	and 002h		;f1f3	e6 02 	. . 
	jr nz,lf185h		;f1f5	20 8e 	  . 
	ld a,(07f18h)		;f1f7	3a 18 7f 	: .  
	cp 00ah		;f1fa	fe 0a 	. . 
	jr nc,lf185h		;f1fc	30 87 	0 . 
	ld a,(07f36h)		;f1fe	3a 36 7f 	: 6  
	and 010h		;f201	e6 10 	. . 
	jp nz,lf185h		;f203	c2 85 f1 	. . . 
	ld a,(07964h)		;f206	3a 64 79 	: d y 
	and 040h		;f209	e6 40 	. @ 
	jp nz,lf185h		;f20b	c2 85 f1 	. . . 
	jr lf1d9h		;f20e	18 c9 	. . 
lf210h:
	ld a,(07f17h)		;f210	3a 17 7f 	: .  
	ld b,a			;f213	47 	G 
	call 08411h		;f214	cd 11 84 	. . . 
	ld a,(07f33h)		;f217	3a 33 7f 	: 3  
	and 005h		;f21a	e6 05 	. . 
	jr z,lf225h		;f21c	28 07 	( . 
	ld a,b			;f21e	78 	x 
	cp 00dh		;f21f	fe 0d 	. . 
	jr c,lf225h		;f221	38 02 	8 . 
	ld b,00ch		;f223	06 0c 	. . 
lf225h:
	ld a,(07f3dh)		;f225	3a 3d 7f 	: =  
	or a			;f228	b7 	. 
	jr nz,lf23bh		;f229	20 10 	  . 
	ld a,(07f33h)		;f22b	3a 33 7f 	: 3  
	rla			;f22e	17 	. 
	jr c,lf238h		;f22f	38 07 	8 . 
	jr lf234h		;f231	18 01 	. . 
lf233h:
	ld b,a			;f233	47 	G 
lf234h:
	call sub_f4cch		;f234	cd cc f4 	. . . 
lf237h:
	or a			;f237	b7 	. 
lf238h:
	jp lf194h		;f238	c3 94 f1 	. . . 
lf23bh:
	cp b			;f23b	b8 	. 
	jr c,lf233h		;f23c	38 f5 	8 . 
	call sub_f4cch		;f23e	cd cc f4 	. . . 
	jr nc,lf238h		;f241	30 f5 	0 . 
	ld a,(07f17h)		;f243	3a 17 7f 	: .  
	ld b,a			;f246	47 	G 
	ld a,(07f3dh)		;f247	3a 3d 7f 	: =  
	sub b			;f24a	90 	. 
	ld b,a			;f24b	47 	G 
	jr c,lf237h		;f24c	38 e9 	8 . 
	jr z,lf238h		;f24e	28 e8 	( . 
	ld a,(07f08h)		;f250	3a 08 7f 	: .  
	or a			;f253	b7 	. 
	ld c,a			;f254	4f 	O 
	jr z,lf238h		;f255	28 e1 	( . 
	ld a,020h		;f257	3e 20 	>   
lf259h:
	inc iy		;f259	fd 23 	. # 
	ld (iy+000h),a		;f25b	fd 77 00 	. w . 
	dec b			;f25e	05 	. 
	jr z,lf26bh		;f25f	28 0a 	( . 
	dec c			;f261	0d 	. 
	jr nz,lf259h		;f262	20 f5 	  . 
lf264h:
	ld a,c			;f264	79 	y 
	cpl			;f265	2f 	/ 
	ld (079e7h),a		;f266	32 e7 79 	2 . y 
	jr lf237h		;f269	18 cc 	. . 
lf26bh:
	dec c			;f26b	0d 	. 
	jr lf264h		;f26c	18 f6 	. . 
sub_f26eh:
	call sub_f37eh		;f26e	cd 7e f3 	. ~ . 
	ld a,(07f0fh)		;f271	3a 0f 7f 	: .  
	or a			;f274	b7 	. 
	jp z,lf2fch		;f275	ca fc f2 	. . . 
	dec a			;f278	3d 	= 
	jp z,lf33bh		;f279	ca 3b f3 	. ; . 
	inc a			;f27c	3c 	< 
	sub 08ah		;f27d	d6 8a 	. . 
	neg		;f27f	ed 44 	. D 
	ld (07f0ah),a		;f281	32 0a 7f 	2 .  
	ld a,(07f08h)		;f284	3a 08 7f 	: .  
	and 040h		;f287	e6 40 	. @ 
	jr nz,lf2abh		;f289	20 20 	    
	call sub_f389h		;f28b	cd 89 f3 	. . . 
	ld a,(07f0ah)		;f28e	3a 0a 7f 	: .  
	inc hl			;f291	23 	# 
	cp l			;f292	bd 	. 
	jp nc,lf33bh		;f293	d2 3b f3 	. ; . 
	call sub_f114h		;f296	cd 14 f1 	. . . 
	call sub_f398h		;f299	cd 98 f3 	. . . 
	ld a,(07f3ch)		;f29c	3a 3c 7f 	: <  
	or a			;f29f	b7 	. 
	jr z,lf2f8h		;f2a0	28 56 	( V 
	dec a			;f2a2	3d 	= 
	jr z,lf2d8h		;f2a3	28 33 	( 3 
	ld b,a			;f2a5	47 	G 
lf2a6h:
	call lf0fah		;f2a6	cd fa f0 	. . . 
	jr lf2d8h		;f2a9	18 2d 	. - 
lf2abh:
	ld iy,07a88h		;f2ab	fd 21 88 7a 	. ! . z 
	ld a,(07f0dh)		;f2af	3a 0d 7f 	: .  
	ld (07f08h),a		;f2b2	32 08 7f 	2 .  
	call sub_f114h		;f2b5	cd 14 f1 	. . . 
	ld a,(07f3ch)		;f2b8	3a 3c 7f 	: <  
	ld b,a			;f2bb	47 	G 
	or a			;f2bc	b7 	. 
	ld a,030h		;f2bd	3e 30 	> 0 
	inc iy		;f2bf	fd 23 	. # 
	ld (iy+000h),a		;f2c1	fd 77 00 	. w . 
	jr z,lf2d8h		;f2c4	28 12 	( . 
	inc iy		;f2c6	fd 23 	. # 
	dec b			;f2c8	05 	. 
	jr z,lf2d8h		;f2c9	28 0d 	( . 
lf2cbh:
	ld hl,07f08h		;f2cb	21 08 7f 	! .  
	dec (hl)			;f2ce	35 	5 
	jr z,lf2a6h		;f2cf	28 d5 	( . 
	inc iy		;f2d1	fd 23 	. # 
	ld (iy+000h),a		;f2d3	fd 77 00 	. w . 
	djnz lf2cbh		;f2d6	10 f3 	. . 
lf2d8h:
	call sub_f105h		;f2d8	cd 05 f1 	. . . 
lf2dbh:
	call sub_f377h		;f2db	cd 77 f3 	. w . 
	ld a,(07f33h)		;f2de	3a 33 7f 	: 3  
	and 005h		;f2e1	e6 05 	. . 
	jr z,lf338h		;f2e3	28 53 	( S 
	ld a,b			;f2e5	78 	x 
	cp 00dh		;f2e6	fe 0d 	. . 
	jr c,lf338h		;f2e8	38 4e 	8 N 
	ld a,(07f0ah)		;f2ea	3a 0a 7f 	: .  
	add a,00ch		;f2ed	c6 0c 	. . 
	cp 08bh		;f2ef	fe 8b 	. . 
	jr c,lf33bh		;f2f1	38 48 	8 H 
	ld (07f0bh),a		;f2f3	32 0b 7f 	2 .  
	jr lf2dbh		;f2f6	18 e3 	. . 
lf2f8h:
	dec iy		;f2f8	fd 2b 	. + 
	jr lf2d8h		;f2fa	18 dc 	. . 
lf2fch:
	ld a,(07f3ch)		;f2fc	3a 3c 7f 	: <  
	or a			;f2ff	b7 	. 
	jr nz,lf33bh		;f300	20 39 	  9 
	ld a,(07f08h)		;f302	3a 08 7f 	: .  
	and 040h		;f305	e6 40 	. @ 
	jr nz,lf33eh		;f307	20 35 	  5 
	call sub_f389h		;f309	cd 89 f3 	. . . 
	ld a,l			;f30c	7d 	} 
	ld (07f0ah),a		;f30d	32 0a 7f 	2 .  
	call sub_f114h		;f310	cd 14 f1 	. . . 
	call sub_f398h		;f313	cd 98 f3 	. . . 
	ld b,009h		;f316	06 09 	. . 
lf318h:
	call sub_f36ah		;f318	cd 6a f3 	. j . 
	call sub_f105h		;f31b	cd 05 f1 	. . . 
	call sub_f377h		;f31e	cd 77 f3 	. w . 
	ld a,(07f33h)		;f321	3a 33 7f 	: 3  
	and 005h		;f324	e6 05 	. . 
	jr z,lf338h		;f326	28 10 	( . 
	ld a,b			;f328	78 	x 
	cp 00dh		;f329	fe 0d 	. . 
	jr c,lf338h		;f32b	38 0b 	8 . 
	ld a,(07f0ah)		;f32d	3a 0a 7f 	: .  
	add a,00ch		;f330	c6 0c 	. . 
	cp 08bh		;f332	fe 8b 	. . 
	jr c,lf33bh		;f334	38 05 	8 . 
	ld b,00ch		;f336	06 0c 	. . 
lf338h:
	jp lf53dh		;f338	c3 3d f5 	. = . 
lf33bh:
	jp 08375h		;f33b	c3 75 83 	. u . 
lf33eh:
	ld iy,07a88h		;f33e	fd 21 88 7a 	. ! . z 
	call sub_f10ah		;f342	cd 0a f1 	. . . 
	call sub_f114h		;f345	cd 14 f1 	. . . 
	ld a,(07f0dh)		;f348	3a 0d 7f 	: .  
	ld (07f08h),a		;f34b	32 08 7f 	2 .  
	ld a,030h		;f34e	3e 30 	> 0 
	inc iy		;f350	fd 23 	. # 
	ld (iy+000h),a		;f352	fd 77 00 	. w . 
	ld b,009h		;f355	06 09 	. . 
	inc iy		;f357	fd 23 	. # 
lf359h:
	ld hl,07f08h		;f359	21 08 7f 	! .  
	dec (hl)			;f35c	35 	5 
	jr z,lf318h		;f35d	28 b9 	( . 
	inc iy		;f35f	fd 23 	. # 
	ld (iy+000h),a		;f361	fd 77 00 	. w . 
	djnz lf359h		;f364	10 f3 	. . 
	call 0be68h		;f366	cd 68 be 	. h . 
	ret			;f369	c9 	. 
sub_f36ah:
	call lf0fah		;f36a	cd fa f0 	. . . 
lf36dh:
	cp 030h		;f36d	fe 30 	. 0 
	ret nz			;f36f	c0 	. 
	dec iy		;f370	fd 2b 	. + 
	ld a,(iy+000h)		;f372	fd 7e 00 	. ~ . 
	jr lf36dh		;f375	18 f6 	. . 
sub_f377h:
	ld hl,07f0ah		;f377	21 0a 7f 	! .  
	sub (hl)			;f37a	96 	. 
	ld b,a			;f37b	47 	G 
	ld a,(hl)			;f37c	7e 	~ 
	ret			;f37d	c9 	. 
sub_f37eh:
	ld hl,07f19h		;f37e	21 19 7f 	! .  
	ld a,(hl)			;f381	7e 	~ 
	ld (hl),000h		;f382	36 00 	6 . 
	ld hl,07f08h		;f384	21 08 7f 	! .  
	ld (hl),a			;f387	77 	w 
	ret			;f388	c9 	. 
sub_f389h:
	ld hl,(07f0dh)		;f389	2a 0d 7f 	* .  
	ld a,08ah		;f38c	3e 8a 	> . 
	sub l			;f38e	95 	. 
	ld l,a			;f38f	6f 	o 
	ld h,07ah		;f390	26 7a 	& z 
	dec hl			;f392	2b 	+ 
	dec hl			;f393	2b 	+ 
	push hl			;f394	e5 	. 
	pop iy		;f395	fd e1 	. . 
	ret			;f397	c9 	. 
sub_f398h:
	call sub_f0f8h		;f398	cd f8 f0 	. . . 
	ld a,(iy+001h)		;f39b	fd 7e 01 	. ~ . 
	cp 02eh		;f39e	fe 2e 	. . 
	jr nz,sub_f398h		;f3a0	20 f6 	  . 
	inc iy		;f3a2	fd 23 	. # 
	ret			;f3a4	c9 	. 
lf3a5h:
	sub 08bh		;f3a5	d6 8b 	. . 
	neg		;f3a7	ed 44 	. D 
	ld l,a			;f3a9	6f 	o 
	ld h,07ah		;f3aa	26 7a 	& z 
	dec hl			;f3ac	2b 	+ 
	jr lf3b9h		;f3ad	18 0a 	. . 
sub_f3afh:
	ld a,(07f0fh)		;f3af	3a 0f 7f 	: .  
	cp 002h		;f3b2	fe 02 	. . 
	jr nc,lf3a5h		;f3b4	30 ef 	0 . 
	ld hl,07a88h		;f3b6	21 88 7a 	! . z 
lf3b9h:
	ld a,l			;f3b9	7d 	} 
	ld (07f0ah),a		;f3ba	32 0a 7f 	2 .  
	ld iy,07a88h		;f3bd	fd 21 88 7a 	. ! . z 
	call sub_f114h		;f3c1	cd 14 f1 	. . . 
	call sub_f37eh		;f3c4	cd 7e f3 	. ~ . 
	call sub_f0f8h		;f3c7	cd f8 f0 	. . . 
	ld a,(07f0fh)		;f3ca	3a 0f 7f 	: .  
	or a			;f3cd	b7 	. 
	jr z,lf3e1h		;f3ce	28 11 	( . 
	ld a,(07f3ch)		;f3d0	3a 3c 7f 	: <  
	or a			;f3d3	b7 	. 
	jr z,lf3e8h		;f3d4	28 12 	( . 
	inc iy		;f3d6	fd 23 	. # 
	dec a			;f3d8	3d 	= 
	jr z,lf3e8h		;f3d9	28 0d 	( . 
	ld b,a			;f3db	47 	G 
	call lf0fah		;f3dc	cd fa f0 	. . . 
	jr lf3e8h		;f3df	18 07 	. . 
lf3e1h:
	inc iy		;f3e1	fd 23 	. # 
	ld b,009h		;f3e3	06 09 	. . 
	call sub_f36ah		;f3e5	cd 6a f3 	. j . 
lf3e8h:
	ld a,(07f33h)		;f3e8	3a 33 7f 	: 3  
	and 005h		;f3eb	e6 05 	. . 
	jr z,lf401h		;f3ed	28 12 	( . 
	push iy		;f3ef	fd e5 	. . 
	pop hl			;f3f1	e1 	. 
	ld a,l			;f3f2	7d 	} 
	ld hl,07f0ah		;f3f3	21 0a 7f 	! .  
	sub (hl)			;f3f6	96 	. 
	cp 009h		;f3f7	fe 09 	. . 
	jr c,lf401h		;f3f9	38 06 	8 . 
	ld (hl),088h		;f3fb	36 88 	6 . 
	ld iy,07a90h		;f3fd	fd 21 90 7a 	. ! . z 
lf401h:
	ld a,045h		;f401	3e 45 	> E 
	inc iy		;f403	fd 23 	. # 
	ld (iy+000h),a		;f405	fd 77 00 	. w . 
	ld a,(07f08h)		;f408	3a 08 7f 	: .  
	and 040h		;f40b	e6 40 	. @ 
	ld a,020h		;f40d	3e 20 	>   
	jr z,lf413h		;f40f	28 02 	( . 
	ld a,02dh		;f411	3e 2d 	> - 
lf413h:
	inc iy		;f413	fd 23 	. # 
	ld (iy+000h),a		;f415	fd 77 00 	. w . 
	xor a			;f418	af 	. 
	ld (07f17h),a		;f419	32 17 7f 	2 .  
	ld b,002h		;f41c	06 02 	. . 
lf41eh:
	ld hl,07f18h		;f41e	21 18 7f 	! .  
	ld c,002h		;f421	0e 02 	. . 
	call sub_f431h		;f423	cd 31 f4 	. 1 . 
	jr nz,lf41eh		;f426	20 f6 	  . 
	call sub_f105h		;f428	cd 05 f1 	. . . 
	call sub_f377h		;f42b	cd 77 f3 	. w . 
	jp lf53dh		;f42e	c3 3d f5 	. = . 
sub_f431h:
	xor a			;f431	af 	. 
lf432h:
	rld		;f432	ed 6f 	. o 
	dec hl			;f434	2b 	+ 
	dec c			;f435	0d 	. 
	jr nz,lf432h		;f436	20 fa 	  . 
	inc hl			;f438	23 	# 
	ld a,(hl)			;f439	7e 	~ 
	ld (hl),000h		;f43a	36 00 	6 . 
	or 030h		;f43c	f6 30 	. 0 
	cp 03ah		;f43e	fe 3a 	. : 
	jr c,lf444h		;f440	38 02 	8 . 
	add a,007h		;f442	c6 07 	. . 
lf444h:
	inc iy		;f444	fd 23 	. # 
	ld (iy+000h),a		;f446	fd 77 00 	. w . 
	dec b			;f449	05 	. 
	ret			;f44a	c9 	. 
lf44bh:
	call sub_d9edh		;f44b	cd ed d9 	. . . 
	ret c			;f44e	d8 	. 
	call sub_efa1h		;f44f	cd a1 ef 	. . . 
	jr nc,lf462h		;f452	30 0e 	0 . 
	ld a,(07f34h)		;f454	3a 34 7f 	: 4  
	cp 033h		;f457	fe 33 	. 3 
	jr z,lf45dh		;f459	28 02 	( . 
	scf			;f45b	37 	7 
	ret			;f45c	c9 	. 
lf45dh:
	ld a,0ffh		;f45d	3e ff 	> . 
	ld (07f18h),a		;f45f	32 18 7f 	2 .  
lf462h:
	call sub_dbc4h		;f462	cd c4 db 	. . . 
	cp 0feh		;f465	fe fe 	. . 
	jp nz,08379h		;f467	c2 79 83 	. y . 
	ld a,(ix+001h)		;f46a	dd 7e 01 	. ~ . 
	ld hl,07f36h		;f46d	21 36 7f 	! 6  
	set 7,(hl)		;f470	cb fe 	. . 
	cp 02bh		;f472	fe 2b 	. + 
	jr z,lf47dh		;f474	28 07 	( . 
	cp 062h		;f476	fe 62 	. b 
	jp nz,08379h		;f478	c2 79 83 	. y . 
	res 7,(hl)		;f47b	cb be 	. . 
lf47dh:
	inc ix		;f47d	dd 23 	. # 
	ld a,(07f18h)		;f47f	3a 18 7f 	: .  
	ld b,a			;f482	47 	G 
lf483h:
	dec b			;f483	05 	. 
	jr z,lf4b3h		;f484	28 2d 	( - 
	ld c,000h		;f486	0e 00 	. . 
	jr lf48eh		;f488	18 04 	. . 
lf48ah:
	inc ix		;f48a	dd 23 	. # 
lf48ch:
	inc ix		;f48c	dd 23 	. # 
lf48eh:
	inc ix		;f48e	dd 23 	. # 
	ld a,(ix+000h)		;f490	dd 7e 00 	. ~ . 
	cp 01fh		;f493	fe 1f 	. . 
	jr z,lf48ah		;f495	28 f3 	( . 
	cp 00dh		;f497	fe 0d 	. . 
	jr z,lf4b0h		;f499	28 15 	( . 
	cp 0feh		;f49b	fe fe 	. . 
	jr z,lf48ch		;f49d	28 ed 	( . 
	cp 022h		;f49f	fe 22 	. " 
	jr nz,lf4a4h		;f4a1	20 01 	  . 
	inc c			;f4a3	0c 	. 
lf4a4h:
	bit 0,c		;f4a4	cb 41 	. A 
	jr nz,lf48eh		;f4a6	20 e6 	  . 
	cp 02ch		;f4a8	fe 2c 	. , 
	jr z,lf483h		;f4aa	28 d7 	( . 
	cp 03ah		;f4ac	fe 3a 	. : 
	jr nz,lf48eh		;f4ae	20 de 	  . 
lf4b0h:
	dec ix		;f4b0	dd 2b 	. + 
	ret			;f4b2	c9 	. 
lf4b3h:
	call sub_e728h		;f4b3	cd 28 e7 	. ( . 
	ret c			;f4b6	d8 	. 
	call sub_eddah		;f4b7	cd da ed 	. . . 
	ret c			;f4ba	d8 	. 
	ld hl,07f36h		;f4bb	21 36 7f 	! 6  
	set 3,(hl)		;f4be	cb de 	. . 
	call sub_ea25h		;f4c0	cd 25 ea 	. % . 
	ld a,(07f36h)		;f4c3	3a 36 7f 	: 6  
	rla			;f4c6	17 	. 
	jp nc,le851h		;f4c7	d2 51 e8 	. Q . 
	or a			;f4ca	b7 	. 
	ret			;f4cb	c9 	. 
sub_f4cch:
	ld a,(07f33h)		;f4cc	3a 33 7f 	: 3  
	rla			;f4cf	17 	. 
	jr nc,lf4e7h		;f4d0	30 15 	0 . 
	dec b			;f4d2	05 	. 
	inc b			;f4d3	04 	. 
	jr z,lf4e5h		;f4d4	28 0f 	( . 
	ld de,(079e7h)		;f4d6	ed 5b e7 79 	. [ . y 
	ld d,000h		;f4da	16 00 	. . 
	ld iy,07a5fh		;f4dc	fd 21 5f 7a 	. ! _ z 
	add iy,de		;f4e0	fd 19 	. . 
	call sub_db93h		;f4e2	cd 93 db 	. . . 
lf4e5h:
	scf			;f4e5	37 	7 
	ret			;f4e6	c9 	. 
lf4e7h:
	ld a,(079e7h)		;f4e7	3a e7 79 	: . y 
	cp 0feh		;f4ea	fe fe 	. . 
	ret nc			;f4ec	d0 	. 
	ld iy,07cffh		;f4ed	fd 21 ff 7c 	. ! . | 
	ld e,a			;f4f1	5f 	_ 
	ld d,000h		;f4f2	16 00 	. . 
	add iy,de		;f4f4	fd 19 	. . 
	cpl			;f4f6	2f 	/ 
	ld c,a			;f4f7	4f 	O 
	ld (07f08h),a		;f4f8	32 08 7f 	2 .  
	dec b			;f4fb	05 	. 
	inc b			;f4fc	04 	. 
	jr z,lf4e5h		;f4fd	28 e6 	( . 
	ld a,c			;f4ff	79 	y 
	cp b			;f500	b8 	. 
	ld a,(079e7h)		;f501	3a e7 79 	: . y 
	jr c,lf50ah		;f504	38 04 	8 . 
	add a,b			;f506	80 	. 
	scf			;f507	37 	7 
	jr lf50dh		;f508	18 03 	. . 
lf50ah:
	add a,c			;f50a	81 	. 
	or a			;f50b	b7 	. 
	ld b,c			;f50c	41 	A 
lf50dh:
	ld (079e7h),a		;f50d	32 e7 79 	2 . y 
	cpl			;f510	2f 	/ 
	ld (07f08h),a		;f511	32 08 7f 	2 .  
	jp sub_db93h		;f514	c3 93 db 	. . . 
lf517h:
	ld hl,(079e1h)		;f517	2a e1 79 	* . y 
lf51ah:
	inc hl			;f51a	23 	# 
	ld a,(hl)			;f51b	7e 	~ 
	inc a			;f51c	3c 	< 
	jr z,lf534h		;f51d	28 15 	( . 
	ex de,hl			;f51f	eb 	. 
	ld hl,(07f3ah)		;f520	2a 3a 7f 	* :  
	or a			;f523	b7 	. 
	sbc hl,de		;f524	ed 52 	. R 
	ex de,hl			;f526	eb 	. 
	jr c,lf534h		;f527	38 0b 	8 . 
	ld (07f3ch),hl		;f529	22 3c 7f 	" <  
	inc hl			;f52c	23 	# 
	inc hl			;f52d	23 	# 
	ld e,(hl)			;f52e	5e 	^ 
	ld d,000h		;f52f	16 00 	. . 
	add hl,de			;f531	19 	. 
	jr lf51ah		;f532	18 e6 	. . 
lf534h:
	ld ix,(07f3ch)		;f534	dd 2a 3c 7f 	. * <  
	ld hl,(07f3ch)		;f538	2a 3c 7f 	* <  
	or a			;f53b	b7 	. 
	ret			;f53c	c9 	. 
lf53dh:
	ld hl,(07f0ah)		;f53d	2a 0a 7f 	* .  
	ld h,07ah		;f540	26 7a 	& z 
	push hl			;f542	e5 	. 
	pop ix		;f543	dd e1 	. . 
	ld a,(07f33h)		;f545	3a 33 7f 	: 3  
	ld hl,079e7h		;f548	21 e7 79 	! . y 
	rra			;f54b	1f 	. 
	jr c,lf55eh		;f54c	38 10 	8 . 
	and 003h		;f54e	e6 03 	. . 
	jr nz,lf556h		;f550	20 04 	  . 
	ld a,018h		;f552	3e 18 	> . 
lf554h:
	sub b			;f554	90 	. 
	ld (hl),a			;f555	77 	w 
lf556h:
	call sub_f4cch		;f556	cd cc f4 	. . . 
	ccf			;f559	3f 	? 
	ret nc			;f55a	d0 	. 
lf55bh:
	jp 08371h		;f55b	c3 71 83 	. q . 
lf55eh:
	ld a,(hl)			;f55e	7e 	~ 
	add a,00ch		;f55f	c6 0c 	. . 
	jr nc,lf554h		;f561	30 f1 	0 . 
	jr lf55bh		;f563	18 f6 	. . 
	ld hl,(07f15h)		;f565	2a 15 7f 	* .  
	ld a,l			;f568	7d 	} 
	ld (079f7h),a		;f569	32 f7 79 	2 . y 
	ld de,(07f17h)		;f56c	ed 5b 17 7f 	. [ .  
	ld d,000h		;f570	16 00 	. . 
	add hl,de			;f572	19 	. 
	ld a,(hl)			;f573	7e 	~ 
	push af			;f574	f5 	. 
	push hl			;f575	e5 	. 
	ld (hl),00dh		;f576	36 0d 	6 . 
	call 08411h		;f578	cd 11 84 	. . . 
	call sub_f61eh		;f57b	cd 1e f6 	. . . 
	ld hl,(07f38h)		;f57e	2a 38 7f 	* 8  
	push hl			;f581	e5 	. 
	ld a,(ix+000h)		;f582	dd 7e 00 	. ~ . 
	cp 026h		;f585	fe 26 	. & 
	jr z,lf597h		;f587	28 0e 	( . 
	and 0dfh		;f589	e6 df 	. . 
	call sub_e7a6h		;f58b	cd a6 e7 	. . . 
	jr nc,lf5cch		;f58e	30 3c 	0 < 
	dec ix		;f590	dd 2b 	. + 
	call sub_dfc0h		;f592	cd c0 df 	. . . 
	jr lf5a3h		;f595	18 0c 	. . 
lf597h:
	ld a,(07f37h)		;f597	3a 37 7f 	: 7  
	push af			;f59a	f5 	. 
	call sub_e153h		;f59b	cd 53 e1 	. S . 
	pop de			;f59e	d1 	. 
	ld hl,07f37h		;f59f	21 37 7f 	! 7  
	ld (hl),d			;f5a2	72 	r 
lf5a3h:
	pop hl			;f5a3	e1 	. 
	ld (07f38h),hl		;f5a4	22 38 7f 	" 8  
	pop hl			;f5a7	e1 	. 
	pop de			;f5a8	d1 	. 
	ld (hl),d			;f5a9	72 	r 
	jr nc,sub_f5b5h		;f5aa	30 09 	0 . 
	ld a,(07f34h)		;f5ac	3a 34 7f 	: 4  
	cp 010h		;f5af	fe 10 	. . 
	jr z,lf5c7h		;f5b1	28 14 	( . 
	scf			;f5b3	37 	7 
	ret			;f5b4	c9 	. 
sub_f5b5h:
	call 082d2h		;f5b5	cd d2 82 	. . . 
	jr c,lf5c7h		;f5b8	38 0d 	8 . 
	ld a,(0790fh)		;f5ba	3a 0f 79 	: . y 
	rra			;f5bd	1f 	. 
	ret nc			;f5be	d0 	. 
	ld hl,07f11h		;f5bf	21 11 7f 	! .  
	ld a,(hl)			;f5c2	7e 	~ 
	xor 008h		;f5c3	ee 08 	. . 
	ld (hl),a			;f5c5	77 	w 
	ret			;f5c6	c9 	. 
lf5c7h:
	call 08024h		;f5c7	cd 24 80 	. $ . 
	or a			;f5ca	b7 	. 
	ret			;f5cb	c9 	. 
lf5cch:
	ld a,(07f17h)		;f5cc	3a 17 7f 	: .  
	push af			;f5cf	f5 	. 
	call 08024h		;f5d0	cd 24 80 	. $ . 
	pop af			;f5d3	f1 	. 
	or a			;f5d4	b7 	. 
	jr z,lf5a3h		;f5d5	28 cc 	( . 
	ld c,a			;f5d7	4f 	O 
	ld hl,lf601h		;f5d8	21 01 f6 	! . . 
lf5dbh:
	ld a,(hl)			;f5db	7e 	~ 
	inc hl			;f5dc	23 	# 
	or a			;f5dd	b7 	. 
	jr z,lf5a3h		;f5de	28 c3 	( . 
	ld b,a			;f5e0	47 	G 
	cp c			;f5e1	b9 	. 
	jr z,lf5ebh		;f5e2	28 07 	( . 
lf5e4h:
	inc b			;f5e4	04 	. 
	ld e,b			;f5e5	58 	X 
	ld d,000h		;f5e6	16 00 	. . 
	add hl,de			;f5e8	19 	. 
	jr lf5dbh		;f5e9	18 f0 	. . 
lf5ebh:
	push ix		;f5eb	dd e5 	. . 
	pop de			;f5ed	d1 	. 
lf5eeh:
	ld a,(de)			;f5ee	1a 	. 
	and 0dfh		;f5ef	e6 df 	. . 
	dec a			;f5f1	3d 	= 
	cp (hl)			;f5f2	be 	. 
	jr nz,lf5e4h		;f5f3	20 ef 	  . 
	inc de			;f5f5	13 	. 
	inc hl			;f5f6	23 	# 
	djnz lf5eeh		;f5f7	10 f5 	. . 
	ld h,(hl)			;f5f9	66 	f 
	ld l,010h		;f5fa	2e 10 	. . 
	ld (07f11h),hl		;f5fc	22 11 7f 	" .  
	jr lf5a3h		;f5ff	18 a2 	. . 
lf601h:
	ex af,af'			;f601	08 	. 
	ld c,l			;f602	4d 	M 
	ld b,b			;f603	40 	@ 
	ld c,l			;f604	4d 	M 
	ld c,a			;f605	4f 	O 
	ld b,b			;f606	40 	@ 
	ld d,d			;f607	52 	R 
	ld b,h			;f608	44 	D 
	ld c,l			;f609	4d 	M 
	add hl,de			;f60a	19 	. 
	rlca			;f60b	07 	. 
	ld b,b			;f60c	40 	@ 
	ld c,e			;f60d	4b 	K 
	inc c			;f60e	0c 	. 
	ld c,h			;f60f	4c 	L 
	ld b,b			;f610	40 	@ 
	ld d,h			;f611	54 	T 
	ld c,c			;f612	49 	I 
	jr nz,lf61bh		;f613	20 06 	  . 
	ld d,e			;f615	53 	S 
	ld b,b			;f616	40 	@ 
	ld d,e			;f617	53 	S 
	ld d,e			;f618	53 	S 
	ld c,(hl)			;f619	4e 	N 
	ld c,(hl)			;f61a	4e 	N 
lf61bh:
	ld hl,00000h		;f61b	21 00 00 	! . . 
sub_f61eh:
	ld c,000h		;f61e	0e 00 	. . 
lf620h:
	call sub_dbc4h		;f620	cd c4 db 	. . . 
	cp 02bh		;f623	fe 2b 	. + 
	jr z,lf620h		;f625	28 f9 	( . 
	cp 02dh		;f627	fe 2d 	. - 
	jr nz,lf62eh		;f629	20 03 	  . 
	inc c			;f62b	0c 	. 
	jr lf620h		;f62c	18 f2 	. . 
lf62eh:
	ld hl,0790fh		;f62e	21 0f 79 	! . y 
	ld (hl),c			;f631	71 	q 
	ret			;f632	c9 	. 
	ld a,(07f17h)		;f633	3a 17 7f 	: .  
	or a			;f636	b7 	. 
	jr z,lf640h		;f637	28 07 	( . 
	ld ix,(07f15h)		;f639	dd 2a 15 7f 	. * .  
	ld a,(ix+000h)		;f63d	dd 7e 00 	. ~ . 
lf640h:
	ld l,a			;f640	6f 	o 
	ld h,000h		;f641	26 00 	& . 
	ld (07f18h),hl		;f643	22 18 7f 	" .  
	ld a,(07f15h)		;f646	3a 15 7f 	: .  
	ld (079f7h),a		;f649	32 f7 79 	2 . y 
	jp le1cfh		;f64c	c3 cf e1 	. . . 
	ld a,(07f17h)		;f64f	3a 17 7f 	: .  
	jr lf640h		;f652	18 ec 	. . 
	call sub_efa9h		;f654	cd a9 ef 	. . . 
	ret c			;f657	d8 	. 
	call 08024h		;f658	cd 24 80 	. $ . 
	ld de,(07f18h)		;f65b	ed 5b 18 7f 	. [ .  
	ld hl,0cd88h		;f65f	21 88 cd 	! . . 
	scf			;f662	37 	7 
	sbc hl,de		;f663	ed 52 	. R 
	jr z,lf695h		;f665	28 2e 	( . 
	ld a,d			;f667	7a 	z 
	or a			;f668	b7 	. 
	jp nz,0835eh		;f669	c2 5e 83 	. ^ . 
	ld a,e			;f66c	7b 	{ 
	or a			;f66d	b7 	. 
	jr nz,lf67ah		;f66e	20 0a 	  . 
sub_f670h:
	ld hl,(079f7h)		;f670	2a f7 79 	* . y 
	ld h,07eh		;f673	26 7e 	& ~ 
	ld (07f15h),hl		;f675	22 15 7f 	" .  
	jr lf68eh		;f678	18 14 	. . 
lf67ah:
	ld hl,079f7h		;f67a	21 f7 79 	! . y 
	inc (hl)			;f67d	34 	4 
	jp z,08384h		;f67e	ca 84 83 	. . . 
	ld l,(hl)			;f681	6e 	n 
	ld h,07eh		;f682	26 7e 	& ~ 
	dec hl			;f684	2b 	+ 
	ld (hl),a			;f685	77 	w 
	ld (07f15h),hl		;f686	22 15 7f 	" .  
	ld hl,07f17h		;f689	21 17 7f 	! .  
	ld (hl),001h		;f68c	36 01 	6 . 
lf68eh:
	ld hl,07f14h		;f68e	21 14 7f 	! .  
	ld (hl),0d0h		;f691	36 d0 	6 . 
	or a			;f693	b7 	. 
	ret			;f694	c9 	. 
lf695h:
	push ix		;f695	dd e5 	. . 
	ld ix,0f6b7h		;f697	dd 21 b7 f6 	. ! . . 
	call sub_db01h		;f69b	cd 01 db 	. . . 
lf69eh:
	inc ix		;f69e	dd 23 	. # 
	ld a,(ix+000h)		;f6a0	dd 7e 00 	. ~ . 
	or a			;f6a3	b7 	. 
	jr nz,lf6ach		;f6a4	20 06 	  . 
	call le78fh		;f6a6	cd 8f e7 	. . . 
	pop ix		;f6a9	dd e1 	. . 
	ret			;f6ab	c9 	. 
lf6ach:
	inc a			;f6ac	3c 	< 
	ld c,a			;f6ad	4f 	O 
	ld a,l			;f6ae	7d 	} 
	cp 0feh		;f6af	fe fe 	. . 
	jp z,08384h		;f6b1	ca 84 83 	. . . 
	inc hl			;f6b4	23 	# 
	ld (hl),c			;f6b5	71 	q 
	jr lf69eh		;f6b6	18 e6 	. . 
	ld b,b			;f6b8	40 	@ 
	ld l,d			;f6b9	6a 	j 
	ld l,b			;f6ba	68 	h 
	ld l,l			;f6bb	6d 	m 
	ld h,b			;f6bc	60 	` 
	nop			;f6bd	00 	. 
lf6beh:
	ld hl,07a60h		;f6be	21 60 7a 	! ` z 
	ld b,018h		;f6c1	06 18 	. . 
	ld a,0ffh		;f6c3	3e ff 	> . 
lf6c5h:
	ld (hl),a			;f6c5	77 	w 
	inc hl			;f6c6	23 	# 
	djnz lf6c5h		;f6c7	10 fc 	. . 
	call sub_eaach		;f6c9	cd ac ea 	. . . 
	xor a			;f6cc	af 	. 
	ld (079e7h),a		;f6cd	32 e7 79 	2 . y 
	ld a,082h		;f6d0	3e 82 	> . 
	ld (07f33h),a		;f6d2	32 33 7f 	2 3  
	ld hl,(07f38h)		;f6d5	2a 38 7f 	* 8  
	ld (079b3h),hl		;f6d8	22 b3 79 	" . y 
	call sub_f146h		;f6db	cd 46 f1 	. F . 
	ld hl,(079b3h)		;f6de	2a b3 79 	* . y 
	ld (07f38h),hl		;f6e1	22 38 7f 	" 8  
	call sub_ec49h		;f6e4	cd 49 ec 	. I . 
	call 08024h		;f6e7	cd 24 80 	. $ . 
	ld iy,07dffh		;f6ea	fd 21 ff 7d 	. ! . } 
	ld de,(079f7h)		;f6ee	ed 5b f7 79 	. [ . y 
	ld d,000h		;f6f2	16 00 	. . 
	add iy,de		;f6f4	fd 19 	. . 
	ld ix,07a5fh		;f6f6	dd 21 5f 7a 	. ! _ z 
	ld hl,07f17h		;f6fa	21 17 7f 	! .  
lf6fdh:
	inc ix		;f6fd	dd 23 	. # 
	ld a,(ix+000h)		;f6ff	dd 7e 00 	. ~ . 
	ld c,a			;f702	4f 	O 
	cp 0ffh		;f703	fe ff 	. . 
	jr z,lf729h		;f705	28 22 	( " 
	cp 02eh		;f707	fe 2e 	. . 
	jr nz,lf718h		;f709	20 0d 	  . 
	inc ix		;f70b	dd 23 	. # 
	ld a,(ix+000h)		;f70d	dd 7e 00 	. ~ . 
	cp 0ffh		;f710	fe ff 	. . 
	jr z,lf729h		;f712	28 15 	( . 
	dec ix		;f714	dd 2b 	. + 
	ld c,02eh		;f716	0e 2e 	. . 
lf718h:
	push iy		;f718	fd e5 	. . 
	pop de			;f71a	d1 	. 
	ld a,e			;f71b	7b 	{ 
	cp 0feh		;f71c	fe fe 	. . 
	jp z,08384h		;f71e	ca 84 83 	. . . 
	inc iy		;f721	fd 23 	. # 
	ld (iy+000h),c		;f723	fd 71 00 	. q . 
	inc (hl)			;f726	34 	4 
	jr lf6fdh		;f727	18 d4 	. . 
lf729h:
	inc iy		;f729	fd 23 	. # 
	call sub_f670h		;f72b	cd 70 f6 	. p . 
	push iy		;f72e	fd e5 	. . 
	pop hl			;f730	e1 	. 
	ld a,l			;f731	7d 	} 
	ld (079f7h),a		;f732	32 f7 79 	2 . y 
	ret			;f735	c9 	. 
sub_f736h:
	ld a,(07f18h)		;f736	3a 18 7f 	: .  
	ld b,a			;f739	47 	G 
	ld a,(07f17h)		;f73a	3a 17 7f 	: .  
	cp b			;f73d	b8 	. 
	ret			;f73e	c9 	. 
lf73fh:
	ld a,(079f2h)		;f73f	3a f2 79 	: . y 
	cp 002h		;f742	fe 02 	. . 
	jr nz,lf7aeh		;f744	20 68 	  h 
	call sub_ef9dh		;f746	cd 9d ef 	. . . 
	ret c			;f749	d8 	. 
	call sub_dad0h		;f74a	cd d0 da 	. . . 
	call sub_dd15h		;f74d	cd 15 dd 	. . . 
	jr nz,lf7aeh		;f750	20 5c 	  \ 
	call sub_f736h		;f752	cd 36 f7 	. 6 . 
	jr c,lf75bh		;f755	38 04 	8 . 
	ld a,b			;f757	78 	x 
lf758h:
	ld (07f17h),a		;f758	32 17 7f 	2 .  
lf75bh:
	ld hl,(07f15h)		;f75b	2a 15 7f 	* .  
	ld a,(07f17h)		;f75e	3a 17 7f 	: .  
	add a,l			;f761	85 	. 
	ld (079f7h),a		;f762	32 f7 79 	2 . y 
	or a			;f765	b7 	. 
	ret			;f766	c9 	. 
lf767h:
	ld a,(079f2h)		;f767	3a f2 79 	: . y 
	cp 003h		;f76a	fe 03 	. . 
	jr nz,lf7aeh		;f76c	20 40 	  @ 
	call sub_ef9dh		;f76e	cd 9d ef 	. . . 
	ret c			;f771	d8 	. 
	ld a,(07f18h)		;f772	3a 18 7f 	: .  
	ld (079bbh),a		;f775	32 bb 79 	2 . y 
	call sub_dad0h		;f778	cd d0 da 	. . . 
	call sub_efa1h		;f77b	cd a1 ef 	. . . 
	ret c			;f77e	d8 	. 
	call sub_dad0h		;f77f	cd d0 da 	. . . 
	call sub_dd15h		;f782	cd 15 dd 	. . . 
	jr nz,lf7aeh		;f785	20 27 	  ' 
	call sub_f736h		;f787	cd 36 f7 	. 6 . 
	jr nc,lf78fh		;f78a	30 03 	0 . 
	xor a			;f78c	af 	. 
	jr lf758h		;f78d	18 c9 	. . 
lf78fh:
	dec b			;f78f	05 	. 
	sub b			;f790	90 	. 
	call 08411h		;f791	cd 11 84 	. . . 
	push ix		;f794	dd e5 	. . 
	pop iy		;f796	fd e1 	. . 
	ld e,b			;f798	58 	X 
	ld d,000h		;f799	16 00 	. . 
	add ix,de		;f79b	dd 19 	. . 
	ld b,a			;f79d	47 	G 
	ld hl,(079bbh)		;f79e	2a bb 79 	* . y 
	cp l			;f7a1	bd 	. 
	jr c,lf7a5h		;f7a2	38 01 	8 . 
	ld b,l			;f7a4	45 	E 
lf7a5h:
	ld a,b			;f7a5	78 	x 
	ld (07f17h),a		;f7a6	32 17 7f 	2 .  
	call sub_db93h		;f7a9	cd 93 db 	. . . 
	jr lf75bh		;f7ac	18 ad 	. . 
lf7aeh:
	jp 08379h		;f7ae	c3 79 83 	. y . 
lf7b1h:
	ld a,(079f2h)		;f7b1	3a f2 79 	: . y 
	cp 002h		;f7b4	fe 02 	. . 
	jr nz,lf7aeh		;f7b6	20 f6 	  . 
	call sub_ef9dh		;f7b8	cd 9d ef 	. . . 
	ret c			;f7bb	d8 	. 
	call sub_dad0h		;f7bc	cd d0 da 	. . . 
	call sub_dd15h		;f7bf	cd 15 dd 	. . . 
	jr nz,lf7aeh		;f7c2	20 ea 	  . 
	call sub_f736h		;f7c4	cd 36 f7 	. 6 . 
	jr z,lf75bh		;f7c7	28 92 	( . 
	jr c,lf75bh		;f7c9	38 90 	8 . 
	sub b			;f7cb	90 	. 
	call 08411h		;f7cc	cd 11 84 	. . . 
	push ix		;f7cf	dd e5 	. . 
	pop iy		;f7d1	fd e1 	. . 
	ld e,a			;f7d3	5f 	_ 
	ld d,000h		;f7d4	16 00 	. . 
	add ix,de		;f7d6	dd 19 	. . 
	jr lf7a5h		;f7d8	18 cb 	. . 
lf7dah:
	ld e,b			;f7da	58 	X 
	ld a,b			;f7db	78 	x 
	or a			;f7dc	b7 	. 
	ret z			;f7dd	c8 	. 
lf7deh:
	ld a,(hl)			;f7de	7e 	~ 
	call sub_f7e9h		;f7df	cd e9 f7 	. . . 
	ret c			;f7e2	d8 	. 
	inc hl			;f7e3	23 	# 
	dec e			;f7e4	1d 	. 
	jr nz,lf7deh		;f7e5	20 f7 	  . 
	and a			;f7e7	a7 	. 
	ret			;f7e8	c9 	. 
sub_f7e9h:
	ld c,a			;f7e9	4f 	O 
	in a,(018h)		;f7ea	db 18 	. . 
	and 07fh		;f7ec	e6 7f 	.  
	out (018h),a		;f7ee	d3 18 	. . 
	ld b,008h		;f7f0	06 08 	. . 
lf7f2h:
	in a,(018h)		;f7f2	db 18 	. . 
	and 0fdh		;f7f4	e6 fd 	. . 
	rlc c		;f7f6	cb 01 	. . 
	jr nc,lf7fch		;f7f8	30 02 	0 . 
	or 002h		;f7fa	f6 02 	. . 
lf7fch:
	out (018h),a		;f7fc	d3 18 	. . 
	call sub_f973h		;f7fe	cd 73 f9 	. s . 
	in a,(018h)		;f801	db 18 	. . 
	and 07fh		;f803	e6 7f 	.  
	out (018h),a		;f805	d3 18 	. . 
	call sub_f973h		;f807	cd 73 f9 	. s . 
	in a,(018h)		;f80a	db 18 	. . 
	or 080h		;f80c	f6 80 	. . 
	out (018h),a		;f80e	d3 18 	. . 
	call sub_f973h		;f810	cd 73 f9 	. s . 
	djnz lf7f2h		;f813	10 dd 	. . 
	ld d,0ffh		;f815	16 ff 	. . 
lf817h:
	in a,(01fh)		;f817	db 1f 	. . 
	bit 1,a		;f819	cb 4f 	. O 
	jr nz,lf847h		;f81b	20 2a 	  * 
	ld a,030h		;f81d	3e 30 	> 0 
	call sub_f975h		;f81f	cd 75 f9 	. u . 
	in a,(01fh)		;f822	db 1f 	. . 
	bit 1,a		;f824	cb 4f 	. O 
	jr nz,lf847h		;f826	20 1f 	  . 
	call sub_f973h		;f828	cd 73 f9 	. s . 
	call sub_f973h		;f82b	cd 73 f9 	. s . 
	in a,(018h)		;f82e	db 18 	. . 
	or 001h		;f830	f6 01 	. . 
	out (018h),a		;f832	d3 18 	. . 
	ld a,001h		;f834	3e 01 	> . 
	call sub_f975h		;f836	cd 75 f9 	. u . 
	in a,(018h)		;f839	db 18 	. . 
	and 0feh		;f83b	e6 fe 	. . 
	out (018h),a		;f83d	d3 18 	. . 
	call sub_f973h		;f83f	cd 73 f9 	. s . 
	call sub_f973h		;f842	cd 73 f9 	. s . 
	and a			;f845	a7 	. 
	ret			;f846	c9 	. 
lf847h:
	and 080h		;f847	e6 80 	. . 
	ret nz			;f849	c0 	. 
	in a,(014h)		;f84a	db 14 	. . 
	and 001h		;f84c	e6 01 	. . 
	jr z,lf817h		;f84e	28 c7 	( . 
	out (014h),a		;f850	d3 14 	. . 
	dec d			;f852	15 	. 
	jr nc,lf817h		;f853	30 c2 	0 . 
	in a,(018h)		;f855	db 18 	. . 
	and 07ch		;f857	e6 7c 	. | 
	out (018h),a		;f859	d3 18 	. . 
	ld a,087h		;f85b	3e 87 	> . 
	jp 0837bh		;f85d	c3 7b 83 	. { . 
lf860h:
	ld a,00dh		;f860	3e 0d 	> . 
	call sub_f7e9h		;f862	cd e9 f7 	. . . 
	ret c			;f865	d8 	. 
	ld a,00ah		;f866	3e 0a 	> . 
	call sub_f7e9h		;f868	cd e9 f7 	. . . 
	ret			;f86b	c9 	. 
lf86ch:
	call sub_d9edh		;f86c	cd ed d9 	. . . 
	jr c,lf8c1h		;f86f	38 50 	8 P 
	inc ix		;f871	dd 23 	. # 
	ld a,(ix+000h)		;f873	dd 7e 00 	. ~ . 
	cp 00dh		;f876	fe 0d 	. . 
	jr z,lf87eh		;f878	28 04 	( . 
	cp 03ah		;f87a	fe 3a 	. : 
	jr nz,lf8c4h		;f87c	20 46 	  F 
lf87eh:
	ld hl,07f10h		;f87e	21 10 7f 	! .  
	ld a,(hl)			;f881	7e 	~ 
	cp 0f5h		;f882	fe f5 	. . 
	jr z,lf8bfh		;f884	28 39 	( 9 
	or a			;f886	b7 	. 
	jr nz,lf8bfh		;f887	20 36 	  6 
	inc hl			;f889	23 	# 
	ld a,(hl)			;f88a	7e 	~ 
	or a			;f88b	b7 	. 
	jr nz,lf8bfh		;f88c	20 31 	  1 
	inc hl			;f88e	23 	# 
	ld b,005h		;f88f	06 05 	. . 
lf891h:
	inc hl			;f891	23 	# 
	ld a,(hl)			;f892	7e 	~ 
	or a			;f893	b7 	. 
	jr nz,lf8bfh		;f894	20 29 	  ) 
	djnz lf891h		;f896	10 f9 	. . 
	ld hl,07f12h		;f898	21 12 7f 	! .  
	ld a,(hl)			;f89b	7e 	~ 
	and 0f0h		;f89c	e6 f0 	. . 
	cp 080h		;f89e	fe 80 	. . 
	jr nc,lf8bfh		;f8a0	30 1d 	0 . 
	ld b,a			;f8a2	47 	G 
	in a,(018h)		;f8a3	db 18 	. . 
	and 07ch		;f8a5	e6 7c 	. | 
	bit 6,b		;f8a7	cb 70 	. p 
	jr z,lf8adh		;f8a9	28 02 	( . 
	or 001h		;f8ab	f6 01 	. . 
lf8adh:
	bit 5,b		;f8ad	cb 68 	. h 
	jr z,lf8b3h		;f8af	28 02 	( . 
	or 002h		;f8b1	f6 02 	. . 
lf8b3h:
	bit 4,b		;f8b3	cb 60 	. ` 
	jr z,lf8b9h		;f8b5	28 02 	( . 
	or 080h		;f8b7	f6 80 	. . 
lf8b9h:
	out (018h),a		;f8b9	d3 18 	. . 
	dec ix		;f8bb	dd 2b 	. + 
	and a			;f8bd	a7 	. 
	ret			;f8be	c9 	. 
lf8bfh:
	dec ix		;f8bf	dd 2b 	. + 
lf8c1h:
	jp 08379h		;f8c1	c3 79 83 	. y . 
lf8c4h:
	cp 02ch		;f8c4	fe 2c 	. , 
	jr nz,lf8bfh		;f8c6	20 f7 	  . 
	call sub_efa9h		;f8c8	cd a9 ef 	. . . 
	jr c,lf8bfh		;f8cb	38 f2 	8 . 
	ld bc,(07f18h)		;f8cd	ed 4b 18 7f 	. K .  
	push bc			;f8d1	c5 	. 
	call sub_d9edh		;f8d2	cd ed d9 	. . . 
	pop bc			;f8d5	c1 	. 
	jr c,lf8c1h		;f8d6	38 e9 	8 . 
	push bc			;f8d8	c5 	. 
	call sub_ef9dh		;f8d9	cd 9d ef 	. . . 
	pop bc			;f8dc	c1 	. 
	jr c,lf8c1h		;f8dd	38 e2 	8 . 
	ld a,(07f18h)		;f8df	3a 18 7f 	: .  
	out (c),a		;f8e2	ed 79 	. y 
	and a			;f8e4	a7 	. 
	ret			;f8e5	c9 	. 
sub_f8e6h:
	call sub_f995h		;f8e6	cd 95 f9 	. . . 
	cp 028h		;f8e9	fe 28 	. ( 
	jr z,lf8fdh		;f8eb	28 10 	( . 
	cp 026h		;f8ed	fe 26 	. & 
	jr z,lf924h		;f8ef	28 33 	( 3 
	dec ix		;f8f1	dd 2b 	. + 
	call sub_e7adh		;f8f3	cd ad e7 	. . . 
	jr nc,lf92ah		;f8f6	30 32 	0 2 
	call sub_f943h		;f8f8	cd 43 f9 	. C . 
	and a			;f8fb	a7 	. 
	ret			;f8fc	c9 	. 
lf8fdh:
	call sub_f995h		;f8fd	cd 95 f9 	. . . 
	cp 026h		;f900	fe 26 	. & 
	jr z,lf918h		;f902	28 14 	( . 
	dec ix		;f904	dd 2b 	. + 
	call sub_e7adh		;f906	cd ad e7 	. . . 
	jr nc,lf913h		;f909	30 08 	0 . 
	inc ix		;f90b	dd 23 	. # 
lf90dh:
	ld a,010h		;f90d	3e 10 	> . 
	call 0837bh		;f90f	cd 7b 83 	. { . 
	ret			;f912	c9 	. 
lf913h:
	call lf92ah		;f913	cd 2a f9 	. * . 
	jr lf91bh		;f916	18 03 	. . 
lf918h:
	call lf924h		;f918	cd 24 f9 	. $ . 
lf91bh:
	ret c			;f91b	d8 	. 
	call sub_f995h		;f91c	cd 95 f9 	. . . 
	cp 029h		;f91f	fe 29 	. ) 
	jr nz,lf90dh		;f921	20 ea 	  . 
	ret			;f923	c9 	. 
lf924h:
	call sub_e153h		;f924	cd 53 e1 	. S . 
	jr nc,lf92eh		;f927	30 05 	0 . 
	ret			;f929	c9 	. 
lf92ah:
	call sub_dfc0h		;f92a	cd c0 df 	. . . 
	ret c			;f92d	d8 	. 
lf92eh:
	call sub_efa9h		;f92e	cd a9 ef 	. . . 
	ret c			;f931	d8 	. 
	ld bc,(07f18h)		;f932	ed 4b 18 7f 	. K .  
	in a,(c)		;f936	ed 78 	. x 
	ld h,000h		;f938	26 00 	& . 
	ld l,a			;f93a	6f 	o 
	ld (07f18h),hl		;f93b	22 18 7f 	" .  
	call sub_e227h		;f93e	cd 27 e2 	. ' . 
	and a			;f941	a7 	. 
	ret			;f942	c9 	. 
sub_f943h:
	call 08024h		;f943	cd 24 80 	. $ . 
	in a,(015h)		;f946	db 15 	. . 
	and 0f0h		;f948	e6 f0 	. . 
	or 080h		;f94a	f6 80 	. . 
	out (015h),a		;f94c	d3 15 	. . 
	ld a,040h		;f94e	3e 40 	> @ 
	call sub_f975h		;f950	cd 75 f9 	. u . 
	in a,(01fh)		;f953	db 1f 	. . 
	ld b,a			;f955	47 	G 
	and 004h		;f956	e6 04 	. . 
	bit 1,b		;f958	cb 48 	. H 
	jr z,lf95eh		;f95a	28 02 	( . 
	or 001h		;f95c	f6 01 	. . 
lf95eh:
	bit 0,b		;f95e	cb 40 	. @ 
	jr z,lf964h		;f960	28 02 	( . 
	or 002h		;f962	f6 02 	. . 
lf964h:
	rlca			;f964	07 	. 
	rlca			;f965	07 	. 
	rlca			;f966	07 	. 
	rlca			;f967	07 	. 
	ld (07f12h),a		;f968	32 12 7f 	2 .  
	in a,(015h)		;f96b	db 15 	. . 
	and 070h		;f96d	e6 70 	. p 
	out (015h),a		;f96f	d3 15 	. . 
	and a			;f971	a7 	. 
	ret			;f972	c9 	. 
sub_f973h:
	ld a,0ffh		;f973	3e ff 	> . 
sub_f975h:
	dec a			;f975	3d 	= 
	jp nz,sub_f975h		;f976	c2 75 f9 	. u . 
	ld a,004h		;f979	3e 04 	> . 
lf97bh:
	dec a			;f97b	3d 	= 
	jp nz,lf97bh		;f97c	c2 7b f9 	. { . 
	ret			;f97f	c9 	. 
lf980h:
	ld (079b5h),ix		;f980	dd 22 b5 79 	. " . y 
	ld a,042h		;f984	3e 42 	> B 
	out (019h),a		;f986	d3 19 	. . 
	ld hl,lf990h		;f988	21 90 f9 	! . . 
	push hl			;f98b	e5 	. 
	ld hl,(07f18h)		;f98c	2a 18 7f 	* .  
	jp (hl)			;f98f	e9 	. 
lf990h:
	ld a,002h		;f990	3e 02 	> . 
	out (019h),a		;f992	d3 19 	. . 
	ret			;f994	c9 	. 
sub_f995h:
	inc ix		;f995	dd 23 	. # 
	ld a,(ix+000h)		;f997	dd 7e 00 	. ~ . 
lf99ah:
	cp 020h		;f99a	fe 20 	.   
	jr z,sub_f995h		;f99c	28 f7 	( . 
	ret			;f99e	c9 	. 
sub_f99fh:
	bit 7,a		;f99f	cb 7f 	.  
	jp z,0be92h		;f9a1	ca 92 be 	. . . 
	and 07fh		;f9a4	e6 7f 	.  
	cp 053h		;f9a6	fe 53 	. S 
	jr nc,lf9b7h		;f9a8	30 0d 	0 . 
	push bc			;f9aa	c5 	. 
	push hl			;f9ab	e5 	. 
	ld b,000h		;f9ac	06 00 	. . 
	ld c,a			;f9ae	4f 	O 
	ld hl,lf9bah		;f9af	21 ba f9 	! . . 
	add hl,bc			;f9b2	09 	. 
	ld a,(hl)			;f9b3	7e 	~ 
	pop hl			;f9b4	e1 	. 
	pop bc			;f9b5	c1 	. 
	ret			;f9b6	c9 	. 
lf9b7h:
	ld a,000h		;f9b7	3e 00 	> . 
	ret			;f9b9	c9 	. 
lf9bah:
	nop			;f9ba	00 	. 
	nop			;f9bb	00 	. 
	ld d,c			;f9bc	51 	Q 
	ld d,a			;f9bd	57 	W 
	ld b,l			;f9be	45 	E 
	ld d,d			;f9bf	52 	R 
	ld d,h			;f9c0	54 	T 
	ld e,c			;f9c1	59 	Y 
	ld d,l			;f9c2	55 	U 
	ld b,c			;f9c3	41 	A 
	ld d,e			;f9c4	53 	S 
	ld b,h			;f9c5	44 	D 
	ld b,(hl)			;f9c6	46 	F 
	ld b,a			;f9c7	47 	G 
	ld c,b			;f9c8	48 	H 
	ld c,d			;f9c9	4a 	J 
	ld c,e			;f9ca	4b 	K 
	ld e,d			;f9cb	5a 	Z 
	ld e,b			;f9cc	58 	X 
	ld b,e			;f9cd	43 	C 
	ld d,(hl)			;f9ce	56 	V 
	ld b,d			;f9cf	42 	B 
	ld c,(hl)			;f9d0	4e 	N 
	ld c,l			;f9d1	4d 	M 
	inc l			;f9d2	2c 	, 
	add hl,bc			;f9d3	09 	. 
	ex af,af'			;f9d4	08 	. 
	dec d			;f9d5	15 	. 
	rlca			;f9d6	07 	. 
	ld a,(bc)			;f9d7	0a 	. 
	jr nz,$-121		;f9d8	20 85 	  . 
	add a,h			;f9da	84 	. 
	rrca			;f9db	0f 	. 
	ld c,003h		;f9dc	0e 03 	. . 
	jr nc,$-80		;f9de	30 ae 	0 . 
	rra			;f9e0	1f 	. 
	dec hl			;f9e1	2b 	+ 
	dec c			;f9e2	0d 	. 
	ld c,h			;f9e3	4c 	L 
	dec sp			;f9e4	3b 	; 
	inc c			;f9e5	0c 	. 
	ld sp,03332h		;f9e6	31 32 33 	1 2 3 
	dec l			;f9e9	2d 	- 
	sbc a,c			;f9ea	99 	. 
	ld c,c			;f9eb	49 	I 
	ld c,a			;f9ec	4f 	O 
	dec bc			;f9ed	0b 	. 
	inc (hl)			;f9ee	34 	4 
	dec (hl)			;f9ef	35 	5 
	ld (hl),02ah		;f9f0	36 2a 	6 * 
	sbc a,b			;f9f2	98 	. 
	ld d,b			;f9f3	50 	P 
	rla			;f9f4	17 	. 
	ei			;f9f5	fb 	. 
	scf			;f9f6	37 	7 
	jr c,lfa32h		;f9f7	38 39 	8 9 
	cpl			;f9f9	2f 	/ 
	add hl,hl			;f9fa	29 	) 
	sbc a,l			;f9fb	9d 	. 
	sbc a,e			;f9fc	9b 	. 
	ld e,(hl)			;f9fd	5e 	^ 
	call m,02888h		;f9fe	fc 88 28 	. . ( 
	add a,a			;fa01	87 	. 
	sbc a,(hl)			;fa02	9e 	. 
	djnz lf99ah		;fa03	10 95 	. . 
	sub (hl)			;fa05	96 	. 
	sub c			;fa06	91 	. 
	sub d			;fa07	92 	. 
	sub a			;fa08	97 	. 
	sbc a,h			;fa09	9c 	. 
	ld (bc),a			;fa0a	02 	. 
	dec b			;fa0b	05 	. 
	nop			;fa0c	00 	. 
	nop			;fa0d	00 	. 
	nop			;fa0e	00 	. 
	nop			;fa0f	00 	. 
	nop			;fa10	00 	. 
	nop			;fa11	00 	. 
	nop			;fa12	00 	. 
	nop			;fa13	00 	. 
	nop			;fa14	00 	. 
	nop			;fa15	00 	. 
	nop			;fa16	00 	. 
	nop			;fa17	00 	. 
	nop			;fa18	00 	. 
	nop			;fa19	00 	. 
	nop			;fa1a	00 	. 
	nop			;fa1b	00 	. 
	nop			;fa1c	00 	. 
	nop			;fa1d	00 	. 
	nop			;fa1e	00 	. 
	nop			;fa1f	00 	. 
	nop			;fa20	00 	. 
	nop			;fa21	00 	. 
	nop			;fa22	00 	. 
	nop			;fa23	00 	. 
	nop			;fa24	00 	. 
	nop			;fa25	00 	. 
	nop			;fa26	00 	. 
	nop			;fa27	00 	. 
	nop			;fa28	00 	. 
	nop			;fa29	00 	. 
	nop			;fa2a	00 	. 
	nop			;fa2b	00 	. 
	nop			;fa2c	00 	. 
	nop			;fa2d	00 	. 
	nop			;fa2e	00 	. 
	nop			;fa2f	00 	. 
	nop			;fa30	00 	. 
	nop			;fa31	00 	. 
lfa32h:
	nop			;fa32	00 	. 
	nop			;fa33	00 	. 
	nop			;fa34	00 	. 
	nop			;fa35	00 	. 
	nop			;fa36	00 	. 
	nop			;fa37	00 	. 
	nop			;fa38	00 	. 
	nop			;fa39	00 	. 
	nop			;fa3a	00 	. 
	nop			;fa3b	00 	. 
	nop			;fa3c	00 	. 
	nop			;fa3d	00 	. 
	nop			;fa3e	00 	. 
	nop			;fa3f	00 	. 
	nop			;fa40	00 	. 
	nop			;fa41	00 	. 
	nop			;fa42	00 	. 
	nop			;fa43	00 	. 
	nop			;fa44	00 	. 
	nop			;fa45	00 	. 
	nop			;fa46	00 	. 
	nop			;fa47	00 	. 
	nop			;fa48	00 	. 
	nop			;fa49	00 	. 
	nop			;fa4a	00 	. 
	nop			;fa4b	00 	. 
	nop			;fa4c	00 	. 
	nop			;fa4d	00 	. 
	nop			;fa4e	00 	. 
	nop			;fa4f	00 	. 
	nop			;fa50	00 	. 
	nop			;fa51	00 	. 
	nop			;fa52	00 	. 
	nop			;fa53	00 	. 
	nop			;fa54	00 	. 
	nop			;fa55	00 	. 
	nop			;fa56	00 	. 
	nop			;fa57	00 	. 
	nop			;fa58	00 	. 
	nop			;fa59	00 	. 
	nop			;fa5a	00 	. 
	nop			;fa5b	00 	. 
	nop			;fa5c	00 	. 
	nop			;fa5d	00 	. 
	nop			;fa5e	00 	. 
	nop			;fa5f	00 	. 
	nop			;fa60	00 	. 
	nop			;fa61	00 	. 
	nop			;fa62	00 	. 
	nop			;fa63	00 	. 
	nop			;fa64	00 	. 
	nop			;fa65	00 	. 
	nop			;fa66	00 	. 
	nop			;fa67	00 	. 
	nop			;fa68	00 	. 
	nop			;fa69	00 	. 
	nop			;fa6a	00 	. 
	nop			;fa6b	00 	. 
	nop			;fa6c	00 	. 
	nop			;fa6d	00 	. 
	nop			;fa6e	00 	. 
	nop			;fa6f	00 	. 
	nop			;fa70	00 	. 
	nop			;fa71	00 	. 
	nop			;fa72	00 	. 
	nop			;fa73	00 	. 
	nop			;fa74	00 	. 
	nop			;fa75	00 	. 
	nop			;fa76	00 	. 
	nop			;fa77	00 	. 
	nop			;fa78	00 	. 
	nop			;fa79	00 	. 
	nop			;fa7a	00 	. 
	nop			;fa7b	00 	. 
	nop			;fa7c	00 	. 
	nop			;fa7d	00 	. 
	nop			;fa7e	00 	. 
	nop			;fa7f	00 	. 
	nop			;fa80	00 	. 
	nop			;fa81	00 	. 
	nop			;fa82	00 	. 
	nop			;fa83	00 	. 
	nop			;fa84	00 	. 
	nop			;fa85	00 	. 
	nop			;fa86	00 	. 
	nop			;fa87	00 	. 
	nop			;fa88	00 	. 
	nop			;fa89	00 	. 
	nop			;fa8a	00 	. 
	nop			;fa8b	00 	. 
	nop			;fa8c	00 	. 
	nop			;fa8d	00 	. 
	nop			;fa8e	00 	. 
	nop			;fa8f	00 	. 
	nop			;fa90	00 	. 
	nop			;fa91	00 	. 
	nop			;fa92	00 	. 
	nop			;fa93	00 	. 
	nop			;fa94	00 	. 
	nop			;fa95	00 	. 
	nop			;fa96	00 	. 
	nop			;fa97	00 	. 
	nop			;fa98	00 	. 
	nop			;fa99	00 	. 
	nop			;fa9a	00 	. 
	nop			;fa9b	00 	. 
	nop			;fa9c	00 	. 
	nop			;fa9d	00 	. 
	nop			;fa9e	00 	. 
	nop			;fa9f	00 	. 
	nop			;faa0	00 	. 
	nop			;faa1	00 	. 
	nop			;faa2	00 	. 
	nop			;faa3	00 	. 
	nop			;faa4	00 	. 
	nop			;faa5	00 	. 
	nop			;faa6	00 	. 
	nop			;faa7	00 	. 
	nop			;faa8	00 	. 
	nop			;faa9	00 	. 
	nop			;faaa	00 	. 
	nop			;faab	00 	. 
	nop			;faac	00 	. 
	nop			;faad	00 	. 
	nop			;faae	00 	. 
	nop			;faaf	00 	. 
	nop			;fab0	00 	. 
	nop			;fab1	00 	. 
	nop			;fab2	00 	. 
	nop			;fab3	00 	. 
	nop			;fab4	00 	. 
	nop			;fab5	00 	. 
	nop			;fab6	00 	. 
	nop			;fab7	00 	. 
	nop			;fab8	00 	. 
	nop			;fab9	00 	. 
	nop			;faba	00 	. 
	nop			;fabb	00 	. 
	nop			;fabc	00 	. 
	nop			;fabd	00 	. 
	nop			;fabe	00 	. 
	nop			;fabf	00 	. 
	nop			;fac0	00 	. 
	nop			;fac1	00 	. 
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
	jp sub_c3f6h		;febf	c3 f6 c3 	. . . 
	jp sub_cd31h		;fec2	c3 31 cd 	. 1 . 
	jp sub_ce7eh		;fec5	c3 7e ce 	. ~ . 
	jp sub_d0d9h		;fec8	c3 d9 d0 	. . . 
	jp sub_d0d2h		;fecb	c3 d2 d0 	. . . 
	jp sub_c576h		;fece	c3 76 c5 	. v . 
	jp sub_c99dh		;fed1	c3 9d c9 	. . . 
	jp sub_c999h		;fed4	c3 99 c9 	. . . 
	jp sub_d476h		;fed7	c3 76 d4 	. v . 
	jp lc8fbh		;feda	c3 fb c8 	. . . 
	jp sub_cb99h		;fedd	c3 99 cb 	. . . 
	jp sub_cf4ch		;fee0	c3 4c cf 	. L . 
	jp sub_cf51h		;fee3	c3 51 cf 	. Q . 
	jp sub_cf48h		;fee6	c3 48 cf 	. H . 
	jp sub_d14ah		;fee9	c3 4a d1 	. J . 
	jp sub_d146h		;feec	c3 46 d1 	. F . 
	jp sub_d142h		;feef	c3 42 d1 	. B . 
	jp sub_cf00h		;fef2	c3 00 cf 	. . . 
	jp sub_cecfh		;fef5	c3 cf ce 	. . . 
	jp sub_f7e9h		;fef8	c3 e9 f7 	. . . 
	jp lf980h		;fefb	c3 80 f9 	. . . 
	jp le15fh		;fefe	c3 5f e1 	. _ . 
	jp sub_c17dh		;ff01	c3 7d c1 	. } . 
	jp sub_c250h		;ff04	c3 50 c2 	. P . 
	jp lc38ah		;ff07	c3 8a c3 	. . . 
	jp sub_c219h		;ff0a	c3 19 c2 	. . . 
	jp lf6beh		;ff0d	c3 be f6 	. . . 
	jp sub_cdceh		;ff10	c3 ce cd 	. . . 
	jp le56ah		;ff13	c3 6a e5 	. j . 
	jp lf15ah		;ff16	c3 5a f1 	. Z . 
	jp sub_cb90h		;ff19	c3 90 cb 	. . . 
	jp sub_ef9dh		;ff1c	c3 9d ef 	. . . 
	jp sub_c11dh		;ff1f	c3 1d c1 	. . . 
	jp sub_ee72h		;ff22	c3 72 ee 	. r . 
	jp sub_eab8h		;ff25	c3 b8 ea 	. . . 
	jp lf138h		;ff28	c3 38 f1 	. 8 . 
	jp sub_dfc5h		;ff2b	c3 c5 df 	. . . 
	jp sub_ece1h		;ff2e	c3 e1 ec 	. . . 
	jp sub_c1e6h		;ff31	c3 e6 c1 	. . . 
	jp sub_c1c3h		;ff34	c3 c3 c1 	. . . 
	jp lc40ah		;ff37	c3 0a c4 	. . . 
	jp lc195h		;ff3a	c3 95 c1 	. . . 
	jp lec55h		;ff3d	c3 55 ec 	. U . 
	jp lf0cch		;ff40	c3 cc f0 	. . . 
	jp lf0c4h		;ff43	c3 c4 f0 	. . . 
	jp lf0c8h		;ff46	c3 c8 f0 	. . . 
	jp le9f6h		;ff49	c3 f6 e9 	. . . 
	jp le815h		;ff4c	c3 15 e8 	. . . 
	jp le7b4h		;ff4f	c3 b4 e7 	. . . 
	jp lea4eh		;ff52	c3 4e ea 	. N . 
	jp sub_c258h		;ff55	c3 58 c2 	. X . 
	jp sub_cd8bh		;ff58	c3 8b cd 	. . . 
	jp lf86ch		;ff5b	c3 6c f8 	. l . 
	jp le9c8h		;ff5e	c3 c8 e9 	. . . 
	jp le971h		;ff61	c3 71 e9 	. q . 
	jp le86ah		;ff64	c3 6a e8 	. j . 
	jp lf44bh		;ff67	c3 4b f4 	. K . 
	jp lede6h		;ff6a	c3 e6 ed 	. . . 
	jp lee44h		;ff6d	c3 44 ee 	. D . 
	jp le93fh		;ff70	c3 3f e9 	. ? . 
	jp le9e2h		;ff73	c3 e2 e9 	. . . 
	jp lf0bdh		;ff76	c3 bd f0 	. . . 
	jp le8a4h		;ff79	c3 a4 e8 	. . . 
	jp sub_ea25h		;ff7c	c3 25 ea 	. % . 
	jp le849h		;ff7f	c3 49 e8 	. I . 
	jp le882h		;ff82	c3 82 e8 	. . . 
	jp sub_dabfh		;ff85	c3 bf da 	. . . 
	jp lc005h		;ff88	c3 05 c0 	. . . 
	jp lf0dbh		;ff8b	c3 db f0 	. . . 
	jp sub_e235h		;ff8e	c3 35 e2 	. 5 . 
	jp sub_e231h		;ff91	c3 31 e2 	. 1 . 
	jp lf517h		;ff94	c3 17 f5 	. . . 
	jp sub_c4fch		;ff97	c3 fc c4 	. . . 
	jp sub_c606h		;ff9a	c3 06 c6 	. . . 
	jp sub_ca58h		;ff9d	c3 58 ca 	. X . 
	jp sub_c579h		;ffa0	c3 79 c5 	. y . 
	jp sub_c4ffh		;ffa3	c3 ff c4 	. . . 
	jp sub_c485h		;ffa6	c3 85 c4 	. . . 
	jp sub_c488h		;ffa9	c3 88 c4 	. . . 
	jp sub_e44fh		;ffac	c3 4f e4 	. O . 
	jp sub_e423h		;ffaf	c3 23 e4 	. # . 
	jp lddf3h		;ffb2	c3 f3 dd 	. . . 
	jp sub_dbaeh		;ffb5	c3 ae db 	. . . 
	jp sub_dd15h		;ffb8	c3 15 dd 	. . . 
	jp sub_e3e9h		;ffbb	c3 e9 e3 	. . . 
	jp sub_e34bh		;ffbe	c3 4b e3 	. K . 
	jp lf7dah		;ffc1	c3 da f7 	. . . 
	jp lf860h		;ffc4	c3 60 f8 	. ` . 
	jp sub_cc8ah		;ffc7	c3 8a cc 	. . . 
	jp sub_efb3h		;ffca	c3 b3 ef 	. . . 
	jp sub_efa9h		;ffcd	c3 a9 ef 	. . . 
	jp le439h		;ffd0	c3 39 e4 	. 9 . 
	jp sub_e410h		;ffd3	c3 10 e4 	. . . 
	jp sub_e42dh		;ffd6	c3 2d e4 	. - . 
	jp sub_e4b2h		;ffd9	c3 b2 e4 	. . . 
	jp sub_efa1h		;ffdc	c3 a1 ef 	. . . 
	jp lecf5h		;ffdf	c3 f5 ec 	. . . 
	jp lecf9h		;ffe2	c3 f9 ec 	. . . 
	jp ledc8h		;ffe5	c3 c8 ed 	. . . 
	jp le733h		;ffe8	c3 33 e7 	. 3 . 
	jp sub_e728h		;ffeb	c3 28 e7 	. ( . 
	jp lee2ah		;ffee	c3 2a ee 	. * . 
	jp sub_ef96h		;fff1	c3 96 ef 	. . . 
	jp sub_f146h		;fff4	c3 46 f1 	. F . 
	jp sub_eaach		;fff7	c3 ac ea 	. . . 
	jp sub_dfc0h		;fffa	c3 c0 df 	. . . 
	jp sub_d9edh		;fffd	c3 ed d9 	. . . 
