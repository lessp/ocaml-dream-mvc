[@react.component]
let make = (~article: Types.Article.t) => {
  let link_url = "/articles/" ++ Int.to_string(article.id);

  <div className="flex flex-col gap-4 items-start">
    <a href=link_url>
      <h2 className="text-xl font-bold hover:underline">
        {React.string(article.title)}
      </h2>
    </a>
    <Date date={article.created_at} />
    <p className="text-gray-600"> {React.string(article.content)} </p>
    <a href=link_url className="text-gray-900 font-medium hover:underline">
      {React.string("Read article")}
    </a>
  </div>;
};
