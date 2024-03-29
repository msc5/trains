		;.SYNTAX		6502
		.LINKLIST
		.SYMBOLS
;		.EXTERNAL	DATA8,ADDRESS

DATA8:		.EQUAL ABH      
		.BLKB	10
ADDRESS:	 
		PAGE0
DD:		VAR	<LABEL    ;ADDRESS
		CODE
LDA:		LDA	#12
		LDA	#$12
		LDA	#DATA8
		LDA	12
		LDA	$12
		LDA	DATA8
		LDA	12,X
		LDA	$12,X
		LDA	DATA8,X
		LDA	(12,X)
		LDA	($12,X)
		LDA	(DATA8,X)
		LDA	(12),Y
		LDA	($12),Y
		LDA	(DATA8),Y
		LDA	1234
		LDA	$1234
		LDA	ADDRESS
		LDA	1234,X
		LDA	$1234,X
		LDA	ADDRESS,X
		LDA	1234,Y
		LDA	$1234,Y
		LDA	ADDRESS,Y
		list on
STA:		STA	12
		STA	$12
		STA	DATA8
		STA	12,X
		STA	$12,X
		STA	DATA8,X
		STA	(12,X)
		STA	($12,X)
		STA	(DATA8,X)
		STA	(12),Y
		STA	($12),Y
		STA	(DATA8),Y
		STA	1234
		STA	$1234
		STA	ADDRESS
		STA	1234,X
		STA	$1234,X
		STA	ADDRESS,X
		STA	1234,Y
		STA	$1234,Y
		STA	ADDRESS,Y

LDX:		LDX	#12
		LDX	#$12
		LDX	#DATA8
		LDX	12
		LDX	$12
		LDX	DATA8
		LDX	12,Y
		LDX	$12,Y
		LDX	DATA8,Y
		LDX	1234
		LDX	$1234
		LDX	ADDRESS
		LDX	1234,Y
		LDX	$1234,Y
		LDX	ADDRESS,Y

STX:		STX	12
		STX	$12
		STX	DATA8
		STX	12,Y
		STX	$12,Y
;	STX	DATA8,Y
;	STX	ADDRESS,Y
		STX	1234
		STX	$1234
		STX	ADDRESS

LDY:		LDY	#12
		LDY	#$12
		LDY	#DATA8
		LDY	12
		LDY	$12
		LDY	DATA8
		LDY	12,X
		LDY	$12,X
		LDY	DATA8,X
		LDY	1234
		LDY	$1234
		LDY	ADDRESS
		LDY	1234,X
		LDY	$1234,X
		LDY	ADDRESS,X

STY:		STY	12
		STY	$12
		STY	DATA8
		STY	12,X
		STY	$12,X
		STY	DATA8,X
		STY	DD,X
		STY	1234
		STY	$1234
		STY	ADDRESS

ADC:		ADC	#12
		ADC	#$12
		ADC	#DATA8
		ADC	12
		ADC	$12
		ADC	DATA8
		ADC	12,X
		ADC	$12,X
		ADC	DATA8,X
		ADC	(12,X)
		ADC	($12,X)
		ADC	(DATA8,X)
		ADC	(12),Y
		ADC	($12),Y
		ADC	(DATA8),Y
		ADC	1234
		ADC	$1234
		ADC	ADDRESS
		ADC	1234,X
		ADC	$1234,X
		ADC	ADDRESS,X
		ADC	1234,Y
		ADC	$1234,Y
		ADC	ADDRESS,Y

AND:		AND	#12
		AND	#$12
		AND	#DATA8
		AND	12
		AND	$12
		AND	DATA8
		AND	12,X
		AND	$12,X
		AND	DATA8,X
		AND	(12,X)
		AND	($12,X)
		AND	(DATA8,X)
		AND	(12),Y
		AND	($12),Y
		AND	(DATA8),Y
		AND	1234
		AND	$1234
		AND	ADDRESS
		AND	1234,X
		AND	$1234,X
		AND	ADDRESS,X
		AND	1234,Y
		AND	$1234,Y
		AND	ADDRESS,Y

BIT:		BIT	12
		BIT	$12
		BIT	DATA8
		BIT	1234
		BIT	$1234
		BIT	ADDRESS

CMP:		CMP	#12
		CMP	#$12
		CMP	#DATA8
		CMP	12
		CMP	$12
		CMP	DATA8
		CMP	12,X
		CMP	$12,X
		CMP	DATA8,X
		CMP	(12,X)
		CMP	($12,X)
		CMP	(DATA8,X)
		CMP	(12),Y
		CMP	($12),Y
		CMP	(DATA8),Y
		CMP	1234
		CMP	$1234
		CMP	ADDRESS
		CMP	1234,X
		CMP	$1234,X
		CMP	ADDRESS,X
		CMP	1234,Y
		CMP	$1234,Y
		CMP	ADDRESS,Y

EOR:		EOR	#12
		EOR	#$12
		EOR	#DATA8
		EOR	12
		EOR	$12
		EOR	DATA8
		EOR	12,X
		EOR	$12,X
		EOR	DATA8,X
		EOR	(12,X)
		EOR	($12,X)
		EOR	(DATA8,X)
		EOR	(12),Y
		EOR	($12),Y
		EOR	(DATA8),Y
		EOR	1234
		EOR	$1234
		EOR	ADDRESS
		EOR	1234,X
		EOR	$1234,X
		EOR	ADDRESS,X
		EOR	1234,Y
		EOR	$1234,Y
		EOR	ADDRESS,Y

