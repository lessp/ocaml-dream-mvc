let make = () => {
  <header>
    <div>
      <a href="/"> <h1> {Jsx.text("Acme")} </h1> </a>
      <nav>
        <ul>
          <li> <a href="/"> {Jsx.text("Home")} </a> </li>
          <li> <a href="/articles/"> {Jsx.text("Articles")} </a> </li>
        </ul>
      </nav>
    </div>
  </header>;
};
