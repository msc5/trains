                         ; NAME: ram.asm
						
						; Edited for ADX65

                        ; This program tests the MPU, EPROM, DISPLAY, and RAM 

                        ; The program loops while putting a number out to DISPLAY

                        ; The DISPLAY counts up in hexadecimal.  RAM is tested by

			; using a subroutine call. Subroutines require the stack.

                        ;

        org $e000       ; NOTE we use $e000 as the base address of the 27C64

                        ; DON'T FORGET TO USE E000 AS THE BASE ADDRESS ON THE EMP-20

                        ;

init    sei             ; turn off interupts

        cld             ; set CPU to the binary mode

        ldx #$ff        ;

        txs             ; load the stack pointer with $ff

        lda #$00        ; set accumulator to 0

                        ;

loop    sta $4000       ; send accumulator to TIL display

                        ;

        jsr delay

        clc

        adc #$01        ; add 1 to the accumulator

                        ;

        jmp loop        ; repeat

			;

delay   inx             ; subroutine to kill time (0.25 second)

        bne delay

        iny

        bne delay

	rts

                        ;

        org $fffc       ; restart vector

        dw init

        end
