#1) O que acontece ao criar uma matriz com n�meros e strings?

x <- matrix(1:10, nrow = 4, ncol=5)
x

y <- matrix(c('a','b','c','d','e','f'),nrow=2,byrow=TRUE)
y

z <- matrix(c(1:10, 'a', 'b', 'c', 'd', 'e'), nrow = 3)
z

class(z)
str(z)

#Automaticamente todos os elementos da matriz s�o convertidos para caracter

#2) Fa�a o que se pede:
#Crie a seguinte matriz de dimens�o 3x500:

A <- matrix(c(1,3,5), nrow = 3, ncol = 500)
A

#Acrescente em A, a 501� coluna.

A <- cbind(A,c(1,3,5))
A

A[2,501]

#Acrescente em A, a 4� linha.

A[2,]

A <- rbind(A,c(1,3,5))
A

#Remova simultaneamente de A as colunas de n�meros 38 � 57, e a 
#linha n�mero 2.
A[2,]

A <- A[-2,-38:-57]
A

A[2,]

#3 Suponha que voc� tenha duas matrizes A e B tais que o n� de colunas da A � igual ao n� de linhas da B. Fa�a
#o produto escalar de uma linha da A (linha 2, por exemplo) por uma coluna da B (coluna 3, por exemplo).

ex1 <- matrix(1:10, nrow = 4, ncol=5)
ex1

ex2 <- matrix(1:10, nrow = 5, ncol=4)
ex2

#Para fazer o produto escalar � necess�rio transformar em vetor

v1 <- as.vector(ex1[2,])
v1

v2 <- as.vector(ex2[,3])
v2

prodEscalar <- v1%*%v2
prodEscalar

#4) O conceito de array generaliza a ideia de matriz. Em uma matriz os 
#elementos s�o organizados em duas dimens�es (linhas e colunas), em um array 
#os elementos podem ser organizados em um n�mero arbitr�rio de dimens�es. 
#Digite no R o comando ?array, rode e inspecione os exemplos contidos na 
#documenta��o.

array(1:24,dim=c(3,4,2))

# A fun��o Array armazena seus dados em mais de duas dimens�es onde nesse 
# exemplo foram criadas 2 matrizes cada uma contendo 3 linhas e 4 colunas


