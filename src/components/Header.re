[@react.component]
let make = () => {
  <header>
    <div>
      <a href="/"> <h1> {React.string("Acme")} </h1> </a>
      <nav>
        <ul>
          <li> <a href="/"> {React.string("Home")} </a> </li>
          <li> <a href="/articles/"> {React.string("Articles")} </a> </li>
        </ul>
      </nav>
    </div>
  </header>;
};
