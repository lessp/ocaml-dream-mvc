let prettify = date =>
  String.length(date) > 16 ? String.sub(date, 0, 16) : date;

let make = (~date, ()) =>
  <p class_="text-gray-600"> {JSX.string(prettify(date))} </p>;
