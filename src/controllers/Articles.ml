open Lwt.Syntax

let index (request : Dream.request) =
  let* articles = Dream.sql request Models.Article.all in

  (* we wants to just do `Views.Article` here :'( *)
  Views_native.Articles.make ~articles () |> ReactDOM.renderToString |> Dream.html
;;

let show (request : Dream.request) =
  let id = Dream.param request "id" |> int_of_string in
  let* article = Dream.sql request (Models.Article.find_by_id id) in

  match article with
  | Some article ->
    Views_native.Article.make ~article () |> ReactDOM.renderToString |> Dream.html
  | None -> Dream.html "Not found"
;;

let create (request : Dream.request) =
  Views_native.ArticleForm.make ~csrf:(Dream.csrf_token request) ()
  |> ReactDOM.renderToString
  |> Dream.html
;;

let store (request : Dream.request) =
  let* form = Dream.form request in

  match form with
  | `Ok [ ("content", content); ("title", title) ] ->
    let* _id = Dream.sql request (Models.Article.create ~title ~content) in
    Dream.redirect request "/articles/"
  | _ -> Dream.redirect request "/articles/create"
;;
