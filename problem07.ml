type 'a node =
    | One of 'a 
    | Many of 'a node list;;

let rec flatten l = let rec aux ls acc = 
    match ls with
    | [] -> List.rev(acc)
    | One x::xs -> aux xs x::acc 
    | Many x::xs -> aux xs ((aux x [])::acc)
    in aux l []
