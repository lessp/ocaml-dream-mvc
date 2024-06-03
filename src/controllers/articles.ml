let index (_ : Dream.request) =
  let articles = Models.Article.all () in

  Dream.html @@ JSX.to_string (Views.Articles.make ~articles ())
;;

let show (request : Dream.request) =
  let id = Dream.param request "id" in
  let article = Models.Article.find_by_id id in

  let html =
    match article with
    | Some article -> JSX.to_string (Views.Article.make ~article ())
    | None -> "Not found"
  in

  Dream.html html
;;

let routes = [ Dream.get "/" index; Dream.get "/:id" show ]
