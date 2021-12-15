<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%! public int factorial (int numero) {
	  if (numero==0)
		 return 1;
	  else
		return numero * factorial(numero-1);
	}
	public String fibonaci(int h){
		String se = "";
		int a, b, i, auxiliar;
		a = 0;
		b = 1; 
		for (i = 0; i < h; i++)  
		{
		    auxiliar = a;
		    a = b; 
		    b = auxiliar + a;
		    se = se + a + ", ";
		}
		return se;
	}
	
	public int tetranaci (int x){ 
		if(x == 0)
			return 0;
		if(x == 1)
			return 1;
		if(x == 2)
			return 1;
		if (x==3)
			return 2;
		else
			return tetranaci(x-1) + tetranaci(x-2) + tetranaci(x-3) + tetranaci(x-4);
	}
	public interface Function{
		int term(int a, int b);
	}
	
	
	double suma(double a, double b){
		return a+b;
	};
	double resta(double a, double b){
		return a-b;
	};
	double producto(double a, double b){
		return a*b;
	};
	double division(double a, double b){
		return a/b;
	};
	double calculadora(double aa, double bb, String cad){
		switch(cad){
		case "suma":
			return suma(aa,bb);
		case "resta":
			return resta(aa,bb);
		case "producto":
			return producto(aa,bb);
		case "division":
			return division(aa,bb);
		default:
			return 0;
		}	
	}
	public int[][] sumaM(int [][] a, int [][] b){
		int [][] c = new int[3][3];
		for(int i=0; i<3; i++){
			for(int j=0; j<3; j++){
				c[i][j] = a[i][j] + b[i][j];
			}	
		}
		return c;
	}
	public int[][] restaM(int [][] a, int [][] b){
		int [][] c = new int[3][3];
		for(int i=0; i<3; i++){
			for(int j=0; j<3; j++){
				c[i][j] = a[i][j] - b[i][j];
			}	
		}
		return c;
	}
	public int[][] productoM(int [][] a, int [][] b){
		int [][] c = new int[3][3];
		int suma;
		for(int i=0; i<3; i++){
			int x = 0;
			while(x < 3){
				suma = 0;
				for(int j=0; j<3; j++){
					suma = suma + (a[i][j] * b[j][x]);
				}
				c[i][x] = suma;
				x++;
			}
				
		}
		return c;
	}
	
	public String mata(int [][]e){
		String cad = "[";
		for(int i=0; i<3; i++){
			cad = cad + "[";
			for(int j=0; j<3; j++){
				cad = cad + e[i][j] + ", "; 
			}	
			cad = cad + "], ";
		}
		cad = cad + "]";
		return cad;
	}
	
	
	int [][] ma = {{1,2,3}, {4,5,6},{7,8,9}};
	int [][] mb = {{2,1,3},{5,1,2},{6,7,3}};
	
%>
<%
	/*Factorial*/
	String caja1 = mata(ma); 
	String caja2 = mata(mb);
	int numero1 = Integer.parseInt(request.getParameter("nro1"));
	/*Fibonacci*/
	int numero2 = Integer.parseInt(request.getParameter("nro2"));
	/*Tetranaci*/
	int numero3 = Integer.parseInt(request.getParameter("nro3"));
	/*Calculadora*/
	int numero41 = Integer.parseInt(request.getParameter("nro41"));
	int numero42 = Integer.parseInt(request.getParameter("nro42"));
	/*matrices*/
	String numero51 = request.getParameter("nro51");
	String numero52 = request.getParameter("nro52");
	
	
	/*Mostrando resultados*/
	out.println("\nEl factorial de  : "+ numero1 +"  es: "  + factorial(numero1) + "<br>");
	out.println("\nLa serie Fibonaci hasta :  " + numero2 + "  es: "+ fibonaci(numero2) + "<br>");
	out.println("Serie tetranaci nro:  "+ numero3 + "   es :" + tetranaci(numero3) + "<br>");
	out.println("La suma de : " + numero41 + " + " + numero42 + " es: "+ calculadora(numero41,numero42,"suma") + "<br>");
	out.println("La resta de : " + numero41 + " - " + numero42 + " es: "+ calculadora(numero41,numero42,"resta")+ "<br>");
	out.println("El producto de : " + numero41 + " * " + numero42 + " es: "+ calculadora(numero41,numero42,"producto")+ "<br>");
	out.println("La division de : " + numero41 + " / " + numero42 + " es: "+ calculadora(numero41,numero42,"division") + "<br>");

	out.println("Matriz A : " + caja1 + "<br>");
	out.println("Matriz B : " + caja2 + "<br>");
	int [][] ff = sumaM(ma,mb);
	int [][] fff = restaM(ma,mb);
	int [][] ffff = productoM(ma,mb);
	out.println("Suma de Matrices = " + mata(ff) + "<br>");
	out.println("Resta de Matrices = " + mata(fff) + "<br>");
	out.println("Producto de Matrices = " + mata(ffff) + "<br>");
	
	
%>
</head>
<body>
<h4> 


</html>