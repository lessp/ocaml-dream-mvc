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

let create (request : Dream.request) =
  Views.ArticleForm.make ~csrf:(Dream.csrf_token request) () |> JSX.render |> Dream.html
;;

let store (request : Dream.request) =
  let* form = Dream.form request in
  
  match form with
  | `Ok [ ("content", content); ("title", title) ] ->
    let* _id = Dream.sql request (Models.Article.create ~title ~content) in
    Dream.redirect request "/articles/"
  | _ -> Dream.redirect request "/articles/create"
;;
