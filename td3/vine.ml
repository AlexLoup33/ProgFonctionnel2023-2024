type region = Medoc | Graves | Alsace | Beaujolais | Touraine | Bourgogne

type color = Blanc | Rouge | Rose

type vine = region * color * int

let region_of vine =
  match vine with
  | (r, _, _) -> r

let color_of vine =
  match vine with
  | (_, c, _) -> c

let year_of vine =
  match vine with
  | (_, _, y) -> y

let bordeaux_p vine = 
  match region_of vine with
  | r when r = Medoc || r = Graves -> true
  | _ -> false


let has_color_p vine color =
  match color_of vine with
  | c when c = color -> true
  | _ -> false

let after_year_p vine year =
  match year_of vine with
  | y when y > year -> true
  | _ -> false
