let make = (~children, ()) => {
  <html>
    <head>
      <meta charset="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <title> "Acme" </title>
    </head>
    <body> <Header /> <main> children </main> <Footer /> </body>
  </html>;
};
