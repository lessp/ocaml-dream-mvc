type t =
  { id : int
  ; title : string
  ; content : string
  ; created_at : float
  }

let create ~id ~title ~content ~created_at = { id; title; content; created_at }
