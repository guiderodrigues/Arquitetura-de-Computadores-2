li x1, 2 #a
li x2, 3 #b
li x3, 0 #c
li x4, 7 #d
li x5, 4

mul x6, x2, x5 #e
add x3, x6, x2
sub x3, x3, x1
andi x1, x2, x3
ori x4, x1, x3
andi x4, x4, x6
srli x3, x6, 2
sub x2, x1, x3