let index (_ : Dream.request) = Dream.html @@ JSX.to_string (Views.Index.make ())

let routes = [ Dream.get "/" index ]
