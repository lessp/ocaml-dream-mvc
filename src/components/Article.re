let make = (~article: Models.Article.t, ()) => {
  <div>
    <h2> {Jsx.text(article.title)} </h2>
    <p> {Jsx.text(article.content)} </p>
    <a href="/articles/"> {Jsx.text("Back to articles")} </a>
  </div>;
};
