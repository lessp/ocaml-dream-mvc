let make = () =>
  <header class_="container mx-auto py-8">
    <div class_="flex flex-row w-100 items-center">
      <a href="/">
        <h1 class_="text-2xl font-bold"> {JSX.string("Acme")} </h1>
      </a>
      <nav class_="ml-auto">
        <ul class_="flex flex-row gap-4">
          <li>
            <a href="/" class_="font-medium hover:underline">
              {JSX.string("Home")}
            </a>
          </li>
          <li>
            <a href="/articles/" class_="font-medium hover:underline">
              {JSX.string("Articles")}
            </a>
          </li>
          <li>
            <a href="/articles/create/" class_="font-medium hover:underline">
              {JSX.string("Create article")}
            </a>
          </li>
        </ul>
      </nav>
    </div>
  </header>;
