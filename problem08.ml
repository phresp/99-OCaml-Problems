(* non tail-rekursive
let rec compress l = 
    match l with
    | [] -> [] 
    | x::(y::xs) as r -> if x = y then compress (x::xs) else x::(compress r) 
*)
let rec compress l = let rec aux ls acc = 
    match ls with
    | [] -> List.rev(acc)
    | x::y ->  if x = y then List.rev(acc) else List.rev(y::acc) 
    | x::y::xs-> if x = y then aux (x::xs) acc else aux (y::xs) (x::acc)
    in aux l []
