function raiz = bissecao (a, b, es, n)
  #f = @(x) sin(10*x) + cos(3*x);
  f = @(x) -12-21*x +18*x^2 - 2.75*x^3
  
  #f = @(x) sin(x)
  
  if (f(a)*f(b) >= 0)
    printf("Nao tem raiz no intervalo")
  else
    for i = 1:n
      c = (a+b)/2;
      resul = f(c);
      if (resul == 0 || c <= es)
        printf("Raiz: %d\n", c)  
        return
      endif
      
      if (f(a)*f(c) < 0)
        b = c;
      else
        a = c;
      endif
    end
    printf("Nao encontrado!\n")
  endif
endfunction