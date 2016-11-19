ORG 00h
SJMP MAIN

org 0003H
		ACALL Message 
		;External hardware interrupt 0
reti

org 0013H
		ACALL Message_2 
		;External hardware interrupt 1
reti

MAIN:
			;timer and interrupt setup
			MOV TMOD,#00100001B        
			MOV TH1,#253D           
			MOV SCON,#50H
			SETB TR1
			SETB IE.7
			SETB IE.0
			SETB IE.2
			
			;Infinte loop
			LOOP:SJMP LOOP
			
			;Interrupts are called in this loop

Message:

			;at commands
			MOV A,#"A"
			ACALL SEND
			MOV A,#"T"
			ACALL SEND
			MOV A,#0DH
			ACALL SEND
			ACALL DELAY1
			;line 1
			
			MOV A,#"A"
			ACALL SEND
			MOV A,#"T"
			ACALL SEND
			MOV A,#"+"
			ACALL SEND
			MOV A,#"C"
			ACALL SEND
			MOV A,#"M"
			ACALL SEND
			MOV A,#"G"
			ACALL SEND
			MOV A,#"F"
			ACALL SEND
			MOV A,#"="
			ACALL SEND
			MOV A,#"1"
			ACALL SEND
			MOV A,#0DH
			ACALL SEND
			ACALL DELAY1
			;line 2

			MOV A,#"A"
			ACALL SEND
			MOV A,#"T"
			ACALL SEND
			MOV A,#"+"
			ACALL SEND
			MOV A,#"C"
			ACALL SEND
			MOV A,#"M"
			ACALL SEND
			MOV A,#"G"
			ACALL SEND
			MOV A,#"S"
			ACALL SEND
			MOV A,#"="
			ACALL SEND
			MOV A,#34D
			ACALL SEND
			MOV A,#"+"
			ACALL SEND
			MOV A,#"9"
			ACALL SEND
			MOV A,#"1"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#34D
			ACALL SEND
			MOV A,#0DH
			ACALL SEND
			ACALL DELAY1
			;line 3
			
			MOV A,#"C"
			ACALL SEND
			MOV A,#"l"
			ACALL SEND
			MOV A,#"a"
			ACALL SEND
			MOV A,#"s"
			ACALL SEND
			MOV A,#"s"
			ACALL SEND
			MOV A,#" "
			ACALL SEND
			MOV A,#"S"
			ACALL SEND
			MOV A,#"t"
			ACALL SEND
			MOV A,#"a"
			ACALL SEND
			MOV A,#"r"
			ACALL SEND
			MOV A,#"t"
			ACALL SEND
			MOV A,#"s"
			ACALL SEND
			ACALL DELAY1
			;line 4

			MOV A,#1AH
			ACALL SEND
			ACALL DELAY1
			ACALL DELAY1
			
			;send to number **********
			MOV A,#"A"
			ACALL SEND
			MOV A,#"T"
			ACALL SEND
			MOV A,#"+"
			ACALL SEND
			MOV A,#"C"
			ACALL SEND
			MOV A,#"M"
			ACALL SEND
			MOV A,#"G"
			ACALL SEND
			MOV A,#"F"
			ACALL SEND
			MOV A,#"="
			ACALL SEND
			MOV A,#"1"
			ACALL SEND
			MOV A,#0DH
			ACALL SEND
			ACALL DELAY1
			;line 2

			MOV A,#"A"
			ACALL SEND
			MOV A,#"T"
			ACALL SEND
			MOV A,#"+"
			ACALL SEND
			MOV A,#"C"
			ACALL SEND
			MOV A,#"M"
			ACALL SEND
			MOV A,#"G"
			ACALL SEND
			MOV A,#"S"
			ACALL SEND
			MOV A,#"="
			ACALL SEND
			MOV A,#34D
			ACALL SEND
			MOV A,#"+"
			ACALL SEND
			MOV A,#"9"
			ACALL SEND
			MOV A,#"1"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#34D
			ACALL SEND
			MOV A,#0DH
			ACALL SEND
			ACALL DELAY1
			;line 3
			
			MOV A,#"C"
			ACALL SEND
			MOV A,#"l"
			ACALL SEND
			MOV A,#"a"
			ACALL SEND
			MOV A,#"s"
			ACALL SEND
			MOV A,#"s"
			ACALL SEND
			MOV A,#" "
			ACALL SEND
			MOV A,#"S"
			ACALL SEND
			MOV A,#"t"
			ACALL SEND
			MOV A,#"a"
			ACALL SEND
			MOV A,#"r"
			ACALL SEND
			MOV A,#"t"
			ACALL SEND
			MOV A,#"s"
			ACALL SEND
			ACALL DELAY1
			;line 4
			
			MOV A,#1AH
			ACALL SEND
			ACALL DELAY1
			
			;send to number **********
			MOV A,#"A"
			ACALL SEND
			MOV A,#"T"
			ACALL SEND
			MOV A,#"+"
			ACALL SEND
			MOV A,#"C"
			ACALL SEND
			MOV A,#"M"
			ACALL SEND
			MOV A,#"G"
			ACALL SEND
			MOV A,#"F"
			ACALL SEND
			MOV A,#"="
			ACALL SEND
			MOV A,#"1"
			ACALL SEND
			MOV A,#0DH
			ACALL SEND
			ACALL DELAY1
			;line 2
			
			MOV A,#"A"
			ACALL SEND
			MOV A,#"T"
			ACALL SEND
			MOV A,#"+"
			ACALL SEND
			MOV A,#"C"
			ACALL SEND
			MOV A,#"M"
			ACALL SEND
			MOV A,#"G"
			ACALL SEND
			MOV A,#"S"
			ACALL SEND
			MOV A,#"="
			ACALL SEND
			MOV A,#34D
			ACALL SEND
			MOV A,#"+"
			ACALL SEND
			MOV A,#"9"
			ACALL SEND
			MOV A,#"1"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#34D
			ACALL SEND
			MOV A,#0DH
			ACALL SEND
			ACALL DELAY1
			;line 3
			
			MOV A,#"C"
			ACALL SEND
			MOV A,#"l"
			ACALL SEND
			MOV A,#"a"
			ACALL SEND
			MOV A,#"s"
			ACALL SEND
			MOV A,#"s"
			ACALL SEND
			MOV A,#" "
			ACALL SEND
			MOV A,#"S"
			ACALL SEND
			MOV A,#"t"
			ACALL SEND
			MOV A,#"a"
			ACALL SEND
			MOV A,#"r"
			ACALL SEND
			MOV A,#"t"
			ACALL SEND
			MOV A,#"s"
			ACALL SEND
			ACALL DELAY1
			;line 4
			
			MOV A,#1AH
			ACALL SEND
			ACALL DELAY1
			
			RET





