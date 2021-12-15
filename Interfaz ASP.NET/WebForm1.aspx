<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            FUNCIONES EN C#<br />
            El Factorial de&nbsp; :
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            Es:
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Calcular" />
        </div>
        Fibonaci hasta:
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        Serie-&gt;<asp:TextBox ID="TextBox4" runat="server" Width="364px"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Generar" />
        <br />
        Tetranaci numero:
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="Es: "></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" Width="239px"></asp:TextBox>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Generar" />
        <br />
        Numero1:&nbsp;
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Numero 2:"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="+" />
        <asp:Button ID="Button5" runat="server" Text="-" OnClick="Button5_Click" />
        <asp:Button ID="Button6" runat="server" Text="*" OnClick="Button6_Click" />
        <asp:Button ID="Button7" runat="server" Text="/" OnClick="Button7_Click" />
        El Resultado es:
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <br />
        <br />
        Calculadora de Matrices (NOTA. Ingrese la matriz como un listado de numeros, separados por comas)<br />
        Matriz:&nbsp;&nbsp;
        <asp:TextBox ID="TextBox10" runat="server" Width="51px"></asp:TextBox>
        <asp:TextBox ID="TextBox25" runat="server" Width="48px"></asp:TextBox>
        <asp:TextBox ID="TextBox26" runat="server" Width="45px"></asp:TextBox>
        Matriz A:
        <asp:TextBox ID="TextBox33" runat="server" Width="269px"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox27" runat="server" style="margin-left: 55px" Width="50px"></asp:TextBox>
        <asp:TextBox ID="TextBox28" runat="server" Width="48px"></asp:TextBox>
        <asp:TextBox ID="TextBox29" runat="server" Width="46px"></asp:TextBox>
        Matriz B:
        <asp:TextBox ID="TextBox34" runat="server" Width="268px"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox30" runat="server" Width="48px"></asp:TextBox>
        <asp:TextBox ID="TextBox31" runat="server" Width="50px"></asp:TextBox>
        <asp:TextBox ID="TextBox32" runat="server" Width="44px"></asp:TextBox>
        <br />
        <br />
        Operaciones:
        <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Sumar" Width="65px" />
        <asp:Button ID="Button9" runat="server" Text="Restar" OnClick="Button9_Click" />
        <asp:Button ID="Button10" runat="server" Text="Producto" OnClick="Button10_Click" />
        <asp:Button ID="Button11" runat="server" Text="Inversa" />
        <br />
  
        <div>
            FUNCIONES EN F#<br />
            El Factorial de&nbsp; :
            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            Es:
            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            <asp:Button ID="Button12" runat="server" OnClick="Button12_Click" Text="Calcular" />
        </div>
        Fibonaci hasta:
        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
        Serie-&gt;<asp:TextBox ID="TextBox14" runat="server" Width="364px"></asp:TextBox>
        <asp:Button ID="Button13" runat="server" OnClick="Button13_Click" Text="Generar" />
        <br />
        Tetranaci numero:
        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Text="Es: "></asp:Label>
        <asp:TextBox ID="TextBox16" runat="server" Width="239px"></asp:TextBox>
        <asp:Button ID="Button14" runat="server" OnClick="Button14_Click" Text="Generar" />
        <br />
        Numero1:&nbsp;
        <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Text="Numero 2:"></asp:Label>
        <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button15" runat="server" OnClick="Button15_Click" Text="+" />
        <asp:Button ID="Button16" runat="server" Text="-" OnClick="Button16_Click" />
        <asp:Button ID="Button17" runat="server" Text="*" OnClick="Button17_Click" />
        <asp:Button ID="Button18" runat="server" Text="/" OnClick="Button18_Click" />
        El Resultado es:
        <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
        <br />
        <br />
        Calculadora de Matrices (NOTA. Ingrese la matriz como un listado de numeros, separados por comas)<br />
        Matriz:&nbsp;&nbsp;
        <asp:TextBox ID="TextBox20" runat="server" Width="51px"></asp:TextBox>
        <asp:TextBox ID="TextBox21" runat="server" Width="48px"></asp:TextBox>
        <asp:TextBox ID="TextBox22" runat="server" Width="45px"></asp:TextBox>
        Matriz A:
        <asp:TextBox ID="TextBox23" runat="server" Width="269px"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox24" runat="server" style="margin-left: 55px" Width="50px"></asp:TextBox>
        <asp:TextBox ID="TextBox35" runat="server" Width="48px"></asp:TextBox>
        <asp:TextBox ID="TextBox36" runat="server" Width="46px"></asp:TextBox>
        Matriz B:
        <asp:TextBox ID="TextBox37" runat="server" Width="268px"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox38" runat="server" Width="48px"></asp:TextBox>
        <asp:TextBox ID="TextBox39" runat="server" Width="50px"></asp:TextBox>
        <asp:TextBox ID="TextBox40" runat="server" Width="44px"></asp:TextBox>
        <br />
        <br />
        Operaciones:
        <asp:Button ID="Button19" runat="server" OnClick="Button8_Click" Text="Sumar" Width="65px" />
        <asp:Button ID="Button20" runat="server" Text="Restar" OnClick="Button9_Click" />
        <asp:Button ID="Button21" runat="server" Text="Producto" OnClick="Button10_Click" />
        <asp:Button ID="Button22" runat="server" Text="Inversa" />
        <br />
    </form>

    
</body>
</html>
