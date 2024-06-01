let index _request =
  (* Dream.html @@ ReactDOM.render_to_string Views.Index *)
  Dream.html @@ Html_of_jsx.render (Views.Home.make ())
;;

let routes = [ Dream.get "/" index ]
