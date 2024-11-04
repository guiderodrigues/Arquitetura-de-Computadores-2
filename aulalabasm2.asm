#desvio condicional
beq s0, s2, Label # if s0 = s2 desvia
bne s0, s2, Loop # if s0 != s2 desvia
blt s0, s2, Fim # if s0 < s2 desvia
bge s0, s2, True # if s0 >= s2 desvia
bltu s0, s2, False # mesmo do blt mas desprezando o sinal
bgeu s0, s2, Label # mesmo do bge mas desprezando o sinal

#incondicionais
jal a0, Label # jump de endereço
jal ra, Label # salva o endereço para voltar depois do jump
jal r a0, a1, 0 # nao é usada
j Label # só funciona se salvou onde voltar
ret
#jal ra, Label = jal Label
#ret = jr a

#s0 = (S2 < t2) ? 1 : 0
slt s0, s2, t2
sltu s1, t3, s0
slti s0, s2, 10
sltui sl, t3, 25
/*
Exemplo
if(x==0)
    z = y + 5;
else
    z = y - 7;
*/
x: s0
y: s1
z: s2
beq s0, zero, True
Else: addi s2, s1, -7
j Fim
True: addi s2, s1, 5
Fim: nop

/*
x = 20; y = 10
while(x != y){
    x += 2;
    y += 3;
}
x++;
*/
li s0, 20
li s1, 10
Loop: beq s0, s1, saida
addi s0, s0, 2
addi sl, sl, 3
j Loop
saida: addi s0, s0, 1
nop

//qualquer valor p/ x e a
/*
if(x == 5){
    a += 7;
} else {
    if(8 < a0)
    a += 15;
  }
}
*/
slti 10, s1, 5
beq t0, zero, Fim
Else: blt 8, a0, Verdadeiro
Verdadeiro: addi s1, s1, 15
True: addi s1, s1, 7
Fim: nop

/*
a=0
for(i=0;i<100;i++)
    a+=i;
*/

/*
int A[5] = {1,3,5,7,9}
int B[5] = {2,4,8,10,12}
int C[5]; int k = 0
for(i = 0; i < 5; i++){
    C[i] = A[i] + B[i]
    if(C[i] > 10)
    k++;
}
*/