let make = (~articles: list(Types.Article.t), ()) =>
  <Components.Layout>
    <div class_="flex flex-col gap-10">
      <h1 class_="text-3xl font-bold"> "Articles" </h1>
      <div class_="flex flex-col gap-8">
        {articles
         |> List.map(article => <Components.ArticleSummary article />)
         |> JSX.list}
      </div>
    </div>
  </Components.Layout>;
