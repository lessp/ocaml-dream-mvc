switch (ReactDOM.querySelector("#root")) {
| Some(el) =>
  let state =
    Types.Article.create(
      ~id=5,
      ~title="Hello",
      ~content="World",
      ~created_at="2024-06-07 14:03:58.885117+00",
    );

  let _root =
    ReactDOM.Client.hydrateRoot(el, <Index article={Some(state)} />);

  ();
| None => Js.log("Can't find a 'root' element")
};
