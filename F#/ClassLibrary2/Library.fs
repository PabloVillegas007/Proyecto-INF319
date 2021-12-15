namespace ClassLibrary2

module Say =
    let hello name =
        printfn "Hello %s" name
    let suma x y = x + y
    let resta x y = x - y
    let producto x y = x * y
    let division x y = x / y
    let calculadora = fun a b -> a b 

    let rec factorial n =
        if n < 1 then 1
        else n * factorial(n-1)

    let rec fibonaci n =
        if n = 0 then 0
        else if n=1 then 1
        else (fibonaci(n-1) + fibonaci(n-2))

    let rec tetranaci n =
        if n = 0 then 0
        else if n = 1 then 1
        else if n = 2 then 1
        else if n = 3 then 2
        else tetranaci(n-1) + tetranaci(n-2) + tetranaci(n-3) + tetranaci(n-4)
