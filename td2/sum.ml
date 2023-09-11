let rec sum n p =
  if n > p then 0 else
  if n = p then p else
  n + sum (n + 1) p;;