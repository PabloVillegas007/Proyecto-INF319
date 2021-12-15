val suma2:(Int, Int)=> Int = (x,y)=>x+y
val resta2:(Int, Int)=> Int = (x,y)=>x-y
val producto2:(Int, Int)=> Int = (x,y)=>x*y
val division2:(Int, Int)=> Int = (x,y)=>x/y

def calculadora2(x:Int, y:Int, f:(Int, Int)=>Int):Int = f(x,y);


print ("La suma es : "+calculadora2(16,4,(x,y)=> suma2(x,y))+"\n")
print ("La resta es : "+calculadora2(16,4,(x,y)=> resta2(x,y))+"\n")
print ("El producto es : "+calculadora2(16,4,(x,y)=> producto2(x,y))+"\n")
print ("La division es : "+calculadora2(16,4,(x,y)=> division2(x,y))+"\n")

