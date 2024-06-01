let index (_request : Dream.request) =
  let articles = Models.Article.all () in
  (* Dream.html @@ ReactDOM.render_to_string (Views.Articles ~articles) *)
  Dream.html @@ Html_of_jsx.render (Views.ArticlesIndex.make ~articles ())
;;

let id (request : Dream.request) =
  let id = Dream.param request "id" in
  let article = Models.Article.find_by_id id in

  match article with
  | Some article ->
    (* Dream.html @@ ReactDOM.render_to_string (Views.ArticleId ~article) *)
    Dream.html @@ Html_of_jsx.render (Views.ArticleId.make ~article ())
  | None -> Dream.html "Not found"
;;

let routes = [ Dream.get "/" index; Dream.get "/:id" id ]
