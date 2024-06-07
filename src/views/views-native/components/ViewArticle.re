[@react.component]
let make = (~article: Types.Article.t) =>
  <div className="flex flex-col gap-6 items-start">
    <h1 className="text-3xl font-bold"> {React.string(article.title)} </h1>
    <Date date={article.created_at} />
    <p className="text-gray-600"> {React.string(article.content)} </p>
    <a href="/articles/" className="text-gray-900 font-medium hover:underline">
      {React.string("Back to articles")}
    </a>
  </div>;
