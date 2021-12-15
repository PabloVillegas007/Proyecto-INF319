using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public int[,] ma = { { -2,0,1},{ 8,4,3},{ 3,-1,0} };
        public int[,] mb = { { 5,-2,4},{ 0,8,3},{ 1,0,-1} };
        public int[,] mi = { { 1, 0, 0 }, { 0, 1, 0 }, { 0, 0, 1 } };

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ClassLibrary1.Class1 c1 = new ClassLibrary1.Class1();
            int x = Int32.Parse(TextBox1.Text);
            String d = c1.factorial(x).ToString();
            TextBox2.Text = d;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ClassLibrary1.Class1 c2 = new ClassLibrary1.Class1();
            int xx = Int32.Parse(TextBox3.Text);
            String dd = c2.fibonacci(xx).ToString();
            TextBox4.Text = dd;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ClassLibrary1.Class1 c3 = new ClassLibrary1.Class1();
            int xxx = Int32.Parse(TextBox5.Text);
            String ddd = c3.tetranaci(xxx).ToString();
            TextBox6.Text = ddd;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            ClassLibrary1.Class2 o1 = new ClassLibrary1.Class2();
            double a = Double.Parse(TextBox7.Text);
            double b = Double.Parse(TextBox8.Text);
            double r = o1.calculadora(a,b,o1.suma);
            TextBox9.Text = r.ToString();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            ClassLibrary1.Class2 o1 = new ClassLibrary1.Class2();
            double a = Double.Parse(TextBox7.Text);
            double b = Double.Parse(TextBox8.Text);
            double r = o1.calculadora(a, b, o1.resta);
            TextBox9.Text = r.ToString();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            ClassLibrary1.Class2 o1 = new ClassLibrary1.Class2();
            double a = Double.Parse(TextBox7.Text);
            double b = Double.Parse(TextBox8.Text);
            double r = o1.calculadora(a, b, o1.producto);
            TextBox9.Text = r.ToString();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            ClassLibrary1.Class2 o1 = new ClassLibrary1.Class2();
            double a = Double.Parse(TextBox7.Text);
            double b = Double.Parse(TextBox8.Text);
            double r = o1.calculadora(a, b, o1.division);
            TextBox9.Text = r.ToString();
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            ClassLibrary1.Class3 p1 = new ClassLibrary1.Class3();
            TextBox33.Text = p1.mat(ma);
            TextBox34.Text = p1.mat(mb);
            int[,] res = p1.calculadoraM(ma, mb, p1.sumar_matrices);
            TextBox10.Text = res[0,0].ToString();
            TextBox25.Text = res[0,1].ToString();
            TextBox26.Text = res[0,2].ToString();
            TextBox27.Text = res[1,0].ToString();
            TextBox28.Text = res[1,1].ToString();
            TextBox29.Text = res[1,2].ToString();
            TextBox30.Text = res[2,0].ToString();
            TextBox31.Text = res[2,1].ToString();
            TextBox32.Text = res[2,2].ToString();

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button23_Click(object sender, EventArgs e)
        {

        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            int a = int.Parse(TextBox17.Text);
            int b = int.Parse(TextBox18.Text);
            int r = ClassLibrary2.Say.suma(a, b);
            TextBox19.Text = r.ToString();
        }
        protected void Button16_Click(object sender, EventArgs e)
        {
            int a = int.Parse(TextBox17.Text);
            int b = int.Parse(TextBox18.Text);
            int r = ClassLibrary2.Say.resta(a, b);
            TextBox19.Text = r.ToString();
        }
        protected void Button17_Click(object sender, EventArgs e)
        {
            int a = int.Parse(TextBox17.Text);
            int b = int.Parse(TextBox18.Text);
            int r = ClassLibrary2.Say.producto(a, b);
            TextBox19.Text = r.ToString();
        }
        protected void Button18_Click(object sender, EventArgs e)
        {
            int a = int.Parse(TextBox17.Text);
            int b = int.Parse(TextBox18.Text);
            int r = ClassLibrary2.Say.division(a, b);
            TextBox19.Text = r.ToString();
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            ClassLibrary1.Class3 p2 = new ClassLibrary1.Class3();
            TextBox33.Text = p2.mat(ma);
            TextBox34.Text = p2.mat(mb);
            int[,] res = p2.calculadoraM(ma, mb, p2.restar_matrices);
            TextBox10.Text = res[0, 0].ToString();
            TextBox25.Text = res[0, 1].ToString();
            TextBox26.Text = res[0, 2].ToString();
            TextBox27.Text = res[1, 0].ToString();
            TextBox28.Text = res[1, 1].ToString();
            TextBox29.Text = res[1, 2].ToString();
            TextBox30.Text = res[2, 0].ToString();
            TextBox31.Text = res[2, 1].ToString();
            TextBox32.Text = res[2, 2].ToString();

        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            ClassLibrary1.Class3 p3 = new ClassLibrary1.Class3();
            TextBox33.Text = p3.mat(ma);
            TextBox34.Text = p3.mat(mb);
            int[,] res = p3.calculadoraM(ma, mb, p3.producto_matrices);
            TextBox10.Text = res[0, 0].ToString();
            TextBox25.Text = res[0, 1].ToString();
            TextBox26.Text = res[0, 2].ToString();
            TextBox27.Text = res[1, 0].ToString();
            TextBox28.Text = res[1, 1].ToString();
            TextBox29.Text = res[1, 2].ToString();
            TextBox30.Text = res[2, 0].ToString();
            TextBox31.Text = res[2, 1].ToString();
            TextBox32.Text = res[2, 2].ToString();
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            int f = int.Parse(TextBox11.Text);

            int r = ClassLibrary2.Say.factorial(f);
            TextBox12.Text = r.ToString();
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            int z = int.Parse(TextBox13.Text);
            int  zz = ClassLibrary2.Say.fibonaci(z);
            TextBox14.Text = zz.ToString();
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            int w = int.Parse(TextBox15.Text);
            int ww = ClassLibrary2.Say.tetranaci(w);
            TextBox16.Text = ww.ToString();
        }
    }
}