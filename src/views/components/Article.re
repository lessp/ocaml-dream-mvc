let make = (~article: Types.Article.t, ()) =>
  <div class_="flex flex-col gap-6 items-start">
    <h1 class_="text-3xl font-bold"> {JSX.string(article.title)} </h1>
    <Date date={article.created_at} />
    <p class_="text-gray-600"> {JSX.string(article.content)} </p>
    <a href="/articles/" class_="text-gray-900 font-medium hover:underline">
      {JSX.string("Back to articles")}
    </a>
  </div>;
