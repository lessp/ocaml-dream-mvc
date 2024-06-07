open Lwt.Syntax

let index (request : Dream.request) =
  let* article = Dream.sql request Models.Article.get_latest in

  Views_native.Index.make ~article () |> ReactDOM.renderToString |> Dream.html
;;
