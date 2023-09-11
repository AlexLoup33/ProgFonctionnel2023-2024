let rec somme f g i j = 
  if i > j then 0 else f i * g (j - i) + somme f g (i + 1) j;;

let convolution f g = fun n ->
  somme f g 0 n;;