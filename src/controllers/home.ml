let index _request = Dream.html @@ Html_of_jsx.render (Views.Index.make ())

let routes = [ Dream.get "/" index ]
