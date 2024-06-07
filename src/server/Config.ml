Dotenv.export ()

let get_env env =
  try Sys.getenv env with
  | Not_found -> raise (Invalid_argument ("Environment variable " ^ env ^ " not found"))
;;

let database_uri = get_env "DATABASE_URI"
