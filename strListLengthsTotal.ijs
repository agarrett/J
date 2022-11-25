   [l=. 'ada' ;'haskell';  'scala'; 'java'; 'rust'
NB. ┌───┬───────┬─────┬────┬────┐
NB. │ada│haskell│scala│java│rust│
NB. └───┴───────┴─────┴────┴────┘
   [cnt=. $ each l
NB. ┌─┬─┬─┬─┬─┐
NB. │3│7│5│4│4│
NB. └─┴─┴─┴─┴─┘
   +/ ; cnt
23
   
   NB. So a 1 liner?
   
   +/ ; $ each 'ada' ;'haskell'; 'scala'; 'java'; 'rust'
23
   
