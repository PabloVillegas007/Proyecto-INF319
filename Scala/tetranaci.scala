def tetranaci(n: Int): Int = {
    if ( n == 1 ) 0
    else if (n==2) 1
    else if (n==3) 1
    else if (n==4) 2
    else tetranaci( n-1 ) + tetranaci( n-2 ) + tetranaci(n-3) + tetranaci(n-4)
  }

  print ("El tetranaci numero 12 es : "+ tetranaci(12)+"\n")