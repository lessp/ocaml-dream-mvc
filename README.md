# OCaml MVC

This is a simple example of a blog application using the Model-View-Controller (MVC) design pattern in OCaml.

## Getting Started

To run the application, you need to have OCaml installed on your machine. You can download OCaml from the [official website](https://ocaml.org/docs/install.html).

After installing OCaml, you can run the following commands to build and run the application:

> Note: Environment variables `DATABASE_URI` must be set to connect to a PostgreSQL database.

```bash
opam install . --deps-only --yes
dune build --profile=release
dune exec src/main.exe
open http://localhost:3000
```

## Technologies

- **Server**: [Dream](https://aantron.github.io/dream/)

  Dream is a web framework for OCaml that is designed to be easy to use, fast, and secure.

- **SQL**: Caqti

- **Views**: [`Html_of_jsx`](https://github.com/davesnx/html_of_jsx/)

  `Html_of_jsx` is a library to convert JSX to HTML in OCaml. See [views](./src/views) for examples.

## File Structure

- [`src/main.ml`](./src/views): The entry point of the application.
- [`src/controllers`](./src/controllers): Contains the controllers for the application.
- [`src/models`](./src/models): Contains the models interacting with the database.
- [`src/views`](./src/views): Contains the views for the application.
- [`src/types`](./src/types): Contains the types for the application.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
