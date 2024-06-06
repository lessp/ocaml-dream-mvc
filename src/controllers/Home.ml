let index (_ : Dream.request) = Dream.html @@ JSX.to_string Views.(render Index)

let routes = [ Dream.get "/" index ]
