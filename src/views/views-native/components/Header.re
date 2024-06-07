[@react.component]
let make = () =>
  <header className="container mx-auto py-8">
    <div className="flex flex-row w-100 items-center">
      <a href="/">
        <h1 className="text-2xl font-bold"> {React.string("Acme")} </h1>
      </a>
      <nav className="ml-auto">
        <ul className="flex flex-row gap-4">
          <li>
            <a href="/" className="font-medium hover:underline">
              {React.string("Home")}
            </a>
          </li>
          <li>
            <a href="/articles/" className="font-medium hover:underline">
              {React.string("Articles")}
            </a>
          </li>
          <li>
            <a
              href="/articles/create/" className="font-medium hover:underline">
              {React.string("Create article")}
            </a>
          </li>
        </ul>
      </nav>
    </div>
  </header>;
