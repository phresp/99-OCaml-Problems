let rev l = let rec aux ls acc =
    match ls with
    | [] -> acc
    | x::xs -> aux xs (x::acc)
    in aux l []
