[@react.component]
let make = (~article: option(Types.Article.t)) =>
  <Layout>
    <div className="flex flex-col gap-10">
      <p className="text-gray-600"> {React.string("Welcome to Acme!")} </p>
      {switch (article) {
       | Some(article) =>
         <div className="flex flex-col gap-10">
           <h1 className="text-3xl font-bold">
             {React.string("Latest article")}
           </h1>
           <ArticleSummary article />
         </div>
       | None => React.null
       }}
    </div>
  </Layout>;
