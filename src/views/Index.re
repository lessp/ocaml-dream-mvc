let make = (~article: option(Types.Article.t), ()) =>
  <Components.Layout>
    <div class_="flex flex-col gap-10">
      <p class_="text-gray-600"> "Welcome to Acme!" </p>
      {switch (article) {
       | Some(article) =>
         <div class_="flex flex-col gap-10">
           <h1 class_="text-3xl font-bold"> "Latest article" </h1>
           <Components.ArticleSummary article />
         </div>
       | None => JSX.null
       }}
    </div>
  </Components.Layout>;
