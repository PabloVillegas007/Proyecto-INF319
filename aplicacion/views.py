from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.
def index(request):
	ma = [[1,2,3], [5,6,7],[7,9,0]]
	mb = [[11,1,2], [1,6,4],[2,3,10]]
	respuesta = calculadora(4,51,suma)
	respuesta2 = calculadora(4,51,resta)
	respuesta3 = calculadora(4,51,producto)
	respuesta4 = calculadora(4,51,division)

	cadena1 = ("la suma de 4 + 51 es: " + str(respuesta) + 
			"<br> " + "La resta de 4 - 51 es : " + str(respuesta2)+
			"<br> " + "El producto de 4 * 51 es : " + str(respuesta3)+ 
			"<br> " + "La division de 4 / 51 es : " + str(respuesta4))

	cadena2 = ("El numero 7 de la serie fibonaci es: 	"+ str(fibonaci(7)))
	cadena3 = ("El numero 11 de la serie tetranaci es: 	"+ str(tetranaci(11)))
	cadena4 = ("El factorial de 7 es: 	"+ str(factorial(7)))
	matrizSuma = sumaM(ma, mb)
	cadena51 = ("matriz A : " + dibujaMatriz(ma) + " + <br>" + "matriz	B: "+ dibujaMatriz(mb)+
			"es: <br><br>" + dibujaMatriz(matrizSuma))
	matrizResta = restaM(ma, mb)
	cadena52 = ("matriz A : " + dibujaMatriz(ma) + " - <br>" + "matriz	B: "+ dibujaMatriz(mb)+
			"es: <br><br>" + dibujaMatriz(matrizResta))
	matrizProducto = productoM(ma, mb)
	cadena53 = ("matriz A : " + dibujaMatriz(ma) + " * <br>" + "matriz	B: "+ dibujaMatriz(mb)+
			"es: <br><br>" + dibujaMatriz(matrizProducto))

	return	HttpResponse(cadena53)		

suma = lambda x,y:x+y
resta = lambda x,y:x-y
producto = lambda x,y:x*y
division = lambda x,y:x/y
def calculadora(x,y,function):
	return function(x,y)
    

def fibonaci(n):
	if n == 0: 
		return 0
	if n == 1:
		return 1
	return fibonaci(n-1) + fibonaci	(n-2)


def tetranaci(n):
	if n == 0: 
		return 0
	if n == 1:
		return 1
	if n == 2:
		return	1
	if n == 3:
		return	2
	return tetranaci(n-1) + tetranaci(n-2) + tetranaci(n-3)+ tetranaci(n-4)

def factorial(n):
	if n == 0:
		return 1
	return	n * factorial(n-1)



def dibujaMatriz(M):
    cad = ""
    for i in range(len(M)):
        cad = cad + "["
        for j in range(len(M[i])):
            cad = cad + (str(M[i][j]) + ", ")
        cad = cad + "]\n"
    return cad


def sumaM(F,G):
	mc=[[0,0,0],[0,0,0],[0,0,0]]
	for i in range(0,3):
		for j in range(0,3):
			mc[i][j] = F[i][j] + G[i][j]
	return mc

def restaM(F,G):
	mc=[[0,0,0],[0,0,0],[0,0,0]]
	for i in range(0,3):
		for j in range(0,3):
			mc[i][j] = F[i][j] - G[i][j]
	return mc


def productoM(F,G):
	mc=[[0,0,0],[0,0,0],[0,0,0]]
	for i in range(0,3):
		c = 0
		while(c<3):
			suma = 0
			for j in range(0,3):
				suma = suma + (F[i][j] * G[j][c])
			mc[i][c] = suma
			c = c + 1
	return mc








