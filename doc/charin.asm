78F7: RET

854D: (look into char-out.txt)

; Entry point of 'char in' (no registers on input), A and carry set on output
8881: LD A,(78F0)
      AND f7H
      LD (78F0),A
      CALL 88AB		; init scanning
      JR NC,+20 [88A2]	; carry not set
      LD B,A
      CALL 88AB		; init scanning again?
      JR NC,+14 [88A2]
      CP B
      JR NZ,+11 [88A2]
      LD A,(78F0)
      AND 10H
      CALL NZ,8EC8
      LD A,B
88A0: SCF
      RET

88A2: LD A,(78F0)
      AND 20H
      CALL NZ,8ECC
      RET

88AB: IN A,(1F)         ; here starts key scan, read KON/Break key
      RLA
      JR C,+91 [890B]	; KON/Break pressed
88B0: EXX
      LD HL,0x0a	; HL is counter, 8+2 columns to scan -> 0x0a
      LD DE,0101H
      LD BC,ff11H
88BA: LD A,E
      OR H
      OUT (C),A		; enable key strobe on current column with 0x11 or 0x12
      RLC E		; finished with 8x8 matrix?
88C0: JR NC,+85 [8917]	; no -> JR
      LD C,18           ; yes, switch to 2nd matrix: 0x12
      LD H,c0H
      CALL 895C		; busy wait
      IN A,(0x10)	; read keyboard column A
      PUSH AF
      XOR A		; clear A
      OUT (0x11),A	; turn off column key strobe
      POP AF		; restore column we read
88D0: OR A		; is keyboard column read 0x00
      JR Z,+16 [88E3]   ; if NZ: key detected
      INC B		; 
      PUSH DE
      JR NZ,+7 [88DE]
88D7: SRL A             ; look for matrix column
      JR C,+3 [88DE]
      INC D
      JR -7 [88D7]
88DE: OR A
      JR NZ,+38 [8907]
      LD B,D
88E2: POP DE
88E3: LD A,D		; key deteced
      ADD A,8
      LD D,A
      DEC L		; done with scanning?
      JR NZ,-48 [88BA]	; NZ, goto next scan
      LD E,0            ; end of matrix scan
      OUT (C),E
      LD A,8
88F0: OUT (11),A
      CALL 895C		; busy wait
      IN A,(13)		; load shift key pin
      RRA               ; carry indicates Shift-key
      LD A,0
      OUT (11),A
      LD A,B
      JR NC,+2 [8901]
      OR 80H
8901: EXX               ; we are ready
      CP ffH
      RET C             ; carry set if key(s) pressed
      XOR A
      RET               ; carry cleared and A=0
8907: LD B,52h
8909: JR -41 [88E2]
890B: CALL 88B0		; KON/Break pressed, start scan now
      JR NC,+3 [8913]
8910: LD A,52h	  	; KON/Break key and something else ? pressed
      RET
8913: LD A,51h    	; KON/Break key returned
      SCF
      RET
8917: CALL 895C		; busy wait
      IN A,(0x10)	; read keyboard column A
      JR -78 [88D0]

895C: PUSH BC           ; here starts time wait code
      LD BC,001cH
8960: CALL 896B
      POP BC
      RET
8965: PUSH BC
      LD BC,007dH
      JR -11 [8960]
896B: PUSH AF
896C: DEC BC
      LD A,C
      OR B
      JP NZ,896C
      POP AF
      RET

8DB9:

; specialities follow
8EC8: LD A,B
      JP NZ,8F9C
8ECC: CALL 8ED2
      JP 78F7     ; RAM-area  here is normally a RET stored
8ED2: PUSH DE
      PUSH HL
      LD HL,(780E)
      LD A,(HL)
      OR A
      JR NZ,+65 [8F1C]
      CALL 8DB9
      LD HL,7800
      EXX

8F1C:
8F9C:

