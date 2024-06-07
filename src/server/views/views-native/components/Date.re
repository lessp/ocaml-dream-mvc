let prettify = date =>
  String.length(date) > 16 ? String.sub(date, 0, 16) : date;

[@react.component]
let make = (~date) =>
  <p className="text-gray-600"> {React.string(prettify(date))} </p>;
