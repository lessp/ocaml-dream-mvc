type t =
  | Index
  | Articles(list(Types.Article.t))
  | Article(Types.Article.t);

let render =
  fun
  | Index => <Index />
  | Articles(articles) => <Articles articles />
  | Article(article) => <Article article />;
