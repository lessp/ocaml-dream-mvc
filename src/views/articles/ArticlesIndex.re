let make = (~articles: list(Models.Article.t), ()) => {
  <Components.Layout>
    {articles
     |> List.map((article: Models.Article.t) =>
          <Components.ArticleSummary article />
        )
     |> Jsx.list}
  </Components.Layout>;
};
