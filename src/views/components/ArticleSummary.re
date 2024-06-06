let make = (~article: Types.Article.t, ()) => {
  let link_url = "/articles/" ++ Int.to_string(article.id);

  <div class_="flex flex-col gap-4 items-start">
    <a href=link_url>
      <h2 class_="text-xl font-bold hover:underline">
        {JSX.string(article.title)}
      </h2>
    </a>
    <p class_="text-gray-600"> {JSX.string(article.content)} </p>
    <a href=link_url class_="text-gray-900 font-medium hover:underline">
      {JSX.string("Read article")}
    </a>
  </div>;
};
