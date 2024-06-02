[@react.component]
let make = (~children) => {
  <html>
    <head>
      <meta charSet="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <title> {React.string("Acme")} </title>
    </head>
    <body>
      <div id="root"> <Header /> <main> children </main> <Footer /> </div>
    </body>
  </html>;
};
