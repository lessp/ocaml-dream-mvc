let index (_request : Dream.request) =
  let articles = Models.Article.all () in
  (* Dream.html @@ ReactDOM.render_to_string (Views.Articles ~articles) *)
  (* Dream.html @@ Html_of_jsx.render (Views.ArticlesIndex.make ~articles ()) *)
  let html = ReactDOM.renderToString (Views.ArticlesIndex.make ~articles ()) in
  Dream.log "HTML: %s" html;
  Dream.html @@ ReactDOM.renderToString (Views.ArticlesIndex.make ~articles ())
;;

let id (request : Dream.request) =
  let id = Dream.param request "id" in
  let article = Models.Article.find_by_id id in

  match article with
  | Some article ->
    (* Dream.html @@ ReactDOM.render_to_string (Views.ArticleId ~article) *)
    (* Dream.html @@ Html_of_jsx.render (Views.ArticleId.make ~article ()) *)
    Dream.html @@ ReactDOM.renderToString (Views.ArticleId.make ~article ())
  | None -> Dream.html "Not found"
;;

let create (request : Dream.request) =
  let _csrf = Dream.csrf_token request in
  (* Dream.html @@ Html_of_jsx.render (Views.CreateArticle.make ~csrf ()) *)
  (* Dream.html @@ ReactDOM.renderToString (Views.CreateArticle.make ~csrf ()) *)
  Dream.html "Create article"
;;

let store (request : Dream.request) =
  let open Lwt.Syntax in
  let* result = Dream.form ~csrf:false request in

  match result with
  | `Ok [ ("content", content); ("title", title) ] ->
    let article = Models.Article.create ~title ~content in
    Dream.redirect request (Printf.sprintf "/articles/%s" article.id)
  | _ -> Dream.respond ~status:`Bad_Request "Bad request"
;;

let routes =
  [ Dream.get "/" index
  ; Dream.get "/create" create
  ; Dream.get "/:id" id
  ; Dream.post "/" store
  ]
;;
