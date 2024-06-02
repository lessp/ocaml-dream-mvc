type t =
  { id : string
  ; title : string
  ; content : string
  ; created_at : float
  }

let articles =
  ref
    [ { id = "1"
      ; title =
          {|OCaml vs. The World: How a Quiet Language is Silently Conquering the Programming Sphere|}
      ; content =
          {| This tongue-in-cheek article theorizes how OCaml is the secret powerhouse behind every major tech innovation, from blockchain to AI, humorously exaggerating its omnipresence in the tech world.
        |}
      ; created_at = Sys.time ()
      }
    ; { id = "2"
      ; title = {|The Ultimate Showdown: OCaml Wizards vs. Python Sorcerers|}
      ; content =
          {|Dive into a fantastical comparison of OCaml and Python as if they were
        magical disciplines. Featuring interviews with self-proclaimed coding
        wizards and sorcerers, this article explores which language holds the
        arcane keys to coding supremacy.|}
      ; created_at = Sys.time ()
      }
    ; { id = "3"
      ; title = {|Why OCaml is the Best Choice for Surviving the Zombie Apocalypse|}
      ; content =
          {|A humorous look at how OCaml's robust type system and efficient execution could be crucial in developing software to survive (and thrive) during a zombie apocalypse. Bonus sections include "Functional Programming for Fortifying Your Base."|}
      ; created_at = Sys.time ()
      }
    ; { id = "4"
      ; title = {|The OCaml Cookbook: Recipes for Mastering the Language|}
      ; content =
          {|A collection of recipes for mastering OCaml, from basic syntax to advanced type system tricks. This article is a must-read for anyone looking to level up their OCaml skills.|}
      ; created_at = Sys.time ()
      }
    ]
;;

let all () = !articles

let find_by_id id = List.find_opt (fun a -> a.id = id) !articles

let create ~title ~content =
  let next_id = List.length !articles + 1 in
  let article =
    { id = Int.to_string next_id; title; content; created_at = Sys.time () }
  in

  articles := article :: !articles;

  article
;;
