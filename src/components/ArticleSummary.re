[@react.component]
let make = (~article: Models.Article.t, ()) => {
  <div>
    <a href={"/articles/" ++ article.id}>
      <h2> {Jsx.text(article.title)} </h2>
    </a>
    <p> {Jsx.text(article.content)} </p>
    <a href={"/articles/" ++ article.id}> {Jsx.text("Read article")} </a>
  </div>;
};
