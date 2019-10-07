let rec last_two l = 
    match l with
    | [] -> None
    | x::[] -> None
    | x::y::[] -> Some (x,y)
    | x::y::xs -> last_two (y::xs)
