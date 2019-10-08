let length ls = let rec aux n l = 
    match l with
    | [] -> n
    | _::xs -> aux (n+1) xs
    in aux 0 ls
