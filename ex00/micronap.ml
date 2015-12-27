let my_sleep () = Unix.sleep 1

let () =
    if Array.length Sys.argv > 1 then
        let s = try int_of_string (Array.get Sys.argv 1) with Failure(_) -> 0 in
        for i = 0 to (s - 1) do my_sleep () done
