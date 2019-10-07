let rec at c l = 
    match l with
    | [] -> None
    | x::xs -> if c = 1 then Some x else at (c-1) xs
