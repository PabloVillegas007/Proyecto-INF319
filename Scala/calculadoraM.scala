import Array._
val a = Array(Array(1,2,3),Array(4,5,6),Array(7,8,9))
val b = Array(Array(4,1,3),Array(1,3,9),Array(2,2,2))

print("Matriz A : \n")
for (i <- 0 to 2) {
    for ( j <- 0 to 2) {
        print(" " +  a(i)(j));
    }
    println();
 }
 print("\nMatriz B : \n")
 for (i <- 0 to 2) {
    for ( j <- 0 to 2) {
        print(" " +  b(i)(j));
    }
    println();
}

def sumaM(x: Array [Array [Int]] , y:Array [Array [Int]]) : Array [Array [Int]]  = {
	val aux = ofDim[Int](3,3)	
	for (i <- 0 to 2) {
  		for ( j <- 0 to 2) {
        	aux(i)(j) = x(i)(j) + y(i)(j)
    	}
	}
	return aux
}
def restaM(x: Array [Array [Int]] , y:Array [Array [Int]]) : Array [Array [Int]]  = {
	val aux = ofDim[Int](3,3)	
	for (i <- 0 to 2) {
  		for ( j <- 0 to 2) {
        	aux(i)(j) = x(i)(j) - y(i)(j)
    	}
	}
	return aux
}
def productoM(x: Array [Array [Int]] , y:Array [Array [Int]]) : Array [Array [Int]]  = {
	val aux = ofDim[Int](3,3)	
	for (i <- 0 to 2) {
		var c = 0
		while(c<3){
			var suma = 0
			for ( j <- 0 to 2) {
        		suma = suma + (x(i)(j) * y(j)(c))
    		}	
    		aux(i)(c) = suma
    		c =  c + 1
		}
	}
	return aux
}

def calculadoraM(x: Array [Array [Int]] , y:Array [Array [Int]], f:(Array [Array [Int]], Array [Array [Int]])
    =>Array [Array [Int]]):Array [Array [Int]] = f(x,y);

val res1 = calculadoraM(a,b,sumaM)
val res2 = calculadoraM(a,b,restaM)
val res3 = calculadoraM(a,b,productoM)


print("\nSuma de Matrices : \n")
for (i <- 0 to 2) {
    for ( j <- 0 to 2) {
        print(" " +  res1(i)(j));
    }
    println();
}

print("\nResta de las Matrices : \n")
for (i <- 0 to 2) {
    for ( j <- 0 to 2) {
        print(" " +  res2(i)(j));
    }
    println();
}
print("\nProducto de las Matrices : \n")
for (i <- 0 to 2) {
    for ( j <- 0 to 2) {
        print(" " +  res3(i)(j));
    }
    println();
}