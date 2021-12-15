using System;

namespace ClassLibrary1
{
    public class Class1
    {
        Func<double, double, double> suma = (x, y) => x + y;
        Func<double, double, double> resta = (x, y) => x - y;
        Func<double, double, double> producto = (x, y) => x * y;
        Func<double, double, double> division = (x, y) => x / y;

        public int factorial(int n)
        {
            int f = 1;
            for (int i = 1; i<=n; i++)
                f = f * i;
            return f;
        }
        public String fibonacci (int num)
        {
            int a, b, i, auxiliar;
            String cad = "";
            a = 0;
            b = 1;
            for (i = 0; i < num; i++)
            {
                auxiliar = a;
                a = b;
                b = auxiliar + a;
                cad = cad + a + ", ";
            }
            return cad;
        }
        public int tetranaci(int num)
        {
            if (num == 0)
                return 0;
            if (num == 1)
                return 1;
            if (num == 2)
                return 1;
            if (num == 3)
                return 2;
            if (num > 3)
                return tetranaci(num - 1) + tetranaci(num - 2) + tetranaci(num - 3) + tetranaci(num - 4);
            else
                return 0;
        }
    }
    public class Class2
    {
        public Func<double, double, double> suma = (x, y) => x + y;
        public Func<double, double, double> resta = (x, y) => x - y;
        public Func<double, double, double> producto = (x, y) => x * y;
        public Func<double, double, double> division = (x, y) => x / y;
        public double calculadora( double a , double b, Func<double, double, double> func)
        {
            return func(a,b);
        }

    }
    public class Class3
    {
        public int [,] calculadoraM(int [,] a, int[,] b, Func<int[,], int[,],int[,]> funcM)
        {
            return funcM(a,b);
        }
        public int[,] sumar_matrices(int [,] aa, int[,] bb)
        {
            int[,] c = new int[3,3];
            for(int i=0;i<3; i++)
            {
                for (int j = 0; j < 3; j++)
                {
                    c[i,j] = aa[i,j] + bb[i,j];
                }
            }
            return c;
        }
        public int[,] restar_matrices(int[,] aa, int[,] bb)
        {
            int[,] c = new int[3, 3];
            for (int i = 0; i < 3; i++)
            {
                for (int j = 0; j < 3; j++)
                {
                    c[i, j] = aa[i, j] - bb[i, j];
                }
            }
            return c;
        }
        public int[,] producto_matrices(int[,] aa, int[,] bb)
        {
            int[,] c = new int[3, 3];
            int aaa, suma = 0;
            for (int i = 0; i < 3; i++)
            {
                aaa = 0;
                while (aaa < 3)
                {
                    suma = 0;
                    for (int j = 0; j < 3; j++)
                        suma = suma + (aa[i, j] * bb[j, aaa]);
                    c[i, aaa] = suma;
                    aaa++;
                }
            }
            return c;
        }
        public String mat(int [,] x)
        {
            String cad = "[";
            for (int i = 0; i < 3; i++)
            {
                cad = cad + "[";
                for (int j = 0; j < 3; j++)
                {
                    cad = cad + x[i, j] + ", ";
                }
                cad = cad + "]";
            }
            cad = cad + "]";
            return cad;
        }
    }
}
