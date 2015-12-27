type 'a ft_ref = {mutable c: 'a}

let return t = {c = t}

let get t = t.c

let set t a = t.c <- a

let bind t f : 'b ref = f (get t)