ORA:		ORA	#12
		ORA	#$12
		ORA	#DATA8
		ORA	12
		ORA	$12
		ORA	DATA8
		ORA	12,X
		ORA	$12,X
		ORA	DATA8,X
		ORA	(12,X)
		ORA	($12,X)
		ORA	(DATA8,X)
		ORA	(12),Y
		ORA	($12),Y
		ORA	(DATA8),Y
		ORA	1234
		ORA	$1234
		ORA	ADDRESS
		ORA	1234,X
		ORA	$1234,X
		ORA	ADDRESS,X
		ORA	1234,Y
		ORA	$1234,Y
		ORA	ADDRESS,Y

SBC:		SBC	#12
		SBC	#$12
		SBC	#DATA8
		SBC	12
		SBC	$12
		SBC	DATA8
		SBC	12,X
		SBC	$12,X
		SBC	DATA8,X
		SBC	(12,X)
		SBC	($12,X)
		SBC	(DATA8,X)
		SBC	(12),Y
		SBC	($12),Y
		SBC	(DATA8),Y
		SBC	1234
		SBC	$1234
		SBC	ADDRESS
		SBC	1234,X
		SBC	$1234,X
		SBC	ADDRESS,X
		SBC	1234,Y
		SBC	$1234,Y
		SBC	ADDRESS,Y

INC:		INC	12
		INC	$12
		INC	DATA8
		INC	12,X
		INC	$12,X
		INC	DATA8,X
		INC	1234
		INC	$1234
		INC	ADDRESS
		INC	1234,X
		INC	$1234,X
		INC	ADDRESS,X

DEC:		DEC	12
		DEC	$12
		DEC	DATA8
		DEC	12,X
		DEC	$12,X
		DEC	DATA8,X
		DEC	1234
		DEC	$1234
		DEC	ADDRESS
		DEC	1234,X
		DEC	$1324,X
		DEC	ADDRESS,X

CPX:		CPX	12
		CPX	$12
		CPX	DATA8
		CPX	1234
		CPX	$1234
		CPX	ADDRESS

CPY:		CPY	12
		CPY	$12
		CPY	DATA8
		CPY	1234
		CPY	$1234
		CPY	ADDRESS

ROL:		ROL	A
		ROL	12
		ROL	$12
		ROL	DATA8
		ROL	12,X
		ROL	$12,X
		ROL	DATA8,X
		ROL	1234
		ROL	$1234
		ROL	ADDRESS
		ROL	1234,X
		ROL	$1234,X
		ROL	ADDRESS,X

ROR:		ROR	A
		ROR	12
		ROR	$12
		ROR	DATA8
		ROR	12,X
		ROR	$12,X
		ROR	DATA8,X
		ROR	1234
		ROR	$1234
		ROR	ADDRESS
		ROR	1234,X
		ROR	$1234,X
		ROR	ADDRESS,X

ASL:		ASL	A
		ASL	12
		ASL	$12
		ASL	DATA8
		ASL	12,X
		ASL	$12,X
		ASL	DATA8,X
		ASL	1234
		ASL	$1234
		ASL	ADDRESS
		ASL	1234,X
		ASL	$1234,X
		ASL	ADDRESS,X

LSR:		LSR	A
		LSR	12
		LSR	$12
		LSR	DATA8
		LSR	12,X
		LSR	$12,X
		LSR	DATA8,X
		LSR	1234
		LSR	$1234
		LSR	ADDRESS
		LSR	1234,X
		LSR	$1234,X
		LSR	ADDRESS,X

JMP:		JMP	12
		JMP	$12
		JMP	DATA8
		JMP	1234
		JMP	$1234
		JMP	ADDRESS
		JMP	(12)
		JMP	($12)
		JMP	(DATA8)
		JMP	(1234)
		JMP	($1234)
		JMP	(ADDRESS)

BCC:		BCC	12
		BCC	$12
		BCC	BCC

BCS:		BCS	12
		BCS	$12
		BCS	BCC

BEQ:		BEQ	12
		BEQ	$12
		BEQ	BCC

BMI:		BMI	12
		BMI	$12
		BMI	BCC

BNE:		BNE	12
		BNE	$12
		BNE	BCC

BPL:		BPL	12
		BPL	$12
		BPL	BCC

BVC:		BVC	12
		BVC	$12
		BVC	BCC

BVS:		BVS	12
		BVS	$12
		BVS	BCC

JSR:		JSR	12
		JSR	$12
		JSR	ADDRESS

RTS:		RTS

		RTS			COMMENT TEST

TAX:		TAX
		TAX			COMMENT TEST

TXA:		TXA
		TXA			CT

TAY:		TAY
		TAY			CT

TYA:		TYA
		TYA			CT

TSX:		TSX
		TSX			CT

TXS:		TXS
		TXS			CT

DEX:		DEX
		DEX			CT

DEY:		DEY
		DEY			CT

INX:		INX
		INX			CT

INY:		INY
		INY			CT

PHA:		PHA
		PHA			CT

PLA:		PLA
		PLA			CT

PHP:		PHP
		PHP			CT

PLP:		PLP
		PLP			CT

CLI:		CLI
		CLI			CT

SEI:		SEI
		SEI			CT

RTI:		RTI
		RTI			CT

BRK:		BRK

CLC:		CLC
		CLC			CT

SEC:		SEC
		SEC			CT

CLD:		CLD
		CLD			CT

SED:		SED
		SED			CT

CLV:		CLV
		CLV			CT

NOP:		NOP
		NOP			CT

LABEL
		INCLUDE mac.asm

		.END
