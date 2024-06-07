open Lwt.Syntax

let index (request : Dream.request) =
  let* article = Dream.sql request Models.Article.get_latest in

  Views.Index.make ~article () |> JSX.render |> Dream.html
;;
