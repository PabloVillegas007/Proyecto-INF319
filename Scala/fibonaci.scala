def fibonacci(n: Int): Int = {
    if ( n == 0 ) 0
    else if ( n == 1 ) 1
    else fibonacci( n-1 ) + fibonacci( n-2 )

  }

  print ("El fibonacci numero 11 es : "+fibonacci(11)+"\n")