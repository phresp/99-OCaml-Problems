let is_palindrome l = let rec aux ls lr =
    match ls with 
    | [] -> lr
    | x::xs -> aux xs (x::lr)
    in if l = (aux l []) then true else false  
