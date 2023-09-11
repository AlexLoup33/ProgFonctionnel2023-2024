let rec op_prod n p f op neutral = 
  if n > p then neutral else
    op (f n) (op_prod (n+1) p f op neutral);;