Message_2:
			MOV A,#"A"
			ACALL SEND
			MOV A,#"T"
			ACALL SEND
			MOV A,#0DH
			ACALL SEND
			ACALL DELAY1
			;line 1
			
			MOV A,#"A"
			ACALL SEND
			MOV A,#"T"
			ACALL SEND
			MOV A,#"+"
			ACALL SEND
			MOV A,#"C"
			ACALL SEND
			MOV A,#"M"
			ACALL SEND
			MOV A,#"G"
			ACALL SEND
			MOV A,#"F"
			ACALL SEND
			MOV A,#"="
			ACALL SEND
			MOV A,#"1"
			ACALL SEND
			MOV A,#0DH
			ACALL SEND
			ACALL DELAY1
			;line 2
			
			MOV A,#"A"
			ACALL SEND
			MOV A,#"T"
			ACALL SEND
			MOV A,#"+"
			ACALL SEND
			MOV A,#"C"
			ACALL SEND
			MOV A,#"M"
			ACALL SEND
			MOV A,#"G"
			ACALL SEND
			MOV A,#"S"
			ACALL SEND
			MOV A,#"="
			ACALL SEND
			MOV A,#34D
			ACALL SEND
			MOV A,#"+"
			ACALL SEND
			MOV A,#"9"
			ACALL SEND
			MOV A,#"1"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#34D
			ACALL SEND
			MOV A,#0DH
			ACALL SEND
			ACALL DELAY1
			;line 3
			
			MOV A,#"T"
			ACALL SEND
			MOV A,#"e"
			ACALL SEND
			MOV A,#"s"
			ACALL SEND
			MOV A,#"t"
			ACALL SEND
			MOV A,#" "
			ACALL SEND
			MOV A,#"S"
			ACALL SEND
			MOV A,#"t"
			ACALL SEND
			MOV A,#"a"
			ACALL SEND
			MOV A,#"r"
			ACALL SEND
			MOV A,#"t"
			ACALL SEND
			MOV A,#"s"
			ACALL SEND
			ACALL DELAY1
			;line 4
			
			MOV A,#1AH
			ACALL SEND
			ACALL DELAY1
			ACALL DELAY1
			

			;send to number **********
			MOV A,#"A"
			ACALL SEND
			MOV A,#"T"
			ACALL SEND
			MOV A,#"+"
			ACALL SEND
			MOV A,#"C"
			ACALL SEND
			MOV A,#"M"
			ACALL SEND
			MOV A,#"G"
			ACALL SEND
			MOV A,#"F"
			ACALL SEND
			MOV A,#"="
			ACALL SEND
			MOV A,#"1"
			ACALL SEND
			MOV A,#0DH
			ACALL SEND
			ACALL DELAY1
			;line 2
			
			MOV A,#"A"
			ACALL SEND
			MOV A,#"T"
			ACALL SEND
			MOV A,#"+"
			ACALL SEND
			MOV A,#"C"
			ACALL SEND
			MOV A,#"M"
			ACALL SEND
			MOV A,#"G"
			ACALL SEND
			MOV A,#"S"
			ACALL SEND
			MOV A,#"="
			ACALL SEND
			MOV A,#34D
			ACALL SEND
			MOV A,#"+"
			ACALL SEND
			MOV A,#"9"
			ACALL SEND
			MOV A,#"1"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#34D
			ACALL SEND
			MOV A,#0DH
			ACALL SEND
			ACALL DELAY1
			;line 3
			
			MOV A,#"T"
			ACALL SEND
			MOV A,#"e"
			ACALL SEND
			MOV A,#"s"
			ACALL SEND
			MOV A,#"t"
			ACALL SEND
			MOV A,#" "
			ACALL SEND
			MOV A,#"S"
			ACALL SEND
			MOV A,#"t"
			ACALL SEND
			MOV A,#"a"
			ACALL SEND
			MOV A,#"r"
			ACALL SEND
			MOV A,#"t"
			ACALL SEND
			MOV A,#"s"
			ACALL SEND
			ACALL DELAY1
			;line 4
			
			MOV A,#1AH
			ACALL SEND
			ACALL DELAY1
			
			;send to number **********
			MOV A,#"A"
			ACALL SEND
			MOV A,#"T"
			ACALL SEND
			MOV A,#"+"
			ACALL SEND
			MOV A,#"C"
			ACALL SEND
			MOV A,#"M"
			ACALL SEND
			MOV A,#"G"
			ACALL SEND
			MOV A,#"F"
			ACALL SEND
			MOV A,#"="
			ACALL SEND
			MOV A,#"1"
			ACALL SEND
			MOV A,#0DH
			ACALL SEND
			ACALL DELAY1
			;line 2
			
			MOV A,#"A"
			ACALL SEND
			MOV A,#"T"
			ACALL SEND
			MOV A,#"+"
			ACALL SEND
			MOV A,#"C"
			ACALL SEND
			MOV A,#"M"
			ACALL SEND
			MOV A,#"G"
			ACALL SEND
			MOV A,#"S"
			ACALL SEND
			MOV A,#"="
			ACALL SEND
			MOV A,#34D
			ACALL SEND
			MOV A,#"+"
			ACALL SEND
			MOV A,#"9"
			ACALL SEND
			MOV A,#"1"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#"*"
			ACALL SEND
			MOV A,#34D
			ACALL SEND
			MOV A,#0DH
			ACALL SEND
			ACALL DELAY1
			;line 3
			
			MOV A,#"T"
			ACALL SEND
			MOV A,#"e"
			ACALL SEND
			MOV A,#"s"
			ACALL SEND
			MOV A,#"t"
			ACALL SEND
			MOV A,#" "
			ACALL SEND
			MOV A,#"S"
			ACALL SEND
			MOV A,#"t"
			ACALL SEND
			MOV A,#"a"
			ACALL SEND
			MOV A,#"r"
			ACALL SEND
			MOV A,#"t"
			ACALL SEND
			MOV A,#"s"
			ACALL SEND
			ACALL DELAY1
			;line 4
			
			MOV A,#1AH
			ACALL SEND
			ACALL DELAY1

			RET










SEND:	CLR TI
			MOV SBUF,A
WAIT:	JNB TI,WAIT
			RET
DELAY1:MOV R6,#15D       
BACK: 	MOV TH0,#00000000B   
			MOV TL0,#00000000B   
			SETB TR0             
HERE: 	JNB TF0,HERE        
			CLR TR0              
			CLR TF0             
			DJNZ R6,BACK
			RET  
END