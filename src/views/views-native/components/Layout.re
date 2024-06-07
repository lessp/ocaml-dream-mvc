[@react.component]
let make = (~children) =>
  <html>
    <head>
      <meta charSet="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <script src="https://cdn.tailwindcss.com" />
      <title> {React.string("Acme")} </title>
    </head>
    <body>
      <Header />
      <main className="container mx-auto pb-8"> children </main>
      <Footer />
    </body>
  </html>;
