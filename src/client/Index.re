switch (ReactDOM.querySelector("#root")) {
| Some(el) =>
  let _root = ReactDOM.Client.hydrateRoot(el, <Home />);
  ();
| None => ()
};
