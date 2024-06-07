[@react.component]
let make = (~articles: list(Types.Article.t)) =>
  <Layout>
    <div className="flex flex-col gap-10">
      <h1 className="text-3xl font-bold"> {React.string("Articles")} </h1>
      <div className="flex flex-col gap-8">
        {articles
         |> List.map(article => <ArticleSummary article />)
         |> Array.of_list
         |> React.array}
      </div>
    </div>
  </Layout>;
