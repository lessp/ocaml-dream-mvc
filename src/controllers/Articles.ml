open Lwt.Syntax

let index (request : Dream.request) =
  let* articles = Dream.sql request Models.Article.all in

  Views.Articles.make ~articles () |> JSX.render |> Dream.html
;;

let show (request : Dream.request) =
  let id = Dream.param request "id" |> int_of_string in
  let* article = Dream.sql request (Models.Article.find_by_id id) in

  match article with
  | Some article -> Views.Article.make ~article () |> JSX.render |> Dream.html
  | None -> Dream.html "Not found"
;;
