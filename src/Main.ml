Dream.run ~interface:"localhost" ~port:3000
@@ Dream.logger
@@ Dream.memory_sessions
@@ Dream.sql_pool Config.database_uri
@@ Dream.router
     [ Dream.get "/" Controllers.Home.index
     ; Dream.get "/articles/" Controllers.Articles.index
     ; Dream.get "/articles/create/" Controllers.Articles.create
     ; Dream.post "/articles/" Controllers.Articles.store
     ; Dream.get "/articles/:id" Controllers.Articles.show
     ]
