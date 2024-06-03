Dream.run ~interface:"localhost" ~port:3000
@@ Dream.logger
@@ Dream.memory_sessions
@@ Dream.router
     [ Dream.scope "/" [] Controllers.Home.routes
     ; Dream.scope "/articles" [] Controllers.Articles.routes
     ]
