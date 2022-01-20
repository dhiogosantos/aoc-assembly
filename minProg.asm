# minProg.asm
# DESC: apresentação de um programa mínimo em Assembly do MIPS

.data
	# int y;
	y: .space 4
	f1: .float 3.1415
	f2: .double 4.161522
	
	# int v[10] = {0,1,2,3,4,5,6,7,8,9};
	v: .word 0,1,2,3,4,5,6,7,8,9


.text

	# x = (y + z) * (y + z) / (z - y)
	# Assuma que x estah em s0, y em s1 e z em s2.
	
	
	# (y + z)
	add $t0, $s1, $s2
	
	# (y + z) * (y + z)
	mult $t0, $t0
	mflo $t0
	
	# (z - y)
	sub $t1, $s2, $s1
	
	# (y + z) * (y + z) / (z - y)
	div $t0, $t1
	mflo $s0
	
