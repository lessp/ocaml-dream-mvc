let make = (~children, ()) =>
  <html>
    <head>
      <meta charset="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <script src="https://cdn.tailwindcss.com" />
      <title> "Acme" </title>
    </head>
    <body>
      <Header />
      <main class_="container mx-auto pb-8"> children </main>
      <Footer />
    </body>
  </html>;
