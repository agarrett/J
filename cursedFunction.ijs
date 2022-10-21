sin=: 1&o.
tanh=: 7&o.
cosh=: 6&o.

   f=: monad define
a=. (cosh((y^3) % 4))
b=. sin a
c=. tanh b
n=. c + (y^2)
d=. %: (1+y^2)
n%d
)
   
   plot (i:3j1000);f i:3j1000
