#insert waves
add wave in_a
add wave in_b
add wave opcode
add wave alu_out
add wave alu_carry
add wave alu_zero

#Invalid Opcode
#-> alu_out = 16'h00
#-> alu_carry = 0
#-> alu_zero = 1
force opcode 16#0
force in_a  16#23
force in_b  16#23
run 1000

#add (alu_carry is low AND alu_zero is low)
#-> alu_out = 16'h40
#-> alu_carry = 0
#-> alu_zero = 0
force opcode 16#1
force in_a     16#20
force in_b     16#20
run 1000

#add (alu_carry flag high)
#-> alu_out = 16'hE4
#-> alu_carry = 1
#-> alu_zero = 0;
force opcode 16#1
force in_a     16#F2
force in_b     16#F2
run 1000

#add (alu_zero flag high)
#-> alu_out = 16'h00
#-> alu_carry = 0
#-> alu_zero = 1
force opcode 16#1
force in_a     16#00
force in_b     16#00
run 1000

#add (alu_zero is X)
#-> alu_out = 16'hXX Note: If we have an unknown value, we can't perform the operation
#-> alu_carry = 0
#-> alu_zero = X
force opcode 16#1
force in_a     16#00
force in_b     16#0X
run 1000

#subtract
#-> alu_out = 16'hEA
#-> alu_carry = 0
#-> alu_zero = 0
force opcode 16#2
force in_a     16#F0
force in_b     16#06
run 1000

#Increment
#-> alu_out = 16'h01
#-> alu_carry = 0
#-> alu_zero = 0
force opcode 16#3
force in_a     16#00
force in_b     16#XX
run 1000

#Decrement
#-> alu_out = 16'h01
#-> alu_carry = 0
#-> alu_zero = 0
force opcode 16#4
force in_a     16#02
force in_b     16#XX
run 1000

#OR
#-> alu_out = 16'h33
#-> alu_carry = 0
#-> alu_zero = 0
force opcode 16#5
force in_a     16#22
force in_b     16#33
run 1000

#AND
#-> alu_out = 16'h21
#-> alu_carry = 0
#-> alu_zero = 0
force opcode 16#6
force in_a     16#21
force in_b     16#31
run 1000

#XOR
#-> alu_out = 16'h76
#-> alu_carry = 0
#-> alu_zero = 0
force opcode 16#7
force in_a     16#67
force in_b     16#11
run 1000

#Shift Right
#-> alu_out = 16'h03
#-> alu_carry = 0
#-> alu_zero = 0
force opcode 16#8
force in_a     16#07
force in_b     16#XX
run 1000

#Shift left
#-> alu_out = 16'h24
#-> alu_carry = 0
#-> alu_zero = 0
force opcode 16#9
force in_a     16#12
force in_b     16#XX
run 1000

#onescomp
#-> alu_out = 16'h66
#-> alu_carry = 0
#-> alu_zero = 0
force opcode 16#A
force in_a     16#99
force in_b     16#XX
run 1000

#twoscomp
#-> alu_out = 16'h60
#-> alu_carry = 1
#-> alu_zero = 0
force opcode 16#B
force in_a     16#A0
force in_b     16#XX
run 1000
