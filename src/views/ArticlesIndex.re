[@react.component]
let make = (~articles: list(Models.Article.t)) => {
  <Components.Layout>
    <>
      <h1> {React.string("Articles")} </h1>
      <a href="/articles/create">
        <h2> {React.string("Create a new article")} </h2>
      </a>
      {articles
       |> List.map((article: Models.Article.t) =>
            <Components.ArticleSummary article />
          )
       |> Array.of_list
       |> React.array}
    </>
  </Components.Layout>;
};
