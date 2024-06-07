open Caqti_request.Infix
open Lwt.Syntax

let all (module Db : Caqti_lwt.CONNECTION) =
  (*
     Explanation of the query type:

     It takes no parameters (unit) and should decode each row as a tuple with four (`t4`) elements:
     (int, string, string, string)
  *)
  let query = Caqti_type.(unit ->* t4 int string string string) in

  let* articles =
    Db.collect_list
      (query
         {sql|SELECT id, title, content, created_at FROM articles ORDER BY created_at DESC|sql})
      ()
  in

  match articles with
  | Ok articles ->
    articles
    |> List.map (fun (id, title, content, created_at) ->
      Types.Article.create ~id ~title ~content ~created_at)
    |> Lwt.return
  | Error e ->
    print_endline (Caqti_error.show e);
    Dream.log "Error retrieving articles: %s\n" (Caqti_error.show e);
    Lwt.return []
;;

let find_by_id id (module Db : Caqti_lwt.CONNECTION) =
  let query = Caqti_type.(int ->! t4 int string string string) in

  let* article =
    Db.find_opt
      (query "SELECT id, title, content, created_at FROM articles WHERE id = ?")
      id
  in

  match article with
  | Ok (Some (id, title, content, created_at)) ->
    Some (Types.Article.create ~id ~title ~content ~created_at) |> Lwt.return
  | Ok None -> Lwt.return None
  | Error e ->
    Dream.log "Error retrieving article: %s\n" (Caqti_error.show e);
    Lwt.return None
;;

let get_latest (module Db : Caqti_lwt.CONNECTION) =
  let query = Caqti_type.(unit ->! t4 int string string string) in

  let* article =
    Db.find_opt
      (query
         {sql|SELECT id, title, content, created_at FROM articles ORDER BY created_at DESC LIMIT 1|sql})
      ()
  in

  match article with
  | Ok (Some (id, title, content, created_at)) ->
    Some (Types.Article.create ~id ~title ~content ~created_at) |> Lwt.return
  | Ok None -> Lwt.return None
  | Error e ->
    Dream.log "Error retrieving latest article: %s\n" (Caqti_error.show e);
    Lwt.return None
;;

let create ~title ~content (module Db : Caqti_lwt.CONNECTION) =
  let query = Caqti_type.(t2 string string ->! int) in

  let* id =
    Db.find
      (query {sql|INSERT INTO articles (title, content) VALUES (?, ?) RETURNING id|sql})
      (title, content)
  in

  match id with
  | Ok id -> Lwt.return (Some id)
  | Error e ->
    Dream.log "Error creating article: %s\n" (Caqti_error.show e);
    Lwt.return None
;;
