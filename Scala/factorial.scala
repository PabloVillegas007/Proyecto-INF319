def factorial(n: Int): Int = 
    if (n == 0) 1 else n * factorial(n-1)

print ("El factorial de 5 es: "+factorial(5)+"\n")