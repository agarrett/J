NB.Anscombe's quartet

NB. https://en.m.wikipedia.org/wiki/Anscombe%27s_quartet

x1=: 10.00 8.00 13.00 9.00 11.00 14.00 6.00 4.00 12.00 7.00 5.00
y1=: 8.04 6.95 7.58 8.81 8.33 9.96 7.24 4.26 10.84 4.82 5.68

xsq=:x1^2
xy=:x1*y1

NB. Σ
sx=: +/ x1
sy=: +/ y1
sxsq=: +/ xsq
sxy=: +/ xy

N=:#x1
m=: ((N*sxy) - (sx*sy))%((N*sxsq) - (sx^2))
b=:(sy - (m*sx))%N

f=: monad define
  (m * y) + b
)

'dot ; title Anscombe Linear Regressions; pensize 3; itemcolor DARKBLUE;  text 825 125 @ADG_is_me;' plot x1;y1

'line ; title Anscombe Linear Regressions; pensize 3; itemcolor BLACK;  text 825 125 @ADG_is_me;' plot f i.14

NB. Combined plot
   pd 'reset'
   pd 'type dot'
   pd 'title Anscombe Linear Regression (Least Squares)'
   pd 'pensize 11'
   pd 'itemcolor DARKCYAN'
   pd 'text 805 125 @ALEXGARRETT'
   pd x1;y1
   pd 'type line'
   pd 'itemcolor BLACK'
   pd 'pensize 3'
   pd f i.16
   pd 'eps'
