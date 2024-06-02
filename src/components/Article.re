[@react.component]
let make = (~article: Models.Article.t) => {
  let (state, set_state) = React.useState(() => 0);

  <div>
    <h1> {React.string("Count: " ++ Int.to_string(state))} </h1>
    <button onClick={_ => set_state(prev => prev + 1)}>
      {React.string("Increment")}
    </button>
    <h2> {React.string(article.title)} </h2>
    <p> {React.string(article.content)} </p>
    <a href="/articles/"> {React.string("Back to articles")} </a>
  </div>;
};
