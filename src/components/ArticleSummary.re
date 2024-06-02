[@react.component]
let make = (~article: Models.Article.t) => {
  <div>
    <a href={"/articles/" ++ article.id}>
      <h2> {React.string(article.title)} </h2>
    </a>
    <p> {React.string(article.content)} </p>
    <a href={"/articles/" ++ article.id}> {React.string("Read article")} </a>
  </div>;
};
